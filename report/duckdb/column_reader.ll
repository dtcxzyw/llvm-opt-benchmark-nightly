inline.NumInlined: 4822
inline.NumDeleted: 2510
begin_hunk_0_@_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02224.i = load ptr, ptr %i.a, align 8, !tbaa !643 ; 2 uses
  %.not25.i = icmp eq ptr %.02224.i, null
  br i1 %.not25.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %2 = load ptr, ptr %1, align 8, !tbaa !641      ; 2 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !630    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !639
  %i.f = add i64 %i.e, %i.c                       ; 3 uses
  %.not.i.i = icmp ugt i64 %i.f, -16385
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_:bb.a
bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa31.i) #32 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !641 ; 2 uses
  %.pre.a = load ptr, ptr %1, align 8, !tbaa !641
  %.pre21 = load i64, ptr %.pre, align 8, !tbaa !630
  %.pre22 = load i64, ptr %.pre.a, align 8, !tbaa !630
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.p = phi i64 [ %.pre22, %bb.c ], [ %i.c, %._crit_edge.i ] ; 2 uses
  %i.q = phi i64 [ %.pre21, %bb.c ], [ %i.j, %._crit_edge.i ] ; 2 uses
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.i, %._crit_edge.i ]
  %.021.lcssa30.i = phi ptr [ %.021.lcssa31.i, %bb.c ], [ %.02226.i, %._crit_edge.i ]
  %.sroa.07.0.i = phi ptr [ %i.o, %bb.c ], [ %.02226.i, %._crit_edge.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_:bb.a
  br i1 %i.z, label %_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE10_M_insert_IS2_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %3 = load ptr, ptr %1, align 8, !tbaa !641      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !641
  %i.ac = load i64, ptr %3, align 8, !tbaa !630   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !639
  %i.af = add i64 %i.ae, %i.ac                    ; 3 uses
  %i.ag = load i64, ptr %i.ab, align 8, !tbaa !630 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_:bb.a
  %i.al = phi i1 [ %i.ak, %bb.e ], [ true, %select.unfold ]
  %i.am = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %4 = load ptr, ptr %1, align 8, !tbaa !641
  store ptr %4, ptr %i.an, align 8, !tbaa !641
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !376
end_hunk_3
