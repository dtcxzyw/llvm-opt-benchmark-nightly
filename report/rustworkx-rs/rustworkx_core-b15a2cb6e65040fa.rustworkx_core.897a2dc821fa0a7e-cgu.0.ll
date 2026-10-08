Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx_core-b15a2cb6e65040fa.rustworkx_core.897a2dc821fa0a7e-cgu.0?download=true
inline.NumInlined: 863
inline.NumDeleted: 438
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring19rbmg_split_into_two:bb.a
.noexc.i:                                         ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit7.i.i
  unreachable

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.thread.i: ; preds = %bb.r, %bb.q, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.i
  %.not.i.i40776 = phi i1 [ false, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.i ], [ true, %bb.q ], [ true, %bb.r ] ; 3 uses
  %.sroa.02.0.i.i94.i = phi i64 [ %i.cw, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.i ], [ 0, %bb.q ], [ 0, %bb.r ] ; 6 uses
  %.sroa.9.0.ph.i.i = phi ptr [ %i.cx, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.i ], [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 1 to ptr), %bb.r ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1142
  %i.cz = icmp eq i64 %.val26.i, 0
  br i1 %i.cz, label %.loopexit.i, label %.lr.ph794

bb.t:                                             ; preds = %.lr.ph794
  %i.da = icmp eq ptr %i.dd, %i.cl
  br i1 %i.da, label %.loopexit.i, label %.lr.ph794

.lr.ph794:                                        ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.thread.i, %bb.t
  %i.db = phi ptr [ %i.dd, %bb.t ], [ %.val.i, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.thread.i ] ; 2 uses
  %i.dc = phi i64 [ %i.de, %bb.t ], [ 0, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.thread.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 12 ; 3 uses
  %i.de = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %i.df = getelementptr i8, ptr %i.db, i64 8
  %.val.i.i.i.i = load i8, ptr %i.df, align 4, !range !15, !noalias !1143, !noundef !5
  %i.dg = trunc nuw i8 %.val.i.i.i.i to i1
  br i1 %i.dg, label %bb.u, label %bb.t

bb.u:                                             ; preds = %.lr.ph794
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1144
  %i.dh = tail call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 4) #26, !noalias !1144 ; 4 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 4, i64 16) #30
          to label %.noexc43.i unwind label %bb.af, !noalias !1138

.noexc43.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dj = trunc i64 %i.dc to i32
  store i32 %i.dj, ptr %i.dh, align 4, !noalias !1142
  store i64 4, ptr %i.i, align 8, !noalias !1142
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1142
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  br label %bb.x

bb.x:                                             ; preds = %.noexc.i.i, %bb.w
  %i.dk = phi ptr [ %i.dy, %.noexc.i.i ], [ %i.dh, %bb.w ]
  %.sroa.7.0.copyload.i = phi i64 [ %i.ea, %.noexc.i.i ], [ 1, %bb.w ] ; 6 uses
  %i.dl = phi i64 [ %i.dr, %.noexc.i.i ], [ %i.de, %bb.w ]
  %i.dm = phi ptr [ %i.dq, %.noexc.i.i ], [ %i.dd, %bb.w ]
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.dn = phi i64 [ %i.dr, %bb.z ], [ %i.dl, %bb.x ] ; 2 uses
  %i.do = phi ptr [ %i.dq, %bb.z ], [ %i.dm, %bb.x ] ; 3 uses
  %i.dp = icmp eq ptr %i.do, %i.cl
  br i1 %i.dp, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtBT_12stable_graph11NodeIndicesuEE11spec_extendCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 12 ; 2 uses
  %i.dr = add i64 %i.dn, 1                        ; 2 uses
  %i.ds = getelementptr i8, ptr %i.do, i64 8
  %.val.i.i.i.i.i.i = load i8, ptr %i.ds, align 4, !range !15, !noalias !1147, !noundef !5
  %i.dt = trunc nuw i8 %.val.i.i.i.i.i.i to i1
  br i1 %i.dt, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.du = trunc i64 %i.dn to i32
  %i.dv = icmp samesign ult i64 %.sroa.7.0.copyload.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = load i64, ptr %i.i, align 8, !range !11, !alias.scope !1148, !noalias !1149, !noundef !5
  %i.dx = icmp eq i64 %.sroa.7.0.copyload.i, %i.dw
  br i1 %i.dx, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i, label %.noexc.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i: ; preds = %bb.aa
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.7.0.copyload.i, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i..noexc_crit_edge.i.i unwind label %bb.ab, !noalias !1142

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i..noexc_crit_edge.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1148, !noalias !1149
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i..noexc_crit_edge.i.i, %bb.aa
  %i.dy = phi ptr [ %.pre.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i..noexc_crit_edge.i.i ], [ %i.dk, %bb.aa ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.sroa.7.0.copyload.i
  store i32 %i.du, ptr %i.dz, align 4, !noalias !1150
  %i.ea = add nuw nsw i64 %.sroa.7.0.copyload.i, 1 ; 2 uses
  store i64 %i.ea, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1148, !noalias !1149
  br label %bb.x

bb.ab:                                            ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i41 = load i64, ptr %i.i, align 8, !noalias !1142 ; 2 uses
  %i.ec = icmp eq i64 %.val.i.i41, 0
  br i1 %i.ec, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val8.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1142, !nonnull !5, !noundef !5
  %i.ed = shl nuw i64 %.val.i.i41, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef range(i64 1, 0) %i.ed, i64 noundef range(i64 1, 9) 4) #26, !noalias !1142
  br label %bb.ad

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtBT_12stable_graph11NodeIndicesuEE11spec_extendCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %bb.y
  %.sroa.067.0.copyload.i = load i64, ptr %i.i, align 8, !noalias !1151
  %.sroa.568.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1151
  %.val6.i.pre.i = load i64, ptr %i.ck, align 8, !noalias !1138
  %.val.i52.pre.i = load ptr, ptr %i.cj, align 8, !noalias !1138
  br label %.loopexit.i

bb.ad:                                            ; preds = %bb.af, %bb.ac, %bb.ab
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ee, %bb.af ], [ %i.eb, %bb.ac ], [ %i.eb, %bb.ab ] ; 2 uses
  br i1 %.not.i.i40776, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, %bb.ad
  %.pn.pn100.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %eh.lpad-body.i, %bb.ad ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.ph.i.i, i64 noundef range(i64 1, 0) %.sroa.02.0.i.i94.i, i64 noundef range(i64 1, 9) 1) #26, !noalias !1138
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

bb.af:                                            ; preds = %bb.v
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.i:                                      ; preds = %bb.t, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.thread.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtBT_12stable_graph11NodeIndicesuEE11spec_extendCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  %.val.i52.i = phi ptr [ %.val.i52.pre.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtBT_12stable_graph11NodeIndicesuEE11spec_extendCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ], [ %.val.i, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.thread.i ], [ %.val.i, %bb.t ] ; 3 uses
  %.val6.i.i = phi i64 [ %.val6.i.pre.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtBT_12stable_graph11NodeIndicesuEE11spec_extendCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ], [ %.val26.i, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.thread.i ], [ %.val26.i, %bb.t ] ; 3 uses
  %.sroa.7.0.i = phi i64 [ %.sroa.7.0.copyload.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtBT_12stable_graph11NodeIndicesuEE11spec_extendCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ], [ 0, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.thread.i ], [ 0, %bb.t ] ; 2 uses
  %.sroa.568.0.i = phi ptr [ %.sroa.568.0.copyload.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtBT_12stable_graph11NodeIndicesuEE11spec_extendCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ], [ inttoptr (i64 4 to ptr), %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.thread.i ], [ inttoptr (i64 4 to ptr), %bb.t ] ; 6 uses
  %.sroa.067.0.i = phi i64 [ %.sroa.067.0.copyload.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEINtB2_10SpecExtendBR_INtNtBT_12stable_graph11NodeIndicesuEE11spec_extendCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ], [ 0, %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundB1k_.exit.thread.i ], [ 0, %bb.t ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1142
  %i.ef = icmp samesign ult i64 %.sroa.7.0.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.568.0.i, i64 %.sroa.7.0.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !noalias !1138, !nonnull !5 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.eo = load i64, ptr %i.en, align 8, !noalias !1138 ; 4 uses
  br label %.outer.i

.outer.i:                                         ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, %.loopexit.i
  %.lcssa172185.i = phi i64 [ %i.ic, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.cd, %.loopexit.i ]
  %.sroa.875.0.ph166.lcssa184.i = phi i32 [ %.sroa.875.0.ph165.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.ch, %.loopexit.i ]
  %.sroa.571.0.ph.i = phi ptr [ %i.fd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %.sroa.568.0.i, %.loopexit.i ]
  %.ph.i = phi i32 [ %i.id, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.ch, %.loopexit.i ]
  %.ph118.i = phi i64 [ %i.ie, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.cd, %.loopexit.i ]
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ap, %.outer.i
  %.sroa.571.0.i = phi ptr [ %i.fd, %bb.ap ], [ %.sroa.571.0.ph.i, %.outer.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.571.0.i) ]
  %i.ep = icmp eq ptr %.sroa.571.0.i, %i.eg
  br i1 %i.ep, label %bb.ak, label %bb.aj

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit63.i: ; preds = %bb.bu, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.es, %bb.ai ], [ %eh.lpad-body50110.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %eh.lpad-body50110.i, %bb.bu ] ; 2 uses
  %i.eq = icmp eq i64 %.sroa.067.0.i, 0
  br i1 %i.eq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit63.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.568.0.i) ]
  %i.er = shl nuw i64 %.sroa.067.0.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.568.0.i, i64 noundef range(i64 1, 0) %i.er, i64 noundef range(i64 1, 9) 4) #26, !noalias !1152
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.ah, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit63.i
  br i1 %.not.i.i40776, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.ae

bb.ai:                                            ; preds = %bb.at, %bb.aq
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit63.i

bb.aj:                                            ; preds = %bb.ag
  %i.et = load i32, ptr %.sroa.571.0.i, align 4, !noalias !1153, !noundef !5 ; 2 uses
  %i.eu = zext i32 %i.et to i64                   ; 3 uses
  %i.ev = icmp ugt i64 %.sroa.02.0.i.i94.i, %i.eu
  br i1 %i.ev, label %bb.ap, label %bb.aq

bb.ak:                                            ; preds = %bb.ag
  %i.ew = icmp eq i64 %.sroa.067.0.i, 0
  br i1 %i.ew, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit44.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.568.0.i) ]
  %i.ex = shl nuw i64 %.sroa.067.0.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.568.0.i, i64 noundef range(i64 1, 0) %i.ex, i64 noundef range(i64 1, 9) 4) #26, !noalias !1154
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit44.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit44.i: ; preds = %bb.al, %bb.ak
  %.sroa.0179.0.copyload = load i64, ptr %i.n, align 8, !noalias !1137 ; 4 uses
  %.sroa.4.0.copyload = load ptr, ptr %i.by, align 8, !noalias !1137 ; 5 uses
  %.sroa.5181.0.copyload = load i64, ptr %i.bz, align 8, !noalias !1137 ; 3 uses
  br i1 %.not.i.i40776, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit45.i, label %bb.am

bb.am:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit44.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.ph.i.i, i64 noundef range(i64 1, 0) %.sroa.02.0.i.i94.i, i64 noundef range(i64 1, 9) 1) #26, !noalias !1138
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit45.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit45.i: ; preds = %bb.am, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit44.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %.val.i.i46.i = load i64, ptr %i.m, align 8, !alias.scope !1157, !noalias !1138 ; 2 uses
  %i.ey = icmp eq i64 %.val.i.i46.i, 0
  br i1 %i.ey, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit45.i
  %.val1.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !1157, !noalias !1138, !nonnull !5, !noundef !5
  %i.ez = mul nuw i64 %.val.i.i46.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef range(i64 1, 0) %i.ez, i64 noundef range(i64 1, 9) 4) #26, !noalias !1158
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i: ; preds = %bb.an, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit45.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.val2.i.i.i = load i64, ptr %i.fa, align 8, !alias.scope !1157, !noalias !1138 ; 2 uses
  %i.fb = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.fb, label %bb.bx, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i
  %.val3.i.i.i = load ptr, ptr %i.el, align 8, !alias.scope !1157, !noalias !1138, !nonnull !5, !noundef !5
  %i.fc = shl nuw i64 %.val2.i.i.i, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef range(i64 1, 0) %i.fc, i64 noundef range(i64 1, 9) 8) #26, !noalias !1158
  br label %bb.bx

bb.ap:                                            ; preds = %bb.aj
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.571.0.i, i64 4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.9.0.ph.i.i, i64 %i.eu
  %i.ff = load i8, ptr %i.fe, align 1, !range !15, !noalias !1138, !noundef !5
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.ag, label %bb.as

bb.aq:                                            ; preds = %bb.aj
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef %.sroa.02.0.i.i94.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #30
          to label %bb.ar unwind label %bb.ai, !noalias !1138

bb.ar:                                            ; preds = %bb.az, %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1138
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1138
  %i.fh = tail call noundef align 4 dereferenceable_or_null(12) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 12, i64 noundef range(i64 1, 9) 4) #26, !noalias !1138 ; 6 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.at, label %.lr.ph.preheader.i, !prof !6

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 12) #30
          to label %.noexc47.i unwind label %bb.ai, !noalias !1138

.noexc47.i:                                       ; preds = %bb.at
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.as
  store i32 %i.et, ptr %i.fh, align 4, !noalias !1138
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i32 0, ptr %.sroa.45.0..sroa_idx.i, align 4, !noalias !1138
  store i64 1, ptr %i.l, align 8, !noalias !1138
  store ptr %i.fh, ptr %i.eh, align 8, !noalias !1138
  store i64 1, ptr %i.ei, align 8, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1138
  store i64 0, ptr %i.k, align 8, !noalias !1138
  store ptr inttoptr (i64 4 to ptr), ptr %i.ej, align 8, !noalias !1138
  store i64 0, ptr %i.ek, align 8, !noalias !1138
  br label %.lr.ph.i42

._crit_edge.i:                                    ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i
  %.sroa.085.0.copyload.pre.i = load i64, ptr %i.k, align 8, !noalias !1138 ; 3 uses
  %.sroa.587.0.copyload.pre.i = load ptr, ptr %i.ej, align 8, !noalias !1138 ; 3 uses
  %.sroa.690.0.copyload.pre.i = load i64, ptr %i.ek, align 8, !noalias !1138
  store i32 %.sroa.875.0.ph165.i, ptr %i.cg, align 4, !noalias !1138
  store i64 %i.ic, ptr %i.cc, align 8, !noalias !1138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  %i.fj = load i64, ptr %i.bz, align 8, !alias.scope !1159, !noalias !1160, !noundef !5 ; 3 uses
  %i.fk = load i64, ptr %i.n, align 8, !range !11, !alias.scope !1159, !noalias !1160, !noundef !5
  %i.fl = icmp eq i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.au, label %bb.bs

bb.au:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.bs unwind label %bb.av, !noalias !1160

bb.av:                                            ; preds = %bb.au
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = icmp eq i64 %.sroa.085.0.copyload.pre.i, 0
  br i1 %i.fn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.587.0.copyload.pre.i) ]
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i

.lr.ph.i42:                                       ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i, %.lr.ph.preheader.i
  %i.fo = phi ptr [ %i.hy, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i ], [ %i.fh, %.lr.ph.preheader.i ] ; 2 uses
  %i.fp = phi ptr [ %i.hz, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i ], [ inttoptr (i64 4 to ptr), %.lr.ph.preheader.i ] ; 4 uses
  %i.fq = phi i64 [ %i.ia, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %i.fr = phi ptr [ %i.ib, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i ], [ %i.fh, %.lr.ph.preheader.i ] ; 2 uses
  %i.fs = phi i64 [ %i.hx, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i ], [ 1, %.lr.ph.preheader.i ] ; 5 uses
  %i.ft = phi i64 [ %i.ie, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i ], [ %.ph118.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.fu = phi i32 [ %i.id, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i ], [ %.ph.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.875.0.ph166178.i = phi i32 [ %.sroa.875.0.ph165.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i ], [ %.sroa.875.0.ph166.lcssa184.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.fv = phi i64 [ %i.ic, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i ], [ %.lcssa172185.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.fw = getelementptr [12 x i8], ptr %i.fr, i64 %i.fs ; 3 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 -12    ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !noalias !1138, !noundef !5
  %i.fz = zext i32 %i.fy to i64                   ; 3 uses
  %i.ga = icmp ugt i64 %.sroa.02.0.i.i94.i, %i.fz
  br i1 %i.ga, label %bb.ax, label %bb.az

.body49.loopexit.i:                               ; preds = %bb.bh, %bb.bf
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i32 %.sroa.875.0.ph166178.i, ptr %i.cg, align 4, !noalias !1138
  store i64 %i.fv, ptr %i.cc, align 8, !noalias !1138
  br label %.body49.i

.body49.loopexit.split-lp.i:                      ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i

bb.ax:                                            ; preds = %.lr.ph.i42
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.9.0.ph.i.i, i64 %i.fz
  store i8 1, ptr %i.gb, align 1, !noalias !1138
  %i.gc = load i32, ptr %i.fx, align 4, !noalias !1138, !noundef !5 ; 3 uses
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = icmp ugt i64 %.val6.i.i, %i.gd
  br i1 %i.ge, label %bb.ay, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE14edges_directedB1k_.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr %.val.i52.i, i64 %i.gd ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i8, ptr %i.gg, align 4, !range !15, !noalias !1161, !noundef !5
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE14edges_directedB1k_.exit.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i: ; preds = %bb.ay
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.gf, align 4, !noalias !1161
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !1161
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE14edges_directedB1k_.exit.i

bb.az:                                            ; preds = %.lr.ph.i42
  store i32 %.sroa.875.0.ph166178.i, ptr %i.cg, align 4, !noalias !1138
  store i64 %i.fv, ptr %i.cc, align 8, !noalias !1138
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef %.sroa.02.0.i.i94.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #30
          to label %bb.ar unwind label %.body49.thread111.i, !noalias !1138

.body49.thread111.i:                              ; preds = %bb.az
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE14edges_directedB1k_.exit.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i, %bb.ay, %bb.ax
  %.sroa.5.0.i.i = phi i32 [ %.sroa.5.0.copyload.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i ], [ -1, %bb.ay ], [ -1, %bb.ax ]
  %.sroa.0.0.i51.i = phi i32 [ %.sroa.0.0.copyload.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i ], [ -1, %bb.ay ], [ -1, %bb.ax ] ; 2 uses
  %i.gk = zext i32 %.sroa.0.0.i51.i to i64        ; 3 uses
  %i.gl = icmp ugt i64 %i.eo, %i.gk
  br i1 %i.gl, label %bb.ba, label %._crit_edge.i.i.preheader

._crit_edge.i.i.preheader:                        ; preds = %bb.ba, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE14edges_directedB1k_.exit.i
  br label %._crit_edge.i.i

bb.ba:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE14edges_directedB1k_.exit.i
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.gk ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load i8, ptr %i.gn, align 8, !range !18, !noalias !1162, !noundef !5
  %.not.i54.i = icmp eq i8 %i.go, 2
  br i1 %.not.i54.i, label %._crit_edge.i.i.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ba
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !noalias !1163
  br label %bb.bd

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.preheader, %bb.bb
  %i.gp = phi i32 [ %i.gu, %bb.bb ], [ %.sroa.5.0.i.i, %._crit_edge.i.i.preheader ] ; 2 uses
  %i.gq = zext i32 %i.gp to i64                   ; 3 uses
  %i.gr = icmp ugt i64 %i.eo, %i.gq
  br i1 %i.gr, label %bb.bb, label %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i

bb.bb:                                            ; preds = %._crit_edge.i.i
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.gq ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !noalias !1162, !noundef !5
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.val.i53.i = load i32, ptr %i.gv, align 4, !noalias !1162, !noundef !5 ; 2 uses
  %i.gw = icmp eq i32 %.val.i53.i, %i.gc
  br i1 %i.gw, label %._crit_edge.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gy = load i8, ptr %i.gx, align 8, !range !18, !noalias !1162, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring19rbmg_split_into_two:bb.a
  %i.hr = add i64 %i.fq, 1                        ; 2 uses
  store i64 %i.hr, ptr %i.ek, align 8, !alias.scope !1167, !noalias !1138
  br label %bb.bg

bb.bg:                                            ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit.i, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i
  %i.hs = phi ptr [ %i.fp, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i ], [ %i.hp, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit.i ]
  %i.ht = phi i64 [ %i.fq, %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i ], [ %i.hr, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit.i ]
  %i.hu = add nsw i64 %i.fs, -1                   ; 3 uses
  store i64 %i.hu, ptr %i.ei, align 8, !noalias !1138
  %i.hv = load i64, ptr %i.l, align 8, !range !11, !noalias !1138, !noundef !5
  %i.hw = icmp samesign ult i64 %i.hu, %i.hv
  tail call void @llvm.assume(i1 %i.hw)
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i: ; preds = %.loopexit.i.i, %bb.bi, %bb.bg
  %i.hx = phi i64 [ %i.hu, %bb.bg ], [ %i.ii, %.loopexit.i.i ], [ %i.ii, %bb.bi ] ; 3 uses
  %i.hy = phi ptr [ %i.fo, %bb.bg ], [ %i.ig, %.loopexit.i.i ], [ %i.ig, %bb.bi ]
  %i.hz = phi ptr [ %i.hs, %bb.bg ], [ %i.fp, %.loopexit.i.i ], [ %i.fp, %bb.bi ]
  %i.ia = phi i64 [ %i.ht, %bb.bg ], [ %i.fq, %.loopexit.i.i ], [ %i.fq, %bb.bi ]
  %i.ib = phi ptr [ %i.fr, %bb.bg ], [ %i.ig, %.loopexit.i.i ], [ %i.ig, %bb.bi ]
  %i.ic = phi i64 [ %i.fv, %bb.bg ], [ %i.jh, %.loopexit.i.i ], [ %i.fv, %bb.bi ] ; 3 uses
  %.sroa.875.0.ph165.i = phi i32 [ %.sroa.875.0.ph166178.i, %bb.bg ], [ %.sroa.875.0.ph.i, %.loopexit.i.i ], [ %.sroa.875.0.ph166178.i, %bb.bi ] ; 3 uses
  %i.id = phi i32 [ %i.fu, %bb.bg ], [ %.sroa.875.0.ph.i, %.loopexit.i.i ], [ %i.fu, %bb.bi ] ; 2 uses
  %i.ie = phi i64 [ %i.ft, %bb.bg ], [ %i.jh, %.loopexit.i.i ], [ %i.ft, %bb.bi ] ; 2 uses
  %i.if = icmp ult i64 %i.hx, 768614336404564651
  tail call void @llvm.assume(i1 %i.if)
  %.not21.i = icmp eq i64 %i.hx, 0
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i42

bb.bh:                                            ; preds = %bb.bd
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCslwFuT2d6ECx_4core6option6OptionNtBP_9EdgeIndexEEE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #31
          to label %._crit_edge225.i unwind label %.body49.loopexit.i, !noalias !1138

._crit_edge225.i:                                 ; preds = %bb.bh
  %.pre226.i = load ptr, ptr %i.eh, align 8, !alias.scope !1164, !noalias !1165
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge225.i, %bb.bd
  %i.ig = phi ptr [ %.pre226.i, %._crit_edge225.i ], [ %i.fo, %bb.bd ] ; 5 uses
  %i.ih = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %i.fs ; 3 uses
  store i32 %spec.select.i.i, ptr %i.ih, align 4, !noalias !1169
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  store i32 1, ptr %.sroa.483.0..sroa_idx.i, align 4, !noalias !1169
  %.sroa.584.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i32 %.sroa.875.0.ph.i, ptr %.sroa.584.0..sroa_idx.i, align 4, !noalias !1169
  %i.ii = add nuw nsw i64 %i.fs, 1                ; 3 uses
  store i64 %i.ii, ptr %i.ei, align 8, !alias.scope !1164, !noalias !1165
  %i.ij = load i8, ptr %i.hb, align 8, !range !18, !noalias !1170, !noundef !5
  %.not.i62.i = icmp eq i8 %i.ij, 2
  br i1 %.not.i62.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.ha, align 8, !noalias !1170 ; 2 uses
  %.sroa.02.0.copyload.i.i43 = load i64, ptr %i.hc, align 8, !noalias !1170 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i43, 32 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i = trunc i64 %.sroa.04.0.copyload.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.04.0.copyload.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.ik = and i64 %.sroa.02.0.copyload.i.i43, 4294967295 ; 2 uses
  %i.il = icmp ugt i64 %.val6.i.i, %i.ik
  br i1 %i.il, label %bb.bk, label %.loopexit.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.im = getelementptr inbounds nuw [12 x i8], ptr %.val.i52.i, i64 %i.ik ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !noalias !1171, !noundef !5 ; 2 uses
  %i.io = icmp eq i32 %i.in, %.sroa.875.0.ph.i
  br i1 %i.io, label %bb.br, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bk, %bb.bl
  %.sroa.8.0.i.i.i = phi i32 [ %i.is, %bb.bl ], [ %i.in, %bb.bk ]
  %i.ip = zext i32 %.sroa.8.0.i.i.i to i64        ; 2 uses
  %i.iq = icmp ugt i64 %i.eo, %i.ip
  br i1 %i.iq, label %bb.bl, label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i

bb.bl:                                            ; preds = %.preheader.i.i.i
  %i.ir = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.ip ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !noalias !1172, !noundef !5 ; 2 uses
  %i.it = icmp eq i32 %i.is, %.sroa.875.0.ph.i
  br i1 %i.it, label %bb.bm, label %.preheader.i.i.i

bb.bm:                                            ; preds = %bb.bl
  store i32 %.sroa.020.0.extract.trunc.i.i.i, ptr %i.ir, align 4, !noalias !1171
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i

_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i: ; preds = %.preheader.i.i.i, %bb.br, %bb.bm
  %i.iu = icmp ugt i64 %.val6.i.i, %.sroa.2.0.extract.shift.i.i.i
  br i1 %i.iu, label %bb.bn, label %.loopexit.i.i

bb.bn:                                            ; preds = %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i
  %i.iv = getelementptr inbounds nuw [12 x i8], ptr %.val.i52.i, i64 %.sroa.2.0.extract.shift.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !noalias !1171, !noundef !5 ; 2 uses
  %i.iy = icmp eq i32 %i.ix, %.sroa.875.0.ph.i
  br i1 %i.iy, label %bb.bq, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %bb.bn, %bb.bo
  %.sroa.8.0.1.i.i.i = phi i32 [ %i.jd, %bb.bo ], [ %i.ix, %bb.bn ]
  %i.iz = zext i32 %.sroa.8.0.1.i.i.i to i64      ; 2 uses
  %i.ja = icmp ugt i64 %i.eo, %i.iz
  br i1 %i.ja, label %bb.bo, label %.loopexit.i.i

bb.bo:                                            ; preds = %.preheader.1.i.i.i
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.iz ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !noalias !1172, !noundef !5 ; 2 uses
  %i.je = icmp eq i32 %i.jd, %.sroa.875.0.ph.i
  br i1 %i.je, label %bb.bp, label %.preheader.1.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 %.sroa.3.0.extract.trunc.i.i.i, ptr %i.jf, align 4, !noalias !1171
  br label %.loopexit.i.i

bb.bq:                                            ; preds = %bb.bn
  store i32 %.sroa.3.0.extract.trunc.i.i.i, ptr %i.iw, align 4, !noalias !1171
  br label %.loopexit.i.i

bb.br:                                            ; preds = %bb.bk
  store i32 %.sroa.020.0.extract.trunc.i.i.i, ptr %i.im, align 4, !noalias !1171
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i

.loopexit.i.i:                                    ; preds = %.preheader.1.i.i.i, %bb.bq, %bb.bp, %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i, %bb.bj
  store i32 %i.fu, ptr %i.ha, align 8, !noalias !1170
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 -1, ptr %i.jg, align 4, !noalias !1170
  store i32 -1, ptr %i.hc, align 8, !noalias !1170
  store i32 -1, ptr %i.hd, align 4, !noalias !1170
  %i.jh = add i64 %i.ft, -1                       ; 2 uses
  store i8 2, ptr %i.hb, align 8, !noalias !1170
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i

bb.bs:                                            ; preds = %bb.au, %._crit_edge.i
  %i.ji = load ptr, ptr %i.by, align 8, !alias.scope !1159, !noalias !1160, !nonnull !5, !noundef !5
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.ji, i64 %i.fj ; 3 uses
  store i64 %.sroa.085.0.copyload.pre.i, ptr %i.jj, align 8, !noalias !1173
  %.sroa.587.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %.sroa.587.0.copyload.pre.i, ptr %.sroa.587.0..sroa_idx88.i, align 8, !noalias !1173
  %.sroa.690.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store i64 %.sroa.690.0.copyload.pre.i, ptr %.sroa.690.0..sroa_idx91.i, align 8, !noalias !1173
  %i.jk = add i64 %i.fj, 1
  store i64 %i.jk, ptr %i.bz, align 8, !alias.scope !1159, !noalias !1160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1138
  %.val41.i = load i64, ptr %i.l, align 8, !noalias !1138 ; 2 uses
  %i.jl = icmp eq i64 %.val41.i, 0
  br i1 %i.jl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val42.i = load ptr, ptr %i.eh, align 8, !noalias !1138, !nonnull !5, !noundef !5
  %i.jm = mul nuw i64 %.val41.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42.i, i64 noundef range(i64 1, 0) %i.jm, i64 noundef range(i64 1, 9) 4) #26, !noalias !1138
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1138
  br label %.outer.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i: ; preds = %bb.bv, %bb.aw
  %.sroa.085.0.copyload.pre.lcssa.sink.i = phi i64 [ %.sroa.085.0.copyload.pre.i, %bb.aw ], [ %.val35.i, %bb.bv ]
  %.sroa.587.0.copyload.pre.lcssa.sink.i = phi ptr [ %.sroa.587.0.copyload.pre.i, %bb.aw ], [ %.val36.i, %bb.bv ]
  %eh.lpad-body50110.ph.i = phi { ptr, i32 } [ %i.fm, %bb.aw ], [ %i.jq, %bb.bv ]
  %i.jn = shl nuw i64 %.sroa.085.0.copyload.pre.lcssa.sink.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.587.0.copyload.pre.lcssa.sink.i, i64 noundef range(i64 1, 0) %i.jn, i64 noundef range(i64 1, 9) 4) #26, !noalias !1138
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %.body49.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i, %bb.av
  %eh.lpad-body50110.i = phi { ptr, i32 } [ %i.jq, %.body49.i ], [ %i.fm, %bb.av ], [ %eh.lpad-body50110.ph.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i ] ; 2 uses
  %.val39.i = load i64, ptr %i.l, align 8, !noalias !1138 ; 2 uses
  %i.jo = icmp eq i64 %.val39.i, 0
  br i1 %i.jo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit63.i, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i
  %.val40.i = load ptr, ptr %i.eh, align 8, !noalias !1138, !nonnull !5, !noundef !5
  %i.jp = mul nuw i64 %.val39.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i, i64 noundef range(i64 1, 0) %i.jp, i64 noundef range(i64 1, 9) 4) #26, !noalias !1138
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit63.i

.body49.i:                                        ; preds = %.body49.thread111.i, %.body49.loopexit.split-lp.i, %.body49.loopexit.i
  %i.jq = phi { ptr, i32 } [ %i.gj, %.body49.thread111.i ], [ %lpad.loopexit.i, %.body49.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body49.loopexit.split-lp.i ] ; 2 uses
  %.val35.i = load i64, ptr %i.k, align 8, !noalias !1138 ; 2 uses
  %i.jr = icmp eq i64 %.val35.i, 0
  br i1 %i.jr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.bv

bb.bv:                                            ; preds = %.body49.i
  %.val36.i = load ptr, ptr %i.ej, align 8, !noalias !1138, !nonnull !5, !noundef !5
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i

bb.bw:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, %bb.p
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecbEECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.ca, %bb.p ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #28, !noalias !1138
  br label %.body

bb.bx:                                            ; preds = %bb.ao, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1138
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.js = icmp ult i64 %.sroa.5181.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.js)
  %.idx = mul nuw nsw i64 %.sroa.5181.0.copyload, 24
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %.idx ; 5 uses
  %i.ju = icmp eq i64 %.sroa.5181.0.copyload, 0
  br i1 %i.ju, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph: ; preds = %bb.bx
  %i.jv = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val36 = load ptr, ptr %i.jv, align 8, !nonnull !5 ; 2 uses
  %.val37 = load i64, ptr %i.ai, align 8          ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.q, i64 68 ; 2 uses
  %.sroa.01.sroa.4.0..sroa_idx.i.i170 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.01.sroa.5.0..sroa_idx.i.i171 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.4.0..sroa_idx.i.i172 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.r, i64 68 ; 2 uses
  %.sroa.01.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.4.0..sroa_idx.i.i156 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %bb.cg, %bb.cf
  %i.ke = ptrtoint ptr %i.jt to i64
  %i.kf = ptrtoint ptr %i.kr to i64
  %i.kg = sub nuw i64 %i.ke, %i.kf
  %i.kh = udiv exact i64 %i.kg, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.ki = icmp eq ptr %i.jt, %i.kr
  br i1 %i.ki, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.kk, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit ] ; 2 uses
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %i.kr, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.kk = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.kj, align 8, !alias.scope !1174, !noalias !1175 ; 2 uses
  %i.kl = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.kl, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i
  %i.km = getelementptr i8, ptr %i.kj, i64 8
  %.val9.i.i.i = load ptr, ptr %i.km, align 8, !alias.scope !1174, !noalias !1175, !nonnull !5, !noundef !5
  %i.kn = shl nuw i64 %.val8.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef range(i64 1, 0) %i.kn, i64 noundef range(i64 1, 9) 4) #26, !noalias !1176
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i: ; preds = %bb.by, %.lr.ph.i.i.i
  %i.ko = icmp eq i64 %i.kk, %i.kh
  br i1 %i.ko, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.kp = icmp eq i64 %.sroa.0179.0.copyload, 0
  br i1 %i.kp, label %.body, label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  %i.kq = mul nuw i64 %.sroa.0179.0.copyload, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef range(i64 1, 0) %i.kq, i64 noundef range(i64 1, 9) 8) #26, !noalias !1175
  br label %.body

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61
  %.sroa.5184.0364 = phi ptr [ %.sroa.4.0.copyload, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph ], [ %i.kr, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61 ] ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.5184.0364, i64 24 ; 8 uses
  %.sroa.0187.0.copyload188 = load i64, ptr %.sroa.5184.0364, align 8, !noalias !1177 ; 5 uses
  %.sroa.7189.0..sroa.5184.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5184.0364, i64 8
  %.sroa.7189.sroa.0.0.copyload = load ptr, ptr %.sroa.7189.0..sroa.5184.8..sroa_idx, align 8, !noalias !1177 ; 6 uses
  %.sroa.7189.sroa.5.0..sroa.7189.0..sroa.5184.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5184.0364, i64 16
  %.sroa.7189.sroa.5.0.copyload = load i64, ptr %.sroa.7189.sroa.5.0..sroa.7189.0..sroa.5184.8..sroa_idx.sroa_idx, align 8, !noalias !1177 ; 5 uses
  %.not24 = icmp eq i64 %.sroa.0187.0.copyload188, -1
  br i1 %.not24, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7189.sroa.0.0.copyload) ]
  %.idx366 = shl nuw nsw i64 %.sroa.7189.sroa.5.0.copyload, 2
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.7189.sroa.0.0.copyload, i64 %.idx366
  %i.kt = icmp eq i64 %.sroa.7189.sroa.5.0.copyload, 0
  br i1 %i.kt, label %.thread, label %.lr.ph

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.ku = ptrtoint ptr %i.jt to i64
  %i.kv = ptrtoint ptr %i.kr to i64
  %i.kw = sub nuw i64 %i.ku, %i.kv
  %i.kx = udiv exact i64 %i.kw, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.ky = icmp eq ptr %i.jt, %i.kr
  br i1 %i.ky, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53, label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52
  %.sroa.0.011.i.i.i49 = phi i64 [ %i.la, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52 ], [ 0, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %i.kr, i64 %.sroa.0.011.i.i.i49 ; 2 uses
  %i.la = add nuw nsw i64 %.sroa.0.011.i.i.i49, 1 ; 2 uses
  %.val8.i.i.i50 = load i64, ptr %i.kz, align 8, !alias.scope !1178, !noalias !1179 ; 2 uses
  %i.lb = icmp eq i64 %.val8.i.i.i50, 0
  br i1 %i.lb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i48
  %i.lc = getelementptr i8, ptr %i.kz, i64 8
  %.val9.i.i.i51 = load ptr, ptr %i.lc, align 8, !alias.scope !1178, !noalias !1179, !nonnull !5, !noundef !5
  %i.ld = shl nuw i64 %.val8.i.i.i50, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i51, i64 noundef range(i64 1, 0) %i.ld, i64 noundef range(i64 1, 9) 4) #26, !noalias !1180
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52: ; preds = %bb.cb, %.lr.ph.i.i.i48
  %i.le = icmp eq i64 %i.la, %i.kx
  br i1 %i.le, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53, label %.lr.ph.i.i.i48

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i52, %bb.bx, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread
  %i.lf = icmp eq i64 %.sroa.0179.0.copyload, 0
  br i1 %i.lf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit54, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53
  %i.lg = mul nuw i64 %.sroa.0179.0.copyload, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef range(i64 1, 0) %i.lg, i64 noundef range(i64 1, 9) 8) #26, !noalias !1179
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit54

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit54: ; preds = %bb.cc, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.r, i64 128, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.lh, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i64 128, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %.val.i.i55 = load i64, ptr %i.p, align 8, !alias.scope !1183 ; 2 uses
  %i.li = icmp eq i64 %.val.i.i55, 0
  br i1 %i.li, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i57, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit54
  %.val1.i.i56 = load ptr, ptr %i.aj, align 8, !alias.scope !1183, !nonnull !5, !noundef !5
  %i.lj = mul nuw i64 %.val.i.i55, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56, i64 noundef range(i64 1, 0) %i.lj, i64 noundef range(i64 1, 9) 4) #26, !noalias !1183
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i57

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i57: ; preds = %bb.cd, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit54
  %i.lk = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val2.i.i58 = load i64, ptr %i.lk, align 8, !alias.scope !1183 ; 2 uses
  %i.ll = icmp eq i64 %.val2.i.i58, 0
  br i1 %i.ll, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit60, label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i57
  %i.lm = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val3.i.i59 = load ptr, ptr %i.lm, align 8, !alias.scope !1183, !nonnull !5, !noundef !5
  %i.ln = shl nuw i64 %.val2.i.i58, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i59, i64 noundef range(i64 1, 0) %i.ln, i64 noundef range(i64 1, 9) 8) #26, !noalias !1183
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit60

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit60: ; preds = %bb.ce, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

.loopexit:                                        ; preds = %bb.dg, %bb.eb
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp:                               ; preds = %.invoke800, %.invoke798, %.invoke796, %select.unfold.i.invoke, %.invoke, %bb.cn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.lo = icmp eq i64 %.sroa.0187.0.copyload188, 0
  br i1 %i.lo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lp = shl nuw i64 %.sroa.0187.0.copyload188, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7189.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %i.lp, i64 noundef range(i64 1, 9) 4) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit

.lr.ph:                                           ; preds = %bb.ca, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit
  %.sroa.0196.0363 = phi ptr [ %i.lq, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit ], [ %.sroa.7189.sroa.0.0.copyload, %bb.ca ] ; 2 uses
  %.sroa.7198.0362 = phi i64 [ %i.lr, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit ], [ 0, %bb.ca ] ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0196.0363, i64 4 ; 2 uses
  %i.lr = add nuw nsw i64 %.sroa.7198.0362, 1
  %i.ls = load i32, ptr %.sroa.0196.0363, align 4, !noundef !5
  %i.lt = zext i32 %i.ls to i64                   ; 2 uses
  %i.lu = icmp ugt i64 %.val37, %i.lt
  br i1 %i.lu, label %bb.ch, label %.invoke

bb.ch:                                            ; preds = %.lr.ph
  %i.lv = getelementptr inbounds nuw [32 x i8], ptr %.val36, i64 %i.lt ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load i8, ptr %i.lw, align 8, !range !18, !noalias !1184, !noundef !5
  %.not.i = icmp eq i8 %i.lx, 2
  br i1 %.not.i, label %.invoke, label %bb.cj

.thread:                                          ; preds = %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit, %bb.ca
  %i.ly = icmp eq i64 %.sroa.0187.0.copyload188, 0
  br i1 %i.ly, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61, label %bb.ci

bb.ci:                                            ; preds = %.thread
  %i.lz = shl nuw i64 %.sroa.0187.0.copyload188, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7189.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %i.lz, i64 noundef range(i64 1, 9) 4) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61: ; preds = %bb.ci, %.thread
  %i.ma = icmp eq ptr %i.kr, %i.jt
  br i1 %i.ma, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit

bb.cj:                                            ; preds = %bb.ch
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.mc = load i32, ptr %i.mb, align 8, !noalias !1184, !noundef !5 ; 7 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  %i.me = load i32, ptr %i.md, align 4, !noalias !1184, !noundef !5 ; 12 uses
  %exitcond.not = icmp eq i64 %.sroa.7198.0362, %.sroa.7189.sroa.5.0.copyload
  br i1 %exitcond.not, label %bb.cn, label %bb.cl

.invoke:                                          ; preds = %bb.cl, %bb.cm, %bb.ch, %.lr.ph
  %i.mf = phi ptr [ @25, %bb.ch ], [ @25, %.lr.ph ], [ @27, %bb.cm ], [ @27, %bb.cl ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mf) #30
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ck:                                            ; preds = %bb.cn
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7189.sroa.0.0.copyload, i64 %.sroa.7198.0362
  %i.mh = load i32, ptr %i.mg, align 4, !noundef !5
  %i.mi = zext i32 %i.mh to i64                   ; 2 uses
  %i.mj = icmp ugt i64 %.val37, %i.mi
  br i1 %i.mj, label %bb.cm, label %.invoke

bb.cm:                                            ; preds = %bb.cl
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %.val36, i64 %i.mi
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mm = load i8, ptr %i.ml, align 8, !range !18, !noundef !5 ; 7 uses
  %.not.i63 = icmp eq i8 %i.mm, 2
  br i1 %.not.i63, label %.invoke, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11edge_weightB1k_.exit

bb.cn:                                            ; preds = %bb.cj
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7189.sroa.5.0.copyload, i64 noundef %.sroa.7189.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #30
          to label %bb.ck unwind label %.loopexit.split-lp

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11edge_weightB1k_.exit: ; preds = %bb.cm
  %i.mn = and i64 %.sroa.7198.0362, 1
  %i.mo = icmp eq i64 %i.mn, 0
  %i.mp = zext i32 %i.mc to i64                   ; 12 uses
  br i1 %i.mo, label %bb.co, label %bb.dj

bb.co:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11edge_weightB1k_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  %.val3.i.i.i64 = load i64, ptr %i.bg, align 8, !alias.scope !1188, !noundef !5 ; 2 uses
  %i.mq = icmp ugt i64 %.val3.i.i.i64, %i.mp
  br i1 %i.mq, label %bb.cp, label %.loopexit.i65

bb.cp:                                            ; preds = %bb.co
  %.val.i.i.i66 = load ptr, ptr %i.bh, align 8, !alias.scope !1188, !nonnull !5, !noundef !5
  %i.mr = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i66, i64 %i.mp ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i8, ptr %i.ms, align 4, !range !15, !noalias !1188, !noundef !5
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i, label %.loopexit.i65

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i: ; preds = %bb.cp
  %.val4.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !1188, !nonnull !5, !noundef !5 ; 3 uses
  %.val5.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !1188 ; 2 uses
  br label %bb.cr

.loopexit.i.i.i.i:                                ; preds = %bb.cr, %bb.cq
  %.pn.1.i.i.i.i = phi ptr [ %i.mx, %bb.cq ], [ %i.mr, %bb.cr ]
  %.sroa.04.0.in.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.1.i.i.i.i, i64 4
  %.sroa.04.0.1.i.i.i.i = load i32, ptr %.sroa.04.0.in.1.i.i.i.i, align 4, !noalias !1188, !noundef !5
  %i.mv = zext i32 %.sroa.04.0.1.i.i.i.i to i64   ; 3 uses
  %i.mw = icmp ugt i64 %.val5.i.i.i, %i.mv
  br i1 %i.mw, label %bb.cq, label %.loopexit.i65

bb.cq:                                            ; preds = %.loopexit.i.i.i.i
  %i.mx = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i, i64 %i.mv ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %.val.1.i.i.i.i = load i32, ptr %i.my, align 4, !noalias !1189, !noundef !5
  %i.mz = icmp eq i32 %.val.1.i.i.i.i, %i.me
  br i1 %i.mz, label %.loopexit8.i, label %.loopexit.i.i.i.i

bb.cr:                                            ; preds = %bb.cs, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i
  %.pn.i.i.i.i = phi ptr [ %i.mr, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i ], [ %i.nc, %bb.cs ]
  %.sroa.04.0.i.i.i.i = load i32, ptr %.pn.i.i.i.i, align 4, !noalias !1188, !noundef !5
  %i.na = zext i32 %.sroa.04.0.i.i.i.i to i64     ; 3 uses
  %i.nb = icmp ugt i64 %.val5.i.i.i, %i.na
  br i1 %i.nb, label %bb.cs, label %.loopexit.i.i.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.nc = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i, i64 %i.na ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  %.val.i.i.i.i69 = load i32, ptr %i.nd, align 4, !noalias !1189, !noundef !5
  %i.ne = icmp eq i32 %.val.i.i.i.i69, %i.me
  br i1 %i.ne, label %.loopexit8.i, label %bb.cr

.loopexit8.i:                                     ; preds = %bb.cs, %bb.cq
  %.pre-phi.i67 = phi i64 [ %i.mv, %bb.cq ], [ %i.na, %bb.cs ]
  %i.nf = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i, i64 %.pre-phi.i67 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = load i8, ptr %i.ng, align 8, !range !18, !noalias !1185, !noundef !5
  %.not.i.i68 = icmp eq i8 %i.nh, 2
  br i1 %.not.i.i68, label %select.unfold.i.invoke, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i

.loopexit.i65:                                    ; preds = %.loopexit.i.i.i.i, %bb.cp, %bb.co
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1192
  store i8 -1, ptr %i.ka, align 8, !noalias !1193
  %.val20.i.i = load i32, ptr %i.kb, align 4, !alias.scope !1194, !noalias !1195, !noundef !5 ; 3 uses
end_hunk_1
