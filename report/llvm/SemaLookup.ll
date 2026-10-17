Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaLookup?download=true
inline.NumInlined: 15494
inline.NumDeleted: 5921
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN4llvm8SmallSetIN5clang14SourceLocationELj2ESt4lessIS2_EE10insertImplIRKS2_EESt4pairINS_16SmallSetIteratorIS2_Lj2ES4_EEbEOT_:bb.a

._crit_edge.thread.i.i.i38:                       ; preds = %._crit_edge.i.i.i28, %bb.l
  %.019.lcssa29.i.i.i39 = phi ptr [ %.02024.i.i.i23, %._crit_edge.i.i.i28 ], [ %i.ax, %bb.l ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1562
  %i.be = icmp eq ptr %.019.lcssa29.i.i.i39, %i.bd
  br i1 %i.be, label %select.unfold.i.i35, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i38
  %i.bf = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i39) #29 ; 2 uses
  %.phi.trans.insert.i.i40 = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %.pre.i.i41 = load i32, ptr %.phi.trans.insert.i.i40, align 4, !tbaa !1367
  %.pre18.i.i42 = load i32, ptr %2, align 4, !tbaa !1367
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i28
  %i.bg = phi i32 [ %.pre18.i.i42, %bb.n ], [ %i.ay, %._crit_edge.i.i.i28 ]
  %i.bh = phi i32 [ %.pre.i.i41, %bb.n ], [ %i.ba, %._crit_edge.i.i.i28 ]
  %.019.lcssa28.i.i.i29 = phi ptr [ %.019.lcssa29.i.i.i39, %bb.n ], [ %.02024.i.i.i23, %._crit_edge.i.i.i28 ]
  %.sroa.05.0.i.i.i30 = phi ptr [ %i.bf, %bb.n ], [ %.02024.i.i.i23, %._crit_edge.i.i.i28 ]
  %i.bi = icmp ult i32 %i.bh, %i.bg
  br i1 %i.bi, label %select.unfold.i.i35, label %_ZNSt3setIN5clang14SourceLocationESt4lessIS1_ESaIS1_EE6insertERKS1_.exit

select.unfold.i.i35:                              ; preds = %bb.o, %._crit_edge.thread.i.i.i38
  %.sroa.4.0.i.ph.i.i36 = phi ptr [ %.019.lcssa29.i.i.i39, %._crit_edge.thread.i.i.i38 ], [ %.019.lcssa28.i.i.i29, %bb.o ] ; 3 uses
  %i.bj = icmp eq ptr %.sroa.4.0.i.ph.i.i36, %i.ax
  br i1 %i.bj, label %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i37, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i35
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i36, i64 32
  %i.bl = load i32, ptr %2, align 4, !tbaa !1367
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !1367
  %i.bn = icmp ult i32 %i.bl, %i.bm
  br label %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i37

_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i37: ; preds = %bb.p, %select.unfold.i.i35
  %i.bo = phi i1 [ %i.bn, %bb.p ], [ true, %select.unfold.i.i35 ]
  %i.bp = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %2, align 4, !tbaa !1167
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !1167
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bo, ptr noundef nonnull %i.bp, ptr noundef nonnull %.sroa.4.0.i.ph.i.i36, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #28
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !1564
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.a, align 8, !tbaa !1564
  br label %_ZNSt3setIN5clang14SourceLocationESt4lessIS1_ESaIS1_EE6insertERKS1_.exit

_ZNSt3setIN5clang14SourceLocationESt4lessIS1_ESaIS1_EE6insertERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i37, %bb.o, %_ZNK4llvm8SmallSetIN5clang14SourceLocationELj2ESt4lessIS2_EE5vfindERKS2_.exit, %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, %bb.e, %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit
  %.sink79 = phi i8 [ 0, %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit ], [ 1, %_ZNK4llvm8SmallSetIN5clang14SourceLocationELj2ESt4lessIS2_EE5vfindERKS2_.exit ], [ 0, %bb.e ], [ 0, %bb.o ], [ 0, %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i37 ]
  %.1.i.sink = phi ptr [ %i.w, %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i ], [ %i.au, %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit ], [ %.1.i, %_ZNK4llvm8SmallSetIN5clang14SourceLocationELj2ESt4lessIS2_EE5vfindERKS2_.exit ], [ %.sroa.05.0.i.i.i, %bb.e ], [ %.sroa.05.0.i.i.i30, %bb.o ], [ %i.bp, %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i37 ]
  %.sink = phi i8 [ 1, %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit ], [ 0, %_ZNK4llvm8SmallSetIN5clang14SourceLocationELj2ESt4lessIS2_EE5vfindERKS2_.exit ], [ 0, %bb.e ], [ 1, %bb.o ], [ 1, %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i37 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink79, ptr %i.bu, align 8, !tbaa !3090
  %i.bv = ptrtoint ptr %.1.i.sink to i64
  store i64 %i.bv, ptr %0, align 8, !tbaa !1145
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bw, align 8, !tbaa !3092
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3setIN5clang14SourceLocationESt4lessIS1_ESaIS1_EE6insertISt13move_iteratorIPS1_EEEvT_SA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not7.i = icmp eq ptr %1, %2
  br i1 %.not7.i, label %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE22_M_insert_range_uniqueISt13move_iteratorIPS1_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i64, ptr %i.b, align 8, !tbaa !1564
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i, %.lr.ph.i
  %i.f = phi i64 [ %.pre, %.lr.ph.i ], [ %i.ag, %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i ] ; 2 uses
  %.sroa.04.08.i = phi ptr [ %1, %.lr.ph.i ], [ %i.ah, %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i ] ; 6 uses
  %.not.i4 = icmp eq i64 %i.f, 0
  br i1 %.not.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !1565 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1367
  %i.j = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !1367
  %i.k = icmp ult i32 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.02022.i.i = load ptr, ptr %i.d, align 8, !tbaa !1565 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.l = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !1367 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.e ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !1367 ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !1565 ; 2 uses
  %.not.i.i5 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i5, label %._crit_edge.i.i, label %bb.e, !llvm.loop !45

._crit_edge.i.i:                                  ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.g

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.d
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !1562
  %i.q = icmp eq ptr %.019.lcssa29.i.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #29
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4, !tbaa !1367
  %.pre82.i = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !1367
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %i.s = phi i32 [ %.pre82.i, %bb.f ], [ %i.l, %._crit_edge.i.i ]
  %i.t = phi i32 [ %.pre81.i, %bb.f ], [ %i.n, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.f ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.u = icmp ult i32 %i.t, %i.s
  br i1 %i.u, label %select.unfold, label %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.g, %._crit_edge.thread.i.i, %bb.c
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.c ], [ %.019.lcssa28.i.i, %bb.g ] ; 3 uses
  %i.v = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.v, label %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.x = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !1367
  %i.y = load i32, ptr %i.w, align 4, !tbaa !1367
  %i.z = icmp ult i32 %i.x, %i.y
  br label %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.h, %select.unfold
  %i.aa = phi i1 [ %i.z, %bb.h ], [ true, %select.unfold ]
  %i.ab = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !1167
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !1167
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #28
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !1564
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !1564
  br label %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i

_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i: ; preds = %bb.g, %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.ag = phi i64 [ %i.f, %bb.g ], [ %i.af, %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, %2
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE22_M_insert_range_uniqueISt13move_iteratorIPS1_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit, label %bb.b, !llvm.loop !3093

_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE22_M_insert_range_uniqueISt13move_iteratorIPS1_EEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit: ; preds = %_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_insert_unique_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_ESt23_Rb_tree_const_iteratorIS1_EOT_RT0_.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1150
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #28
  %i.f = load ptr, ptr %0, align 8, !tbaa !1142
  %i.g = load i32, ptr %i.a, align 8, !tbaa !1150
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !1150
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !1150
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5clang17PartialDiagnosticESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1747 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1746   ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1748
  %i.i = load ptr, ptr %0, align 8, !tbaa !1746   ; 4 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN5clang17PartialDiagnosticESaIS1_EE11_M_allocateEm.exit.i, !prof !1258

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt12_Vector_baseIN5clang17PartialDiagnosticESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN5clang17PartialDiagnosticESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN5clang17PartialDiagnosticESaIS1_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN5clang17PartialDiagnosticESaIS1_EE11_M_allocateEm.exit.i ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN5clang17PartialDiagnosticESaIS1_EE11_M_allocateEm.exit.i ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16
  store i64 0, ptr %.09.i.i.i.i.i, align 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1755
  store i32 %i.s, ptr %i.q, align 8, !tbaa !1755
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1522 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1522
  %i.w = load ptr, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !1521
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.x = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.u) ; 2 uses
  store ptr %i.x, ptr %.09.i.i.i.i.i, align 8, !tbaa !1521
  %i.y = load ptr, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !1521
  %i.z = tail call noundef nonnull align 8 dereferenceable(928) ptr @_ZN5clang17DiagnosticStorageaSERKS0_(ptr noundef nonnull align 8 dereferenceable(928) %i.x, ptr noundef nonnull align 8 dereferenceable(928) %i.y) ; 0 uses
  br label %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN5clang17PartialDiagnosticEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5clang17PartialDiagnosticESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

_ZNSt6vectorIN5clang17PartialDiagnosticESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN5clang17PartialDiagnosticESaIS1_EE11_M_allocateEm.exit.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1746  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1747 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5clang17PartialDiagnosticEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5clang17PartialDiagnosticESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i ], [ %i.ac, %_ZNSt6vectorIN5clang17PartialDiagnosticESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i, align 8, !tbaa !1521 ; 6 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1522 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp uge ptr %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 14848 ; 2 uses
  %i.ak = icmp ule ptr %i.af, %i.aj
  %or.cond.i.i.i.i.i.i.i = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 14976 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1523 ; 2 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !1523
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ao
  store ptr %i.af, ptr %i.ap, align 8, !tbaa !1524
  br label %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.af) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 928) #30
  br label %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i

_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.e, %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.aq, %i.ae
  br i1 %.not.i.i26, label %_ZSt8_DestroyIPN5clang17PartialDiagnosticEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !19

_ZSt8_DestroyIPN5clang17PartialDiagnosticEEvT_S3_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1746
  br label %_ZSt8_DestroyIPN5clang17PartialDiagnosticEEvT_S3_.exit

_ZSt8_DestroyIPN5clang17PartialDiagnosticEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIPN5clang17PartialDiagnosticEEvT_S3_.exitthread-pre-split, %_ZNSt6vectorIN5clang17PartialDiagnosticESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.ar = phi ptr [ %.pr, %_ZSt8_DestroyIPN5clang17PartialDiagnosticEEvT_S3_.exitthread-pre-split ], [ %i.ac, %_ZNSt6vectorIN5clang17PartialDiagnosticESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5clang17PartialDiagnosticESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN5clang17PartialDiagnosticEEvT_S3_.exit
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !1748
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #30
  br label %_ZNSt12_Vector_baseIN5clang17PartialDiagnosticESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5clang17PartialDiagnosticESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN5clang17PartialDiagnosticEEvT_S3_.exit, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !1746
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.aw, ptr %i.g, align 8, !tbaa !1748
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5clang17PartialDiagnosticESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.j:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1747
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.k                     ; 2 uses
  %.not24 = icmp ult i64 %i.ba, %i.f
  br i1 %.not24, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN5clang17PartialDiagnosticEPS4_EET0_T_S9_S8_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef %i.i) ; 2 uses
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !1753 ; 2 uses
  %.not4.i.i27 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not4.i.i27, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5clang17PartialDiagnosticESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %bb.k
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bd, %i.k
  %i.bf = getelementptr inbounds i8, ptr %i.i, i64 %i.be
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.preheader, %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i32
  %.sroa.01.05.i.i = phi ptr [ %i.br, %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i32 ], [ %i.bf, %.lr.ph.i.i28.preheader ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !1521 ; 6 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i29, label %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i32, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i28
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1522 ; 4 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i30, label %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i32, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = icmp uge ptr %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 14848 ; 2 uses
  %i.bl = icmp ule ptr %i.bg, %i.bk
  %or.cond.i.i.i.i.i.i.i31 = select i1 %i.bj, i1 %i.bl, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 14976 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !1523 ; 2 uses
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !1523
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bp
  store ptr %i.bg, ptr %i.bq, align 8, !tbaa !1524
  br label %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i32

bb.o:                                             ; preds = %bb.m
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.bg) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 928) #30
  br label %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i32

_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i32: ; preds = %bb.o, %bb.n, %bb.l, %.lr.ph.i.i28
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 24 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.br, %i.bc
  br i1 %.not.i.i33, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5clang17PartialDiagnosticESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i28, !llvm.loop !3094

bb.p:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.bt = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN5clang17PartialDiagnosticES5_EET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %i.bs, ptr noundef %i.i) ; 0 uses
  %i.bu = load ptr, ptr %1, align 8, !tbaa !1746
  %i.bv = load ptr, ptr %i.ax, align 8, !tbaa !1747 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !1746
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bz ; 2 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !1747 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5clang17PartialDiagnosticESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cn, %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.bv, %bb.p ] ; 5 uses
  %.0810.i.i.i.i = phi ptr [ %i.cm, %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ca, %bb.p ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.011.i.i.i.i, i8 0, i64 16, i1 false)
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !1755
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !1755
  %i.cf = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1522 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !1522
  %i.ci = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !1521
  %.not.i.i.i.i.i.i34 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i34, label %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRS1_EEvPT_DpOT0_.exit.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cj = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.cg) ; 2 uses
  store ptr %i.cj, ptr %.011.i.i.i.i, align 8, !tbaa !1521
  %i.ck = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !1521
  %i.cl = tail call noundef nonnull align 8 dereferenceable(928) ptr @_ZN5clang17DiagnosticStorageaSERKS0_(ptr noundef nonnull align 8 dereferenceable(928) %i.cj, ptr noundef nonnull align 8 dereferenceable(928) %i.ck) ; 0 uses
  br label %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN5clang17PartialDiagnosticEJRS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.cm, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5clang17PartialDiagnosticESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3095

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5clang17PartialDiagnosticESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyIN5clang17PartialDiagnosticEEvPT_.exit.i.i32, %_ZSt10_ConstructIN5clang17PartialDiagnosticEJRS1_EEvPT_DpOT0_.exit.i.i.i.i, %bb.p, %bb.k, %_ZNSt12_Vector_baseIN5clang17PartialDiagnosticESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.co = load ptr, ptr %0, align 8, !tbaa !1746
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.f
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !1747
  br label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5clang17PartialDiagnosticESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN5clang17PartialDiagnosticEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 24
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5clang17PartialDiagnosticaSERKS0_.exit, %bb.a
  %.08.lcssa = phi ptr [ %2, %bb.a ], [ %i.ab, %_ZN5clang17PartialDiagnosticaSERKS0_.exit ]
  ret ptr %.08.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5clang17PartialDiagnosticaSERKS0_.exit
  %.014 = phi i64 [ %i.ac, %_ZN5clang17PartialDiagnosticaSERKS0_.exit ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
end_hunk_0
