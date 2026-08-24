Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/blocks?download=true
inline.NumInlined: 195
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Blocks10mergeRightEP5Block:bb.a

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01026 = phi ptr [ %i.ax, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %.02325 = phi ptr [ %.1, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01026, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !80
  %i.j = fadd double %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01026, i64 16 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !81
  %i.m = fsub double %i.j, %i.l
  %i.n = load ptr, ptr %.01026, align 8, !tbaa !82 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !80
  %i.u = fadd double %i.r, %i.t
  %i.v = fcmp olt double %i.m, %i.u
  br i1 %i.v, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN5Block22deleteMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %.02325)
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78   ; 5 uses
  tail call void @_ZN5Block19setUpOutConstraintsEv(ptr noundef nonnull align 8 dereferenceable(112) %i.y)
  %i.z = load ptr, ptr %.01026, align 8, !tbaa !82
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !80
  %i.ac = load double, ptr %i.k, align 8, !tbaa !81
  %i.ad = fadd double %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !80
  %i.ah = fsub double %i.ad, %i.ag                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02325, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83
  %i.ak = load ptr, ptr %.02325, align 8, !tbaa !42
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ugt i64 %i.an, %i.at               ; 3 uses
  %i.av = fneg double %i.ah
  %.1 = select i1 %i.au, ptr %i.y, ptr %.02325    ; 4 uses
  %.022 = select i1 %i.au, ptr %.02325, ptr %i.y  ; 3 uses
  %.0 = select i1 %i.au, double %i.av, double %i.ah
  tail call void @_ZN5Block5mergeEPS_P10Constraintd(ptr noundef nonnull align 8 dereferenceable(112) %.1, ptr noundef nonnull %.022, ptr noundef nonnull %.01026, double noundef %.0)
  tail call void @_ZN5Block8mergeOutEPS_(ptr noundef nonnull align 8 dereferenceable(112) %.1, ptr noundef nonnull %.022)
  %i.aw = getelementptr inbounds nuw i8, ptr %.022, i64 48
  store i8 1, ptr %i.aw, align 8, !tbaa !84
  %i.ax = tail call noundef ptr @_ZN5Block20findMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112) %.1) ; 2 uses
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !86

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

declare void @_ZN5Block19setUpOutConstraintsEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare noundef ptr @_ZN5Block20findMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare void @_ZN5Block22deleteMinOutConstraintEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

declare void @_ZN5Block8mergeOutEPS_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Blocks7cleanupEv(ptr noundef nonnull align 8 dereferenceable(60) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not7 = icmp eq ptr %i.b, %i.c
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.04.08 = phi ptr [ %i.b, %.lr.ph ], [ %i.j, %bb.g ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !84, !range !71, !noundef !72
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.08) #12 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.04.08, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #14
  %i.l = load i64, ptr %i.d, align 8, !tbaa !18
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit.i:    ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #14
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit2.i

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit2.i:   ; preds = %bb.e, %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit.i
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !42  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i3.i, label %_ZN5BlockD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit2.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #14
  br label %_ZN5BlockD2Ev.exit

_ZN5BlockD2Ev.exit:                               ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit2.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 112) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZN5BlockD2Ev.exit
  %.not = icmp eq ptr %i.j, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !87
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Blocks5splitEP5BlockRS1_S2_P10Constraint(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5Block5splitERPS_S1_P10Constraint(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !79 ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !33     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store double %i.b, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load double, ptr %i.e, align 8, !tbaa !88
  %i.g = fmul double %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double %i.g, ptr %i.h, align 8, !tbaa !89
  %i.i = load ptr, ptr %2, align 8, !tbaa !33
  tail call void @_ZN6Blocks9mergeLeftEP5Block(ptr nonnull align 8 poison, ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !33
  %i.n = tail call noundef double @_ZN5Block23desiredWeightedPositionEv(ptr noundef nonnull align 8 dereferenceable(112) %i.m) ; 2 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !33     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store double %i.n, ptr %i.p, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !88
  %i.s = fdiv double %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store double %i.s, ptr %i.t, align 8, !tbaa !79
  tail call void @_ZN6Blocks10mergeRightEP5Block(ptr nonnull align 8 poison, ptr noundef %i.o)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 1, ptr %i.u, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.02022.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !32 ; 3 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %5 = load ptr, ptr %2, align 8, !tbaa !33       ; 2 uses
  br label %.lr.ph.i.i.i.a

.lr.ph.i.i.i.a:                                   ; preds = %.lr.ph.i.i.i.a, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %.lr.ph.i.i.i.a ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 2 uses
  %i.z = icmp ult ptr %5, %i.y                    ; 2 uses
  %.in.v.i.i.i = select i1 %i.z, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.a, !llvm.loop !35

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.a
  br i1 %i.z, label %._crit_edge.thread.i.i.i, label %bb.c

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.a
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.w, %bb.a ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16
  %i.ac = icmp eq ptr %.019.lcssa29.i.i.i, %i.ab
  br i1 %i.ac, label %select.unfold.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #12
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !33
  %.pre.i.i.a = load ptr, ptr %2, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i
  %6 = phi ptr [ %.pre.i.i.a, %bb.b ], [ %5, %._crit_edge.i.i.i ]
  %i.ae = phi ptr [ %.pre.i.i, %bb.b ], [ %i.y, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.b ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.af = icmp ult ptr %i.ae, %6
  br i1 %i.af, label %select.unfold.i.i, label %_ZNSt3setIP5BlockSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

select.unfold.i.i:                                ; preds = %bb.c, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.c ] ; 3 uses
  %i.ag = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.w
  br i1 %i.ag, label %_ZNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %select.unfold.i.i
  %7 = load ptr, ptr %2, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.aj = icmp ult ptr %7, %i.ai
  br label %_ZNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.d, %select.unfold.i.i
  %i.ak = phi i1 [ %i.aj, %bb.d ], [ true, %select.unfold.i.i ]
  %i.al = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %8 = load ptr, ptr %2, align 8, !tbaa !33
  store ptr %8, ptr %i.am, align 8, !tbaa !33
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ak, ptr noundef nonnull %i.al, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.w) #13
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !18
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !18
  %.02022.i.i.i24.pre = load ptr, ptr %i.v, align 8, !tbaa !32
  br label %_ZNSt3setIP5BlockSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

_ZNSt3setIP5BlockSt4lessIS1_ESaIS1_EE6insertERKS1_.exit: ; preds = %bb.c, %_ZNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %.02022.i.i.i24 = phi ptr [ %.02022.i.i.i, %bb.c ], [ %.02022.i.i.i24.pre, %_ZNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i ] ; 2 uses
  %.not23.i.i.i25 = icmp eq ptr %.02022.i.i.i24, null
  br i1 %.not23.i.i.i25, label %._crit_edge.thread.i.i.i43, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZNSt3setIP5BlockSt4lessIS1_ESaIS1_EE6insertERKS1_.exit
  %9 = load ptr, ptr %3, align 8, !tbaa !33       ; 2 uses
  br label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %.lr.ph.i.i.i27, %.lr.ph.i.i.i26
  %.02024.i.i.i28 = phi ptr [ %.02022.i.i.i24, %.lr.ph.i.i.i26 ], [ %.020.i.i.i31, %.lr.ph.i.i.i27 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02024.i.i.i28, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 2 uses
  %i.as = icmp ult ptr %9, %i.ar                  ; 2 uses
  %.in.v.i.i.i29 = select i1 %i.as, i64 16, i64 24
  %.in.i.i.i30 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i28, i64 %.in.v.i.i.i29
  %.020.i.i.i31 = load ptr, ptr %.in.i.i.i30, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %.020.i.i.i31, null
  br i1 %.not.i.i.i32, label %._crit_edge.i.i.i33, label %.lr.ph.i.i.i27, !llvm.loop !35

._crit_edge.i.i.i33:                              ; preds = %.lr.ph.i.i.i27
  br i1 %i.as, label %._crit_edge.thread.i.i.i43, label %bb.f

._crit_edge.thread.i.i.i43:                       ; preds = %._crit_edge.i.i.i33, %_ZNSt3setIP5BlockSt4lessIS1_ESaIS1_EE6insertERKS1_.exit
  %.019.lcssa29.i.i.i44 = phi ptr [ %.02024.i.i.i28, %._crit_edge.i.i.i33 ], [ %i.w, %_ZNSt3setIP5BlockSt4lessIS1_ESaIS1_EE6insertERKS1_.exit ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !16
  %i.av = icmp eq ptr %.019.lcssa29.i.i.i44, %i.au
  br i1 %i.av, label %select.unfold.i.i40, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i.i43
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i44) #12
  %.phi.trans.insert.i.i45 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.pre.i.i45 = load ptr, ptr %.phi.trans.insert.i.i45, align 8, !tbaa !33
  %.pre.i.i46 = load ptr, ptr %3, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i33
  %10 = phi ptr [ %.pre.i.i46, %bb.e ], [ %9, %._crit_edge.i.i.i33 ]
  %i.ax = phi ptr [ %.pre.i.i45, %bb.e ], [ %i.ar, %._crit_edge.i.i.i33 ]
  %.019.lcssa28.i.i.i34 = phi ptr [ %.019.lcssa29.i.i.i44, %bb.e ], [ %.02024.i.i.i28, %._crit_edge.i.i.i33 ]
  %i.ay = icmp ult ptr %i.ax, %10
  br i1 %i.ay, label %select.unfold.i.i40, label %_ZNSt3setIP5BlockSt4lessIS1_ESaIS1_EE6insertERKS1_.exit47

select.unfold.i.i40:                              ; preds = %bb.f, %._crit_edge.thread.i.i.i43
  %.sroa.4.0.i.ph.i.i41 = phi ptr [ %.019.lcssa29.i.i.i44, %._crit_edge.thread.i.i.i43 ], [ %.019.lcssa28.i.i.i34, %bb.f ] ; 3 uses
  %i.az = icmp eq ptr %.sroa.4.0.i.ph.i.i41, %i.w
  br i1 %i.az, label %_ZNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i42, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i40
  %11 = load ptr, ptr %3, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i41, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !33
  %i.bc = icmp ult ptr %11, %i.bb
  br label %_ZNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i42

_ZNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i42: ; preds = %bb.g, %select.unfold.i.i40
  %i.bd = phi i1 [ %i.bc, %bb.g ], [ true, %select.unfold.i.i40 ]
  %i.be = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %12 = load ptr, ptr %3, align 8, !tbaa !33
  store ptr %12, ptr %i.bf, align 8, !tbaa !33
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bd, ptr noundef nonnull %i.be, ptr noundef nonnull %.sroa.4.0.i.ph.i.i41, ptr noundef nonnull align 8 dereferenceable(32) %i.w) #13
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !18
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !18
  br label %_ZNSt3setIP5BlockSt4lessIS1_ESaIS1_EE6insertERKS1_.exit47

_ZNSt3setIP5BlockSt4lessIS1_ESaIS1_EE6insertERKS1_.exit47: ; preds = %bb.f, %_ZNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i42
  ret void
}

declare void @_ZN5Block5splitERPS_S1_P10Constraint(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef double @_ZN5Block23desiredWeightedPositionEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef double @_ZN6Blocks4costEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(60) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not9 = icmp eq ptr %i.b, %i.c
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.g, %.lr.ph ]
  ret double %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi double [ %i.g, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %.sroa.06.010 = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = tail call noundef double @_ZN5Block4costEv(ptr noundef nonnull align 8 dereferenceable(112) %i.e)
  %i.g = fadd double %.011, %i.f                  ; 2 uses
  %i.h = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.010) #12 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef double @_ZN5Block4costEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  tail call void @_ZNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #14
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 0}
!9 = !{!"_ZTSSt15_Rb_tree_header", !10, i64 0, !14, i64 32}
!10 = !{!"_ZTSSt18_Rb_tree_node_base", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!11 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!12 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!9, !12, i64 8}
!16 = !{!9, !12, i64 16}
!17 = !{!9, !12, i64 24}
!18 = !{!9, !14, i64 32}
!19 = !{!20, !26, i64 48}
!20 = !{!"_ZTS6Blocks", !21, i64 0, !26, i64 48, !5, i64 56}
!21 = !{!"_ZTSSt3setIP5BlockSt4lessIS1_ESaIS1_EE", !22, i64 0}
!22 = !{!"_ZTSSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE", !23, i64 0}
!23 = !{!"_ZTSNSt8_Rb_treeIP5BlockS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEE", !24, i64 0, !9, i64 8}
!24 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIP5BlockEE", !25, i64 0}
!25 = !{!"_ZTSSt4lessIP5BlockE"}
!26 = !{!"p2 _ZTS8Variable", !27, i64 0}
!27 = !{!"any p2 pointer", !13, i64 0}
!28 = !{!20, !5, i64 56}
!29 = !{!14, !14, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS8Variable", !13, i64 0}
!32 = !{!12, !12, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTS5Block", !13, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIP10ConstraintSaIS1_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p2 _ZTS10Constraint", !27, i64 0}
!41 = !{!39, !40, i64 16}
!42 = !{!43, !26, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!44 = !{!43, !26, i64 16}
!45 = !{!46, !47, i64 8}
!46 = !{!"_ZTSNSt8__detail15_List_node_baseE", !47, i64 0, !47, i64 8}
!47 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !13, i64 0}
!48 = !{!46, !47, i64 0}
!49 = !{!50, !14, i64 16}
!50 = !{!"_ZTSNSt8__detail17_List_node_headerE", !46, i64 0, !14, i64 16}
!51 = !{!52, !54, i64 40}
!52 = !{!"_ZTS8Variable", !5, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !34, i64 32, !54, i64 40, !55, i64 48, !55, i64 72}
!53 = !{!"double", !6, i64 0}
!54 = !{!"bool", !6, i64 0}
!55 = !{!"_ZTSSt6vectorIP10ConstraintSaIS1_EE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIP10ConstraintSaIS1_EE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIP10ConstraintSaIS1_EE12_Vector_implE", !39, i64 0}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !36}
!61 = !{!40, !40, i64 0}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !36}
!64 = !{!65, !14, i64 16}
!65 = !{!"_ZTSNSt7__cxx1110_List_baseIP8VariableSaIS2_EEE", !66, i64 0}
!66 = !{!"_ZTSNSt7__cxx1110_List_baseIP8VariableSaIS2_EE10_List_implE", !50, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTS10Constraint", !13, i64 0}
!69 = !{!70, !31, i64 8}
!70 = !{!"_ZTS10Constraint", !31, i64 0, !31, i64 8, !53, i64 16, !53, i64 24, !14, i64 32, !54, i64 40, !54, i64 41}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!74, !14, i64 56}
!74 = !{!"_ZTS5Block", !75, i64 0, !53, i64 24, !53, i64 32, !53, i64 40, !54, i64 48, !14, i64 56, !55, i64 64, !55, i64 88}
!75 = !{!"_ZTSSt6vectorIP8VariableSaIS1_EE", !76, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIP8VariableSaIS1_EE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE12_Vector_implE", !43, i64 0}
!78 = !{!52, !34, i64 32}
!79 = !{!74, !53, i64 24}
!80 = !{!52, !53, i64 24}
!81 = !{!70, !53, i64 16}
!82 = !{!70, !31, i64 0}
!83 = !{!43, !26, i64 8}
!84 = !{!74, !54, i64 48}
end_hunk_0
