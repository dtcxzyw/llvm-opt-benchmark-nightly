Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.15?download=true
inline.NumInlined: 9427
inline.NumDeleted: 4812
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexTmxENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3e_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes9Int64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB6c_E0EINtNtB3i_6copied6CopiedIB3R_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !72635

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %3, 0, !dbg !72636
  br i1 %i.k, label %bb.h, label %bb.j, !dbg !72636

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72595), !dbg !72637
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72596), !dbg !72638
  %i.l = icmp eq i64 %2, 1, !dbg !72639
  br i1 %i.l, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.f, !dbg !72640

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i64 %2, 1152921504606846975, !dbg !72641 ; 4 uses
  %i.n = and i64 %i.m, 1152921504606846975, !dbg !72641
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !72642, !alias.scope !72597, !noalias !72598 ; 2 uses
  %xtraiter135 = and i64 %i.m, 1, !dbg !72643
  %i.o = icmp eq i64 %i.n, 1, !dbg !72643
  br i1 %i.o, label %.epil.preheader134, label %.new133, !dbg !72643

.new133:                                          ; preds = %bb.f
  %unroll_iter139 = and i64 %i.m, 1152921504606846974, !dbg !72643
  br label %bb.g, !dbg !72643

bb.g:                                             ; preds = %bb.g, %.new133
  %.val.i.i.i.i.i.i = phi i64 [ %.val.i.i.pre.i.i.i.i, %.new133 ], [ %i.w, %bb.g ], !dbg !72642 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new133 ], [ %.sroa.1.0.i.i.i.i.1, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new133 ], [ %.1.i.i.i.i.i.i.1, %bb.g ], !dbg !72644
  %niter140 = phi i64 [ 0, %.new133 ], [ %niter140.next.1, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !72645 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i, !dbg !72646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72599), !dbg !72647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72600), !dbg !72647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72601), !dbg !72648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72602), !dbg !72648
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !72642
  %.val2.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !dbg !72642, !alias.scope !72603, !noalias !72604, !noundef !2531 ; 2 uses
  %i.r = icmp slt i64 %.val2.i.i.i.i.i.i, %.val.i.i.i.i.i.i, !dbg !72649
  %.1.i.i.i.i.i.i = select i1 %i.r, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !72650
  %i.s = tail call i64 @llvm.smin.i64(i64 %.val2.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i), !dbg !72642 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !72645 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i, !dbg !72646
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !72642
  %.val2.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !dbg !72642, !alias.scope !72605, !noalias !72604, !noundef !2531 ; 2 uses
  %i.v = icmp slt i64 %.val2.i.i.i.i.i.i.1, %i.s, !dbg !72649
  %.1.i.i.i.i.i.i.1 = select i1 %i.v, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !72650 ; 3 uses
  %i.w = tail call i64 @llvm.smin.i64(i64 %.val2.i.i.i.i.i.i.1, i64 %i.s), !dbg !72642 ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2, !dbg !72651 ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139, !dbg !72651
  br i1 %niter140.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !72651

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72606), !dbg !72652
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72607), !dbg !72653
  %i.x = add nuw nsw i64 %2, 1152921504606846975, !dbg !72654 ; 4 uses
  %i.y = and i64 %i.x, 1152921504606846975, !dbg !72654
  %.phi.trans.insert.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i28, align 8, !dbg !72655, !alias.scope !72608, !noalias !72609 ; 2 uses
  %xtraiter = and i64 %i.x, 1, !dbg !72656
  %i.z = icmp eq i64 %i.y, 1, !dbg !72656
  br i1 %i.z, label %.epil.preheader, label %.new, !dbg !72656

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.x, 1152921504606846974, !dbg !72656
  br label %bb.i, !dbg !72656

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i29 = phi i64 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ah, %bb.i ], !dbg !72655 ; 2 uses
  %.sroa.1.0.i.i.in.i.i30 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i33.1, %bb.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i32 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i36.1, %bb.i ], !dbg !72657
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %.sroa.1.0.i.i.i.i33 = or disjoint i64 %.sroa.1.0.i.i.in.i.i30, 1, !dbg !72658 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30, !dbg !72659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72610), !dbg !72660
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72611), !dbg !72660
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72612), !dbg !72661
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72613), !dbg !72661
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !72655
  %.val.i.i.i.i.i.i34 = load i64, ptr %i.ab, align 8, !dbg !72655, !alias.scope !72614, !noalias !72615, !noundef !2531 ; 2 uses
  %i.ac = icmp slt i64 %.val2.i.i.i.i.i.i29, %.val.i.i.i.i.i.i34, !dbg !72662
  %.1.i.i.i.i.i.i36 = select i1 %i.ac, i64 %.sroa.1.0.i.i.i.i33, i64 %.sroa.02.0.i.i.i.i32, !dbg !72663
  %i.ad = tail call i64 @llvm.smax.i64(i64 %.val2.i.i.i.i.i.i29, i64 %.val.i.i.i.i.i.i34), !dbg !72655 ; 2 uses
  %.sroa.1.0.i.i.i.i33.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i30, 2, !dbg !72658 ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i33, !dbg !72659
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !72655
  %.val.i.i.i.i.i.i34.1 = load i64, ptr %i.af, align 8, !dbg !72655, !alias.scope !72616, !noalias !72615, !noundef !2531 ; 2 uses
  %i.ag = icmp slt i64 %i.ad, %.val.i.i.i.i.i.i34.1, !dbg !72662
  %.1.i.i.i.i.i.i36.1 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i33.1, i64 %.1.i.i.i.i.i.i36, !dbg !72663 ; 3 uses
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 %.val.i.i.i.i.i.i34.1), !dbg !72655 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !72664  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !72664
  br i1 %niter.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, label %bb.i, !dbg !72664

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72617), !dbg !72665
  %i.ai = icmp samesign ult i64 %2, 17, !dbg !72666
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !72666

.lr.ph.i:                                         ; preds = %.backedge.i
  %i.aj = icmp eq i32 %i.al, 0, !dbg !72667
  br i1 %i.aj, label %bb.k, label %.lr.ph.i.preheader, !dbg !72667

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  %.sroa.16.0.lcssa.i = phi i64 [ %2, %bb.j ], [ %.sroa.16.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %.sroa.0.0.be.i, %.backedge.i ]
  %i.ak = icmp samesign ugt i64 %.sroa.16.0.lcssa.i, 1, !dbg !72668
  br i1 %i.ak, label %bb.x, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !72668

bb.k:                                             ; preds = %.lr.ph.i
  call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansTmxENCINvMB6_SB12_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3d_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1R_8downcastINtB1T_12ChunkedArrayNtNtB1V_9datatypes9Int64TypeE13downcast_iter0ENCINvB1P_16arg_sort_numericB6b_E0EINtNtB3h_6copied6CopiedIB3Q_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.be.i, i64 noundef %.sroa.16.0.be.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.sroa.023.0.be.i), !dbg !72669
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !72670

.lr.ph.i.preheader:                               ; preds = %bb.j, %.lr.ph.i
  %.sroa.031.020.i122 = phi i32 [ %i.al, %.lr.ph.i ], [ 16, %bb.j ]
  %.sroa.029.021.i121 = phi ptr [ %.sroa.029.0.be.i, %.lr.ph.i ], [ null, %bb.j ] ; 3 uses
  %.sroa.023.022.i120 = phi i64 [ %.sroa.023.0.be.i, %.lr.ph.i ], [ %3, %bb.j ] ; 6 uses
  %.sroa.16.023.i119 = phi i64 [ %.sroa.16.0.be.i, %.lr.ph.i ], [ %2, %bb.j ] ; 12 uses
  %.sroa.0.024.i118 = phi ptr [ %.sroa.0.0.be.i, %.lr.ph.i ], [ %1, %bb.j ] ; 12 uses
  %i.al = add nsw i32 %.sroa.031.020.i122, -1, !dbg !72671 ; 2 uses
  %i.am = lshr i64 %.sroa.16.023.i119, 3, !dbg !72672 ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.am, 6, !dbg !72673
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx.i.i, !dbg !72673 ; 3 uses
  %.idx2.i.i = mul nuw nsw i64 %i.am, 112, !dbg !72674
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx2.i.i, !dbg !72674 ; 3 uses
  %i.ap = icmp samesign ult i64 %.sroa.16.023.i119, 64, !dbg !72675
  br i1 %i.ap, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.l, !dbg !72675

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.aq = call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTmxENCINvMB8_SB14_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3f_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1T_8downcastINtB1V_12ChunkedArrayNtNtB1X_9datatypes9Int64TypeE13downcast_iter0ENCINvB1R_16arg_sort_numericB6d_E0EINtNtB3j_6copied6CopiedIB3S_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly align 8 %.sroa.0.024.i118, ptr noundef nonnull readonly %i.an, ptr noundef nonnull readonly %i.ao, i64 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !72676
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !72677

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %.lr.ph.i.preheader
  %i.ar = getelementptr i8, ptr %.sroa.0.024.i118, i64 8, !dbg !72678
  %.val6.i.i = load i64, ptr %i.ar, align 8, !dbg !72678, !alias.scope !72619, !noundef !2531 ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 8, !dbg !72678
  %.val7.i.i = load i64, ptr %i.as, align 8, !dbg !72678, !alias.scope !72620, !noundef !2531 ; 2 uses
  %i.at = icmp slt i64 %.val7.i.i, %.val6.i.i, !dbg !72679 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 8, !dbg !72680
  %.val5.i.i = load i64, ptr %i.au, align 8, !dbg !72680, !alias.scope !72620, !noundef !2531 ; 2 uses
  %i.av = icmp slt i64 %.val5.i.i, %.val6.i.i, !dbg !72681
  %i.aw = xor i1 %i.at, %i.av, !dbg !72682
  %i.ax = icmp slt i64 %.val5.i.i, %.val7.i.i, !dbg !72682
  %i.ay = xor i1 %i.at, %i.ax, !dbg !72682
  %..i.i.i = select i1 %i.ay, ptr %i.ao, ptr %i.an, !dbg !72682
  %.sroa.0.0.i.i.i = select i1 %i.aw, ptr %.sroa.0.024.i118, ptr %..i.i.i, !dbg !72682
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !72677

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.l
  %.sroa.0.0.i.sink.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.aq, %bb.l ]
  %i.az = ptrtoint ptr %.sroa.0.0.i.sink.i.i to i64, !dbg !72683
  %i.ba = ptrtoint ptr %.sroa.0.024.i118 to i64, !dbg !72683
  %i.bb = sub nuw i64 %i.az, %i.ba, !dbg !72683   ; 2 uses
  %.sroa.0.0.i.i = lshr exact i64 %i.bb, 4, !dbg !72683 ; 3 uses
  %i.bc = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.16.023.i119, !dbg !72684
  call void @llvm.assume(i1 %i.bc), !dbg !72685
  %.not.i = icmp eq ptr %.sroa.029.021.i121, null, !dbg !72686
  br i1 %.not.i, label %bb.m, label %bb.p, !dbg !72687

bb.m:                                             ; preds = %bb.p, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bd = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3i_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1W_8downcastINtB1Y_12ChunkedArrayNtNtB20_9datatypes9Int64TypeE13downcast_iter0ENCINvB1U_16arg_sort_numericB6g_E0EINtNtB3m_6copied6CopiedIB3V_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !72688 ; 7 uses
  %.not.i.i = icmp ugt i64 %i.bd, %.sroa.16.023.i119, !dbg !72689
  br i1 %.not.i.i, label %bb.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !72689, !prof !2688

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #35, !dbg !72690, !noalias !72621
  unreachable, !dbg !72690

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bd, !dbg !72691 ; 2 uses
  %.not.i38.i = icmp eq i64 %.sroa.16.023.i119, %i.bd, !dbg !72692
  br i1 %.not.i38.i, label %bb.o, label %bb.u, !dbg !72692, !prof !2688

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #35, !dbg !72693, !noalias !72622
  unreachable, !dbg !72693

bb.p:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bb, !dbg !72694
  %i.bg = getelementptr i8, ptr %.sroa.029.021.i121, i64 8, !dbg !72695
  %.sroa.029.0.val.i = load i64, ptr %i.bg, align 8, !dbg !72695, !alias.scope !72623, !noundef !2531
  %i.bh = getelementptr i8, ptr %i.bf, i64 8, !dbg !72695
  %.val.i = load i64, ptr %i.bh, align 8, !dbg !72695, !alias.scope !72624, !noundef !2531
  %i.bi = icmp slt i64 %.val.i, %.sroa.029.0.val.i, !dbg !72696
  br i1 %i.bi, label %bb.m, label %bb.q, !dbg !72695

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !72697, !noalias !72625
  store ptr %i.f, ptr %i.c, align 8, !dbg !72697, !noalias !72625
  %i.bj = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvNtB6_6select23partition_at_index_loopB17_NCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB42_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2G_8downcastINtB2I_12ChunkedArrayNtNtB2K_9datatypes9Int64TypeE13downcast_iter0ENCINvB2E_16arg_sort_numericB70_E0EINtNtB46_6copied6CopiedIB4F_xEExEs0_0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !dbg !72698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !72699, !noalias !72625
  %i.bk = add i64 %i.bj, 1, !dbg !72700           ; 6 uses
  %i.bl = icmp ugt i64 %i.bk, %.sroa.023.022.i120, !dbg !72701
  br i1 %i.bl, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.r, !dbg !72701

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp ugt i64 %i.bk, %.sroa.16.023.i119, !dbg !72702
  br i1 %i.bm, label %bb.t, label %bb.s, !dbg !72702, !prof !2688

bb.s:                                             ; preds = %bb.r
  %i.bn = sub nuw i64 %.sroa.16.023.i119, %i.bk, !dbg !72703
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bk, !dbg !72704
  %i.bp = sub nuw i64 %.sroa.023.022.i120, %i.bk, !dbg !72705
  br label %.backedge.i, !dbg !72670

.backedge.i:                                      ; preds = %bb.w, %bb.v, %bb.s
  %.sroa.029.0.be.i = phi ptr [ null, %bb.s ], [ %i.be, %bb.w ], [ %.sroa.029.021.i121, %bb.v ]
  %.sroa.023.0.be.i = phi i64 [ %i.bp, %bb.s ], [ %i.bw, %bb.w ], [ %.sroa.023.022.i120, %bb.v ] ; 2 uses
  %.sroa.16.0.be.i = phi i64 [ %i.bn, %bb.s ], [ %i.bu, %bb.w ], [ %i.bd, %bb.v ] ; 4 uses
  %.sroa.0.0.be.i = phi ptr [ %i.bo, %bb.s ], [ %i.bv, %bb.w ], [ %.sroa.0.024.i118, %bb.v ] ; 3 uses
  %i.bq = icmp ult i64 %.sroa.16.0.be.i, 17, !dbg !72666
  br i1 %i.bq, label %._crit_edge.i, label %.lr.ph.i, !dbg !72666

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bk, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.16.023.i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35, !dbg !72706
  unreachable, !dbg !72706

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  %i.br = icmp ult i64 %i.bd, %.sroa.023.022.i120, !dbg !72707
  br i1 %i.br, label %bb.w, label %bb.v, !dbg !72707

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp ugt i64 %i.bd, %.sroa.023.022.i120, !dbg !72708
  br i1 %i.bs, label %.backedge.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !72708

bb.w:                                             ; preds = %bb.u
  %i.bt = xor i64 %i.bd, -1, !dbg !72709          ; 2 uses
  %i.bu = add i64 %.sroa.16.023.i119, %i.bt, !dbg !72709
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !72710
  %i.bw = add i64 %.sroa.023.022.i120, %i.bt, !dbg !72711
  br label %.backedge.i, !dbg !72712

bb.x:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmxENCINvMB8_SB1m_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3x_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2b_8downcastINtB2d_12ChunkedArrayNtNtB2f_9datatypes9Int64TypeE13downcast_iter0ENCINvB29_16arg_sort_numericB6v_E0EINtNtB3B_6copied6CopiedIB4a_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !72713
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !72714

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72664
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader, !dbg !72664

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i29.epil.init = phi i64 [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.ah, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i30.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i33.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i32.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.x to i1, !dbg !72664
  tail call void @llvm.assume(i1 %lcmp.mod132), !dbg !72664
  %.sroa.1.0.i.i.i.i33.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i30.epil.init, 1, !dbg !72658
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30.epil.init, !dbg !72659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72610), !dbg !72660
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72611), !dbg !72660
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72612), !dbg !72661
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72613), !dbg !72661
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !72655
  %.val.i.i.i.i.i.i34.epil = load i64, ptr %i.by, align 8, !dbg !72655, !alias.scope !72614, !noalias !72615, !noundef !2531
  %i.bz = icmp slt i64 %.val2.i.i.i.i.i.i29.epil.init, %.val.i.i.i.i.i.i34.epil, !dbg !72662
  %.1.i.i.i.i.i.i36.epil = select i1 %i.bz, i64 %.sroa.1.0.i.i.i.i33.epil, i64 %.sroa.02.0.i.i.i.i32.epil.init, !dbg !72663
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !72715

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i36.lcssa = phi i64 [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i36.epil, %.epil.preheader ], !dbg !72663 ; 3 uses
  %i.ca = icmp ult i64 %.1.i.i.i.i.i.i36.lcssa, %2, !dbg !72715
  br i1 %i.ca, label %bb.z, label %bb.y, !dbg !72715

bb.y:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i36.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36, !dbg !72715
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1.i.i.i.i.i.i36.lcssa, !dbg !72716 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !72717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !dbg !72718
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !72719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !72720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !72721
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !72722

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0, !dbg !72651
  br i1 %lcmp.mod136.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader134, !dbg !72651

.epil.preheader134:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi i64 [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.w, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.m to i1, !dbg !72651
  tail call void @llvm.assume(i1 %lcmp.mod138), !dbg !72651
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !72645
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !72646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72599), !dbg !72647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72600), !dbg !72647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72601), !dbg !72648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72602), !dbg !72648
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24, !dbg !72642
  %.val2.i.i.i.i.i.i.epil = load i64, ptr %i.cd, align 8, !dbg !72642, !alias.scope !72603, !noalias !72604, !noundef !2531
  %i.ce = icmp slt i64 %.val2.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.epil.init, !dbg !72649
  %.1.i.i.i.i.i.i.epil = select i1 %i.ce, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !72650
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !72723

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %.epil.preheader134, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.e
  %i.cf = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader134 ] ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %2, !dbg !72723
  br i1 %i.cg, label %bb.ab, label %bb.aa, !dbg !72723

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #36, !dbg !72723
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cf, !dbg !72724 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !72725 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !dbg !72727
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !dbg !72728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !72729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72730
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !72731

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.v, %bb.q, %bb.x, %bb.k, %._crit_edge.i, %bb.z, %bb.ab
  %i.cj = load i64, ptr %i.g, align 8, !dbg !72732, !noundef !2531 ; 5 uses
  %.not.i38 = icmp ugt i64 %i.cj, %2, !dbg !72733
  br i1 %.not.i38, label %bb.ac, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !72733, !prof !2688

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35, !dbg !72734, !noalias !72628
  unreachable, !dbg !72734

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.not.i39 = icmp eq i64 %2, %i.cj, !dbg !72735
  br i1 %.not.i39, label %bb.ad, label %bb.ae, !dbg !72735, !prof !2688

bb.ad:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #35, !dbg !72736, !noalias !72629
  unreachable, !dbg !72736

bb.ae:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cj, !dbg !72737 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !72738
  %i.cm = xor i64 %i.cj, -1, !dbg !72739
  %i.cn = add nsw i64 %2, %i.cm, !dbg !72739
  store ptr %1, ptr %0, align 8, !dbg !72740
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72740
  store i64 %i.cj, ptr %i.co, align 8, !dbg !72740
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !72740
  store ptr %i.ck, ptr %i.cp, align 8, !dbg !72740
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !72740
  store ptr %i.cl, ptr %i.cq, align 8, !dbg !72740
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !72740
  store i64 %i.cn, ptr %i.cr, align 8, !dbg !72740
  ret void, !dbg !72741
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexTmxENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3e_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes9Int64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB6c_E0EINtNtB3i_6copied6CopiedIB3R_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72742 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %3, ptr %i.g, align 8
  store ptr %4, ptr %i.f, align 8
  store i64 %2, ptr %i.e, align 8, !dbg !72956
  %.not = icmp ult i64 %3, %2, !dbg !72957
  br i1 %.not, label %bb.c, label %bb.b, !dbg !72957, !prof !2818

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !72958
  store ptr %i.g, ptr %i.d, align 8, !dbg !72958
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !72958
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !72958
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !72958
  store ptr %i.e, ptr %i.h, align 8, !dbg !72958
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !72958
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !72958
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #36, !dbg !72959
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = add nsw i64 %2, -1, !dbg !72960
  %i.j = icmp eq i64 %3, %i.i, !dbg !72961
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !72961

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %3, 0, !dbg !72962
  br i1 %i.k, label %bb.h, label %bb.j, !dbg !72962

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72921), !dbg !72963
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72922), !dbg !72964
  %i.l = icmp eq i64 %2, 1, !dbg !72965
  br i1 %i.l, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.f, !dbg !72966

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i64 %2, 1152921504606846975, !dbg !72967 ; 4 uses
  %i.n = and i64 %i.m, 1152921504606846975, !dbg !72967
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !72968, !alias.scope !72923, !noalias !72924 ; 2 uses
  %xtraiter135 = and i64 %i.m, 1, !dbg !72969
  %i.o = icmp eq i64 %i.n, 1, !dbg !72969
  br i1 %i.o, label %.epil.preheader134, label %.new133, !dbg !72969

.new133:                                          ; preds = %bb.f
  %unroll_iter139 = and i64 %i.m, 1152921504606846974, !dbg !72969
  br label %bb.g, !dbg !72969

bb.g:                                             ; preds = %bb.g, %.new133
  %.val.i.i.i.i.i.i = phi i64 [ %.val.i.i.pre.i.i.i.i, %.new133 ], [ %i.w, %bb.g ], !dbg !72968 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new133 ], [ %.sroa.1.0.i.i.i.i.1, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new133 ], [ %.1.i.i.i.i.i.i.1, %bb.g ], !dbg !72970
  %niter140 = phi i64 [ 0, %.new133 ], [ %niter140.next.1, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !72971 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i, !dbg !72972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72925), !dbg !72973
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72926), !dbg !72973
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72927), !dbg !72974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72928), !dbg !72974
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !72968
  %.val2.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !dbg !72968, !alias.scope !72929, !noalias !72930, !noundef !2531 ; 2 uses
  %i.r = icmp slt i64 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !72975
  %.1.i.i.i.i.i.i = select i1 %i.r, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !72976
  %i.s = tail call i64 @llvm.smax.i64(i64 %.val.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i), !dbg !72968 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !72971 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i, !dbg !72972
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !72968
  %.val2.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !dbg !72968, !alias.scope !72931, !noalias !72930, !noundef !2531 ; 2 uses
  %i.v = icmp slt i64 %i.s, %.val2.i.i.i.i.i.i.1, !dbg !72975
  %.1.i.i.i.i.i.i.1 = select i1 %i.v, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !72976 ; 3 uses
  %i.w = tail call i64 @llvm.smax.i64(i64 %i.s, i64 %.val2.i.i.i.i.i.i.1), !dbg !72968 ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2, !dbg !72977 ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139, !dbg !72977
  br i1 %niter140.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !72977

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72932), !dbg !72978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72933), !dbg !72979
  %i.x = add nuw nsw i64 %2, 1152921504606846975, !dbg !72980 ; 4 uses
  %i.y = and i64 %i.x, 1152921504606846975, !dbg !72980
  %.phi.trans.insert.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i28, align 8, !dbg !72981, !alias.scope !72934, !noalias !72935 ; 2 uses
  %xtraiter = and i64 %i.x, 1, !dbg !72982
  %i.z = icmp eq i64 %i.y, 1, !dbg !72982
  br i1 %i.z, label %.epil.preheader, label %.new, !dbg !72982

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.x, 1152921504606846974, !dbg !72982
  br label %bb.i, !dbg !72982

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i29 = phi i64 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ah, %bb.i ], !dbg !72981 ; 2 uses
  %.sroa.1.0.i.i.in.i.i30 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i33.1, %bb.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i32 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i36.1, %bb.i ], !dbg !72983
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %.sroa.1.0.i.i.i.i33 = or disjoint i64 %.sroa.1.0.i.i.in.i.i30, 1, !dbg !72984 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30, !dbg !72985
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72936), !dbg !72986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72937), !dbg !72986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72938), !dbg !72987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72939), !dbg !72987
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !72981
  %.val.i.i.i.i.i.i34 = load i64, ptr %i.ab, align 8, !dbg !72981, !alias.scope !72940, !noalias !72941, !noundef !2531 ; 2 uses
  %i.ac = icmp slt i64 %.val.i.i.i.i.i.i34, %.val2.i.i.i.i.i.i29, !dbg !72988
  %.1.i.i.i.i.i.i36 = select i1 %i.ac, i64 %.sroa.1.0.i.i.i.i33, i64 %.sroa.02.0.i.i.i.i32, !dbg !72989
  %i.ad = tail call i64 @llvm.smin.i64(i64 %.val.i.i.i.i.i.i34, i64 %.val2.i.i.i.i.i.i29), !dbg !72981 ; 2 uses
  %.sroa.1.0.i.i.i.i33.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i30, 2, !dbg !72984 ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i33, !dbg !72985
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !72981
  %.val.i.i.i.i.i.i34.1 = load i64, ptr %i.af, align 8, !dbg !72981, !alias.scope !72942, !noalias !72941, !noundef !2531 ; 2 uses
  %i.ag = icmp slt i64 %.val.i.i.i.i.i.i34.1, %i.ad, !dbg !72988
  %.1.i.i.i.i.i.i36.1 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i33.1, i64 %.1.i.i.i.i.i.i36, !dbg !72989 ; 3 uses
  %i.ah = tail call i64 @llvm.smin.i64(i64 %.val.i.i.i.i.i.i34.1, i64 %i.ad), !dbg !72981 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !72990  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !72990
  br i1 %niter.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, label %bb.i, !dbg !72990

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72943), !dbg !72991
  %i.ai = icmp samesign ult i64 %2, 17, !dbg !72992
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !72992

.lr.ph.i:                                         ; preds = %.backedge.i
  %i.aj = icmp eq i32 %i.al, 0, !dbg !72993
  br i1 %i.aj, label %bb.k, label %.lr.ph.i.preheader, !dbg !72993

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  %.sroa.16.0.lcssa.i = phi i64 [ %2, %bb.j ], [ %.sroa.16.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %.sroa.0.0.be.i, %.backedge.i ]
  %i.ak = icmp samesign ugt i64 %.sroa.16.0.lcssa.i, 1, !dbg !72994
  br i1 %i.ak, label %bb.x, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !72994

bb.k:                                             ; preds = %.lr.ph.i
  call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansTmxENCINvMB6_SB12_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3d_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1R_8downcastINtB1T_12ChunkedArrayNtNtB1V_9datatypes9Int64TypeE13downcast_iter0ENCINvB1P_16arg_sort_numericB6b_E0EINtNtB3h_6copied6CopiedIB3Q_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.be.i, i64 noundef %.sroa.16.0.be.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.sroa.023.0.be.i), !dbg !72995
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !72996

.lr.ph.i.preheader:                               ; preds = %bb.j, %.lr.ph.i
  %.sroa.031.020.i122 = phi i32 [ %i.al, %.lr.ph.i ], [ 16, %bb.j ]
  %.sroa.029.021.i121 = phi ptr [ %.sroa.029.0.be.i, %.lr.ph.i ], [ null, %bb.j ] ; 3 uses
  %.sroa.023.022.i120 = phi i64 [ %.sroa.023.0.be.i, %.lr.ph.i ], [ %3, %bb.j ] ; 6 uses
  %.sroa.16.023.i119 = phi i64 [ %.sroa.16.0.be.i, %.lr.ph.i ], [ %2, %bb.j ] ; 12 uses
  %.sroa.0.024.i118 = phi ptr [ %.sroa.0.0.be.i, %.lr.ph.i ], [ %1, %bb.j ] ; 12 uses
  %i.al = add nsw i32 %.sroa.031.020.i122, -1, !dbg !72997 ; 2 uses
  %i.am = lshr i64 %.sroa.16.023.i119, 3, !dbg !72998 ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.am, 6, !dbg !72999
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx.i.i, !dbg !72999 ; 3 uses
  %.idx2.i.i = mul nuw nsw i64 %i.am, 112, !dbg !73000
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx2.i.i, !dbg !73000 ; 3 uses
  %i.ap = icmp samesign ult i64 %.sroa.16.023.i119, 64, !dbg !73001
  br i1 %i.ap, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.l, !dbg !73001

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.aq = call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTmxENCINvMB8_SB14_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3f_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1T_8downcastINtB1V_12ChunkedArrayNtNtB1X_9datatypes9Int64TypeE13downcast_iter0ENCINvB1R_16arg_sort_numericB6d_E0EINtNtB3j_6copied6CopiedIB3S_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly align 8 %.sroa.0.024.i118, ptr noundef nonnull readonly %i.an, ptr noundef nonnull readonly %i.ao, i64 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !73002
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !73003

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %.lr.ph.i.preheader
  %i.ar = getelementptr i8, ptr %.sroa.0.024.i118, i64 8, !dbg !73004
  %.val6.i.i = load i64, ptr %i.ar, align 8, !dbg !73004, !alias.scope !72945, !noundef !2531 ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 8, !dbg !73004
  %.val7.i.i = load i64, ptr %i.as, align 8, !dbg !73004, !alias.scope !72946, !noundef !2531 ; 2 uses
  %i.at = icmp slt i64 %.val6.i.i, %.val7.i.i, !dbg !73005 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 8, !dbg !73006
  %.val5.i.i = load i64, ptr %i.au, align 8, !dbg !73006, !alias.scope !72946, !noundef !2531 ; 2 uses
  %i.av = icmp slt i64 %.val6.i.i, %.val5.i.i, !dbg !73007
  %i.aw = xor i1 %i.at, %i.av, !dbg !73008
  %i.ax = icmp slt i64 %.val7.i.i, %.val5.i.i, !dbg !73008
  %i.ay = xor i1 %i.at, %i.ax, !dbg !73008
  %..i.i.i = select i1 %i.ay, ptr %i.ao, ptr %i.an, !dbg !73008
  %.sroa.0.0.i.i.i = select i1 %i.aw, ptr %.sroa.0.024.i118, ptr %..i.i.i, !dbg !73008
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !73003

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.l
  %.sroa.0.0.i.sink.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.aq, %bb.l ]
  %i.az = ptrtoint ptr %.sroa.0.0.i.sink.i.i to i64, !dbg !73009
  %i.ba = ptrtoint ptr %.sroa.0.024.i118 to i64, !dbg !73009
  %i.bb = sub nuw i64 %i.az, %i.ba, !dbg !73009   ; 2 uses
  %.sroa.0.0.i.i = lshr exact i64 %i.bb, 4, !dbg !73009 ; 3 uses
  %i.bc = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.16.023.i119, !dbg !73010
  call void @llvm.assume(i1 %i.bc), !dbg !73011
  %.not.i = icmp eq ptr %.sroa.029.021.i121, null, !dbg !73012
  br i1 %.not.i, label %bb.m, label %bb.p, !dbg !73013

bb.m:                                             ; preds = %bb.p, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bd = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3i_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1W_8downcastINtB1Y_12ChunkedArrayNtNtB20_9datatypes9Int64TypeE13downcast_iter0ENCINvB1U_16arg_sort_numericB6g_E0EINtNtB3m_6copied6CopiedIB3V_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !73014 ; 7 uses
  %.not.i.i = icmp ugt i64 %i.bd, %.sroa.16.023.i119, !dbg !73015
  br i1 %.not.i.i, label %bb.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !73015, !prof !2688

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #35, !dbg !73016, !noalias !72947
  unreachable, !dbg !73016

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bd, !dbg !73017 ; 2 uses
  %.not.i38.i = icmp eq i64 %.sroa.16.023.i119, %i.bd, !dbg !73018
  br i1 %.not.i38.i, label %bb.o, label %bb.u, !dbg !73018, !prof !2688

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #35, !dbg !73019, !noalias !72948
  unreachable, !dbg !73019

bb.p:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bb, !dbg !73020
  %i.bg = getelementptr i8, ptr %.sroa.029.021.i121, i64 8, !dbg !73021
  %.sroa.029.0.val.i = load i64, ptr %i.bg, align 8, !dbg !73021, !alias.scope !72949, !noundef !2531
  %i.bh = getelementptr i8, ptr %i.bf, i64 8, !dbg !73021
  %.val.i = load i64, ptr %i.bh, align 8, !dbg !73021, !alias.scope !72950, !noundef !2531
  %i.bi = icmp slt i64 %.sroa.029.0.val.i, %.val.i, !dbg !73022
  br i1 %i.bi, label %bb.m, label %bb.q, !dbg !73021

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !73023, !noalias !72951
  store ptr %i.f, ptr %i.c, align 8, !dbg !73023, !noalias !72951
  %i.bj = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvNtB6_6select23partition_at_index_loopB17_NCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB42_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2G_8downcastINtB2I_12ChunkedArrayNtNtB2K_9datatypes9Int64TypeE13downcast_iter0ENCINvB2E_16arg_sort_numericB70_E0EINtNtB46_6copied6CopiedIB4F_xEExEs1_0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !dbg !73024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !73025, !noalias !72951
  %i.bk = add i64 %i.bj, 1, !dbg !73026           ; 6 uses
  %i.bl = icmp ugt i64 %i.bk, %.sroa.023.022.i120, !dbg !73027
  br i1 %i.bl, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.r, !dbg !73027

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp ugt i64 %i.bk, %.sroa.16.023.i119, !dbg !73028
  br i1 %i.bm, label %bb.t, label %bb.s, !dbg !73028, !prof !2688

bb.s:                                             ; preds = %bb.r
  %i.bn = sub nuw i64 %.sroa.16.023.i119, %i.bk, !dbg !73029
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bk, !dbg !73030
  %i.bp = sub nuw i64 %.sroa.023.022.i120, %i.bk, !dbg !73031
  br label %.backedge.i, !dbg !72996

.backedge.i:                                      ; preds = %bb.w, %bb.v, %bb.s
  %.sroa.029.0.be.i = phi ptr [ null, %bb.s ], [ %i.be, %bb.w ], [ %.sroa.029.021.i121, %bb.v ]
  %.sroa.023.0.be.i = phi i64 [ %i.bp, %bb.s ], [ %i.bw, %bb.w ], [ %.sroa.023.022.i120, %bb.v ] ; 2 uses
  %.sroa.16.0.be.i = phi i64 [ %i.bn, %bb.s ], [ %i.bu, %bb.w ], [ %i.bd, %bb.v ] ; 4 uses
  %.sroa.0.0.be.i = phi ptr [ %i.bo, %bb.s ], [ %i.bv, %bb.w ], [ %.sroa.0.024.i118, %bb.v ] ; 3 uses
  %i.bq = icmp ult i64 %.sroa.16.0.be.i, 17, !dbg !72992
  br i1 %i.bq, label %._crit_edge.i, label %.lr.ph.i, !dbg !72992

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bk, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.16.023.i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35, !dbg !73032
  unreachable, !dbg !73032

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  %i.br = icmp ult i64 %i.bd, %.sroa.023.022.i120, !dbg !73033
  br i1 %i.br, label %bb.w, label %bb.v, !dbg !73033

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp ugt i64 %i.bd, %.sroa.023.022.i120, !dbg !73034
  br i1 %i.bs, label %.backedge.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73034

bb.w:                                             ; preds = %bb.u
  %i.bt = xor i64 %i.bd, -1, !dbg !73035          ; 2 uses
  %i.bu = add i64 %.sroa.16.023.i119, %i.bt, !dbg !73035
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !73036
  %i.bw = add i64 %.sroa.023.022.i120, %i.bt, !dbg !73037
  br label %.backedge.i, !dbg !73038

bb.x:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmxENCINvMB8_SB1m_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3x_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2b_8downcastINtB2d_12ChunkedArrayNtNtB2f_9datatypes9Int64TypeE13downcast_iter0ENCINvB29_16arg_sort_numericB6v_E0EINtNtB3B_6copied6CopiedIB4a_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !73039
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73040

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !72990
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader, !dbg !72990

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i29.epil.init = phi i64 [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.ah, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i30.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i33.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i32.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.x to i1, !dbg !72990
  tail call void @llvm.assume(i1 %lcmp.mod132), !dbg !72990
  %.sroa.1.0.i.i.i.i33.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i30.epil.init, 1, !dbg !72984
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30.epil.init, !dbg !72985
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72936), !dbg !72986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72937), !dbg !72986
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72938), !dbg !72987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72939), !dbg !72987
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !72981
  %.val.i.i.i.i.i.i34.epil = load i64, ptr %i.by, align 8, !dbg !72981, !alias.scope !72940, !noalias !72941, !noundef !2531
  %i.bz = icmp slt i64 %.val.i.i.i.i.i.i34.epil, %.val2.i.i.i.i.i.i29.epil.init, !dbg !72988
  %.1.i.i.i.i.i.i36.epil = select i1 %i.bz, i64 %.sroa.1.0.i.i.i.i33.epil, i64 %.sroa.02.0.i.i.i.i32.epil.init, !dbg !72989
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !73041

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i36.lcssa = phi i64 [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i36.epil, %.epil.preheader ], !dbg !72989 ; 3 uses
  %i.ca = icmp ult i64 %.1.i.i.i.i.i.i36.lcssa, %2, !dbg !73041
  br i1 %i.ca, label %bb.z, label %bb.y, !dbg !73041

bb.y:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i36.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36, !dbg !73041
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1.i.i.i.i.i.i36.lcssa, !dbg !73042 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !73043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !dbg !73044
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !73045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !73046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !73047
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73048

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0, !dbg !72977
  br i1 %lcmp.mod136.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader134, !dbg !72977

.epil.preheader134:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi i64 [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.w, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.m to i1, !dbg !72977
  tail call void @llvm.assume(i1 %lcmp.mod138), !dbg !72977
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !72971
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !72972
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72925), !dbg !72973
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72926), !dbg !72973
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72927), !dbg !72974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72928), !dbg !72974
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24, !dbg !72968
  %.val2.i.i.i.i.i.i.epil = load i64, ptr %i.cd, align 8, !dbg !72968, !alias.scope !72929, !noalias !72930, !noundef !2531
  %i.ce = icmp slt i64 %.val.i.i.i.i.i.i.epil.init, %.val2.i.i.i.i.i.i.epil, !dbg !72975
  %.1.i.i.i.i.i.i.epil = select i1 %i.ce, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !72976
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !73049

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %.epil.preheader134, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.e
  %i.cf = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader134 ] ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %2, !dbg !73049
  br i1 %i.cg, label %bb.ab, label %bb.aa, !dbg !73049

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #36, !dbg !73049
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cf, !dbg !73050 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !73051 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !73052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !dbg !73053
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !dbg !73054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !73055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !73056
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73057

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.v, %bb.q, %bb.x, %bb.k, %._crit_edge.i, %bb.z, %bb.ab
  %i.cj = load i64, ptr %i.g, align 8, !dbg !73058, !noundef !2531 ; 5 uses
  %.not.i38 = icmp ugt i64 %i.cj, %2, !dbg !73059
  br i1 %.not.i38, label %bb.ac, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !73059, !prof !2688

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35, !dbg !73060, !noalias !72954
  unreachable, !dbg !73060

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.not.i39 = icmp eq i64 %2, %i.cj, !dbg !73061
  br i1 %.not.i39, label %bb.ad, label %bb.ae, !dbg !73061, !prof !2688

bb.ad:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #35, !dbg !73062, !noalias !72955
  unreachable, !dbg !73062

bb.ae:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cj, !dbg !73063 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !73064
  %i.cm = xor i64 %i.cj, -1, !dbg !73065
  %i.cn = add nsw i64 %2, %i.cm, !dbg !73065
  store ptr %1, ptr %0, align 8, !dbg !73066
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !73066
  store i64 %i.cj, ptr %i.co, align 8, !dbg !73066
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !73066
  store ptr %i.ck, ptr %i.cp, align 8, !dbg !73066
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !73066
  store ptr %i.cl, ptr %i.cq, align 8, !dbg !73066
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !73066
  store i64 %i.cn, ptr %i.cr, align 8, !dbg !73066
  ret void, !dbg !73067
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexTmxENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB34_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes9Int64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB62_Es_0EIB34_INtNtNtNtB4C_6bitmap5utils12zip_validity11ZipValidityRxIB3H_xENtNtB7w_8iterator10BitmapIterENCNCB6O_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !73068 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %3, ptr %i.g, align 8
  store ptr %4, ptr %i.f, align 8
  store i64 %2, ptr %i.e, align 8, !dbg !73282
  %.not = icmp ult i64 %3, %2, !dbg !73283
  br i1 %.not, label %bb.c, label %bb.b, !dbg !73283, !prof !2818

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !73284
  store ptr %i.g, ptr %i.d, align 8, !dbg !73284
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !73284
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !73284
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !73284
  store ptr %i.e, ptr %i.h, align 8, !dbg !73284
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !73284
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !73284
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #36, !dbg !73285
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = add nsw i64 %2, -1, !dbg !73286
  %i.j = icmp eq i64 %3, %i.i, !dbg !73287
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !73287

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %3, 0, !dbg !73288
  br i1 %i.k, label %bb.h, label %bb.j, !dbg !73288

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73247), !dbg !73289
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73248), !dbg !73290
  %i.l = icmp eq i64 %2, 1, !dbg !73291
  br i1 %i.l, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.f, !dbg !73292

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i64 %2, 1152921504606846975, !dbg !73293 ; 4 uses
  %i.n = and i64 %i.m, 1152921504606846975, !dbg !73293
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !73294, !alias.scope !73249, !noalias !73250 ; 2 uses
  %xtraiter135 = and i64 %i.m, 1, !dbg !73295
  %i.o = icmp eq i64 %i.n, 1, !dbg !73295
  br i1 %i.o, label %.epil.preheader134, label %.new133, !dbg !73295

.new133:                                          ; preds = %bb.f
  %unroll_iter139 = and i64 %i.m, 1152921504606846974, !dbg !73295
  br label %bb.g, !dbg !73295

bb.g:                                             ; preds = %bb.g, %.new133
  %.val.i.i.i.i.i.i = phi i64 [ %.val.i.i.pre.i.i.i.i, %.new133 ], [ %i.w, %bb.g ], !dbg !73294 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new133 ], [ %.sroa.1.0.i.i.i.i.1, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new133 ], [ %.1.i.i.i.i.i.i.1, %bb.g ], !dbg !73296
  %niter140 = phi i64 [ 0, %.new133 ], [ %niter140.next.1, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !73297 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i, !dbg !73298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73251), !dbg !73299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73252), !dbg !73299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73253), !dbg !73300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73254), !dbg !73300
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !73294
  %.val2.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !dbg !73294, !alias.scope !73255, !noalias !73256, !noundef !2531 ; 2 uses
  %i.r = icmp slt i64 %.val2.i.i.i.i.i.i, %.val.i.i.i.i.i.i, !dbg !73301
  %.1.i.i.i.i.i.i = select i1 %i.r, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !73302
  %i.s = tail call i64 @llvm.smin.i64(i64 %.val2.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i), !dbg !73294 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !73297 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i, !dbg !73298
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !73294
  %.val2.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !dbg !73294, !alias.scope !73257, !noalias !73256, !noundef !2531 ; 2 uses
  %i.v = icmp slt i64 %.val2.i.i.i.i.i.i.1, %i.s, !dbg !73301
  %.1.i.i.i.i.i.i.1 = select i1 %i.v, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !73302 ; 3 uses
  %i.w = tail call i64 @llvm.smin.i64(i64 %.val2.i.i.i.i.i.i.1, i64 %i.s), !dbg !73294 ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2, !dbg !73303 ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139, !dbg !73303
  br i1 %niter140.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !73303

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73258), !dbg !73304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73259), !dbg !73305
  %i.x = add nuw nsw i64 %2, 1152921504606846975, !dbg !73306 ; 4 uses
  %i.y = and i64 %i.x, 1152921504606846975, !dbg !73306
  %.phi.trans.insert.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i28, align 8, !dbg !73307, !alias.scope !73260, !noalias !73261 ; 2 uses
  %xtraiter = and i64 %i.x, 1, !dbg !73308
  %i.z = icmp eq i64 %i.y, 1, !dbg !73308
  br i1 %i.z, label %.epil.preheader, label %.new, !dbg !73308

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.x, 1152921504606846974, !dbg !73308
  br label %bb.i, !dbg !73308

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i29 = phi i64 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ah, %bb.i ], !dbg !73307 ; 2 uses
  %.sroa.1.0.i.i.in.i.i30 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i33.1, %bb.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i32 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i36.1, %bb.i ], !dbg !73309
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %.sroa.1.0.i.i.i.i33 = or disjoint i64 %.sroa.1.0.i.i.in.i.i30, 1, !dbg !73310 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30, !dbg !73311
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73262), !dbg !73312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73263), !dbg !73312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73264), !dbg !73313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73265), !dbg !73313
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !73307
  %.val.i.i.i.i.i.i34 = load i64, ptr %i.ab, align 8, !dbg !73307, !alias.scope !73266, !noalias !73267, !noundef !2531 ; 2 uses
  %i.ac = icmp slt i64 %.val2.i.i.i.i.i.i29, %.val.i.i.i.i.i.i34, !dbg !73314
  %.1.i.i.i.i.i.i36 = select i1 %i.ac, i64 %.sroa.1.0.i.i.i.i33, i64 %.sroa.02.0.i.i.i.i32, !dbg !73315
  %i.ad = tail call i64 @llvm.smax.i64(i64 %.val2.i.i.i.i.i.i29, i64 %.val.i.i.i.i.i.i34), !dbg !73307 ; 2 uses
  %.sroa.1.0.i.i.i.i33.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i30, 2, !dbg !73310 ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i33, !dbg !73311
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !73307
  %.val.i.i.i.i.i.i34.1 = load i64, ptr %i.af, align 8, !dbg !73307, !alias.scope !73268, !noalias !73267, !noundef !2531 ; 2 uses
  %i.ag = icmp slt i64 %i.ad, %.val.i.i.i.i.i.i34.1, !dbg !73314
  %.1.i.i.i.i.i.i36.1 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i33.1, i64 %.1.i.i.i.i.i.i36, !dbg !73315 ; 3 uses
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 %.val.i.i.i.i.i.i34.1), !dbg !73307 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !73316  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !73316
  br i1 %niter.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, label %bb.i, !dbg !73316

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73269), !dbg !73317
  %i.ai = icmp samesign ult i64 %2, 17, !dbg !73318
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !73318

.lr.ph.i:                                         ; preds = %.backedge.i
  %i.aj = icmp eq i32 %i.al, 0, !dbg !73319
  br i1 %i.aj, label %bb.k, label %.lr.ph.i.preheader, !dbg !73319

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  %.sroa.16.0.lcssa.i = phi i64 [ %2, %bb.j ], [ %.sroa.16.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %.sroa.0.0.be.i, %.backedge.i ]
  %i.ak = icmp samesign ugt i64 %.sroa.16.0.lcssa.i, 1, !dbg !73320
  br i1 %i.ak, label %bb.x, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73320

bb.k:                                             ; preds = %.lr.ph.i
  call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansTmxENCINvMB6_SB12_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1R_8downcastINtB1T_12ChunkedArrayNtNtB1V_9datatypes9Int64TypeE13downcast_iter0ENCINvB1P_16arg_sort_numericB61_Es_0EIB33_INtNtNtNtB4B_6bitmap5utils12zip_validity11ZipValidityRxIB3G_xENtNtB7v_8iterator10BitmapIterENCNCB6N_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.be.i, i64 noundef %.sroa.16.0.be.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.sroa.023.0.be.i), !dbg !73321
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73322

.lr.ph.i.preheader:                               ; preds = %bb.j, %.lr.ph.i
  %.sroa.031.020.i122 = phi i32 [ %i.al, %.lr.ph.i ], [ 16, %bb.j ]
  %.sroa.029.021.i121 = phi ptr [ %.sroa.029.0.be.i, %.lr.ph.i ], [ null, %bb.j ] ; 3 uses
  %.sroa.023.022.i120 = phi i64 [ %.sroa.023.0.be.i, %.lr.ph.i ], [ %3, %bb.j ] ; 6 uses
  %.sroa.16.023.i119 = phi i64 [ %.sroa.16.0.be.i, %.lr.ph.i ], [ %2, %bb.j ] ; 12 uses
  %.sroa.0.024.i118 = phi ptr [ %.sroa.0.0.be.i, %.lr.ph.i ], [ %1, %bb.j ] ; 12 uses
  %i.al = add nsw i32 %.sroa.031.020.i122, -1, !dbg !73323 ; 2 uses
  %i.am = lshr i64 %.sroa.16.023.i119, 3, !dbg !73324 ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.am, 6, !dbg !73325
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx.i.i, !dbg !73325 ; 3 uses
  %.idx2.i.i = mul nuw nsw i64 %i.am, 112, !dbg !73326
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx2.i.i, !dbg !73326 ; 3 uses
  %i.ap = icmp samesign ult i64 %.sroa.16.023.i119, 64, !dbg !73327
  br i1 %i.ap, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.l, !dbg !73327

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.aq = call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTmxENCINvMB8_SB14_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB35_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1T_8downcastINtB1V_12ChunkedArrayNtNtB1X_9datatypes9Int64TypeE13downcast_iter0ENCINvB1R_16arg_sort_numericB63_Es_0EIB35_INtNtNtNtB4D_6bitmap5utils12zip_validity11ZipValidityRxIB3I_xENtNtB7x_8iterator10BitmapIterENCNCB6P_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly align 8 %.sroa.0.024.i118, ptr noundef nonnull readonly %i.an, ptr noundef nonnull readonly %i.ao, i64 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !73328
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !73329

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %.lr.ph.i.preheader
  %i.ar = getelementptr i8, ptr %.sroa.0.024.i118, i64 8, !dbg !73330
  %.val6.i.i = load i64, ptr %i.ar, align 8, !dbg !73330, !alias.scope !73271, !noundef !2531 ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 8, !dbg !73330
  %.val7.i.i = load i64, ptr %i.as, align 8, !dbg !73330, !alias.scope !73272, !noundef !2531 ; 2 uses
  %i.at = icmp slt i64 %.val7.i.i, %.val6.i.i, !dbg !73331 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 8, !dbg !73332
  %.val5.i.i = load i64, ptr %i.au, align 8, !dbg !73332, !alias.scope !73272, !noundef !2531 ; 2 uses
  %i.av = icmp slt i64 %.val5.i.i, %.val6.i.i, !dbg !73333
  %i.aw = xor i1 %i.at, %i.av, !dbg !73334
  %i.ax = icmp slt i64 %.val5.i.i, %.val7.i.i, !dbg !73334
  %i.ay = xor i1 %i.at, %i.ax, !dbg !73334
  %..i.i.i = select i1 %i.ay, ptr %i.ao, ptr %i.an, !dbg !73334
  %.sroa.0.0.i.i.i = select i1 %i.aw, ptr %.sroa.0.024.i118, ptr %..i.i.i, !dbg !73334
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !73329

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.l
  %.sroa.0.0.i.sink.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.aq, %bb.l ]
  %i.az = ptrtoint ptr %.sroa.0.0.i.sink.i.i to i64, !dbg !73335
  %i.ba = ptrtoint ptr %.sroa.0.024.i118 to i64, !dbg !73335
  %i.bb = sub nuw i64 %i.az, %i.ba, !dbg !73335   ; 2 uses
  %.sroa.0.0.i.i = lshr exact i64 %i.bb, 4, !dbg !73335 ; 3 uses
  %i.bc = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.16.023.i119, !dbg !73336
  call void @llvm.assume(i1 %i.bc), !dbg !73337
  %.not.i = icmp eq ptr %.sroa.029.021.i121, null, !dbg !73338
  br i1 %.not.i, label %bb.m, label %bb.p, !dbg !73339

bb.m:                                             ; preds = %bb.p, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bd = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB38_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1W_8downcastINtB1Y_12ChunkedArrayNtNtB20_9datatypes9Int64TypeE13downcast_iter0ENCINvB1U_16arg_sort_numericB66_Es_0EIB38_INtNtNtNtB4G_6bitmap5utils12zip_validity11ZipValidityRxIB3L_xENtNtB7A_8iterator10BitmapIterENCNCB6S_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !73340 ; 7 uses
  %.not.i.i = icmp ugt i64 %i.bd, %.sroa.16.023.i119, !dbg !73341
  br i1 %.not.i.i, label %bb.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !73341, !prof !2688

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #35, !dbg !73342, !noalias !73273
  unreachable, !dbg !73342

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bd, !dbg !73343 ; 2 uses
  %.not.i38.i = icmp eq i64 %.sroa.16.023.i119, %i.bd, !dbg !73344
  br i1 %.not.i38.i, label %bb.o, label %bb.u, !dbg !73344, !prof !2688

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #35, !dbg !73345, !noalias !73274
  unreachable, !dbg !73345

bb.p:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bb, !dbg !73346
  %i.bg = getelementptr i8, ptr %.sroa.029.021.i121, i64 8, !dbg !73347
  %.sroa.029.0.val.i = load i64, ptr %i.bg, align 8, !dbg !73347, !alias.scope !73275, !noundef !2531
  %i.bh = getelementptr i8, ptr %i.bf, i64 8, !dbg !73347
  %.val.i = load i64, ptr %i.bh, align 8, !dbg !73347, !alias.scope !73276, !noundef !2531
  %i.bi = icmp slt i64 %.val.i, %.sroa.029.0.val.i, !dbg !73348
  br i1 %i.bi, label %bb.m, label %bb.q, !dbg !73347

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !73349, !noalias !73277
  store ptr %i.f, ptr %i.c, align 8, !dbg !73349, !noalias !73277
  %i.bj = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvNtB6_6select23partition_at_index_loopB17_NCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB3S_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2G_8downcastINtB2I_12ChunkedArrayNtNtB2K_9datatypes9Int64TypeE13downcast_iter0ENCINvB2E_16arg_sort_numericB6Q_Es_0EIB3S_INtNtNtNtB5q_6bitmap5utils12zip_validity11ZipValidityRxIB4v_xENtNtB8k_8iterator10BitmapIterENCNCB7C_s_00ExEs0_0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !dbg !73350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !73351, !noalias !73277
  %i.bk = add i64 %i.bj, 1, !dbg !73352           ; 6 uses
  %i.bl = icmp ugt i64 %i.bk, %.sroa.023.022.i120, !dbg !73353
  br i1 %i.bl, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.r, !dbg !73353

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp ugt i64 %i.bk, %.sroa.16.023.i119, !dbg !73354
  br i1 %i.bm, label %bb.t, label %bb.s, !dbg !73354, !prof !2688

bb.s:                                             ; preds = %bb.r
  %i.bn = sub nuw i64 %.sroa.16.023.i119, %i.bk, !dbg !73355
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bk, !dbg !73356
  %i.bp = sub nuw i64 %.sroa.023.022.i120, %i.bk, !dbg !73357
  br label %.backedge.i, !dbg !73322

.backedge.i:                                      ; preds = %bb.w, %bb.v, %bb.s
  %.sroa.029.0.be.i = phi ptr [ null, %bb.s ], [ %i.be, %bb.w ], [ %.sroa.029.021.i121, %bb.v ]
  %.sroa.023.0.be.i = phi i64 [ %i.bp, %bb.s ], [ %i.bw, %bb.w ], [ %.sroa.023.022.i120, %bb.v ] ; 2 uses
  %.sroa.16.0.be.i = phi i64 [ %i.bn, %bb.s ], [ %i.bu, %bb.w ], [ %i.bd, %bb.v ] ; 4 uses
  %.sroa.0.0.be.i = phi ptr [ %i.bo, %bb.s ], [ %i.bv, %bb.w ], [ %.sroa.0.024.i118, %bb.v ] ; 3 uses
  %i.bq = icmp ult i64 %.sroa.16.0.be.i, 17, !dbg !73318
  br i1 %i.bq, label %._crit_edge.i, label %.lr.ph.i, !dbg !73318

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bk, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.16.023.i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35, !dbg !73358
  unreachable, !dbg !73358

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  %i.br = icmp ult i64 %i.bd, %.sroa.023.022.i120, !dbg !73359
  br i1 %i.br, label %bb.w, label %bb.v, !dbg !73359

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp ugt i64 %i.bd, %.sroa.023.022.i120, !dbg !73360
  br i1 %i.bs, label %.backedge.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73360

bb.w:                                             ; preds = %bb.u
  %i.bt = xor i64 %i.bd, -1, !dbg !73361          ; 2 uses
  %i.bu = add i64 %.sroa.16.023.i119, %i.bt, !dbg !73361
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !73362
  %i.bw = add i64 %.sroa.023.022.i120, %i.bt, !dbg !73363
  br label %.backedge.i, !dbg !73364

bb.x:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmxENCINvMB8_SB1m_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB3n_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2b_8downcastINtB2d_12ChunkedArrayNtNtB2f_9datatypes9Int64TypeE13downcast_iter0ENCINvB29_16arg_sort_numericB6l_Es_0EIB3n_INtNtNtNtB4V_6bitmap5utils12zip_validity11ZipValidityRxIB40_xENtNtB7P_8iterator10BitmapIterENCNCB77_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !73365
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73366

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !73316
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader, !dbg !73316

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i29.epil.init = phi i64 [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.ah, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i30.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i33.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i32.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.x to i1, !dbg !73316
  tail call void @llvm.assume(i1 %lcmp.mod132), !dbg !73316
  %.sroa.1.0.i.i.i.i33.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i30.epil.init, 1, !dbg !73310
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30.epil.init, !dbg !73311
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73262), !dbg !73312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73263), !dbg !73312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73264), !dbg !73313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73265), !dbg !73313
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !73307
  %.val.i.i.i.i.i.i34.epil = load i64, ptr %i.by, align 8, !dbg !73307, !alias.scope !73266, !noalias !73267, !noundef !2531
  %i.bz = icmp slt i64 %.val2.i.i.i.i.i.i29.epil.init, %.val.i.i.i.i.i.i34.epil, !dbg !73314
  %.1.i.i.i.i.i.i36.epil = select i1 %i.bz, i64 %.sroa.1.0.i.i.i.i33.epil, i64 %.sroa.02.0.i.i.i.i32.epil.init, !dbg !73315
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !73367

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i36.lcssa = phi i64 [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i36.epil, %.epil.preheader ], !dbg !73315 ; 3 uses
  %i.ca = icmp ult i64 %.1.i.i.i.i.i.i36.lcssa, %2, !dbg !73367
  br i1 %i.ca, label %bb.z, label %bb.y, !dbg !73367

bb.y:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i36.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36, !dbg !73367
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1.i.i.i.i.i.i36.lcssa, !dbg !73368 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !73369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !dbg !73370
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !73371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !73372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !73373
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73374

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0, !dbg !73303
  br i1 %lcmp.mod136.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader134, !dbg !73303

.epil.preheader134:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi i64 [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.w, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.m to i1, !dbg !73303
  tail call void @llvm.assume(i1 %lcmp.mod138), !dbg !73303
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !73297
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !73298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73251), !dbg !73299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73252), !dbg !73299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73253), !dbg !73300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73254), !dbg !73300
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24, !dbg !73294
  %.val2.i.i.i.i.i.i.epil = load i64, ptr %i.cd, align 8, !dbg !73294, !alias.scope !73255, !noalias !73256, !noundef !2531
  %i.ce = icmp slt i64 %.val2.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.epil.init, !dbg !73301
  %.1.i.i.i.i.i.i.epil = select i1 %i.ce, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !73302
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !73375

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %.epil.preheader134, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.e
  %i.cf = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader134 ] ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %2, !dbg !73375
  br i1 %i.cg, label %bb.ab, label %bb.aa, !dbg !73375

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #36, !dbg !73375
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cf, !dbg !73376 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !73377 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !73378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !dbg !73379
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !dbg !73380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !73381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !73382
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73383

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.v, %bb.q, %bb.x, %bb.k, %._crit_edge.i, %bb.z, %bb.ab
  %i.cj = load i64, ptr %i.g, align 8, !dbg !73384, !noundef !2531 ; 5 uses
  %.not.i38 = icmp ugt i64 %i.cj, %2, !dbg !73385
  br i1 %.not.i38, label %bb.ac, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !73385, !prof !2688

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35, !dbg !73386, !noalias !73280
  unreachable, !dbg !73386

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.not.i39 = icmp eq i64 %2, %i.cj, !dbg !73387
  br i1 %.not.i39, label %bb.ad, label %bb.ae, !dbg !73387, !prof !2688

bb.ad:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #35, !dbg !73388, !noalias !73281
  unreachable, !dbg !73388

bb.ae:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cj, !dbg !73389 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !73390
  %i.cm = xor i64 %i.cj, -1, !dbg !73391
  %i.cn = add nsw i64 %2, %i.cm, !dbg !73391
  store ptr %1, ptr %0, align 8, !dbg !73392
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !73392
  store i64 %i.cj, ptr %i.co, align 8, !dbg !73392
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !73392
  store ptr %i.ck, ptr %i.cp, align 8, !dbg !73392
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !73392
  store ptr %i.cl, ptr %i.cq, align 8, !dbg !73392
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !73392
  store i64 %i.cn, ptr %i.cr, align 8, !dbg !73392
  ret void, !dbg !73393
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexTmxENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB34_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes9Int64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB62_Es_0EIB34_INtNtNtNtB4C_6bitmap5utils12zip_validity11ZipValidityRxIB3H_xENtNtB7w_8iterator10BitmapIterENCNCB6O_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !73394 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %3, ptr %i.g, align 8
  store ptr %4, ptr %i.f, align 8
  store i64 %2, ptr %i.e, align 8, !dbg !73608
  %.not = icmp ult i64 %3, %2, !dbg !73609
  br i1 %.not, label %bb.c, label %bb.b, !dbg !73609, !prof !2818

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !73610
  store ptr %i.g, ptr %i.d, align 8, !dbg !73610
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !73610
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !73610
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !73610
  store ptr %i.e, ptr %i.h, align 8, !dbg !73610
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !73610
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !73610
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #36, !dbg !73611
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = add nsw i64 %2, -1, !dbg !73612
  %i.j = icmp eq i64 %3, %i.i, !dbg !73613
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !73613

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %3, 0, !dbg !73614
  br i1 %i.k, label %bb.h, label %bb.j, !dbg !73614

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73573), !dbg !73615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73574), !dbg !73616
  %i.l = icmp eq i64 %2, 1, !dbg !73617
  br i1 %i.l, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.f, !dbg !73618

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i64 %2, 1152921504606846975, !dbg !73619 ; 4 uses
  %i.n = and i64 %i.m, 1152921504606846975, !dbg !73619
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !73620, !alias.scope !73575, !noalias !73576 ; 2 uses
  %xtraiter135 = and i64 %i.m, 1, !dbg !73621
  %i.o = icmp eq i64 %i.n, 1, !dbg !73621
  br i1 %i.o, label %.epil.preheader134, label %.new133, !dbg !73621

.new133:                                          ; preds = %bb.f
  %unroll_iter139 = and i64 %i.m, 1152921504606846974, !dbg !73621
  br label %bb.g, !dbg !73621

bb.g:                                             ; preds = %bb.g, %.new133
  %.val.i.i.i.i.i.i = phi i64 [ %.val.i.i.pre.i.i.i.i, %.new133 ], [ %i.w, %bb.g ], !dbg !73620 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new133 ], [ %.sroa.1.0.i.i.i.i.1, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new133 ], [ %.1.i.i.i.i.i.i.1, %bb.g ], !dbg !73622
  %niter140 = phi i64 [ 0, %.new133 ], [ %niter140.next.1, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !73623 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i, !dbg !73624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73577), !dbg !73625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73578), !dbg !73625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73579), !dbg !73626
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73580), !dbg !73626
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !73620
  %.val2.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !dbg !73620, !alias.scope !73581, !noalias !73582, !noundef !2531 ; 2 uses
  %i.r = icmp slt i64 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !73627
  %.1.i.i.i.i.i.i = select i1 %i.r, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !73628
  %i.s = tail call i64 @llvm.smax.i64(i64 %.val.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i), !dbg !73620 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !73623 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i, !dbg !73624
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !73620
  %.val2.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !dbg !73620, !alias.scope !73583, !noalias !73582, !noundef !2531 ; 2 uses
  %i.v = icmp slt i64 %i.s, %.val2.i.i.i.i.i.i.1, !dbg !73627
  %.1.i.i.i.i.i.i.1 = select i1 %i.v, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !73628 ; 3 uses
  %i.w = tail call i64 @llvm.smax.i64(i64 %i.s, i64 %.val2.i.i.i.i.i.i.1), !dbg !73620 ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2, !dbg !73629 ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139, !dbg !73629
  br i1 %niter140.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !73629

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73584), !dbg !73630
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73585), !dbg !73631
  %i.x = add nuw nsw i64 %2, 1152921504606846975, !dbg !73632 ; 4 uses
  %i.y = and i64 %i.x, 1152921504606846975, !dbg !73632
  %.phi.trans.insert.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i28, align 8, !dbg !73633, !alias.scope !73586, !noalias !73587 ; 2 uses
  %xtraiter = and i64 %i.x, 1, !dbg !73634
  %i.z = icmp eq i64 %i.y, 1, !dbg !73634
  br i1 %i.z, label %.epil.preheader, label %.new, !dbg !73634

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.x, 1152921504606846974, !dbg !73634
  br label %bb.i, !dbg !73634

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i29 = phi i64 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ah, %bb.i ], !dbg !73633 ; 2 uses
  %.sroa.1.0.i.i.in.i.i30 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i33.1, %bb.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i32 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i36.1, %bb.i ], !dbg !73635
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %.sroa.1.0.i.i.i.i33 = or disjoint i64 %.sroa.1.0.i.i.in.i.i30, 1, !dbg !73636 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30, !dbg !73637
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73588), !dbg !73638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73589), !dbg !73638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73590), !dbg !73639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73591), !dbg !73639
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !73633
  %.val.i.i.i.i.i.i34 = load i64, ptr %i.ab, align 8, !dbg !73633, !alias.scope !73592, !noalias !73593, !noundef !2531 ; 2 uses
  %i.ac = icmp slt i64 %.val.i.i.i.i.i.i34, %.val2.i.i.i.i.i.i29, !dbg !73640
  %.1.i.i.i.i.i.i36 = select i1 %i.ac, i64 %.sroa.1.0.i.i.i.i33, i64 %.sroa.02.0.i.i.i.i32, !dbg !73641
  %i.ad = tail call i64 @llvm.smin.i64(i64 %.val.i.i.i.i.i.i34, i64 %.val2.i.i.i.i.i.i29), !dbg !73633 ; 2 uses
  %.sroa.1.0.i.i.i.i33.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i30, 2, !dbg !73636 ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i33, !dbg !73637
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !73633
  %.val.i.i.i.i.i.i34.1 = load i64, ptr %i.af, align 8, !dbg !73633, !alias.scope !73594, !noalias !73593, !noundef !2531 ; 2 uses
  %i.ag = icmp slt i64 %.val.i.i.i.i.i.i34.1, %i.ad, !dbg !73640
  %.1.i.i.i.i.i.i36.1 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i33.1, i64 %.1.i.i.i.i.i.i36, !dbg !73641 ; 3 uses
  %i.ah = tail call i64 @llvm.smin.i64(i64 %.val.i.i.i.i.i.i34.1, i64 %i.ad), !dbg !73633 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !73642  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !73642
  br i1 %niter.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, label %bb.i, !dbg !73642

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73595), !dbg !73643
  %i.ai = icmp samesign ult i64 %2, 17, !dbg !73644
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !73644

.lr.ph.i:                                         ; preds = %.backedge.i
  %i.aj = icmp eq i32 %i.al, 0, !dbg !73645
  br i1 %i.aj, label %bb.k, label %.lr.ph.i.preheader, !dbg !73645

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  %.sroa.16.0.lcssa.i = phi i64 [ %2, %bb.j ], [ %.sroa.16.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %.sroa.0.0.be.i, %.backedge.i ]
  %i.ak = icmp samesign ugt i64 %.sroa.16.0.lcssa.i, 1, !dbg !73646
  br i1 %i.ak, label %bb.x, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73646

bb.k:                                             ; preds = %.lr.ph.i
  call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansTmxENCINvMB6_SB12_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1R_8downcastINtB1T_12ChunkedArrayNtNtB1V_9datatypes9Int64TypeE13downcast_iter0ENCINvB1P_16arg_sort_numericB61_Es_0EIB33_INtNtNtNtB4B_6bitmap5utils12zip_validity11ZipValidityRxIB3G_xENtNtB7v_8iterator10BitmapIterENCNCB6N_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.be.i, i64 noundef %.sroa.16.0.be.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.sroa.023.0.be.i), !dbg !73647
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73648

.lr.ph.i.preheader:                               ; preds = %bb.j, %.lr.ph.i
  %.sroa.031.020.i122 = phi i32 [ %i.al, %.lr.ph.i ], [ 16, %bb.j ]
  %.sroa.029.021.i121 = phi ptr [ %.sroa.029.0.be.i, %.lr.ph.i ], [ null, %bb.j ] ; 3 uses
  %.sroa.023.022.i120 = phi i64 [ %.sroa.023.0.be.i, %.lr.ph.i ], [ %3, %bb.j ] ; 6 uses
  %.sroa.16.023.i119 = phi i64 [ %.sroa.16.0.be.i, %.lr.ph.i ], [ %2, %bb.j ] ; 12 uses
  %.sroa.0.024.i118 = phi ptr [ %.sroa.0.0.be.i, %.lr.ph.i ], [ %1, %bb.j ] ; 12 uses
  %i.al = add nsw i32 %.sroa.031.020.i122, -1, !dbg !73649 ; 2 uses
  %i.am = lshr i64 %.sroa.16.023.i119, 3, !dbg !73650 ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.am, 6, !dbg !73651
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx.i.i, !dbg !73651 ; 3 uses
  %.idx2.i.i = mul nuw nsw i64 %i.am, 112, !dbg !73652
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx2.i.i, !dbg !73652 ; 3 uses
  %i.ap = icmp samesign ult i64 %.sroa.16.023.i119, 64, !dbg !73653
  br i1 %i.ap, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.l, !dbg !73653

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.aq = call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTmxENCINvMB8_SB14_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB35_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1T_8downcastINtB1V_12ChunkedArrayNtNtB1X_9datatypes9Int64TypeE13downcast_iter0ENCINvB1R_16arg_sort_numericB63_Es_0EIB35_INtNtNtNtB4D_6bitmap5utils12zip_validity11ZipValidityRxIB3I_xENtNtB7x_8iterator10BitmapIterENCNCB6P_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly align 8 %.sroa.0.024.i118, ptr noundef nonnull readonly %i.an, ptr noundef nonnull readonly %i.ao, i64 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !73654
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !73655

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %.lr.ph.i.preheader
  %i.ar = getelementptr i8, ptr %.sroa.0.024.i118, i64 8, !dbg !73656
  %.val6.i.i = load i64, ptr %i.ar, align 8, !dbg !73656, !alias.scope !73597, !noundef !2531 ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 8, !dbg !73656
  %.val7.i.i = load i64, ptr %i.as, align 8, !dbg !73656, !alias.scope !73598, !noundef !2531 ; 2 uses
  %i.at = icmp slt i64 %.val6.i.i, %.val7.i.i, !dbg !73657 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 8, !dbg !73658
  %.val5.i.i = load i64, ptr %i.au, align 8, !dbg !73658, !alias.scope !73598, !noundef !2531 ; 2 uses
  %i.av = icmp slt i64 %.val6.i.i, %.val5.i.i, !dbg !73659
  %i.aw = xor i1 %i.at, %i.av, !dbg !73660
  %i.ax = icmp slt i64 %.val7.i.i, %.val5.i.i, !dbg !73660
  %i.ay = xor i1 %i.at, %i.ax, !dbg !73660
  %..i.i.i = select i1 %i.ay, ptr %i.ao, ptr %i.an, !dbg !73660
  %.sroa.0.0.i.i.i = select i1 %i.aw, ptr %.sroa.0.024.i118, ptr %..i.i.i, !dbg !73660
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !73655

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.l
  %.sroa.0.0.i.sink.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.aq, %bb.l ]
  %i.az = ptrtoint ptr %.sroa.0.0.i.sink.i.i to i64, !dbg !73661
  %i.ba = ptrtoint ptr %.sroa.0.024.i118 to i64, !dbg !73661
  %i.bb = sub nuw i64 %i.az, %i.ba, !dbg !73661   ; 2 uses
  %.sroa.0.0.i.i = lshr exact i64 %i.bb, 4, !dbg !73661 ; 3 uses
  %i.bc = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.16.023.i119, !dbg !73662
  call void @llvm.assume(i1 %i.bc), !dbg !73663
  %.not.i = icmp eq ptr %.sroa.029.021.i121, null, !dbg !73664
  br i1 %.not.i, label %bb.m, label %bb.p, !dbg !73665

bb.m:                                             ; preds = %bb.p, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bd = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB38_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1W_8downcastINtB1Y_12ChunkedArrayNtNtB20_9datatypes9Int64TypeE13downcast_iter0ENCINvB1U_16arg_sort_numericB66_Es_0EIB38_INtNtNtNtB4G_6bitmap5utils12zip_validity11ZipValidityRxIB3L_xENtNtB7A_8iterator10BitmapIterENCNCB6S_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !73666 ; 7 uses
  %.not.i.i = icmp ugt i64 %i.bd, %.sroa.16.023.i119, !dbg !73667
  br i1 %.not.i.i, label %bb.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !73667, !prof !2688

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #35, !dbg !73668, !noalias !73599
  unreachable, !dbg !73668

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bd, !dbg !73669 ; 2 uses
  %.not.i38.i = icmp eq i64 %.sroa.16.023.i119, %i.bd, !dbg !73670
  br i1 %.not.i38.i, label %bb.o, label %bb.u, !dbg !73670, !prof !2688

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #35, !dbg !73671, !noalias !73600
  unreachable, !dbg !73671

bb.p:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bb, !dbg !73672
  %i.bg = getelementptr i8, ptr %.sroa.029.021.i121, i64 8, !dbg !73673
  %.sroa.029.0.val.i = load i64, ptr %i.bg, align 8, !dbg !73673, !alias.scope !73601, !noundef !2531
  %i.bh = getelementptr i8, ptr %i.bf, i64 8, !dbg !73673
  %.val.i = load i64, ptr %i.bh, align 8, !dbg !73673, !alias.scope !73602, !noundef !2531
  %i.bi = icmp slt i64 %.sroa.029.0.val.i, %.val.i, !dbg !73674
  br i1 %i.bi, label %bb.m, label %bb.q, !dbg !73673

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !73675, !noalias !73603
  store ptr %i.f, ptr %i.c, align 8, !dbg !73675, !noalias !73603
  %i.bj = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvNtB6_6select23partition_at_index_loopB17_NCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB3S_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2G_8downcastINtB2I_12ChunkedArrayNtNtB2K_9datatypes9Int64TypeE13downcast_iter0ENCINvB2E_16arg_sort_numericB6Q_Es_0EIB3S_INtNtNtNtB5q_6bitmap5utils12zip_validity11ZipValidityRxIB4v_xENtNtB8k_8iterator10BitmapIterENCNCB7C_s_00ExEs1_0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !dbg !73676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !73677, !noalias !73603
  %i.bk = add i64 %i.bj, 1, !dbg !73678           ; 6 uses
  %i.bl = icmp ugt i64 %i.bk, %.sroa.023.022.i120, !dbg !73679
  br i1 %i.bl, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.r, !dbg !73679

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp ugt i64 %i.bk, %.sroa.16.023.i119, !dbg !73680
  br i1 %i.bm, label %bb.t, label %bb.s, !dbg !73680, !prof !2688

bb.s:                                             ; preds = %bb.r
  %i.bn = sub nuw i64 %.sroa.16.023.i119, %i.bk, !dbg !73681
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bk, !dbg !73682
  %i.bp = sub nuw i64 %.sroa.023.022.i120, %i.bk, !dbg !73683
  br label %.backedge.i, !dbg !73648

.backedge.i:                                      ; preds = %bb.w, %bb.v, %bb.s
  %.sroa.029.0.be.i = phi ptr [ null, %bb.s ], [ %i.be, %bb.w ], [ %.sroa.029.021.i121, %bb.v ]
  %.sroa.023.0.be.i = phi i64 [ %i.bp, %bb.s ], [ %i.bw, %bb.w ], [ %.sroa.023.022.i120, %bb.v ] ; 2 uses
  %.sroa.16.0.be.i = phi i64 [ %i.bn, %bb.s ], [ %i.bu, %bb.w ], [ %i.bd, %bb.v ] ; 4 uses
  %.sroa.0.0.be.i = phi ptr [ %i.bo, %bb.s ], [ %i.bv, %bb.w ], [ %.sroa.0.024.i118, %bb.v ] ; 3 uses
  %i.bq = icmp ult i64 %.sroa.16.0.be.i, 17, !dbg !73644
  br i1 %i.bq, label %._crit_edge.i, label %.lr.ph.i, !dbg !73644

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bk, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.16.023.i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35, !dbg !73684
  unreachable, !dbg !73684

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  %i.br = icmp ult i64 %i.bd, %.sroa.023.022.i120, !dbg !73685
  br i1 %i.br, label %bb.w, label %bb.v, !dbg !73685

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp ugt i64 %i.bd, %.sroa.023.022.i120, !dbg !73686
  br i1 %i.bs, label %.backedge.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73686

bb.w:                                             ; preds = %bb.u
  %i.bt = xor i64 %i.bd, -1, !dbg !73687          ; 2 uses
  %i.bu = add i64 %.sroa.16.023.i119, %i.bt, !dbg !73687
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !73688
  %i.bw = add i64 %.sroa.023.022.i120, %i.bt, !dbg !73689
  br label %.backedge.i, !dbg !73690

bb.x:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmxENCINvMB8_SB1m_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB3n_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2b_8downcastINtB2d_12ChunkedArrayNtNtB2f_9datatypes9Int64TypeE13downcast_iter0ENCINvB29_16arg_sort_numericB6l_Es_0EIB3n_INtNtNtNtB4V_6bitmap5utils12zip_validity11ZipValidityRxIB40_xENtNtB7P_8iterator10BitmapIterENCNCB77_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !73691
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73692

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !73642
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader, !dbg !73642

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i29.epil.init = phi i64 [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.ah, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i30.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i33.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i32.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.x to i1, !dbg !73642
  tail call void @llvm.assume(i1 %lcmp.mod132), !dbg !73642
  %.sroa.1.0.i.i.i.i33.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i30.epil.init, 1, !dbg !73636
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30.epil.init, !dbg !73637
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73588), !dbg !73638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73589), !dbg !73638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73590), !dbg !73639
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73591), !dbg !73639
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !73633
  %.val.i.i.i.i.i.i34.epil = load i64, ptr %i.by, align 8, !dbg !73633, !alias.scope !73592, !noalias !73593, !noundef !2531
  %i.bz = icmp slt i64 %.val.i.i.i.i.i.i34.epil, %.val2.i.i.i.i.i.i29.epil.init, !dbg !73640
  %.1.i.i.i.i.i.i36.epil = select i1 %i.bz, i64 %.sroa.1.0.i.i.i.i33.epil, i64 %.sroa.02.0.i.i.i.i32.epil.init, !dbg !73641
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !73693

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i36.lcssa = phi i64 [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i36.epil, %.epil.preheader ], !dbg !73641 ; 3 uses
  %i.ca = icmp ult i64 %.1.i.i.i.i.i.i36.lcssa, %2, !dbg !73693
  br i1 %i.ca, label %bb.z, label %bb.y, !dbg !73693

bb.y:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i36.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36, !dbg !73693
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1.i.i.i.i.i.i36.lcssa, !dbg !73694 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !73695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !dbg !73696
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !73697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !73698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !73699
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73700

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0, !dbg !73629
  br i1 %lcmp.mod136.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader134, !dbg !73629

.epil.preheader134:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi i64 [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.w, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.m to i1, !dbg !73629
  tail call void @llvm.assume(i1 %lcmp.mod138), !dbg !73629
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !73623
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !73624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73577), !dbg !73625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73578), !dbg !73625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73579), !dbg !73626
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73580), !dbg !73626
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24, !dbg !73620
  %.val2.i.i.i.i.i.i.epil = load i64, ptr %i.cd, align 8, !dbg !73620, !alias.scope !73581, !noalias !73582, !noundef !2531
  %i.ce = icmp slt i64 %.val.i.i.i.i.i.i.epil.init, %.val2.i.i.i.i.i.i.epil, !dbg !73627
  %.1.i.i.i.i.i.i.epil = select i1 %i.ce, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !73628
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !73701

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %.epil.preheader134, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.e
  %i.cf = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader134 ] ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %2, !dbg !73701
  br i1 %i.cg, label %bb.ab, label %bb.aa, !dbg !73701

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #36, !dbg !73701
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cf, !dbg !73702 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !73703 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !73704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !dbg !73705
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !dbg !73706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !73707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !73708
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !73709

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.v, %bb.q, %bb.x, %bb.k, %._crit_edge.i, %bb.z, %bb.ab
  %i.cj = load i64, ptr %i.g, align 8, !dbg !73710, !noundef !2531 ; 5 uses
  %.not.i38 = icmp ugt i64 %i.cj, %2, !dbg !73711
  br i1 %.not.i38, label %bb.ac, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !73711, !prof !2688

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35, !dbg !73712, !noalias !73606
  unreachable, !dbg !73712

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.not.i39 = icmp eq i64 %2, %i.cj, !dbg !73713
  br i1 %.not.i39, label %bb.ad, label %bb.ae, !dbg !73713, !prof !2688

bb.ad:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #35, !dbg !73714, !noalias !73607
  unreachable, !dbg !73714

bb.ae:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cj, !dbg !73715 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !73716
  %i.cm = xor i64 %i.cj, -1, !dbg !73717
  %i.cn = add nsw i64 %2, %i.cm, !dbg !73717
  store ptr %1, ptr %0, align 8, !dbg !73718
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !73718
  store i64 %i.cj, ptr %i.co, align 8, !dbg !73718
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !73718
  store ptr %i.ck, ptr %i.cp, align 8, !dbg !73718
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !73718
  store ptr %i.cl, ptr %i.cq, align 8, !dbg !73718
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !73718
  store i64 %i.cn, ptr %i.cr, align 8, !dbg !73718
  ret void, !dbg !73719
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace13parse_integerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !73720 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.644 = alloca [56 x i8], align 8          ; 6 uses
  %i.n = alloca [56 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [56 x i8], align 8                ; 8 uses
  %i.q = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.628 = alloca [56 x i8], align 8          ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.618 = alloca [56 x i8], align 8          ; 6 uses
  %i.s = alloca [56 x i8], align 8                ; 8 uses
  %i.t = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.68 = alloca [56 x i8], align 8           ; 6 uses
  %i.u = alloca [56 x i8], align 8                ; 9 uses
  %i.v = alloca [56 x i8], align 8                ; 9 uses
  %i.w = alloca [56 x i8], align 8                ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 2 uses
  %i.y = alloca [56 x i8], align 8                ; 4 uses
  %i.z = alloca [56 x i8], align 8                ; 4 uses
  %i.aa = alloca [56 x i8], align 8               ; 5 uses
  %i.ab = alloca [56 x i8], align 8               ; 5 uses
  %i.ac = alloca [56 x i8], align 8               ; 10 uses
  %i.ad = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.ae = alloca [56 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !73882
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !73836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !73836
  call void @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity32broadcast_try_binary_elementwiseNtNtB8_9datatypes10StringTypeNtB1y_10UInt32TypeNtB1y_10Int128TypeNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace13parse_integerB2h_E0nNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ad, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2), !dbg !73836
  %i.af = load i64, ptr %i.ad, align 8, !dbg !73883, !range !3034, !noundef !2531 ; 2 uses
  %.not = icmp eq i64 %i.af, 18, !dbg !73883
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !73884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 56, i1 false), !dbg !73884
  br i1 %.not, label %bb.c, label %bb.b, !dbg !73885

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnINtNtCscgRAwXFJnXP_4core7convert4FromNtNtB9_6series6SeriesE4from:bb.a
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread.i.i, label %bb.bg, !dbg !136663, !prof !136589

bb.p:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136675, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136676

bb.q:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136677, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136678

bb.r:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136679, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136680

bb.s:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136681, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136682

bb.t:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136683, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136684

bb.u:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136685, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136686

bb.v:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136687, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136688

bb.w:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136689, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136690

bb.x:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136691, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136692

bb.y:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136693, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136694

bb.z:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136695, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136696

bb.aa:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136697, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136698

bb.ab:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136699, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136700

bb.ac:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136701, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136702

bb.ad:                                            ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !136703
  %i.bf = load i64, ptr %i.be, align 8, !dbg !136703, !alias.scope !136579, !noalias !136574, !noundef !2531
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 1, !dbg !136704
  %i.bh = load i8, ptr %i.bg, align 1, !dbg !136704, !range !2878, !alias.scope !136579, !noalias !136574, !noundef !2531
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !136705
  %i.bj = load ptr, ptr %i.bi, align 16, !dbg !136705, !alias.scope !136579, !noalias !136574, !align !2689, !noundef !2531 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bj, null, !dbg !136706
  br i1 %.not9.i.i, label %.noexc19.i, label %bb.bh, !dbg !136707

bb.ae:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136708, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136709

bb.af:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136710, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136711

bb.ag:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136712, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136713

bb.ah:                                            ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 4, !dbg !136714
  %i.bl = load i32, ptr %i.bk, align 4, !dbg !136714, !alias.scope !136579, !noalias !136574, !noundef !2531
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !136715
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !136715, !alias.scope !136579, !noalias !136574, !nonnull !2531, !align !2689, !noundef !2531
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !136716, !noalias !136590, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.bp = atomicrmw add ptr %i.bo, i64 1 monotonic, align 8, !dbg !136717, !noalias !136590
  %i.bq = icmp slt i64 %i.bp, 0, !dbg !136718
  br i1 %i.bq, label %bb.bj, label %bb.bi, !dbg !136718

bb.ai:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136719, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136720

bb.aj:                                            ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 4, !dbg !136721
  %i.bs = load i32, ptr %i.br, align 4, !dbg !136721, !alias.scope !136579, !noalias !136574, !noundef !2531
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !136722
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !136722, !alias.scope !136579, !noalias !136574, !nonnull !2531, !align !2689, !noundef !2531
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !136723, !noalias !136590, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8, !dbg !136724, !noalias !136590
  %i.bx = icmp slt i64 %i.bw, 0, !dbg !136725
  br i1 %i.bx, label %bb.bl, label %bb.bk, !dbg !136725

bb.ak:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136726, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136727

bb.al:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136728, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136729

bb.am:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136730, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136731

bb.an:                                            ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !136732
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !136732, !alias.scope !136579, !noalias !136574, !nonnull !2531, !noundef !2531
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !136732
  %i.cb = load ptr, ptr %i.ca, align 16, !dbg !136732, !alias.scope !136579, !noalias !136574, !nonnull !2531, !align !2689, !noundef !2531
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80, !dbg !136733
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !136733, !invariant.load !2531, !noalias !136590, !nonnull !2531
  %i.ce = invoke { ptr, ptr } %i.cd(ptr noundef nonnull %i.bz) #37
          to label %.noexc15.i unwind label %bb.d, !dbg !136734, !noalias !136575, !inline_history !136313 ; 2 uses

.noexc15.i:                                       ; preds = %bb.an
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0, !dbg !136734
  %i.cg = extractvalue { ptr, ptr } %i.ce, 1, !dbg !136734
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !136735
  store ptr %i.cf, ptr %i.ch, align 8, !dbg !136735, !alias.scope !136578, !noalias !136574
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !136735
  store ptr %i.cg, ptr %i.ci, align 16, !dbg !136735, !alias.scope !136578, !noalias !136574
  store i8 28, ptr %i.t, align 16, !dbg !136735, !alias.scope !136578, !noalias !136574
  br label %bb.bv, !dbg !136736

bb.ao:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136737, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136738

bb.ap:                                            ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !136739
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !136739, !alias.scope !136579, !noalias !136574, !noundef !2531
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !136740
  %i.cm = load ptr, ptr %i.cl, align 16, !dbg !136740, !alias.scope !136579, !noalias !136574, !nonnull !2531, !align !2689, !noundef !2531
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !136741
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !136741, !alias.scope !136579, !noalias !136574, !nonnull !2531, !align !3340, !noundef !2531 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !136741
  %i.cq = load i64, ptr %i.cp, align 16, !dbg !136741, !alias.scope !136579, !noalias !136574, !noundef !2531 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !136742, !noalias !136594
  invoke void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value20struct_to_avs_static(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, i64 noundef %i.ck, ptr noundef nonnull align 8 %i.cm, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.co, i64 noundef %i.cq)
          to label %.noexc16.i unwind label %bb.d, !dbg !136743, !noalias !136575

.noexc16.i:                                       ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !136744, !noalias !136594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !136745, !noalias !136594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !136745, !noalias !136594
  call void @llvm.experimental.noalias.scope.decl(metadata !136595), !dbg !136746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !136747, !noalias !136597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !136748, !noalias !136597
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, 115292150460684698) %i.cq, i1 noundef zeroext false, i64 noundef 16, i64 noundef 80)
          to label %.noexc.i.i unwind label %bb.bm, !dbg !136748, !noalias !136590

.noexc.i.i:                                       ; preds = %.noexc16.i
  %i.cr = load i64, ptr %i.g, align 8, !dbg !136748, !range !2686, !noalias !136597, !noundef !2531
  %i.cs = trunc nuw i64 %i.cr to i1, !dbg !136749
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !136750
  %i.cu = load i64, ptr %i.ct, align 8, !dbg !136750, !range !2687, !noalias !136597, !noundef !2531 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !136750 ; 2 uses
  br i1 %i.cs, label %bb.aq, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr.exit.i.i.i, !dbg !136749, !prof !2688

bb.aq:                                            ; preds = %.noexc.i.i
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !136751, !noalias !136597
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cu, i64 %i.cw) #36
          to label %.noexc10.i.i unwind label %bb.bm, !dbg !136752, !noalias !136590

.noexc10.i.i:                                     ; preds = %bb.aq
  unreachable, !dbg !136752

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %.noexc.i.i
  %i.cx = load ptr, ptr %i.cv, align 8, !dbg !136753, !noalias !136597, !nonnull !2531, !noundef !2531 ; 2 uses
  %i.cy = icmp samesign ule i64 %i.cq, %i.cu, !dbg !136754
  call void @llvm.assume(i1 %i.cy), !dbg !136755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !136756, !noalias !136597
  store i64 %i.cu, ptr %i.i, align 8, !dbg !136757, !noalias !136597
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !136757
  store ptr %i.cx, ptr %i.cz, align 8, !dbg !136757, !noalias !136597
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !136757 ; 2 uses
  %i.db = getelementptr inbounds nuw [80 x i8], ptr %i.co, i64 %i.cq, !dbg !136758
  %i.dc = icmp eq i64 %i.cu, 0, !dbg !136759
  br i1 %i.dc, label %.loopexit.i.i, label %.lr.ph.i.i.i, !dbg !136759

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  br label %bb.ar, !dbg !136759

bb.ar:                                            ; preds = %bb.ay, %.lr.ph.i.i.i
  %.sroa.012.025.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %i.dg, %bb.ay ] ; 5 uses
  %.sroa.7.024.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.dh, %bb.ay ] ; 3 uses
  %.sroa.10.023.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ %i.de, %bb.ay ]
  %i.de = add i64 %.sroa.10.023.i.i.i, -1, !dbg !136760 ; 2 uses
  %i.df = icmp eq ptr %.sroa.012.025.i.i.i, %i.db, !dbg !136761
  br i1 %i.df, label %.loopexit.i.i, label %bb.as, !dbg !136762

.loopexit.i.i.i:                                  ; preds = %bb.at
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i, i64 80, !dbg !136763
  %i.dh = add nuw nsw i64 %.sroa.7.024.i.i.i, 1, !dbg !136764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !136765
  call void @llvm.experimental.noalias.scope.decl(metadata !136600), !dbg !136766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !136767, !noalias !136597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !136767, !noalias !136601
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i, i64 48, !dbg !136768 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i, i64 71, !dbg !136769
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !136769, !range !2800, !alias.scope !136602, !noalias !136590, !noundef !2531
  %i.dl = icmp eq i8 %i.dk, -40, !dbg !136770
  br i1 %i.dl, label %bb.at, label %bb.au, !dbg !136770

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di) #40
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !dbg !136771, !noalias !136603

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.di, i64 24, i1 false), !dbg !136772, !noalias !136604
  br label %.noexc.i.i.i, !dbg !136773

.noexc.i.i.i:                                     ; preds = %bb.au, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !136774, !noalias !136601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !136775, !noalias !136601
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.012.025.i.i.i)
          to label %bb.ay unwind label %bb.av, !dbg !136775, !noalias !136604

bb.av:                                            ; preds = %.noexc.i.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !136776
  %i.do = load i8, ptr %i.dn, align 1, !dbg !136776, !range !2800, !alias.scope !136605, !noalias !136601, !noundef !2531
  %i.dp = icmp eq i8 %i.do, -40, !dbg !136777
  br i1 %i.dp, label %bb.aw, label %bb.ba, !dbg !136777, !prof !2688

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ba unwind label %bb.ax, !dbg !136778, !noalias !136604

bb.ax:                                            ; preds = %bb.aw
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !136779, !noalias !136604
  unreachable, !dbg !136779

bb.ay:                                            ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !136779, !noalias !136606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.h, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !136779, !noalias !136606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !136780, !noalias !136601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !136780, !noalias !136601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !136781, !noalias !136597
  %i.dr = getelementptr inbounds nuw [80 x i8], ptr %i.cx, i64 %.sroa.7.024.i.i.i, !dbg !136782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.dr, ptr noundef nonnull align 16 dereferenceable(80) %i.h, i64 80, i1 false), !dbg !136783, !noalias !136603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !136784
  %i.ds = icmp eq i64 %i.de, 0, !dbg !136759
  br i1 %i.ds, label %.loopexit.i.i, label %bb.ar, !dbg !136759

bb.az:                                            ; preds = %bb.ba
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !136785, !noalias !136603
  unreachable, !dbg !136785

bb.ba:                                            ; preds = %bb.aw, %bb.av, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.dm, %bb.av ], [ %i.dm, %bb.aw ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ]
  store i64 %.sroa.7.024.i.i.i, ptr %i.da, align 8, !dbg !136786, !noalias !136597
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #38
          to label %.body.i.i unwind label %bb.az, !dbg !136787, !noalias !136603

bb.bb:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136788, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136789

bb.bc:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136790, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136791

bb.bd:                                            ; preds = %bb.h
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !136792
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !136792, !alias.scope !136579, !noalias !136574, !nonnull !2531, !noundef !2531
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !136792
  %i.dx = load i64, ptr %i.dw, align 16, !dbg !136792, !alias.scope !136579, !noalias !136574, !noundef !2531 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !136793, !noalias !136594
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.dx, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.d, !dbg !136793, !noalias !136575

.noexc17.i:                                       ; preds = %bb.bd
  %i.dy = load i64, ptr %i.k, align 8, !dbg !136793, !range !2686, !noalias !136594, !noundef !2531
  %i.dz = trunc nuw i64 %i.dy to i1, !dbg !136794
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !136795
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !136795, !range !2687, !noalias !136594, !noundef !2531 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !136795 ; 2 uses
  br i1 %i.dz, label %bb.br, label %bb.bs, !dbg !136794, !prof !2688

bb.be:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136796, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136797

bb.bf:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !136798, !alias.scope !136580, !noalias !136574
  br label %bb.bv, !dbg !136799

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  invoke void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #35
          to label %.noexc18.i unwind label %bb.d, !dbg !136800, !noalias !136575

.noexc18.i:                                       ; preds = %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread.i.i
  unreachable, !dbg !136800

bb.bg:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread24.i.i
  %.sroa.0.032.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread24.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.4.031.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread24.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.030.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread24.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !136801
  store ptr %.sroa.0.032.i.i, ptr %i.ed, align 8, !dbg !136801, !alias.scope !136578, !noalias !136574
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !136801
  store i64 %.sroa.4.031.i.i, ptr %.sroa.417.0..sroa_idx.i.i, align 16, !dbg !136801, !alias.scope !136578, !noalias !136574
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !136801
  store i64 %.sroa.5.030.i.i, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !dbg !136801, !alias.scope !136578, !noalias !136574
  store i8 31, ptr %i.t, align 16, !dbg !136801, !alias.scope !136578, !noalias !136574
  br label %bb.bv, !dbg !136802

bb.bh:                                            ; preds = %bb.ad
  %i.ee = invoke fastcc noundef nonnull ptr @_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #37
          to label %.noexc19.i unwind label %bb.d, !dbg !136803, !noalias !136575

.noexc19.i:                                       ; preds = %bb.bh, %bb.ad
  %.sroa.02.0.i.i = phi ptr [ null, %bb.ad ], [ %i.ee, %bb.bh ], !dbg !136804
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !136805
  store i64 %i.bf, ptr %i.ef, align 8, !dbg !136805, !alias.scope !136578, !noalias !136574
  %i.eg = getelementptr inbounds nuw i8, ptr %i.t, i64 1, !dbg !136805
  store i8 %i.bh, ptr %i.eg, align 1, !dbg !136805, !alias.scope !136578, !noalias !136574
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !136805
  store ptr %.sroa.02.0.i.i, ptr %i.eh, align 16, !dbg !136805, !alias.scope !136578, !noalias !136574
  store i8 18, ptr %i.t, align 16, !dbg !136805, !alias.scope !136578, !noalias !136574
  br label %bb.bv, !dbg !136806

bb.bi:                                            ; preds = %bb.ah
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 4, !dbg !136807
  store i32 %i.bl, ptr %i.ei, align 4, !dbg !136807, !alias.scope !136578, !noalias !136574
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !136807
  store ptr %i.bo, ptr %i.ej, align 8, !dbg !136807, !alias.scope !136578, !noalias !136574
  store i8 22, ptr %i.t, align 16, !dbg !136807, !alias.scope !136578, !noalias !136574
  br label %bb.bv, !dbg !136808

bb.bj:                                            ; preds = %bb.ah
  call void @llvm.trap(), !dbg !136809
  unreachable, !dbg !136809

bb.bk:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.t, i64 4, !dbg !136810
  store i32 %i.bs, ptr %i.ek, align 4, !dbg !136810, !alias.scope !136578, !noalias !136574
  %i.el = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !136810
  store ptr %i.bv, ptr %i.el, align 8, !dbg !136810, !alias.scope !136578, !noalias !136574
  store i8 24, ptr %i.t, align 16, !dbg !136810, !alias.scope !136578, !noalias !136574
  br label %bb.bv, !dbg !136811

bb.bl:                                            ; preds = %bb.aj
  call void @llvm.trap(), !dbg !136812
  unreachable, !dbg !136812

bb.bm:                                            ; preds = %bb.aq, %.noexc16.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !136813

.body.i.i:                                        ; preds = %bb.bm, %bb.ba
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.em, %bb.bm ], [ %eh.lpad-body.i.i.i, %bb.ba ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.l) #38
          to label %.thread.i unwind label %bb.bq, !dbg !136813, !noalias !136590

.loopexit.i.i:                                    ; preds = %bb.ay, %bb.ar, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  store i64 %i.cq, ptr %i.da, align 8, !dbg !136814, !noalias !136597
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !136744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !136815, !noalias !136594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !136787, !noalias !136597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !136744, !noalias !136594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !136813, !noalias !136594
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !136816, !noalias !136610
  %i.eo = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1401) 48, i64 noundef range(i64 8, 17) 8) #41, !dbg !136817, !noalias !136610 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null, !dbg !136818
  br i1 %i.ep, label %bb.bn, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !136819, !prof !2688

bb.bn:                                            ; preds = %.loopexit.i.i
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #36
          to label %.noexc11.i.i unwind label %bb.bo, !dbg !136820, !noalias !136590

.noexc11.i.i:                                     ; preds = %bb.bn
  unreachable, !dbg !136820

bb.bo:                                            ; preds = %bb.bn
  %i.eq = landingpad { ptr, i32 }
end_hunk_1
