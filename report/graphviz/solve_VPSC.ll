Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/solve_VPSC?download=true
inline.NumInlined: 914
inline.NumDeleted: 473
begin_hunk_0_@_ZN4VPSC23constraintGraphIsCyclicEjPP8Variable:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.fp = load ptr, ptr %i.fi, align 8, !tbaa !48
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !48
  %i.fs = icmp ult ptr %i.fp, %i.fr
  br label %.thread.i.i92

.thread.i.i92:                                    ; preds = %bb.ae, %bb.ad
  %i.ft = phi i1 [ %i.fs, %bb.ae ], [ true, %bb.ad ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ft, ptr noundef nonnull %i.fh, ptr noundef nonnull %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #20
  %i.fu = load i64, ptr %i.e, align 8, !tbaa !73
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr %i.e, align 8, !tbaa !73
  br label %bb.ag

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i88: ; preds = %.noexc93
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 48) #19
  br label %.body

bb.af:                                            ; preds = %bb.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 48) #19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread.i.i92, %bb.ab
  %.sroa.09.0.i85 = phi ptr [ %.19.i.i.i.i79, %bb.ab ], [ %i.fh, %.thread.i.i92 ], [ %i.fm, %bb.af ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i85, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !83 ; 4 uses
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i97 = icmp eq ptr %i.fz, null
  br i1 %.not10.i.i.i.i97, label %.critedge.i108, label %.lr.ph.i.i.i.i98

.lr.ph.i.i.i.i98:                                 ; preds = %bb.ag, %.lr.ph.i.i.i.i98
  %.012.i.i.i.i99 = phi ptr [ %.1.i.i.i.i104, %.lr.ph.i.i.i.i98 ], [ %i.fz, %bb.ag ] ; 4 uses
  %.0811.i.i.i.i100 = phi ptr [ %.19.i.i.i.i101, %.lr.ph.i.i.i.i98 ], [ %i.a, %bb.ag ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i99, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !48
  %i.gc = icmp ult ptr %i.gb, %i.ey               ; 3 uses
  %.19.i.i.i.i101 = select i1 %i.gc, ptr %.0811.i.i.i.i100, ptr %.012.i.i.i.i99 ; 5 uses
  %.1.in.v.i.i.i.i102 = select i1 %i.gc, i64 24, i64 16
  %.1.in.i.i.i.i103 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i99, i64 %.1.in.v.i.i.i.i102
  %.1.i.i.i.i104 = load ptr, ptr %.1.in.i.i.i.i103, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %.1.i.i.i.i104, null
  br i1 %.not.i.i.i.i105, label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i106, label %.lr.ph.i.i.i.i98, !llvm.loop !2

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i106: ; preds = %.lr.ph.i.i.i.i98
  %i.gd = icmp eq ptr %.19.i.i.i.i101, %i.a
  br i1 %i.gd, label %.critedge.i108, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i106
  %.19.i.i.i.i101.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gc, ptr %.0811.i.i.i.i100, ptr %.012.i.i.i.i99
  %.19.i.i.i.i101.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i101.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ge = load ptr, ptr %.19.i.i.i.i101.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !89
  %i.gf = icmp ult ptr %i.ey, %i.ge
  br i1 %i.gf, label %.critedge.i108, label %bb.am

.critedge.i108:                                   ; preds = %bb.ah, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i106, %bb.ag
  %.08.lcssa.i.i.i14.i109 = phi ptr [ %.19.i.i.i.i101, %bb.ah ], [ %.19.i.i.i.i101, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i106 ], [ %i.a, %bb.ag ]
  %i.gg = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc115:                                        ; preds = %.critedge.i108
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32 ; 3 uses
  store ptr %i.ey, ptr %i.gh, align 8, !tbaa !89
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  store ptr null, ptr %i.gi, align 8, !tbaa !90
  %i.gj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %.08.lcssa.i.i.i14.i109, ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
          to label %bb.ai unwind label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i110 ; 2 uses

bb.ai:                                            ; preds = %.noexc115
  %i.gk = extractvalue { ptr, ptr } %i.gj, 0      ; 2 uses
  %i.gl = extractvalue { ptr, ptr } %i.gj, 1      ; 4 uses
  %.not.i.i111 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i111, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i4.i112 = icmp ne ptr %i.gk, null
  %i.gm = icmp eq ptr %i.gl, %i.a
  %or.cond.i.i.i.i113 = or i1 %.not.i.i.i4.i112, %i.gm
  br i1 %or.cond.i.i.i.i113, label %.thread.i.i114, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gn = load ptr, ptr %i.gh, align 8, !tbaa !48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !48
  %i.gq = icmp ult ptr %i.gn, %i.gp
  br label %.thread.i.i114

.thread.i.i114:                                   ; preds = %bb.ak, %bb.aj
  %i.gr = phi i1 [ %i.gq, %bb.ak ], [ true, %bb.aj ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gr, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #20
  %i.gs = load i64, ptr %i.e, align 8, !tbaa !73
  %i.gt = add i64 %i.gs, 1
  store i64 %i.gt, ptr %i.e, align 8, !tbaa !73
  br label %bb.am

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i110: ; preds = %.noexc115
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 48) #19
  br label %.body

bb.al:                                            ; preds = %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 48) #19
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread.i.i114, %bb.ah
  %.sroa.09.0.i107 = phi ptr [ %.19.i.i.i.i101, %bb.ah ], [ %i.gg, %.thread.i.i114 ], [ %i.gk, %bb.al ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i107, i64 40 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 56 ; 3 uses
  %.02022.i.i.i119 = load ptr, ptr %i.gw, align 8, !tbaa !72 ; 2 uses
  %.not23.i.i.i120 = icmp eq ptr %.02022.i.i.i119, null
  br i1 %.not23.i.i.i120, label %._crit_edge.thread.i.i.i137, label %.lr.ph.i.i.i121

.lr.ph.i.i.i121:                                  ; preds = %bb.am
  %i.gy = load ptr, ptr %i.gv, align 8, !tbaa !83 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph.i.i.i121
  %.02024.i.i.i122 = phi ptr [ %.02022.i.i.i119, %.lr.ph.i.i.i121 ], [ %.020.i.i.i125, %bb.an ] ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.02024.i.i.i122, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !83 ; 2 uses
  %i.hb = icmp ult ptr %i.gy, %i.ha               ; 2 uses
  %.in.v.i.i.i123 = select i1 %i.hb, i64 16, i64 24
  %.in.i.i.i124 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i122, i64 %.in.v.i.i.i123
  %.020.i.i.i125 = load ptr, ptr %.in.i.i.i124, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i126 = icmp eq ptr %.020.i.i.i125, null
  br i1 %.not.i.i.i126, label %._crit_edge.i.i.i127, label %bb.an, !llvm.loop !3

._crit_edge.i.i.i127:                             ; preds = %bb.an
  br i1 %i.hb, label %._crit_edge.thread.i.i.i137, label %bb.ap

._crit_edge.thread.i.i.i137:                      ; preds = %._crit_edge.i.i.i127, %bb.am
  %.019.lcssa29.i.i.i138 = phi ptr [ %.02024.i.i.i122, %._crit_edge.i.i.i127 ], [ %i.gx, %bb.am ] ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fy, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !67
  %i.he = icmp eq ptr %.019.lcssa29.i.i.i138, %i.hd
  br i1 %i.he, label %select.unfold.i.i134, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.thread.i.i.i137
  %i.hf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i138) #22
  %.phi.trans.insert.i.i139 = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %.pre.i.i140 = load ptr, ptr %.phi.trans.insert.i.i139, align 8, !tbaa !83
  %.pre18.i.i141 = load ptr, ptr %i.gv, align 8, !tbaa !83
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge.i.i.i127
  %i.hg = phi ptr [ %.pre18.i.i141, %bb.ao ], [ %i.gy, %._crit_edge.i.i.i127 ]
  %i.hh = phi ptr [ %.pre.i.i140, %bb.ao ], [ %i.ha, %._crit_edge.i.i.i127 ]
  %.019.lcssa28.i.i.i128 = phi ptr [ %.019.lcssa29.i.i.i138, %bb.ao ], [ %.02024.i.i.i122, %._crit_edge.i.i.i127 ]
  %i.hi = icmp ult ptr %i.hh, %i.hg
  br i1 %i.hi, label %select.unfold.i.i134, label %bb.ar

select.unfold.i.i134:                             ; preds = %bb.ap, %._crit_edge.thread.i.i.i137
  %.sroa.4.0.i.ph.i.i135 = phi ptr [ %.019.lcssa29.i.i.i138, %._crit_edge.thread.i.i.i137 ], [ %.019.lcssa28.i.i.i128, %bb.ap ] ; 3 uses
  %i.hj = icmp eq ptr %.sroa.4.0.i.ph.i.i135, %i.gx
  br i1 %i.hj, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i136, label %bb.aq

bb.aq:                                            ; preds = %select.unfold.i.i134
  %i.hk = load ptr, ptr %i.gv, align 8, !tbaa !83
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i135, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !83
  %i.hn = icmp ult ptr %i.hk, %i.hm
  br label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i136

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i136: ; preds = %bb.aq, %select.unfold.i.i134
  %i.ho = phi i1 [ %i.hn, %bb.aq ], [ true, %select.unfold.i.i134 ]
  %i.hp = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc142:                                        ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i136
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = load ptr, ptr %i.gv, align 8, !tbaa !83
  store ptr %i.hr, ptr %i.hq, align 8, !tbaa !83
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ho, ptr noundef nonnull %i.hp, ptr noundef nonnull %.sroa.4.0.i.ph.i.i135, ptr noundef nonnull align 8 dereferenceable(32) %i.gx) #20
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fy, i64 88 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !73
  %i.hu = add i64 %i.ht, 1
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !73
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc142, %bb.ap
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0165.0217, i64 8 ; 2 uses
  %.not178 = icmp eq ptr %i.hv, %i.bw
  br i1 %.not178, label %._crit_edge220, label %.lr.ph219

.loopexit:                                        ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit
  %i.hw = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.hx = load ptr, ptr %i.bj, align 8, !tbaa !87 ; 2 uses
  %.not232 = icmp eq ptr %i.hw, %i.hx
  br i1 %.not232, label %.critedge, label %.preheader, !llvm.loop !126

.preheader:                                       ; preds = %.preheader180, %.loopexit
  %i.hy = phi ptr [ %i.hx, %.loopexit ], [ %i.bl, %.preheader180 ] ; 2 uses
  %i.hz = phi ptr [ %i.hw, %.loopexit ], [ %i.bk, %.preheader180 ] ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %.preheader, %bb.at
  %.sroa.0156.0223 = phi ptr [ %i.hz, %.preheader ], [ %i.ie, %bb.at ] ; 4 uses
  %i.ia = load ptr, ptr %.sroa.0156.0223, align 8, !tbaa !83 ; 7 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !73
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0156.0223, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ie, %i.hy
  br i1 %.not, label %.critedge, label %bb.as, !llvm.loop !127

bb.au:                                            ; preds = %bb.as
  %i.if = icmp eq ptr %.sroa.0156.0223, %i.hy     ; 3 uses
  br i1 %i.if, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ig = ptrtoint ptr %.sroa.0156.0223 to i64
  %i.ih = ptrtoint ptr %i.hz to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = getelementptr inbounds i8, ptr %i.hz, i64 %i.ii
  %i.ik = invoke ptr @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ij)
          to label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit: ; preds = %bb.av
  %i.il = getelementptr inbounds nuw i8, ptr %i.ia, i64 72
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !67 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ia, i64 56 ; 2 uses
  %.not176224 = icmp eq ptr %i.im, %i.in
  br i1 %.not176224, label %.loopexit, label %.lr.ph226

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge.i, %.critedge.i62, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, %bb.av, %.critedge.i86, %.critedge.i108, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i136, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12emplace_backIJPS1_EEERS4_DpOT_.exit, %bb.b, %_ZNKSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %lpad.loopexit.split-lp385 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph226:                                        ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit, %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit
  %.sroa.0150.0225 = phi ptr [ %i.jt, %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit ], [ %i.im, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0150.0225, i64 32
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !83 ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 7 uses
  %.041.i.i = load ptr, ptr %i.iq, align 8, !tbaa !72 ; 3 uses
  %.not42.i.i = icmp eq ptr %.041.i.i, null
  br i1 %.not42.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph226, %bb.ay
  %.044.i.i = phi ptr [ %.0.i.i, %bb.ay ], [ %.041.i.i, %.lr.ph226 ] ; 7 uses
  %.02243.i.i = phi ptr [ %.123.i.i, %bb.ay ], [ %i.ir, %.lr.ph226 ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !83 ; 2 uses
  %i.iu = icmp ult ptr %i.it, %i.ia
  br i1 %i.iu, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i
  %i.iv = icmp ult ptr %i.ia, %i.it
  br i1 %i.iv, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iw = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !91 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !92 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i146

.lr.ph.i.i.i146:                                  ; preds = %bb.ax, %.lr.ph.i.i.i146
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i146 ], [ %i.ix, %bb.ax ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i146 ], [ %.044.i.i, %bb.ax ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !83
  %i.jc = icmp ult ptr %i.jb, %i.ia               ; 2 uses
  %.19.i.i.i = select i1 %i.jc, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.jc, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i147, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i146, !llvm.loop !4

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i146, %bb.ax
  %.08.lcssa.i.i.i = phi ptr [ %.044.i.i, %bb.ax ], [ %.19.i.i.i, %.lr.ph.i.i.i146 ] ; 2 uses
  %.not10.i24.i.i = icmp eq ptr %i.iz, null
  br i1 %.not10.i24.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %.lr.ph.i25.i.i
  %.012.i26.i.i = phi ptr [ %.1.i31.i.i, %.lr.ph.i25.i.i ], [ %i.iz, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ] ; 3 uses
  %.0811.i27.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 32
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !83
  %i.jf = icmp ult ptr %i.ia, %i.je               ; 2 uses
  %.19.i28.i.i = select i1 %i.jf, ptr %.012.i26.i.i, ptr %.0811.i27.i.i ; 2 uses
  %.1.in.v.i29.i.i = select i1 %i.jf, i64 16, i64 24
  %.1.in.i30.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 %.1.in.v.i29.i.i
  %.1.i31.i.i = load ptr, ptr %.1.in.i30.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.1.i31.i.i, null
  br i1 %.not.i32.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i25.i.i, !llvm.loop !5

bb.ay:                                            ; preds = %bb.aw, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 24, %.lr.ph.i.i ], [ 16, %bb.aw ]
  %.123.i.i = phi ptr [ %.02243.i.i, %.lr.ph.i.i ], [ %.044.i.i, %bb.aw ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.jg, align 8, !tbaa !72 ; 2 uses
  %.not.i.i149 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i149, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i: ; preds = %bb.ay, %.lr.ph.i25.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %.lr.ph226
  %.sroa.037.0.i.i = phi ptr [ %.08.lcssa.i.i.i, %.lr.ph.i25.i.i ], [ %.08.lcssa.i.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.ir, %.lr.ph226 ], [ %.123.i.i, %bb.ay ] ; 3 uses
  %.sroa.3.0.i.i148 = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.ir, %.lr.ph226 ], [ %.123.i.i, %bb.ay ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ip, i64 40 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ip, i64 24 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !67
  %i.jk = icmp eq ptr %.sroa.037.0.i.i, %i.jj
  %i.jl = icmp eq ptr %.sroa.3.0.i.i148, %i.ir
  %or.cond.i = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %or.cond.i, label %bb.az, label %.critedge.i.i

bb.az:                                            ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ip, ptr noundef %.041.i.i)
          to label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #24
  unreachable

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i: ; preds = %bb.az
  store ptr null, ptr %i.iq, align 8, !tbaa !76
  store ptr %i.ir, ptr %i.ji, align 8, !tbaa !67
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  store ptr %i.ir, ptr %i.jo, align 8, !tbaa !77
  store i64 0, ptr %i.jh, align 8, !tbaa !73
  br label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit

.critedge.i.i:                                    ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  %.not8.i.i = icmp eq ptr %.sroa.037.0.i.i, %.sroa.3.0.i.i148
  br i1 %.not8.i.i, label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i2.i
  %.sroa.06.09.i.i = phi ptr [ %i.jp, %.lr.ph.i2.i ], [ %.sroa.037.0.i.i, %.critedge.i.i ] ; 2 uses
  %i.jp = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i) #22 ; 2 uses
  %i.jq = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ir) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef 40) #19
  %i.jr = load i64, ptr %i.jh, align 8, !tbaa !73
  %i.js = add i64 %i.jr, -1
  store i64 %i.js, ptr %i.jh, align 8, !tbaa !73
  %.not.i3.i = icmp eq ptr %i.jp, %.sroa.3.0.i.i148
  br i1 %.not.i3.i, label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i, !llvm.loop !7

_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit: ; preds = %.lr.ph.i2.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i, %.critedge.i.i
  %i.jt = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0150.0225) #22 ; 2 uses
  %.not176 = icmp eq ptr %i.jt, %i.in
  br i1 %.not176, label %.loopexit, label %.lr.ph226

.critedge:                                        ; preds = %.loopexit, %bb.au, %bb.at, %.preheader180
  %.lcssa = phi i1 [ false, %.preheader180 ], [ true, %bb.at ], [ %i.if, %bb.au ], [ %i.if, %.loopexit ]
  call void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ju = load ptr, ptr %i.b, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ju)
          to label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %.critedge
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #24
  unreachable

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %.lcssa

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i88, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i110, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i64
  %.pn46.pn = phi { ptr, i32 } [ %i.gu, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i110 ], [ %i.cw, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.fw, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i88 ], [ %i.du, %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i64 ], [ %lpad.loopexit.split-lp385, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn46.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = icmp ult ptr %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !2

_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !48
  store ptr %i.n, ptr %i.m, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !90
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.w = icmp ult ptr %i.t, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !73
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !73
  br label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  br label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !83 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef %i.k)
          to label %_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i: ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 96) #19
  br label %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteI4nodeEclEPS0_.exit.i.i.i.i, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !133

_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrI4nodeSt14default_deleteIS1_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !84
  br label %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #19
  br label %_ZNSt12_Vector_baseISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI4nodeSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIP8VariableP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIP8VariableSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EED2Ev.exit unwind label %bb.b
end_hunk_0
begin_hunk_1_@_ZN4VPSC18blockGraphIsCyclicEv:bb.a
  %i.fp = phi i1 [ %i.fo, %bb.af ], [ true, %bb.ae ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fp, ptr noundef nonnull %i.fe, ptr noundef nonnull %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #20
  %i.fq = load i64, ptr %i.f, align 8, !tbaa !73
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.f, align 8, !tbaa !73
  br label %bb.ah

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i77: ; preds = %.noexc82
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef 48) #19
  br label %.body

bb.ag:                                            ; preds = %bb.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef 48) #19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread.i.i81, %bb.ac
  %.sroa.09.0.i74 = phi ptr [ %.19.i.i.i.i68, %bb.ac ], [ %i.fe, %.thread.i.i81 ], [ %i.fi, %bb.ag ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i74, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !83 ; 4 uses
  %i.fv = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %.not10.i.i.i.i86 = icmp eq ptr %i.fv, null
  br i1 %.not10.i.i.i.i86, label %.critedge.i97, label %.lr.ph.i.i.i.i87

.lr.ph.i.i.i.i87:                                 ; preds = %bb.ah, %.lr.ph.i.i.i.i87
  %.012.i.i.i.i88 = phi ptr [ %.1.i.i.i.i93, %.lr.ph.i.i.i.i87 ], [ %i.fv, %bb.ah ] ; 4 uses
  %.0811.i.i.i.i89 = phi ptr [ %.19.i.i.i.i90, %.lr.ph.i.i.i.i87 ], [ %i.b, %bb.ah ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i88, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !68
  %i.fy = icmp ult ptr %i.fx, %i.ew               ; 3 uses
  %.19.i.i.i.i90 = select i1 %i.fy, ptr %.0811.i.i.i.i89, ptr %.012.i.i.i.i88 ; 5 uses
  %.1.in.v.i.i.i.i91 = select i1 %i.fy, i64 24, i64 16
  %.1.in.i.i.i.i92 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i88, i64 %.1.in.v.i.i.i.i91
  %.1.i.i.i.i93 = load ptr, ptr %.1.in.i.i.i.i92, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i94 = icmp eq ptr %.1.i.i.i.i93, null
  br i1 %.not.i.i.i.i94, label %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i95, label %.lr.ph.i.i.i.i87, !llvm.loop !8

_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i95: ; preds = %.lr.ph.i.i.i.i87
  %i.fz = icmp eq ptr %.19.i.i.i.i90, %i.b
  br i1 %i.fz, label %.critedge.i97, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i95
  %.19.i.i.i.i90.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fy, ptr %.0811.i.i.i.i89, ptr %.012.i.i.i.i88
  %.19.i.i.i.i90.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i90.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ga = load ptr, ptr %.19.i.i.i.i90.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !94
  %i.gb = icmp ult ptr %i.ew, %i.ga
  br i1 %i.gb, label %.critedge.i97, label %bb.an

.critedge.i97:                                    ; preds = %bb.ai, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i95, %bb.ah
  %.08.lcssa.i.i.i14.i98 = phi ptr [ %.19.i.i.i.i90, %bb.ai ], [ %.19.i.i.i.i90, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i95 ], [ %i.b, %bb.ah ]
  %i.gc = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc104:                                        ; preds = %.critedge.i97
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32 ; 3 uses
  store ptr %i.ew, ptr %i.gd, align 8, !tbaa !94
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store ptr null, ptr %i.ge, align 8, !tbaa !95
  %i.gf = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i14.i98, ptr noundef nonnull align 8 dereferenceable(8) %i.gd)
          to label %bb.aj unwind label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i99 ; 2 uses

bb.aj:                                            ; preds = %.noexc104
  %i.gg = extractvalue { ptr, ptr } %i.gf, 0      ; 2 uses
  %i.gh = extractvalue { ptr, ptr } %i.gf, 1      ; 4 uses
  %.not.i.i100 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i100, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i4.i101 = icmp ne ptr %i.gg, null
  %i.gi = icmp eq ptr %i.gh, %i.b
  %or.cond.i.i.i.i102 = or i1 %.not.i.i.i4.i101, %i.gi
  br i1 %or.cond.i.i.i.i102, label %.thread.i.i103, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !68
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !68
  %i.gm = icmp ult ptr %i.gj, %i.gl
  br label %.thread.i.i103

.thread.i.i103:                                   ; preds = %bb.al, %bb.ak
  %i.gn = phi i1 [ %i.gm, %bb.al ], [ true, %bb.ak ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gn, ptr noundef nonnull %i.gc, ptr noundef nonnull %i.gh, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #20
  %i.go = load i64, ptr %i.f, align 8, !tbaa !73
  %i.gp = add i64 %i.go, 1
  store i64 %i.gp, ptr %i.f, align 8, !tbaa !73
  br label %bb.an

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i99: ; preds = %.noexc104
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef 48) #19
  br label %.body

bb.am:                                            ; preds = %bb.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef 48) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread.i.i103, %bb.ai
  %.sroa.09.0.i96 = phi ptr [ %.19.i.i.i.i90, %bb.ai ], [ %i.gc, %.thread.i.i103 ], [ %i.gg, %bb.am ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i96, i64 40 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fu, i64 56 ; 3 uses
  %.02022.i.i.i108 = load ptr, ptr %i.gs, align 8, !tbaa !72 ; 2 uses
  %.not23.i.i.i109 = icmp eq ptr %.02022.i.i.i108, null
  br i1 %.not23.i.i.i109, label %._crit_edge.thread.i.i.i126, label %.lr.ph.i.i.i110

.lr.ph.i.i.i110:                                  ; preds = %bb.an
  %i.gu = load ptr, ptr %i.gr, align 8, !tbaa !83 ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i.i.i110
  %.02024.i.i.i111 = phi ptr [ %.02022.i.i.i108, %.lr.ph.i.i.i110 ], [ %.020.i.i.i114, %bb.ao ] ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.02024.i.i.i111, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !83 ; 2 uses
  %i.gx = icmp ult ptr %i.gu, %i.gw               ; 2 uses
  %.in.v.i.i.i112 = select i1 %i.gx, i64 16, i64 24
  %.in.i.i.i113 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i111, i64 %.in.v.i.i.i112
  %.020.i.i.i114 = load ptr, ptr %.in.i.i.i113, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %.020.i.i.i114, null
  br i1 %.not.i.i.i115, label %._crit_edge.i.i.i116, label %bb.ao, !llvm.loop !3

._crit_edge.i.i.i116:                             ; preds = %bb.ao
  br i1 %i.gx, label %._crit_edge.thread.i.i.i126, label %bb.aq

._crit_edge.thread.i.i.i126:                      ; preds = %._crit_edge.i.i.i116, %bb.an
  %.019.lcssa29.i.i.i127 = phi ptr [ %.02024.i.i.i111, %._crit_edge.i.i.i116 ], [ %i.gt, %bb.an ] ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !67
  %i.ha = icmp eq ptr %.019.lcssa29.i.i.i127, %i.gz
  br i1 %i.ha, label %select.unfold.i.i123, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.thread.i.i.i126
  %i.hb = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i127) #22
  %.phi.trans.insert.i.i128 = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %.pre.i.i129 = load ptr, ptr %.phi.trans.insert.i.i128, align 8, !tbaa !83
  %.pre18.i.i130 = load ptr, ptr %i.gr, align 8, !tbaa !83
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i.i.i116
  %i.hc = phi ptr [ %.pre18.i.i130, %bb.ap ], [ %i.gu, %._crit_edge.i.i.i116 ]
  %i.hd = phi ptr [ %.pre.i.i129, %bb.ap ], [ %i.gw, %._crit_edge.i.i.i116 ]
  %.019.lcssa28.i.i.i117 = phi ptr [ %.019.lcssa29.i.i.i127, %bb.ap ], [ %.02024.i.i.i111, %._crit_edge.i.i.i116 ]
  %i.he = icmp ult ptr %i.hd, %i.hc
  br i1 %i.he, label %select.unfold.i.i123, label %bb.as

select.unfold.i.i123:                             ; preds = %bb.aq, %._crit_edge.thread.i.i.i126
  %.sroa.4.0.i.ph.i.i124 = phi ptr [ %.019.lcssa29.i.i.i127, %._crit_edge.thread.i.i.i126 ], [ %.019.lcssa28.i.i.i117, %bb.aq ] ; 3 uses
  %i.hf = icmp eq ptr %.sroa.4.0.i.ph.i.i124, %i.gt
  br i1 %i.hf, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i125, label %bb.ar

bb.ar:                                            ; preds = %select.unfold.i.i123
  %i.hg = load ptr, ptr %i.gr, align 8, !tbaa !83
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i124, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !83
  %i.hj = icmp ult ptr %i.hg, %i.hi
  br label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i125

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i125: ; preds = %bb.ar, %select.unfold.i.i123
  %i.hk = phi i1 [ %i.hj, %bb.ar ], [ true, %select.unfold.i.i123 ]
  %i.hl = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc131:                                        ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i125
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hn = load ptr, ptr %i.gr, align 8, !tbaa !83
  store ptr %i.hn, ptr %i.hm, align 8, !tbaa !83
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hk, ptr noundef nonnull %i.hl, ptr noundef nonnull %.sroa.4.0.i.ph.i.i124, ptr noundef nonnull align 8 dereferenceable(32) %i.gt) #20
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fu, i64 88 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !73
  %i.hq = add i64 %i.hp, 1
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !73
  br label %bb.as

bb.as:                                            ; preds = %.noexc131, %bb.aq
  invoke void @_ZN5Block22deleteMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bu)
          to label %.invoke315 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke315:                                       ; preds = %bb.aa, %bb.as
  %i.hr = invoke noundef ptr @_ZN5Block20findMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %i.bu)
          to label %.preheader183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !143 ; 2 uses

bb.at:                                            ; preds = %.preheader183
  %i.hs = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0167.0219) #22 ; 2 uses
  %.not177 = icmp eq ptr %i.hs, %i.i
  br i1 %.not177, label %.preheader181, label %.lr.ph221

.loopexit:                                        ; preds = %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit
  %i.ht = load ptr, ptr %2, align 8, !tbaa !87    ; 2 uses
  %i.hu = load ptr, ptr %i.bq, align 8, !tbaa !87 ; 2 uses
  %.not229 = icmp eq ptr %i.ht, %i.hu
  br i1 %.not229, label %.critedge, label %.preheader, !llvm.loop !144

.preheader:                                       ; preds = %.preheader181, %.loopexit
  %i.hv = phi ptr [ %i.hu, %.loopexit ], [ %i.bs, %.preheader181 ] ; 2 uses
  %i.hw = phi ptr [ %i.ht, %.loopexit ], [ %i.br, %.preheader181 ] ; 3 uses
  br label %bb.au

bb.au:                                            ; preds = %.preheader, %bb.av
  %.sroa.0145.0222 = phi ptr [ %i.hw, %.preheader ], [ %i.ib, %bb.av ] ; 4 uses
  %i.hx = load ptr, ptr %.sroa.0145.0222, align 8, !tbaa !83 ; 7 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 40
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !73
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0145.0222, i64 8 ; 2 uses
  %.not178 = icmp eq ptr %i.ib, %i.hv
  br i1 %.not178, label %.critedge, label %bb.au, !llvm.loop !145

bb.aw:                                            ; preds = %bb.au
  %i.ic = icmp eq ptr %.sroa.0145.0222, %i.hv     ; 3 uses
  br i1 %i.ic, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.id = ptrtoint ptr %.sroa.0145.0222 to i64
  %i.ie = ptrtoint ptr %i.hw to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = getelementptr inbounds i8, ptr %i.hw, i64 %i.if
  %i.ih = invoke ptr @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ig)
          to label %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit: ; preds = %bb.ax
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !67 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hx, i64 56 ; 2 uses
  %.not179223 = icmp eq ptr %i.ij, %i.ik
  br i1 %.not179223, label %.loopexit, label %.lr.ph225

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke315, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i125, %.critedge.i97, %.critedge.i75, %bb.as, %bb.ax, %.invoke, %bb.z, %.critedge.i, %.critedge.i51, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, %bb.aa, %.lr.ph221
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph225:                                        ; preds = %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit, %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit
  %.sroa.0139.0224 = phi ptr [ %i.jq, %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit ], [ %i.ij, %_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0139.0224, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !83 ; 6 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 7 uses
  %.041.i.i = load ptr, ptr %i.in, align 8, !tbaa !72 ; 3 uses
  %.not42.i.i = icmp eq ptr %.041.i.i, null
  br i1 %.not42.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph225, %bb.ba
  %.044.i.i = phi ptr [ %.0.i.i, %bb.ba ], [ %.041.i.i, %.lr.ph225 ] ; 7 uses
  %.02243.i.i = phi ptr [ %.123.i.i, %bb.ba ], [ %i.io, %.lr.ph225 ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !83 ; 2 uses
  %i.ir = icmp ult ptr %i.iq, %i.hx
  br i1 %i.ir, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i
  %i.is = icmp ult ptr %i.hx, %i.iq
  br i1 %i.is, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.it = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !91 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !92 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i135

.lr.ph.i.i.i135:                                  ; preds = %bb.az, %.lr.ph.i.i.i135
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i135 ], [ %i.iu, %bb.az ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i135 ], [ %.044.i.i, %bb.az ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !83
  %i.iz = icmp ult ptr %i.iy, %i.hx               ; 2 uses
  %.19.i.i.i = select i1 %i.iz, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.iz, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i136, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i135, !llvm.loop !4

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i135, %bb.az
  %.08.lcssa.i.i.i = phi ptr [ %.044.i.i, %bb.az ], [ %.19.i.i.i, %.lr.ph.i.i.i135 ] ; 2 uses
  %.not10.i24.i.i = icmp eq ptr %i.iw, null
  br i1 %.not10.i24.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %.lr.ph.i25.i.i
  %.012.i26.i.i = phi ptr [ %.1.i31.i.i, %.lr.ph.i25.i.i ], [ %i.iw, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ] ; 3 uses
  %.0811.i27.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !83
  %i.jc = icmp ult ptr %i.hx, %i.jb               ; 2 uses
  %.19.i28.i.i = select i1 %i.jc, ptr %.012.i26.i.i, ptr %.0811.i27.i.i ; 2 uses
  %.1.in.v.i29.i.i = select i1 %i.jc, i64 16, i64 24
  %.1.in.i30.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 %.1.in.v.i29.i.i
  %.1.i31.i.i = load ptr, ptr %.1.in.i30.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.1.i31.i.i, null
  br i1 %.not.i32.i.i, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i25.i.i, !llvm.loop !5

bb.ba:                                            ; preds = %bb.ay, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 24, %.lr.ph.i.i ], [ 16, %bb.ay ]
  %.123.i.i = phi ptr [ %.02243.i.i, %.lr.ph.i.i ], [ %.044.i.i, %bb.ay ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.jd, align 8, !tbaa !72 ; 2 uses
  %.not.i.i138 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i138, label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i: ; preds = %bb.ba, %.lr.ph.i25.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %.lr.ph225
  %.sroa.037.0.i.i = phi ptr [ %.08.lcssa.i.i.i, %.lr.ph.i25.i.i ], [ %.08.lcssa.i.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.io, %.lr.ph225 ], [ %.123.i.i, %bb.ba ] ; 3 uses
  %.sroa.3.0.i.i137 = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.io, %.lr.ph225 ], [ %.123.i.i, %bb.ba ] ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.im, i64 40 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.im, i64 24 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !67
  %i.jh = icmp eq ptr %.sroa.037.0.i.i, %i.jg
  %i.ji = icmp eq ptr %.sroa.3.0.i.i137, %i.io
  %or.cond.i = select i1 %i.jh, i1 %i.ji, i1 false
  br i1 %or.cond.i, label %bb.bb, label %.critedge.i.i

bb.bb:                                            ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  invoke void @_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.im, ptr noundef %.041.i.i)
          to label %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #24
  unreachable

_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i: ; preds = %bb.bb
  store ptr null, ptr %i.in, align 8, !tbaa !76
  store ptr %i.io, ptr %i.jf, align 8, !tbaa !67
  %i.jl = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  store ptr %i.io, ptr %i.jl, align 8, !tbaa !77
  store i64 0, ptr %i.je, align 8, !tbaa !73
  br label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit

.critedge.i.i:                                    ; preds = %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  %.not8.i.i = icmp eq ptr %.sroa.037.0.i.i, %.sroa.3.0.i.i137
  br i1 %.not8.i.i, label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i2.i
  %.sroa.06.09.i.i = phi ptr [ %i.jm, %.lr.ph.i2.i ], [ %.sroa.037.0.i.i, %.critedge.i.i ] ; 2 uses
  %i.jm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i) #22 ; 2 uses
  %i.jn = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.io) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 40) #19
  %i.jo = load i64, ptr %i.je, align 8, !tbaa !73
  %i.jp = add i64 %i.jo, -1
  store i64 %i.jp, ptr %i.je, align 8, !tbaa !73
  %.not.i3.i = icmp eq ptr %i.jm, %.sroa.3.0.i.i137
  br i1 %.not.i3.i, label %_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i, !llvm.loop !7

_ZNSt3setIP4nodeSt4lessIS1_ESaIS1_EE5eraseERKS1_.exit: ; preds = %.lr.ph.i2.i, %_ZNSt8_Rb_treeIP4nodeS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i, %.critedge.i.i
  %i.jq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0139.0224) #22 ; 2 uses
  %.not179 = icmp eq ptr %i.jq, %i.ik
  br i1 %.not179, label %.loopexit, label %.lr.ph225

.critedge:                                        ; preds = %.loopexit, %bb.aw, %bb.av, %.preheader181
  %.lcssa = phi i1 [ false, %.preheader181 ], [ true, %bb.av ], [ %i.ic, %bb.aw ], [ %i.ic, %.loopexit ]
  call void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.jr = load ptr, ptr %i.c, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.jr)
          to label %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit unwind label %bb.bd

bb.bd:                                            ; preds = %.critedge
  %i.js = landingpad { ptr, i32 }
          catch ptr null
  %i.jt = extractvalue { ptr, i32 } %i.js, 0
  call void @__clang_call_terminate(ptr %i.jt) #24
  unreachable

_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i1 %.lcssa

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i53, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i99, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i77, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn35.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp378, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gq, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i99 ], [ %i.fs, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i77 ], [ %i.dr, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i53 ], [ %i.ct, %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrI4nodeSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn35.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !68     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = icmp ult ptr %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !8

_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !68
  store ptr %i.n, ptr %i.m, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !95
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.w = icmp ult ptr %i.t, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !73
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !73
  br label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #19
  br label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

declare noundef ptr @_ZN5Block19findMinInConstraintEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare void @_ZN5Block21deleteMinInConstraintEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare noundef ptr @_ZN5Block20findMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare void @_ZN5Block22deleteMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIP5BlockP4nodeSt4lessIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeIP5BlockSt4pairIKS1_P4nodeESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4VPSCD2Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4VPSC, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6BlocksD1Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4VPSCD0Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4VPSC, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6BlocksD1Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %i.a) #20, !inline_history !41
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7IncVPSCD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV7IncVPSC, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit:      ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV4VPSC, i64 16), ptr %0, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6BlocksD1Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %i.h) #20, !inline_history !41
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7IncVPSCD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV7IncVPSC, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN7IncVPSCD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
end_hunk_1
