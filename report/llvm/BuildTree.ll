Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BuildTree?download=true
inline.NumInlined: 20123
inline.NumDeleted: 9023
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang6syntax11TreeBuilder6Forest12foldChildrenERKNS0_11TokenBufferEN4llvm8ArrayRefINS0_5TokenEEEPNS0_4TreeE:bb.a
  %.1.i.i.i14 = load ptr, ptr %.1.in.i.i.i13, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %.1.i.i.i14, null
  br i1 %.not.i.i.i15, label %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit17, label %bb.b, !llvm.loop !0

_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit17: ; preds = %bb.b
  %.not43 = icmp eq ptr %.19.i.i.i, %.19.i.i.i11
  br i1 %.not43, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.a, %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit17
  %.not4354 = phi i1 [ true, %bb.a ], [ true, %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit17 ], [ false, %bb.i ]
  %.08.lcssa.i.i.i1653 = phi ptr [ %i.c, %bb.a ], [ %.19.i.i.i11, %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit17 ], [ %.19.i.i.i11, %bb.i ] ; 2 uses
  %.08.lcssa.i.i.i4152 = phi ptr [ %i.c, %bb.a ], [ %.19.i.i.i, %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit17 ], [ %.19.i.i.i, %bb.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = or i32 %i.l, 16777216
  store i32 %i.m, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZNK5clang6syntax11TokenBuffer18spelledForExpandedEN4llvm8ArrayRefINS0_5TokenEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %2, i64 %3) #19
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !129, !range !130, !noundef !99
  %i.p = load i32, ptr %i.k, align 8
  %i.q = zext nneg i8 %i.o to i32
  %i.r = shl nuw nsw i32 %i.q, 25
  %i.s = and i32 %i.p, -33554433
  %i.t = or disjoint i32 %i.s, %i.r
  store i32 %i.t, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !131
  %i.w = icmp eq ptr %.08.lcssa.i.i.i4152, %i.v
  %i.x = icmp eq ptr %.08.lcssa.i.i.i1653, %i.c
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %._crit_edge
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !63
  call void @_ZNSt8_Rb_treeIPKN5clang6syntax5TokenESt4pairIKS4_PNS1_4NodeEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.y)
  store ptr null, ptr %i.a, align 8, !tbaa !63
  store ptr %i.c, ptr %i.u, align 8, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.z, align 8, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.aa, align 8, !tbaa !133
  br label %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE5eraseESt23_Rb_tree_const_iteratorISB_ESF_.exit

.critedge.i.i.i:                                  ; preds = %._crit_edge
  br i1 %.not4354, label %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE5eraseESt23_Rb_tree_const_iteratorISB_ESF_.exit, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.critedge.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i18
  %.sroa.06.09.i.i.i = phi ptr [ %.08.lcssa.i.i.i4152, %.lr.ph.i.i.i18 ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ac = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i.i) #20 ; 2 uses
  %i.ad = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 48) #21
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !133
  %i.af = add i64 %i.ae, -1
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !133
  %.not.i.i.i19 = icmp eq ptr %i.ac, %.08.lcssa.i.i.i1653
  br i1 %.not.i.i.i19, label %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE5eraseESt23_Rb_tree_const_iteratorISB_ESF_.exit, label %bb.d, !llvm.loop !853

_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE5eraseESt23_Rb_tree_const_iteratorISB_ESF_.exit: ; preds = %bb.d, %bb.c, %.critedge.i.i.i
  %.02022.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !65 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE5eraseESt23_Rb_tree_const_iteratorISB_ESF_.exit, %.lr.ph.i.i.i20
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i20 ], [ %.02022.i.i.i, %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE5eraseESt23_Rb_tree_const_iteratorISB_ESF_.exit ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64 ; 2 uses
  %i.ai = icmp ult ptr %2, %i.ah                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.ai, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i21, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i20, !llvm.loop !1

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i20
  br i1 %i.ai, label %._crit_edge.thread.i.i.i, label %bb.f

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE5eraseESt23_Rb_tree_const_iteratorISB_ESF_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.c, %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE5eraseESt23_Rb_tree_const_iteratorISB_ESF_.exit ] ; 4 uses
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !131
  %i.ak = icmp eq ptr %.019.lcssa29.i.i.i, %i.aj
  br i1 %i.ak, label %select.unfold.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.al = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #20
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %i.am = phi ptr [ %.pre.i.i, %bb.e ], [ %i.ah, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.e ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.an = icmp ult ptr %i.am, %2
  br i1 %i.an, label %select.unfold.i.i, label %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE6insertEOSB_.exit

select.unfold.i.i:                                ; preds = %bb.f, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.f ] ; 3 uses
  %i.ao = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.c
  br i1 %i.ao, label %_ZNSt8_Rb_treeIPKN5clang6syntax5TokenESt4pairIKS4_PNS1_4NodeEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE10_M_insert_IS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64
  %i.ar = icmp ult ptr %2, %i.aq
  br label %_ZNSt8_Rb_treeIPKN5clang6syntax5TokenESt4pairIKS4_PNS1_4NodeEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE10_M_insert_IS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIPKN5clang6syntax5TokenESt4pairIKS4_PNS1_4NodeEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE10_M_insert_IS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold.i.i
  %i.as = phi i1 [ %i.ar, %bb.g ], [ true, %select.unfold.i.i ]
  %i.at = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %2, ptr %i.au, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %4, ptr %.sroa.7.0..sroa_idx, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.at, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !133
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !133
  br label %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE6insertEOSB_.exit

_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE6insertEOSB_.exit: ; preds = %bb.f, %_ZNSt8_Rb_treeIPKN5clang6syntax5TokenESt4pairIKS4_PNS1_4NodeEESt10_Select1stIS9_ESt4lessIS4_ESaIS9_EE10_M_insert_IS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSL_OT_RT0_.exit.i.i
  ret void

.lr.ph:                                           ; preds = %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit17, %bb.i
  %.sroa.025.044 = phi ptr [ %i.be, %bb.i ], [ %.19.i.i.i, %_ZNSt3mapIPKN5clang6syntax5TokenEPNS1_4NodeESt4lessIS4_ESaISt4pairIKS4_S6_EEE11lower_boundERSA_.exit17 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.025.044, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !69 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = and i32 %i.bb, 16711680
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  tail call void @_ZN5clang6syntax4Node7setRoleENS0_8NodeRoleE(ptr noundef nonnull align 8 dereferenceable(28) %i.az, i8 noundef zeroext 1) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  tail call void @_ZN5clang6syntax4Tree19appendChildLowLevelEPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.az) #19
  %i.be = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.025.044) #20 ; 2 uses
  %.not = icmp eq ptr %i.be, %.19.i.i.i11
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !854
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZL14IgnoreImplicitPN5clang4ExprE(ptr nofree noundef nonnull readonly captures(address, ret: address, provenance) %0) unnamed_addr #2 {
bb.a:
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZL46IgnoreCXXFunctionalCastExprWrappingConstructorPN5clang4ExprE.exit
  %.01012.i = phi ptr [ %i.ao, %_ZL46IgnoreCXXFunctionalCastExprWrappingConstructorPN5clang4ExprE.exit ], [ %0, %bb.a ] ; 7 uses
  %i.a = load i16, ptr %.01012.i, align 8         ; 2 uses
  %i.b = and i16 %i.a, 511                        ; 2 uses
  %i.c = icmp eq i16 %i.b, 81
  %i.d = and i16 %i.a, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i16 %i.d, 62
  %or.cond.i.i = or i1 %i.c, %spec.select.i.i.i.i.i.i.i.i.not.i.i
  br i1 %or.cond.i.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i: ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.01012.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135  ; 2 uses
  %.not.i2 = icmp eq ptr %i.f, %.01012.i
  br i1 %.not.i2, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i, label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i, %.lr.ph.i
  switch i16 %i.b, label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit [
    i16 50, label %bb.b
    i16 120, label %bb.e
  ]

bb.b:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i
  %i.g = getelementptr inbounds nuw i8, ptr %.01012.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 3 uses
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

bb.d:                                             ; preds = %bb.b
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !147
  br label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

bb.e:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.01012.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !858
  br label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i, %bb.c, %bb.d, %bb.e
  %.2.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %.01012.i, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i ] ; 9 uses
  %i.q = load i16, ptr %.2.i, align 8             ; 4 uses
  %i.r = and i16 %i.q, 511                        ; 3 uses
  %i.s = add nsw i16 %i.r, -119
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.s, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZL35IgnoreImplicitConstructorSingleStepPN5clang4ExprE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.2.i, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !157
  switch i32 %i.u, label %bb.g [
    i32 1, label %.critedge3.i
    i32 0, label %_ZL35IgnoreImplicitConstructorSingleStepPN5clang4ExprE.exit
  ]

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i16 %i.r, 118
  %1 = select i1 %.not.i.i.i.i, i64 56, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %.2.i, i64 %1
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !159
  %i.x = load i16, ptr %i.w, align 8
  %i.y = and i16 %i.x, 511
  %i.z = icmp eq i16 %i.y, 116
  br i1 %i.z, label %.critedge3.i, label %_ZL35IgnoreImplicitConstructorSingleStepPN5clang4ExprE.exit

.critedge3.i:                                     ; preds = %bb.g, %bb.f
  %.not.i.i.i24.i = icmp eq i16 %i.r, 118
  %spec.select.v.i.i.i25.i = select i1 %.not.i.i.i24.i, i64 48, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %.2.i, i64 %spec.select.v.i.i.i25.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %.2.i, i64 24
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ac, align 8 ; 2 uses
  %i.ad = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = icmp ugt i64 %.sroa.0.0.copyload.i.i, 4294967295
  %.not2.i.not.i = and i1 %i.af, %i.ae
  %cond.fr.i = freeze i1 %.not2.i.not.i
  %spec.select.i = select i1 %cond.fr.i, ptr %.2.i, ptr %i.ab ; 2 uses
  %.pre = load i16, ptr %spec.select.i, align 8
  br label %_ZL35IgnoreImplicitConstructorSingleStepPN5clang4ExprE.exit

_ZL35IgnoreImplicitConstructorSingleStepPN5clang4ExprE.exit: ; preds = %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit, %bb.f, %bb.g, %.critedge3.i
  %i.ag = phi i16 [ %.pre, %.critedge3.i ], [ %i.q, %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit ], [ %i.q, %bb.f ], [ %i.q, %bb.g ]
  %i.ah = phi ptr [ %spec.select.i, %.critedge3.i ], [ %.2.i, %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit ], [ %.2.i, %bb.f ], [ %.2.i, %bb.g ] ; 4 uses
  %i.ai = and i16 %i.ag, 511
  %.not.i1 = icmp eq i16 %i.ai, 88
  br i1 %.not.i1, label %bb.h, label %_ZL46IgnoreCXXFunctionalCastExprWrappingConstructorPN5clang4ExprE.exit

bb.h:                                             ; preds = %_ZL35IgnoreImplicitConstructorSingleStepPN5clang4ExprE.exit
  %i.aj = load i32, ptr %i.ah, align 8
  %i.ak = and i32 %i.aj, 66584576
  %i.al = icmp eq i32 %i.ak, 10485760
  br i1 %i.al, label %bb.i, label %_ZL46IgnoreCXXFunctionalCastExprWrappingConstructorPN5clang4ExprE.exit

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !859
  br label %_ZL46IgnoreCXXFunctionalCastExprWrappingConstructorPN5clang4ExprE.exit

_ZL46IgnoreCXXFunctionalCastExprWrappingConstructorPN5clang4ExprE.exit: ; preds = %_ZL35IgnoreImplicitConstructorSingleStepPN5clang4ExprE.exit, %bb.h, %bb.i
  %i.ao = phi ptr [ %i.an, %bb.i ], [ %i.ah, %bb.h ], [ %i.ah, %_ZL35IgnoreImplicitConstructorSingleStepPN5clang4ExprE.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ao, %.01012.i
  br i1 %.not.i, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_ES4_S4_EEES2_S2_DpOT_.exit, label %.lr.ph.i, !llvm.loop !855

_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_ES4_S4_EEES2_S2_DpOT_.exit: ; preds = %_ZL46IgnoreCXXFunctionalCastExprWrappingConstructorPN5clang4ExprE.exit
  ret ptr %i.ao
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang6syntax15buildSyntaxTreeERNS0_5ArenaERNS0_23TokenBufferTokenManagerERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(23904) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.std::pair.25", align 8     ; 5 uses
  %4 = alloca %"class.clang::syntax::TreeBuilder", align 8 ; 10 uses
  %5 = alloca %"class.(anonymous namespace)::BuildTreeVisitor", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %0, ptr %4, align 8, !tbaa !865
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !866
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123, !nonnull !99, !align !100
  call void @_ZN5clang6syntax11TreeBuilder6ForestC2ERNS0_5ArenaERKNS0_11TokenBufferE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !123, !nonnull !99, !align !100 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !163  ; 2 uses
  %.not18.i = icmp eq ptr %i.h, %i.j
  br i1 %.not18.i, label %_ZN5clang6syntax11TreeBuilderC2ERNS0_5ArenaERNS0_23TokenBufferTokenManagerE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.019.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.m, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %.sroa.0.0.copyload.i.i = load i32, ptr %.019.i, align 4, !tbaa !50
  store i32 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !tbaa !50
  store ptr %.019.i, ptr %i.k, align 8, !tbaa !57
  %i.l = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang14SourceLocationEPKNS2_6syntax5TokenENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIS3_JS7_EEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.k), !noalias !867 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.m = getelementptr inbounds nuw i8, ptr %.019.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.j
  br i1 %.not.i, label %_ZN5clang6syntax11TreeBuilderC2ERNS0_5ArenaERNS0_23TokenBufferTokenManagerE.exit, label %bb.b

_ZN5clang6syntax11TreeBuilderC2ERNS0_5ArenaERNS0_23TokenBufferTokenManagerE.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %4, ptr %5, align 8, !tbaa !868
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.n, align 8, !tbaa !869
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2536
  %.val = load ptr, ptr %i.o, align 8, !tbaa !870
  %i.p = getelementptr i8, ptr %.val, i64 80
  %.val.val = load ptr, ptr %i.p, align 8, !tbaa !871 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.val, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.q, align 8 ; 3 uses
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %i.s = icmp eq i64 %i.r, 0
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -2
  %spec.select.i.i.i.i.i.i.i = select i1 %i.s, i64 %i.t, i64 0 ; 3 uses
  %i.u = icmp ugt i64 %spec.select.i.i.i.i.i.i.i, 3
  br i1 %i.u, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN5clang6syntax11TreeBuilderC2ERNS0_5ArenaERNS0_23TokenBufferTokenManagerE.exit
  %i.v = and i64 %spec.select.i.i.i.i.i.i.i, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.v, 0
  %i.w = and i64 %spec.select.i.i.i.i.i.i.i, -4
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_116BuildTreeVisitorEE11TraverseASTERNS_10ASTContextE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 18624
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !552  ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.not.i.i.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 2632 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !113 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = add i64 %i.ac, 24                       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 2640
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !114
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %bb.g, !prof !53

bb.f:                                             ; preds = %bb.e
  %i.ah = inttoptr i64 %i.ad to ptr
  store ptr %i.ah, ptr %i.aa, align 8, !tbaa !113
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i64 noundef 24, i64 noundef 24, i8 3) ; 2 uses
  %.pre.i.i.i.i.i.i.i = ptrtoint ptr %i.ai to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.g ], [ %i.ac, %bb.f ]
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.ab, %bb.f ] ; 3 uses
  store ptr %i.z, ptr %.0.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !554
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !555
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %.val.val, ptr %i.ak, align 8, !tbaa !556
  %i.al = or i64 %.pre-phi.i.i.i.i.i.i.i, 4
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.am = ptrtoint ptr %.val.val to i64
  br label %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i

_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %i.am, %bb.i ], [ %i.al, %bb.h ]
  %i.an = or i64 %.sroa.0.1.i.i.i.i.i.i.i, 1      ; 2 uses
  store i64 %i.an, ptr %i.q, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i, %_ZN5clang6syntax11TreeBuilderC2ERNS0_5ArenaERNS0_23TokenBufferTokenManagerE.exit
  %.0.copyload.i.i.i.i10.i.i.i.i.i = phi i64 [ %i.an, %_ZN5clang25LazyGenerationalUpdatePtrIPKNS_4DeclEPS1_XadL_ZNS_17ExternalASTSource19CompleteRedeclChainES3_EEEC2ERKNS_10ASTContextES4_.exit.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %_ZN5clang6syntax11TreeBuilderC2ERNS0_5ArenaERNS0_23TokenBufferTokenManagerE.exit ] ; 2 uses
  %i.ao = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ao, 0
  %i.ap = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, -6 ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 4 uses
  %.not.not14.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  %.not.not.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i, %.not.not14.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_116BuildTreeVisitorEE11TraverseASTERNS_10ASTContextE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !555
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !554 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !559 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i32 %i.as, %i.av
  br i1 %.not12.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.av, ptr %i.ar, align 8, !tbaa !555
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !561
  %i.ax = getelementptr i8, ptr %i.aw, i64 152, !nosanitize !99
  %i.ay = load ptr, ptr %i.ax, align 8, !nosanitize !99
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull %.val.val) #19, !inline_history !864
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !556
  br label %_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_116BuildTreeVisitorEE11TraverseASTERNS_10ASTContextE.exit

_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_116BuildTreeVisitorEE11TraverseASTERNS_10ASTContextE.exit: ; preds = %bb.c, %bb.j, %bb.m
  %.3.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.ba, %bb.m ], [ %i.aq, %bb.j ]
  %i.bb = call fastcc noundef zeroext i1 @_ZN5clang19RecursiveASTVisitorIN12_GLOBAL__N_116BuildTreeVisitorEE12TraverseDeclEPNS_4DeclE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %.3.i.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bc = call noundef ptr @_ZNO5clang6syntax11TreeBuilder8finalizeEv(ptr noundef nonnull align 8 dereferenceable(160) %4)
  call void @_ZN5clang6syntax11TreeBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret ptr %i.bc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNO5clang6syntax11TreeBuilder8finalizeEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115, !nonnull !99, !align !100
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123, !nonnull !99, !align !100 ; 3 uses
end_hunk_0
