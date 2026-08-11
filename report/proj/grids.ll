inline.NumInlined: 4615
inline.NumDeleted: 2091
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5osgeo4proj18GTiffVGridShiftSet4openEP6pj_ctxSt10unique_ptrINS0_4FileESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.noexc100:                                        ; preds = %bb.ab
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !279
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread.i: ; preds = %.noexc100, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.y
  %i.ga = phi ptr [ %i.eh, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %i.eh, %bb.y ], [ %.pre.i, %.noexc100 ], [ %i.eh, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i ]
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEEixERSD_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.dq)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit

.noexc101:                                        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread.i
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !279
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc101, %bb.x
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !29 ; 5 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gf = load ptr, ptr %i.aq, align 8, !tbaa !215 ; 2 uses
  %.not10.i.i.i78.i = icmp eq ptr %i.gf, null
  %.pre148.i = load ptr, ptr %i.ec, align 8       ; 3 uses
  br i1 %.not10.i.i.i78.i, label %._crit_edge.i.i.sink.split.i, label %.lr.ph.i.i.i79.i

.lr.ph.i.i.i79.i:                                 ; preds = %bb.ad, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i
  %.012.i.i.i80.i = phi ptr [ %.1.i.i.i90.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i ], [ %i.gf, %bb.ad ] ; 7 uses
  %.0811.i.i.i81.i = phi ptr [ %.19.i.i.i87.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i ], [ %i.ap, %bb.ad ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.012.i.i.i80.i, i64 40
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !29 ; 3 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i104.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i83.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i83.i: ; preds = %.lr.ph.i.i.i79.i
  %.sroa.speculated.i.i.i.i.i.i82.i = call i64 @llvm.umin.i64(i64 %i.gd, i64 %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %.012.i.i.i80.i, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !26
  %i.gl = call i32 @memcmp(ptr noundef %i.gk, ptr noundef %.pre148.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i82.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i84.i = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i.i.i.i.i84.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i104.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i104.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i83.i, %.lr.ph.i.i.i79.i
  %i.gm = sub i64 %i.gh, %i.gd
  %spec.select7.i.i.i.i.i.i.i105.i = call i64 @llvm.smax.i64(i64 %i.gm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i106.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i105.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i107.i = trunc nsw i64 %.08.i.i.i.i.i.i.i106.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i104.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i83.i
  %.0.i.i.i.i.i.i86.i = phi i32 [ %i.gl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i83.i ], [ %.0.i6.i.i.i.i.i.i107.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i104.i ]
  %i.gn = icmp slt i32 %.0.i.i.i.i.i.i86.i, 0     ; 5 uses
  %.19.i.i.i87.i = select i1 %i.gn, ptr %.0811.i.i.i81.i, ptr %.012.i.i.i80.i ; 2 uses
  %.1.in.v.i.i.i88.i = select i1 %i.gn, i64 24, i64 16
  %.1.in.i.i.i89.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i80.i, i64 %.1.in.v.i.i.i88.i
  %.1.i.i.i90.i = load ptr, ptr %.1.in.i.i.i89.i, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i91.i = icmp eq ptr %.1.i.i.i90.i, null
  br i1 %.not.i.i.i91.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i92.i, label %.lr.ph.i.i.i79.i, !llvm.loop !294

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i92.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i
  %i.go = icmp eq ptr %.19.i.i.i87.i, %i.ap
  br i1 %i.go, label %._crit_edge.i.i.sink.split.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i92.i
  %.19.i.i.i87.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gn, ptr %.0811.i.i.i81.i, ptr %.012.i.i.i80.i
  %.19.i.i.i87.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i87.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.gp = load i64, ptr %.19.i.i.i87.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !29 ; 3 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i100.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i94.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i94.i: ; preds = %bb.ae
  %.sroa.speculated.i.i.i.i.i93.i = call i64 @llvm.umin.i64(i64 %i.gp, i64 %i.gd)
  %.19.i.i.i87.i.sroa.sel163.v.sroa.sel.v.sroa.sel.v = select i1 %i.gn, ptr %.0811.i.i.i81.i, ptr %.012.i.i.i80.i
  %.19.i.i.i87.i.sroa.sel163.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i87.i.sroa.sel163.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.gr = load ptr, ptr %.19.i.i.i87.i.sroa.sel163.v.sroa.sel.v.sroa.sel, align 8, !tbaa !26
  %i.gs = call i32 @memcmp(ptr noundef %.pre148.i, ptr noundef %i.gr, i64 noundef %.sroa.speculated.i.i.i.i.i93.i) #31 ; 2 uses
  %.not.i.i.i.i.i95.i = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i.i.i.i95.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i100.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i100.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i94.i, %bb.ae
  %i.gt = sub i64 %i.gd, %i.gp
  %spec.select7.i.i.i.i.i.i101.i = call i64 @llvm.smax.i64(i64 %i.gt, i64 -2147483648)
  %.08.i.i.i.i.i.i102.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i101.i, i64 2147483647)
  %.0.i6.i.i.i.i.i103.i = trunc nsw i64 %.08.i.i.i.i.i.i102.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i100.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i94.i
  %.0.i.i.i.i.i97.i = phi i32 [ %i.gs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i94.i ], [ %.0.i6.i.i.i.i.i103.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i100.i ]
  %i.gu = icmp slt i32 %.0.i.i.i.i.i97.i, 0
  br i1 %i.gu, label %._crit_edge.i.i.sink.split.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i
  %.19.i.i.i87.i.sroa.sel166.v.sroa.sel.v.sroa.sel.v = select i1 %i.gn, ptr %.0811.i.i.i81.i, ptr %.012.i.i.i80.i
  %.19.i.i.i87.i.sroa.sel166.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i87.i.sroa.sel166.v.sroa.sel.v.sroa.sel.v, i64 64
  %i.gv = load ptr, ptr %.19.i.i.i87.i.sroa.sel166.v.sroa.sel.v.sroa.sel, align 8, !tbaa !295 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 56
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !16
  %i.ha = fcmp ult double %i.gx, %i.gz
  br i1 %i.ha, label %._crit_edge.i.i.sink.split.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !15
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gv, i64 72
  %i.he = load double, ptr %i.hd, align 8, !tbaa !15
  %i.hf = fcmp ugt double %i.hc, %i.he
  br i1 %i.hf, label %._crit_edge.i.i.sink.split.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gv, i64 64
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !18
  %i.hk = fcmp ult double %i.hh, %i.hj
  br i1 %i.hk, label %._crit_edge.i.i.sink.split.i, label %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit.i

_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit.i: ; preds = %bb.ah
  %i.hl = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !19
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gv, i64 80
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !19
  %i.hp = fcmp ugt double %i.hm, %i.ho
  br i1 %i.hp, label %._crit_edge.i.i.sink.split.i, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gv, i64 128 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !85 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gv, i64 136
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.hr, %i.ht
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i
  %i.hu = load ptr, ptr %11, align 8, !tbaa !279
  store ptr %i.hu, ptr %i.hr, align 8, !tbaa !281
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store ptr %i.hv, ptr %i.hq, align 8, !tbaa !85
  br label %bb.be

bb.aj:                                            ; preds = %.critedge.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gv, i64 120
  invoke void @_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS0_INS2_10GTiffVGridES4_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr %i.hr, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN5osgeo4projL19insertIntoHierarchyINS0_10GTiffVGridENS0_17VerticalShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit unwind label %.loopexit.split-lp.loopexit

bb.ak:                                            ; preds = %bb.ac
  %i.hx = load i64, ptr %i.fg, align 8, !tbaa !29
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %._crit_edge.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hz = load ptr, ptr %i.ba, align 8, !tbaa !85 ; 6 uses
  %i.ia = load ptr, ptr %i.bb, align 8, !tbaa !90
  %.not.i109.i = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i109.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ib = load ptr, ptr %11, align 8, !tbaa !279
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !281
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr %i.ic, ptr %i.ba, align 8, !tbaa !85
  br label %bb.be

bb.an:                                            ; preds = %bb.al
  %i.id = load ptr, ptr %i.j, align 8, !tbaa !82  ; 10 uses
  %i.ie = ptrtoint ptr %i.hz to i64               ; 3 uses
  %i.if = ptrtoint ptr %i.id to i64               ; 3 uses
  %i.ig = sub i64 %i.ie, %i.if                    ; 4 uses
  %i.ih = icmp eq i64 %i.ig, 9223372036854775800
  br i1 %i.ih, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i135

.invoke:                                          ; preds = %bb.bc, %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i135: ; preds = %bb.an
  %i.ii = ashr exact i64 %i.ig, 3                 ; 3 uses
  %.sroa.speculated.i.i136 = call i64 @llvm.umax.i64(i64 %i.ii, i64 1)
  %i.ij = add nsw i64 %.sroa.speculated.i.i136, %i.ii ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.ii
  %i.il = call i64 @llvm.umin.i64(i64 %i.ij, i64 1152921504606846975)
  %i.im = select i1 %i.ik, i64 1152921504606846975, i64 %i.il ; 3 uses
  %.not.i.i137 = icmp ne i64 %i.im, 0
  call void @llvm.assume(i1 %.not.i.i137)
  %i.in = shl nuw nsw i64 %i.im, 3
  %i.io = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.in) #34
          to label %.noexc154 unwind label %.loopexit.split-lp.loopexit ; 10 uses

.noexc154:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i135
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ig
  %i.iq = load ptr, ptr %11, align 8, !tbaa !279
  store ptr null, ptr %11, align 8, !tbaa !279
  store ptr %i.iq, ptr %i.ip, align 8, !tbaa !281
  %.not10.i.i.i.i138 = icmp eq ptr %i.id, %i.hz
  br i1 %.not10.i.i.i.i138, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150, label %.lr.ph.i.i.i.i139.preheader

.lr.ph.i.i.i.i139.preheader:                      ; preds = %.noexc154
  %12 = add i64 %i.ie, -8
  %13 = sub i64 %12, %i.if                        ; 2 uses
  %i.ir = lshr i64 %13, 3
  %i.is = add nuw nsw i64 %i.ir, 1                ; 2 uses
  %min.iters.check521 = icmp ult i64 %13, 56
  br i1 %min.iters.check521, label %.lr.ph.i.i.i.i139.preheader537, label %vector.memcheck512

vector.memcheck512:                               ; preds = %.lr.ph.i.i.i.i139.preheader
  %scevgep513 = getelementptr i8, ptr %i.io, i64 8
  %i.it = add i64 %i.ie, -8
  %i.iu = sub i64 %i.it, %i.if
  %i.iv = and i64 %i.iu, -8                       ; 2 uses
  %scevgep514 = getelementptr i8, ptr %scevgep513, i64 %i.iv
  %scevgep515 = getelementptr i8, ptr %i.id, i64 8
  %scevgep516 = getelementptr i8, ptr %scevgep515, i64 %i.iv
  %bound0517 = icmp ult ptr %i.io, %scevgep516
  %bound1518 = icmp ult ptr %i.id, %scevgep514
  %found.conflict519 = and i1 %bound0517, %bound1518
  br i1 %found.conflict519, label %.lr.ph.i.i.i.i139.preheader537, label %vector.ph522

vector.ph522:                                     ; preds = %vector.memcheck512
  %n.vec523 = and i64 %i.is, 4611686018427387900  ; 3 uses
  %i.iw = shl i64 %n.vec523, 3                    ; 2 uses
  %i.ix = getelementptr i8, ptr %i.io, i64 %i.iw  ; 2 uses
  %i.iy = getelementptr i8, ptr %i.id, i64 %i.iw
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph522
  %index525 = phi i64 [ 0, %vector.ph522 ], [ %index.next530, %vector.body524 ] ; 2 uses
  %i.iz = shl i64 %index525, 3                    ; 2 uses
  %next.gep526 = getelementptr i8, ptr %i.io, i64 %i.iz ; 2 uses
  %next.gep527 = getelementptr i8, ptr %i.id, i64 %i.iz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.ja = getelementptr i8, ptr %next.gep527, i64 16
  %wide.load528 = load <2 x i64>, ptr %next.gep527, align 8, !tbaa !86, !alias.scope !302, !noalias !297
  %wide.load529 = load <2 x i64>, ptr %i.ja, align 8, !tbaa !86, !alias.scope !302, !noalias !297
  %i.jb = getelementptr i8, ptr %next.gep526, i64 16
  store <2 x i64> %wide.load528, ptr %next.gep526, align 8, !tbaa !86, !alias.scope !305, !noalias !302
  store <2 x i64> %wide.load529, ptr %i.jb, align 8, !tbaa !86, !alias.scope !305, !noalias !302
  %i.jc = getelementptr i8, ptr %next.gep527, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep527, align 8, !tbaa !86, !alias.scope !302, !noalias !297
  store <2 x ptr> splat (ptr null), ptr %i.jc, align 8, !tbaa !86, !alias.scope !302, !noalias !297
  %index.next530 = add nuw i64 %index525, 4       ; 2 uses
  %i.jd = icmp eq i64 %index.next530, %n.vec523
  br i1 %i.jd, label %middle.block531, label %vector.body524, !llvm.loop !307

middle.block531:                                  ; preds = %vector.body524
  %cmp.n532 = icmp eq i64 %i.is, %n.vec523
  br i1 %cmp.n532, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150, label %.lr.ph.i.i.i.i139.preheader537

.lr.ph.i.i.i.i139.preheader537:                   ; preds = %vector.memcheck512, %.lr.ph.i.i.i.i139.preheader, %middle.block531
  %.012.i.i.i.i140.ph = phi ptr [ %i.io, %vector.memcheck512 ], [ %i.io, %.lr.ph.i.i.i.i139.preheader ], [ %i.ix, %middle.block531 ]
  %.0911.i.i.i.i141.ph = phi ptr [ %i.id, %vector.memcheck512 ], [ %i.id, %.lr.ph.i.i.i.i139.preheader ], [ %i.iy, %middle.block531 ]
  br label %.lr.ph.i.i.i.i139

.lr.ph.i.i.i.i139:                                ; preds = %.lr.ph.i.i.i.i139.preheader537, %.lr.ph.i.i.i.i139
  %.012.i.i.i.i140 = phi ptr [ %i.jg, %.lr.ph.i.i.i.i139 ], [ %.012.i.i.i.i140.ph, %.lr.ph.i.i.i.i139.preheader537 ] ; 2 uses
  %.0911.i.i.i.i141 = phi ptr [ %i.jf, %.lr.ph.i.i.i.i139 ], [ %.0911.i.i.i.i141.ph, %.lr.ph.i.i.i.i139.preheader537 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.je = load i64, ptr %.0911.i.i.i.i141, align 8, !tbaa !86, !alias.scope !300, !noalias !297
  store i64 %i.je, ptr %.012.i.i.i.i140, align 8, !tbaa !86, !alias.scope !297, !noalias !300
  store ptr null, ptr %.0911.i.i.i.i141, align 8, !tbaa !86, !alias.scope !300, !noalias !297
  %i.jf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i141, i64 8 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i140, i64 8 ; 2 uses
  %.not.i.i.i.i142 = icmp eq ptr %i.jf, %i.hz
  br i1 %.not.i.i.i.i142, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150, label %.lr.ph.i.i.i.i139, !llvm.loop !310

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150: ; preds = %.lr.ph.i.i.i.i139, %middle.block531, %.noexc154
  %.0.lcssa.i.i.i.i144 = phi ptr [ %i.io, %.noexc154 ], [ %i.ix, %middle.block531 ], [ %i.jg, %.lr.ph.i.i.i.i139 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i144, i64 8
  %.not.i23.i152 = icmp eq ptr %i.id, null
  br i1 %.not.i23.i152, label %.noexc103, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ig) #32
  br label %.noexc103

.noexc103:                                        ; preds = %bb.ao, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150
  store ptr %i.io, ptr %i.j, align 8, !tbaa !82
  store ptr %i.jh, ptr %i.ba, align 8, !tbaa !85
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.im
  br label %_ZN5osgeo4projL19insertIntoHierarchyINS0_10GTiffVGridENS0_17VerticalShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit.sink.split

._crit_edge.i.i.sink.split.i:                     ; preds = %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit.i, %bb.ah, %bb.ag, %bb.af, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i92.i, %bb.ad
  %.str.134.sink.i = phi ptr [ @.str.133, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i ], [ @.str.133, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i92.i ], [ @.str.133, %bb.ad ], [ @.str.134, %bb.af ], [ @.str.134, %bb.ag ], [ @.str.134, %bb.ah ], [ @.str.134, %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit.i ]
  %i.jj = load ptr, ptr %i.dq, align 8, !tbaa !26
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %.str.134.sink.i, ptr noundef %i.jj, ptr noundef %.pre148.i)
          to label %._crit_edge.i.i.i unwind label %.loopexit.split-lp.loopexit

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.sink.split.i, %bb.ak
  %i.jk = load ptr, ptr %11, align 8, !tbaa !279  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.bc, ptr %4, align 8, !tbaa !22
  store i32 1162893652, ptr %i.bc, align 8
  store i64 4, ptr %i.bd, align 8, !tbaa !29
  store i8 0, ptr %i.be, align 4, !tbaa !31
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !20
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.jn(ptr noundef nonnull align 8 dereferenceable(154) %i.jk, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef -1)
          to label %bb.ap unwind label %bb.aq     ; 2 uses

bb.ap:                                            ; preds = %._crit_edge.i.i.i
  %i.jp = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.bc
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ap
  %i.jr = load i64, ptr %i.bc, align 8, !tbaa !31
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.jt = load ptr, ptr %i.j, align 8, !tbaa !278 ; 2 uses
  %i.ju = load ptr, ptr %i.ba, align 8, !tbaa !278 ; 3 uses
  %.not146.i = icmp eq ptr %i.jt, %i.ju
  br i1 %.not146.i, label %.critedge77.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.jx = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.jy = getelementptr inbounds nuw i8, ptr %i.eh, i64 64 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.eh, i64 80 ; 2 uses
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  %i.kb = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.bc
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i: ; preds = %bb.aq
  %i.kd = load i64, ptr %i.bc, align 8, !tbaa !31
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.body108

bb.ar:                                            ; preds = %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i, %.lr.ph.i
  %.sroa.0130.0147.i = phi ptr [ %i.jt, %.lr.ph.i ], [ %i.md, %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i ] ; 3 uses
  %i.kf = load i64, ptr %i.jv, align 8, !tbaa !29
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %.critedge75.thread.i, label %._crit_edge.i.i115.i

._crit_edge.i.i115.i:                             ; preds = %bb.ar
  %i.kh = load ptr, ptr %.sroa.0130.0147.i, align 8, !tbaa !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.bf, ptr %5, align 8, !tbaa !22
  store i32 1162893652, ptr %i.bf, align 8
  store i64 4, ptr %i.bg, align 8, !tbaa !29
  store i8 0, ptr %i.bh, align 4, !tbaa !31
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !20
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.kk(ptr noundef nonnull align 8 dereferenceable(120) %i.kh, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef -1)
          to label %bb.as unwind label %bb.av     ; 2 uses

bb.as:                                            ; preds = %._crit_edge.i.i115.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !29 ; 3 uses
  %i.ko = load i64, ptr %i.jv, align 8, !tbaa !29
  %i.kp = icmp eq i64 %i.kn, %i.ko
  br i1 %i.kp, label %bb.at, label %.critedge73.i

bb.at:                                            ; preds = %bb.as
  %i.kq = icmp eq i64 %i.kn, 0
  br i1 %i.kq, label %.critedge73.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kr = load ptr, ptr %i.jo, align 8, !tbaa !26
  %i.ks = load ptr, ptr %i.kl, align 8, !tbaa !26
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.ks, ptr %i.kr, i64 %i.kn)
  %i.kt = icmp ne i32 %bcmp.i.i.i, 0
  br label %.critedge73.i

.critedge73.i:                                    ; preds = %bb.au, %bb.at, %bb.as
  %.ph.i = phi i1 [ false, %bb.at ], [ %i.kt, %bb.au ], [ true, %bb.as ]
  %i.ku = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.bf
  br i1 %i.kv, label %.critedge75.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i: ; preds = %.critedge73.i
  %i.kw = load i64, ptr %i.bf, align 8, !tbaa !31
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #32
  br label %.critedge75.i

.critedge75.i:                                    ; preds = %.critedge73.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.ph.i, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i, label %.critedge75.thread.i

bb.av:                                            ; preds = %._crit_edge.i.i115.i
  %i.ky = landingpad { ptr, i32 }
          cleanup
  %i.kz = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.bf
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i: ; preds = %bb.av
  %i.lb = load i64, ptr %i.bf, align 8, !tbaa !31
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.body108

.critedge75.thread.i:                             ; preds = %.critedge75.i, %bb.ar
  %i.ld = load ptr, ptr %.sroa.0130.0147.i, align 8, !tbaa !86 ; 7 uses
  %i.le = load double, ptr %i.jw, align 8, !tbaa !16 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 56
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !16
  %i.lh = fcmp ult double %i.le, %i.lg
  br i1 %i.lh, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i, label %bb.aw

bb.aw:                                            ; preds = %.critedge75.thread.i
  %i.li = load double, ptr %i.jx, align 8, !tbaa !15
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 72
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !15 ; 2 uses
  %i.ll = fcmp ugt double %i.li, %i.lk
  br i1 %i.ll, label %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit125.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lm = load double, ptr %i.jy, align 8, !tbaa !18
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !18
  %i.lp = fcmp ult double %i.lm, %i.lo
  br i1 %i.lp, label %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit125.thread.i, label %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit125.i

_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit125.i: ; preds = %bb.ax
  %i.lq = load double, ptr %i.jz, align 8, !tbaa !19
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 80
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !19
  %i.lt = fcmp ugt double %i.lq, %i.ls
  br i1 %i.lt, label %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit125.thread.i, label %bb.ba

_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit125.thread.i: ; preds = %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit125.i, %bb.ax, %bb.aw
  %i.lu = fcmp uge double %i.le, %i.lk
  br i1 %i.lu, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit125.thread.i
  %i.lv = load double, ptr %i.jy, align 8, !tbaa !18
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ld, i64 80
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !19
  %i.ly = fcmp olt double %i.lv, %i.lx
  br i1 %i.ly, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.i, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i

_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.i: ; preds = %bb.ay
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !18
  %i.mb = load double, ptr %i.jz, align 8, !tbaa !19
  %i.mc = fcmp ugt double %i.ma, %i.mb
  br i1 %i.mc, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i, label %bb.az

bb.az:                                            ; preds = %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.i
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.36)
          to label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i unwind label %.loopexit

_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i: ; preds = %bb.az, %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.i, %bb.ay, %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit125.thread.i, %.critedge75.thread.i, %.critedge75.i
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0130.0147.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.md, %i.ju
  br i1 %.not.i, label %.critedge77.loopexit.i, label %bb.ar

bb.ba:                                            ; preds = %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit125.i
  invoke void @_ZN5osgeo4proj10GTiffVGrid10insertGridEP6pj_ctxOSt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(154) %i.ld, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN5osgeo4projL19insertIntoHierarchyINS0_10GTiffVGridENS0_17VerticalShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit unwind label %.loopexit.split-lp.loopexit

.critedge77.loopexit.i:                           ; preds = %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i
  %.pre149.i = load ptr, ptr %i.ba, align 8, !tbaa !85
  br label %.critedge77.i

.critedge77.i:                                    ; preds = %.critedge77.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.me = phi ptr [ %.pre149.i, %.critedge77.loopexit.i ], [ %i.ju, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 6 uses
  %i.mf = load ptr, ptr %i.bb, align 8, !tbaa !90
  %.not.i126.i = icmp eq ptr %i.me, %i.mf
  br i1 %.not.i126.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.critedge77.i
  %i.mg = load ptr, ptr %11, align 8, !tbaa !279
  store ptr %i.mg, ptr %i.me, align 8, !tbaa !281
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store ptr %i.mh, ptr %i.ba, align 8, !tbaa !85
  br label %bb.be

bb.bc:                                            ; preds = %.critedge77.i
  %i.mi = load ptr, ptr %i.j, align 8, !tbaa !82  ; 10 uses
  %i.mj = ptrtoint ptr %i.me to i64               ; 3 uses
  %i.mk = ptrtoint ptr %i.mi to i64               ; 3 uses
  %i.ml = sub i64 %i.mj, %i.mk                    ; 4 uses
  %i.mm = icmp eq i64 %i.ml, 9223372036854775800
  br i1 %i.mm, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bc
  %i.mn = ashr exact i64 %i.ml, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.mn, i64 1)
  %i.mo = add nsw i64 %.sroa.speculated.i.i, %i.mn ; 2 uses
  %i.mp = icmp ult i64 %i.mo, %i.mn
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mo, i64 1152921504606846975)
  %i.mr = select i1 %i.mp, i64 1152921504606846975, i64 %i.mq ; 3 uses
  %.not.i.i128 = icmp ne i64 %i.mr, 0
  call void @llvm.assume(i1 %.not.i.i128)
  %i.ms = shl nuw nsw i64 %i.mr, 3
  %i.mt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ms) #34
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit ; 10 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.ml
  %i.mv = load ptr, ptr %11, align 8, !tbaa !279
  store ptr null, ptr %11, align 8, !tbaa !279
  store ptr %i.mv, ptr %i.mu, align 8, !tbaa !281
  %.not10.i.i.i.i129 = icmp eq ptr %i.mi, %i.me
  br i1 %.not10.i.i.i.i129, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i130.preheader

.lr.ph.i.i.i.i130.preheader:                      ; preds = %.noexc134
  %14 = add i64 %i.mj, -8
  %15 = sub i64 %14, %i.mk                        ; 2 uses
  %i.mw = lshr i64 %15, 3
  %i.mx = add nuw nsw i64 %i.mw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %15, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i130.preheader536, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i130.preheader
  %scevgep = getelementptr i8, ptr %i.mt, i64 8
  %i.my = add i64 %i.mj, -8
  %i.mz = sub i64 %i.my, %i.mk
  %i.na = and i64 %i.mz, -8                       ; 2 uses
  %scevgep506 = getelementptr i8, ptr %scevgep, i64 %i.na
  %scevgep507 = getelementptr i8, ptr %i.mi, i64 8
  %scevgep508 = getelementptr i8, ptr %scevgep507, i64 %i.na
  %bound0 = icmp ult ptr %i.mt, %scevgep508
  %bound1 = icmp ult ptr %i.mi, %scevgep506
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i130.preheader536, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mx, 4611686018427387900     ; 3 uses
  %i.nb = shl i64 %n.vec, 3                       ; 2 uses
  %i.nc = getelementptr i8, ptr %i.mt, i64 %i.nb  ; 2 uses
  %i.nd = getelementptr i8, ptr %i.mi, i64 %i.nb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ne = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.mt, i64 %i.ne ; 2 uses
  %next.gep509 = getelementptr i8, ptr %i.mi, i64 %i.ne ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.nf = getelementptr i8, ptr %next.gep509, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep509, align 8, !tbaa !86, !alias.scope !316, !noalias !311
  %wide.load510 = load <2 x i64>, ptr %i.nf, align 8, !tbaa !86, !alias.scope !316, !noalias !311
  %i.ng = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !86, !alias.scope !319, !noalias !316
  store <2 x i64> %wide.load510, ptr %i.ng, align 8, !tbaa !86, !alias.scope !319, !noalias !316
  %i.nh = getelementptr i8, ptr %next.gep509, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep509, align 8, !tbaa !86, !alias.scope !316, !noalias !311
  store <2 x ptr> splat (ptr null), ptr %i.nh, align 8, !tbaa !86, !alias.scope !316, !noalias !311
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ni = icmp eq i64 %index.next, %n.vec
  br i1 %i.ni, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i130.preheader536

.lr.ph.i.i.i.i130.preheader536:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i130.preheader, %middle.block
  %.012.i.i.i.i131.ph = phi ptr [ %i.mt, %vector.memcheck ], [ %i.mt, %.lr.ph.i.i.i.i130.preheader ], [ %i.nc, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.mi, %vector.memcheck ], [ %i.mi, %.lr.ph.i.i.i.i130.preheader ], [ %i.nd, %middle.block ]
  br label %.lr.ph.i.i.i.i130

.lr.ph.i.i.i.i130:                                ; preds = %.lr.ph.i.i.i.i130.preheader536, %.lr.ph.i.i.i.i130
  %.012.i.i.i.i131 = phi ptr [ %i.nl, %.lr.ph.i.i.i.i130 ], [ %.012.i.i.i.i131.ph, %.lr.ph.i.i.i.i130.preheader536 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.nk, %.lr.ph.i.i.i.i130 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i130.preheader536 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.nj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !86, !alias.scope !314, !noalias !311
  store i64 %i.nj, ptr %.012.i.i.i.i131, align 8, !tbaa !86, !alias.scope !311, !noalias !314
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !86, !alias.scope !314, !noalias !311
  %i.nk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i131, i64 8 ; 2 uses
  %.not.i.i.i.i132 = icmp eq ptr %i.nk, %i.me
  br i1 %.not.i.i.i.i132, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i130, !llvm.loop !322

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i130, %middle.block, %.noexc134
  %.0.lcssa.i.i.i.i = phi ptr [ %i.mt, %.noexc134 ], [ %i.nc, %middle.block ], [ %i.nl, %.lr.ph.i.i.i.i130 ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.mi, null
  br i1 %.not.i23.i, label %.noexc107, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.ml) #32
  br label %.noexc107

.noexc107:                                        ; preds = %bb.bd, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.mt, ptr %i.j, align 8, !tbaa !82
  store ptr %i.nm, ptr %i.ba, align 8, !tbaa !85
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.mr
  br label %_ZN5osgeo4projL19insertIntoHierarchyINS0_10GTiffVGridENS0_17VerticalShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit.sink.split

_ZN5osgeo4projL19insertIntoHierarchyINS0_10GTiffVGridENS0_17VerticalShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit.sink.split: ; preds = %.noexc103, %.noexc107
  %.sink = phi ptr [ %i.nn, %.noexc107 ], [ %i.ji, %.noexc103 ]
  store ptr %.sink, ptr %i.bb, align 8, !tbaa !90
  br label %_ZN5osgeo4projL19insertIntoHierarchyINS0_10GTiffVGridENS0_17VerticalShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit

_ZN5osgeo4projL19insertIntoHierarchyINS0_10GTiffVGridENS0_17VerticalShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit: ; preds = %_ZN5osgeo4projL19insertIntoHierarchyINS0_10GTiffVGridENS0_17VerticalShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit.sink.split, %bb.aj, %bb.ba
  %.pr = load ptr, ptr %11, align 8, !tbaa !279   ; 3 uses
  %.not.i110 = icmp eq ptr %.pr, null
  br i1 %.not.i110, label %bb.be, label %_ZNKSt14default_deleteIN5osgeo4proj10GTiffVGridEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj10GTiffVGridEEclEPS2_.exit.i: ; preds = %_ZN5osgeo4projL19insertIntoHierarchyINS0_10GTiffVGridENS0_17VerticalShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit
  %i.no = load ptr, ptr %.pr, align 8, !tbaa !20
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(154) %.pr) #31, !inline_history !323
  br label %bb.be

bb.be:                                            ; preds = %_ZNKSt14default_deleteIN5osgeo4proj10GTiffVGridEEclEPS2_.exit.i, %_ZN5osgeo4projL19insertIntoHierarchyINS0_10GTiffVGridENS0_17VerticalShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit, %bb.bb, %bb.am, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt4

bb.bf:                                            ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !284
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt1

_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i.jt4: ; preds = %bb.m, %bb.q
  %.3.ph.jt4.ph = phi i16 [ %.2, %bb.q ], [ %.0, %bb.m ]
  %i.nr = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(340) %i.bl) #31, !inline_history !259
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt4

_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i.jt1: ; preds = %.invoke535, %bb.l
  store ptr null, ptr %0, align 8, !tbaa !284
  %i.nu = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(340) %i.bl) #31, !inline_history !259
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt1

_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt4: ; preds = %bb.be, %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i.jt4
  %.3.ph.jt4383 = phi i16 [ %.3.ph.jt4.ph, %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i.jt4 ], [ %.2, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.nx = add nuw nsw i32 %.055, 1
  br label %bb.f, !llvm.loop !324

_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt1: ; preds = %bb.bf, %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.loopexit203

bb.bg:                                            ; preds = %._crit_edge.i.i82
  %i.ny = landingpad { ptr, i32 }
          cleanup
  %i.nz = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.aw
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.bg
  %i.ob = load i64, ptr %i.aw, align 8, !tbaa !31
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i122

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.bi:                                            ; preds = %.noexc91
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.of = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.ay
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.bi
  %i.oh = load i64, ptr %i.ay, align 8, !tbaa !31
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.bh
  %.pn59 = phi { ptr, i32 } [ %i.od, %bb.bh ], [ %i.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.oe, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i122

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit:                                        ; preds = %bb.az
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body108

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i135, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.ba, %._crit_edge.i.i.sink.split.i, %bb.aj, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread.i, %bb.ab
  %lpad.loopexit200 = landingpad { ptr, i32 }
          cleanup
  br label %.body108

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp201 = landingpad { ptr, i32 }
          cleanup
  br label %.body108

.body108:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i
  %eh.lpad-body109 = phi { ptr, i32 } [ %i.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ], [ %i.ky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit200, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp201, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ok = load ptr, ptr %11, align 8, !tbaa !279  ; 3 uses
  %.not.i118 = icmp eq ptr %i.ok, null
  br i1 %.not.i118, label %.thread397, label %_ZNKSt14default_deleteIN5osgeo4proj10GTiffVGridEEclEPS2_.exit.i119

end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj18GTiffVGridShiftSet4openEP6pj_ctxSt10unique_ptrINS0_4FileESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.pn68395 = phi { ptr, i32 } [ %.pn61, %bb.bk ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %i.ny, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %lpad.loopexit401, %.loopexit400 ], [ %lpad.loopexit404, %.loopexit402 ], [ %lpad.loopexit.split-lp405, %.loopexit.split-lp403 ]
  %i.oo = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(340) %i.bl) #31, !inline_history !259
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit123

_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit123: ; preds = %.thread397, %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i122, %bb.i
  %.pn68.pn = phi { ptr, i32 } [ %i.bp, %bb.i ], [ %eh.lpad-body109, %.thread397 ], [ %.pn68395, %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i122 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZNSt10unique_ptrIN5osgeo4proj18GTiffVGridShiftSetESt14default_deleteIS2_EED2Ev.exit127

.loopexit203:                                     ; preds = %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt1, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.thread
  %.sroa.0168.0 = phi ptr [ null, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.thread ], [ %i.c, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt1 ] ; 2 uses
  %i.or = load ptr, ptr %i.aq, align 8, !tbaa !215
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.or)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %.loopexit203
  %i.os = landingpad { ptr, i32 }
          catch ptr null
  %i.ot = extractvalue { ptr, i32 } %i.os, 0
  call void @__clang_call_terminate(ptr %i.ot) #33
  unreachable

bb.bm:                                            ; preds = %.loopexit203
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %.not.i124 = icmp eq ptr %.sroa.0168.0, null
  br i1 %.not.i124, label %_ZNSt10unique_ptrIN5osgeo4proj18GTiffVGridShiftSetESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj18GTiffVGridShiftSetEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj18GTiffVGridShiftSetEEclEPS2_.exit.i: ; preds = %.thread194, %bb.bm
  %.sroa.0168.1197 = phi ptr [ %i.c, %.thread194 ], [ %.sroa.0168.0, %bb.bm ] ; 2 uses
  %i.ou = load ptr, ptr %.sroa.0168.1197, align 8, !tbaa !20
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0168.1197) #31, !inline_history !325
  br label %_ZNSt10unique_ptrIN5osgeo4proj18GTiffVGridShiftSetESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj18GTiffVGridShiftSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.bm, %_ZNKSt14default_deleteIN5osgeo4proj18GTiffVGridShiftSetEEclEPS2_.exit.i
  ret void

_ZNSt10unique_ptrIN5osgeo4proj18GTiffVGridShiftSetESt14default_deleteIS2_EED2Ev.exit127: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit123, %bb.d
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit123 ], [ %i.ao, %bb.d ]
  %i.ox = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(104) %i.c) #31, !inline_history !325
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIN5osgeo4proj18GTiffVGridShiftSetESt14default_deleteIS2_EED2Ev.exit127, %.body
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn, %_ZNSt10unique_ptrIN5osgeo4proj18GTiffVGridShiftSetESt14default_deleteIS2_EED2Ev.exit127 ], [ %i.l, %.body ]
  resume { ptr, i32 } %.pn68.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #33
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj20VerticalShiftGridSet4openEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.107") align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.a = alloca [4 x i8], align 1                 ; 9 uses
  %7 = alloca %"class.std::unique_ptr.93", align 8 ; 5 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %i.d = icmp eq i64 %i.c, 4
  %.pre = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread147

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.e = load i32, ptr %.pre, align 1
  %i.f = icmp ne i32 %i.e, 1819047278
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread147

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.i = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 11 uses
  invoke void @_ZN5osgeo4proj20VerticalShiftGridSetC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.i)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store ptr %i.i, ptr %0, align 8, !tbaa !326
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull @.str.49, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.p = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #34
          to label %bb.c unwind label %bb.j       ; 17 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !22
  store i32 1819047278, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 4, ptr %i.s, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i8 0, ptr %i.t, align 4, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 3, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  store i32 3, ptr %i.v, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i8 1, ptr %i.w, align 8, !tbaa !36
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store <2 x double> <double f0xC00921FB54442D18, double f0xBFF921FB54442D18>, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store <2 x double> <double f0x400921FB54442D18, double f0x3FF921FB54442D18>, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store <2 x double> <double f0x400921FB54442D18, double f0x3FF921FB54442D18>, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  store <2 x double> <double f0x3FD45F306DC9C883, double f0x3FE45F306DC9C883>, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5osgeo4proj21NullVerticalShiftGridE, i64 16), ptr %i.p, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !85   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.p to i64
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !85
  br label %_ZNSt10unique_ptrIN5osgeo4proj21NullVerticalShiftGridESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !82  ; 10 uses
  %i.af = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
          to label %.noexc113 unwind label %_ZNSt10unique_ptrIN5osgeo4proj21NullVerticalShiftGridESt14default_deleteIS2_EED2Ev.exit63

.noexc113:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i112 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i112)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #34
          to label %.noexc114 unwind label %_ZNSt10unique_ptrIN5osgeo4proj21NullVerticalShiftGridESt14default_deleteIS2_EED2Ev.exit63 ; 10 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  %i.ar = ptrtoint ptr %i.p to i64
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !86
  %.not10.i.i.i.i = icmp eq ptr %i.ae, %i.z
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc114
  %9 = add i64 %i.af, -8
  %10 = sub i64 %9, %i.ag                         ; 2 uses
  %i.as = lshr i64 %10, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check189 = icmp ult i64 %10, 136
  br i1 %min.iters.check189, label %.lr.ph.i.i.i.i.preheader203, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph.i.i.i.i.preheader
  %i.au = add i64 %i.af, -8
  %i.av = sub i64 %i.au, %i.ag
  %i.aw = and i64 %i.av, -8
  %i.ax = add i64 %i.aw, 8                        ; 2 uses
  %scevgep183 = getelementptr i8, ptr %i.ap, i64 %i.ax
  %scevgep184 = getelementptr i8, ptr %i.ae, i64 %i.ax
  %bound0185 = icmp ult ptr %i.ap, %scevgep184
  %bound1186 = icmp ult ptr %i.ae, %scevgep183
  %found.conflict187 = and i1 %bound0185, %bound1186
  br i1 %found.conflict187, label %.lr.ph.i.i.i.i.preheader203, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck182
  %n.vec191 = and i64 %i.at, 4611686018427387900  ; 3 uses
  %i.ay = shl i64 %n.vec191, 3                    ; 2 uses
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ae, i64 %i.ay
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next198, %vector.body192 ] ; 2 uses
  %i.bb = shl i64 %index193, 3                    ; 2 uses
  %next.gep194 = getelementptr i8, ptr %i.ap, i64 %i.bb ; 2 uses
  %next.gep195 = getelementptr i8, ptr %i.ae, i64 %i.bb ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.bc = getelementptr i8, ptr %next.gep195, i64 16
  %wide.load196 = load <2 x i64>, ptr %next.gep195, align 8, !tbaa !86, !alias.scope !333, !noalias !328
  %wide.load197 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !86, !alias.scope !333, !noalias !328
  %i.bd = getelementptr i8, ptr %next.gep194, i64 16
  store <2 x i64> %wide.load196, ptr %next.gep194, align 8, !tbaa !86, !alias.scope !336, !noalias !333
  store <2 x i64> %wide.load197, ptr %i.bd, align 8, !tbaa !86, !alias.scope !336, !noalias !333
  %i.be = getelementptr i8, ptr %next.gep195, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep195, align 8, !tbaa !86, !alias.scope !333, !noalias !328
  store <2 x ptr> splat (ptr null), ptr %i.be, align 8, !tbaa !86, !alias.scope !333, !noalias !328
  %index.next198 = add nuw i64 %index193, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next198, %n.vec191
  br i1 %i.bf, label %middle.block199, label %vector.body192, !llvm.loop !338

middle.block199:                                  ; preds = %vector.body192
  %cmp.n200 = icmp eq i64 %i.at, %n.vec191
  br i1 %cmp.n200, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader203

.lr.ph.i.i.i.i.preheader203:                      ; preds = %vector.memcheck182, %.lr.ph.i.i.i.i.preheader, %middle.block199
  %.012.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck182 ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block199 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck182 ], [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block199 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader203, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader203 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader203 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.bg = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !86, !alias.scope !331, !noalias !328
  store i64 %i.bg, ptr %.012.i.i.i.i, align 8, !tbaa !86, !alias.scope !328, !noalias !331
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !86, !alias.scope !331, !noalias !328
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.z
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !339

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block199, %.noexc114
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ap, %.noexc114 ], [ %i.az, %middle.block199 ], [ %i.bi, %.lr.ph.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i, label %.noexc, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #32
  br label %.noexc

.noexc:                                           ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.ap, ptr %i.o, align 8, !tbaa !82
  store ptr %i.bj, ptr %i.y, align 8, !tbaa !85
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.bk, ptr %i.aa, align 8, !tbaa !90
  br label %_ZNSt10unique_ptrIN5osgeo4proj21NullVerticalShiftGridESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 96) #32
  br label %bb.an

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj21NullVerticalShiftGridESt14default_deleteIS2_EED2Ev.exit63: ; preds = %bb.f, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(144) %i.p) #31, !inline_history !340
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.j, %_ZNSt10unique_ptrIN5osgeo4proj21NullVerticalShiftGridESt14default_deleteIS2_EED2Ev.exit63, %bb.i
  %.pn51.pn = phi { ptr, i32 } [ %i.bm, %bb.i ], [ %i.bo, %_ZNSt10unique_ptrIN5osgeo4proj21NullVerticalShiftGridESt14default_deleteIS2_EED2Ev.exit63 ], [ %i.bn, %bb.j ]
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(96) %i.i) #31, !inline_history !341
  br label %bb.an

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread147: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5osgeo4proj11FileManager18open_resource_fileEP6pj_ctxPKcPcm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef %1, ptr noundef %.pre, ptr noundef null, i64 noundef 0)
  %i.bv = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %.not153 = icmp eq ptr %i.bv, null
  br i1 %.not153, label %_ZNSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS2_EED2Ev.exit89.thread, label %._crit_edge.i.i

_ZNSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS2_EED2Ev.exit89.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread147
  store ptr null, ptr %0, align 8, !tbaa !342
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit111

._crit_edge.i.i:                                  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread147
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bx, ptr %4, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bx, ptr noundef nonnull align 1 dereferenceable(3) @.str.50, i64 3, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.by, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 0, ptr %i.bz, align 1, !tbaa !31
  %i.ca = call noundef zeroext i1 @_ZN5osgeo4proj8internal9ends_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %4) #31
  br i1 %i.ca, label %.critedge56, label %._crit_edge.i.i66

._crit_edge.i.i66:                                ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.cb, ptr %5, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.cb, ptr noundef nonnull align 1 dereferenceable(3) @.str.51, i64 3, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 3, ptr %i.cc, align 8, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 0, ptr %i.cd, align 1, !tbaa !31
  %i.ce = call noundef zeroext i1 @_ZN5osgeo4proj8internal9ends_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %5) #31
  %i.cf = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.cb
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i66
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !31
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.critedge56

.critedge56:                                      ; preds = %._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cj = phi i1 [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %._crit_edge.i.i ]
  %i.ck = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bx
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %.critedge56
  %i.cm = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %.critedge56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %i.cj, label %bb.k, label %bb.y

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.co = load i64, ptr %3, align 8, !tbaa !79
  store i64 %i.co, ptr %6, align 8, !tbaa !79
  store ptr null, ptr %3, align 8, !tbaa !79
  %i.cp = invoke noundef ptr @_ZN5osgeo4proj20GTXVerticalShiftGrid4openEP6pj_ctxSt10unique_ptrINS0_4FileESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %1, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %bb.l unwind label %bb.n       ; 5 uses

bb.l:                                             ; preds = %bb.k
  %i.cq = load ptr, ptr %6, align 8, !tbaa !79    ; 3 uses
  %.not.i73 = icmp eq ptr %i.cq, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i: ; preds = %bb.l
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(73) %i.cq) #31, !inline_history !81
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i
  %.not46 = icmp eq ptr %i.cp, null
  br i1 %.not46, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !342
  br label %_ZNSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS2_EED2Ev.exit89

bb.n:                                             ; preds = %bb.k
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %6, align 8, !tbaa !79    ; 3 uses
  %.not.i77 = icmp eq ptr %i.cv, null
  br i1 %.not.i77, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit79, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i78

_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i78: ; preds = %bb.n
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(73) %i.cv) #31, !inline_history !81
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit79

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit
  %i.cz = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34
          to label %bb.p unwind label %bb.v       ; 11 uses

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5osgeo4proj20VerticalShiftGridSetC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.cz)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  store ptr %i.cz, ptr %0, align 8, !tbaa !326
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit81 unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit81: ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !29
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef 0, i64 noundef %i.dd, ptr noundef nonnull @.str.50, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit83 unwind label %bb.x ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit81
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 72 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 80 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !85 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 88 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !90
  %.not.i.i84 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not.i.i84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit83
  %i.dk = ptrtoint ptr %i.cp to i64
  store i64 %i.dk, ptr %i.dh, align 8, !tbaa !86
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !85
  br label %_ZNSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS2_EED2Ev.exit89

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit83
  %i.dm = load ptr, ptr %i.df, align 8, !tbaa !82 ; 10 uses
  %i.dn = ptrtoint ptr %i.dh to i64               ; 3 uses
  %i.do = ptrtoint ptr %i.dm to i64               ; 3 uses
  %i.dp = sub i64 %i.dn, %i.do                    ; 4 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775800
  br i1 %i.dq, label %bb.t, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i115

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
          to label %.noexc133 unwind label %_ZNSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS2_EED2Ev.exit92

.noexc133:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i115: ; preds = %bb.s
  %i.dr = ashr exact i64 %i.dp, 3                 ; 3 uses
  %.sroa.speculated.i.i116 = call i64 @llvm.umax.i64(i64 %i.dr, i64 1)
  %i.ds = add nsw i64 %.sroa.speculated.i.i116, %i.dr ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dr
  %i.du = call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975)
  %i.dv = select i1 %i.dt, i64 1152921504606846975, i64 %i.du ; 3 uses
  %.not.i.i117 = icmp ne i64 %i.dv, 0
  call void @llvm.assume(i1 %.not.i.i117)
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #34
          to label %.noexc134 unwind label %_ZNSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS2_EED2Ev.exit92 ; 10 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i115
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dp
  %i.dz = ptrtoint ptr %i.cp to i64
  store i64 %i.dz, ptr %i.dy, align 8, !tbaa !86
  %.not10.i.i.i.i118 = icmp eq ptr %i.dm, %i.dh
  br i1 %.not10.i.i.i.i118, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i130, label %.lr.ph.i.i.i.i119.preheader

.lr.ph.i.i.i.i119.preheader:                      ; preds = %.noexc134
  %11 = add i64 %i.dn, -8
  %12 = sub i64 %11, %i.do                        ; 2 uses
  %i.ea = lshr i64 %12, 3
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i119.preheader204, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i119.preheader
  %i.ec = add i64 %i.dn, -8
  %i.ed = sub i64 %i.ec, %i.do
  %i.ee = and i64 %i.ed, -8
  %i.ef = add i64 %i.ee, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dx, i64 %i.ef
  %scevgep178 = getelementptr i8, ptr %i.dm, i64 %i.ef
  %bound0 = icmp ult ptr %i.dx, %scevgep178
  %bound1 = icmp ult ptr %i.dm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i119.preheader204, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eb, 4611686018427387900     ; 3 uses
  %i.eg = shl i64 %n.vec, 3                       ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dx, i64 %i.eg  ; 2 uses
  %i.ei = getelementptr i8, ptr %i.dm, i64 %i.eg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ej = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dx, i64 %i.ej ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.dm, i64 %i.ej ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.ek = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep179, align 8, !tbaa !86, !alias.scope !349, !noalias !344
  %wide.load180 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !86, !alias.scope !349, !noalias !344
  %i.el = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !86, !alias.scope !352, !noalias !349
  store <2 x i64> %wide.load180, ptr %i.el, align 8, !tbaa !86, !alias.scope !352, !noalias !349
  %i.em = getelementptr i8, ptr %next.gep179, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep179, align 8, !tbaa !86, !alias.scope !349, !noalias !344
  store <2 x ptr> splat (ptr null), ptr %i.em, align 8, !tbaa !86, !alias.scope !349, !noalias !344
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !354

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i130, label %.lr.ph.i.i.i.i119.preheader204

.lr.ph.i.i.i.i119.preheader204:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i119.preheader, %middle.block
  %.012.i.i.i.i120.ph = phi ptr [ %i.dx, %vector.memcheck ], [ %i.dx, %.lr.ph.i.i.i.i119.preheader ], [ %i.eh, %middle.block ]
  %.0911.i.i.i.i121.ph = phi ptr [ %i.dm, %vector.memcheck ], [ %i.dm, %.lr.ph.i.i.i.i119.preheader ], [ %i.ei, %middle.block ]
  br label %.lr.ph.i.i.i.i119

.lr.ph.i.i.i.i119:                                ; preds = %.lr.ph.i.i.i.i119.preheader204, %.lr.ph.i.i.i.i119
  %.012.i.i.i.i120 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i119 ], [ %.012.i.i.i.i120.ph, %.lr.ph.i.i.i.i119.preheader204 ] ; 2 uses
  %.0911.i.i.i.i121 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i119 ], [ %.0911.i.i.i.i121.ph, %.lr.ph.i.i.i.i119.preheader204 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.eo = load i64, ptr %.0911.i.i.i.i121, align 8, !tbaa !86, !alias.scope !347, !noalias !344
  store i64 %i.eo, ptr %.012.i.i.i.i120, align 8, !tbaa !86, !alias.scope !344, !noalias !347
  store ptr null, ptr %.0911.i.i.i.i121, align 8, !tbaa !86, !alias.scope !347, !noalias !344
  %i.ep = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i121, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i120, i64 8 ; 2 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.ep, %i.dh
  br i1 %.not.i.i.i.i122, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i130, label %.lr.ph.i.i.i.i119, !llvm.loop !355

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i130: ; preds = %.lr.ph.i.i.i.i119, %middle.block, %.noexc134
  %.0.lcssa.i.i.i.i124 = phi ptr [ %i.dx, %.noexc134 ], [ %i.eh, %middle.block ], [ %i.eq, %.lr.ph.i.i.i.i119 ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i124, i64 8
  %.not.i23.i132 = icmp eq ptr %i.dm, null
  br i1 %.not.i23.i132, label %.noexc85, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i130
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dp) #32
  br label %.noexc85

.noexc85:                                         ; preds = %bb.u, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i130
  store ptr %i.dx, ptr %i.df, align 8, !tbaa !82
  store ptr %i.er, ptr %i.dg, align 8, !tbaa !85
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dv
  store ptr %i.es, ptr %i.di, align 8, !tbaa !90
  br label %_ZNSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS2_EED2Ev.exit89

bb.v:                                             ; preds = %bb.o
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit79

bb.w:                                             ; preds = %bb.p
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 96) #32
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit79

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit81, %bb.q
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit95

_ZNSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS2_EED2Ev.exit92: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i115, %bb.t
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(144) %i.cp) #31, !inline_history !340
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit95

_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit95: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS2_EED2Ev.exit92, %bb.x
  %.pn47 = phi { ptr, i32 } [ %i.ew, %_ZNSt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS2_EED2Ev.exit92 ], [ %i.ev, %bb.x ]
  %i.fa = load ptr, ptr %i.cz, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(96) %i.cz) #31, !inline_history !341
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit79

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.fd = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef i64 %i.fg(ptr noundef nonnull align 8 dereferenceable(73) %i.fd, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.not = icmp eq i64 %i.fh, 4
  br i1 %.not, label %bb.ab, label %.sink.split

bb.aa:                                            ; preds = %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread150, %bb.ab, %bb.y
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ab:                                            ; preds = %bb.z
  %i.fj = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = invoke noundef zeroext i1 %i.fm(ptr noundef nonnull align 8 dereferenceable(73) %i.fj, i64 noundef 0, i32 noundef 0)
          to label %bb.ac unwind label %bb.aa     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.fo = load i8, ptr %i.a, align 1, !tbaa !31
  switch i8 %i.fo, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread150 [
    i8 73, label %bb.ad
    i8 77, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !31
  %i.fr = icmp eq i8 %i.fq, 73
  br i1 %i.fr, label %bb.af, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread150

bb.ae:                                            ; preds = %bb.ac
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !31
  %i.fu = icmp eq i8 %i.ft, 77
  br i1 %i.fu, label %bb.af, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread150

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !31  ; 3 uses
  %i.fx = icmp eq i8 %i.fw, 42
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !31  ; 4 uses
  br i1 %i.fx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread150

bb.ah:                                            ; preds = %bb.af
  %i.gb = icmp eq i8 %i.fz, 42
  %i.gc = icmp eq i8 %i.fw, 0                     ; 2 uses
  %or.cond.i = and i1 %i.gc, %i.gb
  br i1 %or.cond.i, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gd = icmp eq i8 %i.fw, 43
  %i.ge = icmp eq i8 %i.fz, 0
  %or.cond15.i = and i1 %i.gd, %i.ge
  %i.gf = icmp eq i8 %i.fz, 43
  %spec.select.i = and i1 %i.gc, %i.gf
  %or.cond = or i1 %or.cond15.i, %spec.select.i
  br i1 %or.cond, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread150

_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread:          ; preds = %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.gg = load i64, ptr %3, align 8, !tbaa !79
  store i64 %i.gg, ptr %8, align 8, !tbaa !79
  store ptr null, ptr %3, align 8, !tbaa !79
  invoke void @_ZN5osgeo4proj18GTiffVGridShiftSet4openEP6pj_ctxSt10unique_ptrINS0_4FileESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.93") align 8 %7, ptr noundef %1, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %_ZNSt10unique_ptrIN5osgeo4proj18GTiffVGridShiftSetESt14default_deleteIS2_EED2Ev.exit unwind label %bb.ak

_ZNSt10unique_ptrIN5osgeo4proj18GTiffVGridShiftSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread
  %i.gh = load ptr, ptr %7, align 8, !tbaa !289   ; 2 uses
  store ptr %i.gh, ptr %0, align 8, !tbaa !342
  %i.gi = load ptr, ptr %8, align 8, !tbaa !79    ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5osgeo4proj18GTiffHGridShiftSet4openEP6pj_ctxSt10unique_ptrINS0_4FileESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.pn125521 = phi { ptr, i32 } [ %.pn118, %bb.by ], [ %.pn116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %i.om, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ %i.gc, %bb.ag ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %i.ep, %bb.y ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %lpad.loopexit.split-lp529, %.loopexit.split-lp527 ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %lpad.loopexit528, %.loopexit526 ], [ %lpad.loopexit532, %.loopexit530 ], [ %lpad.loopexit.split-lp533, %.loopexit.split-lp531 ]
  %i.pc = load ptr, ptr %i.bu, align 8, !tbaa !20
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(340) %i.bu) #31, !inline_history !259
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit210

_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit210: ; preds = %.thread523, %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i209, %bb.i
  %.pn125.pn = phi { ptr, i32 } [ %i.by, %bb.i ], [ %eh.lpad-body196, %.thread523 ], [ %.pn125521, %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i209 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffHGridESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZNSt10unique_ptrIN5osgeo4proj18GTiffHGridShiftSetESt14default_deleteIS2_EED2Ev.exit214

.loopexit285:                                     ; preds = %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt1, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.thread
  %.sroa.0236.0 = phi ptr [ null, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.thread ], [ %i.c, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt1 ] ; 2 uses
  %i.pf = load ptr, ptr %i.aq, align 8, !tbaa !215
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffHGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.pf)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %.loopexit285
  %i.pg = landingpad { ptr, i32 }
          catch ptr null
  %i.ph = extractvalue { ptr, i32 } %i.pg, 0
  call void @__clang_call_terminate(ptr %i.ph) #33
  unreachable

bb.ca:                                            ; preds = %.loopexit285
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %.not.i211 = icmp eq ptr %.sroa.0236.0, null
  br i1 %.not.i211, label %_ZNSt10unique_ptrIN5osgeo4proj18GTiffHGridShiftSetESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj18GTiffHGridShiftSetEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj18GTiffHGridShiftSetEEclEPS2_.exit.i: ; preds = %.thread276, %bb.ca
  %.sroa.0236.1279 = phi ptr [ %i.c, %.thread276 ], [ %.sroa.0236.0, %bb.ca ] ; 2 uses
  %i.pi = load ptr, ptr %.sroa.0236.1279, align 8, !tbaa !20
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8
  call void %i.pk(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0236.1279) #31, !inline_history !446
  br label %_ZNSt10unique_ptrIN5osgeo4proj18GTiffHGridShiftSetESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj18GTiffHGridShiftSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.ca, %_ZNKSt14default_deleteIN5osgeo4proj18GTiffHGridShiftSetEEclEPS2_.exit.i
  ret void

_ZNSt10unique_ptrIN5osgeo4proj18GTiffHGridShiftSetESt14default_deleteIS2_EED2Ev.exit214: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit210, %bb.d
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn125.pn, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit210 ], [ %i.ao, %bb.d ]
  %i.pl = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8
  call void %i.pn(ptr noundef nonnull align 8 dereferenceable(104) %i.c) #31, !inline_history !446
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNSt10unique_ptrIN5osgeo4proj18GTiffHGridShiftSetESt14default_deleteIS2_EED2Ev.exit214, %.body
  %.pn125.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn, %_ZNSt10unique_ptrIN5osgeo4proj18GTiffHGridShiftSetESt14default_deleteIS2_EED2Ev.exit214 ], [ %i.l, %.body ]
  resume { ptr, i32 } %.pn125.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffHGridESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffHGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffHGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #33
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffHGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj22HorizontalShiftGridSet4openEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.183") align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 16 uses
  %i.a = alloca [160 x i8], align 16              ; 17 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %5 = alloca %"class.std::unique_ptr.151", align 8 ; 7 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %7 = alloca %"class.std::unique_ptr.151", align 8 ; 7 uses
  %8 = alloca %"class.std::unique_ptr.129", align 8 ; 5 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %10 = alloca %"class.std::unique_ptr.170", align 8 ; 5 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %i.d = icmp eq i64 %i.c, 4
  %.pre = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread140

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.e = load i32, ptr %.pre, align 1
  %i.f = icmp ne i32 %i.e, 1819047278
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread140

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.i = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 11 uses
  invoke void @_ZN5osgeo4proj22HorizontalShiftGridSetC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.i)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store ptr %i.i, ptr %0, align 8, !tbaa !447
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull @.str.49, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.p = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #34
          to label %bb.c unwind label %bb.j       ; 17 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !22
  store i32 1819047278, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 4, ptr %i.s, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i8 0, ptr %i.t, align 4, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 3, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  store i32 3, ptr %i.v, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i8 1, ptr %i.w, align 8, !tbaa !36
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store <2 x double> <double f0xC00921FB54442D18, double f0xBFF921FB54442D18>, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store <2 x double> <double f0x400921FB54442D18, double f0x3FF921FB54442D18>, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store <2 x double> <double f0x400921FB54442D18, double f0x3FF921FB54442D18>, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  store <2 x double> <double f0x3FD45F306DC9C883, double f0x3FE45F306DC9C883>, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj23NullHorizontalShiftGridE, i64 16), ptr %i.p, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !361  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !366
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.p to i64
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !362
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !361
  br label %_ZNSt10unique_ptrIN5osgeo4proj23NullHorizontalShiftGridESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !358 ; 10 uses
  %i.af = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
          to label %.noexc132 unwind label %_ZNSt10unique_ptrIN5osgeo4proj23NullHorizontalShiftGridESt14default_deleteIS2_EED2Ev.exit69

.noexc132:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i131 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i131)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #34
          to label %.noexc133 unwind label %_ZNSt10unique_ptrIN5osgeo4proj23NullHorizontalShiftGridESt14default_deleteIS2_EED2Ev.exit69 ; 10 uses

.noexc133:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  %i.ar = ptrtoint ptr %i.p to i64
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !362
  %.not10.i.i.i.i = icmp eq ptr %i.ae, %i.z
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc133
  %12 = add i64 %i.af, -8
  %13 = sub i64 %12, %i.ag                        ; 2 uses
  %i.as = lshr i64 %13, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader185, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.au = add i64 %i.af, -8
  %i.av = sub i64 %i.au, %i.ag
  %i.aw = and i64 %i.av, -8
  %i.ax = add i64 %i.aw, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.ax
  %scevgep181 = getelementptr i8, ptr %i.ae, i64 %i.ax
  %bound0 = icmp ult ptr %i.ap, %scevgep181
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader185, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ae, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bb ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.ae, i64 %i.bb ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.bc = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep182, align 8, !tbaa !362, !alias.scope !454, !noalias !449
  %wide.load183 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !362, !alias.scope !454, !noalias !449
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !362, !alias.scope !457, !noalias !454
  store <2 x i64> %wide.load183, ptr %i.bd, align 8, !tbaa !362, !alias.scope !457, !noalias !454
  %i.be = getelementptr i8, ptr %next.gep182, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep182, align 8, !tbaa !362, !alias.scope !454, !noalias !449
  store <2 x ptr> splat (ptr null), ptr %i.be, align 8, !tbaa !362, !alias.scope !454, !noalias !449
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !459

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader185

.lr.ph.i.i.i.i.preheader185:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader185, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader185 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader185 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.bg = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !362, !alias.scope !452, !noalias !449
  store i64 %i.bg, ptr %.012.i.i.i.i, align 8, !tbaa !362, !alias.scope !449, !noalias !452
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !362, !alias.scope !452, !noalias !449
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.z
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !460

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc133
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ap, %.noexc133 ], [ %i.az, %middle.block ], [ %i.bi, %.lr.ph.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i, label %.noexc, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #32
  br label %.noexc

.noexc:                                           ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.ap, ptr %i.o, align 8, !tbaa !358
  store ptr %i.bj, ptr %i.y, align 8, !tbaa !361
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.bk, ptr %i.aa, align 8, !tbaa !366
  br label %_ZNSt10unique_ptrIN5osgeo4proj23NullHorizontalShiftGridESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 96) #32
  br label %bb.bi

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj23NullHorizontalShiftGridESt14default_deleteIS2_EED2Ev.exit69: ; preds = %bb.f, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(144) %i.p) #31, !inline_history !461
  br label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.j, %_ZNSt10unique_ptrIN5osgeo4proj23NullHorizontalShiftGridESt14default_deleteIS2_EED2Ev.exit69, %bb.i
  %.pn59.pn = phi { ptr, i32 } [ %i.bm, %bb.i ], [ %i.bo, %_ZNSt10unique_ptrIN5osgeo4proj23NullHorizontalShiftGridESt14default_deleteIS2_EED2Ev.exit69 ], [ %i.bn, %bb.j ]
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(96) %i.i) #31, !inline_history !462
  br label %bb.bi

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread140: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5osgeo4proj11FileManager18open_resource_fileEP6pj_ctxPKcPcm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef %1, ptr noundef %.pre, ptr noundef null, i64 noundef 0)
  %i.bv = load ptr, ptr %3, align 8, !tbaa !79    ; 4 uses
  %.not155 = icmp eq ptr %i.bv, null
  br i1 %.not155, label %.thread153, label %bb.k

.thread153:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread140
  store ptr null, ptr %0, align 8, !tbaa !463
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit130

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread140
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef i64 %i.bz(ptr noundef nonnull align 8 dereferenceable(73) %i.bv, ptr noundef nonnull %i.a, i64 noundef 160)
          to label %bb.l unwind label %bb.n       ; 6 uses

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq i64 %i.ca, 160
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.cb, align 8, !tbaa !465
  %i.cc = trunc i64 %i.ca to i32
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef %i.cc)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread150, %bb.o, %bb.m, %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit74

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ce = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(73) %i.ce, i64 noundef 0, i32 noundef 0)
          to label %bb.p unwind label %bb.n       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.cj = icmp ugt i64 %i.ca, 159
  br i1 %i.cj, label %bb.q, label %bb.ag

bb.q:                                             ; preds = %bb.p
  %i.ck = load i32, ptr %i.a, align 16
  %i.cl = xor i32 %i.ck, 1145128264
  %i.cm = getelementptr i8, ptr %i.a, i64 4
  %i.cn = load i16, ptr %i.cm, align 4
  %i.co = zext i16 %i.cn to i32
  %i.cp = xor i32 %i.co, 21061
  %i.cq = or i32 %i.cl, %i.cp
  %i.cr = icmp ne i32 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = xor i32 %i.cv, 1380393047
  %i.cx = getelementptr i8, ptr %i.cu, i64 4
  %i.cy = load i16, ptr %i.cx, align 1
  %i.cz = zext i16 %i.cy to i32
  %i.da = xor i32 %i.cz, 17481
  %i.db = or i32 %i.cw, %i.da
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.dg = load i128, ptr %i.df, align 1
  %i.dh = icmp ne i128 %i.dg, 42702102459747703398681013833858830164
  %i.di = zext i1 %i.dh to i32
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
end_hunk_2
begin_hunk_3_@_ZN5osgeo4proj24GTiffGenericGridShiftSet4openEP6pj_ctxSt10unique_ptrINS0_4FileESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.noexc121:                                        ; preds = %bb.ag
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !506
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread.i: ; preds = %.noexc121, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.ad
  %i.gw = phi ptr [ %i.gb, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %i.gb, %bb.ad ], [ %.pre.i, %.noexc121 ], [ %i.gb, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i ]
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEEixERSD_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit

.noexc122:                                        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread.i
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !506
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc122, %.critedge80.thread
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !29 ; 5 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hb = load ptr, ptr %i.aq, align 8, !tbaa !215 ; 2 uses
  %.not10.i.i.i78.i = icmp eq ptr %i.hb, null
  %.pre151.i = load ptr, ptr %i.cm, align 8       ; 3 uses
  br i1 %.not10.i.i.i78.i, label %._crit_edge.i.i.sink.split.i, label %.lr.ph.i.i.i79.i

.lr.ph.i.i.i79.i:                                 ; preds = %bb.ai, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i
  %.012.i.i.i80.i = phi ptr [ %.1.i.i.i90.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i ], [ %i.hb, %bb.ai ] ; 7 uses
  %.0811.i.i.i81.i = phi ptr [ %.19.i.i.i87.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i ], [ %i.ap, %bb.ai ] ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i80.i, i64 40
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !29 ; 3 uses
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i104.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i83.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i83.i: ; preds = %.lr.ph.i.i.i79.i
  %.sroa.speculated.i.i.i.i.i.i82.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 %i.hd)
  %i.hf = getelementptr inbounds nuw i8, ptr %.012.i.i.i80.i, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !26
  %i.hh = call i32 @memcmp(ptr noundef %i.hg, ptr noundef %.pre151.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i82.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i84.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i.i.i.i.i84.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i104.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i104.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i83.i, %.lr.ph.i.i.i79.i
  %i.hi = sub i64 %i.hd, %i.gz
  %spec.select7.i.i.i.i.i.i.i105.i = call i64 @llvm.smax.i64(i64 %i.hi, i64 -2147483648)
  %.08.i.i.i.i.i.i.i106.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i105.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i107.i = trunc nsw i64 %.08.i.i.i.i.i.i.i106.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i104.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i83.i
  %.0.i.i.i.i.i.i86.i = phi i32 [ %i.hh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i83.i ], [ %.0.i6.i.i.i.i.i.i107.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i104.i ]
  %i.hj = icmp slt i32 %.0.i.i.i.i.i.i86.i, 0     ; 5 uses
  %.19.i.i.i87.i = select i1 %i.hj, ptr %.0811.i.i.i81.i, ptr %.012.i.i.i80.i ; 2 uses
  %.1.in.v.i.i.i88.i = select i1 %i.hj, i64 24, i64 16
  %.1.in.i.i.i89.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i80.i, i64 %.1.in.v.i.i.i88.i
  %.1.i.i.i90.i = load ptr, ptr %.1.in.i.i.i89.i, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i91.i = icmp eq ptr %.1.i.i.i90.i, null
  br i1 %.not.i.i.i91.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i92.i, label %.lr.ph.i.i.i79.i, !llvm.loop !519

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i92.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i85.i
  %i.hk = icmp eq ptr %.19.i.i.i87.i, %i.ap
  br i1 %i.hk, label %._crit_edge.i.i.sink.split.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i92.i
  %.19.i.i.i87.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hj, ptr %.0811.i.i.i81.i, ptr %.012.i.i.i80.i
  %.19.i.i.i87.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i87.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.hl = load i64, ptr %.19.i.i.i87.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !29 ; 3 uses
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i100.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i94.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i94.i: ; preds = %bb.aj
  %.sroa.speculated.i.i.i.i.i93.i = call i64 @llvm.umin.i64(i64 %i.hl, i64 %i.gz)
  %.19.i.i.i87.i.sroa.sel176.v.sroa.sel.v.sroa.sel.v = select i1 %i.hj, ptr %.0811.i.i.i81.i, ptr %.012.i.i.i80.i
  %.19.i.i.i87.i.sroa.sel176.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i87.i.sroa.sel176.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.hn = load ptr, ptr %.19.i.i.i87.i.sroa.sel176.v.sroa.sel.v.sroa.sel, align 8, !tbaa !26
  %i.ho = call i32 @memcmp(ptr noundef %.pre151.i, ptr noundef %i.hn, i64 noundef %.sroa.speculated.i.i.i.i.i93.i) #31 ; 2 uses
  %.not.i.i.i.i.i95.i = icmp eq i32 %i.ho, 0
  br i1 %.not.i.i.i.i.i95.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i100.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i100.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i94.i, %bb.aj
  %i.hp = sub i64 %i.gz, %i.hl
  %spec.select7.i.i.i.i.i.i101.i = call i64 @llvm.smax.i64(i64 %i.hp, i64 -2147483648)
  %.08.i.i.i.i.i.i102.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i101.i, i64 2147483647)
  %.0.i6.i.i.i.i.i103.i = trunc nsw i64 %.08.i.i.i.i.i.i102.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i100.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i94.i
  %.0.i.i.i.i.i97.i = phi i32 [ %i.ho, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i94.i ], [ %.0.i6.i.i.i.i.i103.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i100.i ]
  %i.hq = icmp slt i32 %.0.i.i.i.i.i97.i, 0
  br i1 %i.hq, label %._crit_edge.i.i.sink.split.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i
  %.19.i.i.i87.i.sroa.sel179.v.sroa.sel.v.sroa.sel.v = select i1 %i.hj, ptr %.0811.i.i.i81.i, ptr %.012.i.i.i80.i
  %.19.i.i.i87.i.sroa.sel179.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i87.i.sroa.sel179.v.sroa.sel.v.sroa.sel.v, i64 64
  %i.hr = load ptr, ptr %.19.i.i.i87.i.sroa.sel179.v.sroa.sel.v.sroa.sel, align 8, !tbaa !520 ; 7 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !16
  %i.hw = fcmp ult double %i.ht, %i.hv
  br i1 %i.hw, label %._crit_edge.i.i.sink.split.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gb, i64 72
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !15
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 72
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !15
  %i.ib = fcmp ugt double %i.hy, %i.ia
  br i1 %i.ib, label %._crit_edge.i.i.sink.split.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %i.id = load double, ptr %i.ic, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 64
  %i.if = load double, ptr %i.ie, align 8, !tbaa !18
  %i.ig = fcmp ult double %i.id, %i.if
  br i1 %i.ig, label %._crit_edge.i.i.sink.split.i, label %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit.i

_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit.i: ; preds = %bb.am
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gb, i64 80
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !19
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hr, i64 80
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !19
  %i.il = fcmp ugt double %i.ii, %i.ik
  br i1 %i.il, label %._crit_edge.i.i.sink.split.i, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.hr, i64 128 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !487 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.hr, i64 136
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !492
  %.not.i.i = icmp eq ptr %i.in, %i.ip
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.critedge.i
  %i.iq = load ptr, ptr %10, align 8, !tbaa !506
  store ptr %i.iq, ptr %i.in, align 8, !tbaa !508
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr %i.ir, ptr %i.im, align 8, !tbaa !487
  br label %.thread376

bb.ao:                                            ; preds = %.critedge.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.hr, i64 120
  invoke void @_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS0_INS2_16GTiffGenericGridES4_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr %i.in, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5osgeo4projL19insertIntoHierarchyINS0_16GTiffGenericGridENS0_16GenericShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit unwind label %.loopexit.split-lp.loopexit

bb.ap:                                            ; preds = %bb.ah
  %i.it = load i64, ptr %i.gc, align 8, !tbaa !29
  %i.iu = icmp eq i64 %i.it, 0
  br i1 %i.iu, label %._crit_edge.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iv = load ptr, ptr %i.ay, align 8, !tbaa !487 ; 6 uses
  %i.iw = load ptr, ptr %i.bd, align 8, !tbaa !492
  %.not.i109.i = icmp eq ptr %i.iv, %i.iw
  br i1 %.not.i109.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ix = load ptr, ptr %10, align 8, !tbaa !506
  store ptr %i.ix, ptr %i.iv, align 8, !tbaa !508
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store ptr %i.iy, ptr %i.ay, align 8, !tbaa !487
  br label %.thread376

bb.as:                                            ; preds = %bb.aq
  %i.iz = load ptr, ptr %i.j, align 8, !tbaa !484 ; 10 uses
  %i.ja = ptrtoint ptr %i.iv to i64               ; 3 uses
  %i.jb = ptrtoint ptr %i.iz to i64               ; 3 uses
  %i.jc = sub i64 %i.ja, %i.jb                    ; 4 uses
  %i.jd = icmp eq i64 %i.jc, 9223372036854775800
  br i1 %i.jd, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i147

.invoke:                                          ; preds = %bb.bi, %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i147: ; preds = %bb.as
  %i.je = ashr exact i64 %i.jc, 3                 ; 3 uses
  %.sroa.speculated.i.i148 = call i64 @llvm.umax.i64(i64 %i.je, i64 1)
  %i.jf = add nsw i64 %.sroa.speculated.i.i148, %i.je ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.je
  %i.jh = call i64 @llvm.umin.i64(i64 %i.jf, i64 1152921504606846975)
  %i.ji = select i1 %i.jg, i64 1152921504606846975, i64 %i.jh ; 3 uses
  %.not.i.i149 = icmp ne i64 %i.ji, 0
  call void @llvm.assume(i1 %.not.i.i149)
  %i.jj = shl nuw nsw i64 %i.ji, 3
  %i.jk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #34
          to label %.noexc166 unwind label %.loopexit.split-lp.loopexit ; 10 uses

.noexc166:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i147
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jc
  %i.jm = load ptr, ptr %10, align 8, !tbaa !506
  store ptr null, ptr %10, align 8, !tbaa !506
  store ptr %i.jm, ptr %i.jl, align 8, !tbaa !508
  %.not10.i.i.i.i150 = icmp eq ptr %i.iz, %i.iv
  br i1 %.not10.i.i.i.i150, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162, label %.lr.ph.i.i.i.i151.preheader

.lr.ph.i.i.i.i151.preheader:                      ; preds = %.noexc166
  %13 = add i64 %i.ja, -8
  %14 = sub i64 %13, %i.jb                        ; 2 uses
  %i.jn = lshr i64 %14, 3
  %i.jo = add nuw nsw i64 %i.jn, 1                ; 2 uses
  %min.iters.check498 = icmp ult i64 %14, 56
  br i1 %min.iters.check498, label %.lr.ph.i.i.i.i151.preheader513, label %vector.memcheck489

vector.memcheck489:                               ; preds = %.lr.ph.i.i.i.i151.preheader
  %scevgep490 = getelementptr i8, ptr %i.jk, i64 8
  %i.jp = add i64 %i.ja, -8
  %i.jq = sub i64 %i.jp, %i.jb
  %i.jr = and i64 %i.jq, -8                       ; 2 uses
  %scevgep491 = getelementptr i8, ptr %scevgep490, i64 %i.jr
  %scevgep492 = getelementptr i8, ptr %i.iz, i64 8
  %scevgep493 = getelementptr i8, ptr %scevgep492, i64 %i.jr
  %bound0494 = icmp ult ptr %i.jk, %scevgep493
  %bound1495 = icmp ult ptr %i.iz, %scevgep491
  %found.conflict496 = and i1 %bound0494, %bound1495
  br i1 %found.conflict496, label %.lr.ph.i.i.i.i151.preheader513, label %vector.ph499

vector.ph499:                                     ; preds = %vector.memcheck489
  %n.vec500 = and i64 %i.jo, 4611686018427387900  ; 3 uses
  %i.js = shl i64 %n.vec500, 3                    ; 2 uses
  %i.jt = getelementptr i8, ptr %i.jk, i64 %i.js  ; 2 uses
  %i.ju = getelementptr i8, ptr %i.iz, i64 %i.js
  br label %vector.body501

vector.body501:                                   ; preds = %vector.body501, %vector.ph499
  %index502 = phi i64 [ 0, %vector.ph499 ], [ %index.next507, %vector.body501 ] ; 2 uses
  %i.jv = shl i64 %index502, 3                    ; 2 uses
  %next.gep503 = getelementptr i8, ptr %i.jk, i64 %i.jv ; 2 uses
  %next.gep504 = getelementptr i8, ptr %i.iz, i64 %i.jv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.jw = getelementptr i8, ptr %next.gep504, i64 16
  %wide.load505 = load <2 x i64>, ptr %next.gep504, align 8, !tbaa !488, !alias.scope !527, !noalias !522
  %wide.load506 = load <2 x i64>, ptr %i.jw, align 8, !tbaa !488, !alias.scope !527, !noalias !522
  %i.jx = getelementptr i8, ptr %next.gep503, i64 16
  store <2 x i64> %wide.load505, ptr %next.gep503, align 8, !tbaa !488, !alias.scope !530, !noalias !527
  store <2 x i64> %wide.load506, ptr %i.jx, align 8, !tbaa !488, !alias.scope !530, !noalias !527
  %i.jy = getelementptr i8, ptr %next.gep504, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep504, align 8, !tbaa !488, !alias.scope !527, !noalias !522
  store <2 x ptr> splat (ptr null), ptr %i.jy, align 8, !tbaa !488, !alias.scope !527, !noalias !522
  %index.next507 = add nuw i64 %index502, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next507, %n.vec500
  br i1 %i.jz, label %middle.block508, label %vector.body501, !llvm.loop !532

middle.block508:                                  ; preds = %vector.body501
  %cmp.n509 = icmp eq i64 %i.jo, %n.vec500
  br i1 %cmp.n509, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162, label %.lr.ph.i.i.i.i151.preheader513

.lr.ph.i.i.i.i151.preheader513:                   ; preds = %vector.memcheck489, %.lr.ph.i.i.i.i151.preheader, %middle.block508
  %.012.i.i.i.i152.ph = phi ptr [ %i.jk, %vector.memcheck489 ], [ %i.jk, %.lr.ph.i.i.i.i151.preheader ], [ %i.jt, %middle.block508 ]
  %.0911.i.i.i.i153.ph = phi ptr [ %i.iz, %vector.memcheck489 ], [ %i.iz, %.lr.ph.i.i.i.i151.preheader ], [ %i.ju, %middle.block508 ]
  br label %.lr.ph.i.i.i.i151

.lr.ph.i.i.i.i151:                                ; preds = %.lr.ph.i.i.i.i151.preheader513, %.lr.ph.i.i.i.i151
  %.012.i.i.i.i152 = phi ptr [ %i.kc, %.lr.ph.i.i.i.i151 ], [ %.012.i.i.i.i152.ph, %.lr.ph.i.i.i.i151.preheader513 ] ; 2 uses
  %.0911.i.i.i.i153 = phi ptr [ %i.kb, %.lr.ph.i.i.i.i151 ], [ %.0911.i.i.i.i153.ph, %.lr.ph.i.i.i.i151.preheader513 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.ka = load i64, ptr %.0911.i.i.i.i153, align 8, !tbaa !488, !alias.scope !525, !noalias !522
  store i64 %i.ka, ptr %.012.i.i.i.i152, align 8, !tbaa !488, !alias.scope !522, !noalias !525
  store ptr null, ptr %.0911.i.i.i.i153, align 8, !tbaa !488, !alias.scope !525, !noalias !522
  %i.kb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i153, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i152, i64 8 ; 2 uses
  %.not.i.i.i.i154 = icmp eq ptr %i.kb, %i.iv
  br i1 %.not.i.i.i.i154, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162, label %.lr.ph.i.i.i.i151, !llvm.loop !533

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162: ; preds = %.lr.ph.i.i.i.i151, %middle.block508, %.noexc166
  %.0.lcssa.i.i.i.i156 = phi ptr [ %i.jk, %.noexc166 ], [ %i.jt, %middle.block508 ], [ %i.kc, %.lr.ph.i.i.i.i151 ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i156, i64 8
  %.not.i23.i164 = icmp eq ptr %i.iz, null
  br i1 %.not.i23.i164, label %.noexc124, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.jc) #32
  br label %.noexc124

.noexc124:                                        ; preds = %bb.at, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162
  store ptr %i.jk, ptr %i.j, align 8, !tbaa !484
  store ptr %i.kd, ptr %i.ay, align 8, !tbaa !487
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.ji
  br label %_ZN5osgeo4projL19insertIntoHierarchyINS0_16GTiffGenericGridENS0_16GenericShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit.sink.split

._crit_edge.i.i.sink.split.i:                     ; preds = %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit.i, %bb.am, %bb.al, %bb.ak, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i92.i, %bb.ai
  %.str.134.sink.i = phi ptr [ @.str.133, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit108.i ], [ @.str.133, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i92.i ], [ @.str.133, %bb.ai ], [ @.str.134, %bb.ak ], [ @.str.134, %bb.al ], [ @.str.134, %bb.am ], [ @.str.134, %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit.i ]
  %i.kf = load ptr, ptr %i.ca, align 8, !tbaa !26
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %.str.134.sink.i, ptr noundef %i.kf, ptr noundef %.pre151.i)
          to label %._crit_edge.i.i.i unwind label %.loopexit.split-lp.loopexit

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.sink.split.i, %bb.ap
  %i.kg = load ptr, ptr %10, align 8, !tbaa !506  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.be, ptr %4, align 8, !tbaa !22
  store i32 1162893652, ptr %i.be, align 8
  store i64 4, ptr %i.bf, align 8, !tbaa !29
  store i8 0, ptr %i.bg, align 4, !tbaa !31
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 144
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !258 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !20
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.kl(ptr noundef nonnull align 8 dereferenceable(340) %i.ki, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef -1)
          to label %.noexc113.i unwind label %bb.aw, !inline_history !518 ; 3 uses

.noexc113.i:                                      ; preds = %._crit_edge.i.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !29
  %i.kp = icmp eq i64 %i.ko, 0
  br i1 %i.kp, label %bb.au, label %_ZNK5osgeo4proj16GTiffGenericGrid12metadataItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i

bb.au:                                            ; preds = %.noexc113.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kg, i64 152
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !495 ; 3 uses
  %.not.i112.i = icmp eq ptr %i.kr, null
  br i1 %.not.i112.i, label %_ZNK5osgeo4proj16GTiffGenericGrid12metadataItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !20
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.ku(ptr noundef nonnull align 8 dereferenceable(120) %i.kr, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef -1)
          to label %_ZNK5osgeo4proj16GTiffGenericGrid12metadataItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i unwind label %bb.aw, !inline_history !518

_ZNK5osgeo4proj16GTiffGenericGrid12metadataItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i: ; preds = %bb.av, %bb.au, %.noexc113.i
  %.0.i.i = phi ptr [ %i.km, %.noexc113.i ], [ %i.km, %bb.au ], [ %i.kv, %bb.av ] ; 2 uses
  %i.kw = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.be
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK5osgeo4proj16GTiffGenericGrid12metadataItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i
  %i.ky = load i64, ptr %i.be, align 8, !tbaa !31
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNK5osgeo4proj16GTiffGenericGrid12metadataItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.la = load ptr, ptr %i.j, align 8, !tbaa !505 ; 2 uses
  %i.lb = load ptr, ptr %i.ay, align 8, !tbaa !505 ; 3 uses
  %.not149.i = icmp eq ptr %i.la, %i.lb
  br i1 %.not149.i, label %.critedge77.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.le = getelementptr inbounds nuw i8, ptr %i.gb, i64 72
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gb, i64 64 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gb, i64 80 ; 2 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i.i.i
  %i.lh = landingpad { ptr, i32 }
          cleanup
  %i.li = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.be
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i: ; preds = %bb.aw
  %i.lk = load i64, ptr %i.be, align 8, !tbaa !31
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.bk

bb.ax:                                            ; preds = %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i, %.lr.ph.i
  %.sroa.0133.0150.i = phi ptr [ %i.la, %.lr.ph.i ], [ %i.nk, %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i ] ; 3 uses
  %i.lm = load i64, ptr %i.lc, align 8, !tbaa !29
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %.critedge75.thread.i, label %._crit_edge.i.i118.i

._crit_edge.i.i118.i:                             ; preds = %bb.ax
  %i.lo = load ptr, ptr %.sroa.0133.0150.i, align 8, !tbaa !488 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.bh, ptr %5, align 8, !tbaa !22
  store i32 1162893652, ptr %i.bh, align 8
  store i64 4, ptr %i.bi, align 8, !tbaa !29
  store i8 0, ptr %i.bj, align 4, !tbaa !31
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !20
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.lr(ptr noundef nonnull align 8 dereferenceable(120) %i.lo, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef -1)
          to label %bb.ay unwind label %bb.bb     ; 2 uses

bb.ay:                                            ; preds = %._crit_edge.i.i118.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !29 ; 3 uses
  %i.lv = load i64, ptr %i.lc, align 8, !tbaa !29
  %i.lw = icmp eq i64 %i.lu, %i.lv
  br i1 %i.lw, label %bb.az, label %.critedge73.i

bb.az:                                            ; preds = %bb.ay
  %i.lx = icmp eq i64 %i.lu, 0
  br i1 %i.lx, label %.critedge73.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ly = load ptr, ptr %.0.i.i, align 8, !tbaa !26
  %i.lz = load ptr, ptr %i.ls, align 8, !tbaa !26
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.lz, ptr %i.ly, i64 %i.lu)
  %i.ma = icmp ne i32 %bcmp.i.i.i, 0
  br label %.critedge73.i

.critedge73.i:                                    ; preds = %bb.ba, %bb.az, %bb.ay
  %.ph.i = phi i1 [ false, %bb.az ], [ %i.ma, %bb.ba ], [ true, %bb.ay ]
  %i.mb = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.bh
  br i1 %i.mc, label %.critedge75.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i: ; preds = %.critedge73.i
  %i.md = load i64, ptr %i.bh, align 8, !tbaa !31
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #32
  br label %.critedge75.i

.critedge75.i:                                    ; preds = %.critedge73.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.ph.i, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i, label %.critedge75.thread.i

bb.bb:                                            ; preds = %._crit_edge.i.i118.i
  %i.mf = landingpad { ptr, i32 }
          cleanup
  %i.mg = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.bh
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i: ; preds = %bb.bb
  %i.mi = load i64, ptr %i.bh, align 8, !tbaa !31
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.bk

.critedge75.thread.i:                             ; preds = %.critedge75.i, %bb.ax
  %i.mk = load ptr, ptr %.sroa.0133.0150.i, align 8, !tbaa !488 ; 7 uses
  %i.ml = load double, ptr %i.ld, align 8, !tbaa !16 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 56
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !16
  %i.mo = fcmp ult double %i.ml, %i.mn
  br i1 %i.mo, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %.critedge75.thread.i
  %i.mp = load double, ptr %i.le, align 8, !tbaa !15
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mk, i64 72
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !15 ; 2 uses
  %i.ms = fcmp ugt double %i.mp, %i.mr
  br i1 %i.ms, label %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit128.thread.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mt = load double, ptr %i.lf, align 8, !tbaa !18
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !18
  %i.mw = fcmp ult double %i.mt, %i.mv
  br i1 %i.mw, label %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit128.thread.i, label %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit128.i

_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit128.i: ; preds = %bb.bd
  %i.mx = load double, ptr %i.lg, align 8, !tbaa !19
  %i.my = getelementptr inbounds nuw i8, ptr %i.mk, i64 80
  %i.mz = load double, ptr %i.my, align 8, !tbaa !19
  %i.na = fcmp ugt double %i.mx, %i.mz
  br i1 %i.na, label %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit128.thread.i, label %bb.bg

_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit128.thread.i: ; preds = %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit128.i, %bb.bd, %bb.bc
  %i.nb = fcmp uge double %i.ml, %i.mr
  br i1 %i.nb, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i, label %bb.be

bb.be:                                            ; preds = %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit128.thread.i
  %i.nc = load double, ptr %i.lf, align 8, !tbaa !18
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mk, i64 80
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !19
  %i.nf = fcmp olt double %i.nc, %i.ne
  br i1 %i.nf, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.i, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i

_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.i: ; preds = %bb.be
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !18
  %i.ni = load double, ptr %i.lg, align 8, !tbaa !19
  %i.nj = fcmp ugt double %i.nh, %i.ni
  br i1 %i.nj, label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.i
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.36)
          to label %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i unwind label %.loopexit

_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i: ; preds = %bb.bf, %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.i, %bb.be, %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit128.thread.i, %.critedge75.thread.i, %.critedge75.i
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0133.0150.i, i64 8 ; 2 uses
  %.not.i120 = icmp eq ptr %i.nk, %i.lb
  br i1 %.not.i120, label %.critedge77.loopexit.i, label %bb.ax

bb.bg:                                            ; preds = %_ZNK5osgeo4proj12ExtentAndRes8containsERKS1_.exit128.i
  invoke void @_ZN5osgeo4proj16GTiffGenericGrid10insertGridEP6pj_ctxOSt10unique_ptrIS1_St14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(200) %i.mk, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5osgeo4projL19insertIntoHierarchyINS0_16GTiffGenericGridENS0_16GenericShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit unwind label %.loopexit.split-lp.loopexit

.critedge77.loopexit.i:                           ; preds = %_ZNK5osgeo4proj12ExtentAndRes10intersectsERKS1_.exit.thread.i
  %.pre152.i = load ptr, ptr %i.ay, align 8, !tbaa !487
  br label %.critedge77.i

.critedge77.i:                                    ; preds = %.critedge77.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.nl = phi ptr [ %.pre152.i, %.critedge77.loopexit.i ], [ %i.lb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 6 uses
  %i.nm = load ptr, ptr %i.bd, align 8, !tbaa !492
  %.not.i129.i = icmp eq ptr %i.nl, %i.nm
  br i1 %.not.i129.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.critedge77.i
  %i.nn = load ptr, ptr %10, align 8, !tbaa !506
  store ptr %i.nn, ptr %i.nl, align 8, !tbaa !508
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  store ptr %i.no, ptr %i.ay, align 8, !tbaa !487
  br label %.thread376

bb.bi:                                            ; preds = %.critedge77.i
  %i.np = load ptr, ptr %i.j, align 8, !tbaa !484 ; 10 uses
  %i.nq = ptrtoint ptr %i.nl to i64               ; 3 uses
  %i.nr = ptrtoint ptr %i.np to i64               ; 3 uses
  %i.ns = sub i64 %i.nq, %i.nr                    ; 4 uses
  %i.nt = icmp eq i64 %i.ns, 9223372036854775800
  br i1 %i.nt, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bi
  %i.nu = ashr exact i64 %i.ns, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.nu, i64 1)
  %i.nv = add nsw i64 %.sroa.speculated.i.i, %i.nu ; 2 uses
  %i.nw = icmp ult i64 %i.nv, %i.nu
  %i.nx = call i64 @llvm.umin.i64(i64 %i.nv, i64 1152921504606846975)
  %i.ny = select i1 %i.nw, i64 1152921504606846975, i64 %i.nx ; 3 uses
  %.not.i.i140 = icmp ne i64 %i.ny, 0
  call void @llvm.assume(i1 %.not.i.i140)
  %i.nz = shl nuw nsw i64 %i.ny, 3
  %i.oa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nz) #34
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit ; 10 uses

.noexc146:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.ns
  %i.oc = load ptr, ptr %10, align 8, !tbaa !506
  store ptr null, ptr %10, align 8, !tbaa !506
  store ptr %i.oc, ptr %i.ob, align 8, !tbaa !508
  %.not10.i.i.i.i141 = icmp eq ptr %i.np, %i.nl
  br i1 %.not10.i.i.i.i141, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i142.preheader

.lr.ph.i.i.i.i142.preheader:                      ; preds = %.noexc146
  %15 = add i64 %i.nq, -8
  %16 = sub i64 %15, %i.nr                        ; 2 uses
  %i.od = lshr i64 %16, 3
  %i.oe = add nuw nsw i64 %i.od, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %16, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i142.preheader512, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i142.preheader
  %scevgep = getelementptr i8, ptr %i.oa, i64 8
  %i.of = add i64 %i.nq, -8
  %i.og = sub i64 %i.of, %i.nr
  %i.oh = and i64 %i.og, -8                       ; 2 uses
  %scevgep483 = getelementptr i8, ptr %scevgep, i64 %i.oh
  %scevgep484 = getelementptr i8, ptr %i.np, i64 8
  %scevgep485 = getelementptr i8, ptr %scevgep484, i64 %i.oh
  %bound0 = icmp ult ptr %i.oa, %scevgep485
  %bound1 = icmp ult ptr %i.np, %scevgep483
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i142.preheader512, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.oe, 4611686018427387900     ; 3 uses
  %i.oi = shl i64 %n.vec, 3                       ; 2 uses
  %i.oj = getelementptr i8, ptr %i.oa, i64 %i.oi  ; 2 uses
  %i.ok = getelementptr i8, ptr %i.np, i64 %i.oi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ol = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.oa, i64 %i.ol ; 2 uses
  %next.gep486 = getelementptr i8, ptr %i.np, i64 %i.ol ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.om = getelementptr i8, ptr %next.gep486, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep486, align 8, !tbaa !488, !alias.scope !539, !noalias !534
  %wide.load487 = load <2 x i64>, ptr %i.om, align 8, !tbaa !488, !alias.scope !539, !noalias !534
  %i.on = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !488, !alias.scope !542, !noalias !539
  store <2 x i64> %wide.load487, ptr %i.on, align 8, !tbaa !488, !alias.scope !542, !noalias !539
  %i.oo = getelementptr i8, ptr %next.gep486, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep486, align 8, !tbaa !488, !alias.scope !539, !noalias !534
  store <2 x ptr> splat (ptr null), ptr %i.oo, align 8, !tbaa !488, !alias.scope !539, !noalias !534
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.op = icmp eq i64 %index.next, %n.vec
  br i1 %i.op, label %middle.block, label %vector.body, !llvm.loop !544

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.oe, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i142.preheader512

.lr.ph.i.i.i.i142.preheader512:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i142.preheader, %middle.block
  %.012.i.i.i.i143.ph = phi ptr [ %i.oa, %vector.memcheck ], [ %i.oa, %.lr.ph.i.i.i.i142.preheader ], [ %i.oj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.np, %vector.memcheck ], [ %i.np, %.lr.ph.i.i.i.i142.preheader ], [ %i.ok, %middle.block ]
  br label %.lr.ph.i.i.i.i142

.lr.ph.i.i.i.i142:                                ; preds = %.lr.ph.i.i.i.i142.preheader512, %.lr.ph.i.i.i.i142
  %.012.i.i.i.i143 = phi ptr [ %i.os, %.lr.ph.i.i.i.i142 ], [ %.012.i.i.i.i143.ph, %.lr.ph.i.i.i.i142.preheader512 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.or, %.lr.ph.i.i.i.i142 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i142.preheader512 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.oq = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !488, !alias.scope !537, !noalias !534
  store i64 %i.oq, ptr %.012.i.i.i.i143, align 8, !tbaa !488, !alias.scope !534, !noalias !537
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !488, !alias.scope !537, !noalias !534
  %i.or = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i143, i64 8 ; 2 uses
  %.not.i.i.i.i144 = icmp eq ptr %i.or, %i.nl
  br i1 %.not.i.i.i.i144, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i142, !llvm.loop !545

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i142, %middle.block, %.noexc146
  %.0.lcssa.i.i.i.i = phi ptr [ %i.oa, %.noexc146 ], [ %i.oj, %middle.block ], [ %i.os, %.lr.ph.i.i.i.i142 ]
  %i.ot = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.np, null
  br i1 %.not.i23.i, label %.noexc128, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef %i.ns) #32
  br label %.noexc128

.noexc128:                                        ; preds = %bb.bj, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.oa, ptr %i.j, align 8, !tbaa !484
  store ptr %i.ot, ptr %i.ay, align 8, !tbaa !487
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.ny
  br label %_ZN5osgeo4projL19insertIntoHierarchyINS0_16GTiffGenericGridENS0_16GenericShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit.sink.split

_ZN5osgeo4projL19insertIntoHierarchyINS0_16GTiffGenericGridENS0_16GenericShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit.sink.split: ; preds = %.noexc124, %.noexc128
  %.sink = phi ptr [ %i.ou, %.noexc128 ], [ %i.ke, %.noexc124 ]
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !492
  br label %_ZN5osgeo4projL19insertIntoHierarchyINS0_16GTiffGenericGridENS0_16GenericShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit

_ZN5osgeo4projL19insertIntoHierarchyINS0_16GTiffGenericGridENS0_16GenericShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit: ; preds = %_ZN5osgeo4projL19insertIntoHierarchyINS0_16GTiffGenericGridENS0_16GenericShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit.sink.split, %bb.ao, %bb.bg
  %.pr = load ptr, ptr %10, align 8, !tbaa !506   ; 3 uses
  %.not.i131 = icmp eq ptr %.pr, null
  br i1 %.not.i131, label %.thread376, label %_ZNKSt14default_deleteIN5osgeo4proj16GTiffGenericGridEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj16GTiffGenericGridEEclEPS2_.exit.i: ; preds = %_ZN5osgeo4projL19insertIntoHierarchyINS0_16GTiffGenericGridENS0_16GenericShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit
  call void @_ZN5osgeo4proj16GTiffGenericGridD2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(200) %.pr) #31
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 200) #32
  br label %.thread376

.thread376:                                       ; preds = %_ZNKSt14default_deleteIN5osgeo4proj16GTiffGenericGridEEclEPS2_.exit.i, %_ZN5osgeo4projL19insertIntoHierarchyINS0_16GTiffGenericGridENS0_16GenericShiftGridEEEvP6pj_ctxOSt10unique_ptrIT_St14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_RSt6vectorIS6_IT0_S8_ISL_EESaISN_EERSt3mapISH_PS7_St4lessISH_ESaISt4pairISI_SS_EEE.exit, %bb.bh, %bb.ar, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt4

_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i.jt1: ; preds = %bb.l
  store ptr null, ptr %0, align 8, !tbaa !511
  %i.ov = load ptr, ptr %i.bo, align 8, !tbaa !20
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8
  call void %i.ox(ptr noundef nonnull align 8 dereferenceable(340) %i.bo) #31, !inline_history !259
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt1

_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i.jt4: ; preds = %bb.m
  %i.oy = load ptr, ptr %i.bo, align 8, !tbaa !20
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8
  call void %i.pa(ptr noundef nonnull align 8 dereferenceable(340) %i.bo) #31, !inline_history !259
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt4

_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt1: ; preds = %.thread, %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.loopexit206

_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt4: ; preds = %.thread376, %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i.jt4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.pb = add nuw nsw i32 %.057, 1
  br label %bb.f, !llvm.loop !546

.thread385:                                       ; preds = %bb.z, %bb.r
  %.pn65.pn.ph = phi { ptr, i32 } [ %i.df, %bb.r ], [ %i.fq, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i134

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %.pn65 = phi { ptr, i32 } [ %.pn61.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i ], [ %i.mf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit203, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp204, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN5osgeo4proj16GTiffGenericGridESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit135

_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i134: ; preds = %.loopexit388, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %.thread385
  %.pn70383 = phi { ptr, i32 } [ %.pn65.pn.ph, %.thread385 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %lpad.loopexit389, %.loopexit388 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.pc = load ptr, ptr %i.bo, align 8, !tbaa !20
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(340) %i.bo) #31, !inline_history !259
  br label %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit135

_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit135: ; preds = %bb.bk, %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i134, %bb.i
  %.pn70.pn = phi { ptr, i32 } [ %i.bs, %bb.i ], [ %.pn65, %bb.bk ], [ %.pn70383, %_ZNKSt14default_deleteIN5osgeo4proj9GTiffGridEEclEPS2_.exit.i134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %_ZNSt10unique_ptrIN5osgeo4proj24GTiffGenericGridShiftSetESt14default_deleteIS2_EED2Ev.exit139

.loopexit206:                                     ; preds = %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt1, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.thread
  %.sroa.0180.0 = phi ptr [ null, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.thread ], [ %i.c, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit.jt1 ] ; 2 uses
  %i.pf = load ptr, ptr %i.aq, align 8, !tbaa !215
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.pf)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %.loopexit206
  %i.pg = landingpad { ptr, i32 }
          catch ptr null
  %i.ph = extractvalue { ptr, i32 } %i.pg, 0
  call void @__clang_call_terminate(ptr %i.ph) #33
  unreachable

bb.bm:                                            ; preds = %.loopexit206
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %.not.i136 = icmp eq ptr %.sroa.0180.0, null
  br i1 %.not.i136, label %_ZNSt10unique_ptrIN5osgeo4proj24GTiffGenericGridShiftSetESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj24GTiffGenericGridShiftSetEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj24GTiffGenericGridShiftSetEEclEPS2_.exit.i: ; preds = %.thread199, %bb.bm
  %.sroa.0180.1202 = phi ptr [ %i.c, %.thread199 ], [ %.sroa.0180.0, %bb.bm ] ; 2 uses
  %i.pi = load ptr, ptr %.sroa.0180.1202, align 8, !tbaa !20
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8
  call void %i.pk(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0180.1202) #31, !inline_history !547
  br label %_ZNSt10unique_ptrIN5osgeo4proj24GTiffGenericGridShiftSetESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj24GTiffGenericGridShiftSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.bm, %_ZNKSt14default_deleteIN5osgeo4proj24GTiffGenericGridShiftSetEEclEPS2_.exit.i
  ret void

_ZNSt10unique_ptrIN5osgeo4proj24GTiffGenericGridShiftSetESt14default_deleteIS2_EED2Ev.exit139: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit135, %bb.d
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %_ZNSt10unique_ptrIN5osgeo4proj9GTiffGridESt14default_deleteIS2_EED2Ev.exit135 ], [ %i.ao, %bb.d ]
  %i.pl = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8
  call void %i.pn(ptr noundef nonnull align 8 dereferenceable(104) %i.c) #31, !inline_history !547
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIN5osgeo4proj24GTiffGenericGridShiftSetESt14default_deleteIS2_EED2Ev.exit139, %.body
  %.pn70.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn, %_ZNSt10unique_ptrIN5osgeo4proj24GTiffGenericGridShiftSetESt14default_deleteIS2_EED2Ev.exit139 ], [ %i.l, %.body ]
  resume { ptr, i32 } %.pn70.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj16GTiffGenericGrid12metadataItemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !258  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
end_hunk_3
begin_hunk_4_@_ZNK5osgeo4proj16GenericShiftGrid8valuesAtEiiiiiPKiPfRb:bb.a
  %.not46 = icmp sgt i32 %5, 0
  %or.cond = and i1 %i.d, %.not46
  br i1 %or.cond, label %.preheader41.us.us.preheader, label %.loopexit

.preheader41.us.us.preheader:                     ; preds = %.preheader41.lr.ph
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.preheader41.us.us

.preheader41.us.us:                               ; preds = %.preheader41.us.us.preheader, %._crit_edge51.split.us.us.us
  %.02755.us.us = phi i32 [ %i.n, %._crit_edge51.split.us.us.us ], [ %2, %.preheader41.us.us.preheader ] ; 2 uses
  %.03154.us.us = phi ptr [ %i.k, %._crit_edge51.split.us.us.us ], [ %7, %.preheader41.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader41.us.us
  %.02550.us.us.us = phi i32 [ %1, %.preheader41.us.us ], [ %i.l, %._crit_edge.us.us.us ] ; 2 uses
  %.13249.us.us.us = phi ptr [ %.03154.us.us, %.preheader41.us.us ], [ %i.k, %._crit_edge.us.us.us ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %.23347.us.us.us = phi ptr [ %i.k, %bb.c ], [ %.13249.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !98
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %.02550.us.us.us, i32 noundef %.02755.us.us, i32 noundef %i.f, ptr noundef nonnull align 4 dereferenceable(4) %.23347.us.us.us)
  br i1 %i.j, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.23347.us.us.us, i64 4 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.b, !llvm.loop !548

._crit_edge.us.us.us:                             ; preds = %bb.c
  %i.l = add nsw i32 %.02550.us.us.us, 1          ; 2 uses
  %i.m = icmp slt i32 %i.l, %i.c
  br i1 %i.m, label %.preheader.us.us.us, label %._crit_edge51.split.us.us.us, !llvm.loop !549

._crit_edge51.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.n = add nsw i32 %.02755.us.us, 1             ; 2 uses
  %.not66 = icmp slt i32 %i.n, %i.a
  br i1 %.not66, label %.preheader41.us.us, label %.loopexit, !llvm.loop !550

.loopexit:                                        ; preds = %._crit_edge51.split.us.us.us, %bb.b, %.preheader41.lr.ph, %bb.a
  %i.o = phi i1 [ true, %.preheader41.lr.ph ], [ true, %bb.a ], [ false, %bb.b ], [ true, %._crit_edge51.split.us.us.us ]
  ret i1 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5osgeo4proj19GenericShiftGridSetC2Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5osgeo4proj19GenericShiftGridSetE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !29
  store i8 0, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !29
  store i8 0, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5osgeo4proj19GenericShiftGridSetD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN5osgeo4proj19GenericShiftGridSetD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj19GenericShiftGridSet4openEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.245") align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 11 uses
  %i.b = alloca [4 x i8], align 1                 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::unique_ptr.232", align 8 ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = icmp eq i64 %i.d, 4
  %.pre = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread62

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.f = load i32, ptr %.pre, align 1
  %i.g = icmp ne i32 %i.f, 1819047278
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread62

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.j = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 11 uses
  invoke void @_ZN5osgeo4proj19GenericShiftGridSetC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.j)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store ptr %i.j, ptr %0, align 8, !tbaa !551
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !29
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull @.str.49, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.q = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #34
          to label %bb.c unwind label %bb.j       ; 17 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !22
  store i32 1819047278, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 4, ptr %i.t, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i8 0, ptr %i.u, align 4, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 3, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store i32 3, ptr %i.w, align 4, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i8 1, ptr %i.x, align 8, !tbaa !36
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store <2 x double> <double f0xC00921FB54442D18, double f0xBFF921FB54442D18>, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store <2 x double> <double f0x400921FB54442D18, double f0x3FF921FB54442D18>, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store <2 x double> <double f0x400921FB54442D18, double f0x3FF921FB54442D18>, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store <2 x double> <double f0x3FD45F306DC9C883, double f0x3FE45F306DC9C883>, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5osgeo4proj20NullGenericShiftGridE, i64 16), ptr %i.q, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !487 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !492
  %.not.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = ptrtoint ptr %i.q to i64
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !488
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !487
  br label %_ZNSt10unique_ptrIN5osgeo4proj20NullGenericShiftGridESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !484 ; 10 uses
  %i.ag = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
          to label %.noexc54 unwind label %_ZNSt10unique_ptrIN5osgeo4proj20NullGenericShiftGridESt14default_deleteIS2_EED2Ev.exit33

.noexc54:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i53 = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i53)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #34
          to label %.noexc55 unwind label %_ZNSt10unique_ptrIN5osgeo4proj20NullGenericShiftGridESt14default_deleteIS2_EED2Ev.exit33 ; 10 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  %i.as = ptrtoint ptr %i.q to i64
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !488
  %.not10.i.i.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc55
  %7 = add i64 %i.ag, -8
  %8 = sub i64 %7, %i.ah                          ; 2 uses
  %i.at = lshr i64 %8, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader85, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.av = add i64 %i.ag, -8
  %i.aw = sub i64 %i.av, %i.ah
  %i.ax = and i64 %i.aw, -8
  %i.ay = add i64 %i.ax, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.ay
  %scevgep81 = getelementptr i8, ptr %i.af, i64 %i.ay
  %bound0 = icmp ult ptr %i.aq, %scevgep81
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader85, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3                       ; 2 uses
  %i.ba = getelementptr i8, ptr %i.aq, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %i.af, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bc ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.af, i64 %i.bc ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.bd = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep82, align 8, !tbaa !488, !alias.scope !558, !noalias !553
  %wide.load83 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !488, !alias.scope !558, !noalias !553
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !488, !alias.scope !561, !noalias !558
  store <2 x i64> %wide.load83, ptr %i.be, align 8, !tbaa !488, !alias.scope !561, !noalias !558
  %i.bf = getelementptr i8, ptr %next.gep82, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep82, align 8, !tbaa !488, !alias.scope !558, !noalias !553
  store <2 x ptr> splat (ptr null), ptr %i.bf, align 8, !tbaa !488, !alias.scope !558, !noalias !553
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader85

.lr.ph.i.i.i.i.preheader85:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader85, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader85 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader85 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.bh = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !488, !alias.scope !556, !noalias !553
  store i64 %i.bh, ptr %.012.i.i.i.i, align 8, !tbaa !488, !alias.scope !553, !noalias !556
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !488, !alias.scope !556, !noalias !553
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, %i.aa
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !564

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc55
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aq, %.noexc55 ], [ %i.ba, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i, label %.noexc, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ai) #32
  br label %.noexc

.noexc:                                           ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !484
  store ptr %i.bk, ptr %i.z, align 8, !tbaa !487
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bl, ptr %i.ab, align 8, !tbaa !492
  br label %_ZNSt10unique_ptrIN5osgeo4proj20NullGenericShiftGridESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 96) #32
  br label %bb.ah

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.b
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj20NullGenericShiftGridESt14default_deleteIS2_EED2Ev.exit33: ; preds = %bb.f, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(144) %i.q) #31, !inline_history !565
  br label %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.j, %_ZNSt10unique_ptrIN5osgeo4proj20NullGenericShiftGridESt14default_deleteIS2_EED2Ev.exit33, %bb.i
  %.pn23.pn = phi { ptr, i32 } [ %i.bn, %bb.i ], [ %i.bp, %_ZNSt10unique_ptrIN5osgeo4proj20NullGenericShiftGridESt14default_deleteIS2_EED2Ev.exit33 ], [ %i.bo, %bb.j ]
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(96) %i.j) #31, !inline_history !566
  br label %bb.ah

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread62: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5osgeo4proj11FileManager18open_resource_fileEP6pj_ctxPKcPcm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef %1, ptr noundef %.pre, ptr noundef null, i64 noundef 0)
  %i.bw = load ptr, ptr %3, align 8, !tbaa !79    ; 3 uses
  %.not68 = icmp eq ptr %i.bw, null
  br i1 %.not68, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread62
  store ptr null, ptr %0, align 8, !tbaa !567
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit52

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef i64 %i.bz(ptr noundef nonnull align 8 dereferenceable(73) %i.bw, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq i64 %i.ca, 4
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %0, align 8, !tbaa !567
  br label %bb.ag

bb.n:                                             ; preds = %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread65, %bb.o, %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.o:                                             ; preds = %bb.l
  %i.cc = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(73) %i.cc, i64 noundef 0, i32 noundef 0)
          to label %bb.p unwind label %bb.n       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ch = load i8, ptr %i.b, align 1, !tbaa !31
  switch i8 %i.ch, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread65 [
    i8 73, label %bb.q
    i8 77, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !31
  %i.ck = icmp eq i8 %i.cj, 73
  br i1 %i.ck, label %bb.s, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread65

bb.r:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !31
  %i.cn = icmp eq i8 %i.cm, 77
  br i1 %i.cn, label %bb.s, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread65

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !31  ; 3 uses
  %i.cq = icmp eq i8 %i.cp, 42
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !31  ; 4 uses
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread65

bb.u:                                             ; preds = %bb.s
  %i.cu = icmp eq i8 %i.cs, 42
  %i.cv = icmp eq i8 %i.cp, 0                     ; 2 uses
  %or.cond.i = and i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_ZN5osgeo4projL6IsTIFFEmPKh.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = icmp eq i8 %i.cp, 43
  %i.cx = icmp eq i8 %i.cs, 0
  %or.cond15.i = and i1 %i.cw, %i.cx
  %i.cy = icmp eq i8 %i.cs, 43
  %spec.select.i = and i1 %i.cv, %i.cy
  %or.cond = or i1 %or.cond15.i, %spec.select.i
end_hunk_4
begin_hunk_5_@_ZN5osgeo4proj20pj_generic_grid_initEP8PJconstsPKc:._crit_edge.i.i
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.k
  %.pn = phi { ptr, i32 } [ %i.an, %bb.k ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.ao, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ag

bb.m:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73
  %i.at = phi ptr [ null, %.lr.ph ], [ %i.dj, %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 17 uses
  %i.au = phi ptr [ null, %.lr.ph ], [ %i.dk, %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 7 uses
  %i.av = phi ptr [ null, %.lr.ph ], [ %i.dl, %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 6 uses
  %.sroa.089.0119 = phi ptr [ %i.ag, %.lr.ph ], [ %i.dm, %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 2 uses
  %i.aw = load ptr, ptr %.sroa.089.0119, align 8, !tbaa !26 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !31
  %i.ay = icmp eq i8 %i.ax, 64                    ; 2 uses
  %spec.select.idx = zext i1 %i.ay to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.aw, i64 %spec.select.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.az = load ptr, ptr %1, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store ptr %i.aj, ptr %8, align 8, !tbaa !22
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !30
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i56, label %._crit_edge.i.i55

.noexc.i56:                                       ; preds = %bb.m
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc58 unwind label %bb.v   ; 2 uses

.noexc58:                                         ; preds = %.noexc.i56
  store ptr %i.bc, ptr %8, align 8, !tbaa !26
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.bd, ptr %i.aj, align 8, !tbaa !31
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %.noexc58, %bb.m
  %i.be = phi ptr [ %i.bc, %.noexc58 ], [ %i.aj, %bb.m ] ; 2 uses
  switch i64 %i.ba, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i55
  %i.bf = load i8, ptr %spec.select, align 1, !tbaa !31
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !31
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 1 %spec.select, i64 %i.ba, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i55
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  store i64 %i.bg, ptr %i.ak, align 8, !tbaa !29
  %i.bh = load ptr, ptr %8, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZN5osgeo4proj19GenericShiftGridSet4openEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.245") align 8 %7, ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.aj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.q
  %i.bl = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.bn = load ptr, ptr %7, align 8               ; 4 uses
  %.not99 = icmp eq ptr %i.bn, null
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  br i1 %.not99, label %bb.r, label %bb.y

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.bp = load ptr, ptr %1, align 8, !tbaa !571   ; 2 uses
  br i1 %i.ay, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = invoke i32 @proj_context_errno(ptr noundef %i.bp)
          to label %bb.t unwind label %.thread.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq i32 %i.bq, 4099
  br i1 %.not, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = load ptr, ptr %1, align 8, !tbaa !571
  invoke void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.br, i32 noundef 1029)
          to label %bb.ad unwind label %.thread.loopexit.split-lp

bb.v:                                             ; preds = %.noexc.i56
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.w:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.aj
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.w
  %i.bw = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.v
  %.pn35 = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.bt, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit

.thread.loopexit:                                 ; preds = %bb.x
  %lpad.loopexit100 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit

.thread.loopexit.split-lp:                        ; preds = %bb.s, %bb.u
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp: ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp, %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.loopexit ], [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp ]
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(96) %i.bn) #31, !inline_history !566
  br label %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit

bb.x:                                             ; preds = %bb.r
  invoke void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.bp, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 unwind label %.thread.loopexit

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %.not.i69 = icmp eq ptr %i.av, %i.au
  br i1 %.not.i69, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.bo, ptr %i.av, align 8, !tbaa !551
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.al, align 8, !tbaa !594
  br label %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73

bb.aa:                                            ; preds = %bb.y
  %i.cc = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.cd = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 4 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.ab, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
          to label %.noexc86 unwind label %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp

.noexc86:                                         ; preds = %bb.ab
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.aa
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #34
          to label %.noexc87 unwind label %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.loopexit ; 12 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  store i64 %i.bo, ptr %i.cn, align 8, !tbaa !551
  store ptr null, ptr %7, align 8, !tbaa !551
  %.not10.i.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc87
  %9 = add i64 %i.cc, -8
  %10 = sub i64 %9, %i.cd                         ; 2 uses
  %i.co = lshr i64 %10, 3
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader225, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cm, i64 8
  %i.cq = add i64 %i.cc, -8
  %i.cr = sub i64 %i.cq, %i.cd
  %i.cs = and i64 %i.cr, -8                       ; 2 uses
  %scevgep219 = getelementptr i8, ptr %scevgep, i64 %i.cs
  %scevgep220 = getelementptr i8, ptr %i.at, i64 8
  %scevgep221 = getelementptr i8, ptr %scevgep220, i64 %i.cs
  %bound0 = icmp ult ptr %i.cm, %scevgep221
  %bound1 = icmp ult ptr %i.at, %scevgep219
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader225, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cp, 4611686018427387900     ; 3 uses
  %i.ct = shl i64 %n.vec, 3                       ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cm, i64 %i.ct  ; 2 uses
  %i.cv = getelementptr i8, ptr %i.at, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cm, i64 %i.cw ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.at, i64 %i.cw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.cx = getelementptr i8, ptr %next.gep222, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep222, align 8, !tbaa !551, !alias.scope !602, !noalias !597
  %wide.load223 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !551, !alias.scope !602, !noalias !597
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !551, !alias.scope !605, !noalias !602
  store <2 x i64> %wide.load223, ptr %i.cy, align 8, !tbaa !551, !alias.scope !605, !noalias !602
  %i.cz = getelementptr i8, ptr %next.gep222, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep222, align 8, !tbaa !551, !alias.scope !602, !noalias !597
  store <2 x ptr> splat (ptr null), ptr %i.cz, align 8, !tbaa !551, !alias.scope !602, !noalias !597
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader225

.lr.ph.i.i.i.i.preheader225:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.i.preheader ], [ %i.cu, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader225, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader225 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader225 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.db = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !551, !alias.scope !600, !noalias !597
  store i64 %i.db, ptr %.012.i.i.i.i, align 8, !tbaa !551, !alias.scope !597, !noalias !600
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !551, !alias.scope !600, !noalias !597
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, %i.au
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !608

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc87
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cm, %.noexc87 ], [ %i.cu, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i = icmp eq ptr %i.at, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ce) #32
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.ac
  store ptr %i.cm, ptr %6, align 8, !tbaa !609
  store ptr %i.de, ptr %i.al, align 8, !tbaa !594
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck ; 3 uses
  store ptr %i.df, ptr %i.am, align 8, !tbaa !610
  %.pr = load ptr, ptr %7, align 8, !tbaa !551    ; 3 uses
  %.not.i71 = icmp eq ptr %.pr, null
  br i1 %.not.i71, label %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73, label %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i72

_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i72: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit
  %i.dg = load ptr, ptr %.pr, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(96) %.pr) #31, !inline_history !566
  br label %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73

_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73: ; preds = %bb.x, %bb.z, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i72
  %i.dj = phi ptr [ %i.at, %bb.x ], [ %i.at, %bb.z ], [ %i.cm, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit ], [ %i.cm, %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i72 ] ; 2 uses
  %i.dk = phi ptr [ %i.au, %bb.x ], [ %i.au, %bb.z ], [ %i.df, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit ], [ %i.df, %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i72 ] ; 2 uses
  %i.dl = phi ptr [ %i.av, %bb.x ], [ %i.cb, %bb.z ], [ %i.de, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit ], [ %i.de, %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i72 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.089.0119, i64 32 ; 2 uses
  %.not98 = icmp eq ptr %i.dm, %i.ai
  br i1 %.not98, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.thread, label %bb.m

_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn37 = phi { ptr, i32 } [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %lpad.phi, %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i ], [ %lpad.loopexit100, %.thread.loopexit ], [ %lpad.loopexit.split-lp101, %.thread.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  br label %bb.ag

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.thread: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dn = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dk, %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ]
  %i.do = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dl, %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ]
  %i.dp = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dj, %_ZNSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ]
  store ptr %i.dp, ptr %0, align 8, !tbaa !609
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !594
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dn, ptr %i.dr, align 8, !tbaa !610
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit

bb.ad:                                            ; preds = %bb.u, %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ds = ptrtoint ptr %i.au to i64
  %.not4.i.i.i = icmp eq ptr %i.at, %i.av
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dx, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.at, %bb.ad ] ; 2 uses
  %i.dt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !551 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(96) %i.dt) #31, !inline_history !611
  br label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj19GenericShiftGridSetEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dx, %i.av
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !612

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i, %bb.ad
  %.not.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.dy = ptrtoint ptr %i.at to i64
  %i.dz = sub i64 %i.ds, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.dz) #32
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.ea = load ptr, ptr %4, align 8, !tbaa !613   ; 3 uses
  %i.eb = load ptr, ptr %i.ah, align 8, !tbaa !614 ; 2 uses
  %.not4.i.i.i74 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not4.i.i.i74, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i76 = phi ptr [ %i.eh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ea, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 3 uses
  %i.ec = load ptr, ptr %.05.i.i.i76, align 8, !tbaa !26 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i76, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i75
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !31
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.05.i.i.i76, i64 32 ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.eh, %i.eb
  br i1 %.not.i.i.i77, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i75, !llvm.loop !615

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i78 = load ptr, ptr %4, align 8, !tbaa !613
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.ei = phi ptr [ %.pr.i78, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ea, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i79 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i1.i79, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !616
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.en) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.af
end_hunk_5
begin_hunk_6_@_ZN5osgeo4proj13pj_hgrid_initEP8PJconstsPKc:._crit_edge.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i ], [ %i.ap, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !618
  br label %bb.ag

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i, %.lr.ph.i
  %i.au = phi ptr [ null, %.lr.ph.i ], [ %i.di, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i ] ; 13 uses
  %i.av = phi ptr [ null, %.lr.ph.i ], [ %i.dj, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i ] ; 7 uses
  %i.aw = phi ptr [ null, %.lr.ph.i ], [ %i.dk, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i ] ; 5 uses
  %.sroa.065.094.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.dl, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i ] ; 2 uses
  %i.ax = load ptr, ptr %.sroa.065.094.i, align 8, !tbaa !26, !noalias !618 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !31, !noalias !618
  %i.az = icmp eq i8 %i.ay, 64                    ; 2 uses
  %spec.select.idx.i = zext i1 %i.az to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select.idx.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !618
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31, !noalias !618
  store ptr %i.ak, ptr %7, align 8, !tbaa !22, !noalias !618
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #31, !noalias !618 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !618
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !30, !noalias !618
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i38.i, label %._crit_edge.i.i37.i

.noexc.i38.i:                                     ; preds = %bb.m
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc40.i unwind label %bb.v, !noalias !618 ; 2 uses

.noexc40.i:                                       ; preds = %.noexc.i38.i
  store ptr %i.bc, ptr %7, align 8, !tbaa !26, !noalias !618
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !618
  store i64 %i.bd, ptr %i.ak, align 8, !tbaa !31, !noalias !618
  br label %._crit_edge.i.i37.i

._crit_edge.i.i37.i:                              ; preds = %.noexc40.i, %bb.m
  %i.be = phi ptr [ %i.bc, %.noexc40.i ], [ %i.ak, %bb.m ] ; 2 uses
  switch i64 %i.ba, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i37.i
  %i.bf = load i8, ptr %spec.select.i, align 1, !tbaa !31, !noalias !618
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !31, !noalias !618
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i37.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 1 %spec.select.i, i64 %i.ba, i1 false), !noalias !618
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i37.i
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !30, !noalias !618 ; 2 uses
  store i64 %i.bg, ptr %i.al, align 8, !tbaa !29, !noalias !618
  %i.bh = load ptr, ptr %7, align 8, !tbaa !26, !noalias !618
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !31, !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !618
  invoke void @_ZN5osgeo4proj22HorizontalShiftGridSet4openEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.183") align 8 %6, ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.q unwind label %bb.w, !noalias !618

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %7, align 8, !tbaa !26, !noalias !618 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ak
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i: ; preds = %bb.q
  %i.bl = load i64, ptr %i.ak, align 8, !tbaa !31, !noalias !618
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #32, !noalias !618
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !618
  %i.bn = load ptr, ptr %6, align 8, !noalias !618 ; 4 uses
  %.not74.i = icmp eq ptr %i.bn, null
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  br i1 %.not74.i, label %bb.r, label %bb.y

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i
  br i1 %i.az, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = invoke i32 @proj_context_errno(ptr noundef %i.r)
          to label %bb.t unwind label %.thread.loopexit.split-lp.i, !noalias !618

bb.t:                                             ; preds = %bb.s
  %.not.i = icmp eq i32 %i.bp, 4099
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit50.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.r, i32 noundef 1029)
          to label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit50.i unwind label %.thread.loopexit.split-lp.i, !noalias !618

bb.v:                                             ; preds = %.noexc.i38.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

bb.w:                                             ; preds = %bb.p
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %7, align 8, !tbaa !26, !noalias !618 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ak
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i: ; preds = %bb.w
  %i.bu = load i64, ptr %i.ak, align 8, !tbaa !31, !noalias !618
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #32, !noalias !618
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i, %bb.v
  %.pn27.i = phi { ptr, i32 } [ %i.bq, %bb.v ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i ], [ %i.br, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31, !noalias !618
  br label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit.i

.thread.loopexit.i:                               ; preds = %bb.x
  %lpad.loopexit75.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit.i

.thread.loopexit.split-lp.i:                      ; preds = %bb.u, %bb.s
  %lpad.loopexit.split-lp76.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit.i

_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.loopexit.i: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp.i: ; preds = %bb.ab
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp.i, %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.loopexit.i ], [ %lpad.loopexit.split-lp.i, %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp.i ]
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !20, !noalias !618
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !618
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(96) %i.bn) #31, !noalias !618, !inline_history !621
  br label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit50.i: ; preds = %bb.u, %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !618
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !618
  %i.bz = ptrtoint ptr %i.av to i64
  br label %bb.ad

bb.x:                                             ; preds = %bb.r
  invoke void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.r, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i unwind label %.thread.loopexit.i, !noalias !618

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i
  %.not.i51.i = icmp eq ptr %i.aw, %i.av
  br i1 %.not.i51.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.bo, ptr %i.aw, align 8, !tbaa !447, !noalias !618
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.am, align 8, !tbaa !622, !noalias !618
  br label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i

bb.aa:                                            ; preds = %bb.y
  %i.cb = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.cc = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.ab, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
          to label %.noexc62.i unwind label %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp.i, !noalias !618

.noexc62.i:                                       ; preds = %bb.ab
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #34
          to label %.noexc63.i unwind label %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.loopexit.i, !noalias !618 ; 12 uses

.noexc63.i:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  store i64 %i.bo, ptr %i.cm, align 8, !tbaa !447, !noalias !618
  store ptr null, ptr %6, align 8, !tbaa !447, !noalias !618
  %.not10.i.i.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc63.i
  %9 = add i64 %i.cb, -8
  %10 = sub i64 %9, %i.cc                         ; 2 uses
  %i.cn = lshr i64 %10, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader173, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cl, i64 8
  %i.cp = add i64 %i.cb, -8
  %i.cq = sub i64 %i.cp, %i.cc
  %i.cr = and i64 %i.cq, -8                       ; 2 uses
  %scevgep167 = getelementptr i8, ptr %scevgep, i64 %i.cr
  %scevgep168 = getelementptr i8, ptr %i.au, i64 8
  %scevgep169 = getelementptr i8, ptr %scevgep168, i64 %i.cr
  %bound0 = icmp ult ptr %i.cl, %scevgep169
  %bound1 = icmp ult ptr %i.au, %scevgep167
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader173, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, 4611686018427387900     ; 3 uses
  %i.cs = shl i64 %n.vec, 3                       ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cl, i64 %i.cs  ; 2 uses
  %i.cu = getelementptr i8, ptr %i.au, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.cv ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.au, i64 %i.cv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.cw = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep170, align 8, !tbaa !447, !alias.scope !630, !noalias !633
  %wide.load171 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !447, !alias.scope !630, !noalias !633
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !447, !alias.scope !634, !noalias !636
  store <2 x i64> %wide.load171, ptr %i.cx, align 8, !tbaa !447, !alias.scope !634, !noalias !636
  %i.cy = getelementptr i8, ptr %next.gep170, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep170, align 8, !tbaa !447, !alias.scope !630, !noalias !633
  store <2 x ptr> splat (ptr null), ptr %i.cy, align 8, !tbaa !447, !alias.scope !630, !noalias !633
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !637

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader173

.lr.ph.i.i.i.i.i.preheader173:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader173, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader173 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader173 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.da = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !447, !alias.scope !628, !noalias !633
  store i64 %i.da, ptr %.012.i.i.i.i.i, align 8, !tbaa !447, !alias.scope !625, !noalias !638
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !447, !alias.scope !628, !noalias !633
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.db, %i.av
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !639

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc63.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cl, %.noexc63.i ], [ %i.ct, %middle.block ], [ %i.dc, %.lr.ph.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.cd) #32, !noalias !618
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.cl, ptr %3, align 8, !tbaa !640, !noalias !618
  store ptr %i.dd, ptr %i.am, align 8, !tbaa !622, !noalias !618
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj ; 3 uses
  store ptr %i.de, ptr %i.an, align 8, !tbaa !641, !noalias !618
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !447, !noalias !618 ; 3 uses
  %.not.i53.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i53.i, label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i, label %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i54.i

_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i54.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.i
  %i.df = load ptr, ptr %.pr.i, align 8, !tbaa !20, !noalias !618
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !618
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(96) %.pr.i) #31, !noalias !618, !inline_history !621
  br label %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i

_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i54.i, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.i, %bb.z, %bb.x
  %i.di = phi ptr [ %i.au, %bb.x ], [ %i.au, %bb.z ], [ %i.cl, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.i ], [ %i.cl, %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i54.i ] ; 2 uses
  %i.dj = phi ptr [ %i.av, %bb.x ], [ %i.av, %bb.z ], [ %i.de, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.i ], [ %i.de, %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i54.i ] ; 2 uses
  %i.dk = phi ptr [ %i.aw, %bb.x ], [ %i.ca, %bb.z ], [ %i.dd, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.i ], [ %i.dd, %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i54.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !618
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.065.094.i, i64 32 ; 2 uses
  %.not73.i = icmp eq ptr %i.dl, %i.aj
  br i1 %.not73.i, label %.critedge33.i, label %bb.m

_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.i, %.thread.loopexit.split-lp.i, %.thread.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i
  %.pn29.i = phi { ptr, i32 } [ %.pn27.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i ], [ %lpad.phi.i, %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.i ], [ %lpad.loopexit75.i, %.thread.loopexit.i ], [ %lpad.loopexit.split-lp76.i, %.thread.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !618
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31, !noalias !618
  br label %bb.ag

.critedge33.i:                                    ; preds = %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dm = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dj, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i ]
  %i.dn = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dk, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i ]
  %i.do = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.di, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit55.i ]
  store ptr %i.do, ptr %0, align 8, !tbaa !640, !alias.scope !618
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !622, !alias.scope !618
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dm, ptr %i.dq, align 8, !tbaa !641, !alias.scope !618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !618
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge33.i, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit50.i
  %i.dr = phi i64 [ %i.bz, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit50.i ], [ 0, %.critedge33.i ]
  %i.ds = phi ptr [ %i.aw, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit50.i ], [ null, %.critedge33.i ] ; 2 uses
  %.pr.i60.i = phi ptr [ %i.au, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit50.i ], [ null, %.critedge33.i ] ; 5 uses
  %i.dt = load ptr, ptr %4, align 8, !tbaa !613, !noalias !618 ; 3 uses
  %i.du = load ptr, ptr %i.ai, align 8, !tbaa !614, !noalias !618 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ea, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.dt, %bb.ad ] ; 3 uses
  %i.dv = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !26, !noalias !618 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !31, !noalias !618
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #32, !noalias !618
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ea, %i.du
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !615

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !613, !noalias !618
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.ad
  %i.eb = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dt, %bb.ad ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !616, !noalias !618
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #32, !noalias !618
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.ae, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !618
  %.not4.i.i.i56.i = icmp eq ptr %.pr.i60.i, %i.ds
  br i1 %.not4.i.i.i56.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i57.i

.lr.ph.i.i.i57.i:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i58.i = phi ptr [ %i.el, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %.pr.i60.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 2 uses
  %i.eh = load ptr, ptr %.05.i.i.i58.i, align 8, !tbaa !447, !noalias !618 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i57.i
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !20, !noalias !618
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !618
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(96) %i.eh) #31, !noalias !618, !inline_history !642
  br label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj22HorizontalShiftGridSetEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i57.i
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i58.i, i64 8 ; 2 uses
  %.not.i.i.i59.i = icmp eq ptr %i.el, %i.ds
  br i1 %.not.i.i.i59.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i57.i, !llvm.loop !643

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %.not.i.i1.i61.i = icmp eq ptr %.pr.i60.i, null
  br i1 %.not.i.i1.i61.i, label %_ZN5osgeo4projL17getListOfGridSetsEP6pj_ctxPKc.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.em = ptrtoint ptr %.pr.i60.i to i64
  %i.en = sub i64 %i.dr, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i60.i, i64 noundef %i.en) #32, !noalias !618
  br label %_ZN5osgeo4projL17getListOfGridSetsEP6pj_ctxPKc.exit

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i
  %.pn29.pn.i = phi { ptr, i32 } [ %.pn29.i, %_ZNSt10unique_ptrIN5osgeo4proj22HorizontalShiftGridSetESt14default_deleteIS2_EED2Ev.exit.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i ]
end_hunk_6
begin_hunk_7_@_ZN5osgeo4proj13pj_vgrid_initEP8PJconstsPKc:._crit_edge.i.i
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.k
  %.pn = phi { ptr, i32 } [ %i.an, %bb.k ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.ao, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ag

bb.m:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73
  %i.at = phi ptr [ null, %.lr.ph ], [ %i.dj, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 17 uses
  %i.au = phi ptr [ null, %.lr.ph ], [ %i.dk, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 7 uses
  %i.av = phi ptr [ null, %.lr.ph ], [ %i.dl, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 6 uses
  %.sroa.089.0119 = phi ptr [ %i.ag, %.lr.ph ], [ %i.dm, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 2 uses
  %i.aw = load ptr, ptr %.sroa.089.0119, align 8, !tbaa !26 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !31
  %i.ay = icmp eq i8 %i.ax, 64                    ; 2 uses
  %spec.select.idx = zext i1 %i.ay to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.aw, i64 %spec.select.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.az = load ptr, ptr %1, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store ptr %i.aj, ptr %8, align 8, !tbaa !22
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !30
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i56, label %._crit_edge.i.i55

.noexc.i56:                                       ; preds = %bb.m
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc58 unwind label %bb.v   ; 2 uses

.noexc58:                                         ; preds = %.noexc.i56
  store ptr %i.bc, ptr %8, align 8, !tbaa !26
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.bd, ptr %i.aj, align 8, !tbaa !31
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %.noexc58, %bb.m
  %i.be = phi ptr [ %i.bc, %.noexc58 ], [ %i.aj, %bb.m ] ; 2 uses
  switch i64 %i.ba, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i55
  %i.bf = load i8, ptr %spec.select, align 1, !tbaa !31
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !31
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 1 %spec.select, i64 %i.ba, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i55
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  store i64 %i.bg, ptr %i.ak, align 8, !tbaa !29
  %i.bh = load ptr, ptr %8, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZN5osgeo4proj20VerticalShiftGridSet4openEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.107") align 8 %7, ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.aj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.q
  %i.bl = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.bn = load ptr, ptr %7, align 8               ; 4 uses
  %.not99 = icmp eq ptr %i.bn, null
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  br i1 %.not99, label %bb.r, label %bb.y

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.bp = load ptr, ptr %1, align 8, !tbaa !571   ; 2 uses
  br i1 %i.ay, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = invoke i32 @proj_context_errno(ptr noundef %i.bp)
          to label %bb.t unwind label %.thread.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq i32 %i.bq, 4099
  br i1 %.not, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = load ptr, ptr %1, align 8, !tbaa !571
  invoke void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.br, i32 noundef 1029)
          to label %bb.ad unwind label %.thread.loopexit.split-lp

bb.v:                                             ; preds = %.noexc.i56
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.w:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.aj
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.w
  %i.bw = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.v
  %.pn35 = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.bt, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit

.thread.loopexit:                                 ; preds = %bb.x
  %lpad.loopexit100 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit

.thread.loopexit.split-lp:                        ; preds = %bb.s, %bb.u
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp: ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp, %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i.loopexit ], [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp ]
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(96) %i.bn) #31, !inline_history !341
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit

bb.x:                                             ; preds = %bb.r
  invoke void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.bp, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 unwind label %.thread.loopexit

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %.not.i69 = icmp eq ptr %i.av, %i.au
  br i1 %.not.i69, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.bo, ptr %i.av, align 8, !tbaa !326
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %i.cb, ptr %i.al, align 8, !tbaa !648
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73

bb.aa:                                            ; preds = %bb.y
  %i.cc = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.cd = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 4 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.ab, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
          to label %.noexc86 unwind label %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i.loopexit.split-lp

.noexc86:                                         ; preds = %bb.ab
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.aa
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #34
          to label %.noexc87 unwind label %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i.loopexit ; 12 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  store i64 %i.bo, ptr %i.cn, align 8, !tbaa !326
  store ptr null, ptr %7, align 8, !tbaa !326
  %.not10.i.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc87
  %9 = add i64 %i.cc, -8
  %10 = sub i64 %9, %i.cd                         ; 2 uses
  %i.co = lshr i64 %10, 3
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader225, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cm, i64 8
  %i.cq = add i64 %i.cc, -8
  %i.cr = sub i64 %i.cq, %i.cd
  %i.cs = and i64 %i.cr, -8                       ; 2 uses
  %scevgep219 = getelementptr i8, ptr %scevgep, i64 %i.cs
  %scevgep220 = getelementptr i8, ptr %i.at, i64 8
  %scevgep221 = getelementptr i8, ptr %scevgep220, i64 %i.cs
  %bound0 = icmp ult ptr %i.cm, %scevgep221
  %bound1 = icmp ult ptr %i.at, %scevgep219
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader225, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cp, 4611686018427387900     ; 3 uses
  %i.ct = shl i64 %n.vec, 3                       ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cm, i64 %i.ct  ; 2 uses
  %i.cv = getelementptr i8, ptr %i.at, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cm, i64 %i.cw ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.at, i64 %i.cw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.cx = getelementptr i8, ptr %next.gep222, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep222, align 8, !tbaa !326, !alias.scope !656, !noalias !651
  %wide.load223 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !326, !alias.scope !656, !noalias !651
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !326, !alias.scope !659, !noalias !656
  store <2 x i64> %wide.load223, ptr %i.cy, align 8, !tbaa !326, !alias.scope !659, !noalias !656
  %i.cz = getelementptr i8, ptr %next.gep222, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep222, align 8, !tbaa !326, !alias.scope !656, !noalias !651
  store <2 x ptr> splat (ptr null), ptr %i.cz, align 8, !tbaa !326, !alias.scope !656, !noalias !651
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !661

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader225

.lr.ph.i.i.i.i.preheader225:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.i.preheader ], [ %i.cu, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader225, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader225 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader225 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.db = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !326, !alias.scope !654, !noalias !651
  store i64 %i.db, ptr %.012.i.i.i.i, align 8, !tbaa !326, !alias.scope !651, !noalias !654
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !326, !alias.scope !654, !noalias !651
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, %i.au
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !662

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc87
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cm, %.noexc87 ], [ %i.cu, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i = icmp eq ptr %i.at, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ce) #32
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.ac
  store ptr %i.cm, ptr %6, align 8, !tbaa !663
  store ptr %i.de, ptr %i.al, align 8, !tbaa !648
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck ; 3 uses
  store ptr %i.df, ptr %i.am, align 8, !tbaa !664
  %.pr = load ptr, ptr %7, align 8, !tbaa !326    ; 3 uses
  %.not.i71 = icmp eq ptr %.pr, null
  br i1 %.not.i71, label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73, label %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i72

_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i72: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit
  %i.dg = load ptr, ptr %.pr, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(96) %.pr) #31, !inline_history !341
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73

_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73: ; preds = %bb.x, %bb.z, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i72
  %i.dj = phi ptr [ %i.at, %bb.x ], [ %i.at, %bb.z ], [ %i.cm, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit ], [ %i.cm, %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i72 ] ; 2 uses
  %i.dk = phi ptr [ %i.au, %bb.x ], [ %i.au, %bb.z ], [ %i.df, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit ], [ %i.df, %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i72 ] ; 2 uses
  %i.dl = phi ptr [ %i.av, %bb.x ], [ %i.cb, %bb.z ], [ %i.de, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit ], [ %i.de, %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i72 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.089.0119, i64 32 ; 2 uses
  %.not98 = icmp eq ptr %i.dm, %i.ai
  br i1 %.not98, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.thread, label %bb.m

_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn37 = phi { ptr, i32 } [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %lpad.phi, %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i ], [ %lpad.loopexit100, %.thread.loopexit ], [ %lpad.loopexit.split-lp101, %.thread.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  br label %bb.ag

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.thread: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dn = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dk, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ]
  %i.do = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dl, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ]
  %i.dp = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dj, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ]
  store ptr %i.dp, ptr %0, align 8, !tbaa !663
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !648
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dn, ptr %i.dr, align 8, !tbaa !664
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit

bb.ad:                                            ; preds = %bb.u, %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ds = ptrtoint ptr %i.au to i64
  %.not4.i.i.i = icmp eq ptr %i.at, %i.av
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dx, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.at, %bb.ad ] ; 2 uses
  %i.dt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !326 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(96) %i.dt) #31, !inline_history !665
  br label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dx, %i.av
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !666

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EEEvPT_.exit.i.i.i, %bb.ad
  %.not.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.dy = ptrtoint ptr %i.at to i64
  %i.dz = sub i64 %i.ds, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.dz) #32
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.ea = load ptr, ptr %4, align 8, !tbaa !613   ; 3 uses
  %i.eb = load ptr, ptr %i.ah, align 8, !tbaa !614 ; 2 uses
  %.not4.i.i.i74 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not4.i.i.i74, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i76 = phi ptr [ %i.eh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ea, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 3 uses
  %i.ec = load ptr, ptr %.05.i.i.i76, align 8, !tbaa !26 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i76, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i75
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !31
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.05.i.i.i76, i64 32 ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.eh, %i.eb
  br i1 %.not.i.i.i77, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i75, !llvm.loop !615

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i78 = load ptr, ptr %4, align 8, !tbaa !613
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.ei = phi ptr [ %.pr.i78, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ea, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EESaIS6_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i79 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i1.i79, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !616
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.en) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.af
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIdSaIdEE17_M_default_appendEm:bb.a
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !8
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !204
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.126) #36
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #34 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !8
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !8
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !205
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !204
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !213
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load double, ptr %3, align 8, !tbaa !8   ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !702

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !204
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load double, ptr %i.o, align 8, !tbaa !8
  store double %i.s, ptr %i.d, align 8, !tbaa !8
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !204
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !702

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load double, ptr %1, align 8, !tbaa !8
  store double %i.ac, ptr %i.ab, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x double> %broadcast.splatinsert129, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x double> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !8
  store <2 x double> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !8
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !721

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store double %i.i, ptr %.07.i.i.i, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !722

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %4 = add i64 %i.aq, -8
  %5 = sub i64 %4, %i.k                           ; 2 uses
  %i.ar = lshr i64 %5, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !8
  store <2 x double> %broadcast.splat, ptr %i.aw, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !723

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store double %i.i, ptr %.07.i.i.i.i.i.i.i, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !724

_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !204
  %i.az = icmp sgt i64 %i.k, 8
  br i1 %i.az, label %bb.n, label %bb.o, !prof !702

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !204
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 8
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load double, ptr %1, align 8, !tbaa !8
  store double %i.bb, ptr %.0.i.i.i.i.i, align 8, !tbaa !8
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !204
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69
  %6 = add i64 %i.f, -8
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.be = lshr i64 %7, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bf, 4611686018427387900  ; 3 uses
  %i.bg = shl i64 %n.vec115, 3
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bi = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x double> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !8
  store <2 x double> %broadcast.splat117, ptr %i.bj, align 8, !tbaa !8
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bk, label %middle.block122, label %vector.body118, !llvm.loop !725

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bf, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store double %i.i, ptr %.07.i.i.i72, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !726

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !205   ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 4 uses
  %i.bq = sub nsw i64 1152921504606846975, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #36
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load double, ptr %3, align 8, !tbaa !8  ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ce, 24
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec141, 3
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert142 = insertelement <2 x double> poison, double %i.cd, i64 0
  %broadcast.splat143 = shufflevector <2 x double> %broadcast.splatinsert142, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cj = shl i64 %index145, 3
  %next.gep146 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep146, i64 16
  store <2 x double> %broadcast.splat143, ptr %next.gep146, align 8, !tbaa !8
  store <2 x double> %broadcast.splat143, ptr %i.ck, align 8, !tbaa !8
  %index.next147 = add nuw i64 %index145, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cl, label %middle.block148, label %vector.body144, !llvm.loop !727

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.cg, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store double %i.cd, ptr %.07.i.i.i.i.i.i.i77, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !728

_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cn = icmp sgt i64 %i.bx, 8
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !702

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ca, ptr align 8 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 8
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load double, ptr %i.bm, align 8, !tbaa !8
  store double %i.cp, ptr %i.ca, align 8, !tbaa !8
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 8
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !702

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr align 8 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 8
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load double, ptr %1, align 8, !tbaa !8
  store double %i.cu, ptr %i.cq, align 8, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !205
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !204
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !213
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit

_ZSt4fillIPddEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE4findERS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not11.i = icmp eq ptr %i.b, null
  br i1 %.not11.i, label %_ZNSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS8_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !198    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i, %.lr.ph.i
  %.013.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.1.i, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i ] ; 6 uses
  %.0812.i = phi ptr [ %i.c, %.lr.ph.i ], [ %.19.i, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.013.i, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !198  ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.d
  br i1 %i.k, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %i.d, %i.j
  br i1 %i.l, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i, label %bb.d

end_hunk_8
begin_hunk_9_@_ZNSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE4findERS8_:bb.a
  %i.v = icmp eq ptr %.19.i, %i.c
  br i1 %i.v, label %_ZNSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS8_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS8_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !198  ; 2 uses
  %i.y = icmp slt i32 %i.d, %i.x
  br i1 %i.y, label %_ZNSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS8_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp slt i32 %i.x, %i.d
  br i1 %i.z, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !29 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.f) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = tail call i32 @memcmp(ptr noundef %i.h, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.g
  %i.ag = sub i64 %i.f, %i.ab
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit

_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ah, label %_ZNSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS8_.exit.thread, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread6

_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread6: ; preds = %bb.f, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit
  br label %_ZNSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS8_.exit.thread

_ZNSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS8_.exit.thread: ; preds = %bb.e, %bb.a, %_ZNSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS8_.exit, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread6
  %.sroa.0.0 = phi ptr [ %.19.i, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread6 ], [ %i.c, %bb.a ], [ %i.c, %_ZNSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS8_.exit ], [ %i.c, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit ], [ %i.c, %bb.e ]
  ret ptr %.sroa.0.0
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE4findERS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not11.i = icmp eq ptr %i.b, null
  br i1 %.not11.i, label %_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS8_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !198    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i, %.lr.ph.i
  %.013.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.1.i, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i ] ; 6 uses
  %.0812.i = phi ptr [ %i.c, %.lr.ph.i ], [ %.19.i, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.013.i, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !198  ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.d
  br i1 %i.k, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %i.d, %i.j
  br i1 %i.l, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.n) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = tail call i32 @memcmp(ptr noundef %i.q, ptr noundef %i.h, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.s = sub i64 %i.n, %i.f
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.s, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.i

_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.t = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread.i, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i

_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread.i: ; preds = %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.i, %bb.b
  br label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i

_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i: ; preds = %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread.i, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.i, %bb.c
  %.sink.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread.i ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.i ]
  %.19.i = phi ptr [ %.0812.i, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread.i ], [ %.013.i, %bb.c ], [ %.013.i, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.i ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i, i64 %.sink.i
  %.1.i = load ptr, ptr %i.u, align 8, !tbaa !216 ; 2 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS8_.exit, label %bb.b, !llvm.loop !729

_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS8_.exit: ; preds = %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread10.i
  %i.v = icmp eq ptr %.19.i, %i.c
  br i1 %i.v, label %_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS8_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS8_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !198  ; 2 uses
  %i.y = icmp slt i32 %i.d, %i.x
  br i1 %i.y, label %_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS8_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = icmp slt i32 %i.x, %i.d
  br i1 %i.z, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !29 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.f) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = tail call i32 @memcmp(ptr noundef %i.h, ptr noundef %i.ae, i64 noundef %.sroa.speculated.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.g
  %i.ag = sub i64 %i.f, %i.ab
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit

_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.ah, label %_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS8_.exit.thread, label %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread6

_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread6: ; preds = %bb.f, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit
  br label %_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS8_.exit.thread

_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS8_.exit.thread: ; preds = %bb.e, %bb.a, %_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS8_.exit, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread6
  %.sroa.0.0 = phi ptr [ %.19.i, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread6 ], [ %i.c, %bb.a ], [ %i.c, %_ZNKSt8_Rb_treeISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES0_IKS7_S6_ESt10_Select1stIS9_ESt4lessIS7_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS8_.exit ], [ %i.c, %_ZNKSt4lessISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit ], [ %i.c, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS0_INS2_10GTiffVGridES4_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !82     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %2, align 8, !tbaa !279
  store ptr null, ptr %2, align 8, !tbaa !279
  store ptr %i.r, ptr %i.q, align 8, !tbaa !281
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.e                           ; 2 uses
  %i.s = lshr i64 %4, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !86, !alias.scope !735, !noalias !730
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !86, !alias.scope !735, !noalias !730
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !86, !alias.scope !738, !noalias !735
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !86, !alias.scope !738, !noalias !735
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !86, !alias.scope !735, !noalias !730
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !86, !alias.scope !735, !noalias !730
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !740

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !86, !alias.scope !733, !noalias !730
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !86, !alias.scope !730, !noalias !733
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !86, !alias.scope !733, !noalias !730
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !741

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %5 = add i64 %i.d, -8
  %6 = sub i64 %5, %i.m                           ; 2 uses
  %i.ak = lshr i64 %6, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %6, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !86, !alias.scope !747, !noalias !742
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !86, !alias.scope !747, !noalias !742
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !86, !alias.scope !750, !noalias !747
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !86, !alias.scope !750, !noalias !747
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !86, !alias.scope !747, !noalias !742
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !86, !alias.scope !747, !noalias !742
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !752

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.al, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !86, !alias.scope !745, !noalias !742
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !86, !alias.scope !742, !noalias !745
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !86, !alias.scope !745, !noalias !742
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !753

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #32
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj17VerticalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !82
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !85
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !90
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEEixERSD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.377", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.350", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !294

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffVGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %1, ptr %2, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, osgeo::proj::GTiffVGrid *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, osgeo::proj::GTiffVGrid *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %0, ptr %5, align 8, !tbaa !754
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34 ; 8 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !756
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

end_hunk_9
begin_hunk_10_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_:bb.a
  store ptr %i.j, ptr %i.b, align 8, !tbaa !26
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.k, ptr %i.e, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !31
  store i8 %i.m, ptr %i.l, align 1, !tbaa !31
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #31 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #32
  invoke void @__cxa_rethrow() #36
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !29
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.v, align 8, !tbaa !295
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffVGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !216 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !216 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !759

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #31 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS0_INS2_8NTv2GridES4_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !361  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !358    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %2, align 8, !tbaa !405
  store ptr null, ptr %2, align 8, !tbaa !405
  store ptr %i.r, ptr %i.q, align 8, !tbaa !416
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.e                           ; 2 uses
  %i.s = lshr i64 %4, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !362, !alias.scope !765, !noalias !760
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !362, !alias.scope !765, !noalias !760
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !362, !alias.scope !768, !noalias !765
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !362, !alias.scope !768, !noalias !765
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !362, !alias.scope !765, !noalias !760
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !362, !alias.scope !765, !noalias !760
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !770

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !362, !alias.scope !763, !noalias !760
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !362, !alias.scope !760, !noalias !763
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !362, !alias.scope !763, !noalias !760
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !771

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %5 = add i64 %i.d, -8
  %6 = sub i64 %5, %i.m                           ; 2 uses
  %i.ak = lshr i64 %6, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %6, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !362, !alias.scope !777, !noalias !772
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !362, !alias.scope !777, !noalias !772
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !362, !alias.scope !780, !noalias !777
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !362, !alias.scope !780, !noalias !777
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !362, !alias.scope !777, !noalias !772
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !362, !alias.scope !777, !noalias !772
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !782

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.al, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !362, !alias.scope !775, !noalias !772
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !362, !alias.scope !772, !noalias !775
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !362, !alias.scope !775, !noalias !772
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !783

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !366
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #32
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !358
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !361
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !366
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, osgeo::proj::NTv2Grid *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, osgeo::proj::NTv2Grid *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %0, ptr %5, align 8, !tbaa !784
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34 ; 8 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !786
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.r = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.t = phi i1 [ %i.s, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !288
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !288
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %i.x

bb.f:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #32
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !288
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !216  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 2 uses
end_hunk_10
begin_hunk_11_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_:bb.a
  store ptr %i.j, ptr %i.b, align 8, !tbaa !26
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.k, ptr %i.e, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !31
  store i8 %i.m, ptr %i.l, align 1, !tbaa !31
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #31 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #32
  invoke void @__cxa_rethrow() #36
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !29
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.v, align 8, !tbaa !408
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj8NTv2GridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !216 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !216 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !789

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #31 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS0_INS2_10GTiffHGridES4_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !361  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !358    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %2, align 8, !tbaa !430
  store ptr null, ptr %2, align 8, !tbaa !430
  store ptr %i.r, ptr %i.q, align 8, !tbaa !416
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.e                           ; 2 uses
  %i.s = lshr i64 %4, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !362, !alias.scope !795, !noalias !790
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !362, !alias.scope !795, !noalias !790
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !362, !alias.scope !798, !noalias !795
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !362, !alias.scope !798, !noalias !795
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !362, !alias.scope !795, !noalias !790
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !362, !alias.scope !795, !noalias !790
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !800

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !362, !alias.scope !793, !noalias !790
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !362, !alias.scope !790, !noalias !793
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !362, !alias.scope !793, !noalias !790
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !801

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %5 = add i64 %i.d, -8
  %6 = sub i64 %5, %i.m                           ; 2 uses
  %i.ak = lshr i64 %6, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %6, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !362, !alias.scope !807, !noalias !802
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !362, !alias.scope !807, !noalias !802
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !362, !alias.scope !810, !noalias !807
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !362, !alias.scope !810, !noalias !807
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !362, !alias.scope !807, !noalias !802
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !362, !alias.scope !807, !noalias !802
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !812

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.al, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !362, !alias.scope !805, !noalias !802
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !362, !alias.scope !802, !noalias !805
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !362, !alias.scope !805, !noalias !802
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !813

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !366
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #32
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !358
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !361
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !366
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffHGridESt4lessIS5_ESaISt4pairIKS5_S9_EEEixERSD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.377", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.350", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffHGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !441

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffHGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffHGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffHGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj10GTiffHGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %1, ptr %2, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffHGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffHGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, osgeo::proj::GTiffHGrid *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, osgeo::proj::GTiffHGrid *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %0, ptr %5, align 8, !tbaa !814
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34 ; 8 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffHGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !816
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffHGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
end_hunk_11
begin_hunk_12_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffHGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_:bb.a
  store ptr %i.j, ptr %i.b, align 8, !tbaa !26
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.k, ptr %i.e, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !31
  store i8 %i.m, ptr %i.l, align 1, !tbaa !31
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #31 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #32
  invoke void @__cxa_rethrow() #36
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !29
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.v, align 8, !tbaa !442
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj10GTiffHGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !216 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !216 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !819

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #31 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !361  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !358    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !362
  store i64 %i.r, ptr %i.q, align 8, !tbaa !362
  store ptr null, ptr %2, align 8, !tbaa !362
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.e                           ; 2 uses
  %i.s = lshr i64 %4, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !362, !alias.scope !825, !noalias !820
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !362, !alias.scope !825, !noalias !820
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !362, !alias.scope !828, !noalias !825
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !362, !alias.scope !828, !noalias !825
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !362, !alias.scope !825, !noalias !820
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !362, !alias.scope !825, !noalias !820
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !830

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !362, !alias.scope !823, !noalias !820
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !362, !alias.scope !820, !noalias !823
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !362, !alias.scope !823, !noalias !820
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !831

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %5 = add i64 %i.d, -8
  %6 = sub i64 %5, %i.m                           ; 2 uses
  %i.ak = lshr i64 %6, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %6, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !362, !alias.scope !837, !noalias !832
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !362, !alias.scope !837, !noalias !832
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !362, !alias.scope !840, !noalias !837
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !362, !alias.scope !840, !noalias !837
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !362, !alias.scope !837, !noalias !832
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !362, !alias.scope !837, !noalias !832
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !842

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.al, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !362, !alias.scope !835, !noalias !832
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !362, !alias.scope !832, !noalias !835
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !362, !alias.scope !835, !noalias !832
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !843

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !366
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #32
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj19HorizontalShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !358
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !361
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !366
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS0_INS2_16GTiffGenericGridES4_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !487  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !484    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %2, align 8, !tbaa !506
  store ptr null, ptr %2, align 8, !tbaa !506
  store ptr %i.r, ptr %i.q, align 8, !tbaa !508
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.e                           ; 2 uses
  %i.s = lshr i64 %4, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !488, !alias.scope !849, !noalias !844
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !488, !alias.scope !849, !noalias !844
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !488, !alias.scope !852, !noalias !849
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !488, !alias.scope !852, !noalias !849
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !488, !alias.scope !849, !noalias !844
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !488, !alias.scope !849, !noalias !844
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !854

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !488, !alias.scope !847, !noalias !844
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !488, !alias.scope !844, !noalias !847
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !488, !alias.scope !847, !noalias !844
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !855

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %5 = add i64 %i.d, -8
  %6 = sub i64 %5, %i.m                           ; 2 uses
  %i.ak = lshr i64 %6, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %6, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !488, !alias.scope !861, !noalias !856
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !488, !alias.scope !861, !noalias !856
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !488, !alias.scope !864, !noalias !861
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !488, !alias.scope !864, !noalias !861
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !488, !alias.scope !861, !noalias !856
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !488, !alias.scope !861, !noalias !856
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !866

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.al, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !488, !alias.scope !859, !noalias !856
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !488, !alias.scope !856, !noalias !859
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !488, !alias.scope !859, !noalias !856
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !867

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !492
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #32
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj16GenericShiftGridESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !484
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !487
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !492
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEEixERSD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.377", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.350", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #31 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !519

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5osgeo4proj16GTiffGenericGridESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %1, ptr %2, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, osgeo::proj::GTiffGenericGrid *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, osgeo::proj::GTiffGenericGrid *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %0, ptr %5, align 8, !tbaa !868
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #34 ; 8 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !870
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5osgeo4proj16GTiffGenericGridEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
end_hunk_12
