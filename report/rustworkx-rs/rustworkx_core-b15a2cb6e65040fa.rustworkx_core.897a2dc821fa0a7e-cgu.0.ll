Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx_core-b15a2cb6e65040fa.rustworkx_core.897a2dc821fa0a7e-cgu.0?download=true
inline.NumInlined: 863
inline.NumDeleted: 438
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring15rbmg_edge_color:bb.a
  %.sroa.4252.0.ph = phi i64 [ 8, %bb.l ], [ 0, %_RNvXsb_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraphNtNtCslwFuT2d6ECx_4core5clone5Clone5clone.exit ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4252.0.ph, i64 %i.cj) #30
          to label %bb.al unwind label %bb.o

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %bb.k, %bb.m
  %.sroa.4252.0 = phi i64 [ %i.x, %bb.m ], [ 0, %bb.k ] ; 2 uses
  %.sroa.10254.0 = phi i64 [ %i.cn, %bb.m ], [ 8, %bb.k ]
  %i.cp = inttoptr i64 %.sroa.10254.0 to ptr
  %i.cq = icmp samesign ule i64 %i.x, %.sroa.4252.0
  tail call void @llvm.assume(i1 %i.cq)
  store i64 %.sroa.4252.0, ptr %i.o, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 5 uses
  store ptr %i.cp, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 7 uses
  store i64 0, ptr %i.cs, align 8
  switch i64 %i.x, label %bb.q [
    i64 0, label %bb.r
    i64 1, label %bb.s
  ]

bb.q:                                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.ct = and i64 %i.x, 1
  %.not23 = icmp eq i64 %i.ct, 0
  br i1 %.not23, label %bb.dq, label %bb.am

bb.r:                                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  br label %bb.w

bb.s:                                             ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cu = icmp ult i64 %.val6.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = shl nuw nsw i64 %.val6.i, 3             ; 2 uses
  %.not.i48 = icmp samesign ugt i64 %.val6.i, 1152921504606846975
  br i1 %.not.i48, label %bb.ab, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  br i1 %i.ab, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit51, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !754
  %i.cw = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cv, i64 noundef range(i64 1, 9) 4) #26, !noalias !754 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = ptrtoint ptr %i.cw to i64
  br label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit51

bb.w:                                             ; preds = %bb.ah, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %.val.i.i.i52 = load i64, ptr %i.p, align 8, !alias.scope !758 ; 2 uses
  %i.cz = icmp eq i64 %.val.i.i.i52, 0
  br i1 %i.cz, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i.i = load ptr, ptr %i.da, align 8, !alias.scope !758, !nonnull !5, !noundef !5
  %i.db = mul nuw i64 %.val.i.i.i52, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef range(i64 1, 0) %i.db, i64 noundef range(i64 1, 9) 4) #26, !noalias !758
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i: ; preds = %bb.x, %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val2.i.i.i = load i64, ptr %i.dc, align 8, !alias.scope !758 ; 2 uses
  %i.dd = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.dd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val3.i.i.i = load ptr, ptr %i.de, align 8, !alias.scope !758, !nonnull !5, !noundef !5
  %i.df = shl nuw i64 %.val2.i.i.i, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef range(i64 1, 0) %i.df, i64 noundef range(i64 1, 9) 8) #26, !noalias !758
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i: ; preds = %bb.y, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i
  br i1 %i.ab, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 9) 4) #26, !noalias !755
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i: ; preds = %bb.z, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i
  br i1 %i.bf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit177, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit177.sink.split

bb.aa:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.s, %bb.u
  %.sroa.4256.0.ph = phi i64 [ 4, %bb.u ], [ 0, %bb.s ]
  %.sroa.10258.0.ph = phi i64 [ %i.cv, %bb.u ], [ undef, %bb.s ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4256.0.ph, i64 %.sroa.10258.0.ph) #30
          to label %bb.al unwind label %bb.aa

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit51: ; preds = %bb.t, %bb.v
  %.sroa.10258.0 = phi i64 [ %i.cy, %bb.v ], [ 4, %bb.t ]
  %i.dh = inttoptr i64 %.sroa.10258.0 to ptr      ; 2 uses
  store i64 %.val6.i, ptr %i.n, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %i.dh, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !5
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %i.dn
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ai, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit51
  %i.dp = phi ptr [ %i.dh, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit51 ], [ %i.dz, %bb.ai ]
  %.sroa.6210.0.copyload = phi i64 [ 0, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit51 ], [ %i.eb, %bb.ai ] ; 4 uses
  %.sroa.0.0259 = phi ptr [ %i.dl, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core.exit51 ], [ %i.ds, %bb.ai ]
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.dq = phi ptr [ %i.ds, %bb.ae ], [ %.sroa.0.0259, %bb.ac ] ; 4 uses
  %i.dr = icmp eq ptr %i.dq, %i.do
  br i1 %i.dr, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.du = load i8, ptr %i.dt, align 8, !range !18, !alias.scope !759, !noalias !760, !noundef !5
  %.not.i.i = icmp eq i8 %i.du, 2
  br i1 %.not.i.i, label %bb.ad, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.dv, align 8, !alias.scope !759, !noalias !760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.dw = load i64, ptr %i.n, align 8, !range !11, !alias.scope !761, !noundef !5
  %i.dx = icmp eq i64 %.sroa.6210.0.copyload, %i.dw
  br i1 %i.dx, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBN_EE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #31
          to label %._crit_edge434 unwind label %bb.aj

._crit_edge434:                                   ; preds = %bb.ag
  %.pre = load ptr, ptr %i.di, align 8, !alias.scope !761
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %.sroa.0205.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.5207.0.copyload = load ptr, ptr %i.di, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.dy = load ptr, ptr %i.cr, align 8, !alias.scope !762, !nonnull !5, !noundef !5 ; 3 uses
  store i64 %.sroa.0205.0.copyload, ptr %i.dy, align 8, !noalias !762
  %.sroa.5207.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.5207.0.copyload, ptr %.sroa.5207.0..sroa_idx208, align 8, !noalias !762
  %.sroa.6210.0..sroa_idx211 = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 %.sroa.6210.0.copyload, ptr %.sroa.6210.0..sroa_idx211, align 8, !noalias !762
  store i64 1, ptr %i.cs, align 8, !alias.scope !762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.w

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit177.sink.split: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i174
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef range(i64 1, 0) %i.be, i64 noundef range(i64 1, 9) 4) #26, !noalias !5
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit177

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit177: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_.exit177.sink.split, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.ai:                                            ; preds = %._crit_edge434, %bb.af
  %i.dz = phi ptr [ %.pre, %._crit_edge434 ], [ %i.dp, %bb.af ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.sroa.6210.0.copyload
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.ea, align 4, !noalias !761
  %i.eb = add i64 %.sroa.6210.0.copyload, 1       ; 2 uses
  store i64 %i.eb, ptr %i.dj, align 8, !alias.scope !761
  br label %bb.ac

bb.aj:                                            ; preds = %bb.ag
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val40 = load i64, ptr %i.n, align 8           ; 2 uses
  %i.ed = icmp eq i64 %.val40, 0
  br i1 %i.ed, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val41 = load ptr, ptr %i.di, align 8, !nonnull !5, !noundef !5
  %i.ee = shl nuw i64 %.val40, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val41, i64 noundef range(i64 1, 0) %i.ee, i64 noundef range(i64 1, 9) 4) #26
  br label %.thread

bb.al:                                            ; preds = %bb.fq, %bb.ab, %bb.p
  unreachable

bb.am:                                            ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.ef = icmp ult i64 %.val6.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = mul i64 %.val6.i, %i.x
  %2 = tail call i64 @llvm.usub.sat.i64(i64 %i.eg, i64 1) ; 2 uses
  %3 = icmp sgt i64 %2, -1
  br i1 %3, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eh = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %2, i1 false)
  %i.ei = sub nuw nsw i64 64, %i.eh
  %i.ej = shl nuw i64 1, %i.ei
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.sroa.04.0.i = phi i64 [ %i.ej, %bb.an ], [ 0, %bb.am ] ; 4 uses
  %i.ek = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.04.0.i, i1 false) ; 2 uses
  %i.el = trunc nuw nsw i64 %i.ek to i32
  %i.em = udiv i64 %.sroa.04.0.i, %i.x            ; 2 uses
  %i.en = mul i64 %i.em, %i.x                     ; 0 uses
  %.recomposed = urem i64 %.sroa.04.0.i, %i.x     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !764
  invoke fastcc void @_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph19clone_without_edges(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.p)
          to label %.noexc66 unwind label %bb.da, !noalias !765

.noexc66:                                         ; preds = %bb.ao
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store i64 %.sroa.04.0.i, ptr %i.eo, align 8, !noalias !764
  %i.ep = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !763, !nonnull !5, !noundef !5 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !763, !noundef !5
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 7 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 5 uses
  br label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i

_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i: ; preds = %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i.backedge, %.noexc66
  %i.ey = phi ptr [ %i.eq, %.noexc66 ], [ %i.fa, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i.backedge ] ; 5 uses
  %i.ez = icmp eq ptr %i.ey, %i.et
  br i1 %i.ez, label %.preheader163.i, label %bb.ap

.preheader163.i:                                  ; preds = %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i
  br i1 %i.ab, label %.preheader.i, label %.lr.ph.i

bb.ap:                                            ; preds = %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fc = load i8, ptr %i.fb, align 8, !range !18, !alias.scope !766, !noalias !767, !noundef !5
  %.not.i.i.i = icmp eq i8 %i.fc, 2
  br i1 %.not.i.i.i, label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i.backedge, label %bb.au

_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i.backedge: ; preds = %bb.ap, %.loopexit.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i
  br label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i58: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bi, %bb.bh
  %.pn41.i = phi { ptr, i32 } [ %i.hn, %bb.bi ], [ %i.hn, %bb.bh ], [ %lpad.loopexit.split-lp684, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769), !noalias !764
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770), !noalias !764
  %.val.i.i.i186 = load i64, ptr %i.g, align 8, !alias.scope !771, !noalias !764 ; 2 uses
  %i.fd = icmp eq i64 %.val.i.i.i186, 0
  br i1 %i.fd, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i188, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i58
  %.val1.i.i.i187 = load ptr, ptr %i.ev, align 8, !alias.scope !771, !noalias !764, !nonnull !5, !noundef !5
  %i.fe = mul nuw i64 %.val.i.i.i186, 12
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i187, i64 noundef range(i64 1, 0) %i.fe, i64 noundef range(i64 1, 9) 4) #26, !noalias !772
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i188

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i188: ; preds = %bb.aq, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i58
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.val2.i.i.i189 = load i64, ptr %i.ff, align 8, !alias.scope !771, !noalias !764 ; 2 uses
  %i.fg = icmp eq i64 %.val2.i.i.i189, 0
  br i1 %i.fg, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i191, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i188
  %.val3.i.i.i190 = load ptr, ptr %i.ew, align 8, !alias.scope !771, !noalias !764, !nonnull !5, !noundef !5
  %i.fh = shl nuw i64 %.val2.i.i.i189, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i190, i64 noundef range(i64 1, 0) %i.fh, i64 noundef range(i64 1, 9) 8) #26, !noalias !772
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i191

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i191: ; preds = %bb.ar, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtB4_6option6OptionuEEEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i188
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.val5.i192 = load i64, ptr %i.fi, align 8, !alias.scope !768, !noalias !764 ; 2 uses
  %i.fj = icmp eq i64 %.val5.i192, 0
  br i1 %i.fj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i194, label %bb.as

bb.as:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i191
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.val6.i193 = load ptr, ptr %i.fk, align 8, !alias.scope !768, !noalias !764, !nonnull !5, !noundef !5
  %i.fl = shl nuw i64 %.val5.i192, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i193, i64 noundef range(i64 1, 0) %i.fl, i64 noundef range(i64 1, 9) 4) #26, !noalias !773
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i194

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i194: ; preds = %bb.as, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_.exit.i191
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %.val.i195 = load i64, ptr %i.fm, align 8, !alias.scope !768, !noalias !764 ; 2 uses
  %i.fn = icmp eq i64 %.val.i195, 0
  br i1 %i.fn, label %.thread, label %bb.at

bb.at:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit9.i194
  %i.fo = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.val2.i196 = load ptr, ptr %i.fo, align 8, !alias.scope !768, !noalias !764, !nonnull !5, !noundef !5
  %i.fp = shl nuw i64 %.val.i195, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i196, i64 noundef range(i64 1, 0) %i.fp, i64 noundef range(i64 1, 9) 4) #26, !noalias !773
  br label %.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i110.i, %bb.bc, %.loopexit.i.i, %bb.cz, %select.unfold.i126.invoke.i, %bb.bd
  %lpad.loopexit.split-lp684 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB19_EEECsbNMRYq9Xj9a_14rustworkx_core.exit.i58

bb.au:                                            ; preds = %bb.ap
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fr, align 8, !alias.scope !766, !noalias !767 ; 3 uses
  %.sroa.6.8.extract.trunc.i = trunc i64 %.sroa.02.0.copyload.i.i.i to i32
  %.sroa.6.12.extract.shift.i = lshr i64 %.sroa.02.0.copyload.i.i.i, 32
  %.sroa.6.12.extract.trunc.i = trunc nuw i64 %.sroa.6.12.extract.shift.i to i32 ; 3 uses
  %i.fs = load i64, ptr %i.fq, align 8, !noalias !764, !noundef !5
  %i.ft = mul i64 %i.fs, %i.em                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %.val3.i.i.i.i = load i64, ptr %i.eu, align 8, !alias.scope !777, !noalias !764, !noundef !5
  %i.fu = and i64 %.sroa.02.0.copyload.i.i.i, 4294967295 ; 2 uses
  %i.fv = icmp ugt i64 %.val3.i.i.i.i, %i.fu
  br i1 %i.fv, label %bb.av, label %.loopexit.i.i

bb.av:                                            ; preds = %bb.au
  %.val.i.i.i.i = load ptr, ptr %i.ev, align 8, !alias.scope !777, !noalias !764, !nonnull !5, !noundef !5
  %i.fw = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i.i, i64 %i.fu ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i8, ptr %i.fx, align 4, !range !15, !noalias !778, !noundef !5
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i, label %.loopexit.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i: ; preds = %bb.av
  %.val4.i.i.i.i = load ptr, ptr %i.ew, align 8, !alias.scope !777, !noalias !764, !nonnull !5, !noundef !5 ; 3 uses
  %.val5.i.i.i.i = load i64, ptr %i.ex, align 8, !alias.scope !777, !noalias !764 ; 2 uses
  br label %bb.ax

.loopexit.i.i.i.i.i:                              ; preds = %bb.ax, %bb.aw
  %.pn.1.i.i.i.i.i = phi ptr [ %i.gc, %bb.aw ], [ %i.fw, %bb.ax ]
  %.sroa.04.0.in.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.1.i.i.i.i.i, i64 4
  %.sroa.04.0.1.i.i.i.i.i = load i32, ptr %.sroa.04.0.in.1.i.i.i.i.i, align 4, !noalias !778, !noundef !5
  %i.ga = zext i32 %.sroa.04.0.1.i.i.i.i.i to i64 ; 3 uses
  %i.gb = icmp ugt i64 %.val5.i.i.i.i, %i.ga
  br i1 %i.gb, label %bb.aw, label %.loopexit.i.i

bb.aw:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i, i64 %i.ga ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.val.1.i.i.i.i.i = load i32, ptr %i.gd, align 4, !noalias !779, !noundef !5
  %i.ge = icmp eq i32 %.val.1.i.i.i.i.i, %.sroa.6.12.extract.trunc.i
  br i1 %i.ge, label %.loopexit8.i.i, label %.loopexit.i.i.i.i.i

bb.ax:                                            ; preds = %bb.ay, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i
  %.pn.i.i.i.i.i = phi ptr [ %i.fw, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i ], [ %i.gh, %bb.ay ]
  %.sroa.04.0.i.i.i.i.i = load i32, ptr %.pn.i.i.i.i.i, align 4, !noalias !778, !noundef !5
  %i.gf = zext i32 %.sroa.04.0.i.i.i.i.i to i64   ; 3 uses
  %i.gg = icmp ugt i64 %.val5.i.i.i.i, %i.gf
  br i1 %i.gg, label %bb.ay, label %.loopexit.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i, i64 %i.gf ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %.val.i.i.i.i.i = load i32, ptr %i.gi, align 4, !noalias !779, !noundef !5
  %i.gj = icmp eq i32 %.val.i.i.i.i.i, %.sroa.6.12.extract.trunc.i
  br i1 %i.gj, label %.loopexit8.i.i, label %bb.ax

.loopexit8.i.i:                                   ; preds = %bb.ay, %bb.aw
  %.pre-phi.i.i = phi i64 [ %i.ga, %bb.aw ], [ %i.gf, %bb.ay ]
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i, i64 %.pre-phi.i.i ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load i8, ptr %i.gl, align 8, !range !18, !noalias !780, !noundef !5
  %.not.i.i44.i = icmp eq i8 %i.gm, 2
  br i1 %.not.i.i44.i, label %select.unfold.i126.invoke.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.i.i.i, %bb.av, %bb.au
  invoke fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8add_edgeB1k_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.g, i32 noundef %.sroa.6.8.extract.trunc.i, i32 noundef %.sroa.6.12.extract.trunc.i, i64 noundef %i.ft, i1 noundef zeroext false, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
          to label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i: ; preds = %.loopexit8.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !noalias !780, !noundef !5
  %i.gp = add i64 %i.go, %i.ft
  store i64 %i.gp, ptr %i.gn, align 8, !noalias !780
  br label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i.backedge

.preheader.i:                                     ; preds = %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit130.i, %.preheader163.i
  %.not199.i = icmp eq i64 %i.ek, 0
  br i1 %.not199.i, label %._crit_edge.i, label %.lr.ph198.i

.lr.ph198.i:                                      ; preds = %.preheader.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.gv = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 3 uses
  %.sroa.5.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
end_hunk_0
begin_hunk_1_@_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring15rbmg_edge_color:bb.a
.loopexit.i.i.i.i.i80:                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77, %bb.de
  %.pn.1.i.i.i.i.i81 = phi ptr [ %i.mi, %bb.de ], [ %i.mc, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77 ]
  %.sroa.04.0.in.1.i.i.i.i.i82 = getelementptr inbounds nuw i8, ptr %.pn.1.i.i.i.i.i81, i64 4
  %.sroa.04.0.1.i.i.i.i.i83 = load i32, ptr %.sroa.04.0.in.1.i.i.i.i.i82, align 4, !noalias !812, !noundef !5 ; 2 uses
  %i.mg = zext i32 %.sroa.04.0.1.i.i.i.i.i83 to i64 ; 3 uses
  %i.mh = icmp ugt i64 %.val5.i.i.i.i74, %i.mg
  br i1 %i.mh, label %bb.de, label %select.unfold.i.i.invoke

bb.de:                                            ; preds = %.loopexit.i.i.i.i.i80
  %i.mi = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %i.mg ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %.val.1.i.i.i.i.i84 = load i32, ptr %i.mj, align 4, !noalias !816, !noundef !5
  %i.mk = icmp eq i32 %.val.1.i.i.i.i.i84, %i.lz
  br i1 %i.mk, label %.loopexit10.i.i, label %.loopexit.i.i.i.i.i80

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77: ; preds = %bb.dd, %bb.df
  %.pn.i.i.i.i.i78 = phi ptr [ %i.mn, %bb.df ], [ %i.mc, %bb.dd ]
  %.sroa.04.0.i.i.i.i.i79 = load i32, ptr %.pn.i.i.i.i.i78, align 4, !noalias !812, !noundef !5 ; 2 uses
  %i.ml = zext i32 %.sroa.04.0.i.i.i.i.i79 to i64 ; 3 uses
  %i.mm = icmp ugt i64 %.val5.i.i.i.i74, %i.ml
  br i1 %i.mm, label %bb.df, label %.loopexit.i.i.i.i.i80

bb.df:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77
  %i.mn = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %i.ml ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  %.val.i.i.i.i.i90 = load i32, ptr %i.mo, align 4, !noalias !816, !noundef !5
  %i.mp = icmp eq i32 %.val.i.i.i.i.i90, %i.lz
  br i1 %i.mp, label %.loopexit10.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i77

.loopexit10.i.i:                                  ; preds = %bb.df, %bb.de
  %.pre-phi.i.i85 = phi i64 [ %i.mg, %bb.de ], [ %i.ml, %bb.df ]
  %.sroa.0.0.i10.i.i.i = phi i32 [ %.sroa.04.0.1.i.i.i.i.i83, %bb.de ], [ %.sroa.04.0.i.i.i.i.i79, %bb.df ] ; 6 uses
  %i.mq = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %.pre-phi.i.i85 ; 7 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24 ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 8, !range !18, !noalias !817, !noundef !5
  %.not.i.i.i86 = icmp eq i8 %i.ms, 2
  br i1 %.not.i.i.i86, label %select.unfold.i.i.invoke, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87: ; preds = %.loopexit10.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !noalias !817, !noundef !5
  %i.mv = add i64 %i.mu, -1                       ; 2 uses
  store i64 %i.mv, ptr %i.mt, align 8, !noalias !817
  %i.mw = icmp eq i64 %i.mv, 0
  br i1 %i.mw, label %bb.dg, label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i

select.unfold.i.i.invoke:                         ; preds = %.loopexit10.i.i, %bb.dc, %bb.dd, %.loopexit.i.i.i.i.i80
  %i.mx = phi ptr [ @12, %.loopexit.i.i.i.i.i80 ], [ @12, %bb.dd ], [ @12, %bb.dc ], [ @13, %.loopexit10.i.i ]
  store i32 %.sroa.0.0.i10.i.i.i364, ptr %i.ls, align 4
  store i64 %i.lu, ptr %i.lt, align 8
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mx) #27
          to label %select.unfold.i.i.cont unwind label %bb.dr, !noalias !817

select.unfold.i.i.cont:                           ; preds = %select.unfold.i.i.invoke
  unreachable

bb.dg:                                            ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.mq, align 8, !noalias !818 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 2 uses
  %.sroa.02.0.copyload.i.i.i89 = load i64, ptr %i.my, align 8, !noalias !818 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i64 %.sroa.02.0.copyload.i.i.i89, 32 ; 2 uses
  %.sroa.020.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.04.0.copyload.i.i.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i64 %.sroa.04.0.copyload.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i to i32 ; 2 uses
  %i.mz = and i64 %.sroa.02.0.copyload.i.i.i89, 4294967295 ; 2 uses
  %i.na = icmp ugt i64 %.val3.i.i.i.i71, %i.mz
  br i1 %i.na, label %bb.dh, label %.loopexit.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i.i72, i64 %i.mz ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !noalias !819, !noundef !5 ; 2 uses
  %i.nd = icmp eq i32 %i.nc, %.sroa.0.0.i10.i.i.i
  br i1 %i.nd, label %bb.do, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.dh, %bb.di
  %.sroa.8.0.i.i.i.i = phi i32 [ %i.nh, %bb.di ], [ %i.nc, %bb.dh ]
  %i.ne = zext i32 %.sroa.8.0.i.i.i.i to i64      ; 2 uses
  %i.nf = icmp ugt i64 %.val5.i.i.i.i74, %i.ne
  br i1 %i.nf, label %bb.di, label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i

bb.di:                                            ; preds = %.preheader.i.i.i.i
  %i.ng = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i73, i64 %i.ne ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !noalias !820, !noundef !5 ; 2 uses
  %i.ni = icmp eq i32 %i.nh, %.sroa.0.0.i10.i.i.i
  br i1 %i.ni, label %bb.dj, label %.preheader.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  store i32 %.sroa.020.0.extract.trunc.i.i.i.i, ptr %i.ng, align 4, !noalias !819
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i

_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i: ; preds = %.preheader.i.i.i.i, %bb.do, %bb.dj
  %i.nj = icmp ugt i64 %.val3.i.i.i.i71, %.sroa.2.0.extract.shift.i.i.i.i
  br i1 %i.nj, label %bb.dk, label %.loopexit.i.i.i

bb.dk:                                            ; preds = %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i
  %i.nk = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i.i72, i64 %.sroa.2.0.extract.shift.i.i.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !noalias !819, !noundef !5 ; 2 uses
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
  %i.ns = load i32, ptr %i.nr, align 4, !noalias !820, !noundef !5 ; 2 uses
  %i.nt = icmp eq i32 %i.ns, %.sroa.0.0.i10.i.i.i
  br i1 %i.nt, label %bb.dm, label %.preheader.1.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  store i32 %.sroa.3.0.extract.trunc.i.i.i.i, ptr %i.nu, align 4, !noalias !819
  br label %.loopexit.i.i.i

bb.dn:                                            ; preds = %bb.dk
  store i32 %.sroa.3.0.extract.trunc.i.i.i.i, ptr %i.nl, align 4, !noalias !819
  br label %.loopexit.i.i.i

bb.do:                                            ; preds = %bb.dh
  store i32 %.sroa.020.0.extract.trunc.i.i.i.i, ptr %i.nb, align 4, !noalias !819
  br label %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader.1.i.i.i.i, %bb.dn, %bb.dm, %_RNvMsp_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_14EdgesWalkerMutINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEE4nextB1I_.exit.thread.i.i.i.i, %bb.dg
  store i32 %.sroa.0.0.i10.i.i11.i, ptr %i.mq, align 8, !noalias !818
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i32 -1, ptr %i.nv, align 4, !noalias !818
  store i32 -1, ptr %i.my, align 8, !noalias !818
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mq, i64 12
  store i32 -1, ptr %i.nw, align 4, !noalias !818
  %i.nx = add i64 %i.lv, -1                       ; 2 uses
  store i8 2, ptr %i.mr, align 8, !noalias !818
  br label %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i

_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i: ; preds = %.loopexit.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87
  %i.ny = phi i64 [ %i.lu, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %i.nx, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.i10.i.i.i363 = phi i32 [ %.sroa.0.0.i10.i.i.i364, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %.sroa.0.0.i10.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.nz = phi i64 [ %i.lv, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %i.nx, %.loopexit.i.i.i ]
  %.sroa.0.0.i10.i.i10.i = phi i32 [ %.sroa.0.0.i10.i.i11.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i87 ], [ %.sroa.0.0.i10.i.i.i, %.loopexit.i.i.i ]
  %i.oa = icmp eq ptr %i.lw, %i.lo
  br i1 %i.oa, label %.loopexit312, label %bb.dc

.loopexit312:                                     ; preds = %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph11remove_edge.exit.i
  store i32 %.sroa.0.0.i10.i.i.i363, ptr %i.ls, align 4
  store i64 %i.ny, ptr %i.lt, align 8
  br label %bb.dp

bb.dp:                                            ; preds = %.loopexit312, %bb.db
  %i.ob = add nsw i64 %i.x, -1
  store i64 %i.ob, ptr %i.cg, align 8, !alias.scope !811
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
  %4 = tail call i64 @llvm.usub.sat.i64(i64 %i.oi, i64 1) ; 2 uses
  %5 = icmp sgt i64 %4, -1
  br i1 %5, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.oj = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %4, i1 false)
  %i.ok = sub nuw nsw i64 64, %i.oj
  %i.ol = shl nuw i64 1, %i.ok
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dw, %bb.dx
  %.sroa.017.0 = phi i64 [ %i.ol, %bb.dx ], [ 0, %bb.dw ]
  %i.om = sub i64 %.sroa.017.0, %i.oi             ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.oq = load i64, ptr %i.op, align 8, !noundef !5 ; 3 uses
  %i.or = getelementptr inbounds nuw [24 x i8], ptr %i.oo, i64 %i.oq ; 3 uses
  %i.os = icmp eq i64 %i.om, 0
  br i1 %i.os, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dy
  %i.ot = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.l, i64 68 ; 2 uses
  %.sroa.01.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.oz = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph, %.loopexit309
  %i.pb = phi i64 [ %i.oi, %.lr.ph ], [ %i.se, %.loopexit309 ]
  %.sroa.0.0373 = phi ptr [ %i.oo, %.lr.ph ], [ %i.sf, %.loopexit309 ] ; 4 uses
  %.sroa.5.0372 = phi i64 [ %i.om, %.lr.ph ], [ %i.pc, %.loopexit309 ]
  %i.pc = add i64 %.sroa.5.0372, -1               ; 2 uses
  %i.pd = icmp eq ptr %.sroa.0.0373, %i.or
  br i1 %i.pd, label %._crit_edge, label %bb.ea

._crit_edge:                                      ; preds = %.loopexit309, %bb.dz, %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring33rbmg_edge_color_when_power_of_two(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.l)
          to label %bb.ew unwind label %.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dz
  %i.pe = getelementptr i8, ptr %.sroa.0.0373, i64 8
  %.sroa.0.0.val = load ptr, ptr %i.pe, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.pf = getelementptr i8, ptr %.sroa.0.0373, i64 16
  %.sroa.0.0.val46 = load i64, ptr %i.pf, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %.idx.i95 = shl nuw nsw i64 %.sroa.0.0.val46, 3
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 %.idx.i95
  %i.ph = icmp eq i64 %.sroa.0.0.val46, 0
  br i1 %i.ph, label %.loopexit309, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %bb.ea, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i99
  %.sroa.0.04.i = phi ptr [ %i.pi, %_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge.exit.i99 ], [ %.sroa.0.0.val, %bb.ea ] ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 8 ; 2 uses
  %i.pj = load i32, ptr %.sroa.0.04.i, align 4, !noalias !821, !noundef !5 ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 4
  %i.pl = load i32, ptr %i.pk, align 4, !noalias !821, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %.val3.i.i.i.i97 = load i64, ptr %i.ot, align 8, !alias.scope !825, !noundef !5 ; 2 uses
  %i.pm = zext i32 %i.pj to i64                   ; 6 uses
  %i.pn = icmp ugt i64 %.val3.i.i.i.i97, %i.pm
  br i1 %i.pn, label %bb.eb, label %.loopexit.i.i98

bb.eb:                                            ; preds = %.lr.ph.i96
  %.val.i.i.i.i101 = load ptr, ptr %i.ou, align 8, !alias.scope !825, !nonnull !5, !noundef !5
  %i.po = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i.i.i101, i64 %i.pm ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pq = load i8, ptr %i.pp, align 4, !range !15, !noalias !825, !noundef !5
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i102, label %.loopexit.i.i98

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i102: ; preds = %bb.eb
  %.val4.i.i.i.i103 = load ptr, ptr %i.ov, align 8, !alias.scope !825, !nonnull !5, !noundef !5 ; 3 uses
  %.val5.i.i.i.i104 = load i64, ptr %i.ow, align 8, !alias.scope !825 ; 2 uses
  br label %bb.ed

.loopexit.i.i.i.i.i107:                           ; preds = %bb.ed, %bb.ec
  %.pn.1.i.i.i.i.i108 = phi ptr [ %i.pu, %bb.ec ], [ %i.po, %bb.ed ]
  %.sroa.04.0.in.1.i.i.i.i.i109 = getelementptr inbounds nuw i8, ptr %.pn.1.i.i.i.i.i108, i64 4
  %.sroa.04.0.1.i.i.i.i.i110 = load i32, ptr %.sroa.04.0.in.1.i.i.i.i.i109, align 4, !noalias !825, !noundef !5
  %i.ps = zext i32 %.sroa.04.0.1.i.i.i.i.i110 to i64 ; 3 uses
  %i.pt = icmp ugt i64 %.val5.i.i.i.i104, %i.ps
  br i1 %i.pt, label %bb.ec, label %.loopexit.i.i98

bb.ec:                                            ; preds = %.loopexit.i.i.i.i.i107
  %i.pu = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i103, i64 %i.ps ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %.val.1.i.i.i.i.i111 = load i32, ptr %i.pv, align 4, !noalias !826, !noundef !5
  %i.pw = icmp eq i32 %.val.1.i.i.i.i.i111, %i.pl
  br i1 %i.pw, label %.loopexit8.i.i112, label %.loopexit.i.i.i.i.i107

bb.ed:                                            ; preds = %bb.ee, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i102
  %.pn.i.i.i.i.i105 = phi ptr [ %i.po, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i.i.i102 ], [ %i.pz, %bb.ee ]
  %.sroa.04.0.i.i.i.i.i106 = load i32, ptr %.pn.i.i.i.i.i105, align 4, !noalias !825, !noundef !5
  %i.px = zext i32 %.sroa.04.0.i.i.i.i.i106 to i64 ; 3 uses
  %i.py = icmp ugt i64 %.val5.i.i.i.i104, %i.px
  br i1 %i.py, label %bb.ee, label %.loopexit.i.i.i.i.i107

bb.ee:                                            ; preds = %bb.ed
  %i.pz = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i103, i64 %i.px ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 12
  %.val.i.i.i.i.i117 = load i32, ptr %i.qa, align 4, !noalias !826, !noundef !5
  %i.qb = icmp eq i32 %.val.i.i.i.i.i117, %i.pl
  br i1 %i.qb, label %.loopexit8.i.i112, label %bb.ed

.loopexit8.i.i112:                                ; preds = %bb.ee, %bb.ec
  %.pre-phi.i.i113 = phi i64 [ %i.ps, %bb.ec ], [ %i.px, %bb.ee ]
  %i.qc = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i103, i64 %.pre-phi.i.i113 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qe = load i8, ptr %i.qd, align 8, !range !18, !noalias !827, !noundef !5
  %.not.i.i.i114 = icmp eq i8 %i.qe, 2
  br i1 %.not.i.i.i114, label %select.unfold.i.i116, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit.i.i115

.loopexit.i.i98:                                  ; preds = %.loopexit.i.i.i.i.i107, %bb.eb, %.lr.ph.i96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !830
  store i8 -1, ptr %i.ox, align 8, !noalias !831
  %.val20.i.i = load i32, ptr %i.oy, align 4, !alias.scope !832, !noundef !5 ; 3 uses
  %i.qf = icmp eq i32 %.val20.i.i, -1
  br i1 %i.qf, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.loopexit.i.i98
  %i.qg = load i64, ptr %i.ow, align 8, !alias.scope !832, !noundef !5 ; 3 uses
  %i.qh = icmp ult i64 %i.qg, 288230376151711744
  tail call void @llvm.assume(i1 %i.qh)
  %i.qi = trunc i64 %i.qg to i32                  ; 2 uses
  %i.qj = icmp eq i32 %i.qi, -1
  br i1 %i.qj, label %bb.eu, label %bb.eh

bb.eg:                                            ; preds = %.loopexit.i.i98
  %i.qk = zext i32 %.val20.i.i to i64             ; 3 uses
  %i.ql = load i64, ptr %i.ow, align 8, !alias.scope !832, !noundef !5 ; 3 uses
  %i.qm = icmp ugt i64 %i.ql, %i.qk
  br i1 %i.qm, label %bb.ek, label %bb.el

bb.eh:                                            ; preds = %bb.ef
  store i64 -1, ptr %i.a, align 8, !noalias !831
  store i32 %i.pj, ptr %.sroa.01.sroa.4.0..sroa_idx.i.i, align 8, !noalias !831
  store i32 %i.pl, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i, align 4, !noalias !831
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !831
  store i8 0, ptr %i.ox, align 8, !noalias !831
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ek, %bb.eh
  %i.qn = phi i64 [ %i.ql, %bb.ek ], [ %i.qg, %bb.eh ] ; 3 uses
  %i.qo = phi i8 [ -1, %bb.ek ], [ 0, %bb.eh ]
  %.sroa.0.0.i.i198 = phi ptr [ %i.qw, %bb.ek ], [ %i.a, %bb.eh ] ; 3 uses
  %i.qp = phi i32 [ %.val20.i.i, %bb.ek ], [ %i.qi, %bb.eh ] ; 4 uses
  %i.qq = load ptr, ptr %i.ou, align 8, !alias.scope !832, !nonnull !5, !noundef !5 ; 2 uses
  %i.qr = zext i32 %i.pl to i64                   ; 3 uses
  %i.qs = tail call i64 @llvm.umax.i64(i64 %i.pm, i64 %i.qr) ; 2 uses
  %.not.i.i.i199 = icmp samesign ult i64 %i.qs, %.val3.i.i.i.i97
  br i1 %.not.i.i.i199, label %bb.ej, label %bb.ev

bb.ej:                                            ; preds = %bb.ei
  %i.qt = icmp eq i32 %i.pj, %i.pl
  %i.qu = getelementptr inbounds nuw [12 x i8], ptr %i.qq, i64 %i.pm ; 7 uses
  br i1 %i.qt, label %bb.en, label %bb.em

bb.ek:                                            ; preds = %bb.eg
  %i.qv = load ptr, ptr %i.ov, align 8, !alias.scope !832, !nonnull !5, !noundef !5
  %i.qw = getelementptr inbounds nuw [32 x i8], ptr %i.qv, i64 %i.qk ; 6 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  store i64 1, ptr %i.qx, align 8, !noalias !831
  store i8 0, ptr %i.qy, align 8, !noalias !831
  %i.qz = load i32, ptr %i.qw, align 8, !noalias !831, !noundef !5
  store i32 %i.qz, ptr %i.oy, align 4, !alias.scope !832
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store i32 %i.pj, ptr %i.ra, align 8, !noalias !831
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 12
  store i32 %i.pl, ptr %i.rb, align 4, !noalias !831
  br label %bb.ei

bb.el:                                            ; preds = %bb.eg
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.qk, i64 noundef %i.ql, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #27
          to label %.noexc200 unwind label %.loopexit.split-lp, !noalias !831

.noexc200:                                        ; preds = %bb.el
  unreachable

bb.em:                                            ; preds = %bb.ej
  %i.rc = getelementptr inbounds nuw [12 x i8], ptr %i.qq, i64 %i.qr ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.re = load i8, ptr %i.rd, align 4, !range !15, !noalias !831, !noundef !5
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %bb.eo, label %bb.ev

bb.en:                                            ; preds = %bb.ej
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.rh = load i8, ptr %i.rg, align 4, !range !15, !noalias !831, !noundef !5
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %bb.er, label %bb.ev

bb.eo:                                            ; preds = %bb.em
end_hunk_1
