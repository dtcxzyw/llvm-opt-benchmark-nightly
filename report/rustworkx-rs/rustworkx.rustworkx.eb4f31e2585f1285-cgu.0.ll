Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort26insertion_sort_shift_rightNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCINvB15_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4N_5types3any5PyAnyEB4I_NtB3I_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4N_3err5PyErrEs4_0E0EB6c_:bb.a

.split8._crit_edge.i.loopexit.us:                 ; preds = %bb.b, %.split8.i.us, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit10.i.us
  %.sroa.5.0.lcssa.i.ph.us = phi ptr [ %i.s, %bb.b ], [ %.sroa.5.09.i.us, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit10.i.us ], [ %.sroa.5.09.i.us, %.split8.i.us ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0.lcssa.i.ph.us, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false)
  %.sroa.4.0..sroa.5.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i.ph.us, i64 24
  store i64 %i.h, ptr %.sroa.4.0..sroa.5.0.sroa_idx.i.us, align 8, !alias.scope !28198
  %.sroa.5.0..sroa.5.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i.ph.us, i64 32
  store i64 %.sroa.56.0.copyload.i.us, ptr %.sroa.5.0..sroa.5.0.sroa_idx.i.us, align 8, !alias.scope !28198
  %.sroa.6.0..sroa.5.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i.ph.us, i64 40
  store double %.sroa.67.0.copyload.i.us, ptr %.sroa.6.0..sroa.5.0.sroa_idx.i.us, align 8, !alias.scope !28198
  br label %.split2.us.sink.split

.split:                                           ; preds = %bb.a
  %.promoted = load i64, ptr %i.b, align 8, !alias.scope !28198 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28193)
  %i.af = load i64, ptr %i.c, align 8, !alias.scope !28196, !noalias !28197, !noundef !67 ; 3 uses
  %i.ag = icmp eq i64 %.promoted, %i.af
  br i1 %i.ag, label %.split.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i

.split2.us.sink.split:                            ; preds = %.split8._crit_edge.i.loopexit.us, %.split8._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %.split2.us

.split2.us:                                       ; preds = %.split2.us.sink.split, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i, %.split.i, %.split.i.us, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.us
  ret void

.split.i:                                         ; preds = %.split
  %i.ah = load double, ptr %.sroa.67.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !28196, !noalias !28197, !noundef !67 ; 2 uses
  %i.ai = load double, ptr %i.d, align 8, !alias.scope !28194, !noalias !28195, !noundef !67
  %i.aj = load i64, ptr %.sroa.56.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !28196, !noalias !28197, !noundef !67 ; 3 uses
  %i.ak = load i64, ptr %i.e, align 8, !alias.scope !28194, !noalias !28195, !noundef !67 ; 2 uses
  %i.al = icmp eq i64 %i.ak, %i.aj
  %i.am = icmp ult i64 %i.ak, %i.aj
  %i.an = fcmp ult double %i.ai, %i.ah
  %spec.select.i.i = select i1 %i.al, i1 %i.an, i1 %i.am
  br i1 %spec.select.i.i, label %.split8._crit_edge.i, label %.split2.us

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i: ; preds = %.split
  %i.ao = icmp ult i64 %.promoted, %i.af
  br i1 %i.ao, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit._crit_edge.i, label %.split2.us

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit._crit_edge.i: ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i
  %.sroa.56.0.copyload.pre.i = load i64, ptr %.sroa.56.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !28198
  %.sroa.67.0.copyload.pre.i = load double, ptr %.sroa.67.0..sroa_idx.phi.trans.insert.i, align 8, !alias.scope !28198
  br label %.split8._crit_edge.i

.split8._crit_edge.i:                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit._crit_edge.i, %.split.i
  %.sroa.67.0.copyload.i = phi double [ %.sroa.67.0.copyload.pre.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit._crit_edge.i ], [ %i.ah, %.split.i ]
  %.sroa.56.0.copyload.i = phi i64 [ %.sroa.56.0.copyload.pre.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit._crit_edge.i ], [ %i.aj, %.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !alias.scope !28198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false)
  store i64 %i.af, ptr %i.b, align 8, !alias.scope !28198
  store i64 %.sroa.56.0.copyload.i, ptr %i.e, align 8, !alias.scope !28198
  store double %.sroa.67.0.copyload.i, ptr %i.d, align 8, !alias.scope !28198
  br label %.split2.us.sink.split
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort26insertion_sort_shift_rightTNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexdENCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree17deduplicate_edgess_0E0EB2Z_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 2, 576460752303423488) %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load double, ptr %i.a, align 8, !alias.scope !28203, !noundef !67
  %i.g = load double, ptr %i.b, align 8, !alias.scope !28203, !noundef !67 ; 4 uses
  %i.h = fcmp ult double %i.f, %i.g
  br i1 %i.h, label %.split, label %.split5.us

.split5.us:                                       ; preds = %._crit_edge.i, %bb.a
  ret void

.split:                                           ; preds = %bb.a
  %i.i = icmp samesign ugt i64 %1, 2
  %i.j = load i32, ptr %0, align 8, !alias.scope !28203, !noundef !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !alias.scope !28203
  br i1 %i.i, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.split
  %.val.i1 = load double, ptr %i.e, align 8, !alias.scope !28203, !noundef !67
  %i.k = fcmp ult double %.val.i1, %i.g
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.l = getelementptr i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !alias.scope !28203
  %exitcond.not.i1 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i1, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph, %.lr.ph.i, %.lr.ph.preheader, %.lr.ph.i.preheader, %.split
  %.sroa.5.0.lcssa.i = phi ptr [ %i.c, %.split ], [ %i.c, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.preheader ], [ %i.n, %.lr.ph.i ], [ %i.o, %.lr.ph ] ; 2 uses
  store i32 %i.j, ptr %.sroa.5.0.lcssa.i, align 8, !alias.scope !28203
  %.sroa.41.0..sroa.5.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i, i64 8
  store double %i.g, ptr %.sroa.41.0..sroa.5.0.sroa_idx.i, align 8, !alias.scope !28203
  br label %.split5.us

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.m = phi i64 [ %i.r, %.lr.ph ], [ 3, %.lr.ph.preheader ] ; 2 uses
  %i.n = phi ptr [ %i.o, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load double, ptr %i.p, align 8, !alias.scope !28203, !noundef !67
  %i.q = fcmp ult double %.val.i, %i.g
  br i1 %i.q, label %.lr.ph, label %._crit_edge.i

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.r = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.s = getelementptr i8, ptr %i.o, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !alias.scope !28203
  %exitcond.not.i = icmp eq i64 %i.r, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort26insertion_sort_shift_rightTdINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph13EdgeReferenceINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2j_5types3any5PyAnyEEENCINvYSB13_INtB4_16ParallelSliceMutB13_E20par_sort_unstable_byNCNvNtCskcxRuJ53GpR_9rustworkx4tree22minimum_spanning_edges0E0EB4n_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 2, 288230376151711744) %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = load double, ptr %i.a, align 8, !alias.scope !28206, !noundef !67
  %i.d = load double, ptr %0, align 8, !alias.scope !28206, !noundef !67 ; 4 uses
  %i.e = fcmp ult double %i.c, %i.d
  br i1 %i.e, label %.split, label %.split5.us

.split5.us:                                       ; preds = %._crit_edge.i, %bb.a
  ret void

.split:                                           ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %1, 2
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !alias.scope !28206
  br i1 %i.f, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.split
  %.val.i1 = load double, ptr %i.b, align 8, !alias.scope !28206, !noundef !67
  %i.g = fcmp ult double %.val.i1, %i.d
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.h = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !alias.scope !28206
  %exitcond.not.i1 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i1, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph, %.lr.ph.i, %.lr.ph.preheader, %.lr.ph.i.preheader, %.split
  %.sroa.5.0.lcssa.i = phi ptr [ %i.a, %.split ], [ %i.a, %.lr.ph.i.preheader ], [ %i.b, %.lr.ph.preheader ], [ %i.j, %.lr.ph.i ], [ %i.k, %.lr.ph ] ; 2 uses
  store double %i.d, ptr %.sroa.5.0.lcssa.i, align 8, !alias.scope !28206
  %.sroa.5.0..sroa.5.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.lcssa.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.5.0.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %.split5.us

.lr.ph.i:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.i = phi i64 [ %i.m, %.lr.ph ], [ 3, %.lr.ph.preheader ] ; 2 uses
  %i.j = phi ptr [ %i.k, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.i ; 5 uses
  %.val.i = load double, ptr %i.k, align 8, !alias.scope !28206, !noundef !67
  %i.l = fcmp ult double %.val.i, %i.d
  br i1 %i.l, label %.lr.ph, label %._crit_edge.i

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.m = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !alias.scope !28206
  %exitcond.not.i = icmp eq i64 %i.m, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCINvBL_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4l_5types3any5PyAnyEB4g_NtB3g_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4l_3err5PyErrE0E0EB5K_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable_or_null(48) %3, i32 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 14 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.0.i72 = alloca [24 x i8], align 8        ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 12 uses
  %i.f = alloca [48 x i8], align 8                ; 12 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [128 x i8], align 1               ; 6 uses
  %i.i = alloca [128 x i8], align 1               ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 7 uses
  store i32 %4, ptr %i.k, align 4
  %i.l = icmp samesign ult i64 %1, 21
  br i1 %i.l, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph248 = phi ptr [ %.sroa.0.1, %.outer ], [ %0, %bb.a ] ; 2 uses
  %.sroa.20.0.ph247 = phi i64 [ %.sroa.20.1, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.032.0.ph246 = phi ptr [ %.sroa.032.1, %.outer ], [ %3, %bb.a ] ; 7 uses
  %.sroa.036.0.ph245 = phi i1 [ %i.qj, %.outer ], [ true, %bb.a ] ; 2 uses
  %.sroa.038.0.ph244 = phi i1 [ %i.qe, %.outer ], [ true, %bb.a ]
  %or.cond = select i1 %.sroa.036.0.ph245, i1 %.sroa.038.0.ph244, i1 false ; 2 uses
  %.not = icmp eq ptr %.sroa.032.0.ph246, null
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.0.ph246, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.032.0.ph246, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.0.ph246, i64 24
  %.pre334 = load i32, ptr %i.k, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ap
  %i.p = phi i32 [ %.pre334, %.lr.ph ], [ %i.ka, %bb.ap ] ; 2 uses
  %.sroa.0.0240 = phi ptr [ %.sroa.0.0.ph248, %.lr.ph ], [ %i.sm, %bb.ap ] ; 42 uses
  %.sroa.20.0239 = phi i64 [ %.sroa.20.0.ph247, %.lr.ph ], [ %i.sl, %bb.ap ] ; 28 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !71

.outer._crit_edge:                                ; preds = %.outer, %bb.ap, %bb.a
  %.sroa.20.0.lcssa = phi i64 [ %i.sl, %bb.ap ], [ %1, %bb.a ], [ %.sroa.20.1, %.outer ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.sm, %bb.ap ], [ %0, %bb.a ], [ %.sroa.0.1, %.outer ]
  %i.r = icmp samesign ugt i64 %.sroa.20.0.lcssa, 1
  br i1 %i.r, label %bb.bb, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort8heapsortNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeRNCINvYSBK_INtB4_16ParallelSliceMutBK_E20par_sort_unstable_byNCINvBM_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4n_5types3any5PyAnyEB4i_NtB3i_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4n_3err5PyErrE0E0EB5M_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0240, i64 noundef %.sroa.20.0239)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  br i1 %.sroa.036.0.ph245, label %bb.f, label %bb.e, !prof !77

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort14break_patternsNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0240, i64 noundef %.sroa.20.0239)
  %i.s = load i32, ptr %i.k, align 4, !noundef !67
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.k, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = phi i32 [ %i.t, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.v = lshr i64 %.sroa.20.0239, 2               ; 9 uses
  %i.w = shl nuw nsw i64 %i.v, 1                  ; 8 uses
  %i.x = mul nuw nsw i64 %i.v, 3                  ; 8 uses
  %i.y = icmp samesign ugt i64 %.sroa.20.0239, 49
  br i1 %i.y, label %bb.i, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0Es0_0B5S_.exit

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0Es0_0B5S_.exit: ; preds = %bb.r, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i9.i, %.split.i7.i, %bb.f
  %.sroa.0.0 = phi i64 [ %i.jf, %bb.r ], [ %.sroa.0.10, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i9.i ], [ %.sroa.0.10, %.split.i7.i ], [ 0, %bb.f ] ; 3 uses
  %.sroa.0165.0 = phi i64 [ %.sroa.0.0.i87, %bb.r ], [ %.sroa.0165.2, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i9.i ], [ %.sroa.0165.2, %.split.i7.i ], [ %i.x, %bb.f ] ; 3 uses
  %i.z = phi i64 [ %.sroa.0161.2, %bb.r ], [ %.sroa.0161.2, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i9.i ], [ %.sroa.0161.2, %.split.i7.i ], [ %i.v, %bb.f ] ; 5 uses
  %i.aa = phi i64 [ %.sroa.0163.2, %bb.r ], [ %.sroa.0163.2, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i9.i ], [ %.sroa.0163.2, %.split.i7.i ], [ %i.w, %bb.f ] ; 5 uses
  %i.ab = icmp ult i64 %i.aa, %.sroa.20.0239
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %i.aa ; 3 uses
  %i.ad = icmp ult i64 %i.z, %.sroa.20.0239
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %i.z ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28413)
  call void @llvm.experimental.noalias.scope.decl(metadata !28414)
  call void @llvm.experimental.noalias.scope.decl(metadata !28415)
  call void @llvm.experimental.noalias.scope.decl(metadata !28416)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ag = load double, ptr %i.af, align 8, !alias.scope !28417, !noalias !28418, !noundef !67 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ai = load double, ptr %i.ah, align 8, !alias.scope !28419, !noalias !28420, !noundef !67 ; 3 uses
  %.not1.i.i.i = fcmp une double %i.ag, %i.ai
  br i1 %.not1.i.i.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0Es0_0B5S_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !28419, !noalias !28420, !noundef !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !28417, !noalias !28418, !noundef !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !28419, !noalias !28420, !noundef !67 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !28417, !noalias !28418, !noundef !67 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, %i.ao
  %i.at = icmp ult i64 %i.am, %i.ak
  %spec.select.i.i.i = select i1 %i.ar, i1 %i.at, i1 %i.as
  br i1 %spec.select.i.i.i, label %bb.g, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit.i

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0Es0_0B5S_.exit
  %i.au = fcmp ult double %i.ag, %i.ai
  br i1 %i.au, label %bb.g, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit.i

bb.g:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i, %.split.i.i
  %i.av = add nuw nsw i64 %.sroa.0.0, 1
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit.i

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit.i: ; preds = %bb.g, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i, %.split.i.i
  %.sroa.0.1333 = phi i64 [ %i.av, %bb.g ], [ %.sroa.0.0, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i ], [ %.sroa.0.0, %.split.i.i ] ; 3 uses
  %i.aw = phi i64 [ %i.aa, %bb.g ], [ %i.z, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i ], [ %i.z, %.split.i.i ] ; 3 uses
  %i.ax = phi double [ %i.ai, %bb.g ], [ %i.ag, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i ], [ %i.ag, %.split.i.i ] ; 4 uses
  %i.ay = phi i64 [ %i.z, %bb.g ], [ %i.aa, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i ], [ %i.aa, %.split.i.i ] ; 3 uses
  %i.az = icmp ult i64 %.sroa.0165.0, %.sroa.20.0239
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %.sroa.0165.0 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28421)
  call void @llvm.experimental.noalias.scope.decl(metadata !28422)
  call void @llvm.experimental.noalias.scope.decl(metadata !28423)
  call void @llvm.experimental.noalias.scope.decl(metadata !28424)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !alias.scope !28425, !noalias !28426, !noundef !67 ; 3 uses
  %.not1.i.i5.i = fcmp une double %i.bc, %i.ax
  br i1 %.not1.i.i5.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i8.i, label %.split.i6.i

.split.i6.i:                                      ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit.i
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %i.ay ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !28427, !noalias !28428, !noundef !67
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !28425, !noalias !28426, !noundef !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !28427, !noalias !28428, !noundef !67 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !28425, !noalias !28426, !noundef !67 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %i.bj
  %i.bn = icmp ult i64 %i.bl, %i.bj
  %i.bo = icmp ult i64 %i.bh, %i.bf
  %spec.select.i.i7.i = select i1 %i.bm, i1 %i.bo, i1 %i.bn
  br i1 %spec.select.i.i7.i, label %bb.h, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit9.i

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i8.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit.i
  %i.bp = fcmp ult double %i.bc, %i.ax
  br i1 %i.bp, label %bb.h, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit9.i

bb.h:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i8.i, %.split.i6.i
  %i.bq = add nuw nsw i64 %.sroa.0.1333, 1
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit9.i

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit9.i: ; preds = %bb.h, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i8.i, %.split.i6.i
  %.sroa.0.2 = phi i64 [ %i.bq, %bb.h ], [ %.sroa.0.1333, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i8.i ], [ %.sroa.0.1333, %.split.i6.i ] ; 2 uses
  %i.br = phi double [ %i.bc, %bb.h ], [ %i.ax, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i8.i ], [ %i.ax, %.split.i6.i ] ; 2 uses
  %i.bs = phi i64 [ %.sroa.0165.0, %bb.h ], [ %i.ay, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i8.i ], [ %i.ay, %.split.i6.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %i.aw ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28429)
  call void @llvm.experimental.noalias.scope.decl(metadata !28430)
  call void @llvm.experimental.noalias.scope.decl(metadata !28431)
  call void @llvm.experimental.noalias.scope.decl(metadata !28432)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load double, ptr %i.bu, align 8, !alias.scope !28433, !noalias !28434, !noundef !67 ; 2 uses
  %.not1.i.i10.i = fcmp une double %i.br, %i.bv
  br i1 %.not1.i.i10.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i13.i, label %.split.i11.i

.split.i11.i:                                     ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit9.i
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %i.bs ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !28433, !noalias !28434, !noundef !67
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !28435, !noalias !28436, !noundef !67
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !28433, !noalias !28434, !noundef !67 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !28435, !noalias !28436, !noundef !67 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, %i.cc
  %i.cg = icmp ult i64 %i.ce, %i.cc
  %i.ch = icmp ult i64 %i.ca, %i.by
  %spec.select.i.i12.i = select i1 %i.cf, i1 %i.ch, i1 %i.cg
  br i1 %spec.select.i.i12.i, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit14.i, label %.split392

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i13.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit9.i
  %i.ci = fcmp ult double %i.br, %i.bv
  br i1 %i.ci, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit14.i, label %.split392

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit14.i: ; preds = %.split.i11.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i13.i
  %i.cj = icmp ult i64 %.sroa.0.2, 11
  br i1 %i.cj, label %.split392.thread, label %bb.s

bb.i:                                             ; preds = %bb.f
  %i.ck = add nsw i64 %i.v, -1                    ; 5 uses
  %i.cl = add nuw nsw i64 %i.v, 1                 ; 3 uses
  %i.cm = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %i.v ; 3 uses
  %i.cn = icmp ult i64 %i.ck, %.sroa.20.0239
  call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %i.ck ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28437)
  call void @llvm.experimental.noalias.scope.decl(metadata !28438)
  call void @llvm.experimental.noalias.scope.decl(metadata !28439)
  call void @llvm.experimental.noalias.scope.decl(metadata !28440)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cq = load double, ptr %i.cp, align 8, !alias.scope !28441, !noalias !28442, !noundef !67 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cs = load double, ptr %i.cr, align 8, !alias.scope !28443, !noalias !28444, !noundef !67 ; 3 uses
  %.not1.i.i.i124 = fcmp une double %i.cq, %i.cs
  br i1 %.not1.i.i.i124, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i154, label %.split.i.i125

.split.i.i125:                                    ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !28443, !noalias !28444, !noundef !67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !28441, !noalias !28442, !noundef !67
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !28443, !noalias !28444, !noundef !67 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !28441, !noalias !28442, !noundef !67 ; 2 uses
  %i.db = icmp eq i64 %i.da, %i.cy
  %i.dc = icmp ult i64 %i.da, %i.cy
  %i.dd = icmp ult i64 %i.cw, %i.cu
  %spec.select.i.i.i126 = select i1 %i.db, i1 %i.dd, i1 %i.dc
  br i1 %spec.select.i.i.i126, label %bb.j, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit.i127

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i154: ; preds = %bb.i
  %i.de = fcmp ult double %i.cq, %i.cs
  br i1 %i.de, label %bb.j, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit.i127

bb.j:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i154, %.split.i.i125
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit.i127

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit.i127: ; preds = %bb.j, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i154, %.split.i.i125
  %.sroa.0.3 = phi i64 [ 1, %bb.j ], [ 0, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i154 ], [ 0, %.split.i.i125 ] ; 3 uses
  %.sroa.0161.0 = phi i64 [ %i.ck, %bb.j ], [ %i.v, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i154 ], [ %i.v, %.split.i.i125 ] ; 3 uses
  %i.df = phi double [ %i.cs, %bb.j ], [ %i.cq, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i154 ], [ %i.cq, %.split.i.i125 ] ; 4 uses
  %.sroa.0.0.i128 = phi i64 [ %i.v, %bb.j ], [ %i.ck, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i.i154 ], [ %i.ck, %.split.i.i125 ] ; 2 uses
  %i.dg = icmp ult i64 %i.cl, %.sroa.20.0239
  call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %i.cl ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28445)
  call void @llvm.experimental.noalias.scope.decl(metadata !28446)
  call void @llvm.experimental.noalias.scope.decl(metadata !28447)
  call void @llvm.experimental.noalias.scope.decl(metadata !28448)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load double, ptr %i.di, align 8, !alias.scope !28449, !noalias !28450, !noundef !67 ; 3 uses
  %.not1.i.i1.i129 = fcmp une double %i.dj, %i.df
  br i1 %.not1.i.i1.i129, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i4.i145, label %.split.i2.i130

.split.i2.i130:                                   ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4t_5types3any5PyAnyEB4o_NtB3o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4t_3err5PyErrE0E0E0B5S_.exit.i127
  %i.dk = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %.sroa.0161.0 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
end_hunk_0
begin_hunk_1_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCINvBL_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4l_5types3any5PyAnyEB4g_NtB3g_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4l_3err5PyErrE0E0EB5K_:bb.a
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
  %i.os = sub i64 %.sroa.084.1.i.i.lcssa608609, %.sroa.046.2.i.i.lcssa610611
  %xtraiter = and i64 %i.os, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader4.i.i.prol.loopexit, label %.preheader4.i.i.prol

.preheader4.i.i.prol:                             ; preds = %.preheader4.i.i.preheader
  %i.ot = getelementptr inbounds i8, ptr %.sroa.084.1.i.i, i64 -1 ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 1, !noalias !28526, !noundef !67
  %i.ov = zext i8 %i.ou to i64
  %i.ow = xor i64 %i.ov, -1
  %i.ox = getelementptr inbounds [48 x i8], ptr %.sroa.032.1.i.i, i64 %i.ow ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i25.i, i64 48, i1 false), !noalias !28531
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i25.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ox, i64 48, i1 false), !alias.scope !28532, !noalias !28531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ox, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !28531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.oy = getelementptr inbounds nuw i8, ptr %spec.select.i25.i, i64 48 ; 2 uses
  br label %.preheader4.i.i.prol.loopexit

.preheader4.i.i.prol.loopexit:                    ; preds = %.preheader4.i.i.prol, %.preheader4.i.i.preheader
  %.sroa.01.223.i.i.unr = phi ptr [ %spec.select.i25.i, %.preheader4.i.i.preheader ], [ %i.oy, %.preheader4.i.i.prol ]
  %.sroa.084.322.i.i.unr = phi ptr [ %.sroa.084.1.i.i, %.preheader4.i.i.preheader ], [ %i.ot, %.preheader4.i.i.prol ]
  %.lcssa576.unr = phi ptr [ poison, %.preheader4.i.i.preheader ], [ %i.oy, %.preheader4.i.i.prol ]
  %i.oz = add i64 %.sroa.084.1.i.i.lcssa608609, -1
  %i.pa = icmp eq i64 %i.oz, %.sroa.046.2.i.i.lcssa610611
  br i1 %i.pa, label %.loopexit.i, label %.preheader4.i.i

.preheader4.i.i:                                  ; preds = %.preheader4.i.i.prol.loopexit, %.preheader4.i.i
  %.sroa.01.223.i.i = phi ptr [ %i.pm, %.preheader4.i.i ], [ %.sroa.01.223.i.i.unr, %.preheader4.i.i.prol.loopexit ] ; 4 uses
  %.sroa.084.322.i.i = phi ptr [ %i.ph, %.preheader4.i.i ], [ %.sroa.084.322.i.i.unr, %.preheader4.i.i.prol.loopexit ] ; 2 uses
  %i.pb = getelementptr inbounds i8, ptr %.sroa.084.322.i.i, i64 -1
  %i.pc = load i8, ptr %i.pb, align 1, !noalias !28526, !noundef !67
  %i.pd = zext i8 %i.pc to i64
  %i.pe = xor i64 %i.pd, -1
  %i.pf = getelementptr inbounds [48 x i8], ptr %.sroa.032.1.i.i, i64 %i.pe ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.223.i.i, i64 48, i1 false), !noalias !28531
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.223.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.pf, i64 48, i1 false), !alias.scope !28532, !noalias !28531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pf, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !28531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.01.223.i.i, i64 48 ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %.sroa.084.322.i.i, i64 -2 ; 3 uses
  %i.pi = load i8, ptr %i.ph, align 1, !noalias !28526, !noundef !67
  %i.pj = zext i8 %i.pi to i64
  %i.pk = xor i64 %i.pj, -1
  %i.pl = getelementptr inbounds [48 x i8], ptr %.sroa.032.1.i.i, i64 %i.pk ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.pg, i64 48, i1 false), !noalias !28531
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pg, ptr noundef nonnull align 8 dereferenceable(48) %i.pl, i64 48, i1 false), !alias.scope !28532, !noalias !28531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pl, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !28531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.01.223.i.i, i64 96 ; 2 uses
  %i.pn = icmp ult ptr %.sroa.046.2.i.i, %i.ph
  br i1 %i.pn, label %.preheader4.i.i, label %.loopexit.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.sroa.032.225.i.i = phi ptr [ %i.px, %.preheader.i.i ], [ %.sroa.032.225.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %.sroa.068.324.i.i = phi ptr [ %i.pt, %.preheader.i.i ], [ %.sroa.068.324.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %i.po = getelementptr inbounds i8, ptr %.sroa.068.324.i.i, i64 -1
  %i.pp = load i8, ptr %i.po, align 1, !noalias !28526, !noundef !67
  %i.pq = zext i8 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i25.i, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds i8, ptr %.sroa.032.225.i.i, i64 -48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.pr, i64 48, i1 false), !noalias !28531
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pr, ptr noundef nonnull align 8 dereferenceable(48) %i.ps, i64 48, i1 false), !alias.scope !28532, !noalias !28531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ps, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !28531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.pt = getelementptr inbounds i8, ptr %.sroa.068.324.i.i, i64 -2 ; 3 uses
  %i.pu = load i8, ptr %i.pt, align 1, !noalias !28526, !noundef !67
  %i.pv = zext i8 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i25.i, i64 %i.pv ; 2 uses
  %i.px = getelementptr inbounds i8, ptr %.sroa.032.225.i.i, i64 -96 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.pw, i64 48, i1 false), !noalias !28531
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pw, ptr noundef nonnull align 8 dereferenceable(48) %i.px, i64 48, i1 false), !alias.scope !28532, !noalias !28531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.px, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !28531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.py = icmp ult ptr %.sroa.018.2.i.i, %i.pt
  br i1 %i.py, label %.preheader.i.i, label %.loopexit.i

bb.ai:                                            ; preds = %.split25._crit_edge.i
  call void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.030.i, i64 noundef %.sroa.07.033.i, i64 noundef %i.kg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @597) #61, !noalias !28519
  unreachable

.loopexit.i:                                      ; preds = %.preheader4.i.i.prol.loopexit, %.preheader4.i.i, %.preheader.i.i.prol.loopexit, %.preheader.i.i, %bb.ah
  %spec.select.lcssa.sink.i.i = phi ptr [ %i.px, %.preheader.i.i ], [ %spec.select.i25.i, %bb.ah ], [ %.lcssa577.unr, %.preheader.i.i.prol.loopexit ], [ %.lcssa576.unr, %.preheader4.i.i.prol.loopexit ], [ %i.pm, %.preheader4.i.i ]
  %i.pz = ptrtoint ptr %spec.select.lcssa.sink.i.i to i64
  %i.qa = ptrtoint ptr %i.li to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %.sroa.0.0.i.i = udiv i64 %i.qb, 48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !28526
  %i.qc = add i64 %.sroa.0.0.i.i, %.sroa.0.0.lcssa.ph6265.i ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0240.lcssa270, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false)
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !28519
  store i64 %.sroa.524.0.copyload.i, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !28519
  store double %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !28519
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.qd = icmp ult i64 %i.qc, %.sroa.20.0239.lcssa261
  br i1 %i.qd, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.qc, i64 noundef range(i64 21, 192153584101141163) %.sroa.20.0239.lcssa261, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @596) #60
  unreachable

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit.i
  %i.qe = icmp uge i64 %.sroa.0.0.lcssa.ph6265.i, %.sroa.07.0.lcssa66.i
  %i.qf = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240.lcssa270, i64 %i.qc ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0240.lcssa270, i64 48, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0240.lcssa270, ptr noundef nonnull align 8 dereferenceable(48) %i.qf, i64 48, i1 false), !alias.scope !28533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qf, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.qg = sub nuw i64 %.sroa.20.0239.lcssa261, %i.qc ; 2 uses
  %i.qh = call i64 @llvm.umin.i64(i64 %i.qc, i64 %i.qg)
  %i.qi = lshr i64 %.sroa.20.0239.lcssa261, 3
  %i.qj = icmp uge i64 %i.qh, %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 48 ; 3 uses
  %i.ql = add nsw i64 %i.qg, -1                   ; 5 uses
  %i.qm = call i64 @llvm.umax.i64(i64 %i.qc, i64 %i.ql)
  %i.qn = icmp ult i64 %i.qm, 2001
  br i1 %i.qn, label %bb.ay, label %bb.ar

bb.ak:                                            ; preds = %bb.u
  %i.qo = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %.sroa.0.0.i393 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28534)
  call void @llvm.experimental.noalias.scope.decl(metadata !28535)
  call void @llvm.experimental.noalias.scope.decl(metadata !28536)
  call void @llvm.experimental.noalias.scope.decl(metadata !28537)
  %i.qp = load double, ptr %i.m, align 8, !alias.scope !28538, !noalias !28539, !noundef !67 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 40
  %i.qr = load double, ptr %i.qq, align 8, !alias.scope !28539, !noalias !28538, !noundef !67 ; 2 uses
  %.not1.i = fcmp une double %i.qp, %i.qr
  br i1 %.not1.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit, label %.split

.split:                                           ; preds = %bb.ak
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  %i.qt = load i64, ptr %i.qs, align 8, !alias.scope !28539, !noalias !28538, !noundef !67
  %i.qu = load i64, ptr %i.n, align 8, !alias.scope !28538, !noalias !28539, !noundef !67
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.qw = load i64, ptr %i.qv, align 8, !alias.scope !28539, !noalias !28538, !noundef !67 ; 2 uses
  %i.qx = load i64, ptr %i.o, align 8, !alias.scope !28538, !noalias !28539, !noundef !67 ; 2 uses
  %i.qy = icmp eq i64 %i.qx, %i.qw
  %i.qz = icmp ult i64 %i.qx, %i.qw
  %i.ra = icmp ult i64 %i.qu, %i.qt
  %spec.select.i = select i1 %i.qy, i1 %i.ra, i1 %i.qz
  br i1 %spec.select.i, label %bb.v, label %bb.am

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit: ; preds = %bb.ak
  %i.rb = fcmp ult double %i.qp, %i.qr
  br i1 %i.rb, label %bb.v, label %bb.am

bb.al:                                            ; preds = %bb.u
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i393, i64 noundef %.sroa.20.0239, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @591) #60
  unreachable

bb.am:                                            ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0240, i64 48, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0240, ptr noundef nonnull align 8 dereferenceable(48) %i.qo, i64 48, i1 false), !alias.scope !28540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qo, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0.0240, i64 48 ; 2 uses
  %i.rd = add nsw i64 %.sroa.20.0239, -1          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i72)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i72, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0240, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %.sroa.0.0240, i64 24 ; 2 uses
  %.sroa.4.0.copyload.i74 = load i64, ptr %.sroa.4.0..sroa_idx.i73, align 8, !alias.scope !28541 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0240, i64 32 ; 2 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !28541 ; 3 uses
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0240, i64 40 ; 2 uses
  %.sroa.618.0.copyload.i = load double, ptr %.sroa.618.0..sroa_idx.i, align 8, !alias.scope !28541 ; 5 uses
  br label %.outer.i

.outer.i:                                         ; preds = %bb.ao, %bb.am
  %.sroa.09.0.ph.i = phi i64 [ %i.rd, %bb.am ], [ %i.rt, %bb.ao ] ; 5 uses
  %.sroa.01.0.ph.i = phi i64 [ 0, %bb.am ], [ %i.si, %bb.ao ] ; 3 uses
  %i.re = icmp ult i64 %.sroa.01.0.ph.i, %.sroa.09.0.ph.i
  br i1 %i.re, label %.lr.ph.i77, label %.split._crit_edge.i75

.lr.ph.i77:                                       ; preds = %.outer.i, %bb.an
  %.sroa.01.022.i = phi i64 [ %i.rs, %bb.an ], [ %.sroa.01.0.ph.i, %.outer.i ] ; 5 uses
  %i.rf = icmp ult i64 %.sroa.01.022.i, %i.rd
  call void @llvm.assume(i1 %i.rf)
  %i.rg = getelementptr inbounds nuw [48 x i8], ptr %i.rc, i64 %.sroa.01.022.i ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 40
  %i.ri = load double, ptr %i.rh, align 8, !alias.scope !28542, !noalias !28543, !noundef !67 ; 2 uses
  %.not1.i.i78 = fcmp une double %.sroa.618.0.copyload.i, %i.ri
  br i1 %.not1.i.i78, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i82, label %.split.i79

.split.i79:                                       ; preds = %.lr.ph.i77
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 32
  %i.rk = load i64, ptr %i.rj, align 8, !alias.scope !28542, !noalias !28543, !noundef !67
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.rm = load i64, ptr %i.rl, align 8, !alias.scope !28542, !noalias !28543, !noundef !67 ; 2 uses
  %i.rn = icmp eq i64 %.sroa.4.0.copyload.i74, %i.rm
  %i.ro = icmp ult i64 %.sroa.4.0.copyload.i74, %i.rm
  %i.rp = icmp ult i64 %.sroa.5.0.copyload.i, %i.rk
  %spec.select.i.i80 = select i1 %i.rn, i1 %i.rp, i1 %i.ro
  br i1 %spec.select.i.i80, label %.split._crit_edge.i75, label %bb.an

.split._crit_edge.i75:                            ; preds = %bb.an, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i82, %.split.i79, %.outer.i
  %.sroa.01.0.lcssa.i = phi i64 [ %.sroa.01.0.ph.i, %.outer.i ], [ %.sroa.09.0.ph.i, %bb.an ], [ %.sroa.01.022.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i82 ], [ %.sroa.01.022.i, %.split.i79 ] ; 5 uses
  %i.rq = add nsw i64 %.sroa.09.0.ph.i, -1        ; 2 uses
  %.not2125.i = icmp ult i64 %.sroa.01.0.lcssa.i, %i.rq
  br i1 %.not2125.i, label %.lr.ph28.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort15partition_equalNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCINvBU_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEB4p_NtB3p_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4u_3err5PyErrE0E0EB5T_.exit

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i82: ; preds = %.lr.ph.i77
  %i.rr = fcmp ult double %.sroa.618.0.copyload.i, %i.ri
  br i1 %i.rr, label %.split._crit_edge.i75, label %bb.an

bb.an:                                            ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit.i82, %.split.i79
  %i.rs = add nuw nsw i64 %.sroa.01.022.i, 1      ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %i.rs, %.sroa.09.0.ph.i
  br i1 %exitcond.not.i81, label %.split._crit_edge.i75, label %.lr.ph.i77

.lr.ph28.i:                                       ; preds = %.split._crit_edge.i75, %.backedge.i76
  %i.rt = phi i64 [ %i.sg, %.backedge.i76 ], [ %i.rq, %.split._crit_edge.i75 ] ; 4 uses
  %.sroa.09.126.i = phi i64 [ %i.rt, %.backedge.i76 ], [ %.sroa.09.0.ph.i, %.split._crit_edge.i75 ]
  %i.ru = icmp ult i64 %i.rt, %i.rd
  call void @llvm.assume(i1 %i.ru)
  %i.rv = getelementptr [48 x i8], ptr %.sroa.0.0240, i64 %.sroa.09.126.i ; 5 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  %i.rx = load double, ptr %i.rw, align 8, !alias.scope !28544, !noalias !28545, !noundef !67 ; 2 uses
  %.not1.i27.i = fcmp une double %.sroa.618.0.copyload.i, %i.rx
  br i1 %.not1.i27.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit30.i, label %.split19.i

.split19.i:                                       ; preds = %.lr.ph28.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.rz = load i64, ptr %i.ry, align 8, !alias.scope !28544, !noalias !28545, !noundef !67
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.sb = load i64, ptr %i.sa, align 8, !alias.scope !28544, !noalias !28545, !noundef !67 ; 2 uses
  %i.sc = icmp eq i64 %.sroa.4.0.copyload.i74, %i.sb
  %i.sd = icmp ult i64 %.sroa.4.0.copyload.i74, %i.sb
  %i.se = icmp ult i64 %.sroa.5.0.copyload.i, %i.rz
  %spec.select.i28.i = select i1 %i.sc, i1 %i.se, i1 %i.sd
  br i1 %spec.select.i28.i, label %.backedge.i76, label %bb.ao

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit30.i: ; preds = %.lr.ph28.i
  %i.sf = fcmp ult double %.sroa.618.0.copyload.i, %i.rx
  br i1 %i.sf, label %.backedge.i76, label %bb.ao

.backedge.i76:                                    ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit30.i, %.split19.i
  %i.sg = add nsw i64 %i.rt, -1                   ; 2 uses
  %.not21.i = icmp ult i64 %.sroa.01.0.lcssa.i, %i.sg
  br i1 %.not21.i, label %.lr.ph28.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort15partition_equalNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCINvBU_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEB4p_NtB3p_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4u_3err5PyErrE0E0EB5T_.exit

bb.ao:                                            ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3X_5types3any5PyAnyEB3S_NtB2S_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB3X_3err5PyErrE0E0B5m_.exit30.i, %.split19.i
  %i.sh = getelementptr inbounds nuw [48 x i8], ptr %i.rc, i64 %.sroa.01.0.lcssa.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.sh, i64 48, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.sh, ptr noundef nonnull align 8 dereferenceable(48) %i.rv, i64 48, i1 false), !alias.scope !28541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rv, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.si = add nuw i64 %.sroa.01.0.lcssa.i, 1
  br label %.outer.i

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort15partition_equalNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCINvBU_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEB4p_NtB3p_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4u_3err5PyErrE0E0EB5T_.exit: ; preds = %.split._crit_edge.i75, %.backedge.i76
  %i.sj = add i64 %.sroa.01.0.lcssa.i, 1          ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0240, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i72, i64 24, i1 false)
  store i64 %.sroa.4.0.copyload.i74, ptr %.sroa.4.0..sroa_idx.i73, align 8, !alias.scope !28541
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !28541
  store double %.sroa.618.0.copyload.i, ptr %.sroa.618.0..sroa_idx.i, align 8, !alias.scope !28541
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i72)
  %i.sk = icmp ugt i64 %i.sj, %.sroa.20.0239
  br i1 %i.sk, label %bb.aq, label %bb.ap, !prof !71

bb.ap:                                            ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort15partition_equalNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCINvBU_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEB4p_NtB3p_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4u_3err5PyErrE0E0EB5T_.exit
  %i.sl = sub nuw i64 %.sroa.20.0239, %i.sj       ; 3 uses
  %i.sm = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0240, i64 %i.sj ; 2 uses
  %i.sn = icmp ult i64 %i.sl, 21
  br i1 %i.sn, label %.outer._crit_edge, label %bb.b

bb.aq:                                            ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort15partition_equalNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCINvBU_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEB4p_NtB3p_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4u_3err5PyErrE0E0EB5T_.exit
  call void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.sj, i64 noundef %.sroa.20.0239, i64 noundef %.sroa.20.0239, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @592) #60
  unreachable

bb.ar:                                            ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit
  store ptr %i.qk, ptr %i.a, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ql, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.qf, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.k, ptr %.sroa.754.0..sroa_idx, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.0.0240.lcssa270, ptr %i.so, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.qc, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %2, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.k, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.032.0.ph246, ptr %.sroa.749.0..sroa_idx, align 8
  %i.sp = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCslLviULm4Laq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i = load ptr, ptr %i.sp, align 8, !noalias !28546, !noundef !67 ; 2 uses
  %i.sq = icmp eq ptr %.val.i.i, null
  br i1 %i.sq, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvB4_4join4calluNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB1W_INtB1h_16ParallelSliceMutB1W_E20par_sort_unstable_byNCINvB1Y_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5C_5types3any5PyAnyEB5x_NtB4x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5C_3err5PyErrE0E0E0E0NCIBS_uNCB1c_s_0E0uuE0B71_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull align 128 %.val.i.i) #64
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  %i.sr = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !28546, !inline_history !28409
  %i.ss = load ptr, ptr %i.sr, align 8, !noalias !28546, !nonnull !67, !noundef !67 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.sp, align 8, !noalias !28547, !noundef !67 ; 4 uses
  %i.su = icmp eq ptr %.val.i.i.i, null
  br i1 %i.su, label %bb.av, label %bb.au, !prof !71

bb.au:                                            ; preds = %bb.at
  %i.sv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.sw = load ptr, ptr %i.sv, align 16, !noalias !28547, !nonnull !67, !noundef !67
  %.not.i156 = icmp eq ptr %i.sw, %i.ss
  br i1 %.not.i156, label %bb.aw, label %bb.ax, !prof !77

bb.av:                                            ; preds = %bb.at
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvB1g_4join4calluNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB2M_INtB27_16ParallelSliceMutB2M_E20par_sort_unstable_byNCINvB2O_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_NtB5n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB6s_3err5PyErrE0E0E0E0NCIB1H_uNCB22_s_0E0uuE0TuuEEB7R_(ptr noundef nonnull align 128 %i.st, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.a), !inline_history !28412
  br label %.loopexit

bb.aw:                                            ; preds = %bb.au
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvB4_4join4calluNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB1W_INtB1h_16ParallelSliceMutB1W_E20par_sort_unstable_byNCINvB1Y_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5C_5types3any5PyAnyEB5x_NtB4x_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5C_3err5PyErrE0E0E0E0NCIBS_uNCB1c_s_0E0uuE0B71_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull align 128 %.val.i.i.i) #64
  br label %.loopexit

bb.ax:                                            ; preds = %bb.au
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvB1h_4join4calluNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB2N_INtB28_16ParallelSliceMutB2N_E20par_sort_unstable_byNCINvB2P_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6t_5types3any5PyAnyEB6o_NtB5o_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB6t_3err5PyErrE0E0E0E0NCIB1I_uNCB23_s_0E0uuE0TuuEEB7S_(ptr noundef nonnull align 128 %i.st, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.a), !inline_history !28412
  br label %.loopexit

bb.ay:                                            ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.sx = icmp ult i64 %i.qc, %i.ql
  br i1 %i.sx, label %bb.ba, label %bb.az

.loopexit:                                        ; preds = %bb.t, %bb.as, %bb.av, %bb.aw, %bb.ax, %bb.c, %bb.bb, %.outer._crit_edge
  ret void

bb.az:                                            ; preds = %bb.ay
  call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCINvBL_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4l_5types3any5PyAnyEB4g_NtB3g_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4l_3err5PyErrE0E0EB5K_(ptr noalias nofree noundef nonnull align 8 %i.qk, i64 noundef %i.ql, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(48) %i.qf, i32 noundef %i.ka)
  br label %.outer

bb.ba:                                            ; preds = %bb.ay
  call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCINvBL_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4l_5types3any5PyAnyEB4g_NtB3g_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4l_3err5PyErrE0E0EB5K_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0240.lcssa270, i64 noundef %i.qc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable_or_null(48) %.sroa.032.0.ph246, i32 noundef %i.ka)
  br label %.outer

.outer:                                           ; preds = %bb.ba, %bb.az
  %.sroa.032.1 = phi ptr [ %i.qf, %bb.ba ], [ %.sroa.032.0.ph246, %bb.az ]
  %.sroa.20.1 = phi i64 [ %i.ql, %bb.ba ], [ %i.qc, %bb.az ] ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.qk, %bb.ba ], [ %.sroa.0.0240.lcssa270, %bb.az ] ; 2 uses
  %i.sy = icmp ult i64 %.sroa.20.1, 21
  br i1 %i.sy, label %.outer._crit_edge, label %.lr.ph

bb.bb:                                            ; preds = %.outer._crit_edge
  call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB12_INtB4_16ParallelSliceMutB12_E20par_sort_unstable_byNCINvB14_12steiner_treeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4H_5types3any5PyAnyEB4C_NtB3C_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4H_3err5PyErrE0E0EB66_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef %.sroa.20.0.lcssa, i64 noundef 1) #62
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCINvBL_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4q_5types3any5PyAnyEB4l_NtB3l_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4q_3err5PyErrEs4_0E0EB5P_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef align 8 dereferenceable_or_null(48) %3, i32 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 14 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.0.i71 = alloca [24 x i8], align 8        ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 12 uses
  %i.f = alloca [48 x i8], align 8                ; 12 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [128 x i8], align 1               ; 6 uses
  %i.i = alloca [128 x i8], align 1               ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 7 uses
  store i32 %4, ptr %i.k, align 4
  %i.l = icmp samesign ult i64 %1, 21
  br i1 %i.l, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph246 = phi ptr [ %.sroa.0.1, %.outer ], [ %0, %bb.a ] ; 2 uses
  %.sroa.20.0.ph245 = phi i64 [ %.sroa.20.1, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.032.0.ph244 = phi ptr [ %.sroa.032.1, %.outer ], [ %3, %bb.a ] ; 7 uses
  %.sroa.036.0.ph243 = phi i1 [ %i.qz, %.outer ], [ true, %bb.a ] ; 2 uses
  %.sroa.038.0.ph242 = phi i1 [ %i.qu, %.outer ], [ true, %bb.a ]
  %or.cond = select i1 %.sroa.036.0.ph243, i1 %.sroa.038.0.ph242, i1 false ; 2 uses
  %.not = icmp eq ptr %.sroa.032.0.ph244, null
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.0.ph244, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.032.0.ph244, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.0.ph244, i64 32
  %.pre332 = load i32, ptr %i.k, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ap
  %i.p = phi i32 [ %.pre332, %.lr.ph ], [ %i.km, %bb.ap ] ; 2 uses
  %.sroa.0.0238 = phi ptr [ %.sroa.0.0.ph246, %.lr.ph ], [ %i.tf, %bb.ap ] ; 42 uses
  %.sroa.20.0237 = phi i64 [ %.sroa.20.0.ph245, %.lr.ph ], [ %i.te, %bb.ap ] ; 28 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d, !prof !71

.outer._crit_edge:                                ; preds = %.outer, %bb.ap, %bb.a
  %.sroa.20.0.lcssa = phi i64 [ %i.te, %bb.ap ], [ %1, %bb.a ], [ %.sroa.20.1, %.outer ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.tf, %bb.ap ], [ %0, %bb.a ], [ %.sroa.0.1, %.outer ]
  %i.r = icmp samesign ugt i64 %.sroa.20.0.lcssa, 1
  br i1 %i.r, label %bb.bb, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort8heapsortNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeRNCINvYSBK_INtB4_16ParallelSliceMutBK_E20par_sort_unstable_byNCINvBM_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4s_5types3any5PyAnyEB4n_NtB3n_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4s_3err5PyErrEs4_0E0EB5R_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0238, i64 noundef %.sroa.20.0237)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  br i1 %.sroa.036.0.ph243, label %bb.f, label %bb.e, !prof !77

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort14break_patternsNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0238, i64 noundef %.sroa.20.0237)
  %i.s = load i32, ptr %i.k, align 4, !noundef !67
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.k, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = phi i32 [ %i.t, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.v = lshr i64 %.sroa.20.0237, 2               ; 9 uses
  %i.w = shl nuw nsw i64 %i.v, 1                  ; 8 uses
  %i.x = mul nuw nsw i64 %i.v, 3                  ; 8 uses
  %i.y = icmp samesign ugt i64 %.sroa.20.0237, 49
  br i1 %i.y, label %bb.i, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0Es0_0B5X_.exit

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0Es0_0B5X_.exit: ; preds = %bb.r, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i84, %.split.i6.i86, %bb.f
  %.sroa.0.0 = phi i64 [ %i.jr, %bb.r ], [ %.sroa.0.10, %.split.i6.i86 ], [ %.sroa.0.10, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i84 ], [ 0, %bb.f ] ; 3 uses
  %.sroa.0163.0 = phi i64 [ %.sroa.0.0.i83, %bb.r ], [ %.sroa.0163.2, %.split.i6.i86 ], [ %.sroa.0163.2, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i84 ], [ %i.x, %bb.f ] ; 3 uses
  %i.z = phi i64 [ %.sroa.0159.2, %bb.r ], [ %.sroa.0159.2, %.split.i6.i86 ], [ %.sroa.0159.2, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i84 ], [ %i.v, %bb.f ] ; 5 uses
  %i.aa = phi i64 [ %.sroa.0161.2, %bb.r ], [ %.sroa.0161.2, %.split.i6.i86 ], [ %.sroa.0161.2, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i84 ], [ %i.w, %bb.f ] ; 5 uses
  %i.ab = icmp ult i64 %i.aa, %.sroa.20.0237
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %i.aa ; 3 uses
  %i.ad = icmp ult i64 %i.z, %.sroa.20.0237
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %i.z ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28754)
  call void @llvm.experimental.noalias.scope.decl(metadata !28755)
  call void @llvm.experimental.noalias.scope.decl(metadata !28756)
  call void @llvm.experimental.noalias.scope.decl(metadata !28757)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !28758, !noalias !28759, !noundef !67 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !28760, !noalias !28761, !noundef !67 ; 3 uses
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %.split.i.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i

.split.i.i:                                       ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0Es0_0B5X_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.al = load double, ptr %i.ak, align 8, !alias.scope !28760, !noalias !28761, !noundef !67
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.an = load double, ptr %i.am, align 8, !alias.scope !28758, !noalias !28759, !noundef !67
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !28760, !noalias !28761, !noundef !67 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !28758, !noalias !28759, !noundef !67 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.ap
  %i.at = icmp ult i64 %i.ar, %i.ap
  %i.au = fcmp ult double %i.an, %i.al
  %spec.select.i.i.i = select i1 %i.as, i1 %i.au, i1 %i.at
  br i1 %spec.select.i.i.i, label %bb.g, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit.i

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0Es0_0B5X_.exit
  %i.av = icmp ult i64 %i.ag, %i.ai
  br i1 %i.av, label %bb.g, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit.i

bb.g:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i, %.split.i.i
  %i.aw = add nuw nsw i64 %.sroa.0.0, 1
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit.i

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit.i: ; preds = %bb.g, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i, %.split.i.i
  %.sroa.0.1331 = phi i64 [ %i.aw, %bb.g ], [ %.sroa.0.0, %.split.i.i ], [ %.sroa.0.0, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i ] ; 3 uses
  %i.ax = phi i64 [ %i.aa, %bb.g ], [ %i.z, %.split.i.i ], [ %i.z, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i ] ; 3 uses
  %i.ay = phi i64 [ %i.ai, %bb.g ], [ %i.ag, %.split.i.i ], [ %i.ag, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i ] ; 4 uses
  %i.az = phi i64 [ %i.z, %bb.g ], [ %i.aa, %.split.i.i ], [ %i.aa, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i ] ; 3 uses
  %i.ba = icmp ult i64 %.sroa.0163.0, %.sroa.20.0237
  call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %.sroa.0163.0 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28762)
  call void @llvm.experimental.noalias.scope.decl(metadata !28763)
  call void @llvm.experimental.noalias.scope.decl(metadata !28764)
  call void @llvm.experimental.noalias.scope.decl(metadata !28765)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !28766, !noalias !28767, !noundef !67 ; 3 uses
  %i.be = icmp eq i64 %i.bd, %i.ay
  br i1 %i.be, label %.split.i6.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i

.split.i6.i:                                      ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit.i
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %i.az ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load double, ptr %i.bg, align 8, !alias.scope !28768, !noalias !28769, !noundef !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bj = load double, ptr %i.bi, align 8, !alias.scope !28766, !noalias !28767, !noundef !67
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !28768, !noalias !28769, !noundef !67 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !28766, !noalias !28767, !noundef !67 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %i.bl
  %i.bp = icmp ult i64 %i.bn, %i.bl
  %i.bq = fcmp ult double %i.bj, %i.bh
  %spec.select.i.i7.i = select i1 %i.bo, i1 %i.bq, i1 %i.bp
  br i1 %spec.select.i.i7.i, label %bb.h, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit8.i

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit.i
  %i.br = icmp ult i64 %i.bd, %i.ay
  br i1 %i.br, label %bb.h, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit8.i

bb.h:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i, %.split.i6.i
  %i.bs = add nuw nsw i64 %.sroa.0.1331, 1
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit8.i

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit8.i: ; preds = %bb.h, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i, %.split.i6.i
  %.sroa.0.2 = phi i64 [ %i.bs, %bb.h ], [ %.sroa.0.1331, %.split.i6.i ], [ %.sroa.0.1331, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i ] ; 2 uses
  %i.bt = phi i64 [ %i.bd, %bb.h ], [ %i.ay, %.split.i6.i ], [ %i.ay, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i ] ; 2 uses
  %i.bu = phi i64 [ %.sroa.0163.0, %bb.h ], [ %i.az, %.split.i6.i ], [ %i.az, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i5.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %i.ax ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28770)
  call void @llvm.experimental.noalias.scope.decl(metadata !28771)
  call void @llvm.experimental.noalias.scope.decl(metadata !28772)
  call void @llvm.experimental.noalias.scope.decl(metadata !28773)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !28774, !noalias !28775, !noundef !67 ; 2 uses
  %i.by = icmp eq i64 %i.bt, %i.bx
  br i1 %i.by, label %.split.i10.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i9.i

.split.i10.i:                                     ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit8.i
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %i.bu ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.cb = load double, ptr %i.ca, align 8, !alias.scope !28774, !noalias !28775, !noundef !67
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cd = load double, ptr %i.cc, align 8, !alias.scope !28776, !noalias !28777, !noundef !67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !28774, !noalias !28775, !noundef !67 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !28776, !noalias !28777, !noundef !67 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %i.cf
  %i.cj = icmp ult i64 %i.ch, %i.cf
  %i.ck = fcmp ult double %i.cd, %i.cb
  %spec.select.i.i11.i = select i1 %i.ci, i1 %i.ck, i1 %i.cj
  br i1 %spec.select.i.i11.i, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit12.i, label %.split391

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i9.i: ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit8.i
  %i.cl = icmp ult i64 %i.bt, %i.bx
  br i1 %i.cl, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit12.i, label %.split391

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit12.i: ; preds = %.split.i10.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i9.i
  %i.cm = icmp ult i64 %.sroa.0.2, 11
  br i1 %i.cm, label %.split391.thread, label %bb.s

bb.i:                                             ; preds = %bb.f
  %i.cn = add nsw i64 %i.v, -1                    ; 5 uses
  %i.co = add nuw nsw i64 %i.v, 1                 ; 3 uses
  %i.cp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %i.v ; 3 uses
  %i.cq = icmp ult i64 %i.cn, %.sroa.20.0237
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %i.cn ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28778)
  call void @llvm.experimental.noalias.scope.decl(metadata !28779)
  call void @llvm.experimental.noalias.scope.decl(metadata !28780)
  call void @llvm.experimental.noalias.scope.decl(metadata !28781)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !28782, !noalias !28783, !noundef !67 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !28784, !noalias !28785, !noundef !67 ; 3 uses
  %i.cw = icmp eq i64 %i.ct, %i.cv
  br i1 %i.cw, label %.split.i.i151, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i124

.split.i.i151:                                    ; preds = %bb.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.cy = load double, ptr %i.cx, align 8, !alias.scope !28784, !noalias !28785, !noundef !67
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.da = load double, ptr %i.cz, align 8, !alias.scope !28782, !noalias !28783, !noundef !67
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !28784, !noalias !28785, !noundef !67 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !28782, !noalias !28783, !noundef !67 ; 2 uses
  %i.df = icmp eq i64 %i.de, %i.dc
  %i.dg = icmp ult i64 %i.de, %i.dc
  %i.dh = fcmp ult double %i.da, %i.cy
  %spec.select.i.i.i152 = select i1 %i.df, i1 %i.dh, i1 %i.dg
  br i1 %spec.select.i.i.i152, label %bb.j, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit.i125

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i124: ; preds = %bb.i
  %i.di = icmp ult i64 %i.ct, %i.cv
  br i1 %i.di, label %bb.j, label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit.i125

bb.j:                                             ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i124, %.split.i.i151
  br label %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit.i125

_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit.i125: ; preds = %bb.j, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i124, %.split.i.i151
  %.sroa.0.3 = phi i64 [ 1, %bb.j ], [ 0, %.split.i.i151 ], [ 0, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i124 ] ; 3 uses
  %.sroa.0159.0 = phi i64 [ %i.cn, %bb.j ], [ %i.v, %.split.i.i151 ], [ %i.v, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i124 ] ; 3 uses
  %i.dj = phi i64 [ %i.cv, %bb.j ], [ %i.ct, %.split.i.i151 ], [ %i.ct, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i124 ] ; 4 uses
  %.sroa.0.0.i126 = phi i64 [ %i.v, %bb.j ], [ %i.cn, %.split.i.i151 ], [ %i.cn, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i.i124 ] ; 2 uses
  %i.dk = icmp ult i64 %i.co, %.sroa.20.0237
  call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %i.co ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28786)
  call void @llvm.experimental.noalias.scope.decl(metadata !28787)
  call void @llvm.experimental.noalias.scope.decl(metadata !28788)
  call void @llvm.experimental.noalias.scope.decl(metadata !28789)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !28790, !noalias !28791, !noundef !67 ; 3 uses
  %i.do = icmp eq i64 %i.dn, %i.dj
  br i1 %i.do, label %.split.i2.i141, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i1.i127

.split.i2.i141:                                   ; preds = %_RNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort12choose_pivotNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBR_INtB6_16ParallelSliceMutBR_E20par_sort_unstable_byNCINvBT_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4y_5types3any5PyAnyEB4t_NtB3t_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4y_3err5PyErrEs4_0E0E0B5X_.exit.i125
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %.sroa.0159.0 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
end_hunk_1
begin_hunk_2_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBJ_INtB4_16ParallelSliceMutBJ_E20par_sort_unstable_byNCINvBL_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4q_5types3any5PyAnyEB4l_NtB3l_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4q_3err5PyErrEs4_0E0EB5P_:bb.a
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
  %i.pi = sub i64 %.sroa.084.1.i.i.lcssa607608, %.sroa.046.2.i.i.lcssa609610
  %xtraiter = and i64 %i.pi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader4.i.i.prol.loopexit, label %.preheader4.i.i.prol

.preheader4.i.i.prol:                             ; preds = %.preheader4.i.i.preheader
  %i.pj = getelementptr inbounds i8, ptr %.sroa.084.1.i.i, i64 -1 ; 2 uses
  %i.pk = load i8, ptr %i.pj, align 1, !noalias !28867, !noundef !67
  %i.pl = zext i8 %i.pk to i64
  %i.pm = xor i64 %i.pl, -1
  %i.pn = getelementptr inbounds [48 x i8], ptr %.sroa.032.1.i.i, i64 %i.pm ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i24.i, i64 48, i1 false), !noalias !28872
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i24.i, ptr noundef nonnull align 8 dereferenceable(48) %i.pn, i64 48, i1 false), !alias.scope !28873, !noalias !28872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pn, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !28872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.po = getelementptr inbounds nuw i8, ptr %spec.select.i24.i, i64 48 ; 2 uses
  br label %.preheader4.i.i.prol.loopexit

.preheader4.i.i.prol.loopexit:                    ; preds = %.preheader4.i.i.prol, %.preheader4.i.i.preheader
  %.sroa.01.223.i.i.unr = phi ptr [ %spec.select.i24.i, %.preheader4.i.i.preheader ], [ %i.po, %.preheader4.i.i.prol ]
  %.sroa.084.322.i.i.unr = phi ptr [ %.sroa.084.1.i.i, %.preheader4.i.i.preheader ], [ %i.pj, %.preheader4.i.i.prol ]
  %.lcssa575.unr = phi ptr [ poison, %.preheader4.i.i.preheader ], [ %i.po, %.preheader4.i.i.prol ]
  %i.pp = add i64 %.sroa.084.1.i.i.lcssa607608, -1
  %i.pq = icmp eq i64 %i.pp, %.sroa.046.2.i.i.lcssa609610
  br i1 %i.pq, label %.loopexit.i, label %.preheader4.i.i

.preheader4.i.i:                                  ; preds = %.preheader4.i.i.prol.loopexit, %.preheader4.i.i
  %.sroa.01.223.i.i = phi ptr [ %i.qc, %.preheader4.i.i ], [ %.sroa.01.223.i.i.unr, %.preheader4.i.i.prol.loopexit ] ; 4 uses
  %.sroa.084.322.i.i = phi ptr [ %i.px, %.preheader4.i.i ], [ %.sroa.084.322.i.i.unr, %.preheader4.i.i.prol.loopexit ] ; 2 uses
  %i.pr = getelementptr inbounds i8, ptr %.sroa.084.322.i.i, i64 -1
  %i.ps = load i8, ptr %i.pr, align 1, !noalias !28867, !noundef !67
  %i.pt = zext i8 %i.ps to i64
  %i.pu = xor i64 %i.pt, -1
  %i.pv = getelementptr inbounds [48 x i8], ptr %.sroa.032.1.i.i, i64 %i.pu ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.223.i.i, i64 48, i1 false), !noalias !28872
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.01.223.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.pv, i64 48, i1 false), !alias.scope !28873, !noalias !28872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pv, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !28872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.01.223.i.i, i64 48 ; 2 uses
  %i.px = getelementptr inbounds i8, ptr %.sroa.084.322.i.i, i64 -2 ; 3 uses
  %i.py = load i8, ptr %i.px, align 1, !noalias !28867, !noundef !67
  %i.pz = zext i8 %i.py to i64
  %i.qa = xor i64 %i.pz, -1
  %i.qb = getelementptr inbounds [48 x i8], ptr %.sroa.032.1.i.i, i64 %i.qa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.pw, i64 48, i1 false), !noalias !28872
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.pw, ptr noundef nonnull align 8 dereferenceable(48) %i.qb, i64 48, i1 false), !alias.scope !28873, !noalias !28872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qb, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !28872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.01.223.i.i, i64 96 ; 2 uses
  %i.qd = icmp ult ptr %.sroa.046.2.i.i, %i.px
  br i1 %i.qd, label %.preheader4.i.i, label %.loopexit.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.sroa.032.225.i.i = phi ptr [ %i.qn, %.preheader.i.i ], [ %.sroa.032.225.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %.sroa.068.324.i.i = phi ptr [ %i.qj, %.preheader.i.i ], [ %.sroa.068.324.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 2 uses
  %i.qe = getelementptr inbounds i8, ptr %.sroa.068.324.i.i, i64 -1
  %i.qf = load i8, ptr %i.qe, align 1, !noalias !28867, !noundef !67
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i24.i, i64 %i.qg ; 2 uses
  %i.qi = getelementptr inbounds i8, ptr %.sroa.032.225.i.i, i64 -48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.qh, i64 48, i1 false), !noalias !28872
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qh, ptr noundef nonnull align 8 dereferenceable(48) %i.qi, i64 48, i1 false), !alias.scope !28873, !noalias !28872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qi, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !28872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.qj = getelementptr inbounds i8, ptr %.sroa.068.324.i.i, i64 -2 ; 3 uses
  %i.qk = load i8, ptr %i.qj, align 1, !noalias !28867, !noundef !67
  %i.ql = zext i8 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i24.i, i64 %i.ql ; 2 uses
  %i.qn = getelementptr inbounds i8, ptr %.sroa.032.225.i.i, i64 -96 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.qm, i64 48, i1 false), !noalias !28872
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qm, ptr noundef nonnull align 8 dereferenceable(48) %i.qn, i64 48, i1 false), !alias.scope !28873, !noalias !28872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qn, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !28872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.qo = icmp ult ptr %.sroa.018.2.i.i, %i.qj
  br i1 %i.qo, label %.preheader.i.i, label %.loopexit.i

bb.ai:                                            ; preds = %.split25._crit_edge.i
  call void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.030.i, i64 noundef %.sroa.07.033.i, i64 noundef %i.ks, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @597) #61, !noalias !28860
  unreachable

.loopexit.i:                                      ; preds = %.preheader4.i.i.prol.loopexit, %.preheader4.i.i, %.preheader.i.i.prol.loopexit, %.preheader.i.i, %bb.ah
  %spec.select.lcssa.sink.i.i = phi ptr [ %i.qn, %.preheader.i.i ], [ %spec.select.i24.i, %bb.ah ], [ %.lcssa576.unr, %.preheader.i.i.prol.loopexit ], [ %.lcssa575.unr, %.preheader4.i.i.prol.loopexit ], [ %i.qc, %.preheader4.i.i ]
  %i.qp = ptrtoint ptr %spec.select.lcssa.sink.i.i to i64
  %i.qq = ptrtoint ptr %i.lw to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %.sroa.0.0.i.i = udiv i64 %i.qr, 48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !28867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !28867
  %i.qs = add i64 %.sroa.0.0.i.i, %.sroa.0.0.lcssa.ph6265.i ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0238.lcssa268, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false)
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !28860
  store i64 %.sroa.524.0.copyload.i, ptr %.sroa.524.0..sroa_idx.i, align 8, !alias.scope !28860
  store double %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !28860
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.qt = icmp ult i64 %i.qs, %.sroa.20.0237.lcssa259
  br i1 %i.qt, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.qs, i64 noundef range(i64 21, 192153584101141163) %.sroa.20.0237.lcssa259, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @596) #60
  unreachable

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit.i
  %i.qu = icmp uge i64 %.sroa.0.0.lcssa.ph6265.i, %.sroa.07.0.lcssa66.i
  %i.qv = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238.lcssa268, i64 %i.qs ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0238.lcssa268, i64 48, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0238.lcssa268, ptr noundef nonnull align 8 dereferenceable(48) %i.qv, i64 48, i1 false), !alias.scope !28874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qv, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.qw = sub nuw i64 %.sroa.20.0237.lcssa259, %i.qs ; 2 uses
  %i.qx = call i64 @llvm.umin.i64(i64 %i.qs, i64 %i.qw)
  %i.qy = lshr i64 %.sroa.20.0237.lcssa259, 3
  %i.qz = icmp uge i64 %i.qx, %i.qy
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qv, i64 48 ; 3 uses
  %i.rb = add nsw i64 %i.qw, -1                   ; 5 uses
  %i.rc = call i64 @llvm.umax.i64(i64 %i.qs, i64 %i.rb)
  %i.rd = icmp ult i64 %i.rc, 2001
  br i1 %i.rd, label %bb.ay, label %bb.ar

bb.ak:                                            ; preds = %bb.u
  %i.re = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %.sroa.0.0.i392 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28875)
  call void @llvm.experimental.noalias.scope.decl(metadata !28876)
  call void @llvm.experimental.noalias.scope.decl(metadata !28877)
  call void @llvm.experimental.noalias.scope.decl(metadata !28878)
  %i.rf = load i64, ptr %i.m, align 8, !alias.scope !28879, !noalias !28880, !noundef !67 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rh = load i64, ptr %i.rg, align 8, !alias.scope !28880, !noalias !28879, !noundef !67 ; 2 uses
  %i.ri = icmp eq i64 %i.rf, %i.rh
  br i1 %i.ri, label %.split, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit

.split:                                           ; preds = %bb.ak
  %i.rj = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  %i.rk = load double, ptr %i.rj, align 8, !alias.scope !28880, !noalias !28879, !noundef !67
  %i.rl = load double, ptr %i.n, align 8, !alias.scope !28879, !noalias !28880, !noundef !67
  %i.rm = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rn = load i64, ptr %i.rm, align 8, !alias.scope !28880, !noalias !28879, !noundef !67 ; 2 uses
  %i.ro = load i64, ptr %i.o, align 8, !alias.scope !28879, !noalias !28880, !noundef !67 ; 2 uses
  %i.rp = icmp eq i64 %i.ro, %i.rn
  %i.rq = icmp ult i64 %i.ro, %i.rn
  %i.rr = fcmp ult double %i.rl, %i.rk
  %spec.select.i = select i1 %i.rp, i1 %i.rr, i1 %i.rq
  br i1 %spec.select.i, label %bb.v, label %bb.am

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit: ; preds = %bb.ak
  %i.rs = icmp ult i64 %i.rf, %i.rh
  br i1 %i.rs, label %bb.v, label %bb.am

bb.al:                                            ; preds = %bb.u
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i392, i64 noundef %.sroa.20.0237, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @591) #60
  unreachable

bb.am:                                            ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0238, i64 48, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0238, ptr noundef nonnull align 8 dereferenceable(48) %i.re, i64 48, i1 false), !alias.scope !28881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.re, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.0.0238, i64 48 ; 2 uses
  %i.ru = add nsw i64 %.sroa.20.0237, -1          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i71)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i71, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0238, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %.sroa.0.0238, i64 24 ; 2 uses
  %.sroa.4.0.copyload.i73 = load i64, ptr %.sroa.4.0..sroa_idx.i72, align 8, !alias.scope !28882 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0238, i64 32 ; 2 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !28882 ; 5 uses
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0238, i64 40 ; 2 uses
  %.sroa.618.0.copyload.i = load double, ptr %.sroa.618.0..sroa_idx.i, align 8, !alias.scope !28882 ; 3 uses
  br label %.outer.i

.outer.i:                                         ; preds = %bb.ao, %bb.am
  %.sroa.09.0.ph.i = phi i64 [ %i.ru, %bb.am ], [ %i.sl, %bb.ao ] ; 5 uses
  %.sroa.01.0.ph.i = phi i64 [ 0, %bb.am ], [ %i.tb, %bb.ao ] ; 3 uses
  %i.rv = icmp ult i64 %.sroa.01.0.ph.i, %.sroa.09.0.ph.i
  br i1 %i.rv, label %.lr.ph.i76, label %.split._crit_edge.i74

.lr.ph.i76:                                       ; preds = %.outer.i, %bb.an
  %.sroa.01.022.i = phi i64 [ %i.sk, %bb.an ], [ %.sroa.01.0.ph.i, %.outer.i ] ; 5 uses
  %i.rw = icmp ult i64 %.sroa.01.022.i, %i.ru
  call void @llvm.assume(i1 %i.rw)
  %i.rx = getelementptr inbounds nuw [48 x i8], ptr %i.rt, i64 %.sroa.01.022.i ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %i.rz = load i64, ptr %i.ry, align 8, !alias.scope !28883, !noalias !28884, !noundef !67 ; 2 uses
  %i.sa = icmp eq i64 %.sroa.4.0.copyload.i73, %i.rz
  br i1 %i.sa, label %.split.i79, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i77

.split.i79:                                       ; preds = %.lr.ph.i76
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 40
  %i.sc = load double, ptr %i.sb, align 8, !alias.scope !28883, !noalias !28884, !noundef !67
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rx, i64 32
  %i.se = load i64, ptr %i.sd, align 8, !alias.scope !28883, !noalias !28884, !noundef !67 ; 2 uses
  %i.sf = icmp eq i64 %.sroa.5.0.copyload.i, %i.se
  %i.sg = icmp ult i64 %.sroa.5.0.copyload.i, %i.se
  %i.sh = fcmp ult double %.sroa.618.0.copyload.i, %i.sc
  %spec.select.i.i80 = select i1 %i.sf, i1 %i.sh, i1 %i.sg
  br i1 %spec.select.i.i80, label %.split._crit_edge.i74, label %bb.an

.split._crit_edge.i74:                            ; preds = %bb.an, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i77, %.split.i79, %.outer.i
  %.sroa.01.0.lcssa.i = phi i64 [ %.sroa.01.0.ph.i, %.outer.i ], [ %.sroa.09.0.ph.i, %bb.an ], [ %.sroa.01.022.i, %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i77 ], [ %.sroa.01.022.i, %.split.i79 ] ; 5 uses
  %i.si = add nsw i64 %.sroa.09.0.ph.i, -1        ; 2 uses
  %.not2125.i = icmp ult i64 %.sroa.01.0.lcssa.i, %i.si
  br i1 %.not2125.i, label %.lr.ph28.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort15partition_equalNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCINvBU_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4z_5types3any5PyAnyEB4u_NtB3u_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4z_3err5PyErrEs4_0E0EB5Y_.exit

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i77: ; preds = %.lr.ph.i76
  %i.sj = icmp ult i64 %.sroa.4.0.copyload.i73, %i.rz
  br i1 %i.sj, label %.split._crit_edge.i74, label %bb.an

bb.an:                                            ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit.i77, %.split.i79
  %i.sk = add nuw nsw i64 %.sroa.01.022.i, 1      ; 2 uses
  %exitcond.not.i78 = icmp eq i64 %i.sk, %.sroa.09.0.ph.i
  br i1 %exitcond.not.i78, label %.split._crit_edge.i74, label %.lr.ph.i76

.lr.ph28.i:                                       ; preds = %.split._crit_edge.i74, %.backedge.i75
  %i.sl = phi i64 [ %i.sz, %.backedge.i75 ], [ %i.si, %.split._crit_edge.i74 ] ; 4 uses
  %.sroa.09.126.i = phi i64 [ %i.sl, %.backedge.i75 ], [ %.sroa.09.0.ph.i, %.split._crit_edge.i74 ]
  %i.sm = icmp ult i64 %i.sl, %i.ru
  call void @llvm.assume(i1 %i.sm)
  %i.sn = getelementptr [48 x i8], ptr %.sroa.0.0238, i64 %.sroa.09.126.i ; 5 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  %i.sp = load i64, ptr %i.so, align 8, !alias.scope !28885, !noalias !28886, !noundef !67 ; 2 uses
  %i.sq = icmp eq i64 %.sroa.4.0.copyload.i73, %i.sp
  br i1 %i.sq, label %.split19.i, label %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit29.i

.split19.i:                                       ; preds = %.lr.ph28.i
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sn, i64 40
  %i.ss = load double, ptr %i.sr, align 8, !alias.scope !28885, !noalias !28886, !noundef !67
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 32
  %i.su = load i64, ptr %i.st, align 8, !alias.scope !28885, !noalias !28886, !noundef !67 ; 2 uses
  %i.sv = icmp eq i64 %.sroa.5.0.copyload.i, %i.su
  %i.sw = icmp ult i64 %.sroa.5.0.copyload.i, %i.su
  %i.sx = fcmp ult double %.sroa.618.0.copyload.i, %i.ss
  %spec.select.i28.i = select i1 %i.sv, i1 %i.sx, i1 %i.sw
  br i1 %spec.select.i28.i, label %.backedge.i75, label %bb.ao

_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit29.i: ; preds = %.lr.ph28.i
  %i.sy = icmp ult i64 %.sroa.4.0.copyload.i73, %i.sp
  br i1 %i.sy, label %.backedge.i75, label %bb.ao

.backedge.i75:                                    ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit29.i, %.split19.i
  %i.sz = add nsw i64 %i.sl, -1                   ; 2 uses
  %.not21.i = icmp ult i64 %.sroa.01.0.lcssa.i, %i.sz
  br i1 %.not21.i, label %.lr.ph28.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort15partition_equalNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCINvBU_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4z_5types3any5PyAnyEB4u_NtB3u_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4z_3err5PyErrEs4_0E0EB5Y_.exit

bb.ao:                                            ; preds = %_RNCINvYSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E20par_sort_unstable_byNCINvB8_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB42_3err5PyErrEs4_0E0B5r_.exit29.i, %.split19.i
  %i.ta = getelementptr inbounds nuw [48 x i8], ptr %i.rt, i64 %.sroa.01.0.lcssa.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.ta, i64 48, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ta, ptr noundef nonnull align 8 dereferenceable(48) %i.sn, i64 48, i1 false), !alias.scope !28882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.sn, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.tb = add nuw i64 %.sroa.01.0.lcssa.i, 1
  br label %.outer.i

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort15partition_equalNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCINvBU_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4z_5types3any5PyAnyEB4u_NtB3u_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4z_3err5PyErrEs4_0E0EB5Y_.exit: ; preds = %.split._crit_edge.i74, %.backedge.i75
  %i.tc = add i64 %.sroa.01.0.lcssa.i, 1          ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0238, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i71, i64 24, i1 false)
  store i64 %.sroa.4.0.copyload.i73, ptr %.sroa.4.0..sroa_idx.i72, align 8, !alias.scope !28882
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !28882
  store double %.sroa.618.0.copyload.i, ptr %.sroa.618.0..sroa_idx.i, align 8, !alias.scope !28882
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i71)
  %i.td = icmp ugt i64 %i.tc, %.sroa.20.0237
  br i1 %i.td, label %bb.aq, label %bb.ap, !prof !71

bb.ap:                                            ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort15partition_equalNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCINvBU_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4z_5types3any5PyAnyEB4u_NtB3u_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4z_3err5PyErrEs4_0E0EB5Y_.exit
  %i.te = sub nuw i64 %.sroa.20.0237, %i.tc       ; 3 uses
  %i.tf = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0238, i64 %i.tc ; 2 uses
  %i.tg = icmp ult i64 %i.te, 21
  br i1 %i.tg, label %.outer._crit_edge, label %bb.b

bb.aq:                                            ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort15partition_equalNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSBS_INtB4_16ParallelSliceMutBS_E20par_sort_unstable_byNCINvBU_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4z_5types3any5PyAnyEB4u_NtB3u_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB4z_3err5PyErrEs4_0E0EB5Y_.exit
  call void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.tc, i64 noundef %.sroa.20.0237, i64 noundef %.sroa.20.0237, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @592) #60
  unreachable

bb.ar:                                            ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdge12split_at_mutCskcxRuJ53GpR_9rustworkx.exit
  store ptr %i.ra, ptr %i.a, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.rb, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %.sroa.552.0..sroa_idx, align 8
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.qv, ptr %.sroa.653.0..sroa_idx, align 8
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.k, ptr %.sroa.754.0..sroa_idx, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.0.0238.lcssa268, ptr %i.th, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.qs, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %2, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.k, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.032.0.ph244, ptr %.sroa.749.0..sroa_idx, align 8
  %i.ti = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCslLviULm4Laq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i = load ptr, ptr %i.ti, align 8, !noalias !28887, !noundef !67 ; 2 uses
  %i.tj = icmp eq ptr %.val.i.i, null
  br i1 %i.tj, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvB4_4join4calluNCINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort7recurseNtNtCsbNMRYq9Xj9a_14rustworkx_core12steiner_tree17MetricClosureEdgeNCINvYSB1W_INtB1h_16ParallelSliceMutB1W_E20par_sort_unstable_byNCINvB1Y_17fast_metric_edgesRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5H_5types3any5PyAnyEB5C_NtB4C_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx12steiner_tree12steiner_tree0NtNtB5H_3err5PyErrEs4_0E0E0E0NCIBS_uNCB1c_s_0E0uuE0B76_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull align 128 %.val.i.i) #64
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  %i.tk = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !28887, !inline_history !28750
  %i.tl = load ptr, ptr %i.tk, align 8, !noalias !28887, !nonnull !67, !noundef !67 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ti, align 8, !noalias !28888, !noundef !67 ; 4 uses
  %i.tn = icmp eq ptr %.val.i.i.i, null
  br i1 %i.tn, label %bb.av, label %bb.au, !prof !71

bb.au:                                            ; preds = %bb.at
  %i.to = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.tp = load ptr, ptr %i.to, align 16, !noalias !28888, !nonnull !67, !noundef !67
end_hunk_2
