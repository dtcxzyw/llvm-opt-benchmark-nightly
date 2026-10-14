Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx_core-b15a2cb6e65040fa.rustworkx_core.897a2dc821fa0a7e-cgu.0?download=true
inline.NumInlined: 863
inline.NumDeleted: 438
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring15rbmg_edge_color:bb.a
  %i.ks = icmp ugt i64 %.val3.i.i.i109.i, %i.kr
  br i1 %i.ks, label %bb.cv, label %.loopexit.i110.i

bb.cv:                                            ; preds = %bb.cu
  %.val.i.i.i111.i = load ptr, ptr %i.ex, align 8, !alias.scope !912, !noalias !869, !nonnull !5, !noundef !5
  %i.kt = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i111.i, i64 %i.kr ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i8, ptr %i.ku, align 4, !range !15, !noalias !913, !noundef !5
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i112.i, label %.loopexit.i110.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i112.i: ; preds = %bb.cv
  %.val4.i.i.i113.i = load ptr, ptr %i.ey, align 8, !alias.scope !912, !noalias !869, !nonnull !5, !noundef !5 ; 3 uses
  %.val5.i.i.i114.i = load i64, ptr %i.ez, align 8, !alias.scope !912, !noalias !869 ; 2 uses
  br label %bb.cx

.loopexit.i.i.i.i117.i:                           ; preds = %bb.cx, %bb.cw
  %.pn.1.i.i.i.i118.i = phi ptr [ %i.kz, %bb.cw ], [ %i.kt, %bb.cx ]
  %.sroa.04.0.in.1.i.i.i.i119.i = getelementptr inbounds nuw i8, ptr %.pn.1.i.i.i.i118.i, i64 4
  %.sroa.04.0.1.i.i.i.i120.i = load i32, ptr %.sroa.04.0.in.1.i.i.i.i119.i, align 4, !noalias !913, !noundef !5
  %i.kx = zext i32 %.sroa.04.0.1.i.i.i.i120.i to i64 ; 3 uses
  %i.ky = icmp ugt i64 %.val5.i.i.i114.i, %i.kx
  br i1 %i.ky, label %bb.cw, label %.loopexit.i110.i

bb.cw:                                            ; preds = %.loopexit.i.i.i.i117.i
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i113.i, i64 %i.kx ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.val.1.i.i.i.i121.i = load i32, ptr %i.la, align 4, !noalias !914, !noundef !5
  %i.lb = icmp eq i32 %.val.1.i.i.i.i121.i, %i.kq
  br i1 %i.lb, label %.loopexit8.i122.i, label %.loopexit.i.i.i.i117.i

bb.cx:                                            ; preds = %bb.cy, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i112.i
  %.pn.i.i.i.i115.i = phi ptr [ %i.kt, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i112.i ], [ %i.le, %bb.cy ]
  %.sroa.04.0.i.i.i.i116.i = load i32, ptr %.pn.i.i.i.i115.i, align 4, !noalias !913, !noundef !5
  %i.lc = zext i32 %.sroa.04.0.i.i.i.i116.i to i64 ; 3 uses
  %i.ld = icmp ugt i64 %.val5.i.i.i114.i, %i.lc
  br i1 %i.ld, label %bb.cy, label %.loopexit.i.i.i.i117.i

bb.cy:                                            ; preds = %bb.cx
  %i.le = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i113.i, i64 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  %.val.i.i.i.i127.i = load i32, ptr %i.lf, align 4, !noalias !914, !noundef !5
  %i.lg = icmp eq i32 %.val.i.i.i.i127.i, %i.kq
  br i1 %i.lg, label %.loopexit8.i122.i, label %bb.cx

.loopexit8.i122.i:                                ; preds = %bb.cy, %bb.cw
  %.pre-phi.i123.i = phi i64 [ %i.kx, %bb.cw ], [ %i.lc, %bb.cy ]
  %i.lh = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i113.i, i64 %.pre-phi.i123.i ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load i8, ptr %i.li, align 8, !range !18, !noalias !915, !noundef !5
  %.not.i.i124.i = icmp eq i8 %i.lj, 2
  br i1 %.not.i.i124.i, label %select.unfold.i.invoke.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i125.i

.loopexit.i110.i:                                 ; preds = %.loopexit.i.i.i.i117.i, %bb.cv, %bb.cu
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8add_edgeB1k_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.g, i32 noundef %i.ko, i32 noundef %i.kq, i64 noundef %.recomposed, i1 noundef zeroext true, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
          to label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit130.i unwind label %.loopexit.split-lp.loopexit.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i125.i: ; preds = %.loopexit8.i122.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !noalias !915, !noundef !5
  %i.lm = add i64 %i.ll, %.recomposed
  store i64 %i.lm, ptr %i.lk, align 8, !noalias !915
  br label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit130.i

_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit130.i: ; preds = %.loopexit.i110.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i125.i
  %exitcond225.not.i = icmp eq i64 %i.km, %.val6.i
  br i1 %exitcond225.not.i, label %.preheader.i, label %.lr.ph.i

bb.cz:                                            ; preds = %.lr.ph.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val4.i, i64 noundef %.val4.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #30
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !869

.body68:                                          ; preds = %bb.du, %bb.da
  %.sroa.10217.0 = phi ptr [ %.sroa.10217.2, %bb.du ], [ %.sroa.10217.1, %bb.da ] ; 2 uses
  %.sroa.0213.0 = phi i64 [ %.sroa.0213.2, %bb.du ], [ %.sroa.0213.1, %bb.da ] ; 2 uses
  %.sroa.09.0 = phi i1 [ %.sroa.09.4, %bb.du ], [ true, %bb.da ]
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %bb.du ], [ %i.lp, %bb.da ] ; 2 uses
  %i.ln = add i64 %.sroa.0213.0, -1
  %i.lo = icmp ult i64 %i.ln, -2
  %or.cond307.not = and i1 %i.lo, %.sroa.09.0
  br i1 %or.cond307.not, label %bb.gg, label %.thread

bb.da:                                            ; preds = %bb.ao, %bb.dq
  %.sroa.10217.1 = phi ptr [ %.sroa.10217.2, %bb.dq ], [ undef, %bb.ao ]
  %.sroa.0213.1 = phi i64 [ %.sroa.0213.2, %bb.dq ], [ -1, %bb.ao ]
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %.body68

bb.db:                                            ; preds = %bb.bp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !869
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5228.0.copyload230) ]
  %.idx.i = shl nuw nsw i64 %.sroa.7231.0.copyload233, 3
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.5228.0.copyload230, i64 %.idx.i
  %i.lr = icmp eq i64 %.sroa.7231.0.copyload233, 0
  br i1 %i.lr, label %bb.dp, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.db
  %i.ls = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val3.i.i.i.i71 = load i64, ptr %i.ls, align 8, !alias.scope !917, !noundef !5 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i.i72 = load ptr, ptr %i.lt, align 8, !alias.scope !916, !nonnull !5 ; 3 uses
  %.val4.i.i.i.i73 = load ptr, ptr %i.er, align 8, !alias.scope !916, !nonnull !5 ; 5 uses
  %.val5.i.i.i.i74 = load i64, ptr %i.et, align 8, !alias.scope !916 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.p, i64 68 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  %.promoted.i75 = load i32, ptr %i.lu, align 4, !alias.scope !916 ; 2 uses
  %.promoted12.i = load i64, ptr %i.lv, align 8, !alias.scope !916 ; 2 uses
  br label %bb.dc

bb.dc:                                            ; preds = %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i, %.lr.ph.i70
  %i.lw = phi i64 [ %.promoted12.i, %.lr.ph.i70 ], [ %i.ny, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i ] ; 2 uses
  %.sroa.0.0.i10.i.i.i355 = phi i32 [ %.promoted.i75, %.lr.ph.i70 ], [ %.sroa.0.0.i10.i.i.i354, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i ] ; 2 uses
  %i.lx = phi i64 [ %.promoted12.i, %.lr.ph.i70 ], [ %i.nz, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i ] ; 2 uses
  %.sroa.0.0.i10.i.i11.i = phi i32 [ %.promoted.i75, %.lr.ph.i70 ], [ %.sroa.0.0.i10.i.i10.i, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i ] ; 2 uses
  %.sroa.0.09.i = phi ptr [ %.sroa.5228.0.copyload230, %.lr.ph.i70 ], [ %i.ly, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 8 ; 2 uses
  %i.lz = load i32, ptr %.sroa.0.09.i, align 4, !noalias !916, !noundef !5
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 4
  %i.mb = load i32, ptr %i.ma, align 4, !noalias !916, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.mc = zext i32 %i.lz to i64                   ; 2 uses
  %i.md = icmp ugt i64 %.val3.i.i.i.i71, %i.mc
  br i1 %i.md, label %bb.dd, label %select.unfold.i.i.invoke

bb.dd:                                            ; preds = %bb.dc
  %i.me = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i.i72, i64 %i.mc ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load i8, ptr %i.mf, align 4, !range !15, !noalias !917, !noundef !5
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77, label %select.unfold.i.i.invoke

.loopexit.i.i.i.i.i80:                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77, %bb.de
  %.pn.1.i.i.i.i.i81 = phi ptr [ %i.mk, %bb.de ], [ %i.me, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77 ]
  %.sroa.04.0.in.1.i.i.i.i.i82 = getelementptr inbounds nuw i8, ptr %.pn.1.i.i.i.i.i81, i64 4
  %.sroa.04.0.1.i.i.i.i.i83 = load i32, ptr %.sroa.04.0.in.1.i.i.i.i.i82, align 4, !noalias !917, !noundef !5 ; 2 uses
  %i.mi = zext i32 %.sroa.04.0.1.i.i.i.i.i83 to i64 ; 3 uses
  %i.mj = icmp ugt i64 %.val5.i.i.i.i74, %i.mi
  br i1 %i.mj, label %bb.de, label %select.unfold.i.i.invoke

bb.de:                                            ; preds = %.loopexit.i.i.i.i.i80
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %i.mi ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %.val.1.i.i.i.i.i84 = load i32, ptr %i.ml, align 4, !noalias !921, !noundef !5
  %i.mm = icmp eq i32 %.val.1.i.i.i.i.i84, %i.mb
  br i1 %i.mm, label %.loopexit10.i.i, label %.loopexit.i.i.i.i.i80

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77: ; preds = %bb.dd, %bb.df
  %.pn.i.i.i.i.i78 = phi ptr [ %i.mp, %bb.df ], [ %i.me, %bb.dd ]
  %.sroa.04.0.i.i.i.i.i79 = load i32, ptr %.pn.i.i.i.i.i78, align 4, !noalias !917, !noundef !5 ; 2 uses
  %i.mn = zext i32 %.sroa.04.0.i.i.i.i.i79 to i64 ; 3 uses
  %i.mo = icmp ugt i64 %.val5.i.i.i.i74, %i.mn
  br i1 %i.mo, label %bb.df, label %.loopexit.i.i.i.i.i80

bb.df:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77
  %i.mp = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %i.mn ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  %.val.i.i.i.i.i90 = load i32, ptr %i.mq, align 4, !noalias !921, !noundef !5
  %i.mr = icmp eq i32 %.val.i.i.i.i.i90, %i.mb
  br i1 %i.mr, label %.loopexit10.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77

.loopexit10.i.i:                                  ; preds = %bb.df, %bb.de
  %.pre-phi.i.i85 = phi i64 [ %i.mi, %bb.de ], [ %i.mn, %bb.df ]
  %.sroa.0.0.i10.i.i.i = phi i32 [ %.sroa.04.0.1.i.i.i.i.i83, %bb.de ], [ %.sroa.04.0.i.i.i.i.i79, %bb.df ] ; 6 uses
  %i.ms = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %.pre-phi.i.i85 ; 7 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24 ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 8, !range !18, !noalias !922, !noundef !5
  %.not.i.i.i86 = icmp eq i8 %i.mu, 2
  br i1 %.not.i.i.i86, label %select.unfold.i.i.invoke, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87: ; preds = %.loopexit10.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !noalias !922, !noundef !5
  %i.mx = add i64 %i.mw, -1                       ; 2 uses
  store i64 %i.mx, ptr %i.mv, align 8, !noalias !922
  %i.my = icmp eq i64 %i.mx, 0
  br i1 %i.my, label %bb.dg, label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i

select.unfold.i.i.invoke:                         ; preds = %.loopexit10.i.i, %bb.dc, %bb.dd, %.loopexit.i.i.i.i.i80
  %i.mz = phi ptr [ @12, %.loopexit.i.i.i.i.i80 ], [ @12, %bb.dd ], [ @12, %bb.dc ], [ @13, %.loopexit10.i.i ]
  store i32 %.sroa.0.0.i10.i.i.i355, ptr %i.lu, align 4
  store i64 %i.lw, ptr %i.lv, align 8
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mz) #27
          to label %select.unfold.i.i.cont unwind label %bb.dr

select.unfold.i.i.cont:                           ; preds = %select.unfold.i.i.invoke
  unreachable

bb.dg:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.ms, align 8, !noalias !923 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %.sroa.02.0.copyload.i.i.i89 = load i64, ptr %i.na, align 8, !noalias !923 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i89, 32 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.04.0.copyload.i.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i64 %.sroa.04.0.copyload.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.nb = and i64 %.sroa.02.0.copyload.i.i.i89, 4294967295 ; 2 uses
  %2 = icmp ugt i64 %.val3.i.i.i.i71, %i.nb
  br i1 %2, label %bb.dh, label %.loopexit.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.nc = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i.i72, i64 %i.nb ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !noalias !924, !noundef !5 ; 2 uses
  %i.ne = icmp eq i32 %i.nd, %.sroa.0.0.i10.i.i.i
  br i1 %i.ne, label %bb.do, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.dh, %bb.di
  %.sroa.8.0.i.i.i.i = phi i32 [ %i.ni, %bb.di ], [ %i.nd, %bb.dh ]
  %i.nf = zext i32 %.sroa.8.0.i.i.i.i to i64      ; 2 uses
  %i.ng = icmp ugt i64 %.val5.i.i.i.i74, %i.nf
  br i1 %i.ng, label %bb.di, label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i

bb.di:                                            ; preds = %.preheader.i.i.i.i
  %i.nh = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %i.nf ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !noalias !925, !noundef !5 ; 2 uses
  %i.nj = icmp eq i32 %i.ni, %.sroa.0.0.i10.i.i.i
  br i1 %i.nj, label %bb.dj, label %.preheader.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  store i32 %.sroa.020.0.extract.trunc.i.i.i.i, ptr %i.nh, align 4, !noalias !924
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i

_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i: ; preds = %.preheader.i.i.i.i, %bb.do, %bb.dj
  %3 = icmp ugt i64 %.val3.i.i.i.i71, %.sroa.2.0.extract.shift.i.i.i.i
  br i1 %3, label %bb.dk, label %.loopexit.i.i.i

bb.dk:                                            ; preds = %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i
  %i.nk = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i.i72, i64 %.sroa.2.0.extract.shift.i.i.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !noalias !924, !noundef !5 ; 2 uses
  %i.nn = icmp eq i32 %i.nm, %.sroa.0.0.i10.i.i.i
  br i1 %i.nn, label %bb.dn, label %.preheader.1.i.i.i.i

.preheader.1.i.i.i.i:                             ; preds = %bb.dk, %bb.dl
  %.sroa.8.0.1.i.i.i.i = phi i32 [ %i.ns, %bb.dl ], [ %i.nm, %bb.dk ]
  %i.no = zext i32 %.sroa.8.0.1.i.i.i.i to i64    ; 2 uses
  %i.np = icmp ugt i64 %.val5.i.i.i.i74, %i.no
  br i1 %i.np, label %bb.dl, label %.loopexit.i.i.i

bb.dl:                                            ; preds = %.preheader.1.i.i.i.i
  %i.nq = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %i.no ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !noalias !925, !noundef !5 ; 2 uses
  %i.nt = icmp eq i32 %i.ns, %.sroa.0.0.i10.i.i.i
  br i1 %i.nt, label %bb.dm, label %.preheader.1.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  store i32 %.sroa.3.0.extract.trunc.i.i.i.i, ptr %i.nu, align 4, !noalias !924
  br label %.loopexit.i.i.i

bb.dn:                                            ; preds = %bb.dk
  store i32 %.sroa.3.0.extract.trunc.i.i.i.i, ptr %i.nl, align 4, !noalias !924
  br label %.loopexit.i.i.i

bb.do:                                            ; preds = %bb.dh
  store i32 %.sroa.020.0.extract.trunc.i.i.i.i, ptr %i.nc, align 4, !noalias !924
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader.1.i.i.i.i, %bb.dn, %bb.dm, %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i, %bb.dg
  store i32 %.sroa.0.0.i10.i.i11.i, ptr %i.ms, align 8, !noalias !923
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store i32 -1, ptr %i.nv, align 4, !noalias !923
  store i32 -1, ptr %i.na, align 8, !noalias !923
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ms, i64 12
  store i32 -1, ptr %i.nw, align 4, !noalias !923
  %i.nx = add i64 %i.lx, -1                       ; 2 uses
  store i8 2, ptr %i.mt, align 8, !noalias !923
  br label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i

_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i: ; preds = %.loopexit.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87
  %i.ny = phi i64 [ %i.lw, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %i.nx, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.i10.i.i.i354 = phi i32 [ %.sroa.0.0.i10.i.i.i355, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %.sroa.0.0.i10.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.nz = phi i64 [ %i.lx, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %i.nx, %.loopexit.i.i.i ]
  %.sroa.0.0.i10.i.i10.i = phi i32 [ %.sroa.0.0.i10.i.i11.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %.sroa.0.0.i10.i.i.i, %.loopexit.i.i.i ]
  %i.oa = icmp eq ptr %i.ly, %i.lq
  br i1 %i.oa, label %.loopexit312, label %bb.dc

.loopexit312:                                     ; preds = %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i
  store i32 %.sroa.0.0.i10.i.i.i354, ptr %i.lu, align 4
  store i64 %i.ny, ptr %i.lv, align 8
  br label %bb.dp

bb.dp:                                            ; preds = %.loopexit312, %bb.db
  %i.ob = add nsw i64 %i.x, -1
  store i64 %i.ob, ptr %i.cg, align 8, !alias.scope !916
  br label %bb.dq

bb.dq:                                            ; preds = %bb.q, %bb.dp
  %.sroa.12.0 = phi i64 [ undef, %bb.q ], [ %.sroa.7231.0.copyload233, %bb.dp ]
  %.sroa.10217.2 = phi ptr [ undef, %bb.q ], [ %.sroa.5228.0.copyload230, %bb.dp ] ; 5 uses
  %.sroa.0213.2 = phi i64 [ -1, %bb.q ], [ %.sroa.0226.0.copyload227, %bb.dp ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring19rbmg_split_into_two(ptr noalias nofree noundef align 8 captures(none) dereferenceable(256) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.p)
          to label %bb.dt unwind label %bb.da

bb.dr:                                            ; preds = %select.unfold.i.i.invoke
  %i.oc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.od = icmp eq i64 %.sroa.0226.0.copyload227, 0
  br i1 %i.od, label %.thread, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.oe = shl nuw i64 %.sroa.0226.0.copyload227, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5228.0.copyload230, i64 noundef range(i64 1, 0) %i.oe, i64 noundef range(i64 1, 9) 4) #26
  br label %.thread

bb.dt:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %i.k, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.of = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %i.of, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring15rbmg_edge_color(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.m)
          to label %bb.dw unwind label %bb.dv

bb.du:                                            ; preds = %.body129, %bb.dv
  %.sroa.09.4 = phi i1 [ %.sroa.09.6, %.body129 ], [ true, %bb.dv ]
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %.body129 ], [ %i.og, %bb.dv ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.l) #28
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.m) #28
  br label %.body68

bb.dv:                                            ; preds = %bb.dt
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dw:                                            ; preds = %bb.dt
  %i.oh = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 3 uses
  %i.oi = load i64, ptr %i.oh, align 8, !noundef !5 ; 3 uses
  %i.oj = tail call i64 @llvm.usub.sat.i64(i64 %i.oi, i64 1) ; 2 uses
  %i.ok = icmp sgt i64 %i.oj, -1
  br i1 %i.ok, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ol = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.oj, i1 false)
  %i.om = sub nuw nsw i64 64, %i.ol
  %i.on = shl nuw i64 1, %i.om
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dw, %bb.dx
  %.sroa.017.0 = phi i64 [ %i.on, %bb.dx ], [ 0, %bb.dw ]
  %i.oo = sub i64 %.sroa.017.0, %i.oi             ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.os = load i64, ptr %i.or, align 8, !noundef !5 ; 3 uses
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %i.oq, i64 %i.os ; 3 uses
  %i.ou = icmp eq i64 %i.oo, 0
  br i1 %i.ou, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dy
  %i.ov = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ow = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.l, i64 68 ; 2 uses
  %.sroa.01.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.pb = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph, %.loopexit309
  %i.pd = phi i64 [ %i.oi, %.lr.ph ], [ %i.sg, %.loopexit309 ]
  %.sroa.0.0364 = phi ptr [ %i.oq, %.lr.ph ], [ %i.sh, %.loopexit309 ] ; 4 uses
  %.sroa.5.0363 = phi i64 [ %i.oo, %.lr.ph ], [ %i.pe, %.loopexit309 ]
  %i.pe = add i64 %.sroa.5.0363, -1               ; 2 uses
  %i.pf = icmp eq ptr %.sroa.0.0364, %i.ot
  br i1 %i.pf, label %._crit_edge, label %bb.ea

._crit_edge:                                      ; preds = %.loopexit309, %bb.dz, %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring33rbmg_edge_color_when_power_of_two(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.l)
          to label %bb.ew unwind label %.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dz
  %i.pg = getelementptr i8, ptr %.sroa.0.0364, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.pg, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ph = getelementptr i8, ptr %.sroa.0.0364, i64 16
  %.sroa.0.0.val46 = load i64, ptr %i.ph, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %.idx.i95 = shl nuw nsw i64 %.sroa.0.0.val46, 3
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 %.idx.i95
  %i.pj = icmp eq i64 %.sroa.0.0.val46, 0
  br i1 %i.pj, label %.loopexit309, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %bb.ea, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i99
  %.sroa.0.04.i = phi ptr [ %i.pk, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i99 ], [ %.sroa.0.0.val, %bb.ea ] ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 8 ; 2 uses
  %i.pl = load i32, ptr %.sroa.0.04.i, align 4, !noalias !926, !noundef !5 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 4
  %i.pn = load i32, ptr %i.pm, align 4, !noalias !926, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %.val3.i.i.i.i97 = load i64, ptr %i.ov, align 8, !alias.scope !930, !noundef !5 ; 2 uses
  %i.po = zext i32 %i.pl to i64                   ; 6 uses
  %i.pp = icmp ugt i64 %.val3.i.i.i.i97, %i.po
  br i1 %i.pp, label %bb.eb, label %.loopexit.i.i98

bb.eb:                                            ; preds = %.lr.ph.i96
  %.val.i.i.i.i101 = load ptr, ptr %i.ow, align 8, !alias.scope !930, !nonnull !5, !noundef !5
  %i.pq = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i.i101, i64 %i.po ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.ps = load i8, ptr %i.pr, align 4, !range !15, !noalias !930, !noundef !5
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i102, label %.loopexit.i.i98

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i102: ; preds = %bb.eb
  %.val4.i.i.i.i103 = load ptr, ptr %i.ox, align 8, !alias.scope !930, !nonnull !5, !noundef !5 ; 3 uses
  %.val5.i.i.i.i104 = load i64, ptr %i.oy, align 8, !alias.scope !930 ; 2 uses
  br label %bb.ed

.loopexit.i.i.i.i.i107:                           ; preds = %bb.ed, %bb.ec
  %.pn.1.i.i.i.i.i108 = phi ptr [ %i.pw, %bb.ec ], [ %i.pq, %bb.ed ]
  %.sroa.04.0.in.1.i.i.i.i.i109 = getelementptr inbounds nuw i8, ptr %.pn.1.i.i.i.i.i108, i64 4
  %.sroa.04.0.1.i.i.i.i.i110 = load i32, ptr %.sroa.04.0.in.1.i.i.i.i.i109, align 4, !noalias !930, !noundef !5
  %i.pu = zext i32 %.sroa.04.0.1.i.i.i.i.i110 to i64 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring19rbmg_split_into_two:bb.a
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
  %.not42.i.i = icmp eq i8 %i.gy, 2
  br i1 %.not42.i.i, label %.invoke.i, label %bb.bd, !prof !6

bb.bd:                                            ; preds = %._crit_edge, %bb.bc
  %i.gz = phi i32 [ %.val.i53.i, %bb.bc ], [ %.pre, %._crit_edge ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.gq, %bb.bc ], [ %i.gk, %._crit_edge ]
  %.sroa.875.0.ph.i = phi i32 [ %i.gp, %bb.bc ], [ %.sroa.0.0.i51.i, %._crit_edge ] ; 7 uses
  %i.ha = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %.pre-phi.i ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 12 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !noalias !1163, !noundef !5
  %i.hf = icmp eq i32 %i.gc, %i.gz
  %spec.select.i.i = select i1 %i.hf, i32 %i.he, i32 %i.gz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.hg = load i64, ptr %i.l, align 8, !range !11, !alias.scope !1164, !noalias !1165, !noundef !5
  %i.hh = icmp eq i64 %i.fs, %i.hg
  br i1 %i.hh, label %bb.bh, label %bb.bi

.invoke.i:                                        ; preds = %bb.bc
  store i32 %.sroa.875.0.ph166178.i, ptr %i.cg, align 4, !noalias !1138
  store i64 %i.fv, ptr %i.cc, align 8, !noalias !1138
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #27
          to label %.cont.i unwind label %.body49.loopexit.split-lp.i, !noalias !1138

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i: ; preds = %._crit_edge.i.i
  %i.hi = getelementptr i8, ptr %i.fw, i64 -8
  %i.hj = load i32, ptr %i.hi, align 4, !range !1166, !noalias !1138, !noundef !5
  %i.hk = trunc nuw i32 %i.hj to i1
  br i1 %i.hk, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1c_.exit.i
  %i.hl = getelementptr i8, ptr %i.fw, i64 -4
  %i.hm = load i32, ptr %i.hl, align 4, !noalias !1138, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %i.hn = load i64, ptr %i.k, align 8, !range !11, !alias.scope !1167, !noalias !1138, !noundef !5
  %i.ho = icmp eq i64 %i.fq, %i.hn
  br i1 %i.ho, label %bb.bf, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #31
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit_crit_edge.i unwind label %.body49.loopexit.i, !noalias !1138

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit_crit_edge.i: ; preds = %bb.bf
  %.pre.i = load ptr, ptr %i.ej, align 8, !alias.scope !1167, !noalias !1138
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit_crit_edge.i, %bb.be
  %i.hp = phi ptr [ %.pre.i, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexE8push_mutCsbNMRYq9Xj9a_14rustworkx_core.exit_crit_edge.i ], [ %i.fp, %bb.be ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.fq
  store i32 %i.hm, ptr %i.hq, align 4, !noalias !1168
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
  %i.ic = phi i64 [ %i.fv, %bb.bg ], [ %i.jf, %.loopexit.i.i ], [ %i.fv, %bb.bi ] ; 3 uses
  %.sroa.875.0.ph165.i = phi i32 [ %.sroa.875.0.ph166178.i, %bb.bg ], [ %.sroa.875.0.ph.i, %.loopexit.i.i ], [ %.sroa.875.0.ph166178.i, %bb.bi ] ; 3 uses
  %i.id = phi i32 [ %i.fu, %bb.bg ], [ %.sroa.875.0.ph.i, %.loopexit.i.i ], [ %i.fu, %bb.bi ] ; 2 uses
  %i.ie = phi i64 [ %i.ft, %bb.bg ], [ %i.jf, %.loopexit.i.i ], [ %i.ft, %bb.bi ] ; 2 uses
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
  %2 = icmp ugt i64 %.val6.i.i, %i.ik
  br i1 %2, label %bb.bk, label %.loopexit.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.il = getelementptr inbounds nuw [12 x i8], ptr %.val.i52.i, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !noalias !1171, !noundef !5 ; 2 uses
  %i.in = icmp eq i32 %i.im, %.sroa.875.0.ph.i
  br i1 %i.in, label %bb.br, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bk, %bb.bl
  %.sroa.8.0.i.i.i = phi i32 [ %i.ir, %bb.bl ], [ %i.im, %bb.bk ]
  %i.io = zext i32 %.sroa.8.0.i.i.i to i64        ; 2 uses
  %i.ip = icmp ugt i64 %i.eo, %i.io
  br i1 %i.ip, label %bb.bl, label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i

bb.bl:                                            ; preds = %.preheader.i.i.i
  %i.iq = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.io ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !noalias !1172, !noundef !5 ; 2 uses
  %i.is = icmp eq i32 %i.ir, %.sroa.875.0.ph.i
  br i1 %i.is, label %bb.bm, label %.preheader.i.i.i

bb.bm:                                            ; preds = %bb.bl
  store i32 %.sroa.020.0.extract.trunc.i.i.i, ptr %i.iq, align 4, !noalias !1171
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i

_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i: ; preds = %.preheader.i.i.i, %bb.br, %bb.bm
  %3 = icmp ugt i64 %.val6.i.i, %.sroa.2.0.extract.shift.i.i.i
  br i1 %3, label %bb.bn, label %.loopexit.i.i

bb.bn:                                            ; preds = %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i
  %i.it = getelementptr inbounds nuw [12 x i8], ptr %.val.i52.i, i64 %.sroa.2.0.extract.shift.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !noalias !1171, !noundef !5 ; 2 uses
  %i.iw = icmp eq i32 %i.iv, %.sroa.875.0.ph.i
  br i1 %i.iw, label %bb.bq, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %bb.bn, %bb.bo
  %.sroa.8.0.1.i.i.i = phi i32 [ %i.jb, %bb.bo ], [ %i.iv, %bb.bn ]
  %i.ix = zext i32 %.sroa.8.0.1.i.i.i to i64      ; 2 uses
  %i.iy = icmp ugt i64 %i.eo, %i.ix
  br i1 %i.iy, label %bb.bo, label %.loopexit.i.i

bb.bo:                                            ; preds = %.preheader.1.i.i.i
  %i.iz = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.ix ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !noalias !1172, !noundef !5 ; 2 uses
  %i.jc = icmp eq i32 %i.jb, %.sroa.875.0.ph.i
  br i1 %i.jc, label %bb.bp, label %.preheader.1.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  store i32 %.sroa.3.0.extract.trunc.i.i.i, ptr %i.jd, align 4, !noalias !1171
  br label %.loopexit.i.i

bb.bq:                                            ; preds = %bb.bn
  store i32 %.sroa.3.0.extract.trunc.i.i.i, ptr %i.iu, align 4, !noalias !1171
  br label %.loopexit.i.i

bb.br:                                            ; preds = %bb.bk
  store i32 %.sroa.020.0.extract.trunc.i.i.i, ptr %i.il, align 4, !noalias !1171
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i

.loopexit.i.i:                                    ; preds = %.preheader.1.i.i.i, %bb.bq, %bb.bp, %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i, %bb.bj
  store i32 %i.fu, ptr %i.ha, align 8, !noalias !1170
  %i.je = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 -1, ptr %i.je, align 4, !noalias !1170
  store i32 -1, ptr %i.hc, align 8, !noalias !1170
  store i32 -1, ptr %i.hd, align 4, !noalias !1170
  %i.jf = add i64 %i.ft, -1                       ; 2 uses
  store i8 2, ptr %i.hb, align 8, !noalias !1170
  br label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11remove_edgeB1k_.exit.i

bb.bs:                                            ; preds = %bb.au, %._crit_edge.i
  %i.jg = load ptr, ptr %i.by, align 8, !alias.scope !1159, !noalias !1160, !nonnull !5, !noundef !5
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %i.fj ; 3 uses
  store i64 %.sroa.085.0.copyload.pre.i, ptr %i.jh, align 8, !noalias !1173
  %.sroa.587.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store ptr %.sroa.587.0.copyload.pre.i, ptr %.sroa.587.0..sroa_idx88.i, align 8, !noalias !1173
  %.sroa.690.0..sroa_idx91.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store i64 %.sroa.690.0.copyload.pre.i, ptr %.sroa.690.0..sroa_idx91.i, align 8, !noalias !1173
  %i.ji = add i64 %i.fj, 1
  store i64 %i.ji, ptr %i.bz, align 8, !alias.scope !1159, !noalias !1160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1138
  %.val41.i = load i64, ptr %i.l, align 8, !noalias !1138 ; 2 uses
  %i.jj = icmp eq i64 %.val41.i, 0
  br i1 %i.jj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val42.i = load ptr, ptr %i.eh, align 8, !noalias !1138, !nonnull !5, !noundef !5
  %i.jk = mul nuw i64 %.val41.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42.i, i64 noundef range(i64 1, 0) %i.jk, i64 noundef range(i64 1, 9) 4) #26, !noalias !1138
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1138
  br label %.outer.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i: ; preds = %bb.bv, %bb.aw
  %.sroa.085.0.copyload.pre.lcssa.sink.i = phi i64 [ %.sroa.085.0.copyload.pre.i, %bb.aw ], [ %.val35.i, %bb.bv ]
  %.sroa.587.0.copyload.pre.lcssa.sink.i = phi ptr [ %.sroa.587.0.copyload.pre.i, %bb.aw ], [ %.val36.i, %bb.bv ]
  %eh.lpad-body50110.ph.i = phi { ptr, i32 } [ %i.fm, %bb.aw ], [ %i.jo, %bb.bv ]
  %i.jl = shl nuw i64 %.sroa.085.0.copyload.pre.lcssa.sink.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.587.0.copyload.pre.lcssa.sink.i, i64 noundef range(i64 1, 0) %i.jl, i64 noundef range(i64 1, 9) 4) #26, !noalias !1138
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %.body49.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i, %bb.av
  %eh.lpad-body50110.i = phi { ptr, i32 } [ %i.jo, %.body49.i ], [ %i.fm, %bb.av ], [ %eh.lpad-body50110.ph.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.sink.split.i ] ; 2 uses
  %.val39.i = load i64, ptr %i.l, align 8, !noalias !1138 ; 2 uses
  %i.jm = icmp eq i64 %.val39.i, 0
  br i1 %i.jm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit63.i, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i
  %.val40.i = load ptr, ptr %i.eh, align 8, !noalias !1138, !nonnull !5, !noundef !5
  %i.jn = mul nuw i64 %.val39.i, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i, i64 noundef range(i64 1, 0) %i.jn, i64 noundef range(i64 1, 9) 4) #26, !noalias !1138
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtB4_6option6OptionNtB1b_9EdgeIndexEEEECsbNMRYq9Xj9a_14rustworkx_core.exit63.i

.body49.i:                                        ; preds = %.body49.thread111.i, %.body49.loopexit.split-lp.i, %.body49.loopexit.i
  %i.jo = phi { ptr, i32 } [ %i.gj, %.body49.thread111.i ], [ %lpad.loopexit.i, %.body49.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body49.loopexit.split-lp.i ] ; 2 uses
  %.val35.i = load i64, ptr %i.k, align 8, !noalias !1138 ; 2 uses
  %i.jp = icmp eq i64 %.val35.i, 0
  br i1 %i.jp, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i, label %bb.bv

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
  %i.jq = icmp ult i64 %.sroa.5181.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.jq)
  %.idx = mul nuw nsw i64 %.sroa.5181.0.copyload, 24
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 %.idx ; 5 uses
  %i.js = icmp eq i64 %.sroa.5181.0.copyload, 0
  br i1 %i.js, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph: ; preds = %bb.bx
  %i.jt = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val36 = load ptr, ptr %i.jt, align 8, !nonnull !5 ; 2 uses
  %.val37 = load i64, ptr %i.ai, align 8          ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.q, i64 68 ; 2 uses
  %.sroa.01.sroa.4.0..sroa_idx.i.i170 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.01.sroa.5.0..sroa_idx.i.i171 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.4.0..sroa_idx.i.i172 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.r, i64 68 ; 2 uses
  %.sroa.01.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.4.0..sroa_idx.i.i156 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  br label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %bb.cg, %bb.cf
  %i.kc = ptrtoint ptr %i.jr to i64
  %i.kd = ptrtoint ptr %i.kp to i64
  %i.ke = sub nuw i64 %i.kc, %i.kd
  %i.kf = udiv exact i64 %i.ke, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.kg = icmp eq ptr %i.jr, %i.kp
  br i1 %i.kg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.ki, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kp, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.ki = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.kh, align 8, !alias.scope !1174, !noalias !1175 ; 2 uses
  %i.kj = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.kj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i
  %i.kk = getelementptr i8, ptr %i.kh, i64 8
  %.val9.i.i.i = load ptr, ptr %i.kk, align 8, !alias.scope !1174, !noalias !1175, !nonnull !5, !noundef !5
  %i.kl = shl nuw i64 %.val8.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef range(i64 1, 0) %i.kl, i64 noundef range(i64 1, 9) 4) #26, !noalias !1176
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i: ; preds = %bb.by, %.lr.ph.i.i.i
  %i.km = icmp eq i64 %i.ki, %i.kf
  br i1 %i.km, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.kn = icmp eq i64 %.sroa.0179.0.copyload, 0
  br i1 %i.kn, label %.body, label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  %i.ko = mul nuw i64 %.sroa.0179.0.copyload, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef range(i64 1, 0) %i.ko, i64 noundef range(i64 1, 9) 8) #26, !noalias !1175
  br label %.body

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61
  %.sroa.5184.0364 = phi ptr [ %.sroa.4.0.copyload, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.lr.ph ], [ %i.kp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit61 ] ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.5184.0364, i64 24 ; 6 uses
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
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.7189.sroa.0.0.copyload, i64 %.idx366
  %i.kr = icmp eq i64 %.sroa.7189.sroa.5.0.copyload, 0
  br i1 %i.kr, label %.thread, label %.lr.ph

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit.thread: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit, %bb.bx
  %.sroa.5184.1214 = phi ptr [ %.sroa.4.0.copyload, %bb.bx ], [ %i.kp, %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCsbNMRYq9Xj9a_14rustworkx_core.exit ] ; 3 uses
  %i.ks = ptrtoint ptr %i.jr to i64
  %i.kt = ptrtoint ptr %.sroa.5184.1214 to i64
  %i.ku = sub nuw i64 %i.ks, %i.kt
  %i.kv = udiv exact i64 %i.ku, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.kw = icmp eq ptr %i.jr, %.sroa.5184.1214
  br i1 %i.kw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i53, label %.lr.ph.i.i.i48
end_hunk_1
