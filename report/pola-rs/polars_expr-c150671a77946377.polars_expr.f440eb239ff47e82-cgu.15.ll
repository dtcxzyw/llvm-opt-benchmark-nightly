Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.15?download=true
inline.NumInlined: 9427
inline.NumDeleted: 4812
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexTmxENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3e_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes9Int64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB6c_E0EINtNtB3i_6copied6CopiedIB3R_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !74071

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %3, 0, !dbg !74072
  br i1 %i.k, label %bb.h, label %bb.j, !dbg !74072

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74031), !dbg !74073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74032), !dbg !74074
  %i.l = icmp eq i64 %2, 1, !dbg !74075
  br i1 %i.l, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.f, !dbg !74076

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i64 %2, 1152921504606846975, !dbg !74077 ; 4 uses
  %i.n = and i64 %i.m, 1152921504606846975, !dbg !74077
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !74078, !alias.scope !74033, !noalias !74034 ; 2 uses
  %xtraiter135 = and i64 %i.m, 1, !dbg !74079
  %i.o = icmp eq i64 %i.n, 1, !dbg !74079
  br i1 %i.o, label %.epil.preheader134, label %.new133, !dbg !74079

.new133:                                          ; preds = %bb.f
  %unroll_iter139 = and i64 %i.m, 1152921504606846974, !dbg !74079
  br label %bb.g, !dbg !74079

bb.g:                                             ; preds = %bb.g, %.new133
  %.val.i.i.i.i.i.i = phi i64 [ %.val.i.i.pre.i.i.i.i, %.new133 ], [ %i.w, %bb.g ], !dbg !74078 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new133 ], [ %.sroa.1.0.i.i.i.i.1, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new133 ], [ %.1.i.i.i.i.i.i.1, %bb.g ], !dbg !74080
  %niter140 = phi i64 [ 0, %.new133 ], [ %niter140.next.1, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !74081 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i, !dbg !74082
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74035), !dbg !74083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74036), !dbg !74083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74037), !dbg !74084
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74038), !dbg !74084
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !74078
  %.val2.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !dbg !74078, !alias.scope !74039, !noalias !74040, !noundef !2532 ; 2 uses
  %i.r = icmp slt i64 %.val2.i.i.i.i.i.i, %.val.i.i.i.i.i.i, !dbg !74085
  %.1.i.i.i.i.i.i = select i1 %i.r, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !74086
  %i.s = tail call i64 @llvm.smin.i64(i64 %.val2.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i), !dbg !74078 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !74081 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i, !dbg !74082
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !74078
  %.val2.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !dbg !74078, !alias.scope !74041, !noalias !74040, !noundef !2532 ; 2 uses
  %i.v = icmp slt i64 %.val2.i.i.i.i.i.i.1, %i.s, !dbg !74085
  %.1.i.i.i.i.i.i.1 = select i1 %i.v, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !74086 ; 3 uses
  %i.w = tail call i64 @llvm.smin.i64(i64 %.val2.i.i.i.i.i.i.1, i64 %i.s), !dbg !74078 ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2, !dbg !74087 ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139, !dbg !74087
  br i1 %niter140.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !74087

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74042), !dbg !74088
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74043), !dbg !74089
  %i.x = add nuw nsw i64 %2, 1152921504606846975, !dbg !74090 ; 4 uses
  %i.y = and i64 %i.x, 1152921504606846975, !dbg !74090
  %.phi.trans.insert.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i28, align 8, !dbg !74091, !alias.scope !74044, !noalias !74045 ; 2 uses
  %xtraiter = and i64 %i.x, 1, !dbg !74092
  %i.z = icmp eq i64 %i.y, 1, !dbg !74092
  br i1 %i.z, label %.epil.preheader, label %.new, !dbg !74092

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.x, 1152921504606846974, !dbg !74092
  br label %bb.i, !dbg !74092

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i29 = phi i64 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ah, %bb.i ], !dbg !74091 ; 2 uses
  %.sroa.1.0.i.i.in.i.i30 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i33.1, %bb.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i32 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i36.1, %bb.i ], !dbg !74093
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %.sroa.1.0.i.i.i.i33 = or disjoint i64 %.sroa.1.0.i.i.in.i.i30, 1, !dbg !74094 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30, !dbg !74095
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74046), !dbg !74096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74047), !dbg !74096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74048), !dbg !74097
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74049), !dbg !74097
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !74091
  %.val.i.i.i.i.i.i34 = load i64, ptr %i.ab, align 8, !dbg !74091, !alias.scope !74050, !noalias !74051, !noundef !2532 ; 2 uses
  %i.ac = icmp slt i64 %.val2.i.i.i.i.i.i29, %.val.i.i.i.i.i.i34, !dbg !74098
  %.1.i.i.i.i.i.i36 = select i1 %i.ac, i64 %.sroa.1.0.i.i.i.i33, i64 %.sroa.02.0.i.i.i.i32, !dbg !74099
  %i.ad = tail call i64 @llvm.smax.i64(i64 %.val2.i.i.i.i.i.i29, i64 %.val.i.i.i.i.i.i34), !dbg !74091 ; 2 uses
  %.sroa.1.0.i.i.i.i33.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i30, 2, !dbg !74094 ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i33, !dbg !74095
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !74091
  %.val.i.i.i.i.i.i34.1 = load i64, ptr %i.af, align 8, !dbg !74091, !alias.scope !74052, !noalias !74051, !noundef !2532 ; 2 uses
  %i.ag = icmp slt i64 %i.ad, %.val.i.i.i.i.i.i34.1, !dbg !74098
  %.1.i.i.i.i.i.i36.1 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i33.1, i64 %.1.i.i.i.i.i.i36, !dbg !74099 ; 3 uses
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 %.val.i.i.i.i.i.i34.1), !dbg !74091 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !74100  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !74100
  br i1 %niter.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, label %bb.i, !dbg !74100

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74053), !dbg !74101
  %i.ai = icmp samesign ult i64 %2, 17, !dbg !74102
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !74102

.lr.ph.i:                                         ; preds = %.backedge.i
  %i.aj = icmp eq i32 %i.al, 0, !dbg !74103
  br i1 %i.aj, label %bb.k, label %.lr.ph.i.preheader, !dbg !74103

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  %.sroa.16.0.lcssa.i = phi i64 [ %2, %bb.j ], [ %.sroa.16.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %.sroa.0.0.be.i, %.backedge.i ]
  %i.ak = icmp samesign ugt i64 %.sroa.16.0.lcssa.i, 1, !dbg !74104
  br i1 %i.ak, label %bb.x, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74104

bb.k:                                             ; preds = %.lr.ph.i
  call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansTmxENCINvMB6_SB12_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3d_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1R_8downcastINtB1T_12ChunkedArrayNtNtB1V_9datatypes9Int64TypeE13downcast_iter0ENCINvB1P_16arg_sort_numericB6b_E0EINtNtB3h_6copied6CopiedIB3Q_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.be.i, i64 noundef %.sroa.16.0.be.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.sroa.023.0.be.i), !dbg !74105
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74106

.lr.ph.i.preheader:                               ; preds = %bb.j, %.lr.ph.i
  %.sroa.031.020.i122 = phi i32 [ %i.al, %.lr.ph.i ], [ 16, %bb.j ]
  %.sroa.029.021.i121 = phi ptr [ %.sroa.029.0.be.i, %.lr.ph.i ], [ null, %bb.j ] ; 3 uses
  %.sroa.023.022.i120 = phi i64 [ %.sroa.023.0.be.i, %.lr.ph.i ], [ %3, %bb.j ] ; 6 uses
  %.sroa.16.023.i119 = phi i64 [ %.sroa.16.0.be.i, %.lr.ph.i ], [ %2, %bb.j ] ; 12 uses
  %.sroa.0.024.i118 = phi ptr [ %.sroa.0.0.be.i, %.lr.ph.i ], [ %1, %bb.j ] ; 12 uses
  %i.al = add nsw i32 %.sroa.031.020.i122, -1, !dbg !74107 ; 2 uses
  %i.am = lshr i64 %.sroa.16.023.i119, 3, !dbg !74108 ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.am, 6, !dbg !74109
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx.i.i, !dbg !74109 ; 3 uses
  %.idx2.i.i = mul nuw nsw i64 %i.am, 112, !dbg !74110
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx2.i.i, !dbg !74110 ; 3 uses
  %i.ap = icmp samesign ult i64 %.sroa.16.023.i119, 64, !dbg !74111
  br i1 %i.ap, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.l, !dbg !74111

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.aq = call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTmxENCINvMB8_SB14_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3f_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1T_8downcastINtB1V_12ChunkedArrayNtNtB1X_9datatypes9Int64TypeE13downcast_iter0ENCINvB1R_16arg_sort_numericB6d_E0EINtNtB3j_6copied6CopiedIB3S_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly align 8 %.sroa.0.024.i118, ptr noundef nonnull readonly %i.an, ptr noundef nonnull readonly %i.ao, i64 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !74112
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !74113

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %.lr.ph.i.preheader
  %i.ar = getelementptr i8, ptr %.sroa.0.024.i118, i64 8, !dbg !74114
  %.val6.i.i = load i64, ptr %i.ar, align 8, !dbg !74114, !alias.scope !74055, !noundef !2532 ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 8, !dbg !74114
  %.val7.i.i = load i64, ptr %i.as, align 8, !dbg !74114, !alias.scope !74056, !noundef !2532 ; 2 uses
  %i.at = icmp slt i64 %.val7.i.i, %.val6.i.i, !dbg !74115 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 8, !dbg !74116
  %.val5.i.i = load i64, ptr %i.au, align 8, !dbg !74116, !alias.scope !74056, !noundef !2532 ; 2 uses
  %i.av = icmp slt i64 %.val5.i.i, %.val6.i.i, !dbg !74117
  %i.aw = xor i1 %i.at, %i.av, !dbg !74118
  %i.ax = icmp slt i64 %.val5.i.i, %.val7.i.i, !dbg !74118
  %i.ay = xor i1 %i.at, %i.ax, !dbg !74118
  %..i.i.i = select i1 %i.ay, ptr %i.ao, ptr %i.an, !dbg !74118
  %.sroa.0.0.i.i.i = select i1 %i.aw, ptr %.sroa.0.024.i118, ptr %..i.i.i, !dbg !74118
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !74113

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.l
  %.sroa.0.0.i.sink.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.aq, %bb.l ]
  %i.az = ptrtoint ptr %.sroa.0.0.i.sink.i.i to i64, !dbg !74119
  %i.ba = ptrtoint ptr %.sroa.0.024.i118 to i64, !dbg !74119
  %i.bb = sub nuw i64 %i.az, %i.ba, !dbg !74119   ; 2 uses
  %.sroa.0.0.i.i = lshr exact i64 %i.bb, 4, !dbg !74119 ; 3 uses
  %i.bc = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.16.023.i119, !dbg !74120
  call void @llvm.assume(i1 %i.bc), !dbg !74121
  %.not.i = icmp eq ptr %.sroa.029.021.i121, null, !dbg !74122
  br i1 %.not.i, label %bb.m, label %bb.p, !dbg !74123

bb.m:                                             ; preds = %bb.p, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bd = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3i_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1W_8downcastINtB1Y_12ChunkedArrayNtNtB20_9datatypes9Int64TypeE13downcast_iter0ENCINvB1U_16arg_sort_numericB6g_E0EINtNtB3m_6copied6CopiedIB3V_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !74124 ; 7 uses
  %.not.i.i = icmp ugt i64 %i.bd, %.sroa.16.023.i119, !dbg !74125
  br i1 %.not.i.i, label %bb.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !74125, !prof !2689

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #35, !dbg !74126, !noalias !74057
  unreachable, !dbg !74126

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bd, !dbg !74127 ; 2 uses
  %.not.i38.i = icmp eq i64 %.sroa.16.023.i119, %i.bd, !dbg !74128
  br i1 %.not.i38.i, label %bb.o, label %bb.u, !dbg !74128, !prof !2689

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #35, !dbg !74129, !noalias !74058
  unreachable, !dbg !74129

bb.p:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bb, !dbg !74130
  %i.bg = getelementptr i8, ptr %.sroa.029.021.i121, i64 8, !dbg !74131
  %.sroa.029.0.val.i = load i64, ptr %i.bg, align 8, !dbg !74131, !alias.scope !74059, !noundef !2532
  %i.bh = getelementptr i8, ptr %i.bf, i64 8, !dbg !74131
  %.val.i = load i64, ptr %i.bh, align 8, !dbg !74131, !alias.scope !74060, !noundef !2532
  %i.bi = icmp slt i64 %.val.i, %.sroa.029.0.val.i, !dbg !74132
  br i1 %i.bi, label %bb.m, label %bb.q, !dbg !74131

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !74133, !noalias !74061
  store ptr %i.f, ptr %i.c, align 8, !dbg !74133, !noalias !74061
  %i.bj = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvNtB6_6select23partition_at_index_loopB17_NCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB42_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2G_8downcastINtB2I_12ChunkedArrayNtNtB2K_9datatypes9Int64TypeE13downcast_iter0ENCINvB2E_16arg_sort_numericB70_E0EINtNtB46_6copied6CopiedIB4F_xEExEs0_0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !dbg !74134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !74135, !noalias !74061
  %i.bk = add i64 %i.bj, 1, !dbg !74136           ; 6 uses
  %i.bl = icmp ugt i64 %i.bk, %.sroa.023.022.i120, !dbg !74137
  br i1 %i.bl, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.r, !dbg !74137

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp ugt i64 %i.bk, %.sroa.16.023.i119, !dbg !74138
  br i1 %i.bm, label %bb.t, label %bb.s, !dbg !74138, !prof !2689

bb.s:                                             ; preds = %bb.r
  %i.bn = sub nuw i64 %.sroa.16.023.i119, %i.bk, !dbg !74139
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bk, !dbg !74140
  %i.bp = sub nuw i64 %.sroa.023.022.i120, %i.bk, !dbg !74141
  br label %.backedge.i, !dbg !74106

.backedge.i:                                      ; preds = %bb.w, %bb.v, %bb.s
  %.sroa.029.0.be.i = phi ptr [ null, %bb.s ], [ %i.be, %bb.w ], [ %.sroa.029.021.i121, %bb.v ]
  %.sroa.023.0.be.i = phi i64 [ %i.bp, %bb.s ], [ %i.bw, %bb.w ], [ %.sroa.023.022.i120, %bb.v ] ; 2 uses
  %.sroa.16.0.be.i = phi i64 [ %i.bn, %bb.s ], [ %i.bu, %bb.w ], [ %i.bd, %bb.v ] ; 4 uses
  %.sroa.0.0.be.i = phi ptr [ %i.bo, %bb.s ], [ %i.bv, %bb.w ], [ %.sroa.0.024.i118, %bb.v ] ; 3 uses
  %i.bq = icmp ult i64 %.sroa.16.0.be.i, 17, !dbg !74102
  br i1 %i.bq, label %._crit_edge.i, label %.lr.ph.i, !dbg !74102

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bk, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.16.023.i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35, !dbg !74142
  unreachable, !dbg !74142

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  %i.br = icmp ult i64 %i.bd, %.sroa.023.022.i120, !dbg !74143
  br i1 %i.br, label %bb.w, label %bb.v, !dbg !74143

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp ugt i64 %i.bd, %.sroa.023.022.i120, !dbg !74144
  br i1 %i.bs, label %.backedge.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74144

bb.w:                                             ; preds = %bb.u
  %i.bt = xor i64 %i.bd, -1, !dbg !74145          ; 2 uses
  %i.bu = add i64 %.sroa.16.023.i119, %i.bt, !dbg !74145
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !74146
  %i.bw = add i64 %.sroa.023.022.i120, %i.bt, !dbg !74147
  br label %.backedge.i, !dbg !74148

bb.x:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmxENCINvMB8_SB1m_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3x_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2b_8downcastINtB2d_12ChunkedArrayNtNtB2f_9datatypes9Int64TypeE13downcast_iter0ENCINvB29_16arg_sort_numericB6v_E0EINtNtB3B_6copied6CopiedIB4a_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !74149
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74150

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !74100
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader, !dbg !74100

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i29.epil.init = phi i64 [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.ah, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i30.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i33.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i32.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.x to i1, !dbg !74100
  tail call void @llvm.assume(i1 %lcmp.mod132), !dbg !74100
  %.sroa.1.0.i.i.i.i33.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i30.epil.init, 1, !dbg !74094
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30.epil.init, !dbg !74095
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74046), !dbg !74096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74047), !dbg !74096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74048), !dbg !74097
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74049), !dbg !74097
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !74091
  %.val.i.i.i.i.i.i34.epil = load i64, ptr %i.by, align 8, !dbg !74091, !alias.scope !74050, !noalias !74051, !noundef !2532
  %i.bz = icmp slt i64 %.val2.i.i.i.i.i.i29.epil.init, %.val.i.i.i.i.i.i34.epil, !dbg !74098
  %.1.i.i.i.i.i.i36.epil = select i1 %i.bz, i64 %.sroa.1.0.i.i.i.i33.epil, i64 %.sroa.02.0.i.i.i.i32.epil.init, !dbg !74099
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !74151

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i36.lcssa = phi i64 [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i36.epil, %.epil.preheader ], !dbg !74099 ; 3 uses
  %i.ca = icmp ult i64 %.1.i.i.i.i.i.i36.lcssa, %2, !dbg !74151
  br i1 %i.ca, label %bb.z, label %bb.y, !dbg !74151

bb.y:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i36.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36, !dbg !74151
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1.i.i.i.i.i.i36.lcssa, !dbg !74152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !74153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !dbg !74154
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !74155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !74156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !74157
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74158

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0, !dbg !74087
  br i1 %lcmp.mod136.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader134, !dbg !74087

.epil.preheader134:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi i64 [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.w, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.m to i1, !dbg !74087
  tail call void @llvm.assume(i1 %lcmp.mod138), !dbg !74087
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !74081
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !74082
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74035), !dbg !74083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74036), !dbg !74083
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74037), !dbg !74084
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74038), !dbg !74084
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24, !dbg !74078
  %.val2.i.i.i.i.i.i.epil = load i64, ptr %i.cd, align 8, !dbg !74078, !alias.scope !74039, !noalias !74040, !noundef !2532
  %i.ce = icmp slt i64 %.val2.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.epil.init, !dbg !74085
  %.1.i.i.i.i.i.i.epil = select i1 %i.ce, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !74086
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !74159

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %.epil.preheader134, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.e
  %i.cf = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader134 ] ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %2, !dbg !74159
  br i1 %i.cg, label %bb.ab, label %bb.aa, !dbg !74159

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #36, !dbg !74159
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cf, !dbg !74160 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !74161 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !74162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !dbg !74163
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !dbg !74164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !74165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !74166
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74167

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.v, %bb.q, %bb.x, %bb.k, %._crit_edge.i, %bb.z, %bb.ab
  %i.cj = load i64, ptr %i.g, align 8, !dbg !74168, !noundef !2532 ; 5 uses
  %.not.i38 = icmp ugt i64 %i.cj, %2, !dbg !74169
  br i1 %.not.i38, label %bb.ac, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !74169, !prof !2689

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35, !dbg !74170, !noalias !74064
  unreachable, !dbg !74170

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.not.i39 = icmp eq i64 %2, %i.cj, !dbg !74171
  br i1 %.not.i39, label %bb.ad, label %bb.ae, !dbg !74171, !prof !2689

bb.ad:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #35, !dbg !74172, !noalias !74065
  unreachable, !dbg !74172

bb.ae:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cj, !dbg !74173 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !74174
  %i.cm = xor i64 %i.cj, -1, !dbg !74175
  %i.cn = add nsw i64 %2, %i.cm, !dbg !74175
  store ptr %1, ptr %0, align 8, !dbg !74176
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !74176
  store i64 %i.cj, ptr %i.co, align 8, !dbg !74176
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !74176
  store ptr %i.ck, ptr %i.cp, align 8, !dbg !74176
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !74176
  store ptr %i.cl, ptr %i.cq, align 8, !dbg !74176
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !74176
  store i64 %i.cn, ptr %i.cr, align 8, !dbg !74176
  ret void, !dbg !74177
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexTmxENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3e_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes9Int64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB6c_E0EINtNtB3i_6copied6CopiedIB3R_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !74178 !guid !74356 {
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
  store i64 %2, ptr %i.e, align 8, !dbg !74393
  %.not = icmp ult i64 %3, %2, !dbg !74394
  br i1 %.not, label %bb.c, label %bb.b, !dbg !74394, !prof !2819

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !74395
  store ptr %i.g, ptr %i.d, align 8, !dbg !74395
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !74395
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !74395
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !74395
  store ptr %i.e, ptr %i.h, align 8, !dbg !74395
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !74395
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !74395
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #36, !dbg !74396
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = add nsw i64 %2, -1, !dbg !74397
  %i.j = icmp eq i64 %3, %i.i, !dbg !74398
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !74398

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %3, 0, !dbg !74399
  br i1 %i.k, label %bb.h, label %bb.j, !dbg !74399

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74358), !dbg !74400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74359), !dbg !74401
  %i.l = icmp eq i64 %2, 1, !dbg !74402
  br i1 %i.l, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.f, !dbg !74403

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i64 %2, 1152921504606846975, !dbg !74404 ; 4 uses
  %i.n = and i64 %i.m, 1152921504606846975, !dbg !74404
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !74405, !alias.scope !74360, !noalias !74361 ; 2 uses
  %xtraiter135 = and i64 %i.m, 1, !dbg !74406
  %i.o = icmp eq i64 %i.n, 1, !dbg !74406
  br i1 %i.o, label %.epil.preheader134, label %.new133, !dbg !74406

.new133:                                          ; preds = %bb.f
  %unroll_iter139 = and i64 %i.m, 1152921504606846974, !dbg !74406
  br label %bb.g, !dbg !74406

bb.g:                                             ; preds = %bb.g, %.new133
  %.val.i.i.i.i.i.i = phi i64 [ %.val.i.i.pre.i.i.i.i, %.new133 ], [ %i.w, %bb.g ], !dbg !74405 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new133 ], [ %.sroa.1.0.i.i.i.i.1, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new133 ], [ %.1.i.i.i.i.i.i.1, %bb.g ], !dbg !74407
  %niter140 = phi i64 [ 0, %.new133 ], [ %niter140.next.1, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !74408 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i, !dbg !74409
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74362), !dbg !74410
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74363), !dbg !74410
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74364), !dbg !74411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74365), !dbg !74411
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !74405
  %.val2.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !dbg !74405, !alias.scope !74366, !noalias !74367, !noundef !2532 ; 2 uses
  %i.r = icmp slt i64 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !74412
  %.1.i.i.i.i.i.i = select i1 %i.r, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !74413
  %i.s = tail call i64 @llvm.smax.i64(i64 %.val.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i), !dbg !74405 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !74408 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i, !dbg !74409
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !74405
  %.val2.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !dbg !74405, !alias.scope !74368, !noalias !74367, !noundef !2532 ; 2 uses
  %i.v = icmp slt i64 %i.s, %.val2.i.i.i.i.i.i.1, !dbg !74412
  %.1.i.i.i.i.i.i.1 = select i1 %i.v, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !74413 ; 3 uses
  %i.w = tail call i64 @llvm.smax.i64(i64 %i.s, i64 %.val2.i.i.i.i.i.i.1), !dbg !74405 ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2, !dbg !74414 ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139, !dbg !74414
  br i1 %niter140.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !74414

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74369), !dbg !74415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74370), !dbg !74416
  %i.x = add nuw nsw i64 %2, 1152921504606846975, !dbg !74417 ; 4 uses
  %i.y = and i64 %i.x, 1152921504606846975, !dbg !74417
  %.phi.trans.insert.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i28, align 8, !dbg !74418, !alias.scope !74371, !noalias !74372 ; 2 uses
  %xtraiter = and i64 %i.x, 1, !dbg !74419
  %i.z = icmp eq i64 %i.y, 1, !dbg !74419
  br i1 %i.z, label %.epil.preheader, label %.new, !dbg !74419

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.x, 1152921504606846974, !dbg !74419
  br label %bb.i, !dbg !74419

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i29 = phi i64 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ah, %bb.i ], !dbg !74418 ; 2 uses
  %.sroa.1.0.i.i.in.i.i30 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i33.1, %bb.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i32 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i36.1, %bb.i ], !dbg !74420
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %.sroa.1.0.i.i.i.i33 = or disjoint i64 %.sroa.1.0.i.i.in.i.i30, 1, !dbg !74421 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30, !dbg !74422
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74373), !dbg !74423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74374), !dbg !74423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74375), !dbg !74424
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74376), !dbg !74424
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !74418
  %.val.i.i.i.i.i.i34 = load i64, ptr %i.ab, align 8, !dbg !74418, !alias.scope !74377, !noalias !74378, !noundef !2532 ; 2 uses
  %i.ac = icmp slt i64 %.val.i.i.i.i.i.i34, %.val2.i.i.i.i.i.i29, !dbg !74425
  %.1.i.i.i.i.i.i36 = select i1 %i.ac, i64 %.sroa.1.0.i.i.i.i33, i64 %.sroa.02.0.i.i.i.i32, !dbg !74426
  %i.ad = tail call i64 @llvm.smin.i64(i64 %.val.i.i.i.i.i.i34, i64 %.val2.i.i.i.i.i.i29), !dbg !74418 ; 2 uses
  %.sroa.1.0.i.i.i.i33.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i30, 2, !dbg !74421 ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i33, !dbg !74422
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !74418
  %.val.i.i.i.i.i.i34.1 = load i64, ptr %i.af, align 8, !dbg !74418, !alias.scope !74379, !noalias !74378, !noundef !2532 ; 2 uses
  %i.ag = icmp slt i64 %.val.i.i.i.i.i.i34.1, %i.ad, !dbg !74425
  %.1.i.i.i.i.i.i36.1 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i33.1, i64 %.1.i.i.i.i.i.i36, !dbg !74426 ; 3 uses
  %i.ah = tail call i64 @llvm.smin.i64(i64 %.val.i.i.i.i.i.i34.1, i64 %i.ad), !dbg !74418 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !74427  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !74427
  br i1 %niter.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, label %bb.i, !dbg !74427

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74380), !dbg !74428
  %i.ai = icmp samesign ult i64 %2, 17, !dbg !74429
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !74429

.lr.ph.i:                                         ; preds = %.backedge.i
  %i.aj = icmp eq i32 %i.al, 0, !dbg !74430
  br i1 %i.aj, label %bb.k, label %.lr.ph.i.preheader, !dbg !74430

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  %.sroa.16.0.lcssa.i = phi i64 [ %2, %bb.j ], [ %.sroa.16.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %.sroa.0.0.be.i, %.backedge.i ]
  %i.ak = icmp samesign ugt i64 %.sroa.16.0.lcssa.i, 1, !dbg !74431
  br i1 %i.ak, label %bb.x, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74431

bb.k:                                             ; preds = %.lr.ph.i
  call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansTmxENCINvMB6_SB12_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3d_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1R_8downcastINtB1T_12ChunkedArrayNtNtB1V_9datatypes9Int64TypeE13downcast_iter0ENCINvB1P_16arg_sort_numericB6b_E0EINtNtB3h_6copied6CopiedIB3Q_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.be.i, i64 noundef %.sroa.16.0.be.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.sroa.023.0.be.i), !dbg !74432
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74433

.lr.ph.i.preheader:                               ; preds = %bb.j, %.lr.ph.i
  %.sroa.031.020.i122 = phi i32 [ %i.al, %.lr.ph.i ], [ 16, %bb.j ]
  %.sroa.029.021.i121 = phi ptr [ %.sroa.029.0.be.i, %.lr.ph.i ], [ null, %bb.j ] ; 3 uses
  %.sroa.023.022.i120 = phi i64 [ %.sroa.023.0.be.i, %.lr.ph.i ], [ %3, %bb.j ] ; 6 uses
  %.sroa.16.023.i119 = phi i64 [ %.sroa.16.0.be.i, %.lr.ph.i ], [ %2, %bb.j ] ; 12 uses
  %.sroa.0.024.i118 = phi ptr [ %.sroa.0.0.be.i, %.lr.ph.i ], [ %1, %bb.j ] ; 12 uses
  %i.al = add nsw i32 %.sroa.031.020.i122, -1, !dbg !74434 ; 2 uses
  %i.am = lshr i64 %.sroa.16.023.i119, 3, !dbg !74435 ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.am, 6, !dbg !74436
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx.i.i, !dbg !74436 ; 3 uses
  %.idx2.i.i = mul nuw nsw i64 %i.am, 112, !dbg !74437
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx2.i.i, !dbg !74437 ; 3 uses
  %i.ap = icmp samesign ult i64 %.sroa.16.023.i119, 64, !dbg !74438
  br i1 %i.ap, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.l, !dbg !74438

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.aq = call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTmxENCINvMB8_SB14_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3f_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1T_8downcastINtB1V_12ChunkedArrayNtNtB1X_9datatypes9Int64TypeE13downcast_iter0ENCINvB1R_16arg_sort_numericB6d_E0EINtNtB3j_6copied6CopiedIB3S_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly align 8 %.sroa.0.024.i118, ptr noundef nonnull readonly %i.an, ptr noundef nonnull readonly %i.ao, i64 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !74439
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !74440

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %.lr.ph.i.preheader
  %i.ar = getelementptr i8, ptr %.sroa.0.024.i118, i64 8, !dbg !74441
  %.val6.i.i = load i64, ptr %i.ar, align 8, !dbg !74441, !alias.scope !74382, !noundef !2532 ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 8, !dbg !74441
  %.val7.i.i = load i64, ptr %i.as, align 8, !dbg !74441, !alias.scope !74383, !noundef !2532 ; 2 uses
  %i.at = icmp slt i64 %.val6.i.i, %.val7.i.i, !dbg !74442 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 8, !dbg !74443
  %.val5.i.i = load i64, ptr %i.au, align 8, !dbg !74443, !alias.scope !74383, !noundef !2532 ; 2 uses
  %i.av = icmp slt i64 %.val6.i.i, %.val5.i.i, !dbg !74444
  %i.aw = xor i1 %i.at, %i.av, !dbg !74445
  %i.ax = icmp slt i64 %.val7.i.i, %.val5.i.i, !dbg !74445
  %i.ay = xor i1 %i.at, %i.ax, !dbg !74445
  %..i.i.i = select i1 %i.ay, ptr %i.ao, ptr %i.an, !dbg !74445
  %.sroa.0.0.i.i.i = select i1 %i.aw, ptr %.sroa.0.024.i118, ptr %..i.i.i, !dbg !74445
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !74440

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.l
  %.sroa.0.0.i.sink.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB39_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB67_E0EINtNtB3d_6copied6CopiedIB3M_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.aq, %bb.l ]
  %i.az = ptrtoint ptr %.sroa.0.0.i.sink.i.i to i64, !dbg !74446
  %i.ba = ptrtoint ptr %.sroa.0.024.i118 to i64, !dbg !74446
  %i.bb = sub nuw i64 %i.az, %i.ba, !dbg !74446   ; 2 uses
  %.sroa.0.0.i.i = lshr exact i64 %i.bb, 4, !dbg !74446 ; 3 uses
  %i.bc = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.16.023.i119, !dbg !74447
  call void @llvm.assume(i1 %i.bc), !dbg !74448
  %.not.i = icmp eq ptr %.sroa.029.021.i121, null, !dbg !74449
  br i1 %.not.i, label %bb.m, label %bb.p, !dbg !74450

bb.m:                                             ; preds = %bb.p, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bd = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3i_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1W_8downcastINtB1Y_12ChunkedArrayNtNtB20_9datatypes9Int64TypeE13downcast_iter0ENCINvB1U_16arg_sort_numericB6g_E0EINtNtB3m_6copied6CopiedIB3V_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !74451 ; 7 uses
  %.not.i.i = icmp ugt i64 %i.bd, %.sroa.16.023.i119, !dbg !74452
  br i1 %.not.i.i, label %bb.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !74452, !prof !2689

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #35, !dbg !74453, !noalias !74384
  unreachable, !dbg !74453

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bd, !dbg !74454 ; 2 uses
  %.not.i38.i = icmp eq i64 %.sroa.16.023.i119, %i.bd, !dbg !74455
  br i1 %.not.i38.i, label %bb.o, label %bb.u, !dbg !74455, !prof !2689

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #35, !dbg !74456, !noalias !74385
  unreachable, !dbg !74456

bb.p:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3g_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB6e_E0EINtNtB3k_6copied6CopiedIB3T_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bb, !dbg !74457
  %i.bg = getelementptr i8, ptr %.sroa.029.021.i121, i64 8, !dbg !74458
  %.sroa.029.0.val.i = load i64, ptr %i.bg, align 8, !dbg !74458, !alias.scope !74386, !noundef !2532
  %i.bh = getelementptr i8, ptr %i.bf, i64 8, !dbg !74458
  %.val.i = load i64, ptr %i.bh, align 8, !dbg !74458, !alias.scope !74387, !noundef !2532
  %i.bi = icmp slt i64 %.sroa.029.0.val.i, %.val.i, !dbg !74459
  br i1 %i.bi, label %bb.m, label %bb.q, !dbg !74458

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !74460, !noalias !74388
  store ptr %i.f, ptr %i.c, align 8, !dbg !74460, !noalias !74388
  %i.bj = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvNtB6_6select23partition_at_index_loopB17_NCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB42_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2G_8downcastINtB2I_12ChunkedArrayNtNtB2K_9datatypes9Int64TypeE13downcast_iter0ENCINvB2E_16arg_sort_numericB70_E0EINtNtB46_6copied6CopiedIB4F_xEExEs1_0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !dbg !74461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !74462, !noalias !74388
  %i.bk = add i64 %i.bj, 1, !dbg !74463           ; 6 uses
  %i.bl = icmp ugt i64 %i.bk, %.sroa.023.022.i120, !dbg !74464
  br i1 %i.bl, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.r, !dbg !74464

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp ugt i64 %i.bk, %.sroa.16.023.i119, !dbg !74465
  br i1 %i.bm, label %bb.t, label %bb.s, !dbg !74465, !prof !2689

bb.s:                                             ; preds = %bb.r
  %i.bn = sub nuw i64 %.sroa.16.023.i119, %i.bk, !dbg !74466
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bk, !dbg !74467
  %i.bp = sub nuw i64 %.sroa.023.022.i120, %i.bk, !dbg !74468
  br label %.backedge.i, !dbg !74433

.backedge.i:                                      ; preds = %bb.w, %bb.v, %bb.s
  %.sroa.029.0.be.i = phi ptr [ null, %bb.s ], [ %i.be, %bb.w ], [ %.sroa.029.021.i121, %bb.v ]
  %.sroa.023.0.be.i = phi i64 [ %i.bp, %bb.s ], [ %i.bw, %bb.w ], [ %.sroa.023.022.i120, %bb.v ] ; 2 uses
  %.sroa.16.0.be.i = phi i64 [ %i.bn, %bb.s ], [ %i.bu, %bb.w ], [ %i.bd, %bb.v ] ; 4 uses
  %.sroa.0.0.be.i = phi ptr [ %i.bo, %bb.s ], [ %i.bv, %bb.w ], [ %.sroa.0.024.i118, %bb.v ] ; 3 uses
  %i.bq = icmp ult i64 %.sroa.16.0.be.i, 17, !dbg !74429
  br i1 %i.bq, label %._crit_edge.i, label %.lr.ph.i, !dbg !74429

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bk, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.16.023.i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35, !dbg !74469
  unreachable, !dbg !74469

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  %i.br = icmp ult i64 %i.bd, %.sroa.023.022.i120, !dbg !74470
  br i1 %i.br, label %bb.w, label %bb.v, !dbg !74470

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp ugt i64 %i.bd, %.sroa.023.022.i120, !dbg !74471
  br i1 %i.bs, label %.backedge.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74471

bb.w:                                             ; preds = %bb.u
  %i.bt = xor i64 %i.bd, -1, !dbg !74472          ; 2 uses
  %i.bu = add i64 %.sroa.16.023.i119, %i.bt, !dbg !74472
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !74473
  %i.bw = add i64 %.sroa.023.022.i120, %i.bt, !dbg !74474
  br label %.backedge.i, !dbg !74475

bb.x:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmxENCINvMB8_SB1m_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtBa_4iter8adapters3map3MapIB3x_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2b_8downcastINtB2d_12ChunkedArrayNtNtB2f_9datatypes9Int64TypeE13downcast_iter0ENCINvB29_16arg_sort_numericB6v_E0EINtNtB3B_6copied6CopiedIB4a_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !74476
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74477

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !74427
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader, !dbg !74427

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i29.epil.init = phi i64 [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.ah, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i30.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i33.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i32.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.x to i1, !dbg !74427
  tail call void @llvm.assume(i1 %lcmp.mod132), !dbg !74427
  %.sroa.1.0.i.i.i.i33.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i30.epil.init, 1, !dbg !74421
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30.epil.init, !dbg !74422
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74373), !dbg !74423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74374), !dbg !74423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74375), !dbg !74424
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74376), !dbg !74424
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !74418
  %.val.i.i.i.i.i.i34.epil = load i64, ptr %i.by, align 8, !dbg !74418, !alias.scope !74377, !noalias !74378, !noundef !2532
  %i.bz = icmp slt i64 %.val.i.i.i.i.i.i34.epil, %.val2.i.i.i.i.i.i29.epil.init, !dbg !74425
  %.1.i.i.i.i.i.i36.epil = select i1 %i.bz, i64 %.sroa.1.0.i.i.i.i33.epil, i64 %.sroa.02.0.i.i.i.i32.epil.init, !dbg !74426
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !74478

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i36.lcssa = phi i64 [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i36.epil, %.epil.preheader ], !dbg !74426 ; 3 uses
  %i.ca = icmp ult i64 %.1.i.i.i.i.i.i36.lcssa, %2, !dbg !74478
  br i1 %i.ca, label %bb.z, label %bb.y, !dbg !74478

bb.y:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i36.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36, !dbg !74478
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1.i.i.i.i.i.i36.lcssa, !dbg !74479 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !74480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !dbg !74481
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !74482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !74483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !74484
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74485

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0, !dbg !74414
  br i1 %lcmp.mod136.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader134, !dbg !74414

.epil.preheader134:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi i64 [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.w, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.m to i1, !dbg !74414
  tail call void @llvm.assume(i1 %lcmp.mod138), !dbg !74414
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !74408
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !74409
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74362), !dbg !74410
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74363), !dbg !74410
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74364), !dbg !74411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74365), !dbg !74411
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24, !dbg !74405
  %.val2.i.i.i.i.i.i.epil = load i64, ptr %i.cd, align 8, !dbg !74405, !alias.scope !74366, !noalias !74367, !noundef !2532
  %i.ce = icmp slt i64 %.val.i.i.i.i.i.i.epil.init, %.val2.i.i.i.i.i.i.epil, !dbg !74412
  %.1.i.i.i.i.i.i.epil = select i1 %i.ce, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !74413
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !74486

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %.epil.preheader134, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.e
  %i.cf = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader134 ] ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %2, !dbg !74486
  br i1 %i.cg, label %bb.ab, label %bb.aa, !dbg !74486

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #36, !dbg !74486
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB61_E0EINtNtB37_6copied6CopiedIB3G_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cf, !dbg !74487 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !74488 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !74489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !dbg !74490
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !dbg !74491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !74492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !74493
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74494

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.v, %bb.q, %bb.x, %bb.k, %._crit_edge.i, %bb.z, %bb.ab
  %i.cj = load i64, ptr %i.g, align 8, !dbg !74495, !noundef !2532 ; 5 uses
  %.not.i38 = icmp ugt i64 %i.cj, %2, !dbg !74496
  br i1 %.not.i38, label %bb.ac, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !74496, !prof !2689

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35, !dbg !74497, !noalias !74391
  unreachable, !dbg !74497

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort17arg_sort_no_nullsINtNtNtNtB8_4iter8adapters3map3MapIB3j_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB6h_E0EINtNtB3n_6copied6CopiedIB3W_xEExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.not.i39 = icmp eq i64 %2, %i.cj, !dbg !74498
  br i1 %.not.i39, label %bb.ad, label %bb.ae, !dbg !74498, !prof !2689

bb.ad:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #35, !dbg !74499, !noalias !74392
  unreachable, !dbg !74499

bb.ae:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cj, !dbg !74500 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !74501
  %i.cm = xor i64 %i.cj, -1, !dbg !74502
  %i.cn = add nsw i64 %2, %i.cm, !dbg !74502
  store ptr %1, ptr %0, align 8, !dbg !74503
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !74503
  store i64 %i.cj, ptr %i.co, align 8, !dbg !74503
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !74503
  store ptr %i.ck, ptr %i.cp, align 8, !dbg !74503
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !74503
  store ptr %i.cl, ptr %i.cq, align 8, !dbg !74503
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !74503
  store i64 %i.cn, ptr %i.cr, align 8, !dbg !74503
  ret void, !dbg !74504
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexTmxENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB34_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes9Int64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB62_Es_0EIB34_INtNtNtNtB4C_6bitmap5utils12zip_validity11ZipValidityRxIB3H_xENtNtB7w_8iterator10BitmapIterENCNCB6O_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !74505 !guid !74683 {
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
  store i64 %2, ptr %i.e, align 8, !dbg !74720
  %.not = icmp ult i64 %3, %2, !dbg !74721
  br i1 %.not, label %bb.c, label %bb.b, !dbg !74721, !prof !2819

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !74722
  store ptr %i.g, ptr %i.d, align 8, !dbg !74722
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !74722
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !74722
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !74722
  store ptr %i.e, ptr %i.h, align 8, !dbg !74722
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !74722
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !74722
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #36, !dbg !74723
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = add nsw i64 %2, -1, !dbg !74724
  %i.j = icmp eq i64 %3, %i.i, !dbg !74725
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !74725

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %3, 0, !dbg !74726
  br i1 %i.k, label %bb.h, label %bb.j, !dbg !74726

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74685), !dbg !74727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74686), !dbg !74728
  %i.l = icmp eq i64 %2, 1, !dbg !74729
  br i1 %i.l, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.f, !dbg !74730

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i64 %2, 1152921504606846975, !dbg !74731 ; 4 uses
  %i.n = and i64 %i.m, 1152921504606846975, !dbg !74731
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !74732, !alias.scope !74687, !noalias !74688 ; 2 uses
  %xtraiter135 = and i64 %i.m, 1, !dbg !74733
  %i.o = icmp eq i64 %i.n, 1, !dbg !74733
  br i1 %i.o, label %.epil.preheader134, label %.new133, !dbg !74733

.new133:                                          ; preds = %bb.f
  %unroll_iter139 = and i64 %i.m, 1152921504606846974, !dbg !74733
  br label %bb.g, !dbg !74733

bb.g:                                             ; preds = %bb.g, %.new133
  %.val.i.i.i.i.i.i = phi i64 [ %.val.i.i.pre.i.i.i.i, %.new133 ], [ %i.w, %bb.g ], !dbg !74732 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new133 ], [ %.sroa.1.0.i.i.i.i.1, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new133 ], [ %.1.i.i.i.i.i.i.1, %bb.g ], !dbg !74734
  %niter140 = phi i64 [ 0, %.new133 ], [ %niter140.next.1, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !74735 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i, !dbg !74736
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74689), !dbg !74737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74690), !dbg !74737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74691), !dbg !74738
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74692), !dbg !74738
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !74732
  %.val2.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !dbg !74732, !alias.scope !74693, !noalias !74694, !noundef !2532 ; 2 uses
  %i.r = icmp slt i64 %.val2.i.i.i.i.i.i, %.val.i.i.i.i.i.i, !dbg !74739
  %.1.i.i.i.i.i.i = select i1 %i.r, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !74740
  %i.s = tail call i64 @llvm.smin.i64(i64 %.val2.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i), !dbg !74732 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !74735 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i, !dbg !74736
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !74732
  %.val2.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !dbg !74732, !alias.scope !74695, !noalias !74694, !noundef !2532 ; 2 uses
  %i.v = icmp slt i64 %.val2.i.i.i.i.i.i.1, %i.s, !dbg !74739
  %.1.i.i.i.i.i.i.1 = select i1 %i.v, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !74740 ; 3 uses
  %i.w = tail call i64 @llvm.smin.i64(i64 %.val2.i.i.i.i.i.i.1, i64 %i.s), !dbg !74732 ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2, !dbg !74741 ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139, !dbg !74741
  br i1 %niter140.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !74741

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74696), !dbg !74742
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74697), !dbg !74743
  %i.x = add nuw nsw i64 %2, 1152921504606846975, !dbg !74744 ; 4 uses
  %i.y = and i64 %i.x, 1152921504606846975, !dbg !74744
  %.phi.trans.insert.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i28, align 8, !dbg !74745, !alias.scope !74698, !noalias !74699 ; 2 uses
  %xtraiter = and i64 %i.x, 1, !dbg !74746
  %i.z = icmp eq i64 %i.y, 1, !dbg !74746
  br i1 %i.z, label %.epil.preheader, label %.new, !dbg !74746

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.x, 1152921504606846974, !dbg !74746
  br label %bb.i, !dbg !74746

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i29 = phi i64 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ah, %bb.i ], !dbg !74745 ; 2 uses
  %.sroa.1.0.i.i.in.i.i30 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i33.1, %bb.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i32 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i36.1, %bb.i ], !dbg !74747
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %.sroa.1.0.i.i.i.i33 = or disjoint i64 %.sroa.1.0.i.i.in.i.i30, 1, !dbg !74748 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30, !dbg !74749
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74700), !dbg !74750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74701), !dbg !74750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74702), !dbg !74751
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74703), !dbg !74751
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !74745
  %.val.i.i.i.i.i.i34 = load i64, ptr %i.ab, align 8, !dbg !74745, !alias.scope !74704, !noalias !74705, !noundef !2532 ; 2 uses
  %i.ac = icmp slt i64 %.val2.i.i.i.i.i.i29, %.val.i.i.i.i.i.i34, !dbg !74752
  %.1.i.i.i.i.i.i36 = select i1 %i.ac, i64 %.sroa.1.0.i.i.i.i33, i64 %.sroa.02.0.i.i.i.i32, !dbg !74753
  %i.ad = tail call i64 @llvm.smax.i64(i64 %.val2.i.i.i.i.i.i29, i64 %.val.i.i.i.i.i.i34), !dbg !74745 ; 2 uses
  %.sroa.1.0.i.i.i.i33.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i30, 2, !dbg !74748 ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i33, !dbg !74749
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !74745
  %.val.i.i.i.i.i.i34.1 = load i64, ptr %i.af, align 8, !dbg !74745, !alias.scope !74706, !noalias !74705, !noundef !2532 ; 2 uses
  %i.ag = icmp slt i64 %i.ad, %.val.i.i.i.i.i.i34.1, !dbg !74752
  %.1.i.i.i.i.i.i36.1 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i33.1, i64 %.1.i.i.i.i.i.i36, !dbg !74753 ; 3 uses
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 %.val.i.i.i.i.i.i34.1), !dbg !74745 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !74754  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !74754
  br i1 %niter.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, label %bb.i, !dbg !74754

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74707), !dbg !74755
  %i.ai = icmp samesign ult i64 %2, 17, !dbg !74756
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !74756

.lr.ph.i:                                         ; preds = %.backedge.i
  %i.aj = icmp eq i32 %i.al, 0, !dbg !74757
  br i1 %i.aj, label %bb.k, label %.lr.ph.i.preheader, !dbg !74757

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  %.sroa.16.0.lcssa.i = phi i64 [ %2, %bb.j ], [ %.sroa.16.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %.sroa.0.0.be.i, %.backedge.i ]
  %i.ak = icmp samesign ugt i64 %.sroa.16.0.lcssa.i, 1, !dbg !74758
  br i1 %i.ak, label %bb.x, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74758

bb.k:                                             ; preds = %.lr.ph.i
  call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansTmxENCINvMB6_SB12_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1R_8downcastINtB1T_12ChunkedArrayNtNtB1V_9datatypes9Int64TypeE13downcast_iter0ENCINvB1P_16arg_sort_numericB61_Es_0EIB33_INtNtNtNtB4B_6bitmap5utils12zip_validity11ZipValidityRxIB3G_xENtNtB7v_8iterator10BitmapIterENCNCB6N_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.be.i, i64 noundef %.sroa.16.0.be.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.sroa.023.0.be.i), !dbg !74759
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74760

.lr.ph.i.preheader:                               ; preds = %bb.j, %.lr.ph.i
  %.sroa.031.020.i122 = phi i32 [ %i.al, %.lr.ph.i ], [ 16, %bb.j ]
  %.sroa.029.021.i121 = phi ptr [ %.sroa.029.0.be.i, %.lr.ph.i ], [ null, %bb.j ] ; 3 uses
  %.sroa.023.022.i120 = phi i64 [ %.sroa.023.0.be.i, %.lr.ph.i ], [ %3, %bb.j ] ; 6 uses
  %.sroa.16.023.i119 = phi i64 [ %.sroa.16.0.be.i, %.lr.ph.i ], [ %2, %bb.j ] ; 12 uses
  %.sroa.0.024.i118 = phi ptr [ %.sroa.0.0.be.i, %.lr.ph.i ], [ %1, %bb.j ] ; 12 uses
  %i.al = add nsw i32 %.sroa.031.020.i122, -1, !dbg !74761 ; 2 uses
  %i.am = lshr i64 %.sroa.16.023.i119, 3, !dbg !74762 ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.am, 6, !dbg !74763
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx.i.i, !dbg !74763 ; 3 uses
  %.idx2.i.i = mul nuw nsw i64 %i.am, 112, !dbg !74764
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx2.i.i, !dbg !74764 ; 3 uses
  %i.ap = icmp samesign ult i64 %.sroa.16.023.i119, 64, !dbg !74765
  br i1 %i.ap, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.l, !dbg !74765

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.aq = call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTmxENCINvMB8_SB14_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB35_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1T_8downcastINtB1V_12ChunkedArrayNtNtB1X_9datatypes9Int64TypeE13downcast_iter0ENCINvB1R_16arg_sort_numericB63_Es_0EIB35_INtNtNtNtB4D_6bitmap5utils12zip_validity11ZipValidityRxIB3I_xENtNtB7x_8iterator10BitmapIterENCNCB6P_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly align 8 %.sroa.0.024.i118, ptr noundef nonnull readonly %i.an, ptr noundef nonnull readonly %i.ao, i64 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !74766
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !74767

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %.lr.ph.i.preheader
  %i.ar = getelementptr i8, ptr %.sroa.0.024.i118, i64 8, !dbg !74768
  %.val6.i.i = load i64, ptr %i.ar, align 8, !dbg !74768, !alias.scope !74709, !noundef !2532 ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 8, !dbg !74768
  %.val7.i.i = load i64, ptr %i.as, align 8, !dbg !74768, !alias.scope !74710, !noundef !2532 ; 2 uses
  %i.at = icmp slt i64 %.val7.i.i, %.val6.i.i, !dbg !74769 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 8, !dbg !74770
  %.val5.i.i = load i64, ptr %i.au, align 8, !dbg !74770, !alias.scope !74710, !noundef !2532 ; 2 uses
  %i.av = icmp slt i64 %.val5.i.i, %.val6.i.i, !dbg !74771
  %i.aw = xor i1 %i.at, %i.av, !dbg !74772
  %i.ax = icmp slt i64 %.val5.i.i, %.val7.i.i, !dbg !74772
  %i.ay = xor i1 %i.at, %i.ax, !dbg !74772
  %..i.i.i = select i1 %i.ay, ptr %i.ao, ptr %i.an, !dbg !74772
  %.sroa.0.0.i.i.i = select i1 %i.aw, ptr %.sroa.0.024.i118, ptr %..i.i.i, !dbg !74772
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !74767

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.l
  %.sroa.0.0.i.sink.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.aq, %bb.l ]
  %i.az = ptrtoint ptr %.sroa.0.0.i.sink.i.i to i64, !dbg !74773
  %i.ba = ptrtoint ptr %.sroa.0.024.i118 to i64, !dbg !74773
  %i.bb = sub nuw i64 %i.az, %i.ba, !dbg !74773   ; 2 uses
  %.sroa.0.0.i.i = lshr exact i64 %i.bb, 4, !dbg !74773 ; 3 uses
  %i.bc = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.16.023.i119, !dbg !74774
  call void @llvm.assume(i1 %i.bc), !dbg !74775
  %.not.i = icmp eq ptr %.sroa.029.021.i121, null, !dbg !74776
  br i1 %.not.i, label %bb.m, label %bb.p, !dbg !74777

bb.m:                                             ; preds = %bb.p, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bd = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB38_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1W_8downcastINtB1Y_12ChunkedArrayNtNtB20_9datatypes9Int64TypeE13downcast_iter0ENCINvB1U_16arg_sort_numericB66_Es_0EIB38_INtNtNtNtB4G_6bitmap5utils12zip_validity11ZipValidityRxIB3L_xENtNtB7A_8iterator10BitmapIterENCNCB6S_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !74778 ; 7 uses
  %.not.i.i = icmp ugt i64 %i.bd, %.sroa.16.023.i119, !dbg !74779
  br i1 %.not.i.i, label %bb.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !74779, !prof !2689

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #35, !dbg !74780, !noalias !74711
  unreachable, !dbg !74780

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bd, !dbg !74781 ; 2 uses
  %.not.i38.i = icmp eq i64 %.sroa.16.023.i119, %i.bd, !dbg !74782
  br i1 %.not.i38.i, label %bb.o, label %bb.u, !dbg !74782, !prof !2689

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #35, !dbg !74783, !noalias !74712
  unreachable, !dbg !74783

bb.p:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bb, !dbg !74784
  %i.bg = getelementptr i8, ptr %.sroa.029.021.i121, i64 8, !dbg !74785
  %.sroa.029.0.val.i = load i64, ptr %i.bg, align 8, !dbg !74785, !alias.scope !74713, !noundef !2532
  %i.bh = getelementptr i8, ptr %i.bf, i64 8, !dbg !74785
  %.val.i = load i64, ptr %i.bh, align 8, !dbg !74785, !alias.scope !74714, !noundef !2532
  %i.bi = icmp slt i64 %.val.i, %.sroa.029.0.val.i, !dbg !74786
  br i1 %i.bi, label %bb.m, label %bb.q, !dbg !74785

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !74787, !noalias !74715
  store ptr %i.f, ptr %i.c, align 8, !dbg !74787, !noalias !74715
  %i.bj = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvNtB6_6select23partition_at_index_loopB17_NCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB3S_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2G_8downcastINtB2I_12ChunkedArrayNtNtB2K_9datatypes9Int64TypeE13downcast_iter0ENCINvB2E_16arg_sort_numericB6Q_Es_0EIB3S_INtNtNtNtB5q_6bitmap5utils12zip_validity11ZipValidityRxIB4v_xENtNtB8k_8iterator10BitmapIterENCNCB7C_s_00ExEs0_0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !dbg !74788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !74789, !noalias !74715
  %i.bk = add i64 %i.bj, 1, !dbg !74790           ; 6 uses
  %i.bl = icmp ugt i64 %i.bk, %.sroa.023.022.i120, !dbg !74791
  br i1 %i.bl, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.r, !dbg !74791

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp ugt i64 %i.bk, %.sroa.16.023.i119, !dbg !74792
  br i1 %i.bm, label %bb.t, label %bb.s, !dbg !74792, !prof !2689

bb.s:                                             ; preds = %bb.r
  %i.bn = sub nuw i64 %.sroa.16.023.i119, %i.bk, !dbg !74793
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bk, !dbg !74794
  %i.bp = sub nuw i64 %.sroa.023.022.i120, %i.bk, !dbg !74795
  br label %.backedge.i, !dbg !74760

.backedge.i:                                      ; preds = %bb.w, %bb.v, %bb.s
  %.sroa.029.0.be.i = phi ptr [ null, %bb.s ], [ %i.be, %bb.w ], [ %.sroa.029.021.i121, %bb.v ]
  %.sroa.023.0.be.i = phi i64 [ %i.bp, %bb.s ], [ %i.bw, %bb.w ], [ %.sroa.023.022.i120, %bb.v ] ; 2 uses
  %.sroa.16.0.be.i = phi i64 [ %i.bn, %bb.s ], [ %i.bu, %bb.w ], [ %i.bd, %bb.v ] ; 4 uses
  %.sroa.0.0.be.i = phi ptr [ %i.bo, %bb.s ], [ %i.bv, %bb.w ], [ %.sroa.0.024.i118, %bb.v ] ; 3 uses
  %i.bq = icmp ult i64 %.sroa.16.0.be.i, 17, !dbg !74756
  br i1 %i.bq, label %._crit_edge.i, label %.lr.ph.i, !dbg !74756

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bk, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.16.023.i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35, !dbg !74796
  unreachable, !dbg !74796

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  %i.br = icmp ult i64 %i.bd, %.sroa.023.022.i120, !dbg !74797
  br i1 %i.br, label %bb.w, label %bb.v, !dbg !74797

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp ugt i64 %i.bd, %.sroa.023.022.i120, !dbg !74798
  br i1 %i.bs, label %.backedge.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74798

bb.w:                                             ; preds = %bb.u
  %i.bt = xor i64 %i.bd, -1, !dbg !74799          ; 2 uses
  %i.bu = add i64 %.sroa.16.023.i119, %i.bt, !dbg !74799
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !74800
  %i.bw = add i64 %.sroa.023.022.i120, %i.bt, !dbg !74801
  br label %.backedge.i, !dbg !74802

bb.x:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmxENCINvMB8_SB1m_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB3n_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2b_8downcastINtB2d_12ChunkedArrayNtNtB2f_9datatypes9Int64TypeE13downcast_iter0ENCINvB29_16arg_sort_numericB6l_Es_0EIB3n_INtNtNtNtB4V_6bitmap5utils12zip_validity11ZipValidityRxIB40_xENtNtB7P_8iterator10BitmapIterENCNCB77_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !74803
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74804

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !74754
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader, !dbg !74754

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i29.epil.init = phi i64 [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.ah, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i30.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i33.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i32.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.x to i1, !dbg !74754
  tail call void @llvm.assume(i1 %lcmp.mod132), !dbg !74754
  %.sroa.1.0.i.i.i.i33.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i30.epil.init, 1, !dbg !74748
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30.epil.init, !dbg !74749
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74700), !dbg !74750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74701), !dbg !74750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74702), !dbg !74751
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74703), !dbg !74751
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !74745
  %.val.i.i.i.i.i.i34.epil = load i64, ptr %i.by, align 8, !dbg !74745, !alias.scope !74704, !noalias !74705, !noundef !2532
  %i.bz = icmp slt i64 %.val2.i.i.i.i.i.i29.epil.init, %.val.i.i.i.i.i.i34.epil, !dbg !74752
  %.1.i.i.i.i.i.i36.epil = select i1 %i.bz, i64 %.sroa.1.0.i.i.i.i33.epil, i64 %.sroa.02.0.i.i.i.i32.epil.init, !dbg !74753
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !74805

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i36.lcssa = phi i64 [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i36.epil, %.epil.preheader ], !dbg !74753 ; 3 uses
  %i.ca = icmp ult i64 %.1.i.i.i.i.i.i36.lcssa, %2, !dbg !74805
  br i1 %i.ca, label %bb.z, label %bb.y, !dbg !74805

bb.y:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i36.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36, !dbg !74805
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1.i.i.i.i.i.i36.lcssa, !dbg !74806 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !74807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !dbg !74808
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !74809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !74810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !74811
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74812

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0, !dbg !74741
  br i1 %lcmp.mod136.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader134, !dbg !74741

.epil.preheader134:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi i64 [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.w, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.m to i1, !dbg !74741
  tail call void @llvm.assume(i1 %lcmp.mod138), !dbg !74741
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !74735
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !74736
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74689), !dbg !74737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74690), !dbg !74737
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74691), !dbg !74738
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74692), !dbg !74738
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24, !dbg !74732
  %.val2.i.i.i.i.i.i.epil = load i64, ptr %i.cd, align 8, !dbg !74732, !alias.scope !74693, !noalias !74694, !noundef !2532
  %i.ce = icmp slt i64 %.val2.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.epil.init, !dbg !74739
  %.1.i.i.i.i.i.i.epil = select i1 %i.ce, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !74740
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !74813

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %.epil.preheader134, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.e
  %i.cf = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader134 ] ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %2, !dbg !74813
  br i1 %i.cg, label %bb.ab, label %bb.aa, !dbg !74813

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #36, !dbg !74813
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cf, !dbg !74814 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !74815 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !74816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !dbg !74817
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !dbg !74818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !74819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !74820
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !74821

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.v, %bb.q, %bb.x, %bb.k, %._crit_edge.i, %bb.z, %bb.ab
  %i.cj = load i64, ptr %i.g, align 8, !dbg !74822, !noundef !2532 ; 5 uses
  %.not.i38 = icmp ugt i64 %i.cj, %2, !dbg !74823
  br i1 %.not.i38, label %bb.ac, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !74823, !prof !2689

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35, !dbg !74824, !noalias !74718
  unreachable, !dbg !74824

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs0_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.not.i39 = icmp eq i64 %2, %i.cj, !dbg !74825
  br i1 %.not.i39, label %bb.ad, label %bb.ae, !dbg !74825, !prof !2689

bb.ad:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #35, !dbg !74826, !noalias !74719
  unreachable, !dbg !74826

bb.ae:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cj, !dbg !74827 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !74828
  %i.cm = xor i64 %i.cj, -1, !dbg !74829
  %i.cn = add nsw i64 %2, %i.cm, !dbg !74829
  store ptr %1, ptr %0, align 8, !dbg !74830
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !74830
  store i64 %i.cj, ptr %i.co, align 8, !dbg !74830
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !74830
  store ptr %i.ck, ptr %i.cp, align 8, !dbg !74830
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !74830
  store ptr %i.cl, ptr %i.cq, align 8, !dbg !74830
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !74830
  store i64 %i.cn, ptr %i.cr, align 8, !dbg !74830
  ret void, !dbg !74831
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexTmxENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB34_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes9Int64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB62_Es_0EIB34_INtNtNtNtB4C_6bitmap5utils12zip_validity11ZipValidityRxIB3H_xENtNtB7w_8iterator10BitmapIterENCNCB6O_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !74832 !guid !75010 {
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
  store i64 %2, ptr %i.e, align 8, !dbg !75047
  %.not = icmp ult i64 %3, %2, !dbg !75048
  br i1 %.not, label %bb.c, label %bb.b, !dbg !75048, !prof !2819

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !75049
  store ptr %i.g, ptr %i.d, align 8, !dbg !75049
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !75049
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !75049
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !75049
  store ptr %i.e, ptr %i.h, align 8, !dbg !75049
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !75049
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !75049
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #36, !dbg !75050
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = add nsw i64 %2, -1, !dbg !75051
  %i.j = icmp eq i64 %3, %i.i, !dbg !75052
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !75052

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %3, 0, !dbg !75053
  br i1 %i.k, label %bb.h, label %bb.j, !dbg !75053

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75012), !dbg !75054
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75013), !dbg !75055
  %i.l = icmp eq i64 %2, 1, !dbg !75056
  br i1 %i.l, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.f, !dbg !75057

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i64 %2, 1152921504606846975, !dbg !75058 ; 4 uses
  %i.n = and i64 %i.m, 1152921504606846975, !dbg !75058
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !dbg !75059, !alias.scope !75014, !noalias !75015 ; 2 uses
  %xtraiter135 = and i64 %i.m, 1, !dbg !75060
  %i.o = icmp eq i64 %i.n, 1, !dbg !75060
  br i1 %i.o, label %.epil.preheader134, label %.new133, !dbg !75060

.new133:                                          ; preds = %bb.f
  %unroll_iter139 = and i64 %i.m, 1152921504606846974, !dbg !75060
  br label %bb.g, !dbg !75060

bb.g:                                             ; preds = %bb.g, %.new133
  %.val.i.i.i.i.i.i = phi i64 [ %.val.i.i.pre.i.i.i.i, %.new133 ], [ %i.w, %bb.g ], !dbg !75059 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new133 ], [ %.sroa.1.0.i.i.i.i.1, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new133 ], [ %.1.i.i.i.i.i.i.1, %bb.g ], !dbg !75061
  %niter140 = phi i64 [ 0, %.new133 ], [ %niter140.next.1, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !75062 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i, !dbg !75063
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75016), !dbg !75064
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75017), !dbg !75064
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75018), !dbg !75065
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75019), !dbg !75065
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !75059
  %.val2.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !dbg !75059, !alias.scope !75020, !noalias !75021, !noundef !2532 ; 2 uses
  %i.r = icmp slt i64 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !75066
  %.1.i.i.i.i.i.i = select i1 %i.r, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !75067
  %i.s = tail call i64 @llvm.smax.i64(i64 %.val.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i), !dbg !75059 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !75062 ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i, !dbg !75063
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !75059
  %.val2.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !dbg !75059, !alias.scope !75022, !noalias !75021, !noundef !2532 ; 2 uses
  %i.v = icmp slt i64 %i.s, %.val2.i.i.i.i.i.i.1, !dbg !75066
  %.1.i.i.i.i.i.i.1 = select i1 %i.v, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !75067 ; 3 uses
  %i.w = tail call i64 @llvm.smax.i64(i64 %i.s, i64 %.val2.i.i.i.i.i.i.1), !dbg !75059 ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2, !dbg !75068 ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139, !dbg !75068
  br i1 %niter140.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !75068

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75023), !dbg !75069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75024), !dbg !75070
  %i.x = add nuw nsw i64 %2, 1152921504606846975, !dbg !75071 ; 4 uses
  %i.y = and i64 %i.x, 1152921504606846975, !dbg !75071
  %.phi.trans.insert.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i.i.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i28, align 8, !dbg !75072, !alias.scope !75025, !noalias !75026 ; 2 uses
  %xtraiter = and i64 %i.x, 1, !dbg !75073
  %i.z = icmp eq i64 %i.y, 1, !dbg !75073
  br i1 %i.z, label %.epil.preheader, label %.new, !dbg !75073

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.x, 1152921504606846974, !dbg !75073
  br label %bb.i, !dbg !75073

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i29 = phi i64 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ah, %bb.i ], !dbg !75072 ; 2 uses
  %.sroa.1.0.i.i.in.i.i30 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i33.1, %bb.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i32 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i36.1, %bb.i ], !dbg !75074
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %.sroa.1.0.i.i.i.i33 = or disjoint i64 %.sroa.1.0.i.i.in.i.i30, 1, !dbg !75075 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30, !dbg !75076
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75027), !dbg !75077
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75028), !dbg !75077
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75029), !dbg !75078
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75030), !dbg !75078
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !75072
  %.val.i.i.i.i.i.i34 = load i64, ptr %i.ab, align 8, !dbg !75072, !alias.scope !75031, !noalias !75032, !noundef !2532 ; 2 uses
  %i.ac = icmp slt i64 %.val.i.i.i.i.i.i34, %.val2.i.i.i.i.i.i29, !dbg !75079
  %.1.i.i.i.i.i.i36 = select i1 %i.ac, i64 %.sroa.1.0.i.i.i.i33, i64 %.sroa.02.0.i.i.i.i32, !dbg !75080
  %i.ad = tail call i64 @llvm.smin.i64(i64 %.val.i.i.i.i.i.i34, i64 %.val2.i.i.i.i.i.i29), !dbg !75072 ; 2 uses
  %.sroa.1.0.i.i.i.i33.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i30, 2, !dbg !75075 ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.i.i33, !dbg !75076
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !75072
  %.val.i.i.i.i.i.i34.1 = load i64, ptr %i.af, align 8, !dbg !75072, !alias.scope !75033, !noalias !75032, !noundef !2532 ; 2 uses
  %i.ag = icmp slt i64 %.val.i.i.i.i.i.i34.1, %i.ad, !dbg !75079
  %.1.i.i.i.i.i.i36.1 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i33.1, i64 %.1.i.i.i.i.i.i36, !dbg !75080 ; 3 uses
  %i.ah = tail call i64 @llvm.smin.i64(i64 %.val.i.i.i.i.i.i34.1, i64 %i.ad), !dbg !75072 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !75081  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !75081
  br i1 %niter.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, label %bb.i, !dbg !75081

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75034), !dbg !75082
  %i.ai = icmp samesign ult i64 %2, 17, !dbg !75083
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !75083

.lr.ph.i:                                         ; preds = %.backedge.i
  %i.aj = icmp eq i32 %i.al, 0, !dbg !75084
  br i1 %i.aj, label %bb.k, label %.lr.ph.i.preheader, !dbg !75084

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  %.sroa.16.0.lcssa.i = phi i64 [ %2, %bb.j ], [ %.sroa.16.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %.sroa.0.0.be.i, %.backedge.i ]
  %i.ak = icmp samesign ugt i64 %.sroa.16.0.lcssa.i, 1, !dbg !75085
  br i1 %i.ak, label %bb.x, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !75085

bb.k:                                             ; preds = %.lr.ph.i
  call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansTmxENCINvMB6_SB12_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1R_8downcastINtB1T_12ChunkedArrayNtNtB1V_9datatypes9Int64TypeE13downcast_iter0ENCINvB1P_16arg_sort_numericB61_Es_0EIB33_INtNtNtNtB4B_6bitmap5utils12zip_validity11ZipValidityRxIB3G_xENtNtB7v_8iterator10BitmapIterENCNCB6N_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.be.i, i64 noundef %.sroa.16.0.be.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %.sroa.023.0.be.i), !dbg !75086
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !75087

.lr.ph.i.preheader:                               ; preds = %bb.j, %.lr.ph.i
  %.sroa.031.020.i122 = phi i32 [ %i.al, %.lr.ph.i ], [ 16, %bb.j ]
  %.sroa.029.021.i121 = phi ptr [ %.sroa.029.0.be.i, %.lr.ph.i ], [ null, %bb.j ] ; 3 uses
  %.sroa.023.022.i120 = phi i64 [ %.sroa.023.0.be.i, %.lr.ph.i ], [ %3, %bb.j ] ; 6 uses
  %.sroa.16.023.i119 = phi i64 [ %.sroa.16.0.be.i, %.lr.ph.i ], [ %2, %bb.j ] ; 12 uses
  %.sroa.0.024.i118 = phi ptr [ %.sroa.0.0.be.i, %.lr.ph.i ], [ %1, %bb.j ] ; 12 uses
  %i.al = add nsw i32 %.sroa.031.020.i122, -1, !dbg !75088 ; 2 uses
  %i.am = lshr i64 %.sroa.16.023.i119, 3, !dbg !75089 ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.am, 6, !dbg !75090
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx.i.i, !dbg !75090 ; 3 uses
  %.idx2.i.i = mul nuw nsw i64 %i.am, 112, !dbg !75091
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %.idx2.i.i, !dbg !75091 ; 3 uses
  %i.ap = icmp samesign ult i64 %.sroa.16.023.i119, 64, !dbg !75092
  br i1 %i.ap, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.l, !dbg !75092

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.aq = call noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTmxENCINvMB8_SB14_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB35_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1T_8downcastINtB1V_12ChunkedArrayNtNtB1X_9datatypes9Int64TypeE13downcast_iter0ENCINvB1R_16arg_sort_numericB63_Es_0EIB35_INtNtNtNtB4D_6bitmap5utils12zip_validity11ZipValidityRxIB3I_xENtNtB7x_8iterator10BitmapIterENCNCB6P_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly align 8 %.sroa.0.024.i118, ptr noundef nonnull readonly %i.an, ptr noundef nonnull readonly %i.ao, i64 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !75093
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !75094

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %.lr.ph.i.preheader
  %i.ar = getelementptr i8, ptr %.sroa.0.024.i118, i64 8, !dbg !75095
  %.val6.i.i = load i64, ptr %i.ar, align 8, !dbg !75095, !alias.scope !75036, !noundef !2532 ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 8, !dbg !75095
  %.val7.i.i = load i64, ptr %i.as, align 8, !dbg !75095, !alias.scope !75037, !noundef !2532 ; 2 uses
  %i.at = icmp slt i64 %.val6.i.i, %.val7.i.i, !dbg !75096 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 8, !dbg !75097
  %.val5.i.i = load i64, ptr %i.au, align 8, !dbg !75097, !alias.scope !75037, !noundef !2532 ; 2 uses
  %i.av = icmp slt i64 %.val6.i.i, %.val5.i.i, !dbg !75098
  %i.aw = xor i1 %i.at, %i.av, !dbg !75099
  %i.ax = icmp slt i64 %.val7.i.i, %.val5.i.i, !dbg !75099
  %i.ay = xor i1 %i.at, %i.ax, !dbg !75099
  %..i.i.i = select i1 %i.ay, ptr %i.ao, ptr %i.an, !dbg !75099
  %.sroa.0.0.i.i.i = select i1 %i.aw, ptr %.sroa.0.024.i118, ptr %..i.i.i, !dbg !75099
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !75094

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.l
  %.sroa.0.0.i.sink.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3TmxENCINvMB8_SBZ_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB2Z_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1N_8downcastINtB1P_12ChunkedArrayNtNtB1R_9datatypes9Int64TypeE13downcast_iter0ENCINvB1L_16arg_sort_numericB5X_Es_0EIB2Z_INtNtNtNtB4x_6bitmap5utils12zip_validity11ZipValidityRxIB3C_xENtNtB7r_8iterator10BitmapIterENCNCB6J_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.aq, %bb.l ]
  %i.az = ptrtoint ptr %.sroa.0.0.i.sink.i.i to i64, !dbg !75100
  %i.ba = ptrtoint ptr %.sroa.0.024.i118 to i64, !dbg !75100
  %i.bb = sub nuw i64 %i.az, %i.ba, !dbg !75100   ; 2 uses
  %.sroa.0.0.i.i = lshr exact i64 %i.bb, 4, !dbg !75100 ; 3 uses
  %i.bc = icmp samesign ult i64 %.sroa.0.0.i.i, %.sroa.16.023.i119, !dbg !75101
  call void @llvm.assume(i1 %i.bc), !dbg !75102
  %.not.i = icmp eq ptr %.sroa.029.021.i121, null, !dbg !75103
  br i1 %.not.i, label %bb.m, label %bb.p, !dbg !75104

bb.m:                                             ; preds = %bb.p, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bd = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB38_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1W_8downcastINtB1Y_12ChunkedArrayNtNtB20_9datatypes9Int64TypeE13downcast_iter0ENCINvB1U_16arg_sort_numericB66_Es_0EIB38_INtNtNtNtB4G_6bitmap5utils12zip_validity11ZipValidityRxIB3L_xENtNtB7A_8iterator10BitmapIterENCNCB6S_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !75105 ; 7 uses
  %.not.i.i = icmp ugt i64 %i.bd, %.sroa.16.023.i119, !dbg !75106
  br i1 %.not.i.i, label %bb.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i, !dbg !75106, !prof !2689

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #35, !dbg !75107, !noalias !75038
  unreachable, !dbg !75107

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bd, !dbg !75108 ; 2 uses
  %.not.i38.i = icmp eq i64 %.sroa.16.023.i119, %i.bd, !dbg !75109
  br i1 %.not.i38.i, label %bb.o, label %bb.u, !dbg !75109, !prof !2689

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #35, !dbg !75110, !noalias !75039
  unreachable, !dbg !75110

bb.p:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTmxENCINvMB8_SB15_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB36_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1U_8downcastINtB1W_12ChunkedArrayNtNtB1Y_9datatypes9Int64TypeE13downcast_iter0ENCINvB1S_16arg_sort_numericB64_Es_0EIB36_INtNtNtNtB4E_6bitmap5utils12zip_validity11ZipValidityRxIB3J_xENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bb, !dbg !75111
  %i.bg = getelementptr i8, ptr %.sroa.029.021.i121, i64 8, !dbg !75112
  %.sroa.029.0.val.i = load i64, ptr %i.bg, align 8, !dbg !75112, !alias.scope !75040, !noundef !2532
  %i.bh = getelementptr i8, ptr %i.bf, i64 8, !dbg !75112
  %.val.i = load i64, ptr %i.bh, align 8, !dbg !75112, !alias.scope !75041, !noundef !2532
  %i.bi = icmp slt i64 %.sroa.029.0.val.i, %.val.i, !dbg !75113
  br i1 %i.bi, label %bb.m, label %bb.q, !dbg !75112

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !75114, !noalias !75042
  store ptr %i.f, ptr %i.c, align 8, !dbg !75114, !noalias !75042
  %i.bj = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmxENCINvNtB6_6select23partition_at_index_loopB17_NCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB3S_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2G_8downcastINtB2I_12ChunkedArrayNtNtB2K_9datatypes9Int64TypeE13downcast_iter0ENCINvB2E_16arg_sort_numericB6Q_Es_0EIB3S_INtNtNtNtB5q_6bitmap5utils12zip_validity11ZipValidityRxIB4v_xENtNtB8k_8iterator10BitmapIterENCNCB7C_s_00ExEs1_0E0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !dbg !75115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !75116, !noalias !75042
  %i.bk = add i64 %i.bj, 1, !dbg !75117           ; 6 uses
  %i.bl = icmp ugt i64 %i.bk, %.sroa.023.022.i120, !dbg !75118
  br i1 %i.bl, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.r, !dbg !75118

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp ugt i64 %i.bk, %.sroa.16.023.i119, !dbg !75119
  br i1 %i.bm, label %bb.t, label %bb.s, !dbg !75119, !prof !2689

bb.s:                                             ; preds = %bb.r
  %i.bn = sub nuw i64 %.sroa.16.023.i119, %i.bk, !dbg !75120
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.024.i118, i64 %i.bk, !dbg !75121
  %i.bp = sub nuw i64 %.sroa.023.022.i120, %i.bk, !dbg !75122
  br label %.backedge.i, !dbg !75087

.backedge.i:                                      ; preds = %bb.w, %bb.v, %bb.s
  %.sroa.029.0.be.i = phi ptr [ null, %bb.s ], [ %i.be, %bb.w ], [ %.sroa.029.021.i121, %bb.v ]
  %.sroa.023.0.be.i = phi i64 [ %i.bp, %bb.s ], [ %i.bw, %bb.w ], [ %.sroa.023.022.i120, %bb.v ] ; 2 uses
  %.sroa.16.0.be.i = phi i64 [ %i.bn, %bb.s ], [ %i.bu, %bb.w ], [ %i.bd, %bb.v ] ; 4 uses
  %.sroa.0.0.be.i = phi ptr [ %i.bo, %bb.s ], [ %i.bv, %bb.w ], [ %.sroa.0.024.i118, %bb.v ] ; 3 uses
  %i.bq = icmp ult i64 %.sroa.16.0.be.i, 17, !dbg !75083
  br i1 %i.bq, label %._crit_edge.i, label %.lr.ph.i, !dbg !75083

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bk, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.16.023.i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35, !dbg !75123
  unreachable, !dbg !75123

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit.i
  %i.br = icmp ult i64 %i.bd, %.sroa.023.022.i120, !dbg !75124
  br i1 %i.br, label %bb.w, label %bb.v, !dbg !75124

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp ugt i64 %i.bd, %.sroa.023.022.i120, !dbg !75125
  br i1 %i.bs, label %.backedge.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !75125

bb.w:                                             ; preds = %bb.u
  %i.bt = xor i64 %i.bd, -1, !dbg !75126          ; 2 uses
  %i.bu = add i64 %.sroa.16.023.i119, %i.bt, !dbg !75126
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !75127
  %i.bw = add i64 %.sroa.023.022.i120, %i.bt, !dbg !75128
  br label %.backedge.i, !dbg !75129

bb.x:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmxENCINvMB8_SB1m_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB3n_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2b_8downcastINtB2d_12ChunkedArrayNtNtB2f_9datatypes9Int64TypeE13downcast_iter0ENCINvB29_16arg_sort_numericB6l_Es_0EIB3n_INtNtNtNtB4V_6bitmap5utils12zip_validity11ZipValidityRxIB40_xENtNtB7P_8iterator10BitmapIterENCNCB77_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !75130
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !75131

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !75081
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader, !dbg !75081

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i29.epil.init = phi i64 [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.ah, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i30.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i33.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i32.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.x to i1, !dbg !75081
  tail call void @llvm.assume(i1 %lcmp.mod132), !dbg !75081
  %.sroa.1.0.i.i.i.i33.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i30.epil.init, 1, !dbg !75075
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30.epil.init, !dbg !75076
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75027), !dbg !75077
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75028), !dbg !75077
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75029), !dbg !75078
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75030), !dbg !75078
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !75072
  %.val.i.i.i.i.i.i34.epil = load i64, ptr %i.by, align 8, !dbg !75072, !alias.scope !75031, !noalias !75032, !noundef !2532
  %i.bz = icmp slt i64 %.val.i.i.i.i.i.i34.epil, %.val2.i.i.i.i.i.i29.epil.init, !dbg !75079
  %.1.i.i.i.i.i.i36.epil = select i1 %i.bz, i64 %.sroa.1.0.i.i.i.i33.epil, i64 %.sroa.02.0.i.i.i.i32.epil.init, !dbg !75080
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !75132

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i36.lcssa = phi i64 [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i36.epil, %.epil.preheader ], !dbg !75080 ; 3 uses
  %i.ca = icmp ult i64 %.1.i.i.i.i.i.i36.lcssa, %2, !dbg !75132
  br i1 %i.ca, label %bb.z, label %bb.y, !dbg !75132

bb.y:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i36.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36, !dbg !75132
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1.i.i.i.i.i.i36.lcssa, !dbg !75133 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !75134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !dbg !75135
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !75136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !75137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !75138
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !75139

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0, !dbg !75068
  br i1 %lcmp.mod136.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, label %.epil.preheader134, !dbg !75068

.epil.preheader134:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi i64 [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.w, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.m to i1, !dbg !75068
  tail call void @llvm.assume(i1 %lcmp.mod138), !dbg !75068
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !75062
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !75063
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75016), !dbg !75064
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75017), !dbg !75064
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75018), !dbg !75065
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75019), !dbg !75065
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24, !dbg !75059
  %.val2.i.i.i.i.i.i.epil = load i64, ptr %i.cd, align 8, !dbg !75059, !alias.scope !75020, !noalias !75021, !noundef !2532
  %i.ce = icmp slt i64 %.val.i.i.i.i.i.i.epil.init, %.val2.i.i.i.i.i.i.epil, !dbg !75066
  %.1.i.i.i.i.i.i.epil = select i1 %i.ce, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !75067
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !75140

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %.epil.preheader134, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa, %bb.e
  %i.cf = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader134 ] ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %2, !dbg !75140
  br i1 %i.cg, label %bb.ab, label %bb.aa, !dbg !75140

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #36, !dbg !75140
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmxENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes9Int64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRxIB3w_xENtNtB7l_8iterator10BitmapIterENCNCB6D_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit.thread
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cf, !dbg !75141 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !75142 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !75143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !dbg !75144
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !dbg !75145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !75146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !75147
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !75148

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.v, %bb.q, %bb.x, %bb.k, %._crit_edge.i, %bb.z, %bb.ab
  %i.cj = load i64, ptr %i.g, align 8, !dbg !75149, !noundef !2532 ; 5 uses
  %.not.i38 = icmp ugt i64 %i.cj, %2, !dbg !75150
  br i1 %.not.i38, label %bb.ac, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !75150, !prof !2689

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #35, !dbg !75151, !noalias !75045
  unreachable, !dbg !75151

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmxENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes9Int64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRxIB3M_xENtNtB7B_8iterator10BitmapIterENCNCB6T_s_00ExEs1_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.not.i39 = icmp eq i64 %2, %i.cj, !dbg !75152
  br i1 %.not.i39, label %bb.ad, label %bb.ae, !dbg !75152, !prof !2689

bb.ad:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @249, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #35, !dbg !75153, !noalias !75046
  unreachable, !dbg !75153

bb.ae:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cj, !dbg !75154 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !75155
  %i.cm = xor i64 %i.cj, -1, !dbg !75156
  %i.cn = add nsw i64 %2, %i.cm, !dbg !75156
  store ptr %1, ptr %0, align 8, !dbg !75157
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !75157
  store i64 %i.cj, ptr %i.co, align 8, !dbg !75157
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !75157
  store ptr %i.ck, ptr %i.cp, align 8, !dbg !75157
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !75157
  store ptr %i.cl, ptr %i.cq, align 8, !dbg !75157
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !75157
  store i64 %i.cn, ptr %i.cr, align 8, !dbg !75157
  ret void, !dbg !75158
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace13parse_integerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !75159 !guid !75275 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !75322
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !75276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !75276
  call void @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity32broadcast_try_binary_elementwiseNtNtB8_9datatypes10StringTypeNtB1y_10UInt32TypeNtB1y_10Int128TypeNCINvNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace13parse_integerB2h_E0nNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ad, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2), !dbg !75276
  %i.af = load i64, ptr %i.ad, align 8, !dbg !75323, !range !3035, !noundef !2532 ; 2 uses
  %.not = icmp eq i64 %i.af, 18, !dbg !75323
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !75324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 56, i1 false), !dbg !75324
  br i1 %.not, label %bb.c, label %bb.b, !dbg !75325

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnINtNtCscgRAwXFJnXP_4core7convert4FromNtNtB9_6series6SeriesE4from:bb.a
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread.i.i, label %bb.bg, !dbg !139330, !prof !139256

bb.p:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139342, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139343

bb.q:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139344, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139345

bb.r:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139346, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139347

bb.s:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139348, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139349

bb.t:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139350, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139351

bb.u:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139352, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139353

bb.v:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139354, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139355

bb.w:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139356, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139357

bb.x:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139358, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139359

bb.y:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139360, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139361

bb.z:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139362, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139363

bb.aa:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139364, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139365

bb.ab:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139366, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139367

bb.ac:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139368, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139369

bb.ad:                                            ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !139370
  %i.bf = load i64, ptr %i.be, align 8, !dbg !139370, !alias.scope !139246, !noalias !139241, !noundef !2532
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 1, !dbg !139371
  %i.bh = load i8, ptr %i.bg, align 1, !dbg !139371, !range !2879, !alias.scope !139246, !noalias !139241, !noundef !2532
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !139372
  %i.bj = load ptr, ptr %i.bi, align 16, !dbg !139372, !alias.scope !139246, !noalias !139241, !align !2690, !noundef !2532 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bj, null, !dbg !139373
  br i1 %.not9.i.i, label %.noexc19.i, label %bb.bh, !dbg !139374

bb.ae:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139375, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139376

bb.af:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139377, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139378

bb.ag:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139379, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139380

bb.ah:                                            ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 4, !dbg !139381
  %i.bl = load i32, ptr %i.bk, align 4, !dbg !139381, !alias.scope !139246, !noalias !139241, !noundef !2532
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !139382
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !139382, !alias.scope !139246, !noalias !139241, !nonnull !2532, !align !2690, !noundef !2532
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !139383, !noalias !139257, !nonnull !2532, !noundef !2532 ; 2 uses
  %i.bp = atomicrmw add ptr %i.bo, i64 1 monotonic, align 8, !dbg !139384, !noalias !139257
  %i.bq = icmp slt i64 %i.bp, 0, !dbg !139385
  br i1 %i.bq, label %bb.bj, label %bb.bi, !dbg !139385

bb.ai:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139386, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139387

bb.aj:                                            ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 4, !dbg !139388
  %i.bs = load i32, ptr %i.br, align 4, !dbg !139388, !alias.scope !139246, !noalias !139241, !noundef !2532
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !139389
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !139389, !alias.scope !139246, !noalias !139241, !nonnull !2532, !align !2690, !noundef !2532
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !139390, !noalias !139257, !nonnull !2532, !noundef !2532 ; 2 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8, !dbg !139391, !noalias !139257
  %i.bx = icmp slt i64 %i.bw, 0, !dbg !139392
  br i1 %i.bx, label %bb.bl, label %bb.bk, !dbg !139392

bb.ak:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139393, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139394

bb.al:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139395, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139396

bb.am:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139397, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139398

bb.an:                                            ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !139399
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !139399, !alias.scope !139246, !noalias !139241, !nonnull !2532, !noundef !2532
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !139399
  %i.cb = load ptr, ptr %i.ca, align 16, !dbg !139399, !alias.scope !139246, !noalias !139241, !nonnull !2532, !align !2690, !noundef !2532
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80, !dbg !139400
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !139400, !invariant.load !2532, !noalias !139257, !nonnull !2532
  %i.ce = invoke { ptr, ptr } %i.cd(ptr noundef nonnull %i.bz) #37
          to label %.noexc15.i unwind label %bb.d, !dbg !139401, !noalias !139242, !inline_history !138979 ; 2 uses

.noexc15.i:                                       ; preds = %bb.an
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0, !dbg !139401
  %i.cg = extractvalue { ptr, ptr } %i.ce, 1, !dbg !139401
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !139402
  store ptr %i.cf, ptr %i.ch, align 8, !dbg !139402, !alias.scope !139245, !noalias !139241
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !139402
  store ptr %i.cg, ptr %i.ci, align 16, !dbg !139402, !alias.scope !139245, !noalias !139241
  store i8 28, ptr %i.t, align 16, !dbg !139402, !alias.scope !139245, !noalias !139241
  br label %bb.bv, !dbg !139403

bb.ao:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139404, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139405

bb.ap:                                            ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !139406
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !139406, !alias.scope !139246, !noalias !139241, !noundef !2532
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !139407
  %i.cm = load ptr, ptr %i.cl, align 16, !dbg !139407, !alias.scope !139246, !noalias !139241, !nonnull !2532, !align !2690, !noundef !2532
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !139408
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !139408, !alias.scope !139246, !noalias !139241, !nonnull !2532, !align !3341, !noundef !2532 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !139408
  %i.cq = load i64, ptr %i.cp, align 16, !dbg !139408, !alias.scope !139246, !noalias !139241, !noundef !2532 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !139409, !noalias !139261
  invoke void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value20struct_to_avs_static(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, i64 noundef %i.ck, ptr noundef nonnull align 8 %i.cm, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.co, i64 noundef %i.cq)
          to label %.noexc16.i unwind label %bb.d, !dbg !139410, !noalias !139242

.noexc16.i:                                       ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !139411, !noalias !139261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !139412, !noalias !139261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !139412, !noalias !139261
  call void @llvm.experimental.noalias.scope.decl(metadata !139262), !dbg !139413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !139414, !noalias !139264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !139415, !noalias !139264
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, 115292150460684698) %i.cq, i1 noundef zeroext false, i64 noundef 16, i64 noundef 80)
          to label %.noexc.i.i unwind label %bb.bm, !dbg !139415, !noalias !139257

.noexc.i.i:                                       ; preds = %.noexc16.i
  %i.cr = load i64, ptr %i.g, align 8, !dbg !139415, !range !2687, !noalias !139264, !noundef !2532
  %i.cs = trunc nuw i64 %i.cr to i1, !dbg !139416
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !139417
  %i.cu = load i64, ptr %i.ct, align 8, !dbg !139417, !range !2688, !noalias !139264, !noundef !2532 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !139417 ; 2 uses
  br i1 %i.cs, label %bb.aq, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr.exit.i.i.i, !dbg !139416, !prof !2689

bb.aq:                                            ; preds = %.noexc.i.i
  %i.cw = load i64, ptr %i.cv, align 8, !dbg !139418, !noalias !139264
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cu, i64 %i.cw) #36
          to label %.noexc10.i.i unwind label %bb.bm, !dbg !139419, !noalias !139257

.noexc10.i.i:                                     ; preds = %bb.aq
  unreachable, !dbg !139419

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %.noexc.i.i
  %i.cx = load ptr, ptr %i.cv, align 8, !dbg !139420, !noalias !139264, !nonnull !2532, !noundef !2532 ; 2 uses
  %i.cy = icmp samesign ule i64 %i.cq, %i.cu, !dbg !139421
  call void @llvm.assume(i1 %i.cy), !dbg !139422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !139423, !noalias !139264
  store i64 %i.cu, ptr %i.i, align 8, !dbg !139424, !noalias !139264
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !139424
  store ptr %i.cx, ptr %i.cz, align 8, !dbg !139424, !noalias !139264
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !139424 ; 2 uses
  %i.db = getelementptr inbounds nuw [80 x i8], ptr %i.co, i64 %i.cq, !dbg !139425
  %i.dc = icmp eq i64 %i.cu, 0, !dbg !139426
  br i1 %i.dc, label %.loopexit.i.i, label %.lr.ph.i.i.i, !dbg !139426

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  br label %bb.ar, !dbg !139426

bb.ar:                                            ; preds = %bb.ay, %.lr.ph.i.i.i
  %.sroa.012.025.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %i.dg, %bb.ay ] ; 5 uses
  %.sroa.7.024.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.dh, %bb.ay ] ; 3 uses
  %.sroa.10.023.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ %i.de, %bb.ay ]
  %i.de = add i64 %.sroa.10.023.i.i.i, -1, !dbg !139427 ; 2 uses
  %i.df = icmp eq ptr %.sroa.012.025.i.i.i, %i.db, !dbg !139428
  br i1 %i.df, label %.loopexit.i.i, label %bb.as, !dbg !139429

.loopexit.i.i.i:                                  ; preds = %bb.at
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i, i64 80, !dbg !139430
  %i.dh = add nuw nsw i64 %.sroa.7.024.i.i.i, 1, !dbg !139431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !139432
  call void @llvm.experimental.noalias.scope.decl(metadata !139267), !dbg !139433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !139434, !noalias !139264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !139434, !noalias !139268
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i, i64 48, !dbg !139435 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i.i.i, i64 71, !dbg !139436
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !139436, !range !2801, !alias.scope !139269, !noalias !139257, !noundef !2532
  %i.dl = icmp eq i8 %i.dk, -40, !dbg !139437
  br i1 %i.dl, label %bb.at, label %bb.au, !dbg !139437

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di) #40
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !dbg !139438, !noalias !139270

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.di, i64 24, i1 false), !dbg !139439, !noalias !139271
  br label %.noexc.i.i.i, !dbg !139440

.noexc.i.i.i:                                     ; preds = %bb.au, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !139441, !noalias !139268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !139442, !noalias !139268
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.sroa.012.025.i.i.i)
          to label %bb.ay unwind label %bb.av, !dbg !139442, !noalias !139271

bb.av:                                            ; preds = %.noexc.i.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !139443
  %i.do = load i8, ptr %i.dn, align 1, !dbg !139443, !range !2801, !alias.scope !139272, !noalias !139268, !noundef !2532
  %i.dp = icmp eq i8 %i.do, -40, !dbg !139444
  br i1 %i.dp, label %bb.aw, label %bb.ba, !dbg !139444, !prof !2689

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ba unwind label %bb.ax, !dbg !139445, !noalias !139271

bb.ax:                                            ; preds = %bb.aw
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !139446, !noalias !139271
  unreachable, !dbg !139446

bb.ay:                                            ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !139446, !noalias !139273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.h, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !139446, !noalias !139273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !139447, !noalias !139268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !139447, !noalias !139268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !139448, !noalias !139264
  %i.dr = getelementptr inbounds nuw [80 x i8], ptr %i.cx, i64 %.sroa.7.024.i.i.i, !dbg !139449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.dr, ptr noundef nonnull align 16 dereferenceable(80) %i.h, i64 80, i1 false), !dbg !139450, !noalias !139270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !139451
  %i.ds = icmp eq i64 %i.de, 0, !dbg !139426
  br i1 %i.ds, label %.loopexit.i.i, label %bb.ar, !dbg !139426

bb.az:                                            ; preds = %bb.ba
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !139452, !noalias !139270
  unreachable, !dbg !139452

bb.ba:                                            ; preds = %bb.aw, %bb.av, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.dm, %bb.av ], [ %i.dm, %bb.aw ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ]
  store i64 %.sroa.7.024.i.i.i, ptr %i.da, align 8, !dbg !139453, !noalias !139264
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #38
          to label %.body.i.i unwind label %bb.az, !dbg !139454, !noalias !139270

bb.bb:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139455, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139456

bb.bc:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139457, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139458

bb.bd:                                            ; preds = %bb.h
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !139459
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !139459, !alias.scope !139246, !noalias !139241, !nonnull !2532, !noundef !2532
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !139459
  %i.dx = load i64, ptr %i.dw, align 16, !dbg !139459, !alias.scope !139246, !noalias !139241, !noundef !2532 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !139460, !noalias !139261
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.dx, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.d, !dbg !139460, !noalias !139242

.noexc17.i:                                       ; preds = %bb.bd
  %i.dy = load i64, ptr %i.k, align 8, !dbg !139460, !range !2687, !noalias !139261, !noundef !2532
  %i.dz = trunc nuw i64 %i.dy to i1, !dbg !139461
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !139462
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !139462, !range !2688, !noalias !139261, !noundef !2532 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !139462 ; 2 uses
  br i1 %i.dz, label %bb.br, label %bb.bs, !dbg !139461, !prof !2689

bb.be:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139463, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139464

bb.bf:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.u, i64 48, i1 false), !dbg !139465, !alias.scope !139247, !noalias !139241
  br label %bb.bv, !dbg !139466

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  invoke void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #35
          to label %.noexc18.i unwind label %bb.d, !dbg !139467, !noalias !139242

.noexc18.i:                                       ; preds = %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread.i.i
  unreachable, !dbg !139467

bb.bg:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread24.i.i
  %.sroa.0.032.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread24.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.4.031.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread24.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.030.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECskY9G75ZWc4U_11polars_expr.exit.thread24.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !139468
  store ptr %.sroa.0.032.i.i, ptr %i.ed, align 8, !dbg !139468, !alias.scope !139245, !noalias !139241
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !139468
  store i64 %.sroa.4.031.i.i, ptr %.sroa.417.0..sroa_idx.i.i, align 16, !dbg !139468, !alias.scope !139245, !noalias !139241
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !139468
  store i64 %.sroa.5.030.i.i, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !dbg !139468, !alias.scope !139245, !noalias !139241
  store i8 31, ptr %i.t, align 16, !dbg !139468, !alias.scope !139245, !noalias !139241
  br label %bb.bv, !dbg !139469

bb.bh:                                            ; preds = %bb.ad
  %i.ee = invoke fastcc noundef nonnull ptr @_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #37
          to label %.noexc19.i unwind label %bb.d, !dbg !139470, !noalias !139242

.noexc19.i:                                       ; preds = %bb.bh, %bb.ad
  %.sroa.02.0.i.i = phi ptr [ null, %bb.ad ], [ %i.ee, %bb.bh ], !dbg !139471
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !139472
  store i64 %i.bf, ptr %i.ef, align 8, !dbg !139472, !alias.scope !139245, !noalias !139241
  %i.eg = getelementptr inbounds nuw i8, ptr %i.t, i64 1, !dbg !139472
  store i8 %i.bh, ptr %i.eg, align 1, !dbg !139472, !alias.scope !139245, !noalias !139241
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !139472
  store ptr %.sroa.02.0.i.i, ptr %i.eh, align 16, !dbg !139472, !alias.scope !139245, !noalias !139241
  store i8 18, ptr %i.t, align 16, !dbg !139472, !alias.scope !139245, !noalias !139241
  br label %bb.bv, !dbg !139473

bb.bi:                                            ; preds = %bb.ah
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 4, !dbg !139474
  store i32 %i.bl, ptr %i.ei, align 4, !dbg !139474, !alias.scope !139245, !noalias !139241
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !139474
  store ptr %i.bo, ptr %i.ej, align 8, !dbg !139474, !alias.scope !139245, !noalias !139241
  store i8 22, ptr %i.t, align 16, !dbg !139474, !alias.scope !139245, !noalias !139241
  br label %bb.bv, !dbg !139475

bb.bj:                                            ; preds = %bb.ah
  call void @llvm.trap(), !dbg !139476
  unreachable, !dbg !139476

bb.bk:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.t, i64 4, !dbg !139477
  store i32 %i.bs, ptr %i.ek, align 4, !dbg !139477, !alias.scope !139245, !noalias !139241
  %i.el = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !139477
  store ptr %i.bv, ptr %i.el, align 8, !dbg !139477, !alias.scope !139245, !noalias !139241
  store i8 24, ptr %i.t, align 16, !dbg !139477, !alias.scope !139245, !noalias !139241
  br label %bb.bv, !dbg !139478

bb.bl:                                            ; preds = %bb.aj
  call void @llvm.trap(), !dbg !139479
  unreachable, !dbg !139479

bb.bm:                                            ; preds = %bb.aq, %.noexc16.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !139480

.body.i.i:                                        ; preds = %bb.bm, %bb.ba
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.em, %bb.bm ], [ %eh.lpad-body.i.i.i, %bb.ba ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.l) #38
          to label %.thread.i unwind label %bb.bq, !dbg !139480, !noalias !139257

.loopexit.i.i:                                    ; preds = %bb.ay, %bb.ar, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  store i64 %i.cq, ptr %i.da, align 8, !dbg !139481, !noalias !139264
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !139411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !139482, !noalias !139261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !139454, !noalias !139264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !139411, !noalias !139261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !139480, !noalias !139261
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !139483, !noalias !139277
  %i.eo = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 1401) 48, i64 noundef range(i64 8, 17) 8) #41, !dbg !139484, !noalias !139277 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null, !dbg !139485
  br i1 %i.ep, label %bb.bn, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxTINtNtB4_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBG_NtNtBZ_5field5FieldEEE3newCskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !139486, !prof !2689

bb.bn:                                            ; preds = %.loopexit.i.i
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #36
          to label %.noexc11.i.i unwind label %bb.bo, !dbg !139487, !noalias !139257

.noexc11.i.i:                                     ; preds = %bb.bn
  unreachable, !dbg !139487

bb.bo:                                            ; preds = %bb.bn
  %i.eq = landingpad { ptr, i32 }
end_hunk_1
