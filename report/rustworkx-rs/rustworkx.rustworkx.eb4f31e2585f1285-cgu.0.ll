Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCINvBL_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4l_5types3any5PyAnyEB4g_NtB3g_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4l_3err5PyErrE0E0EB5K_:bb.a
_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i9.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit5.i
  %i.je = fcmp ult double %i.io, %i.ir
  br i1 %i.je, label %bb.r, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0Es0_0B5S_.exit

bb.r:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i9.i, %.split.i7.i
  %i.jf = add nuw nsw i64 %.sroa.0.10, 1
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0Es0_0B5S_.exit

bb.s:                                             ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit14.i
  %i.jg = lshr i64 %.sroa.20.0239, 1
  %i.jh = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %.sroa.20.0239
  call void @llvm.experimental.noalias.scope.decl(metadata !28509)
  call void @llvm.experimental.noalias.scope.decl(metadata !28510)
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i, %bb.s
  %.sroa.0.016.i.i = phi i64 [ %i.jv, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i ], [ 0, %bb.s ] ; 3 uses
  %i.ji = xor i64 %.sroa.0.016.i.i, -1
  %i.jj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %.sroa.0.016.i.i ; 4 uses
  %i.jk = getelementptr [48 x i8], ptr %i.jh, i64 %i.ji ; 4 uses
  %i.jl = load <2 x i64>, ptr %i.jj, align 1, !alias.scope !28511, !noalias !28512
  %i.jm = load <2 x i64>, ptr %i.jk, align 1, !alias.scope !28513, !noalias !28514
  store <2 x i64> %i.jm, ptr %i.jj, align 1, !alias.scope !28511, !noalias !28512
  store <2 x i64> %i.jl, ptr %i.jk, align 1, !alias.scope !28513, !noalias !28514
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 2 uses
  %i.jp = load <2 x i64>, ptr %i.jn, align 1, !alias.scope !28515, !noalias !28512
  %i.jq = load <2 x i64>, ptr %i.jo, align 1, !alias.scope !28516, !noalias !28514
  store <2 x i64> %i.jq, ptr %i.jn, align 1, !alias.scope !28515, !noalias !28512
  store <2 x i64> %i.jp, ptr %i.jo, align 1, !alias.scope !28516, !noalias !28514
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 32 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 32 ; 2 uses
  %i.jt = load <2 x i64>, ptr %i.jr, align 1, !alias.scope !28517, !noalias !28512
  %i.ju = load <2 x i64>, ptr %i.js, align 1, !alias.scope !28518, !noalias !28514
  store <2 x i64> %i.ju, ptr %i.jr, align 1, !alias.scope !28517, !noalias !28512
  store <2 x i64> %i.jt, ptr %i.js, align 1, !alias.scope !28518, !noalias !28514
  %i.jv = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jv, %i.jg
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

.split392:                                        ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i13.i, %.split.i11.i
  %i.jw = icmp eq i64 %.sroa.0.2, 0
  %i.jx = and i1 %or.cond, %i.jw
  br i1 %i.jx, label %bb.t, label %.split392.thread, !prof !137

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i
  %i.jy = xor i64 %i.aw, -1
  %i.jz = add i64 %.sroa.20.0239, %i.jy           ; 2 uses
  br i1 %or.cond, label %bb.t, label %.split392.thread, !prof !79

.split392.thread:                                 ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit14.i, %.split392, %bb.t, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit
  %.sroa.0.0.i393 = phi i64 [ %.sroa.0.0.i394, %bb.t ], [ %i.jz, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit ], [ %i.bs, %.split392 ], [ %i.aw, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit14.i ] ; 6 uses
  %i.ka = phi i32 [ %.pre, %bb.t ], [ %i.u, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit ], [ %i.u, %.split392 ], [ %i.u, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit14.i ] ; 3 uses
  br i1 %.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %.split392, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit
  %.sroa.0.0.i394 = phi i64 [ %i.bs, %.split392 ], [ %i.jz, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4r_5types3any5PyAnyEB4m_NtB3m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4r_3err5PyErrE0E0EB5Q_.exit ]
  %i.kb = call fastcc noundef zeroext i1 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort22partial_insertion_sortNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCINvB11_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtB3x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4C_3err5PyErrE0E0EB61_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0240, i64 noundef %.sroa.20.0239)
  %.pre = load i32, ptr %i.k, align 4
  br i1 %i.kb, label %.loopexit, label %.split392.thread

bb.u:                                             ; preds = %.split392.thread
  %i.kc = icmp ult i64 %.sroa.0.0.i393, %.sroa.20.0239
  br i1 %i.kc, label %bb.ak, label %bb.al

bb.v:                                             ; preds = %.split, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit, %.split392.thread
  %.sroa.0.0240.lcssa270 = phi ptr [ %.sroa.0.0240, %.split ], [ %.sroa.0.0240, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit ], [ %.sroa.0.0.ph248, %.split392.thread ] ; 16 uses
  %.sroa.20.0239.lcssa261 = phi i64 [ %.sroa.20.0239, %.split ], [ %.sroa.20.0239, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit ], [ %.sroa.20.0.ph247, %.split392.thread ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28519)
  %i.kd = icmp ult i64 %.sroa.0.0.i393, %.sroa.20.0239.lcssa261
  br i1 %i.kd, label %.lr.ph.preheader.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i393, i64 noundef range(i64 21, 192153584101141163) %.sroa.20.0239.lcssa261, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @595) #60, !noalias !28519
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.ke = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240.lcssa270, i64 %.sroa.0.0.i393 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0240.lcssa270, i64 48, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0240.lcssa270, ptr noundef nonnull align 8 dereferenceable(48) %i.ke, i64 48, i1 false), !alias.scope !28520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ke, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.0240.lcssa270, i64 48 ; 3 uses
  %i.kg = add nsw i64 %.sroa.20.0239.lcssa261, -1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0240.lcssa270, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0240.lcssa270, i64 24 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !28519 ; 9 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0240.lcssa270, i64 32 ; 2 uses
  %.sroa.524.0.copyload.i = load i64, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !28519 ; 5 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0240.lcssa270, i64 40 ; 2 uses
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !28519 ; 9 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %.sroa.0.030.i = phi i64 [ %i.ks, %bb.x ], [ 0, %.lr.ph.preheader.i ] ; 8 uses
  %i.kh = getelementptr inbounds nuw [48 x i8], ptr %i.kf, i64 %.sroa.0.030.i ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 40
  %i.kj = load double, ptr %i.ki, align 8, !alias.scope !28521, !noalias !28522, !noundef !67 ; 2 uses
  %.not1.i.i = fcmp une double %i.kj, %.sroa.6.0.copyload.i
  br i1 %.not1.i.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !28521, !noalias !28522, !noundef !67
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kn = load i64, ptr %i.km, align 8, !alias.scope !28521, !noalias !28522, !noundef !67 ; 2 uses
  %i.ko = icmp eq i64 %i.kn, %.sroa.4.0.copyload.i
  %i.kp = icmp ult i64 %i.kn, %.sroa.4.0.copyload.i
  %i.kq = icmp ult i64 %i.kl, %.sroa.524.0.copyload.i
  %spec.select.i.i = select i1 %i.ko, i1 %i.kq, i1 %i.kp
  br i1 %spec.select.i.i, label %bb.x, label %.lr.ph35.i.preheader

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i: ; preds = %.lr.ph.i
  %i.kr = fcmp ult double %i.kj, %.sroa.6.0.copyload.i
  br i1 %i.kr, label %bb.x, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %.split.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i
  br label %.lr.ph35.i

bb.x:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i, %.split.i
  %i.ks = add nuw nsw i64 %.sroa.0.030.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ks, %i.kg
  br i1 %exitcond.not.i, label %.split25._crit_edge.thread.i, label %.lr.ph.i

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.preheader, %.backedge.i
  %.sroa.07.033.i = phi i64 [ %i.kt, %.backedge.i ], [ %i.kg, %.lr.ph35.i.preheader ] ; 5 uses
  %i.kt = add nsw i64 %.sroa.07.033.i, -1         ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %i.kg
  call void @llvm.assume(i1 %i.ku)
  %i.kv = getelementptr [48 x i8], ptr %.sroa.0.0240.lcssa270, i64 %.sroa.07.033.i ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  %i.kx = load double, ptr %i.kw, align 8, !alias.scope !28523, !noalias !28524, !noundef !67 ; 2 uses
  %.not1.i21.i = fcmp une double %i.kx, %.sroa.6.0.copyload.i
  br i1 %.not1.i21.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit24.i, label %.split25.i

.split25.i:                                       ; preds = %.lr.ph35.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kz = load i64, ptr %i.ky, align 8, !alias.scope !28523, !noalias !28524, !noundef !67
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.lb = load i64, ptr %i.la, align 8, !alias.scope !28523, !noalias !28524, !noundef !67 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, %.sroa.4.0.copyload.i
  %i.ld = icmp ult i64 %i.lb, %.sroa.4.0.copyload.i
  %i.le = icmp ult i64 %i.kz, %.sroa.524.0.copyload.i
  %spec.select.i22.i = select i1 %i.lc, i1 %i.le, i1 %i.ld
  br i1 %spec.select.i22.i, label %.split25._crit_edge.i, label %.backedge.i

.split25._crit_edge.i:                            ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit24.i, %.split25.i
  %i.lf = icmp ult i64 %.sroa.07.033.i, %.sroa.0.030.i
  br i1 %i.lf, label %bb.ai, label %.split25._crit_edge.thread.i, !prof !138

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit24.i: ; preds = %.lr.ph35.i
  %i.lg = fcmp ult double %i.kx, %.sroa.6.0.copyload.i
  br i1 %i.lg, label %.split25._crit_edge.i, label %.backedge.i

.backedge.i:                                      ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit24.i, %.split25.i
  %i.lh = icmp ult i64 %.sroa.0.030.i, %i.kt
  br i1 %i.lh, label %.lr.ph35.i, label %.split25._crit_edge.thread.i

.split25._crit_edge.thread.i:                     ; preds = %bb.x, %.backedge.i, %.split25._crit_edge.i
  %.sroa.07.0.lcssa66.i = phi i64 [ %.sroa.07.033.i, %.split25._crit_edge.i ], [ %.sroa.0.030.i, %.backedge.i ], [ %i.kg, %bb.x ] ; 2 uses
  %.sroa.0.0.lcssa.ph6265.i = phi i64 [ %.sroa.0.030.i, %.split25._crit_edge.i ], [ %.sroa.0.030.i, %.backedge.i ], [ %i.kg, %bb.x ] ; 3 uses
  %i.li = getelementptr inbounds nuw [48 x i8], ptr %i.kf, i64 %.sroa.0.0.lcssa.ph6265.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28525)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !28526
  %i.lj = getelementptr inbounds nuw [48 x i8], ptr %i.kf, i64 %.sroa.07.0.lcssa66.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28526
  br label %bb.y

bb.y:                                             ; preds = %bb.ae, %.split25._crit_edge.thread.i
  %.sroa.084.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.084.1.i.i, %bb.ae ] ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.068.1.i.i, %bb.ae ] ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.046.2.i.i, %bb.ae ] ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %.split25._crit_edge.thread.i ], [ %.sroa.044.1.i.i, %bb.ae ] ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.lj, %.split25._crit_edge.thread.i ], [ %.sroa.032.1.i.i, %bb.ae ] ; 7 uses
  %.sroa.018.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.018.2.i.i, %bb.ae ] ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %.split25._crit_edge.thread.i ], [ %.sroa.015.1.i.i, %bb.ae ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.li, %.split25._crit_edge.thread.i ], [ %spec.select.i25.i, %bb.ae ] ; 6 uses
  %i.lk = ptrtoint ptr %.sroa.032.0.i.i to i64
  %i.ll = ptrtoint ptr %.sroa.01.0.i.i to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 2 uses
  %i.ln = icmp ult i64 %i.lm, 12336               ; 2 uses
  br i1 %i.ln, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.y
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.y ], [ %.sroa.060.0.mux.i.i, %bb.aa ], [ %i.lu, %bb.ab ] ; 4 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.y ], [ %.sroa.015.0.mux.i.i, %bb.aa ], [ %i.lt, %bb.ab ] ; 4 uses
  %i.lo = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i
  br i1 %i.lo, label %.preheader6.i.i, label %.loopexit7.i.i

.preheader6.i.i:                                  ; preds = %bb.z
  %.not26.i.i = icmp eq i64 %.sroa.015.1.i.i, 0
  br i1 %.not26.i.i, label %.loopexit7.i.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %bb.y
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.lm to i16
  %i.lp = udiv i16 %.lhs.trunc.i.i, 48
  %.zext.i.i = zext nneg i16 %i.lp to i64         ; 4 uses
  %i.lq = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i ; 3 uses
  %i.lr = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i ; 2 uses
  %or.cond.i.i = select i1 %i.lq, i1 true, i1 %i.lr
  %i.ls = add nsw i64 %.zext.i.i, -128            ; 2 uses
  %.sroa.060.0.i.i = select i1 %i.lr, i64 %i.ls, i64 %.zext.i.i
  %.sroa.060.0.mux.i.i = select i1 %i.lq, i64 %i.ls, i64 %.sroa.044.0.i.i
  %.sroa.015.0.mux.i.i = select i1 %i.lq, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i
  br i1 %or.cond.i.i, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lt = lshr i64 %.zext.i.i, 1                  ; 2 uses
  %i.lu = sub nsw i64 %.zext.i.i, %i.lt
  br label %bb.z

.loopexit7.i.i:                                   ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65, %.preheader6.i.i, %bb.z
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0.i.i, %bb.z ], [ %i.i, %.preheader6.i.i ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65 ] ; 7 uses
  %.sroa.018.1.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.z ], [ %i.i, %.preheader6.i.i ], [ %i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65 ] ; 6 uses
  %i.lv = icmp eq ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  br i1 %i.lv, label %.preheader5.i.i, label %.loopexit.i.i

.preheader5.i.i:                                  ; preds = %.loopexit7.i.i
  %.not27.i.i = icmp eq i64 %.sroa.044.1.i.i, 0
  br i1 %.not27.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i

.lr.ph.i.i:                                       ; preds = %.preheader6.i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65
  %.sroa.065.010.i.i = phi ptr [ %i.mj, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65 ], [ %.sroa.01.0.i.i, %.preheader6.i.i ] ; 4 uses
  %.sroa.068.29.i.i = phi ptr [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65 ], [ %i.i, %.preheader6.i.i ] ; 2 uses
  %.sroa.0105.08.i.i = phi i64 [ %i.lw, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65 ], [ 0, %.preheader6.i.i ] ; 2 uses
  %i.lw = add nuw i64 %.sroa.0105.08.i.i, 1       ; 2 uses
  %i.lx = trunc i64 %.sroa.0105.08.i.i to i8
  store i8 %i.lx, ptr %.sroa.068.29.i.i, align 1, !noalias !28526
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 40
  %i.lz = load double, ptr %i.ly, align 8, !alias.scope !28527, !noalias !28528, !noundef !67 ; 2 uses
  %i.ma = fcmp ult double %i.lz, %.sroa.6.0.copyload.i
  %.not1.i.i.i63 = fcmp une double %i.lz, %.sroa.6.0.copyload.i
  br i1 %.not1.i.i.i63, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 32
  %i.mc = load i64, ptr %i.mb, align 8, !alias.scope !28527, !noalias !28528, !noundef !67
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 24
  %i.me = load i64, ptr %i.md, align 8, !alias.scope !28527, !noalias !28528, !noundef !67 ; 2 uses
  %i.mf = icmp eq i64 %i.me, %.sroa.4.0.copyload.i
  %i.mg = icmp ult i64 %i.me, %.sroa.4.0.copyload.i
  %i.mh = icmp ult i64 %i.mc, %.sroa.524.0.copyload.i
  %spec.select.i.i.i64 = select i1 %i.mf, i1 %i.mh, i1 %i.mg
  br label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i65: ; preds = %bb.ac, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.ma, %.lr.ph.i.i ], [ %spec.select.i.i.i64, %bb.ac ]
  %i.mi = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.mi to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 48
  %exitcond.not.i.i66 = icmp eq i64 %i.lw, %.sroa.015.1.i.i
  br i1 %exitcond.not.i.i66, label %.loopexit7.i.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i, %.preheader5.i.i, %.loopexit7.i.i
  %.sroa.084.1.i.i = phi ptr [ %.sroa.084.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i ] ; 7 uses
  %.sroa.046.1.i.i = phi ptr [ %.sroa.046.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %i.h, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i ] ; 5 uses
  %i.mk = ptrtoint ptr %.sroa.068.1.i.i to i64
  %i.ml = ptrtoint ptr %.sroa.018.1.i.i to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = ptrtoint ptr %.sroa.084.1.i.i to i64
  %i.mo = ptrtoint ptr %.sroa.046.1.i.i to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mm, i64 %i.mp) ; 3 uses
  %.not.i.i = icmp eq i64 %i.mq, 0
  br i1 %.not.i.i, label %bb.ae, label %bb.af

.lr.ph14.i.i:                                     ; preds = %.preheader5.i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i
  %.sroa.079.013.i.i = phi ptr [ %i.ms, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i ], [ %.sroa.032.0.i.i, %.preheader5.i.i ] ; 4 uses
  %.sroa.084.212.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i ], [ %i.h, %.preheader5.i.i ] ; 2 uses
  %.sroa.0107.011.i.i = phi i64 [ %i.mr, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i ], [ 0, %.preheader5.i.i ] ; 2 uses
  %i.mr = add nuw i64 %.sroa.0107.011.i.i, 1      ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -48
  %i.mt = trunc i64 %.sroa.0107.011.i.i to i8
  store i8 %i.mt, ptr %.sroa.084.212.i.i, align 1, !noalias !28526
  %i.mu = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -8
  %i.mv = load double, ptr %i.mu, align 8, !alias.scope !28529, !noalias !28530, !noundef !67 ; 2 uses
  %i.mw = fcmp ult double %i.mv, %.sroa.6.0.copyload.i
  %.not1.i115.i.i = fcmp une double %i.mv, %.sroa.6.0.copyload.i
  br i1 %.not1.i115.i.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph14.i.i
  %i.mx = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -16
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !28529, !noalias !28530, !noundef !67
  %i.mz = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -24
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !28529, !noalias !28530, !noundef !67 ; 2 uses
  %i.nb = icmp eq i64 %i.na, %.sroa.4.0.copyload.i
  %i.nc = icmp ult i64 %i.na, %.sroa.4.0.copyload.i
  %i.nd = icmp ult i64 %i.my, %.sroa.524.0.copyload.i
  %spec.select.i116.i.i = select i1 %i.nb, i1 %i.nd, i1 %i.nc
  br label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit118.i.i: ; preds = %bb.ad, %.lr.ph14.i.i
  %.sroa.0.0.i.i.i117.i.i = phi i1 [ %i.mw, %.lr.ph14.i.i ], [ %spec.select.i116.i.i, %bb.ad ]
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.sroa.0.0.i.i.i117.i.i to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %exitcond32.not.i.i = icmp eq i64 %i.mr, %.sroa.044.1.i.i
  br i1 %exitcond32.not.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %.sroa.046.2.i.i = phi ptr [ %i.nt, %._crit_edge.i.i ], [ %.sroa.046.1.i.i, %.loopexit.i.i ] ; 5 uses
  %.sroa.018.2.i.i = phi ptr [ %i.ns, %._crit_edge.i.i ], [ %.sroa.018.1.i.i, %.loopexit.i.i ] ; 5 uses
  %i.ne = icmp eq ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  %spec.select.idx.i.i = select i1 %i.ne, i64 %.sroa.015.1.i.i, i64 0
  %spec.select.i25.i = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %spec.select.idx.i.i ; 9 uses
  %i.nf = icmp eq ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  %i.ng = sub nsw i64 0, %.sroa.044.1.i.i
  %.sroa.032.1.idx.i.i = select i1 %i.nf, i64 %i.ng, i64 0
  %.sroa.032.1.i.i = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %.sroa.032.1.idx.i.i ; 6 uses
  br i1 %i.ln, label %bb.ag, label %bb.y

bb.af:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.nh = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !28526, !noundef !67
  %i.ni = zext i8 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.ni
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.nj, i64 48, i1 false), !noalias !28531
  %i.nk = load i8, ptr %.sroa.046.1.i.i, align 1, !noalias !28526, !noundef !67 ; 2 uses
  %i.nl = zext i8 %i.nk to i64
  %i.nm = xor i64 %i.nl, -1                       ; 2 uses
  %i.nn = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.nm
  %i.no = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !28526, !noundef !67
  %i.np = zext i8 %i.no to i64
  %i.nq = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.np
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nq, ptr noundef nonnull align 8 dereferenceable(48) %i.nn, i64 48, i1 false), !alias.scope !28532, !noalias !28531
  %.not28.i.i = icmp eq i64 %i.mq, 1
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph19.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph19.i.i, %bb.af
  %.pre-phi47.i = phi i64 [ %i.nm, %bb.af ], [ %i.og, %.lr.ph19.i.i ]
  %.sroa.046.3.lcssa.i.i = phi ptr [ %.sroa.046.1.i.i, %bb.af ], [ %i.od, %.lr.ph19.i.i ]
  %.sroa.018.3.lcssa.i.i = phi ptr [ %.sroa.018.1.i.i, %bb.af ], [ %i.nw, %.lr.ph19.i.i ]
  %i.nr = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %.pre-phi47.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nr, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !28531
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.018.3.lcssa.i.i, i64 1
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.046.3.lcssa.i.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

.lr.ph19.i.i:                                     ; preds = %bb.af, %.lr.ph19.i.i
  %i.nu = phi i8 [ %i.oe, %.lr.ph19.i.i ], [ %i.nk, %bb.af ]
  %.sroa.018.318.i.i = phi ptr [ %i.nw, %.lr.ph19.i.i ], [ %.sroa.018.1.i.i, %bb.af ]
  %.sroa.046.317.i.i = phi ptr [ %i.od, %.lr.ph19.i.i ], [ %.sroa.046.1.i.i, %bb.af ]
  %.sroa.0109.016.i.i = phi i64 [ %i.nv, %.lr.ph19.i.i ], [ 1, %bb.af ]
  %i.nv = add nuw i64 %.sroa.0109.016.i.i, 1      ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.018.318.i.i, i64 1 ; 3 uses
  %i.nx = load i8, ptr %i.nw, align 1, !noalias !28526, !noundef !67
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.ny ; 2 uses
  %i.oa = zext i8 %i.nu to i64
  %i.ob = xor i64 %i.oa, -1
  %i.oc = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.ob
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oc, ptr noundef nonnull align 8 dereferenceable(48) %i.nz, i64 48, i1 false), !alias.scope !28532, !noalias !28531
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.046.317.i.i, i64 1 ; 3 uses
  %i.oe = load i8, ptr %i.od, align 1, !noalias !28526, !noundef !67 ; 2 uses
  %i.of = zext i8 %i.oe to i64
  %i.og = xor i64 %i.of, -1                       ; 2 uses
  %i.oh = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.og
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nz, ptr noundef nonnull align 8 dereferenceable(48) %i.oh, i64 48, i1 false), !alias.scope !28532, !noalias !28531
  %exitcond33.not.i.i = icmp eq i64 %i.nv, %i.mq
  br i1 %exitcond33.not.i.i, label %._crit_edge.i.i, label %.lr.ph19.i.i

bb.ag:                                            ; preds = %bb.ae
  %.sroa.084.1.i.i.lcssa608609 = ptrtoaddr ptr %.sroa.084.1.i.i to i64 ; 2 uses
  %.sroa.046.2.i.i.lcssa610611 = ptrtoaddr ptr %.sroa.046.2.i.i to i64 ; 2 uses
  %i.oi = icmp ult ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  br i1 %i.oi, label %.preheader.i.i.preheader, label %bb.ah

.preheader.i.i.preheader:                         ; preds = %bb.ag
  %.sroa.018.2.i.i.lcssa614615 = ptrtoaddr ptr %.sroa.018.2.i.i to i64 ; 2 uses
  %.sroa.068.1.i.i.lcssa612613 = ptrtoaddr ptr %.sroa.068.1.i.i to i64 ; 2 uses
  %i.oj = sub i64 %.sroa.068.1.i.i.lcssa612613, %.sroa.018.2.i.i.lcssa614615
  %xtraiter616 = and i64 %i.oj, 1
  %lcmp.mod617.not = icmp eq i64 %xtraiter616, 0
  br i1 %lcmp.mod617.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader
  %i.ok = getelementptr inbounds i8, ptr %.sroa.068.1.i.i, i64 -1 ; 2 uses
  %i.ol = load i8, ptr %i.ok, align 1, !noalias !28526, !noundef !67
  %i.om = zext i8 %i.ol to i64
  %i.on = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i25.i, i64 %i.om ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %.sroa.032.1.i.i, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.on, i64 48, i1 false), !noalias !28531
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.on, ptr noundef nonnull align 8 dereferenceable(48) %i.oo, i64 48, i1 false), !alias.scope !28532, !noalias !28531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oo, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !28531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.sroa.032.225.i.i.unr = phi ptr [ %.sroa.032.1.i.i, %.preheader.i.i.preheader ], [ %i.oo, %.preheader.i.i.prol ]
  %.sroa.068.324.i.i.unr = phi ptr [ %.sroa.068.1.i.i, %.preheader.i.i.preheader ], [ %i.ok, %.preheader.i.i.prol ]
  %.lcssa577.unr = phi ptr [ poison, %.preheader.i.i.preheader ], [ %i.oo, %.preheader.i.i.prol ]
  %i.op = add i64 %.sroa.068.1.i.i.lcssa612613, -1
  %i.oq = icmp eq i64 %i.op, %.sroa.018.2.i.i.lcssa614615
  br i1 %i.oq, label %.loopexit.i, label %.preheader.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.or = icmp ult ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  br i1 %i.or, label %.preheader4.i.i.preheader, label %.loopexit.i

.preheader4.i.i.preheader:                        ; preds = %bb.ah
end_hunk_0
begin_hunk_1_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCINvBL_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4q_5types3any5PyAnyEB4l_NtB3l_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4q_3err5PyErrEs4_0E0EB5P_:bb.a
_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i84: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit4.i
  %i.jq = icmp ult i64 %i.iz, %i.jc
  br i1 %i.jq, label %bb.r, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0Es0_0B5X_.exit

bb.r:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i84, %.split.i6.i86
  %i.jr = add nuw nsw i64 %.sroa.0.10, 1
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0Es0_0B5X_.exit

bb.s:                                             ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit12.i
  %i.js = lshr i64 %.sroa.20.0237, 1
  %i.jt = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %.sroa.20.0237
  call void @llvm.experimental.noalias.scope.decl(metadata !28850)
  call void @llvm.experimental.noalias.scope.decl(metadata !28851)
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i, %bb.s
  %.sroa.0.016.i.i = phi i64 [ %i.kh, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i ], [ 0, %bb.s ] ; 3 uses
  %i.ju = xor i64 %.sroa.0.016.i.i, -1
  %i.jv = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %.sroa.0.016.i.i ; 4 uses
  %i.jw = getelementptr [48 x i8], ptr %i.jt, i64 %i.ju ; 4 uses
  %i.jx = load <2 x i64>, ptr %i.jv, align 1, !alias.scope !28852, !noalias !28853
  %i.jy = load <2 x i64>, ptr %i.jw, align 1, !alias.scope !28854, !noalias !28855
  store <2 x i64> %i.jy, ptr %i.jv, align 1, !alias.scope !28852, !noalias !28853
  store <2 x i64> %i.jx, ptr %i.jw, align 1, !alias.scope !28854, !noalias !28855
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %i.kb = load <2 x i64>, ptr %i.jz, align 1, !alias.scope !28856, !noalias !28853
  %i.kc = load <2 x i64>, ptr %i.ka, align 1, !alias.scope !28857, !noalias !28855
  store <2 x i64> %i.kc, ptr %i.jz, align 1, !alias.scope !28856, !noalias !28853
  store <2 x i64> %i.kb, ptr %i.ka, align 1, !alias.scope !28857, !noalias !28855
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 32 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jw, i64 32 ; 2 uses
  %i.kf = load <2 x i64>, ptr %i.kd, align 1, !alias.scope !28858, !noalias !28853
  %i.kg = load <2 x i64>, ptr %i.ke, align 1, !alias.scope !28859, !noalias !28855
  store <2 x i64> %i.kg, ptr %i.kd, align 1, !alias.scope !28858, !noalias !28853
  store <2 x i64> %i.kf, ptr %i.ke, align 1, !alias.scope !28859, !noalias !28855
  %i.kh = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.kh, %i.js
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

.split391:                                        ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i9.i, %.split.i10.i
  %i.ki = icmp eq i64 %.sroa.0.2, 0
  %i.kj = and i1 %or.cond, %i.ki
  br i1 %i.kj, label %bb.t, label %.split391.thread, !prof !137

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i
  %i.kk = xor i64 %i.ax, -1
  %i.kl = add i64 %.sroa.20.0237, %i.kk           ; 2 uses
  br i1 %or.cond, label %bb.t, label %.split391.thread, !prof !79

.split391.thread:                                 ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit12.i, %.split391, %bb.t, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit
  %.sroa.0.0.i392 = phi i64 [ %.sroa.0.0.i393, %bb.t ], [ %i.kl, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit ], [ %i.bu, %.split391 ], [ %i.ax, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit12.i ] ; 6 uses
  %i.km = phi i32 [ %.pre, %bb.t ], [ %i.u, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit ], [ %i.u, %.split391 ], [ %i.u, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit12.i ] ; 3 uses
  br i1 %.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %.split391, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit
  %.sroa.0.0.i393 = phi i64 [ %i.bu, %.split391 ], [ %i.kl, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCINvBR_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4w_5types3any5PyAnyEB4r_NtB3r_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4w_3err5PyErrEs4_0E0EB5V_.exit ]
  %i.kn = call fastcc noundef zeroext i1 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort22partial_insertion_sortNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCINvB11_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB3C_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4H_3err5PyErrEs4_0E0EB66_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0238, i64 noundef %.sroa.20.0237)
  %.pre = load i32, ptr %i.k, align 4
  br i1 %i.kn, label %.loopexit, label %.split391.thread

bb.u:                                             ; preds = %.split391.thread
  %i.ko = icmp ult i64 %.sroa.0.0.i392, %.sroa.20.0237
  br i1 %i.ko, label %bb.ak, label %bb.al

bb.v:                                             ; preds = %.split, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit, %.split391.thread
  %.sroa.0.0238.lcssa268 = phi ptr [ %.sroa.0.0238, %.split ], [ %.sroa.0.0238, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit ], [ %.sroa.0.0.ph246, %.split391.thread ] ; 16 uses
  %.sroa.20.0237.lcssa259 = phi i64 [ %.sroa.20.0237, %.split ], [ %.sroa.20.0237, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit ], [ %.sroa.20.0.ph245, %.split391.thread ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28860)
  %i.kp = icmp ult i64 %.sroa.0.0.i392, %.sroa.20.0237.lcssa259
  br i1 %i.kp, label %.lr.ph.preheader.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i392, i64 noundef range(i64 21, 192153584101141163) %.sroa.20.0237.lcssa259, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @595) #60, !noalias !28860
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.kq = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238.lcssa268, i64 %.sroa.0.0.i392 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0238.lcssa268, i64 48, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0238.lcssa268, ptr noundef nonnull align 8 dereferenceable(48) %i.kq, i64 48, i1 false), !alias.scope !28861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kq, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.0238.lcssa268, i64 48 ; 3 uses
  %i.ks = add nsw i64 %.sroa.20.0237.lcssa259, -1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0238.lcssa268, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0238.lcssa268, i64 24 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !28860 ; 9 uses
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0238.lcssa268, i64 32 ; 2 uses
  %.sroa.524.0.copyload.i = load i64, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !28860 ; 9 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0238.lcssa268, i64 40 ; 2 uses
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !28860 ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %.sroa.0.030.i = phi i64 [ %i.lf, %bb.x ], [ 0, %.lr.ph.preheader.i ] ; 8 uses
  %i.kt = getelementptr inbounds nuw [48 x i8], ptr %i.kr, i64 %.sroa.0.030.i ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load i64, ptr %i.ku, align 8, !alias.scope !28862, !noalias !28863, !noundef !67 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, %.sroa.4.0.copyload.i
  br i1 %i.kw, label %.split.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  %i.ky = load double, ptr %i.kx, align 8, !alias.scope !28862, !noalias !28863, !noundef !67
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.la = load i64, ptr %i.kz, align 8, !alias.scope !28862, !noalias !28863, !noundef !67 ; 2 uses
  %i.lb = icmp eq i64 %i.la, %.sroa.524.0.copyload.i
  %i.lc = icmp ult i64 %i.la, %.sroa.524.0.copyload.i
  %i.ld = fcmp ult double %i.ky, %.sroa.6.0.copyload.i
  %spec.select.i.i = select i1 %i.lb, i1 %i.ld, i1 %i.lc
  br i1 %spec.select.i.i, label %bb.x, label %.lr.ph35.i.preheader

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i: ; preds = %.lr.ph.i
  %i.le = icmp ult i64 %i.kv, %.sroa.4.0.copyload.i
  br i1 %i.le, label %bb.x, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %.split.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i
  br label %.lr.ph35.i

bb.x:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i, %.split.i
  %i.lf = add nuw nsw i64 %.sroa.0.030.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.lf, %i.ks
  br i1 %exitcond.not.i, label %.split25._crit_edge.thread.i, label %.lr.ph.i

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.preheader, %.backedge.i
  %.sroa.07.033.i = phi i64 [ %i.lg, %.backedge.i ], [ %i.ks, %.lr.ph35.i.preheader ] ; 5 uses
  %i.lg = add nsw i64 %.sroa.07.033.i, -1         ; 3 uses
  %i.lh = icmp ult i64 %i.lg, %i.ks
  call void @llvm.assume(i1 %i.lh)
  %i.li = getelementptr [48 x i8], ptr %.sroa.0.0238.lcssa268, i64 %.sroa.07.033.i ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !28864, !noalias !28865, !noundef !67 ; 2 uses
  %i.ll = icmp eq i64 %i.lk, %.sroa.4.0.copyload.i
  br i1 %i.ll, label %.split25.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit23.i

.split25.i:                                       ; preds = %.lr.ph35.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  %i.ln = load double, ptr %i.lm, align 8, !alias.scope !28864, !noalias !28865, !noundef !67
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lp = load i64, ptr %i.lo, align 8, !alias.scope !28864, !noalias !28865, !noundef !67 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, %.sroa.524.0.copyload.i
  %i.lr = icmp ult i64 %i.lp, %.sroa.524.0.copyload.i
  %i.ls = fcmp ult double %i.ln, %.sroa.6.0.copyload.i
  %spec.select.i22.i = select i1 %i.lq, i1 %i.ls, i1 %i.lr
  br i1 %spec.select.i22.i, label %.split25._crit_edge.i, label %.backedge.i

.split25._crit_edge.i:                            ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit23.i, %.split25.i
  %i.lt = icmp ult i64 %.sroa.07.033.i, %.sroa.0.030.i
  br i1 %i.lt, label %bb.ai, label %.split25._crit_edge.thread.i, !prof !138

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit23.i: ; preds = %.lr.ph35.i
  %i.lu = icmp ult i64 %i.lk, %.sroa.4.0.copyload.i
  br i1 %i.lu, label %.split25._crit_edge.i, label %.backedge.i

.backedge.i:                                      ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit23.i, %.split25.i
  %i.lv = icmp ult i64 %.sroa.0.030.i, %i.lg
  br i1 %i.lv, label %.lr.ph35.i, label %.split25._crit_edge.thread.i

.split25._crit_edge.thread.i:                     ; preds = %bb.x, %.backedge.i, %.split25._crit_edge.i
  %.sroa.07.0.lcssa66.i = phi i64 [ %.sroa.07.033.i, %.split25._crit_edge.i ], [ %.sroa.0.030.i, %.backedge.i ], [ %i.ks, %bb.x ] ; 2 uses
  %.sroa.0.0.lcssa.ph6265.i = phi i64 [ %.sroa.0.030.i, %.split25._crit_edge.i ], [ %.sroa.0.030.i, %.backedge.i ], [ %i.ks, %bb.x ] ; 3 uses
  %i.lw = getelementptr inbounds nuw [48 x i8], ptr %i.kr, i64 %.sroa.0.0.lcssa.ph6265.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28866)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !28867
  %i.lx = getelementptr inbounds nuw [48 x i8], ptr %i.kr, i64 %.sroa.07.0.lcssa66.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28867
  br label %bb.y

bb.y:                                             ; preds = %bb.ae, %.split25._crit_edge.thread.i
  %.sroa.084.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.084.1.i.i, %bb.ae ] ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.068.1.i.i, %bb.ae ] ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.046.2.i.i, %bb.ae ] ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %.split25._crit_edge.thread.i ], [ %.sroa.044.1.i.i, %bb.ae ] ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.lx, %.split25._crit_edge.thread.i ], [ %.sroa.032.1.i.i, %bb.ae ] ; 7 uses
  %.sroa.018.0.i.i = phi ptr [ null, %.split25._crit_edge.thread.i ], [ %.sroa.018.2.i.i, %bb.ae ] ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %.split25._crit_edge.thread.i ], [ %.sroa.015.1.i.i, %bb.ae ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.lw, %.split25._crit_edge.thread.i ], [ %spec.select.i24.i, %bb.ae ] ; 6 uses
  %i.ly = ptrtoint ptr %.sroa.032.0.i.i to i64
  %i.lz = ptrtoint ptr %.sroa.01.0.i.i to i64
  %i.ma = sub i64 %i.ly, %i.lz                    ; 2 uses
  %i.mb = icmp ult i64 %i.ma, 12336               ; 2 uses
  br i1 %i.mb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.y
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.y ], [ %.sroa.060.0.mux.i.i, %bb.aa ], [ %i.mi, %bb.ab ] ; 4 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.y ], [ %.sroa.015.0.mux.i.i, %bb.aa ], [ %i.mh, %bb.ab ] ; 4 uses
  %i.mc = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i
  br i1 %i.mc, label %.preheader6.i.i, label %.loopexit7.i.i

.preheader6.i.i:                                  ; preds = %bb.z
  %.not26.i.i = icmp eq i64 %.sroa.015.1.i.i, 0
  br i1 %.not26.i.i, label %.loopexit7.i.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %bb.y
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.ma to i16
  %i.md = udiv i16 %.lhs.trunc.i.i, 48
  %.zext.i.i = zext nneg i16 %i.md to i64         ; 4 uses
  %i.me = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i ; 3 uses
  %i.mf = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i ; 2 uses
  %or.cond.i.i = select i1 %i.me, i1 true, i1 %i.mf
  %i.mg = add nsw i64 %.zext.i.i, -128            ; 2 uses
  %.sroa.060.0.i.i = select i1 %i.mf, i64 %i.mg, i64 %.zext.i.i
  %.sroa.060.0.mux.i.i = select i1 %i.me, i64 %i.mg, i64 %.sroa.044.0.i.i
  %.sroa.015.0.mux.i.i = select i1 %i.me, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i
  br i1 %or.cond.i.i, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mh = lshr i64 %.zext.i.i, 1                  ; 2 uses
  %i.mi = sub nsw i64 %.zext.i.i, %i.mh
  br label %bb.z

.loopexit7.i.i:                                   ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63, %.preheader6.i.i, %bb.z
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0.i.i, %bb.z ], [ %i.i, %.preheader6.i.i ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63 ] ; 7 uses
  %.sroa.018.1.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.z ], [ %i.i, %.preheader6.i.i ], [ %i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63 ] ; 6 uses
  %i.mj = icmp eq ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  br i1 %i.mj, label %.preheader5.i.i, label %.loopexit.i.i

.preheader5.i.i:                                  ; preds = %.loopexit7.i.i
  %.not27.i.i = icmp eq i64 %.sroa.044.1.i.i, 0
  br i1 %.not27.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i

.lr.ph.i.i:                                       ; preds = %.preheader6.i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63
  %.sroa.065.010.i.i = phi ptr [ %i.my, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63 ], [ %.sroa.01.0.i.i, %.preheader6.i.i ] ; 4 uses
  %.sroa.068.29.i.i = phi ptr [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63 ], [ %i.i, %.preheader6.i.i ] ; 2 uses
  %.sroa.0105.08.i.i = phi i64 [ %i.mk, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63 ], [ 0, %.preheader6.i.i ] ; 2 uses
  %i.mk = add nuw i64 %.sroa.0105.08.i.i, 1       ; 2 uses
  %i.ml = trunc i64 %.sroa.0105.08.i.i to i8
  store i8 %i.ml, ptr %.sroa.068.29.i.i, align 1, !noalias !28867
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 24
  %i.mn = load i64, ptr %i.mm, align 8, !alias.scope !28868, !noalias !28869, !noundef !67 ; 2 uses
  %i.mo = icmp eq i64 %i.mn, %.sroa.4.0.copyload.i
  %i.mp = icmp ult i64 %i.mn, %.sroa.4.0.copyload.i
  br i1 %i.mo, label %bb.ac, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 40
  %i.mr = load double, ptr %i.mq, align 8, !alias.scope !28868, !noalias !28869, !noundef !67
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 32
  %i.mt = load i64, ptr %i.ms, align 8, !alias.scope !28868, !noalias !28869, !noundef !67 ; 2 uses
  %i.mu = icmp eq i64 %i.mt, %.sroa.524.0.copyload.i
  %i.mv = icmp ult i64 %i.mt, %.sroa.524.0.copyload.i
  %i.mw = fcmp ult double %i.mr, %.sroa.6.0.copyload.i
  %spec.select.i.i.i65 = select i1 %i.mu, i1 %i.mw, i1 %i.mv
  br label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i63: ; preds = %bb.ac, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.mp, %.lr.ph.i.i ], [ %spec.select.i.i.i65, %bb.ac ]
  %i.mx = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.mx to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 48
  %exitcond.not.i.i64 = icmp eq i64 %i.mk, %.sroa.015.1.i.i
  br i1 %exitcond.not.i.i64, label %.loopexit7.i.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i, %.preheader5.i.i, %.loopexit7.i.i
  %.sroa.084.1.i.i = phi ptr [ %.sroa.084.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i ] ; 7 uses
  %.sroa.046.1.i.i = phi ptr [ %.sroa.046.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %i.h, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i ] ; 5 uses
  %i.mz = ptrtoint ptr %.sroa.068.1.i.i to i64
  %i.na = ptrtoint ptr %.sroa.018.1.i.i to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = ptrtoint ptr %.sroa.084.1.i.i to i64
  %i.nd = ptrtoint ptr %.sroa.046.1.i.i to i64
  %i.ne = sub i64 %i.nc, %i.nd
  %i.nf = call i64 @llvm.umin.i64(i64 %i.nb, i64 %i.ne) ; 3 uses
  %.not.i.i = icmp eq i64 %i.nf, 0
  br i1 %.not.i.i, label %bb.ae, label %bb.af

.lr.ph14.i.i:                                     ; preds = %.preheader5.i.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i
  %.sroa.079.013.i.i = phi ptr [ %i.nh, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i ], [ %.sroa.032.0.i.i, %.preheader5.i.i ] ; 4 uses
  %.sroa.084.212.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i ], [ %i.h, %.preheader5.i.i ] ; 2 uses
  %.sroa.0107.011.i.i = phi i64 [ %i.ng, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i ], [ 0, %.preheader5.i.i ] ; 2 uses
  %i.ng = add nuw i64 %.sroa.0107.011.i.i, 1      ; 2 uses
  %i.nh = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -48
  %i.ni = trunc i64 %.sroa.0107.011.i.i to i8
  store i8 %i.ni, ptr %.sroa.084.212.i.i, align 1, !noalias !28867
  %i.nj = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -24
  %i.nk = load i64, ptr %i.nj, align 8, !alias.scope !28870, !noalias !28871, !noundef !67 ; 2 uses
  %i.nl = icmp eq i64 %i.nk, %.sroa.4.0.copyload.i
  %i.nm = icmp ult i64 %i.nk, %.sroa.4.0.copyload.i
  br i1 %i.nl, label %bb.ad, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i

bb.ad:                                            ; preds = %.lr.ph14.i.i
  %i.nn = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -8
  %i.no = load double, ptr %i.nn, align 8, !alias.scope !28870, !noalias !28871, !noundef !67
  %i.np = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -16
  %i.nq = load i64, ptr %i.np, align 8, !alias.scope !28870, !noalias !28871, !noundef !67 ; 2 uses
  %i.nr = icmp eq i64 %i.nq, %.sroa.524.0.copyload.i
  %i.ns = icmp ult i64 %i.nq, %.sroa.524.0.copyload.i
  %i.nt = fcmp ult double %i.no, %.sroa.6.0.copyload.i
  %spec.select.i116.i.i = select i1 %i.nr, i1 %i.nt, i1 %i.ns
  br label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit117.i.i: ; preds = %bb.ad, %.lr.ph14.i.i
  %.sroa.0.0.i.i.i115.i.i = phi i1 [ %i.nm, %.lr.ph14.i.i ], [ %spec.select.i116.i.i, %bb.ad ]
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.sroa.0.0.i.i.i115.i.i to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %exitcond32.not.i.i = icmp eq i64 %i.ng, %.sroa.044.1.i.i
  br i1 %exitcond32.not.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %.sroa.046.2.i.i = phi ptr [ %i.oj, %._crit_edge.i.i ], [ %.sroa.046.1.i.i, %.loopexit.i.i ] ; 5 uses
  %.sroa.018.2.i.i = phi ptr [ %i.oi, %._crit_edge.i.i ], [ %.sroa.018.1.i.i, %.loopexit.i.i ] ; 5 uses
  %i.nu = icmp eq ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  %spec.select.idx.i.i = select i1 %i.nu, i64 %.sroa.015.1.i.i, i64 0
  %spec.select.i24.i = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %spec.select.idx.i.i ; 9 uses
  %i.nv = icmp eq ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  %i.nw = sub nsw i64 0, %.sroa.044.1.i.i
  %.sroa.032.1.idx.i.i = select i1 %i.nv, i64 %i.nw, i64 0
  %.sroa.032.1.i.i = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %.sroa.032.1.idx.i.i ; 6 uses
  br i1 %i.mb, label %bb.ag, label %bb.y

bb.af:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.nx = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !28867, !noundef !67
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.ny
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.nz, i64 48, i1 false), !noalias !28872
  %i.oa = load i8, ptr %.sroa.046.1.i.i, align 1, !noalias !28867, !noundef !67 ; 2 uses
  %i.ob = zext i8 %i.oa to i64
  %i.oc = xor i64 %i.ob, -1                       ; 2 uses
  %i.od = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.oc
  %i.oe = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !28867, !noundef !67
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.of
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.og, ptr noundef nonnull align 8 dereferenceable(48) %i.od, i64 48, i1 false), !alias.scope !28873, !noalias !28872
  %.not28.i.i = icmp eq i64 %i.nf, 1
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph19.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph19.i.i, %bb.af
  %.pre-phi47.i = phi i64 [ %i.oc, %bb.af ], [ %i.ow, %.lr.ph19.i.i ]
  %.sroa.046.3.lcssa.i.i = phi ptr [ %.sroa.046.1.i.i, %bb.af ], [ %i.ot, %.lr.ph19.i.i ]
  %.sroa.018.3.lcssa.i.i = phi ptr [ %.sroa.018.1.i.i, %bb.af ], [ %i.om, %.lr.ph19.i.i ]
  %i.oh = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %.pre-phi47.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oh, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !28872
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.018.3.lcssa.i.i, i64 1
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.046.3.lcssa.i.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

.lr.ph19.i.i:                                     ; preds = %bb.af, %.lr.ph19.i.i
  %i.ok = phi i8 [ %i.ou, %.lr.ph19.i.i ], [ %i.oa, %bb.af ]
  %.sroa.018.318.i.i = phi ptr [ %i.om, %.lr.ph19.i.i ], [ %.sroa.018.1.i.i, %bb.af ]
  %.sroa.046.317.i.i = phi ptr [ %i.ot, %.lr.ph19.i.i ], [ %.sroa.046.1.i.i, %bb.af ]
  %.sroa.0109.016.i.i = phi i64 [ %i.ol, %.lr.ph19.i.i ], [ 1, %bb.af ]
  %i.ol = add nuw i64 %.sroa.0109.016.i.i, 1      ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.018.318.i.i, i64 1 ; 3 uses
  %i.on = load i8, ptr %i.om, align 1, !noalias !28867, !noundef !67
  %i.oo = zext i8 %i.on to i64
  %i.op = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %i.oo ; 2 uses
  %i.oq = zext i8 %i.ok to i64
  %i.or = xor i64 %i.oq, -1
  %i.os = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.or
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.os, ptr noundef nonnull align 8 dereferenceable(48) %i.op, i64 48, i1 false), !alias.scope !28873, !noalias !28872
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.046.317.i.i, i64 1 ; 3 uses
  %i.ou = load i8, ptr %i.ot, align 1, !noalias !28867, !noundef !67 ; 2 uses
  %i.ov = zext i8 %i.ou to i64
  %i.ow = xor i64 %i.ov, -1                       ; 2 uses
  %i.ox = getelementptr inbounds [48 x i8], ptr %.sroa.032.0.i.i, i64 %i.ow
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.op, ptr noundef nonnull align 8 dereferenceable(48) %i.ox, i64 48, i1 false), !alias.scope !28873, !noalias !28872
  %exitcond33.not.i.i = icmp eq i64 %i.ol, %i.nf
  br i1 %exitcond33.not.i.i, label %._crit_edge.i.i, label %.lr.ph19.i.i

bb.ag:                                            ; preds = %bb.ae
  %.sroa.084.1.i.i.lcssa607608 = ptrtoaddr ptr %.sroa.084.1.i.i to i64 ; 2 uses
  %.sroa.046.2.i.i.lcssa609610 = ptrtoaddr ptr %.sroa.046.2.i.i to i64 ; 2 uses
  %i.oy = icmp ult ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  br i1 %i.oy, label %.preheader.i.i.preheader, label %bb.ah

.preheader.i.i.preheader:                         ; preds = %bb.ag
  %.sroa.018.2.i.i.lcssa613614 = ptrtoaddr ptr %.sroa.018.2.i.i to i64 ; 2 uses
  %.sroa.068.1.i.i.lcssa611612 = ptrtoaddr ptr %.sroa.068.1.i.i to i64 ; 2 uses
  %i.oz = sub i64 %.sroa.068.1.i.i.lcssa611612, %.sroa.018.2.i.i.lcssa613614
  %xtraiter615 = and i64 %i.oz, 1
  %lcmp.mod616.not = icmp eq i64 %xtraiter615, 0
  br i1 %lcmp.mod616.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader
  %i.pa = getelementptr inbounds i8, ptr %.sroa.068.1.i.i, i64 -1 ; 2 uses
  %i.pb = load i8, ptr %i.pa, align 1, !noalias !28867, !noundef !67
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i24.i, i64 %i.pc ; 2 uses
  %i.pe = getelementptr inbounds i8, ptr %.sroa.032.1.i.i, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.pd, i64 48, i1 false), !noalias !28872
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pd, ptr noundef nonnull align 8 dereferenceable(48) %i.pe, i64 48, i1 false), !alias.scope !28873, !noalias !28872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pe, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !28872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.sroa.032.225.i.i.unr = phi ptr [ %.sroa.032.1.i.i, %.preheader.i.i.preheader ], [ %i.pe, %.preheader.i.i.prol ]
  %.sroa.068.324.i.i.unr = phi ptr [ %.sroa.068.1.i.i, %.preheader.i.i.preheader ], [ %i.pa, %.preheader.i.i.prol ]
  %.lcssa576.unr = phi ptr [ poison, %.preheader.i.i.preheader ], [ %i.pe, %.preheader.i.i.prol ]
  %i.pf = add i64 %.sroa.068.1.i.i.lcssa611612, -1
  %i.pg = icmp eq i64 %i.pf, %.sroa.018.2.i.i.lcssa613614
  br i1 %i.pg, label %.loopexit.i, label %.preheader.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ph = icmp ult ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  br i1 %i.ph, label %.preheader4.i.i.preheader, label %.loopexit.i

.preheader4.i.i.preheader:                        ; preds = %bb.ah
end_hunk_1
begin_hunk_2_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2D_:bb.a
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0Es0_0B2L_.exit62.i

bb.l:                                             ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.i
  %i.cj = lshr i64 %.sroa.20.0134, 1              ; 3 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0135, i64 %.sroa.20.0134 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28961)
  call void @llvm.experimental.noalias.scope.decl(metadata !28962)
  %i.cl = icmp eq i64 %i.cj, 1
  br i1 %i.cl, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %i.cj, 9223372036854775806
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i, %.new
  %.sroa.0.016.i.i = phi i64 [ 0, %.new ], [ %i.db, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i ]
  %i.cm = xor i64 %.sroa.0.016.i.i, -1
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0135, i64 %.sroa.0.016.i.i ; 3 uses
  %i.co = getelementptr [16 x i8], ptr %i.ck, i64 %i.cm ; 3 uses
  %i.cp = load i32, ptr %i.cn, align 8, !alias.scope !28963, !noalias !28962, !noundef !67
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !alias.scope !28963, !noalias !28962, !noundef !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !alias.scope !28964
  store i32 %i.cp, ptr %i.co, align 8, !alias.scope !28965, !noalias !28961
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store double %i.cr, ptr %i.cs, align 8, !alias.scope !28965, !noalias !28961
  %i.ct = xor i64 %.sroa.0.016.i.i, -2
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0135, i64 %.sroa.0.016.i.i ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cw = getelementptr [16 x i8], ptr %i.ck, i64 %i.ct ; 3 uses
  %i.cx = load i32, ptr %i.cv, align 8, !alias.scope !28963, !noalias !28962, !noundef !67
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cz = load double, ptr %i.cy, align 8, !alias.scope !28963, !noalias !28962, !noundef !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !alias.scope !28964
  store i32 %i.cx, ptr %i.cw, align 8, !alias.scope !28965, !noalias !28961
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store double %i.cz, ptr %i.da, align 8, !alias.scope !28965, !noalias !28961
  %i.db = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i.unr-lcssa, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i.unr-lcssa: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i
  %i.dc = and i64 %.sroa.20.0134, 2
  %lcmp.mod.not = icmp eq i64 %i.dc, 0
  br i1 %lcmp.mod.not, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.epil.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.epil.preheader: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i.unr-lcssa, %bb.l
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %i.db, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod445 = trunc i64 %i.cj to i1
  call void @llvm.assume(i1 %lcmp.mod445)
  %i.dd = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0135, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.df = getelementptr [16 x i8], ptr %i.ck, i64 %i.dd ; 3 uses
  %i.dg = load i32, ptr %i.de, align 8, !alias.scope !28963, !noalias !28962, !noundef !67
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.di = load double, ptr %i.dh, align 8, !alias.scope !28963, !noalias !28962, !noundef !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !alias.scope !28964
  store i32 %i.dg, ptr %i.df, align 8, !alias.scope !28965, !noalias !28961
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store double %i.di, ptr %i.dj, align 8, !alias.scope !28965, !noalias !28961
  br label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i.unr-lcssa, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i.epil.preheader
  %i.dk = xor i64 %.sroa.0.1.i, -1
  %i.dl = add nsw i64 %.sroa.20.0134, %i.dk
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2J_.exit

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.thread.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit.i
  %.sroa.065.3107.i = phi i64 [ %.sroa.0.1.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.i ], [ %.sroa.065.2.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit.i ]
  %i.dm = phi i64 [ 1, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.i ], [ %.sroa.0.2100.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit.i ]
  %i.dn = icmp eq i64 %i.dm, 0
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2J_.exit

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2J_.exit: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.thread.i
  %.sroa.3.0.i = phi i1 [ %i.dn, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.thread.i ], [ true, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ]
  %.sroa.0.0.i = phi i64 [ %.sroa.065.3107.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0E0B2L_.exit10.thread.i ], [ %i.dl, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdEECskcxRuJ53GpR_9rustworkx.exit.i ] ; 6 uses
  %i.do = select i1 %or.cond, i1 %.sroa.3.0.i, i1 false, !prof !139
  br i1 %i.do, label %bb.n, label %bb.m, !prof !79

bb.m:                                             ; preds = %bb.n, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2J_.exit
  br i1 %.not, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2J_.exit
  %i.dp = call fastcc noundef zeroext i1 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort22partial_insertion_sortTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2T_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0135, i64 noundef %.sroa.20.0134)
  br i1 %i.dp, label %.loopexit, label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.dq = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0134
  br i1 %i.dq, label %bb.ae, label %bb.af

bb.p:                                             ; preds = %bb.ae, %bb.m
  %.sroa.0.0135.lcssa160 = phi ptr [ %.sroa.0.0135, %bb.ae ], [ %.sroa.0.0.ph143, %bb.m ] ; 14 uses
  %.sroa.20.0134.lcssa151 = phi i64 [ %.sroa.20.0134, %bb.ae ], [ %.sroa.20.0.ph142, %bb.m ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28966)
  %i.dr = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0134.lcssa151
  br i1 %i.dr, label %.lr.ph.preheader.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef range(i64 21, 576460752303423488) %.sroa.20.0134.lcssa151, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @595) #60, !noalias !28966
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0135.lcssa160, i64 %.sroa.0.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0135.lcssa160, i64 16, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0135.lcssa160, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 16, i1 false), !alias.scope !28967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0135.lcssa160, i64 16 ; 3 uses
  %i.du = add nsw i64 %.sroa.20.0134.lcssa151, -1 ; 7 uses
  %i.dv = load i32, ptr %.sroa.0.0135.lcssa160, align 8, !alias.scope !28966, !noundef !67
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0135.lcssa160, i64 8 ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !alias.scope !28966, !noundef !67 ; 13 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.0.lcssa.ph.i = phi i64 [ %i.du, %bb.r ], [ %.sroa.0.015.i, %.lr.ph.i ] ; 7 uses
  %i.dy = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.du
  br i1 %i.dy, label %.lr.ph370, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %.sroa.0.015.i = phi i64 [ %i.ec, %bb.r ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.sroa.0.015.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %.val19.i = load double, ptr %i.ea, align 8, !alias.scope !28966, !noundef !67
  %i.eb = fcmp ult double %.val19.i, %i.dx
  br i1 %i.eb, label %bb.r, label %._crit_edge.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.ec = add nuw nsw i64 %.sroa.0.015.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ec, %i.du
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.s:                                             ; preds = %.lr.ph370
  %i.ed = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.ef
  br i1 %i.ed, label %.lr.ph370, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %.lr.ph370, %._crit_edge.i
  %.sroa.07.0.i.lcssa = phi i64 [ %i.du, %._crit_edge.i ], [ %i.ef, %bb.s ], [ %.sroa.07.0.i369, %.lr.ph370 ] ; 4 uses
  %i.ee = icmp ult i64 %.sroa.07.0.i.lcssa, %.sroa.0.0.lcssa.ph.i
  br i1 %i.ee, label %bb.ac, label %bb.t, !prof !71

.lr.ph370:                                        ; preds = %._crit_edge.i, %bb.s
  %.sroa.07.0.i369 = phi i64 [ %i.ef, %bb.s ], [ %i.du, %._crit_edge.i ] ; 3 uses
  %i.ef = add nsw i64 %.sroa.07.0.i369, -1        ; 4 uses
  %i.eg = icmp ult i64 %i.ef, %i.du
  call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr [16 x i8], ptr %.sroa.0.0135.lcssa160, i64 %.sroa.07.0.i369
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %.val.i = load double, ptr %i.ei, align 8, !alias.scope !28966, !noundef !67
  %i.ej = fcmp ult double %.val.i, %i.dx
  br i1 %i.ej, label %._crit_edge, label %bb.s

bb.t:                                             ; preds = %._crit_edge
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.sroa.0.0.lcssa.ph.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28968)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !28969
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %.sroa.07.0.i.lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !28969
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  %.sroa.084.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.084.1.i.i, %bb.y ] ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.068.1.i.i, %bb.y ] ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.046.2.i.i, %bb.y ] ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.044.1.i.i, %bb.y ] ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.el, %bb.t ], [ %.sroa.032.1.i.i, %bb.y ] ; 8 uses
  %.sroa.018.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.018.2.i.i, %bb.y ] ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.015.1.i.i, %bb.y ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.ek, %bb.t ], [ %spec.select.i.i, %bb.y ] ; 6 uses
  %i.em = ptrtoint ptr %.sroa.032.0.i.i to i64
  %i.en = ptrtoint ptr %.sroa.01.0.i.i to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 3 uses
  %i.ep = icmp ult i64 %i.eo, 4112                ; 2 uses
  br i1 %i.ep, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.u ], [ %.sroa.060.0.mux.i.i, %bb.w ], [ %i.ex, %bb.x ] ; 6 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.u ], [ %.sroa.015.0.mux.i.i, %bb.w ], [ %i.ew, %bb.x ] ; 6 uses
  %i.eq = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i
  br i1 %i.eq, label %.preheader6.i.i, label %.loopexit7.i.i

.preheader6.i.i:                                  ; preds = %bb.v
  %.not26.i.i = icmp eq i64 %.sroa.015.1.i.i, 0
  br i1 %.not26.i.i, label %.loopexit7.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader6.i.i
  %xtraiter446 = and i64 %.sroa.015.1.i.i, 3      ; 3 uses
  %i.er = icmp ult i64 %.sroa.015.1.i.i, 4
  br i1 %i.er, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter450 = and i64 %.sroa.015.1.i.i, -4
  br label %.lr.ph.i.i

bb.w:                                             ; preds = %bb.u
  %i.es = lshr i64 %i.eo, 4                       ; 3 uses
  %i.et = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i ; 3 uses
  %i.eu = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i ; 2 uses
  %or.cond.i.i = select i1 %i.et, i1 true, i1 %i.eu
  %i.ev = add nsw i64 %i.es, -128                 ; 2 uses
  %.sroa.060.0.i.i = select i1 %i.eu, i64 %i.ev, i64 %i.es
  %.sroa.060.0.mux.i.i = select i1 %i.et, i64 %i.ev, i64 %.sroa.044.0.i.i
  %.sroa.015.0.mux.i.i = select i1 %i.et, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i
  br i1 %or.cond.i.i, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ew = lshr i64 %i.eo, 5                       ; 2 uses
  %i.ex = sub nsw i64 %i.es, %i.ew
  br label %bb.v

.loopexit7.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %.loopexit7.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit7.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.065.010.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader ], [ %i.fv, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %.sroa.068.29.i.i.epil.init = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %.sroa.0108.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.fq, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %lcmp.mod449 = icmp ne i64 %xtraiter446, 0
  call void @llvm.assume(i1 %lcmp.mod449)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.065.010.i.i.epil = phi ptr [ %i.fc, %.lr.ph.i.i.epil ], [ %.sroa.065.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.068.29.i.i.epil = phi ptr [ %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil ], [ %.sroa.068.29.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.0108.08.i.i.epil = phi i64 [ %i.ey, %.lr.ph.i.i.epil ], [ %.sroa.0108.08.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ey = add nuw i64 %.sroa.0108.08.i.i.epil, 1
  %i.ez = trunc i64 %.sroa.0108.08.i.i.epil to i8
  store i8 %i.ez, ptr %.sroa.068.29.i.i.epil, align 1, !noalias !28969
  %i.fa = getelementptr i8, ptr %.sroa.065.010.i.i.epil, i64 8
  %.sroa.065.0.val.i.i.epil = load double, ptr %i.fa, align 8, !alias.scope !28969, !noundef !67
  %i.fb = fcmp oge double %.sroa.065.0.val.i.i.epil, %i.dx
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %i.fb to i64
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i.epil, i64 %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter446
  br i1 %epil.iter.cmp.not, label %.loopexit7.i.i, label %.lr.ph.i.i.epil, !llvm.loop !28938

.loopexit7.i.i:                                   ; preds = %.loopexit7.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.preheader6.i.i, %bb.v
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0.i.i, %bb.v ], [ %i.h, %.preheader6.i.i ], [ %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit7.i.i.loopexit.unr-lcssa ], [ %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil ] ; 7 uses
  %.sroa.018.1.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.v ], [ %i.h, %.preheader6.i.i ], [ %i.h, %.lr.ph.i.i.epil ], [ %i.h, %.loopexit7.i.i.loopexit.unr-lcssa ] ; 5 uses
  %i.fd = icmp eq ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  br i1 %i.fd, label %.preheader5.i.i, label %.loopexit.i.i

.preheader5.i.i:                                  ; preds = %.loopexit7.i.i
  %.not27.i.i = icmp eq i64 %.sroa.044.1.i.i, 0
  br i1 %.not27.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i.preheader

.lr.ph14.i.i.preheader:                           ; preds = %.preheader5.i.i
  %xtraiter452 = and i64 %.sroa.044.1.i.i, 3      ; 3 uses
  %i.fe = icmp ult i64 %.sroa.044.1.i.i, 4
  br i1 %i.fe, label %.lr.ph14.i.i.epil.preheader, label %.lr.ph14.i.i.preheader.new

.lr.ph14.i.i.preheader.new:                       ; preds = %.lr.ph14.i.i.preheader
  %unroll_iter457 = and i64 %.sroa.044.1.i.i, -4
  br label %.lr.ph14.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.065.010.i.i = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader.new ], [ %i.fv, %.lr.ph.i.i ] ; 5 uses
  %.sroa.068.29.i.i = phi ptr [ %i.h, %.lr.ph.i.i.preheader.new ], [ %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0108.08.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.fq, %.lr.ph.i.i ] ; 5 uses
  %niter451 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter451.next.3, %.lr.ph.i.i ]
  %i.ff = trunc i64 %.sroa.0108.08.i.i to i8
  store i8 %i.ff, ptr %.sroa.068.29.i.i, align 1, !noalias !28969
  %i.fg = getelementptr i8, ptr %.sroa.065.010.i.i, i64 8
  %.sroa.065.0.val.i.i = load double, ptr %i.fg, align 8, !alias.scope !28969, !noundef !67
  %i.fh = fcmp oge double %.sroa.065.0.val.i.i, %i.dx
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.fh to i64
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i, i64 %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.fi = trunc i64 %.sroa.0108.08.i.i to i8
  %i.fj = or disjoint i8 %i.fi, 1
  store i8 %i.fj, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !noalias !28969
  %i.fk = getelementptr i8, ptr %.sroa.065.010.i.i, i64 24
  %.sroa.065.0.val.i.i.1 = load double, ptr %i.fk, align 8, !alias.scope !28969, !noundef !67
  %i.fl = fcmp oge double %.sroa.065.0.val.i.i.1, %i.dx
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 = zext i1 %i.fl to i64
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1 = getelementptr inbounds nuw i8, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 ; 2 uses
  %i.fm = trunc i64 %.sroa.0108.08.i.i to i8
  %i.fn = or disjoint i8 %i.fm, 2
  store i8 %i.fn, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, align 1, !noalias !28969
  %i.fo = getelementptr i8, ptr %.sroa.065.010.i.i, i64 40
  %.sroa.065.0.val.i.i.2 = load double, ptr %i.fo, align 8, !alias.scope !28969, !noundef !67
  %i.fp = fcmp oge double %.sroa.065.0.val.i.i.2, %i.dx
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx = zext i1 %i.fp to i64
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, i64 %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx ; 2 uses
  %i.fq = add nuw i64 %.sroa.0108.08.i.i, 4       ; 2 uses
  %i.fr = trunc i64 %.sroa.0108.08.i.i to i8
  %i.fs = or disjoint i8 %i.fr, 3
  store i8 %i.fs, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, align 1, !noalias !28969
  %i.ft = getelementptr i8, ptr %.sroa.065.010.i.i, i64 56
  %.sroa.065.0.val.i.i.3 = load double, ptr %i.ft, align 8, !alias.scope !28969, !noundef !67
  %i.fu = fcmp oge double %.sroa.065.0.val.i.i.3, %i.dx
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 = zext i1 %i.fu to i64
  %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3 = getelementptr inbounds nuw i8, ptr %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, i64 %.sroa.sel117.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 64 ; 2 uses
  %niter451.next.3 = add nuw i64 %niter451, 4     ; 2 uses
  %niter451.ncmp.3 = icmp eq i64 %niter451.next.3, %unroll_iter450
  br i1 %niter451.ncmp.3, label %.loopexit7.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph14.i.i
  %lcmp.mod454.not = icmp eq i64 %xtraiter452, 0
  br i1 %lcmp.mod454.not, label %.loopexit.i.i, label %.lr.ph14.i.i.epil.preheader

.lr.ph14.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph14.i.i.preheader
  %.sroa.079.013.i.i.epil.init = phi ptr [ %.sroa.032.0.i.i, %.lr.ph14.i.i.preheader ], [ %i.gu, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.sroa.084.212.i.i.epil.init = phi ptr [ %i.g, %.lr.ph14.i.i.preheader ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.sroa.0110.011.i.i.epil.init = phi i64 [ 0, %.lr.ph14.i.i.preheader ], [ %i.gt, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod456 = icmp ne i64 %xtraiter452, 0
  call void @llvm.assume(i1 %lcmp.mod456)
  br label %.lr.ph14.i.i.epil

.lr.ph14.i.i.epil:                                ; preds = %.lr.ph14.i.i.epil, %.lr.ph14.i.i.epil.preheader
  %.sroa.079.013.i.i.epil = phi ptr [ %i.fx, %.lr.ph14.i.i.epil ], [ %.sroa.079.013.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ] ; 2 uses
  %.sroa.084.212.i.i.epil = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph14.i.i.epil ], [ %.sroa.084.212.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ] ; 2 uses
  %.sroa.0110.011.i.i.epil = phi i64 [ %i.fw, %.lr.ph14.i.i.epil ], [ %.sroa.0110.011.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ] ; 2 uses
  %epil.iter453 = phi i64 [ %epil.iter453.next, %.lr.ph14.i.i.epil ], [ 0, %.lr.ph14.i.i.epil.preheader ]
  %i.fw = add nuw i64 %.sroa.0110.011.i.i.epil, 1
  %i.fx = getelementptr inbounds i8, ptr %.sroa.079.013.i.i.epil, i64 -16
  %i.fy = trunc i64 %.sroa.0110.011.i.i.epil to i8
  store i8 %i.fy, ptr %.sroa.084.212.i.i.epil, align 1, !noalias !28969
  %i.fz = getelementptr i8, ptr %.sroa.079.013.i.i.epil, i64 -8
  %.val.i.i64.epil = load double, ptr %i.fz, align 8, !alias.scope !28969, !noundef !67
  %i.ga = fcmp ult double %.val.i.i64.epil, %i.dx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %i.ga to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i.epil, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx ; 2 uses
  %epil.iter453.next = add i64 %epil.iter453, 1   ; 2 uses
  %epil.iter453.cmp.not = icmp eq i64 %epil.iter453.next, %xtraiter452
  br i1 %epil.iter453.cmp.not, label %.loopexit.i.i, label %.lr.ph14.i.i.epil, !llvm.loop !28939

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph14.i.i.epil, %.preheader5.i.i, %.loopexit7.i.i
  %.sroa.084.1.i.i = phi ptr [ %.sroa.084.0.i.i, %.loopexit7.i.i ], [ %i.g, %.preheader5.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit.i.i.loopexit.unr-lcssa ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph14.i.i.epil ] ; 7 uses
  %.sroa.046.1.i.i = phi ptr [ %.sroa.046.0.i.i, %.loopexit7.i.i ], [ %i.g, %.preheader5.i.i ], [ %i.g, %.lr.ph14.i.i.epil ], [ %i.g, %.loopexit.i.i.loopexit.unr-lcssa ] ; 5 uses
  %i.gb = ptrtoint ptr %.sroa.068.1.i.i to i64
  %i.gc = ptrtoint ptr %.sroa.018.1.i.i to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ptrtoint ptr %.sroa.084.1.i.i to i64
  %i.gf = ptrtoint ptr %.sroa.046.1.i.i to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = call i64 @llvm.umin.i64(i64 %i.gd, i64 %i.gg) ; 3 uses
  %.not.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i, label %bb.y, label %bb.z

.lr.ph14.i.i:                                     ; preds = %.lr.ph14.i.i, %.lr.ph14.i.i.preheader.new
  %.sroa.079.013.i.i = phi ptr [ %.sroa.032.0.i.i, %.lr.ph14.i.i.preheader.new ], [ %i.gu, %.lr.ph14.i.i ] ; 5 uses
  %.sroa.084.212.i.i = phi ptr [ %i.g, %.lr.ph14.i.i.preheader.new ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.lr.ph14.i.i ] ; 2 uses
  %.sroa.0110.011.i.i = phi i64 [ 0, %.lr.ph14.i.i.preheader.new ], [ %i.gt, %.lr.ph14.i.i ] ; 5 uses
  %niter458 = phi i64 [ 0, %.lr.ph14.i.i.preheader.new ], [ %niter458.next.3, %.lr.ph14.i.i ]
  %i.gi = trunc i64 %.sroa.0110.011.i.i to i8
  store i8 %i.gi, ptr %.sroa.084.212.i.i, align 1, !noalias !28969
  %i.gj = getelementptr i8, ptr %.sroa.079.013.i.i, i64 -8
  %.val.i.i64 = load double, ptr %i.gj, align 8, !alias.scope !28969, !noundef !67
  %i.gk = fcmp ult double %.val.i.i64, %i.dx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.gk to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.gl = trunc i64 %.sroa.0110.011.i.i to i8
  %i.gm = or disjoint i8 %i.gl, 1
  store i8 %i.gm, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !noalias !28969
  %i.gn = getelementptr i8, ptr %.sroa.079.013.i.i, i64 -24
  %.val.i.i64.1 = load double, ptr %i.gn, align 8, !alias.scope !28969, !noundef !67
  %i.go = fcmp ult double %.val.i.i64.1, %i.dx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 = zext i1 %i.go to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 ; 2 uses
  %i.gp = trunc i64 %.sroa.0110.011.i.i to i8
  %i.gq = or disjoint i8 %i.gp, 2
  store i8 %i.gq, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, align 1, !noalias !28969
  %i.gr = getelementptr i8, ptr %.sroa.079.013.i.i, i64 -40
  %.val.i.i64.2 = load double, ptr %i.gr, align 8, !alias.scope !28969, !noundef !67
  %i.gs = fcmp ult double %.val.i.i64.2, %i.dx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx = zext i1 %i.gs to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx ; 2 uses
  %i.gt = add nuw i64 %.sroa.0110.011.i.i, 4      ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -64 ; 2 uses
  %i.gv = trunc i64 %.sroa.0110.011.i.i to i8
  %i.gw = or disjoint i8 %i.gv, 3
  store i8 %i.gw, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, align 1, !noalias !28969
  %i.gx = getelementptr i8, ptr %.sroa.079.013.i.i, i64 -56
  %.val.i.i64.3 = load double, ptr %i.gx, align 8, !alias.scope !28969, !noundef !67
  %i.gy = fcmp ult double %.val.i.i64.3, %i.dx
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 = zext i1 %i.gy to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 ; 3 uses
  %niter458.next.3 = add nuw i64 %niter458, 4     ; 2 uses
  %niter458.ncmp.3 = icmp eq i64 %niter458.next.3, %unroll_iter457
  br i1 %niter458.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph14.i.i

bb.y:                                             ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %.sroa.046.2.i.i = phi ptr [ %i.ho, %._crit_edge.i.i ], [ %.sroa.046.1.i.i, %.loopexit.i.i ] ; 5 uses
  %.sroa.018.2.i.i = phi ptr [ %i.hn, %._crit_edge.i.i ], [ %.sroa.018.1.i.i, %.loopexit.i.i ] ; 5 uses
  %i.gz = icmp eq ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  %spec.select.idx.i.i = select i1 %i.gz, i64 %.sroa.015.1.i.i, i64 0
  %spec.select.i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %spec.select.idx.i.i ; 9 uses
  %i.ha = icmp eq ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  %i.hb = sub nsw i64 0, %.sroa.044.1.i.i
  %.sroa.032.1.idx.i.i = select i1 %i.ha, i64 %i.hb, i64 0
  %.sroa.032.1.i.i = getelementptr inbounds [16 x i8], ptr %.sroa.032.0.i.i, i64 %.sroa.032.1.idx.i.i ; 6 uses
  br i1 %i.ep, label %bb.aa, label %bb.u

bb.z:                                             ; preds = %.loopexit.i.i
  %i.hc = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !28969, !noundef !67
  %i.hd = zext i8 %i.hc to i64
end_hunk_2
begin_hunk_3_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1Z_5types3any5PyAnyEEENCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB41_:bb.a
  %i.bl = add nuw nsw i64 %i.w, 1                 ; 3 uses
  %i.bm = icmp samesign ult i64 %i.w, %.sroa.20.0138
  call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0139, i64 %i.w
  %i.bo = icmp samesign ult i64 %i.bk, %.sroa.20.0138
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0139, i64 %i.bk
  %.val.i.i35.i = load double, ptr %i.bn, align 8, !alias.scope !29047, !noalias !29054, !noundef !67 ; 3 uses
  %.val2.i.i36.i = load double, ptr %i.bp, align 8, !alias.scope !29047, !noalias !29054, !noundef !67 ; 3 uses
  %i.bq = fcmp ult double %.val.i.i35.i, %.val2.i.i36.i
  br i1 %i.bq, label %bb.k, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i37.i

bb.k:                                             ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i
  %i.br = add nuw nsw i64 %.sroa.0.8.i, 1
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i37.i

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i37.i: ; preds = %bb.k, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i
  %.val2.i5.i43.i = phi double [ %.val.i.i35.i, %bb.k ], [ %.val2.i.i36.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i ]
  %.sroa.0.9.i = phi i64 [ %i.br, %bb.k ], [ %.sroa.0.8.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i ]
  %.sroa.067.1.i = phi i64 [ %i.bk, %bb.k ], [ %i.w, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i ]
  %.val2.i2.i38.i = phi double [ %.val2.i.i36.i, %bb.k ], [ %.val.i.i35.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i ] ; 2 uses
  %.sroa.0.0.i39.i = phi i64 [ %i.w, %bb.k ], [ %i.bk, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i13.i ]
  %i.bs = icmp samesign ult i64 %i.bl, %.sroa.20.0138
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0139, i64 %i.bl
  %.val.i1.i40.i = load double, ptr %i.bt, align 8, !alias.scope !29047, !noalias !29055, !noundef !67 ; 2 uses
  %i.bu = fcmp ult double %.val.i1.i40.i, %.val2.i2.i38.i ; 3 uses
  %i.bv = zext i1 %i.bu to i64
  %.sroa.0.10.i = add nuw nsw i64 %.sroa.0.9.i, %i.bv
  %.sroa.067.2.i = select i1 %i.bu, i64 %i.bl, i64 %.sroa.067.1.i
  %.val.i4.i42.i = select i1 %i.bu, double %.val.i1.i40.i, double %.val2.i2.i38.i
  %i.bw = fcmp ult double %.val.i4.i42.i, %.val2.i5.i43.i ; 2 uses
  %i.bx = zext i1 %i.bw to i64
  %spec.select.i = add nuw nsw i64 %.sroa.0.10.i, %i.bx
  %spec.select104.i = select i1 %i.bw, i64 %.sroa.0.0.i39.i, i64 %.sroa.067.2.i
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0Es0_0B49_.exit58.i

bb.l:                                             ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.i
  %i.by = lshr i64 %.sroa.20.0138, 1
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0139, i64 %.sroa.20.0138
  call void @llvm.experimental.noalias.scope.decl(metadata !29056)
  call void @llvm.experimental.noalias.scope.decl(metadata !29057)
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i, %bb.l
  %.sroa.0.016.i.i = phi i64 [ %i.cj, %_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i ], [ 0, %bb.l ] ; 3 uses
  %i.ca = xor i64 %.sroa.0.016.i.i, -1
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0139, i64 %.sroa.0.016.i.i ; 3 uses
  %i.cc = getelementptr [32 x i8], ptr %i.bz, i64 %i.ca ; 3 uses
  %i.cd = load <2 x i64>, ptr %i.cb, align 1, !alias.scope !29058, !noalias !29057
  %i.ce = load <2 x i64>, ptr %i.cc, align 1, !alias.scope !29059, !noalias !29056
  store <2 x i64> %i.ce, ptr %i.cb, align 1, !alias.scope !29058, !noalias !29057
  store <2 x i64> %i.cd, ptr %i.cc, align 1, !alias.scope !29059, !noalias !29056
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ch = load <2 x i64>, ptr %i.cf, align 1, !alias.scope !29060, !noalias !29057
  %i.ci = load <2 x i64>, ptr %i.cg, align 1, !alias.scope !29061, !noalias !29056
  store <2 x i64> %i.ci, ptr %i.cf, align 1, !alias.scope !29060, !noalias !29057
  store <2 x i64> %i.ch, ptr %i.cg, align 1, !alias.scope !29061, !noalias !29056
  %i.cj = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cj, %i.by
  br i1 %exitcond.not.i.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1K_5types3any5PyAnyEEE12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.i
  %i.ck = xor i64 %.sroa.0.1.i, -1
  %i.cl = add nsw i64 %.sroa.20.0138, %i.ck
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.thread.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i
  %.sroa.061.3103.i = phi i64 [ %.sroa.0.1.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.i ], [ %.sroa.061.2.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i ]
  %i.cm = phi i64 [ 1, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.i ], [ %.sroa.0.296.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit.i ]
  %i.cn = icmp eq i64 %i.cm, 0
  br label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit: ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.thread.i
  %.sroa.3.0.i = phi i1 [ %i.cn, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.thread.i ], [ true, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i ]
  %.sroa.0.0.i = phi i64 [ %.sroa.061.3103.i, %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEEENCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0E0B49_.exit10.thread.i ], [ %i.cl, %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB24_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx.exit.i ] ; 6 uses
  %i.co = select i1 %or.cond, i1 %.sroa.3.0.i, i1 false, !prof !139
  br i1 %i.co, label %bb.n, label %bb.m, !prof !79

bb.m:                                             ; preds = %bb.n, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit
  %i.cp = phi i32 [ %.pre, %bb.n ], [ %i.t, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit ] ; 3 uses
  br i1 %.not, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEENCINvYSBP_INtB4_16ParallelSliceMutBP_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB47_.exit
  %i.cq = call fastcc noundef zeroext i1 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort22partial_insertion_sortTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2f_5types3any5PyAnyEEENCINvYSBZ_INtB4_16ParallelSliceMutBZ_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB4h_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0139, i64 noundef %.sroa.20.0138)
  %.pre = load i32, ptr %i.k, align 4
  br i1 %i.cq, label %.loopexit, label %bb.m

bb.o:                                             ; preds = %bb.m
  %i.cr = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0138
  br i1 %i.cr, label %bb.ag, label %bb.ah

bb.p:                                             ; preds = %bb.ag, %bb.m
  %.sroa.0.0139.lcssa164 = phi ptr [ %.sroa.0.0139, %bb.ag ], [ %.sroa.0.0.ph147, %bb.m ] ; 15 uses
  %.sroa.20.0138.lcssa155 = phi i64 [ %.sroa.20.0138, %bb.ag ], [ %.sroa.20.0.ph146, %bb.m ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29062)
  %i.cs = icmp ult i64 %.sroa.0.0.i, %.sroa.20.0138.lcssa155
  br i1 %i.cs, label %.lr.ph.preheader.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i, i64 noundef range(i64 21, 288230376151711744) %.sroa.20.0138.lcssa155, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @595) #60, !noalias !29062
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0139.lcssa164, i64 %.sroa.0.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0139.lcssa164, i64 32, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0139.lcssa164, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i64 32, i1 false), !alias.scope !29063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0139.lcssa164, i64 32 ; 3 uses
  %i.cv = add nsw i64 %.sroa.20.0138.lcssa155, -1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %.sroa.09.0.copyload.i = load double, ptr %.sroa.0.0139.lcssa164, align 8, !alias.scope !29062 ; 14 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0139.lcssa164, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i64 24, i1 false)
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.0.lcssa.ph.i = phi i64 [ %i.cv, %bb.r ], [ %.sroa.0.014.i, %.lr.ph.i ] ; 7 uses
  %i.cw = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.cv
  br i1 %i.cw, label %.lr.ph393, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %.sroa.0.014.i = phi i64 [ %i.cz, %bb.r ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %.sroa.0.014.i
  %.val19.i = load double, ptr %i.cx, align 8, !alias.scope !29062, !noundef !67
  %i.cy = fcmp ult double %.val19.i, %.sroa.09.0.copyload.i
  br i1 %i.cy, label %bb.r, label %._crit_edge.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.cz = add nuw nsw i64 %.sroa.0.014.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cz, %i.cv
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.s:                                             ; preds = %.lr.ph393
  %i.da = icmp ult i64 %.sroa.0.0.lcssa.ph.i, %i.dc
  br i1 %i.da, label %.lr.ph393, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %.lr.ph393, %._crit_edge.i
  %.sroa.07.0.i.lcssa = phi i64 [ %i.cv, %._crit_edge.i ], [ %i.dc, %bb.s ], [ %.sroa.07.0.i392, %.lr.ph393 ] ; 4 uses
  %i.db = icmp ult i64 %.sroa.07.0.i.lcssa, %.sroa.0.0.lcssa.ph.i
  br i1 %i.db, label %bb.ac, label %bb.t, !prof !71

.lr.ph393:                                        ; preds = %._crit_edge.i, %bb.s
  %.sroa.07.0.i392 = phi i64 [ %i.dc, %bb.s ], [ %i.cv, %._crit_edge.i ] ; 3 uses
  %i.dc = add nsw i64 %.sroa.07.0.i392, -1        ; 4 uses
  %i.dd = icmp ult i64 %i.dc, %i.cv
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr [32 x i8], ptr %.sroa.0.0139.lcssa164, i64 %.sroa.07.0.i392
  %.val.i = load double, ptr %i.de, align 8, !alias.scope !29062, !noundef !67
  %i.df = fcmp ult double %.val.i, %.sroa.09.0.copyload.i
  br i1 %i.df, label %._crit_edge, label %bb.s

bb.t:                                             ; preds = %._crit_edge
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %.sroa.0.0.lcssa.ph.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !29065
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %.sroa.07.0.i.lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !29065
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  %.sroa.084.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.084.1.i.i, %bb.y ] ; 3 uses
  %.sroa.068.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.068.1.i.i, %bb.y ] ; 3 uses
  %.sroa.046.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.046.2.i.i, %bb.y ] ; 3 uses
  %.sroa.044.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.044.1.i.i, %bb.y ] ; 2 uses
  %.sroa.032.0.i.i = phi ptr [ %i.dh, %bb.t ], [ %.sroa.032.1.i.i, %bb.y ] ; 8 uses
  %.sroa.018.0.i.i = phi ptr [ null, %bb.t ], [ %.sroa.018.2.i.i, %bb.y ] ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ 128, %bb.t ], [ %.sroa.015.1.i.i, %bb.y ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.dg, %bb.t ], [ %spec.select.i.i, %bb.y ] ; 7 uses
  %i.di = ptrtoint ptr %.sroa.032.0.i.i to i64
  %i.dj = ptrtoint ptr %.sroa.01.0.i.i to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  %i.dl = icmp ult i64 %i.dk, 8224                ; 2 uses
  br i1 %i.dl, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.sroa.044.1.i.i = phi i64 [ %.sroa.044.0.i.i, %bb.u ], [ %.sroa.060.0.mux.i.i, %bb.w ], [ %i.dt, %bb.x ] ; 6 uses
  %.sroa.015.1.i.i = phi i64 [ %.sroa.015.0.i.i, %bb.u ], [ %.sroa.015.0.mux.i.i, %bb.w ], [ %i.ds, %bb.x ] ; 6 uses
  %i.dm = icmp eq ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i
  br i1 %i.dm, label %.preheader6.i.i, label %.loopexit7.i.i

.preheader6.i.i:                                  ; preds = %bb.v
  %.not26.i.i = icmp eq i64 %.sroa.015.1.i.i, 0
  br i1 %.not26.i.i, label %.loopexit7.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader6.i.i
  %xtraiter = and i64 %.sroa.015.1.i.i, 3         ; 3 uses
  %i.dn = icmp ult i64 %.sroa.015.1.i.i, 4
  br i1 %i.dn, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.015.1.i.i, -4
  br label %.lr.ph.i.i

bb.w:                                             ; preds = %bb.u
  %i.do = lshr i64 %i.dk, 5                       ; 3 uses
  %i.dp = icmp ult ptr %.sroa.018.0.i.i, %.sroa.068.0.i.i ; 3 uses
  %i.dq = icmp ult ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i ; 2 uses
  %or.cond.i.i = select i1 %i.dp, i1 true, i1 %i.dq
  %i.dr = add nsw i64 %i.do, -128                 ; 2 uses
  %.sroa.060.0.i.i = select i1 %i.dq, i64 %i.dr, i64 %i.do
  %.sroa.060.0.mux.i.i = select i1 %i.dp, i64 %i.dr, i64 %.sroa.044.0.i.i
  %.sroa.015.0.mux.i.i = select i1 %i.dp, i64 %.sroa.015.0.i.i, i64 %.sroa.060.0.i.i
  br i1 %or.cond.i.i, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ds = lshr i64 %i.dk, 6                       ; 2 uses
  %i.dt = sub nsw i64 %i.do, %i.ds
  br label %bb.v

.loopexit7.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit7.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit7.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.065.010.i.i.epil.init = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader ], [ %i.ep, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %.sroa.068.29.i.i.epil.init = phi ptr [ %i.i, %.lr.ph.i.i.preheader ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %.sroa.0105.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.el, %.loopexit7.i.i.loopexit.unr-lcssa ]
  %lcmp.mod476 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod476)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.065.010.i.i.epil = phi ptr [ %i.dx, %.lr.ph.i.i.epil ], [ %.sroa.065.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.068.29.i.i.epil = phi ptr [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil ], [ %.sroa.068.29.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.sroa.0105.08.i.i.epil = phi i64 [ %i.du, %.lr.ph.i.i.epil ], [ %.sroa.0105.08.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.du = add nuw i64 %.sroa.0105.08.i.i.epil, 1
  %i.dv = trunc i64 %.sroa.0105.08.i.i.epil to i8
  store i8 %i.dv, ptr %.sroa.068.29.i.i.epil, align 1, !noalias !29065
  %.sroa.065.0.val.i.i.epil = load double, ptr %.sroa.065.010.i.i.epil, align 8, !alias.scope !29065, !noundef !67
  %i.dw = fcmp oge double %.sroa.065.0.val.i.i.epil, %.sroa.09.0.copyload.i
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %i.dw to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i.epil, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i.epil, i64 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit7.i.i, label %.lr.ph.i.i.epil, !llvm.loop !29033

.loopexit7.i.i:                                   ; preds = %.loopexit7.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.preheader6.i.i, %bb.v
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0.i.i, %bb.v ], [ %i.i, %.preheader6.i.i ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit7.i.i.loopexit.unr-lcssa ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph.i.i.epil ] ; 7 uses
  %.sroa.018.1.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.v ], [ %i.i, %.preheader6.i.i ], [ %i.i, %.lr.ph.i.i.epil ], [ %i.i, %.loopexit7.i.i.loopexit.unr-lcssa ] ; 6 uses
  %i.dy = icmp eq ptr %.sroa.046.0.i.i, %.sroa.084.0.i.i
  br i1 %i.dy, label %.preheader5.i.i, label %.loopexit.i.i

.preheader5.i.i:                                  ; preds = %.loopexit7.i.i
  %.not27.i.i = icmp eq i64 %.sroa.044.1.i.i, 0
  br i1 %.not27.i.i, label %.loopexit.i.i, label %.lr.ph14.i.i.preheader

.lr.ph14.i.i.preheader:                           ; preds = %.preheader5.i.i
  %xtraiter477 = and i64 %.sroa.044.1.i.i, 3      ; 3 uses
  %i.dz = icmp ult i64 %.sroa.044.1.i.i, 4
  br i1 %i.dz, label %.lr.ph14.i.i.epil.preheader, label %.lr.ph14.i.i.preheader.new

.lr.ph14.i.i.preheader.new:                       ; preds = %.lr.ph14.i.i.preheader
  %unroll_iter482 = and i64 %.sroa.044.1.i.i, -4
  br label %.lr.ph14.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.065.010.i.i = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i.preheader.new ], [ %i.ep, %.lr.ph.i.i ] ; 5 uses
  %.sroa.068.29.i.i = phi ptr [ %i.i, %.lr.ph.i.i.preheader.new ], [ %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0105.08.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.el, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ea = trunc i64 %.sroa.0105.08.i.i to i8
  store i8 %i.ea, ptr %.sroa.068.29.i.i, align 1, !noalias !29065
  %.sroa.065.0.val.i.i = load double, ptr %.sroa.065.010.i.i, align 8, !alias.scope !29065, !noundef !67
  %i.eb = fcmp oge double %.sroa.065.0.val.i.i, %.sroa.09.0.copyload.i
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.eb to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.068.29.i.i, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 32
  %i.ed = trunc i64 %.sroa.0105.08.i.i to i8
  %i.ee = or disjoint i8 %i.ed, 1
  store i8 %i.ee, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !noalias !29065
  %.sroa.065.0.val.i.i.1 = load double, ptr %i.ec, align 8, !alias.scope !29065, !noundef !67
  %i.ef = fcmp oge double %.sroa.065.0.val.i.i.1, %.sroa.09.0.copyload.i
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 = zext i1 %i.ef to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1 = getelementptr inbounds nuw i8, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 64
  %i.eh = trunc i64 %.sroa.0105.08.i.i to i8
  %i.ei = or disjoint i8 %i.eh, 2
  store i8 %i.ei, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, align 1, !noalias !29065
  %.sroa.065.0.val.i.i.2 = load double, ptr %i.eg, align 8, !alias.scope !29065, !noundef !67
  %i.ej = fcmp oge double %.sroa.065.0.val.i.i.2, %.sroa.09.0.copyload.i
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx = zext i1 %i.ej to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 96
  %i.el = add nuw i64 %.sroa.0105.08.i.i, 4       ; 2 uses
  %i.em = trunc i64 %.sroa.0105.08.i.i to i8
  %i.en = or disjoint i8 %i.em, 3
  store i8 %i.en, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, align 1, !noalias !29065
  %.sroa.065.0.val.i.i.3 = load double, ptr %i.ek, align 8, !alias.scope !29065, !noundef !67
  %i.eo = fcmp oge double %.sroa.065.0.val.i.i.3, %.sroa.09.0.copyload.i
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 = zext i1 %i.eo to i64
  %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3 = getelementptr inbounds nuw i8, ptr %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, i64 %.sroa.sel114.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.065.010.i.i, i64 128 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit7.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph14.i.i
  %lcmp.mod479.not = icmp eq i64 %xtraiter477, 0
  br i1 %lcmp.mod479.not, label %.loopexit.i.i, label %.lr.ph14.i.i.epil.preheader

.lr.ph14.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph14.i.i.preheader
  %.sroa.079.013.i.i.epil.init = phi ptr [ %.sroa.032.0.i.i, %.lr.ph14.i.i.preheader ], [ %i.fn, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.sroa.084.212.i.i.epil.init = phi ptr [ %i.h, %.lr.ph14.i.i.preheader ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.sroa.0107.011.i.i.epil.init = phi i64 [ 0, %.lr.ph14.i.i.preheader ], [ %i.fm, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod481 = icmp ne i64 %xtraiter477, 0
  call void @llvm.assume(i1 %lcmp.mod481)
  br label %.lr.ph14.i.i.epil

.lr.ph14.i.i.epil:                                ; preds = %.lr.ph14.i.i.epil, %.lr.ph14.i.i.epil.preheader
  %.sroa.079.013.i.i.epil = phi ptr [ %i.er, %.lr.ph14.i.i.epil ], [ %.sroa.079.013.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ]
  %.sroa.084.212.i.i.epil = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph14.i.i.epil ], [ %.sroa.084.212.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ] ; 2 uses
  %.sroa.0107.011.i.i.epil = phi i64 [ %i.eq, %.lr.ph14.i.i.epil ], [ %.sroa.0107.011.i.i.epil.init, %.lr.ph14.i.i.epil.preheader ] ; 2 uses
  %epil.iter478 = phi i64 [ %epil.iter478.next, %.lr.ph14.i.i.epil ], [ 0, %.lr.ph14.i.i.epil.preheader ]
  %i.eq = add nuw i64 %.sroa.0107.011.i.i.epil, 1
  %i.er = getelementptr inbounds i8, ptr %.sroa.079.013.i.i.epil, i64 -32 ; 2 uses
  %i.es = trunc i64 %.sroa.0107.011.i.i.epil to i8
  store i8 %i.es, ptr %.sroa.084.212.i.i.epil, align 1, !noalias !29065
  %.val.i.i64.epil = load double, ptr %i.er, align 8, !alias.scope !29065, !noundef !67
  %i.et = fcmp ult double %.val.i.i64.epil, %.sroa.09.0.copyload.i
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx = zext i1 %i.et to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i.epil, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel.idx ; 2 uses
  %epil.iter478.next = add i64 %epil.iter478, 1   ; 2 uses
  %epil.iter478.cmp.not = icmp eq i64 %epil.iter478.next, %xtraiter477
  br i1 %epil.iter478.cmp.not, label %.loopexit.i.i, label %.lr.ph14.i.i.epil, !llvm.loop !29034

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph14.i.i.epil, %.preheader5.i.i, %.loopexit7.i.i
  %.sroa.084.1.i.i = phi ptr [ %.sroa.084.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.loopexit.i.i.loopexit.unr-lcssa ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.epil.sroa.sel, %.lr.ph14.i.i.epil ] ; 7 uses
  %.sroa.046.1.i.i = phi ptr [ %.sroa.046.0.i.i, %.loopexit7.i.i ], [ %i.h, %.preheader5.i.i ], [ %i.h, %.lr.ph14.i.i.epil ], [ %i.h, %.loopexit.i.i.loopexit.unr-lcssa ] ; 5 uses
  %i.eu = ptrtoint ptr %.sroa.068.1.i.i to i64
  %i.ev = ptrtoint ptr %.sroa.018.1.i.i to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ptrtoint ptr %.sroa.084.1.i.i to i64
  %i.ey = ptrtoint ptr %.sroa.046.1.i.i to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ew, i64 %i.ez) ; 3 uses
  %.not.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i, label %bb.y, label %bb.z

.lr.ph14.i.i:                                     ; preds = %.lr.ph14.i.i, %.lr.ph14.i.i.preheader.new
  %.sroa.079.013.i.i = phi ptr [ %.sroa.032.0.i.i, %.lr.ph14.i.i.preheader.new ], [ %i.fn, %.lr.ph14.i.i ] ; 4 uses
  %.sroa.084.212.i.i = phi ptr [ %i.h, %.lr.ph14.i.i.preheader.new ], [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3, %.lr.ph14.i.i ] ; 2 uses
  %.sroa.0107.011.i.i = phi i64 [ 0, %.lr.ph14.i.i.preheader.new ], [ %i.fm, %.lr.ph14.i.i ] ; 5 uses
  %niter483 = phi i64 [ 0, %.lr.ph14.i.i.preheader.new ], [ %niter483.next.3, %.lr.ph14.i.i ]
  %i.fb = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -32
  %i.fc = trunc i64 %.sroa.0107.011.i.i to i8
  store i8 %i.fc, ptr %.sroa.084.212.i.i, align 1, !noalias !29065
  %.val.i.i64 = load double, ptr %i.fb, align 8, !alias.scope !29065, !noundef !67
  %i.fd = fcmp ult double %.val.i.i64, %.sroa.09.0.copyload.i
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.fd to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.084.212.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -64
  %i.ff = trunc i64 %.sroa.0107.011.i.i to i8
  %i.fg = or disjoint i8 %i.ff, 1
  store i8 %i.fg, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !noalias !29065
  %.val.i.i64.1 = load double, ptr %i.fe, align 8, !alias.scope !29065, !noundef !67
  %i.fh = fcmp ult double %.val.i.i64.1, %.sroa.09.0.copyload.i
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 = zext i1 %i.fh to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.1 ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -96
  %i.fj = trunc i64 %.sroa.0107.011.i.i to i8
  %i.fk = or disjoint i8 %i.fj, 2
  store i8 %i.fk, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, align 1, !noalias !29065
  %.val.i.i64.2 = load double, ptr %i.fi, align 8, !alias.scope !29065, !noundef !67
  %i.fl = fcmp ult double %.val.i.i64.2, %.sroa.09.0.copyload.i
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx = zext i1 %i.fl to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.1, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel.idx ; 2 uses
  %i.fm = add nuw i64 %.sroa.0107.011.i.i, 4      ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %.sroa.079.013.i.i, i64 -128 ; 3 uses
  %i.fo = trunc i64 %.sroa.0107.011.i.i to i8
  %i.fp = or disjoint i8 %i.fo, 3
  store i8 %i.fp, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, align 1, !noalias !29065
  %.val.i.i64.3 = load double, ptr %i.fn, align 8, !alias.scope !29065, !noundef !67
  %i.fq = fcmp ult double %.val.i.i64.3, %.sroa.09.0.copyload.i
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 = zext i1 %i.fq to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.3 = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.2.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.3 ; 3 uses
  %niter483.next.3 = add nuw i64 %niter483, 4     ; 2 uses
  %niter483.ncmp.3 = icmp eq i64 %niter483.next.3, %unroll_iter482
  br i1 %niter483.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph14.i.i

bb.y:                                             ; preds = %._crit_edge.i.i, %.loopexit.i.i
  %.sroa.046.2.i.i = phi ptr [ %i.gg, %._crit_edge.i.i ], [ %.sroa.046.1.i.i, %.loopexit.i.i ] ; 5 uses
  %.sroa.018.2.i.i = phi ptr [ %i.gf, %._crit_edge.i.i ], [ %.sroa.018.1.i.i, %.loopexit.i.i ] ; 5 uses
  %i.fr = icmp eq ptr %.sroa.018.2.i.i, %.sroa.068.1.i.i
  %spec.select.idx.i.i = select i1 %i.fr, i64 %.sroa.015.1.i.i, i64 0
  %spec.select.i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.01.0.i.i, i64 %spec.select.idx.i.i ; 9 uses
  %i.fs = icmp eq ptr %.sroa.046.2.i.i, %.sroa.084.1.i.i
  %i.ft = sub nsw i64 0, %.sroa.044.1.i.i
  %.sroa.032.1.idx.i.i = select i1 %i.fs, i64 %i.ft, i64 0
  %.sroa.032.1.i.i = getelementptr inbounds [32 x i8], ptr %.sroa.032.0.i.i, i64 %.sroa.032.1.idx.i.i ; 6 uses
  br i1 %i.dl, label %bb.aa, label %bb.u

bb.z:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fu = load i8, ptr %.sroa.018.1.i.i, align 1, !noalias !29065, !noundef !67
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %.sroa.01.0.i.i, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.fw, i64 32, i1 false)
  %i.fx = load i8, ptr %.sroa.046.1.i.i, align 1, !noalias !29065, !noundef !67 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_:bb.a
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  %i.av = lshr i64 %i.au, 57
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit
  %.sroa.011.0.i.i.i.i7 = phi i64 [ 0, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit ], [ %i.bp, %bb.h ]
  %.pn.i.i.i8 = phi i64 [ %i.au, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit ], [ %i.bq, %bb.h ]
  %.sroa.01.0.i.i.i.i9 = and i64 %.pn.i.i.i8, %i.q ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i9
  %.sroa.0.0.copyload.i24.i.i.i10 = load <16 x i8>, ptr %i.az, align 1, !noalias !56394 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, %i.ay
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not.i.not30.i.i.i11 = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not30.i.i.i11, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.f, %bb.g
  %.sroa.05.0.i31.i.i.i13 = phi i16 [ %i.bo, %bb.g ], [ %i.bb, %bb.f ] ; 3 uses
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add i64 %.sroa.01.0.i.i.i.i9, %i.bd
  %i.bf = and i64 %i.be, %i.q
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16
  %.val2.i.i.i.i14 = load i32, ptr %i.bi, align 4, !noalias !56395, !noundef !67
  %i.bj = icmp eq i32 %.0.val3, %.val2.i.i.i.i14
  br i1 %i.bj, label %bb.i, label %bb.g, !prof !77

._crit_edge.i.i.i16:                              ; preds = %bb.g, %bb.f
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, splat (i8 -1)
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %_RNvXs_NtCslwFuT2d6ECx_4core3cmpINtB4_7ReverseINtNtB6_6option6OptionRjEENtB4_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.g:                                             ; preds = %.lr.ph.i.i.i12
  %i.bn = add i16 %.sroa.05.0.i31.i.i.i13, -1
  %i.bo = and i16 %i.bn, %.sroa.05.0.i31.i.i.i13  ; 2 uses
  %.not.i.not.i.i.i15 = icmp eq i16 %i.bo, 0
  br i1 %.not.i.not.i.i.i15, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

bb.h:                                             ; preds = %._crit_edge.i.i.i16
  %i.bp = add i64 %.sroa.011.0.i.i.i.i7, 16       ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.i.i.i9, %i.bp
  br label %bb.f

bb.i:                                             ; preds = %.lr.ph.i.i.i12
  br i1 %.not.i.i, label %bb.j, label %_RNvXs_NtCslwFuT2d6ECx_4core3cmpINtB4_7ReverseINtNtB6_6option6OptionRjEENtB4_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.br, align 8, !noundef !67
  %.val1.i.i.i.i = load i64, ptr %i.an, align 8, !noundef !67
  %i.bs = icmp ult i64 %.val.i.i.i.i, %.val1.i.i.i.i
  br label %_RNvXs_NtCslwFuT2d6ECx_4core3cmpINtB4_7ReverseINtNtB6_6option6OptionRjEENtB4_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

_RNvXs_NtCslwFuT2d6ECx_4core3cmpINtB4_7ReverseINtNtB6_6option6OptionRjEENtB4_10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i.i.i16, %bb.a, %bb.i, %bb.j
  %.sroa.0.0.i.i.i = phi i1 [ %i.bs, %bb.j ], [ false, %bb.i ], [ false, %bb.a ], [ %.not.i.i, %._crit_edge.i.i.i16 ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx(ptr nofree readonly captures(none) %.0.val, i32 %.0.val1, i32 %.0.val3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val4 = load ptr, ptr %.0.val, align 8, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56424)
  %i.a = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !56424, !noundef !67
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit23.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val4, i64 32
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !56425, !noalias !56426, !noundef !67 ; 2 uses
  %i.e = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !56427, !noundef !67
  %i.f = zext i32 %.0.val1 to i64
  %i.g = xor i64 %.val.i.i, %i.f
  %i.h = zext i64 %i.g to i128
  %i.i = zext i64 %i.e to i128                    ; 2 uses
  %i.j = mul nuw i128 %i.i, %i.h                  ; 2 uses
  %i.k = lshr i128 %i.j, 64
  %i.l = xor i128 %i.k, %i.j
  %i.m = trunc i128 %i.l to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56429)
  %i.n = lshr i64 %i.m, 57
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !56430, !noalias !56431, !noundef !67 ; 4 uses
  %i.r = load ptr, ptr %.val4, align 8, !alias.scope !56430, !noalias !56431, !nonnull !67, !noundef !67 ; 4 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ak, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.m, %bb.b ], [ %i.al, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.q  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !56432 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.05.0.i31.i.i.i = phi i16 [ %i.aj, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.q
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %.val2.i.i.i.i = load i32, ptr %i.ad, align 4, !noalias !56433, !noundef !67
  %i.ae = icmp eq i32 %.0.val1, %.val2.i.i.i.i
  br i1 %i.ae, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit, label %bb.d, !prof !77

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i, %i.ak
  br label %bb.c

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i
  %i.am = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ null, %._crit_edge.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = zext i32 %.0.val3 to i64
  %i.ap = xor i64 %.val.i.i, %i.ao
  %i.aq = zext i64 %i.ap to i128
  %i.ar = mul nuw i128 %i.i, %i.aq                ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  %i.av = lshr i64 %i.au, 57
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit
  %.sroa.011.0.i.i.i.i7 = phi i64 [ 0, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit ], [ %i.bp, %bb.h ]
  %.pn.i.i.i8 = phi i64 [ %i.au, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit ], [ %i.bq, %bb.h ]
  %.sroa.01.0.i.i.i.i9 = and i64 %.pn.i.i.i8, %i.q ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i9
  %.sroa.0.0.copyload.i24.i.i.i10 = load <16 x i8>, ptr %i.az, align 1, !noalias !56434 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, %i.ay
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not.i.not30.i.i.i11 = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not30.i.i.i11, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.f, %bb.g
  %.sroa.05.0.i31.i.i.i13 = phi i16 [ %i.bo, %bb.g ], [ %i.bb, %bb.f ] ; 3 uses
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add i64 %.sroa.01.0.i.i.i.i9, %i.bd
  %i.bf = and i64 %i.be, %i.q
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16
  %.val2.i.i.i.i14 = load i32, ptr %i.bi, align 4, !noalias !56435, !noundef !67
  %i.bj = icmp eq i32 %.0.val3, %.val2.i.i.i.i14
  br i1 %i.bj, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17, label %bb.g, !prof !77

._crit_edge.i.i.i16:                              ; preds = %bb.g, %bb.f
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, splat (i8 -1)
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17, !prof !71

bb.g:                                             ; preds = %.lr.ph.i.i.i12
  %i.bn = add i16 %.sroa.05.0.i31.i.i.i13, -1
  %i.bo = and i16 %i.bn, %.sroa.05.0.i31.i.i.i13  ; 2 uses
  %.not.i.not.i.i.i15 = icmp eq i16 %i.bo, 0
  br i1 %.not.i.not.i.i.i15, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

bb.h:                                             ; preds = %._crit_edge.i.i.i16
  %i.bp = add i64 %.sroa.011.0.i.i.i.i7, 16       ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.i.i.i9, %i.bp
  br label %bb.f

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17: ; preds = %._crit_edge.i.i.i16, %.lr.ph.i.i.i12
  %i.br = phi ptr [ %i.bh, %.lr.ph.i.i.i12 ], [ null, %._crit_edge.i.i.i16 ] ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.br, null           ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8 ; 2 uses
  %.sroa.0.0.i2217 = select i1 %.not.i.i18, ptr null, ptr %i.bs
  br i1 %.not.i.i, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit23.thread, label %bb.i

bb.i:                                             ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17
  br i1 %.not.i.i18, label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit, label %bb.j

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit23.thread: ; preds = %bb.a, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17
  %.sroa.0.0.i2216 = phi ptr [ %.sroa.0.0.i2217, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17 ], [ null, %bb.a ]
  %.not1.i.i = icmp ne ptr %.sroa.0.0.i2216, null
  br label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.i
  %.val.i.i.i = load i64, ptr %i.an, align 8, !noundef !67
  %.val1.i.i.i = load i64, ptr %i.bs, align 8, !noundef !67
  %i.bt = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  br label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit23.thread, %bb.j
  %.sroa.0.0.i.i25 = phi i1 [ %i.bt, %bb.j ], [ %.not1.i.i, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit23.thread ], [ false, %bb.i ]
  ret i1 %.sroa.0.0.i.i25
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx(ptr nofree readonly captures(none) %.0.val, i32 %.0.val1, i32 %.0.val3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val4 = load ptr, ptr %.0.val, align 8, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56464)
  %i.a = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !56464, !noundef !67
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit23.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val4, i64 32
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !56465, !noalias !56466, !noundef !67 ; 2 uses
  %i.e = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !56467, !noundef !67
  %i.f = zext i32 %.0.val1 to i64
  %i.g = xor i64 %.val.i.i, %i.f
  %i.h = zext i64 %i.g to i128
  %i.i = zext i64 %i.e to i128                    ; 2 uses
  %i.j = mul nuw i128 %i.i, %i.h                  ; 2 uses
  %i.k = lshr i128 %i.j, 64
  %i.l = xor i128 %i.k, %i.j
  %i.m = trunc i128 %i.l to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56469)
  %i.n = lshr i64 %i.m, 57
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !56470, !noalias !56471, !noundef !67 ; 4 uses
  %i.r = load ptr, ptr %.val4, align 8, !alias.scope !56470, !noalias !56471, !nonnull !67, !noundef !67 ; 4 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ak, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.m, %bb.b ], [ %i.al, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.q  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !56472 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.05.0.i31.i.i.i = phi i16 [ %i.aj, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.q
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %.val2.i.i.i.i = load i32, ptr %i.ad, align 4, !noalias !56473, !noundef !67
  %i.ae = icmp eq i32 %.0.val1, %.val2.i.i.i.i
  br i1 %i.ae, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit, label %bb.d, !prof !77

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i, %i.ak
  br label %bb.c

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i
  %i.am = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ null, %._crit_edge.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = zext i32 %.0.val3 to i64
  %i.ap = xor i64 %.val.i.i, %i.ao
  %i.aq = zext i64 %i.ap to i128
  %i.ar = mul nuw i128 %i.i, %i.aq                ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  %i.av = lshr i64 %i.au, 57
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit
  %.sroa.011.0.i.i.i.i7 = phi i64 [ 0, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit ], [ %i.bp, %bb.h ]
  %.pn.i.i.i8 = phi i64 [ %i.au, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit ], [ %i.bq, %bb.h ]
  %.sroa.01.0.i.i.i.i9 = and i64 %.pn.i.i.i8, %i.q ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i.i9
  %.sroa.0.0.copyload.i24.i.i.i10 = load <16 x i8>, ptr %i.az, align 1, !noalias !56474 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, %i.ay
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not.i.not30.i.i.i11 = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not30.i.i.i11, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.f, %bb.g
  %.sroa.05.0.i31.i.i.i13 = phi i16 [ %i.bo, %bb.g ], [ %i.bb, %bb.f ] ; 3 uses
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add i64 %.sroa.01.0.i.i.i.i9, %i.bd
  %i.bf = and i64 %i.be, %i.q
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16
  %.val2.i.i.i.i14 = load i32, ptr %i.bi, align 4, !noalias !56475, !noundef !67
  %i.bj = icmp eq i32 %.0.val3, %.val2.i.i.i.i14
  br i1 %i.bj, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17, label %bb.g, !prof !77

._crit_edge.i.i.i16:                              ; preds = %bb.g, %bb.f
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10, splat (i8 -1)
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = icmp eq i16 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17, !prof !71

bb.g:                                             ; preds = %.lr.ph.i.i.i12
  %i.bn = add i16 %.sroa.05.0.i31.i.i.i13, -1
  %i.bo = and i16 %i.bn, %.sroa.05.0.i31.i.i.i13  ; 2 uses
  %.not.i.not.i.i.i15 = icmp eq i16 %i.bo, 0
  br i1 %.not.i.not.i.i.i15, label %._crit_edge.i.i.i16, label %.lr.ph.i.i.i12

bb.h:                                             ; preds = %._crit_edge.i.i.i16
  %i.bp = add i64 %.sroa.011.0.i.i.i.i7, 16       ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.i.i.i9, %i.bp
  br label %bb.f

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17: ; preds = %._crit_edge.i.i.i16, %.lr.ph.i.i.i12
  %i.br = phi ptr [ %i.bh, %.lr.ph.i.i.i12 ], [ null, %._crit_edge.i.i.i16 ] ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.br, null           ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8 ; 2 uses
  %.sroa.0.0.i2217 = select i1 %.not.i.i18, ptr null, ptr %i.bs
  br i1 %.not.i.i, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit23.thread, label %bb.i

bb.i:                                             ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17
  br i1 %.not.i.i18, label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit, label %bb.j

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit23.thread: ; preds = %bb.a, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17
  %.sroa.0.0.i2216 = phi ptr [ %.sroa.0.0.i2217, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17 ], [ null, %bb.a ]
  %.not1.i.i = icmp ne ptr %.sroa.0.0.i2216, null
  br label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.i
  %.val.i.i.i = load i64, ptr %i.an, align 8, !noundef !67
  %.val1.i.i.i = load i64, ptr %i.bs, align 8, !noundef !67
  %i.bt = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  br label %_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit

_RNvYINtNtCslwFuT2d6ECx_4core6option6OptionRjENtNtB7_3cmp10PartialOrd2ltCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit23.thread, %bb.j
  %.sroa.0.0.i.i25 = phi i1 [ %i.bt, %bb.j ], [ %.not1.i.i, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit23.thread ], [ false, %bb.i ]
  ret i1 %.sroa.0.0.i.i25
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBp_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBp_4RuleE5parse5rules7visible9stmt_list000s_0000Br_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.012.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !56510
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %.sroa.012.0.copyload.i to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !56510
  %.sroa.513.0.copyload.i = load i64, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !56510 ; 2 uses
  %.not.i = icmp ult i64 %.sroa.513.0.copyload.i, %.sroa.6.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNCNCNCNCNCNCNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible9stmt_list000s_00000EB12_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %.sroa.513.0.copyload.i, 1
  store i64 %i.e, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !56510
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !56510, !noundef !67 ; 3 uses
  %i.h = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.j = tail call fastcc { i64, ptr } @_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible9edge_stmt(ptr noalias noundef nonnull align 8 %0) #64, !inline_history !56478 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %i.m = trunc nuw i64 %i.k to i1
  br i1 %i.m, label %bb.e, label %.thread1

bb.e:                                             ; preds = %bb.d
  %i.n = tail call fastcc { i64, ptr } @_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible9node_stmt(ptr noalias noundef nonnull align 8 %i.l) #64 ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %bb.f, label %.thread1

bb.f:                                             ; preds = %bb.e
  %i.r = tail call fastcc { i64, ptr } @_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible9attr_stmt(ptr noalias noundef nonnull align 8 %i.p) #64 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  %i.u = trunc nuw i64 %i.s to i1
  br i1 %i.u, label %bb.g, label %.thread1

bb.g:                                             ; preds = %bb.f
  %i.v = tail call fastcc { i64, ptr } @_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible10assignment(ptr noalias noundef nonnull align 8 %i.t) #64 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.h, label %.thread1

.thread1:                                         ; preds = %bb.d, %bb.g, %bb.f, %bb.e
  %.sroa.5.0.i.i = phi ptr [ %i.x, %bb.g ], [ %i.t, %bb.f ], [ %i.p, %bb.e ], [ %i.l, %bb.d ]
  %i.z = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.5.0.i.i, 1
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible4stmt.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE4ruleNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules7visible8subgraph0EB12_(ptr noalias noundef nonnull align 8 %i.x) #64
  br label %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible4stmt.exit.i

_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible4stmt.exit.i: ; preds = %bb.h, %.thread1
  %.merged.i.i = phi { i64, ptr } [ %i.aa, %bb.h ], [ %i.z, %.thread1 ] ; 2 uses
  %i.ab = extractvalue { i64, ptr } %.merged.i.i, 0
  %i.ac = extractvalue { i64, ptr } %.merged.i.i, 1 ; 4 uses
  %i.ad = trunc nuw i64 %i.ab to i1
  br i1 %i.ad, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBb_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBb_4RuleE5parse5rules7visible4stmt.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 289
  %i.af = load i8, ptr %i.ae, align 1, !range !78, !alias.scope !56511, !noundef !67
  %i.ag = icmp eq i8 %i.af, 2
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ac, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ai = tail call fastcc { i64, ptr } @_RINvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB6_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8sequenceNCNvNtNtNvXs0_B10_NtB10_9DotParserINtNtB8_6parser6ParserBY_E5parse5rules6hidden4skip0EB12_(ptr noalias noundef nonnull align 8 %i.ac) #64, !inline_history !56481
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.merged.i7.i = phi { i64, ptr } [ %i.ai, %bb.k ], [ %i.ah, %bb.j ] ; 2 uses
  %i.aj = extractvalue { i64, ptr } %.merged.i7.i, 0
  %i.ak = extractvalue { i64, ptr } %.merged.i7.i, 1 ; 7 uses
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.012.0.copyload.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !56512
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.am = trunc nuw i64 %.sroa.012.0.copyload.i.i.i to i1
  br i1 %i.am, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !56512 ; 2 uses
  %.sroa.513.0.copyload.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !alias.scope !56512 ; 3 uses
  %.not.i.i.i = icmp ult i64 %.sroa.513.0.copyload.i.i.i, %.sroa.6.0.copyload.i.i.i
  br i1 %.not.i.i.i, label %bb.o, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit

bb.o:                                             ; preds = %bb.n
  %i.an = add nuw i64 %.sroa.513.0.copyload.i.i.i, 1 ; 2 uses
  store i64 %i.an, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !alias.scope !56512
  %.not.i.i.i.i.i = icmp ult i64 %i.an, %.sroa.6.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.p, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit

bb.p:                                             ; preds = %bb.o
  %i.ao = add nuw i64 %.sroa.513.0.copyload.i.i.i, 2
  store i64 %i.ao, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !alias.scope !56513
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.ap = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1290, i64 noundef 1) #64, !inline_history !56481 ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0
  %i.ar = extractvalue { i64, ptr } %i.ap, 1      ; 2 uses
  %i.as = trunc nuw i64 %i.aq to i1
  br i1 %i.as, label %bb.r, label %.thread.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.at = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1291, i64 noundef 1) #64, !inline_history !56481 ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = extractvalue { i64, ptr } %i.at, 1      ; 2 uses
  %i.aw = trunc nuw i64 %i.au to i1
  br i1 %i.aw, label %bb.s, label %.thread.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ax = tail call fastcc { i64, ptr } @_RNvMs8_NtCscnlsAxKLLci_4pest12parser_stateINtB5_11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12match_stringB11_(ptr noalias noundef nonnull align 8 %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1292, i64 noundef 2) #64, !inline_history !56481 ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.ax, 0
  %i.az = extractvalue { i64, ptr } %i.ax, 1      ; 2 uses
  %i.ba = trunc nuw i64 %i.ay to i1
  br i1 %i.ba, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread, label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.6.013.i.i.i.i.i.i = phi ptr [ %i.az, %bb.s ], [ %i.ar, %bb.q ], [ %i.av, %bb.r ] ; 10 uses
  %.sroa.09.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.013.i.i.i.i.i.i, align 8, !alias.scope !56514
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i.i.i.i.i, i64 8 ; 3 uses
  %i.bb = trunc nuw i64 %.sroa.09.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.bb, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.thread.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i.i.i.i.i, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !56514 ; 2 uses
  %.sroa.510.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !56514 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i, %.sroa.6.0.copyload.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bc = add nuw i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.bc, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !56514
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.bc, %.sroa.6.0.copyload.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %_RNCNCNCNCNCNCNCNCNvNtNtNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtBr_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtBr_4RuleE5parse5rules7visible9stmt_list000s_00000Bt_.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bd = add nuw i64 %.sroa.510.0.copyload.i.i.i.i.i.i.i, 2
  store i64 %i.bd, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !56515
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i.i.i.i.i, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !56515, !noundef !67 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 230584300921369396
  tail call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i.i.i.i.i, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i.i.i.i.i, i64 289
  %i.bj = load i8, ptr %i.bi, align 1, !range !78, !alias.scope !56516, !noundef !67
  %i.bk = icmp eq i8 %i.bj, 2
  br i1 %i.bk, label %bb.x, label %bb.y

end_hunk_4
begin_hunk_5_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path29graph_k_shortest_path_lengths:bb.a
          to label %.noexc35 unwind label %.thread.thread186

.noexc35:                                         ; preds = %bb.ar
  %i.fj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !124710
  %i.fk = icmp eq i8 %i.fj, 2
  br i1 %i.fk, label %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37, label %bb.as, !prof !77

bb.as:                                            ; preds = %.noexc35
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37 unwind label %.thread.thread186

_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37: ; preds = %bb.as, %.noexc35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.774, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false)
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37, %bb.au
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload77, %bb.au ], [ %i.fi, %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37 ]
  %.sroa.671.0 = phi i64 [ %.sroa.671.0.copyload73, %bb.au ], [ 0, %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37 ]
  %.sroa.568.0 = phi ptr [ %.sroa.568.0.copyload70, %bb.au ], [ inttoptr (i64 8 to ptr), %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37 ]
  %.sroa.066.0 = phi i64 [ %.sroa.066.0.copyload67, %bb.au ], [ 0, %_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher3newCskcxRuJ53GpR_9rustworkx.exit37 ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.066.0, ptr %i.fl, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.568.0, ptr %.sroa.479.0..sroa_idx, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.671.0, ptr %.sroa.580.0..sroa_idx, align 8
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.774, i64 32, i1 false)
  %.sroa.782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.8.0, ptr %.sroa.782.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %i.fm = shl nuw nsw i64 %.sroa.02.0.i.i.i52128.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.fm, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit

bb.at:                                            ; preds = %.noexc30, %bb.aq
  store i64 0, ptr %i.g, align 8, !alias.scope !124711
  %.sroa.42.0..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i27, align 8, !alias.scope !124711
  %.sroa.53.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i28, align 8, !alias.scope !124711
  %.sroa.6.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i29, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  store i64 %i.ff, ptr %i.fn, align 8, !alias.scope !124711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 dereferenceable(64) %i.g, i64 noundef %6, double noundef %i.fe)
          to label %bb.au unwind label %.thread.thread

.thread.thread:                                   ; preds = %bb.at
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.g) #63
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i40

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.066.0.copyload67 = load i64, ptr %i.g, align 8
  %.sroa.568.0.copyload70 = load ptr, ptr %.sroa.42.0..sroa_idx.i.i27, align 8
  %.sroa.671.0.copyload73 = load i64, ptr %.sroa.53.0..sroa_idx.i.i28, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.774, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i29, i64 32, i1 false)
  %.sroa.8.0.copyload77 = load i64, ptr %i.fn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.ad, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  %i.fp = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.fp, align 8, !noundef !67
  %i.fq = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.fq, label %bb.aw, label %bb.av, !prof !125

bb.av:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

bb.aw:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit
  call void @_Py_DecRef(ptr noundef nonnull %4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

bb.ax:                                            ; preds = %.body
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.ay:                                            ; preds = %bb.ai, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fs, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124703
  store i64 0, ptr %0, align 8
  %i.ft = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i38 = load i64, ptr %i.ft, align 8, !noundef !67
  %i.fu = icmp sgt i64 %.val.i.i.i.i.i38, 0
  br i1 %i.fu, label %bb.ba, label %bb.az, !prof !125

bb.az:                                            ; preds = %bb.ay
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %4)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

bb.ba:                                            ; preds = %bb.ay
  call void @_Py_DecRef(ptr noundef nonnull %4) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit: ; preds = %bb.ba, %bb.az, %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.thread.thread186:                                ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i40

.thread:                                          ; preds = %bb.an
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = icmp eq i64 %.sroa.02.0.i.i.i52128.i, 0
  br i1 %i.fv, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i40

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i40: ; preds = %.thread.thread186, %.thread.thread, %.thread
  %.pn128185 = phi { ptr, i32 } [ %i.fo, %.thread.thread ], [ %lpad.thr_comm.split-lp, %.thread ], [ %lpad.thr_comm, %.thread.thread186 ]
  %i.fw = shl nuw nsw i64 %.sroa.02.0.i.i.i52128.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %.body

bb.bb:                                            ; preds = %.body
  resume { ptr, i32 } %.pn13
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, i64 noundef %2, i64 noundef range(i64 0, 2) %3, i64 %4, ptr noundef %5, double noundef %6, i1 noundef zeroext %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 20 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.4.i.i.i.i.i.i = alloca i64, align 8      ; 5 uses
  %.sroa.9.i.i.i.i.i.i = alloca i64, align 8      ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 12 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [72 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 11 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 20 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.13313 = alloca [40 x i8], align 8        ; 5 uses
  %i.ab = alloca [88 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 6 uses
  %i.ac = alloca [88 x i8], align 8               ; 12 uses
  %.sroa.14283 = alloca [40 x i8], align 8        ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [64 x i8], align 8               ; 35 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 3 uses
  store i64 %2, ptr %i.ah, align 8
  %i.ai = trunc i64 %2 to i32                     ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val64 = load ptr, ptr %i.aj, align 8, !nonnull !67, !noundef !67 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val65 = load i64, ptr %i.ak, align 8, !noundef !67 ; 3 uses
  %i.al = and i64 %2, 4294967295                  ; 8 uses
  %i.am = icmp ugt i64 %.val65, %i.al
  br i1 %i.am, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.val64, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !noundef !67
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %select.unfold, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %select.unfold, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.thread

select.unfold:                                    ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ah, ptr %i.af, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noundef nonnull @569, ptr noundef nonnull %i.af)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.c

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b
  %i.aq = trunc nuw i64 %3 to i1                  ; 2 uses
  %i.ar = trunc i64 %4 to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load i64, ptr %i.as, align 8, !noundef !67
  invoke fastcc void @_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1l_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher13with_capacityCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.ae, i64 noundef %i.at)
          to label %bb.j unwind label %bb.c

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.sroa.0336.0.copyload = load i64, ptr %i.ag, align 8 ; 3 uses
  %.sroa.5338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5338.0.copyload = load ptr, ptr %.sroa.5338.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.6341.0.copyload = load i64, ptr %.sroa.6341.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !125072
  %i.au = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125072 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.d, label %bb.f, !prof !104

bb.d:                                             ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #61
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = icmp eq i64 %.sroa.0336.0.copyload, 0
  br i1 %i.ax, label %.thread, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5338.0.copyload) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5338.0.copyload, i64 noundef %.sroa.0336.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !125073
  br label %.thread

bb.f:                                             ; preds = %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit
  store i64 %.sroa.0336.0.copyload, ptr %i.au, align 8
  %.sroa.5338.0..sroa_idx339 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.5338.0.copyload, ptr %.sroa.5338.0..sroa_idx339, align 8
  %.sroa.6341.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %.sroa.6341.0.copyload, ptr %.sroa.6341.0..sroa_idx342, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.031.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.031.sroa.5.0..sroa_idx, align 8
  %.sroa.031.sroa.5.sroa.4.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.031.sroa.5.sroa.4.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.031.sroa.5.sroa.5.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.au, ptr %.sroa.031.sroa.5.sroa.5.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.031.sroa.5.sroa.6.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @570, ptr %.sroa.031.sroa.5.sroa.6.0..sroa.031.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.432.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.az = icmp eq ptr %5, null
  br i1 %i.az, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.ba, align 8, !noundef !67
  %i.bb = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.bb, label %bb.i, label %bb.h, !prof !125

bb.h:                                             ; preds = %bb.g
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %5)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.i:                                             ; preds = %bb.g
  call void @_Py_DecRef(ptr noundef nonnull %5) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %bb.h, %bb.f, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit250, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit
  ret void

bb.j:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %.not.i76 = icmp eq ptr %5, null                ; 3 uses
  br i1 %.not.i76, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = ptrtoint ptr %5 to i64
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.bd = bitcast double %6 to i64                ; 2 uses
  %.not.i.i.i = icmp sgt i64 %i.bd, -1
  br i1 %.not.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = fcmp uno double %6, 0.000000e+00
  br i1 %i.be, label %bb.p, label %bb.t

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !125074
  %i.bf = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125074 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.o, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !104

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #61
          to label %.noexc77 unwind label %bb.r

.noexc77:                                         ; preds = %bb.o
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.n
  store ptr @1493, ptr %i.bf, align 8, !noalias !125074
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.bh = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 16) #64
          to label %.noexc78 unwind label %bb.r   ; 2 uses

.noexc78:                                         ; preds = %bb.p
  store ptr @1492, ptr %i.bh, align 8, !noalias !125074
  br label %bb.s

bb.q:                                             ; preds = %.body85, %bb.r
  %.pn57 = phi { ptr, i32 } [ %i.bi, %bb.r ], [ %.pn, %.body85 ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ae) #63
  br label %bb.fk

bb.r:                                             ; preds = %bb.fg, %bb.cn, %bb.p, %bb.o
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %.noexc78, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i
  %.sink20.i.i = phi ptr [ %i.bh, %.noexc78 ], [ %i.bf, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i ] ; 2 uses
  %.sink.i.i = phi i64 [ 26, %.noexc78 ], [ 31, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink20.i.i, i64 8
  store i64 %.sink.i.i, ptr %i.bj, align 8, !noalias !125074
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0..sroa_idx393 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.5.0..sroa_idx393, align 8
  %.sroa.6394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.6394.0..sroa_idx, align 8
  %.sroa.7395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sink20.i.i, ptr %.sroa.7395.0..sroa_idx, align 8
  %.sroa.8396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @518, ptr %.sroa.8396.0..sroa_idx, align 8
  %.sroa.10398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.10398.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCskcxRuJ53GpR_9rustworkx6CostFnEBD_.exit

bb.t:                                             ; preds = %bb.k, %bb.m
  %.sroa.5266.0.ph = phi i64 [ 0, %bb.m ], [ 1, %bb.k ] ; 2 uses
  %.sroa.10.0.ph = phi i64 [ %i.bd, %bb.m ], [ %i.bc, %bb.k ] ; 2 uses
  store i64 %.sroa.5266.0.ph, ptr %i.ad, align 8
  %.sroa.4354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store i64 %.sroa.10.0.ph, ptr %.sroa.4354.0..sroa_idx, align 8
  %i.bl = inttoptr i64 %.sroa.10.0.ph to ptr      ; 3 uses
  br i1 %7, label %bb.bx, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125076)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !125077
  %.idx878 = shl nuw nsw i64 %.val65, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.val64, i64 %.idx878 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %.not.i.i.i.i = icmp eq ptr %.val64, %i.bo
  br i1 %.not.i.i.i.i, label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %i.bn = phi ptr [ %i.bm, %.lr.ph ], [ %i.bo, %bb.u ]
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16 ; 4 uses
  %.val.i.i.i.i.i79 = load ptr, ptr %i.bo, align 8, !noalias !125078, !noundef !67
  %.not.i.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i79, null
  br i1 %.not.i.not.i.i.i.i.i, label %bb.u, label %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i

_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i: ; preds = %bb.v
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %.val64 to i64
  %i.br = sub nuw i64 %i.bp, %i.bq
  %i.bs = lshr exact i64 %i.br, 4
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = add nuw nsw i64 %i.bt, 1
  br label %_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsl_NtCs68Jln09rRqb_8petgraph5visitRINtNtNtB7_10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1t_5types3any5PyAnyEB1o_ENtB5_9Visitable9visit_mapCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.u, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.bu, %_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBb_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2I_5types3any5PyAnyEEEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCskcxRuJ53GpR_9rustworkx.exit.thread.split.loop.exit7.i.i.i.i.i ], [ 0, %bb.u ]
  invoke void @_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef %.sroa.02.0.i.i.i.i.i)
          to label %.lr.ph816 unwind label %bb.by

.noexc83:                                         ; preds = %.lr.ph816
  %.not.i.i.i80 = icmp eq ptr %.val64, %i.bw
  br i1 %.not.i.i.i80, label %.thread.i, label %.lr.ph816

.thread.i:                                        ; preds = %.noexc83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !125077
  store i64 0, ptr %i.z, align 8, !noalias !125077
  %.sroa.419.0..sroa_idx249.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx249.i, align 8, !noalias !125077
end_hunk_5
begin_hunk_6_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths:bb.a
  %xtraiter = and i64 %i.cb, 7                    ; 3 uses
  %i.ch = icmp samesign ult i64 %i.cc, 8
  br i1 %i.ch, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.cb, 4294967288
  br label %.lr.ph.i.i.i.i

._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa:    ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.022.i.i.i.i.epil.init = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.preheader ], [ %i.cq, %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod956 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod956)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.022.i.i.i.i.epil = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.022.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  store i64 0, ptr %.sroa.0.022.i.i.i.i.epil, align 8, !noalias !125082
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !124746

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %.sroa.0.0.lcssa29.i.i.i.i = phi ptr [ %i.cf, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.cq, %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa ], [ %i.ci, %.lr.ph.i.i.i.i.epil ]
  store i64 0, ptr %.sroa.0.0.lcssa29.i.i.i.i, align 8, !noalias !125082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !125077
  store i64 0, ptr %i.z, align 8, !noalias !125077
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 18 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !125077
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !125077
  %.not.i81 = icmp samesign ult i64 %i.cc, %i.al
  br i1 %.not.i81, label %bb.z, label %bb.aa

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.preheader.new ], [ %i.cq, %.lr.ph.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  store i64 0, ptr %.sroa.0.022.i.i.i.i, align 8, !noalias !125082
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 16
  store i64 0, ptr %i.cj, align 8, !noalias !125082
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 32
  store i64 0, ptr %i.ck, align 8, !noalias !125082
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 48
  store i64 0, ptr %i.cl, align 8, !noalias !125082
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 64
  store i64 0, ptr %i.cm, align 8, !noalias !125082
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 80
  store i64 0, ptr %i.cn, align 8, !noalias !125082
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 96
  store i64 0, ptr %i.co, align 8, !noalias !125082
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 112
  store i64 0, ptr %i.cp, align 8, !noalias !125082
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 128 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i181.i, %bb.bu, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.bd, %bb.au, %.loopexit.split-lp.i, %.loopexit294.i, %bb.y
  %.sroa.419.0..sroa_idx256.i = phi ptr [ %.sroa.419.0..sroa_idx.i, %bb.bu ], [ %.sroa.419.0..sroa_idx.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %.sroa.419.0..sroa_idx.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i181.i ], [ %.sroa.419.0..sroa_idx257.i, %bb.y ], [ %.sroa.419.0..sroa_idx.i, %bb.au ], [ %.sroa.419.0..sroa_idx.i, %bb.bd ], [ %.sroa.419.0..sroa_idx.i, %.loopexit.split-lp.i ], [ %.sroa.419.0..sroa_idx.i, %.loopexit294.i ]
  %.sroa.4.0.i5.i253.i = phi i64 [ %i.cd, %bb.bu ], [ %i.cd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %i.cd, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i181.i ], [ %.sroa.4.0.i5.i254.i, %bb.y ], [ %i.cd, %bb.au ], [ %i.cd, %bb.bd ], [ %i.cd, %.loopexit.split-lp.i ], [ %i.cd, %.loopexit294.i ] ; 2 uses
  %i.cr = phi ptr [ %i.cf, %bb.bu ], [ %i.cf, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %i.cf, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i181.i ], [ %i.cu, %bb.y ], [ %i.cf, %bb.au ], [ %i.cf, %bb.bd ], [ %i.cf, %.loopexit.split-lp.i ], [ %i.cf, %.loopexit294.i ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %lpad.phi304.i, %bb.bu ], [ %lpad.phi299.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %lpad.phi304.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i181.i ], [ %i.cv, %bb.y ], [ %lpad.thr_comm.split-lp.i, %bb.au ], [ %lpad.phi299.i, %bb.bd ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit294.i ] ; 2 uses
  %.val57.i = load i64, ptr %i.z, align 8, !noalias !125077 ; 2 uses
  %i.cs = icmp eq i64 %.val57.i, 0
  br i1 %i.cs, label %bb.bw, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i82

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i82: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i
  %.val58.i = load ptr, ptr %.sroa.419.0..sroa_idx256.i, align 8, !noalias !125077, !nonnull !67, !noundef !67
  %i.ct = shl nuw i64 %.val57.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i, i64 noundef %i.ct, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125080
  br label %bb.bw

bb.y:                                             ; preds = %bb.ah, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i, %bb.ac, %bb.aa, %bb.z
  %.sroa.419.0..sroa_idx257.i = phi ptr [ %.sroa.419.0..sroa_idx.i, %bb.ah ], [ %.sroa.419.0..sroa_idx.i, %bb.ac ], [ %.sroa.419.0..sroa_idx.i, %bb.aa ], [ %.sroa.419.0..sroa_idx258.i, %bb.z ], [ %.sroa.419.0..sroa_idx.i, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i ]
  %.sroa.4.0.i5.i254.i = phi i64 [ %i.cd, %bb.ah ], [ %i.cd, %bb.ac ], [ %i.cd, %bb.aa ], [ %.sroa.4.0.i5.i255.i, %bb.z ], [ %i.cd, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i ]
  %i.cu = phi ptr [ %i.cf, %bb.ah ], [ %i.cf, %bb.ac ], [ %i.cf, %bb.aa ], [ %i.cw, %bb.z ], [ %i.cf, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i ]
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i

bb.z:                                             ; preds = %._crit_edge.thread.i.i.i.i, %.thread.i
  %.sroa.419.0..sroa_idx258.i = phi ptr [ %.sroa.419.0..sroa_idx249.i, %.thread.i ], [ %.sroa.419.0..sroa_idx.i, %._crit_edge.thread.i.i.i.i ]
  %.sroa.4.0.i5.i255.i = phi i64 [ 0, %.thread.i ], [ %i.cd, %._crit_edge.thread.i.i.i.i ] ; 2 uses
  %i.cw = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i ], [ %i.cf, %._crit_edge.thread.i.i.i.i ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.sroa.4.0.i5.i255.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4125) #60
          to label %.noexc80.i unwind label %bb.y, !noalias !125080

.noexc80.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %._crit_edge.thread.i.i.i.i
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.al ; 2 uses
  store i64 1, ptr %i.cx, align 8, !noalias !125080
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store double 0.000000e+00, ptr %i.cy, align 8, !noalias !125080
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125083)
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #62
          to label %bb.ab unwind label %bb.y, !noalias !125080

bb.ab:                                            ; preds = %bb.aa
  %i.cz = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !125084, !noalias !125077, !nonnull !67, !noundef !67 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 1, ptr %.sroa.520.0..sroa_idx.i, align 8, !alias.scope !125084, !noalias !125077
  store double 0.000000e+00, ptr %i.cz, align 8, !noalias !125085
  store i32 %i.ai, ptr %i.da, align 8, !noalias !125085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !125077
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !125080
  %i.db = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !125080 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ac, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i, !prof !104

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #61
          to label %.noexc83.i unwind label %bb.y, !noalias !125080

.noexc83.i:                                       ; preds = %bb.ac
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.ab
  store i32 %i.ai, ptr %i.db, align 4, !noalias !125080
  store i64 1, ptr %i.y, align 8, !noalias !125077
  %i.dd = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.db, ptr %i.dd, align 8, !noalias !125077
  %i.de = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 1, ptr %i.de, align 8, !noalias !125077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !125077
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) dereferenceable_or_null(64) %i.ae, i32 noundef %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.ad unwind label %bb.y, !noalias !125080

bb.ad:                                            ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0194.0.copyload.i = load i64, ptr %i.df, align 8, !noalias !125077 ; 2 uses
  %.sroa.4195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.4195.0.copyload.i = load ptr, ptr %.sroa.4195.0..sroa_idx.i, align 8, !noalias !125077 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !125077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !125077
  %.0.val.off.i.i = add i64 %.sroa.0194.0.copyload.i, -1
  %switch.i.i = icmp ult i64 %.0.val.off.i.i, -2
  br i1 %switch.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i: ; preds = %bb.ad
  %i.dg = shl nuw i64 %.sroa.0194.0.copyload.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4195.0.copyload.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4195.0.copyload.i, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !125080
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !125077
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef align 8 dereferenceable(24) %i.z), !noalias !125080
  %i.dh = load i64, ptr %i.x, align 8, !range !68, !noalias !125077, !noundef !67
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %.lr.ph360.i, label %._crit_edge361.i

.lr.ph360.i:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !125075, !noalias !125086, !nonnull !67
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !125075, !noalias !125086 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i122.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.52.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i150.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i151.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.backedge305.i, %.lr.ph360.i
  %i.dx = load double, ptr %i.dj, align 8, !noalias !125077, !noundef !67
  %i.dy = load i32, ptr %i.dk, align 8, !noalias !125077, !noundef !67 ; 4 uses
  %.val50.i = load i64, ptr %i.dl, align 8, !noalias !125077, !noundef !67 ; 2 uses
  %i.dz = zext i32 %i.dy to i64                   ; 9 uses
  %i.ea = icmp ugt i64 %.val50.i, %i.dz
  br i1 %i.ea, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.ae
  %.val49.i = load ptr, ptr %i.aa, align 8, !noalias !125077, !nonnull !67, !noundef !67
  %i.eb = lshr i64 %i.dz, 6
  %i.ec = and i64 %i.dz, 63
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.val49.i, i64 %i.eb
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !125080, !noundef !67
  %i.ef = lshr i64 %i.ee, %i.ec
  %i.eg = trunc i64 %i.ef to i1
  br i1 %i.eg, label %.backedge305.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i, %bb.ae
  %i.eh = icmp eq i32 %i.dy, %i.ar
  %or.cond.i = select i1 %i.aq, i1 %i.eh, i1 false
  br i1 %or.cond.i, label %._crit_edge361.i, label %bb.af

.backedge305.i:                                   ; preds = %bb.ai, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !125077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !125077
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef align 8 dereferenceable(24) %i.z), !noalias !125080
  %i.ei = load i64, ptr %i.x, align 8, !range !68, !noalias !125077, !noundef !67
  %i.ej = trunc nuw i64 %i.ei to i1
  br i1 %i.ej, label %bb.ae, label %._crit_edge361.i

bb.af:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i
  %i.ek = icmp ugt i64 %.val65, %i.dz
  br i1 %i.ek, label %bb.ag, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.val64, i64 %i.dz ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !noalias !125087, !noundef !67
  %.not.i.i.i85.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i85.i, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.en, align 8, !noalias !125087
  %i.eo = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.ag, %bb.af
  %.sroa.0.0.i.i.i = phi i64 [ %i.eo, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 4294967295, %bb.af ], [ 4294967295, %bb.ag ] ; 2 uses
  %i.ep = icmp ugt i64 %i.dp, %.sroa.0.0.i.i.i
  br i1 %i.ep, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i, %.backedge.i
  %i.eq = phi i64 [ %i.gt, %.backedge.i ], [ %.sroa.0.0.i.i.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.eq ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !noalias !125088, !noundef !67 ; 2 uses
  %.not.i87.i = icmp eq ptr %i.es, null
  %.pre.pre390.i = load i64, ptr %i.dl, align 8, !noalias !125077 ; 2 uses
  br i1 %.not.i87.i, label %._crit_edge.i, label %bb.aj

.loopexit294.i:                                   ; preds = %.loopexit287.i, %bb.bh, %.loopexit291.i, %bb.ap, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.thread.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %.invoke466.i, %bb.am
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.backedge.._crit_edge.loopexit_crit_edge.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i
  %i.et = phi i64 [ %.val50.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i ], [ %.pre.pre.i, %.backedge.._crit_edge.loopexit_crit_edge.i ], [ %.pre.pre390.i, %.lr.ph.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !125089)
  call void @llvm.experimental.noalias.scope.decl(metadata !125090)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !125091
  store i64 %i.dz, ptr %i.q, align 8, !noalias !125092
  %i.eu = icmp ugt i64 %i.et, %i.dz
  br i1 %i.eu, label %bb.ai, label %bb.ah, !prof !77

bb.ah:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !125092
  store ptr %i.q, ptr %i.p, align 8, !noalias !125092
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !125092
  %i.ev = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.dl, ptr %i.ev, align 8, !noalias !125092
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !125092
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
          to label %.noexc90.i unwind label %bb.y, !noalias !125080

.noexc90.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %._crit_edge.i
  %i.ew = lshr i64 %i.dz, 6
  %i.ex = and i64 %i.dz, 63
  %i.ey = load ptr, ptr %i.aa, align 8, !alias.scope !125093, !noalias !125077, !nonnull !67, !noundef !67
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ew ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !125094, !noundef !67
  %i.fb = shl nuw i64 1, %i.ex
  %i.fc = or i64 %i.fa, %i.fb
  store i64 %i.fc, ptr %i.ez, align 8, !noalias !125094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !125091
  br label %.backedge305.i

bb.aj:                                            ; preds = %.lr.ph.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !noalias !125088, !noundef !67
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.sroa.021.0.copyload.i.i = load i64, ptr %i.ff, align 8, !noalias !125088 ; 2 uses
  %.sroa.6213.sroa.6.0.extract.shift.i = lshr i64 %.sroa.021.0.copyload.i.i, 32 ; 8 uses
  %.sroa.6213.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6213.sroa.6.0.extract.shift.i to i32 ; 9 uses
  %i.fg = icmp ugt i64 %.pre.pre390.i, %.sroa.6213.sroa.6.0.extract.shift.i
  br i1 %i.fg, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.i: ; preds = %bb.aj
  %.val46.i = load ptr, ptr %i.aa, align 8, !noalias !125077, !nonnull !67, !noundef !67
  %i.fh = lshr i64 %.sroa.021.0.copyload.i.i, 38
  %i.fi = and i64 %.sroa.6213.sroa.6.0.extract.shift.i, 63
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.val46.i, i64 %i.fh
  %i.fk = load i64, ptr %i.fj, align 8, !noalias !125080, !noundef !67
  %i.fl = lshr i64 %i.fk, %i.fi
  %i.fm = trunc i64 %i.fl to i1
  br i1 %i.fm, label %.backedge.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.thread.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.i, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !125077
  invoke fastcc void @_RNvMs9_CskcxRuJ53GpR_9rustworkxNtB5_6CostFn4call(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr nonnull %i.es)
          to label %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_pathss_0B5_.exit.i unwind label %.loopexit294.i, !noalias !125080

_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_pathss_0B5_.exit.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit92.thread.i
  %i.fn = load i64, ptr %i.w, align 8, !range !68, !noalias !125077, !noundef !67
  %i.fo = trunc nuw i64 %i.fn to i1
  br i1 %i.fo, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_pathss_0B5_.exit.i
  %.sroa.024.0.copyload.i450 = load i64, ptr %i.dq, align 8, !noalias !125077
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.10307.16.copyload = load ptr, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !125095
  %.sroa.12310.16..sroa.425.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.12310.16.copyload = load i64, ptr %.sroa.12310.16..sroa.425.0..sroa_idx.i.sroa_idx, align 8, !noalias !125095
  %.sroa.13313.16..sroa.425.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13313, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13313.16..sroa.425.0..sroa_idx.i.sroa_idx, i64 40, i1 false), !noalias !125095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !125077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !125077
  %.val55.i = load i64, ptr %i.z, align 8, !noalias !125077 ; 2 uses
  %i.fp = icmp eq i64 %.val55.i, 0
  br i1 %i.fp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit96.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i95.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i95.i: ; preds = %bb.ak
  %.val56.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !125077, !nonnull !67, !noundef !67
  %i.fq = shl nuw i64 %.val55.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56.i, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125080
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit96.i

bb.al:                                            ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_pathss_0B5_.exit.i
  %i.fr = load double, ptr %i.dq, align 8, !noalias !125077, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !125077
  %i.fs = fadd double %i.dx, %i.fr                ; 13 uses
  %.not286.i = icmp samesign ult i64 %i.cc, %.sroa.6213.sroa.6.0.extract.shift.i
  br i1 %.not286.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.6213.sroa.6.0.extract.shift.i, i64 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4124) #60
          to label %.noexc98.i unwind label %.loopexit.split-lp.i, !noalias !125080

.noexc98.i:                                       ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.sroa.6213.sroa.6.0.extract.shift.i ; 4 uses
  %i.fu = load i64, ptr %i.ft, align 8, !range !68, !noalias !125080, !noundef !67
  %i.fv = trunc nuw i64 %i.fu to i1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 3 uses
  br i1 %i.fv, label %bb.bf, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i64 1, ptr %i.ft, align 8, !noalias !125080
  store double %i.fs, ptr %i.fw, align 8, !noalias !125080
  call void @llvm.experimental.noalias.scope.decl(metadata !125096)
  %i.fx = load i64, ptr %.sroa.520.0..sroa_idx.i, align 8, !alias.scope !125096, !noalias !125077, !noundef !67 ; 9 uses
  %i.fy = icmp ult i64 %i.fx, 576460752303423488
  call void @llvm.assume(i1 %i.fy)
  call void @llvm.experimental.noalias.scope.decl(metadata !125097)
  %i.fz = load i64, ptr %i.z, align 8, !range !70, !alias.scope !125098, !noalias !125077, !noundef !67
  %i.ga = icmp eq i64 %i.fx, %i.fz
  br i1 %i.ga, label %bb.ap, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i101.i

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i101.i unwind label %.loopexit294.i, !noalias !125080

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i101.i: ; preds = %bb.ap, %bb.ao
  %i.gb = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !125098, !noalias !125077, !nonnull !67, !noundef !67 ; 6 uses
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %i.fx ; 2 uses
  store double %i.fs, ptr %i.gc, align 8, !noalias !125099
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i32 %.sroa.6213.sroa.6.0.extract.trunc.i, ptr %i.gd, align 8, !noalias !125099
  %i.ge = add nuw nsw i64 %i.fx, 1
  store i64 %i.ge, ptr %.sroa.520.0..sroa_idx.i, align 8, !alias.scope !125098, !noalias !125077
  %.not16.i.i102.i = icmp eq i64 %i.fx, 0
  br i1 %.not16.i.i102.i, label %.loopexit291.i, label %.lr.ph.i.i103.i

.lr.ph.i.i103.i:                                  ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8push_mutCskcxRuJ53GpR_9rustworkx.exit.i101.i
  %i.gf = fcmp uno double %i.fs, 0.000000e+00
  br i1 %i.gf, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i104.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i103.i, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i
  %storemerge17.us.i.i.i = phi i64 [ %i.gh, %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i ], [ %i.fx, %.lr.ph.i.i103.i ] ; 3 uses
  %i.gg = add nsw i64 %storemerge17.us.i.i.i, -1
  %i.gh = lshr i64 %i.gg, 1                       ; 4 uses
  %i.gi = icmp samesign ule i64 %i.gh, %i.fx
  call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %i.gh ; 2 uses
  %.val1.us.i.i.i = load double, ptr %i.gj, align 8, !noalias !125100, !noundef !67
  %i.gk = fcmp olt double %i.fs, %.val1.us.i.i.i
  br i1 %i.gk, label %_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i, label %.loopexit291.i

_RNvYINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2leCskcxRuJ53GpR_9rustworkx.exit.thread14.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
end_hunk_6
begin_hunk_7_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths:bb.a
  %xtraiter957 = and i64 %i.ru, 7                 ; 3 uses
  %i.sa = icmp samesign ult i64 %i.rv, 8
  br i1 %i.sa, label %.lr.ph.i.i.i.i111.epil.preheader, label %.lr.ph.i.i.i.i111.preheader.new

.lr.ph.i.i.i.i111.preheader.new:                  ; preds = %.lr.ph.i.i.i.i111.preheader
  %unroll_iter962 = and i64 %i.ru, 4294967288
  br label %.lr.ph.i.i.i.i111

._crit_edge.thread.i.i.i.i115.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i111
  %lcmp.mod959.not = icmp eq i64 %xtraiter957, 0
  br i1 %lcmp.mod959.not, label %._crit_edge.thread.i.i.i.i115, label %.lr.ph.i.i.i.i111.epil.preheader

.lr.ph.i.i.i.i111.epil.preheader:                 ; preds = %._crit_edge.thread.i.i.i.i115.loopexit.unr-lcssa, %.lr.ph.i.i.i.i111.preheader
  %.sroa.0.022.i.i.i.i112.epil.init = phi ptr [ %i.ry, %.lr.ph.i.i.i.i111.preheader ], [ %i.sj, %._crit_edge.thread.i.i.i.i115.loopexit.unr-lcssa ]
  %lcmp.mod961 = icmp ne i64 %xtraiter957, 0
  tail call void @llvm.assume(i1 %lcmp.mod961)
  br label %.lr.ph.i.i.i.i111.epil

.lr.ph.i.i.i.i111.epil:                           ; preds = %.lr.ph.i.i.i.i111.epil, %.lr.ph.i.i.i.i111.epil.preheader
  %.sroa.0.022.i.i.i.i112.epil = phi ptr [ %i.sb, %.lr.ph.i.i.i.i111.epil ], [ %.sroa.0.022.i.i.i.i112.epil.init, %.lr.ph.i.i.i.i111.epil.preheader ] ; 2 uses
  %epil.iter958 = phi i64 [ %epil.iter958.next, %.lr.ph.i.i.i.i111.epil ], [ 0, %.lr.ph.i.i.i.i111.epil.preheader ]
  store i64 0, ptr %.sroa.0.022.i.i.i.i112.epil, align 8, !noalias !125198
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i112.epil, i64 16 ; 2 uses
  %epil.iter958.next = add i64 %epil.iter958, 1   ; 2 uses
  %epil.iter958.cmp.not = icmp eq i64 %epil.iter958.next, %xtraiter957
  br i1 %epil.iter958.cmp.not, label %._crit_edge.thread.i.i.i.i115, label %.lr.ph.i.i.i.i111.epil, !llvm.loop !124942

._crit_edge.thread.i.i.i.i115:                    ; preds = %._crit_edge.thread.i.i.i.i115.loopexit.unr-lcssa, %.lr.ph.i.i.i.i111.epil, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i109
  %.sroa.0.0.lcssa29.i.i.i.i116 = phi ptr [ %i.ry, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i109 ], [ %i.sj, %._crit_edge.thread.i.i.i.i115.loopexit.unr-lcssa ], [ %i.sb, %.lr.ph.i.i.i.i111.epil ]
  store i64 0, ptr %.sroa.0.0.lcssa29.i.i.i.i116, align 8, !noalias !125198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !125192
  store i64 0, ptr %i.k, align 8, !noalias !125192
  %.sroa.419.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 18 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx.i117, align 8, !noalias !125192
  %.sroa.520.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.520.0..sroa_idx.i118, align 8, !noalias !125192
  %.not.i119 = icmp samesign ult i64 %i.rv, %i.al
  br i1 %.not.i119, label %bb.cw, label %bb.cx

.lr.ph.i.i.i.i111:                                ; preds = %.lr.ph.i.i.i.i111, %.lr.ph.i.i.i.i111.preheader.new
  %.sroa.0.022.i.i.i.i112 = phi ptr [ %i.ry, %.lr.ph.i.i.i.i111.preheader.new ], [ %i.sj, %.lr.ph.i.i.i.i111 ] ; 9 uses
  %niter963 = phi i64 [ 0, %.lr.ph.i.i.i.i111.preheader.new ], [ %niter963.next.7, %.lr.ph.i.i.i.i111 ]
  store i64 0, ptr %.sroa.0.022.i.i.i.i112, align 8, !noalias !125198
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i112, i64 16
  store i64 0, ptr %i.sc, align 8, !noalias !125198
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i112, i64 32
  store i64 0, ptr %i.sd, align 8, !noalias !125198
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i112, i64 48
  store i64 0, ptr %i.se, align 8, !noalias !125198
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i112, i64 64
  store i64 0, ptr %i.sf, align 8, !noalias !125198
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i112, i64 80
  store i64 0, ptr %i.sg, align 8, !noalias !125198
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i112, i64 96
  store i64 0, ptr %i.sh, align 8, !noalias !125198
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i112, i64 112
  store i64 0, ptr %i.si, align 8, !noalias !125198
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i112, i64 128 ; 3 uses
  %niter963.next.7 = add i64 %niter963, 8         ; 2 uses
  %niter963.ncmp.7 = icmp eq i64 %niter963.next.7, %unroll_iter962
  br i1 %niter963.ncmp.7, label %._crit_edge.thread.i.i.i.i115.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i111

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i122: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i, %bb.ex, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i164, %bb.eg, %bb.dx, %.loopexit.split-lp.i181, %.loopexit299.i, %bb.cv
  %.sroa.419.0..sroa_idx256.i123 = phi ptr [ %.sroa.419.0..sroa_idx.i117, %bb.ex ], [ %.sroa.419.0..sroa_idx.i117, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i164 ], [ %.sroa.419.0..sroa_idx.i117, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i ], [ %.sroa.419.0..sroa_idx257.i120, %bb.cv ], [ %.sroa.419.0..sroa_idx.i117, %bb.dx ], [ %.sroa.419.0..sroa_idx.i117, %bb.eg ], [ %.sroa.419.0..sroa_idx.i117, %.loopexit.split-lp.i181 ], [ %.sroa.419.0..sroa_idx.i117, %.loopexit299.i ]
  %.sroa.4.0.i5.i253.i124 = phi i64 [ %i.rw, %bb.ex ], [ %i.rw, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i164 ], [ %i.rw, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i ], [ %.sroa.4.0.i5.i254.i121, %bb.cv ], [ %i.rw, %bb.dx ], [ %i.rw, %bb.eg ], [ %i.rw, %.loopexit.split-lp.i181 ], [ %i.rw, %.loopexit299.i ] ; 2 uses
  %i.sk = phi ptr [ %i.ry, %bb.ex ], [ %i.ry, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i164 ], [ %i.ry, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i ], [ %i.sn, %bb.cv ], [ %i.ry, %bb.dx ], [ %i.ry, %bb.eg ], [ %i.ry, %.loopexit.split-lp.i181 ], [ %i.ry, %.loopexit299.i ] ; 2 uses
  %.pn.i125 = phi { ptr, i32 } [ %lpad.phi309.i, %bb.ex ], [ %lpad.phi304.i162, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i164 ], [ %lpad.phi309.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i182.i ], [ %i.so, %bb.cv ], [ %lpad.thr_comm.split-lp.i178, %bb.dx ], [ %lpad.phi304.i162, %bb.eg ], [ %lpad.loopexit.split-lp.i182, %.loopexit.split-lp.i181 ], [ %lpad.loopexit.i151, %.loopexit299.i ] ; 2 uses
  %.val57.i126 = load i64, ptr %i.k, align 8, !noalias !125192 ; 2 uses
  %i.sl = icmp eq i64 %.val57.i126, 0
  br i1 %i.sl, label %bb.ez, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i127

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i127: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i122
  %.val58.i128 = load ptr, ptr %.sroa.419.0..sroa_idx256.i123, align 8, !noalias !125192, !nonnull !67, !noundef !67
  %i.sm = shl nuw i64 %.val57.i126, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i128, i64 noundef %i.sm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125196
  br label %bb.ez

bb.cv:                                            ; preds = %bb.dk, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i132, %bb.cz, %bb.cx, %bb.cw
  %.sroa.419.0..sroa_idx257.i120 = phi ptr [ %.sroa.419.0..sroa_idx.i117, %bb.dk ], [ %.sroa.419.0..sroa_idx.i117, %bb.cz ], [ %.sroa.419.0..sroa_idx.i117, %bb.cx ], [ %.sroa.419.0..sroa_idx258.i214, %bb.cw ], [ %.sroa.419.0..sroa_idx.i117, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i132 ]
  %.sroa.4.0.i5.i254.i121 = phi i64 [ %i.rw, %bb.dk ], [ %i.rw, %bb.cz ], [ %i.rw, %bb.cx ], [ %.sroa.4.0.i5.i255.i215, %bb.cw ], [ %i.rw, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i132 ]
  %i.sn = phi ptr [ %i.ry, %bb.dk ], [ %i.ry, %bb.cz ], [ %i.ry, %bb.cx ], [ %i.sp, %bb.cw ], [ %i.ry, %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i132 ]
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i122

bb.cw:                                            ; preds = %._crit_edge.thread.i.i.i.i115, %.thread.i218
  %.sroa.419.0..sroa_idx258.i214 = phi ptr [ %.sroa.419.0..sroa_idx249.i219, %.thread.i218 ], [ %.sroa.419.0..sroa_idx.i117, %._crit_edge.thread.i.i.i.i115 ]
  %.sroa.4.0.i5.i255.i215 = phi i64 [ 0, %.thread.i218 ], [ %i.rw, %._crit_edge.thread.i.i.i.i115 ] ; 2 uses
  %i.sp = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i218 ], [ %i.ry, %._crit_edge.thread.i.i.i.i115 ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %.sroa.4.0.i5.i255.i215, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4125) #60
          to label %.noexc80.i216 unwind label %bb.cv, !noalias !125196

.noexc80.i216:                                    ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %._crit_edge.thread.i.i.i.i115
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.ry, i64 %i.al ; 2 uses
  store i64 1, ptr %i.sq, align 8, !noalias !125196
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  store double 0.000000e+00, ptr %i.sr, align 8, !noalias !125196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125199)
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #62
          to label %bb.cy unwind label %bb.cv, !noalias !125196

bb.cy:                                            ; preds = %bb.cx
  %i.ss = load ptr, ptr %.sroa.419.0..sroa_idx.i117, align 8, !alias.scope !125200, !noalias !125192, !nonnull !67, !noundef !67 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  store i64 1, ptr %.sroa.520.0..sroa_idx.i118, align 8, !alias.scope !125200, !noalias !125192
  store double 0.000000e+00, ptr %i.ss, align 8, !noalias !125201
  store i32 %i.ai, ptr %i.st, align 8, !noalias !125201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !125192
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !125196
  %i.su = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !125196 ; 3 uses
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %bb.cz, label %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i132, !prof !104

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #61
          to label %.noexc83.i213 unwind label %bb.cv, !noalias !125196

.noexc83.i213:                                    ; preds = %bb.cz
  unreachable

_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i132: ; preds = %bb.cy
  store i32 %i.ai, ptr %i.su, align 4, !noalias !125196
  store i64 1, ptr %i.j, align 8, !noalias !125192
  %i.sw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.su, ptr %i.sw, align 8, !noalias !125192
  %i.sx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %i.sx, align 8, !noalias !125192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !125192
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBN_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) dereferenceable_or_null(64) %i.ae, i32 noundef %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.da unwind label %bb.cv, !noalias !125196

bb.da:                                            ; preds = %_RNvNtCs87CvPiUlf0m_5alloc5boxed14box_new_uninit.exit.i132
  %i.sy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0195.0.copyload.i = load i64, ptr %i.sy, align 8, !noalias !125192 ; 2 uses
  %.sroa.4196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4196.0.copyload.i = load ptr, ptr %.sroa.4196.0..sroa_idx.i, align 8, !noalias !125192 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !125192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !125192
  %.0.val.off.i.i133 = add i64 %.sroa.0195.0.copyload.i, -1
  %switch.i.i134 = icmp ult i64 %.0.val.off.i.i133, -2
  br i1 %switch.i.i134, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i212, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i135

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i212: ; preds = %bb.da
  %i.sz = shl nuw i64 %.sroa.0195.0.copyload.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4196.0.copyload.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4196.0.copyload.i, i64 noundef %i.sz, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !125196
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i135

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i135: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i84.i212, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !125192
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.k), !noalias !125196
  %i.ta = load i64, ptr %i.i, align 8, !range !68, !noalias !125192, !noundef !67
  %i.tb = trunc nuw i64 %i.ta to i1
  br i1 %i.tb, label %.lr.ph.i141, label %._crit_edge.i136

.lr.ph.i141:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit.i135
  %i.tc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.te = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.tg = load ptr, ptr %i.tf, align 8, !alias.scope !125190, !noalias !125202, !nonnull !67 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ti = load i64, ptr %i.th, align 8, !alias.scope !125190, !noalias !125202 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i142 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i.i143 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i123.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.52.0..sroa_idx.i.i.i144 = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i151.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i152.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %.backedge310.i, %.lr.ph.i141
  %i.tq = load double, ptr %i.tc, align 8, !noalias !125192, !noundef !67
  %i.tr = load i32, ptr %i.td, align 8, !noalias !125192, !noundef !67 ; 5 uses
  %.val50.i145 = load i64, ptr %i.te, align 8, !noalias !125192, !noundef !67
  %i.ts = zext i32 %i.tr to i64                   ; 9 uses
  %i.tt = icmp ugt i64 %.val50.i145, %i.ts
  br i1 %i.tt, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i210, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i146

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i210: ; preds = %bb.db
  %.val49.i211 = load ptr, ptr %i.l, align 8, !noalias !125192, !nonnull !67, !noundef !67
  %i.tu = lshr i64 %i.ts, 6
  %i.tv = and i64 %i.ts, 63
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %.val49.i211, i64 %i.tu
  %i.tx = load i64, ptr %i.tw, align 8, !noalias !125196, !noundef !67
  %i.ty = lshr i64 %i.tx, %i.tv
  %i.tz = trunc i64 %i.ty to i1
  br i1 %i.tz, label %.backedge310.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i146

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i146: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i210, %bb.db
  %i.ua = icmp eq i32 %i.tr, %i.ar
  %or.cond.i147 = select i1 %i.aq, i1 %i.ua, i1 false
  br i1 %or.cond.i147, label %._crit_edge.i136, label %bb.dc

.backedge310.i:                                   ; preds = %bb.dl, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !125192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !125192
  call fastcc void @_RNvMs9_NtNtCs87CvPiUlf0m_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE3popCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %i.k), !noalias !125196
  %i.ub = load i64, ptr %i.i, align 8, !range !68, !noalias !125192, !noundef !67
  %i.uc = trunc nuw i64 %i.ub to i1
  br i1 %i.uc, label %bb.db, label %._crit_edge.i136

bb.dc:                                            ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit.thread.i146
  %i.ud = icmp ugt i64 %.val1.i.i100, %i.ts
  br i1 %i.ud, label %bb.dd, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader

bb.dd:                                            ; preds = %bb.dc
  %i.ue = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i99, i64 %i.ts ; 3 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !noalias !125203, !noundef !67
  %.not.i.i.i85.i208 = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i85.i208, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.dd
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %.sroa.0.0.copyload.i.i.i209 = load i32, ptr %i.ug, align 8, !noalias !125203
  %.sroa.5.0..sroa_idx.i.i86.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 12
  %.sroa.5.0.copyload.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i86.i, align 4, !noalias !125203
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.dd, %bb.dc
  %.sroa.12.0.i.ph = phi i32 [ -1, %bb.dc ], [ %.sroa.5.0.copyload.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.dd ]
  %.sroa.9209.0.i.ph = phi i32 [ -1, %bb.dc ], [ %.sroa.0.0.copyload.i.i.i209, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ -1, %bb.dd ]
  br label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.backedge, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader
  %.sroa.12.0.i = phi i32 [ %.sroa.12.0.i.ph, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader ], [ %.sroa.12.2.ph.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.backedge ] ; 2 uses
  %.sroa.9209.0.i = phi i32 [ %.sroa.9209.0.i.ph, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.preheader ], [ %.sroa.9209.1.ph.i, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.backedge ] ; 2 uses
  %i.uh = zext i32 %.sroa.9209.0.i to i64         ; 2 uses
  %i.ui = icmp ugt i64 %i.ti, %i.uh
  br i1 %i.ui, label %bb.de, label %._crit_edge.i.i.preheader

._crit_edge.i.i.preheader:                        ; preds = %bb.de, %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i
  br label %._crit_edge.i.i

bb.de:                                            ; preds = %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i
  %i.uj = getelementptr inbounds nuw [24 x i8], ptr %i.tg, i64 %i.uh ; 3 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !noalias !125204, !noundef !67 ; 2 uses
  %.not.i88.i = icmp eq ptr %i.uk, null
  br i1 %.not.i88.i, label %._crit_edge.i.i.preheader, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.um = load i32, ptr %i.ul, align 8, !noalias !125204, !noundef !67
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %.sroa.023.0.copyload.i.i = load i64, ptr %i.un, align 8, !noalias !125204
  br label %bb.dm

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.preheader, %bb.dg
  %i.uo = phi i32 [ %i.ut, %bb.dg ], [ %.sroa.12.0.i, %._crit_edge.i.i.preheader ]
  %i.up = zext i32 %i.uo to i64                   ; 2 uses
  %i.uq = icmp ugt i64 %i.ti, %i.up
  br i1 %i.uq, label %bb.dg, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.dg:                                            ; preds = %._crit_edge.i.i
  %i.ur = getelementptr inbounds nuw [24 x i8], ptr %i.tg, i64 %i.up ; 4 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 12
  %i.ut = load i32, ptr %i.us, align 4, !noalias !125204, !noundef !67 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %.val.i87.i = load i32, ptr %i.uu, align 4, !noalias !125204, !noundef !67
  %i.uv = icmp eq i32 %.val.i87.i, %i.tr
  br i1 %i.uv, label %._crit_edge.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.uw = load ptr, ptr %i.ur, align 8, !noalias !125204, !noundef !67 ; 2 uses
  %.not42.i.i = icmp eq ptr %i.uw, null
  br i1 %.not42.i.i, label %bb.dj, label %bb.di, !prof !71

bb.di:                                            ; preds = %bb.dh
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %.sroa.032.0.copyload.i.i = load i64, ptr %i.ux, align 8, !noalias !125204
  %.sroa.0.0.insert.insert.i44.i.i = shl i64 %.sroa.032.0.copyload.i.i, 32
  br label %bb.dm

bb.dj:                                            ; preds = %bb.dh
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4319) #60
          to label %.noexc89.i unwind label %.loopexit.split-lp.i181, !noalias !125196

.noexc89.i:                                       ; preds = %bb.dj
  unreachable

.loopexit299.i:                                   ; preds = %.loopexit292.i, %bb.ek, %.loopexit296.i, %bb.ds, %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.thread.i
  %lpad.loopexit.i151 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i122

.loopexit.split-lp.i181:                          ; preds = %.invoke.i183, %.invoke468.i, %bb.dp, %bb.dj
  %lpad.loopexit.split-lp.i182 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i122

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %._crit_edge.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !125205)
  call void @llvm.experimental.noalias.scope.decl(metadata !125206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !125207
  store i64 %i.ts, ptr %i.b, align 8, !noalias !125208
  %i.uy = load i64, ptr %i.te, align 8, !alias.scope !125209, !noalias !125192, !noundef !67
  %i.uz = icmp ugt i64 %i.uy, %i.ts
  br i1 %i.uz, label %bb.dl, label %bb.dk, !prof !77

bb.dk:                                            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125208
  store ptr %i.b, ptr %i.a, align 8, !noalias !125208
  %.sroa.42.0..sroa_idx.i.i.i149 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i149, align 8, !noalias !125208
  %i.va = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.te, ptr %i.va, align 8, !noalias !125208
  %.sroa.46.0..sroa_idx.i.i.i150 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCslwFuT2d6ECx_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i150, align 8, !noalias !125208
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1585, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1586) #60
          to label %.noexc91.i unwind label %bb.cv, !noalias !125196

.noexc91.i:                                       ; preds = %bb.dk
  unreachable

bb.dl:                                            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i
  %i.vb = lshr i64 %i.ts, 6
  %i.vc = and i64 %i.ts, 63
  %i.vd = load ptr, ptr %i.l, align 8, !alias.scope !125209, !noalias !125192, !nonnull !67, !noundef !67
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.vb ; 2 uses
  %i.vf = load i64, ptr %i.ve, align 8, !noalias !125210, !noundef !67
  %i.vg = shl nuw i64 1, %i.vc
  %i.vh = or i64 %i.vf, %i.vg
  store i64 %i.vh, ptr %i.ve, align 8, !noalias !125210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !125207
  br label %.backedge310.i

bb.dm:                                            ; preds = %bb.di, %bb.df
  %.val.i94.i = phi ptr [ %i.uk, %bb.df ], [ %i.uw, %bb.di ]
  %.sroa.10.0.ph.i = phi i64 [ %.sroa.023.0.copyload.i.i, %bb.df ], [ %.sroa.0.0.insert.insert.i44.i.i, %bb.di ] ; 2 uses
  %.sroa.12.2.ph.i = phi i32 [ %.sroa.12.0.i, %bb.df ], [ %i.ut, %bb.di ]
  %.sroa.9209.1.ph.i = phi i32 [ %i.um, %bb.df ], [ %.sroa.9209.0.i, %bb.di ]
  %.sroa.6214.sroa.6.0.extract.shift.i = lshr i64 %.sroa.10.0.ph.i, 32 ; 8 uses
  %.sroa.6214.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6214.sroa.6.0.extract.shift.i to i32 ; 9 uses
  %.val47.i = load i64, ptr %i.te, align 8, !noalias !125192, !noundef !67
  %i.vi = icmp ugt i64 %.val47.i, %.sroa.6214.sroa.6.0.extract.shift.i
  br i1 %i.vi, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.i, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.i: ; preds = %bb.dm
  %.val46.i207 = load ptr, ptr %i.l, align 8, !noalias !125192, !nonnull !67, !noundef !67
  %i.vj = lshr i64 %.sroa.10.0.ph.i, 38
  %i.vk = and i64 %.sroa.6214.sroa.6.0.extract.shift.i, 63
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %.val46.i207, i64 %i.vj
  %i.vm = load i64, ptr %i.vl, align 8, !noalias !125196, !noundef !67
  %i.vn = lshr i64 %i.vm, %i.vk
  %i.vo = trunc i64 %i.vn to i1
  br i1 %i.vo, label %_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx.exit.i.backedge, label %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.thread.i

_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.thread.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.i, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !125192
  invoke fastcc void @_RNvMs9_CskcxRuJ53GpR_9rustworkxNtB5_6CostFn4call(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad, ptr nonnull %.val.i94.i)
          to label %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths0B5_.exit.i unwind label %.loopexit299.i, !noalias !125196

_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths0B5_.exit.i: ; preds = %_RNvXs2_NtCs68Jln09rRqb_8petgraph5visitNtCsiCakYNGl26C_11fixedbitset11FixedBitSetINtB5_8VisitMapNtNtB7_10graph_impl9NodeIndexE10is_visitedCskcxRuJ53GpR_9rustworkx.exit93.thread.i
  %i.vp = load i64, ptr %i.h, align 8, !range !68, !noalias !125192, !noundef !67
  %i.vq = trunc nuw i64 %i.vp to i1
  br i1 %i.vq, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths0B5_.exit.i
  %.sroa.024.0.copyload.i202451 = load i64, ptr %i.tj, align 8, !noalias !125192
  %.sroa.425.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.11.16.copyload = load ptr, ptr %.sroa.425.0..sroa_idx.i203, align 8, !noalias !125211
  %.sroa.13280.16..sroa.425.0..sroa_idx.i203.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.13280.16.copyload = load i64, ptr %.sroa.13280.16..sroa.425.0..sroa_idx.i203.sroa_idx, align 8, !noalias !125211
  %.sroa.14283.16..sroa.425.0..sroa_idx.i203.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14283, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14283.16..sroa.425.0..sroa_idx.i203.sroa_idx, i64 40, i1 false), !noalias !125211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !125192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !125192
  %.val55.i205 = load i64, ptr %i.k, align 8, !noalias !125192 ; 2 uses
  %i.vr = icmp eq i64 %.val55.i205, 0
  br i1 %i.vr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit97.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i96.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i96.i: ; preds = %bb.dn
  %.val56.i206 = load ptr, ptr %.sroa.419.0..sroa_idx.i117, align 8, !noalias !125192, !nonnull !67, !noundef !67
  %i.vs = shl nuw i64 %.val55.i205, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56.i206, i64 noundef %i.vs, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !125196
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc11collections11binary_heap10BinaryHeapINtNtCsbNMRYq9Xj9a_14rustworkx_core10min_scored9MinScoreddNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEECskcxRuJ53GpR_9rustworkx.exit97.i

bb.do:                                            ; preds = %_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path31digraph_dijkstra_shortest_paths0B5_.exit.i
  %i.vt = load double, ptr %i.tj, align 8, !noalias !125192, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !125192
  %i.vu = fadd double %i.tq, %i.vt                ; 13 uses
  %.not291.i = icmp samesign ult i64 %i.rv, %.sroa.6214.sroa.6.0.extract.shift.i
  br i1 %.not291.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.6214.sroa.6.0.extract.shift.i, i64 noundef %i.rw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4124) #60
          to label %.noexc99.i unwind label %.loopexit.split-lp.i181, !noalias !125196

.noexc99.i:                                       ; preds = %bb.dp
  unreachable

end_hunk_7
