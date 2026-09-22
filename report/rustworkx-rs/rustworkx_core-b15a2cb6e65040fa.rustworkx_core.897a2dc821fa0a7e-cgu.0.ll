Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx_core-b15a2cb6e65040fa.rustworkx_core.897a2dc821fa0a7e-cgu.0?download=true
inline.NumInlined: 863
inline.NumDeleted: 438
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph19clone_without_edges:bb.a

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body48 ] ; 3 uses
  %i.bk = shl i64 %index49, 2
  %next.gep50 = getelementptr i8, ptr %.val5, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load51 = load <4 x i32>, ptr %next.gep50, align 4, !alias.scope !445, !noalias !446
  %wide.load52 = load <4 x i32>, ptr %i.bl, align 4, !alias.scope !445, !noalias !446
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index49 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> %wide.load51, ptr %i.bm, align 4, !noalias !447
  store <4 x i32> %wide.load52, ptr %i.bn, align 4, !noalias !447
  %index.next53 = add nuw i64 %index49, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.bo, label %.lr.ph.i.i10.preheader, label %vector.body48, !llvm.loop !435

.lr.ph.i.i10.preheader:                           ; preds = %vector.body48, %.lr.ph.preheader.i.i9
  %.sroa.016.034.i.i11.ph = phi ptr [ %.val5, %.lr.ph.preheader.i.i9 ], [ %i.bi, %vector.body48 ]
  %.sroa.7.033.i.i12.ph = phi i64 [ 0, %.lr.ph.preheader.i.i9 ], [ %n.vec47, %vector.body48 ]
  %.sroa.10.032.i.i13.ph = phi i64 [ %.val6, %.lr.ph.preheader.i.i9 ], [ %i.bj, %vector.body48 ]
  br label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i.i10.preheader, %bb.j
  %.sroa.016.034.i.i11 = phi ptr [ %i.bs, %bb.j ], [ %.sroa.016.034.i.i11.ph, %.lr.ph.i.i10.preheader ] ; 3 uses
  %.sroa.7.033.i.i12 = phi i64 [ %i.br, %bb.j ], [ %.sroa.7.033.i.i12.ph, %.lr.ph.i.i10.preheader ] ; 2 uses
  %.sroa.10.032.i.i13 = phi i64 [ %i.bq, %bb.j ], [ %.sroa.10.032.i.i13.ph, %.lr.ph.i.i10.preheader ]
  %i.bp = icmp eq ptr %.sroa.016.034.i.i11, %i.az
  br i1 %i.bp, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core.exit18, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i10
  %i.bq = add nsw i64 %.sroa.10.032.i.i13, -1     ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.7.033.i.i12, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.016.034.i.i11, i64 4
  %.val.i.i14 = load i32, ptr %.sroa.016.034.i.i11, align 4, !alias.scope !445, !noalias !446, !noundef !5
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.7.033.i.i12
  store i32 %.val.i.i14, ptr %i.bt, align 4, !noalias !447
  %i.bu = icmp eq i64 %i.bq, 0
  br i1 %i.bu, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core.exit18, label %.lr.ph.i.i10, !llvm.loop !436

bb.k:                                             ; preds = %bb.i
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.s, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 9) 4) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core.exit18: ; preds = %bb.j, %.lr.ph.i.i10, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.bw = phi ptr [ inttoptr (i64 4 to ptr), %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core.exit ], [ %i.ax, %.lr.ph.i.i10 ], [ %i.ax, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.val8, ptr %i.by, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.val8, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.val6, ptr %i.bz, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.val6, ptr %.sroa.520.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 128)) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i8 0, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx4, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 -1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 -1, ptr %.sroa.9.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.a, align 8, !alias.scope !456, !noundef !5
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = icmp ugt i64 %.val3.i.i, %i.b
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !456, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i, i64 %i.b ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 4, !range !15, !noalias !456, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i, label %.loopexit

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i.i = load ptr, ptr %i.i, align 8, !alias.scope !456, !nonnull !5, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i.i = load i64, ptr %i.j, align 8, !alias.scope !456 ; 2 uses
  br label %bb.d

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c
  %.pn.1.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.d ]
  %.sroa.04.0.in.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.1.i.i.i, i64 4
  %.sroa.04.0.1.i.i.i = load i32, ptr %.sroa.04.0.in.1.i.i.i, align 4, !noalias !456, !noundef !5
  %i.k = zext i32 %.sroa.04.0.1.i.i.i to i64      ; 3 uses
  %i.l = icmp ugt i64 %.val5.i.i, %i.k
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.loopexit.i.i.i
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.1.i.i.i = load i32, ptr %i.n, align 4, !noalias !457, !noundef !5
  %i.o = icmp eq i32 %.val.1.i.i.i, %2
  br i1 %i.o, label %.loopexit8, label %.loopexit.i.i.i

bb.d:                                             ; preds = %bb.e, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i
  %.pn.i.i.i = phi ptr [ %i.e, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i ], [ %i.r, %bb.e ]
  %.sroa.04.0.i.i.i = load i32, ptr %.pn.i.i.i, align 4, !noalias !456, !noundef !5
  %i.p = zext i32 %.sroa.04.0.i.i.i to i64        ; 3 uses
  %i.q = icmp ugt i64 %.val5.i.i, %i.p
  br i1 %i.q, label %bb.e, label %.loopexit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.val.i.i.i = load i32, ptr %i.s, align 4, !noalias !457, !noundef !5
  %i.t = icmp eq i32 %.val.i.i.i, %2
  br i1 %i.t, label %.loopexit8, label %bb.d

.loopexit8:                                       ; preds = %bb.e, %bb.c
  %.pre-phi = phi i64 [ %i.k, %bb.c ], [ %i.p, %bb.e ]
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i, i64 %.pre-phi ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i8, ptr %i.v, align 8, !range !18, !noundef !5
  %.not.i = icmp eq i8 %i.w, 2
  br i1 %.not.i, label %select.unfold, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit

.loopexit:                                        ; preds = %.loopexit.i.i.i, %bb.a, %bb.b
  tail call fastcc void @_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8add_edgeB1k_(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit, %.loopexit
  ret void

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE15edge_weight_mutB1k_.exit: ; preds = %.loopexit8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  %i.z = add i64 %i.y, %3
  store i64 %i.z, ptr %i.x, align 8
  br label %bb.f

select.unfold:                                    ; preds = %.loopexit8
  tail call void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load i64, ptr %i.c, align 8, !alias.scope !501, !noalias !502, !noundef !5
  %i.d = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !503, !noundef !5
  %i.e = zext i32 %1 to i64
  %i.f = xor i64 %.val, %i.e
  %i.g = zext i64 %i.f to i128
  %i.h = zext i64 %i.d to i128
  %i.i = mul nuw i128 %i.g, %i.h                  ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = xor i128 %i.j, %i.i
  %i.l = trunc i128 %i.k to i64                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !504, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !504, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !505, !noalias !506, !noundef !5
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.u = tail call { i64, i64 } @_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 1, ptr noundef nonnull readonly align 8 %i.n, i64 noundef %i.p, i1 noundef zeroext true) #31, !noalias !506 ; 0 uses
  br label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i

_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !507, !noalias !506, !nonnull !5, !noundef !5 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !507, !noalias !506, !noundef !5 ; 4 uses
  %i.w = lshr i64 %i.l, 57
  %i.x = trunc nuw nsw i64 %i.w to i8             ; 3 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.l, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i ], [ %i.bb, %bb.g ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i ], [ %.sroa.4.124.i.i.i.i, %bb.g ]
  %.sroa.01.0.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i ], [ %.sroa.01.126.i.i.i.i, %bb.g ]
  %i.aa = phi i64 [ 0, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i ], [ %i.ba, %bb.g ]
  %.sroa.0.021.i.i.i.i = and i64 %.pn.i.i.i.i, %.val5.i.i.i ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.021.i.i.i.i
  %.sroa.0.0.copyload.i31.i.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !508 ; 3 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, %i.z
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not36.i.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not36.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.e
  %.sroa.05.037.i.i.i.i = phi i16 [ %i.aq, %bb.e ], [ %i.ad, %bb.c ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.037.i.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.0.021.i.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %.val5.i.i.i
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %.val.i.i.i, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !509, !noundef !5 ; 5 uses
  %i.al = icmp ult i64 %.val.i.i.i.i.i, %i.p
  br i1 %i.al, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0CsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i.i, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27, !noalias !510
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0CsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val2.i.i.i.i.i.i = load i32, ptr %i.an, align 4, !noalias !510, !noundef !5
  %i.ao = icmp eq i32 %1, %.val2.i.i.i.i.i.i
  br i1 %i.ao, label %bb.r, label %bb.e, !prof !9

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.c
  %.not11.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i, 1
  br i1 %.not11.i.i.i.i, label %.thread.i.i.i.i, label %bb.f, !prof !6

bb.e:                                             ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0CsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i
  %i.ap = add i16 %.sroa.05.037.i.i.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.05.037.i.i.i.i    ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %.thread28.i.i.i.i, !prof !6

.thread28.i.i.i.i:                                ; preds = %bb.f
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.021.i.i.i.i, %i.au
  %i.aw = and i64 %i.av, %.val5.i.i.i
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread28.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.4.125.i.i.i.i = phi i64 [ %i.aw, %.thread28.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %.thread.i.i.i.i, %bb.f
  %.sroa.01.126.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.f ]
  %.sroa.4.124.i.i.i.i = phi i64 [ %.sroa.4.125.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.f ]
  %i.ba = add i64 %i.aa, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.021.i.i.i.i
  br label %bb.c

bb.h:                                             ; preds = %.thread.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.125.i.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !506, !noundef !5 ; 2 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.i, label %bb.j, !prof !6

bb.i:                                             ; preds = %bb.h
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !506
  %i.bf = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not.i22.i.i.i.i = icmp ne i16 %i.bg, 0
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i22.i.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.bi
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !511
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bj = phi i8 [ %.pre.i, %bb.i ], [ %i.bd, %bb.h ]
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.bi, %bb.i ], [ %.sroa.4.125.i.i.i.i, %bb.h ] ; 3 uses
  %i.bk = load i64, ptr %i.o, align 8, !alias.scope !504, !noundef !5 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 576460752303423488
  tail call void @llvm.assume(i1 %i.bl)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i
  %i.bn = and i8 %i.bj, 1
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.bq = and i64 %i.bp, %.val5.i.i.i
  store i8 %i.x, ptr %i.bm, align 1, !noalias !511
  %i.br = getelementptr i8, ptr %.val.i.i.i, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.x, ptr %i.bs, align 1, !noalias !511
  %i.bt = load <2 x i64>, ptr %i.r, align 8, !alias.scope !512
  %i.bu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bo, i64 0
  %i.bv = sub <2 x i64> %i.bt, %i.bu
  store <2 x i64> %i.bv, ptr %i.r, align 8, !alias.scope !512
  %i.bw = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.bx = getelementptr inbounds [8 x i8], ptr %.val.i.i.i, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  store i64 %i.bk, ptr %i.by, align 8, !noalias !511
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.bz = load i64, ptr %i.o, align 8, !alias.scope !514, !noundef !5 ; 10 uses
  %i.ca = icmp ult i64 %i.bz, 576460752303423488
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %0, align 8, !range !11, !alias.scope !514, !noundef !5
  %i.cc = icmp eq i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.k, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !516, !noundef !5
  %i.cf = load i64, ptr %i.r, align 8, !alias.scope !516, !noundef !5
  %i.cg = add i64 %i.cf, %i.ce                    ; 2 uses
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 576460752303423487) ; 4 uses
  %i.ci = sub nsw i64 %i.ch, %i.bz
  %i.cj = icmp ugt i64 %i.ci, 1
  br i1 %i.cj, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.p, %bb.n, %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.ck = add nuw nsw i64 %i.bz, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !520
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !520
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.bz, ptr %.val11.i.i.i.i.i.i, i64 noundef %i.ck, i64 noundef 8, i64 noundef 16), !noalias !521
  %i.cl = load i64, ptr %i.b, align 8, !range !13, !noalias !520, !noundef !5
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.cm, label %bb.m, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.thread4.i.i

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %i.cn, align 8, !range !14, !noalias !520, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !520
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %i.co, i64 %i.cq) #30, !noalias !522
  unreachable

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.thread4.i.i: ; preds = %bb.l
  %i.cr = load ptr, ptr %i.cn, align 8, !noalias !520, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !520
  store ptr %i.cr, ptr %i.m, align 8, !alias.scope !520
  store i64 %i.ck, ptr %0, align 8, !alias.scope !516
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core.exit.i

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.cs = icmp ult i64 %i.cg, %i.bz
  br i1 %i.cs, label %bb.l, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !525
  %.val11.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !525
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.bz, ptr %.val11.i.i.i.i.i, i64 noundef %i.ch, i64 noundef 8, i64 noundef 16), !noalias !526
  %i.ct = load i64, ptr %i.a, align 8, !range !13, !noalias !525, !noundef !5
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.p, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !525
  br label %bb.l

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !525, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !525
  store ptr %i.cw, ptr %i.m, align 8, !alias.scope !525
  store i64 %i.ch, ptr %0, align 8, !alias.scope !516
  %2 = icmp eq i64 %i.bz, %i.ch
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  br i1 %2, label %bb.q, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core.exit.i

bb.q:                                             ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  tail call void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #31
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.q, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.thread4.i.i, %bb.j
  %3 = load ptr, ptr %i.m, align 8, !alias.scope !528, !nonnull !5, !noundef !5
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.bz ; 2 uses
  store i64 %i.l, ptr %i.cx, align 8, !noalias !529
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 %1, ptr %i.cy, align 8, !noalias !529
  %i.cz = add nuw nsw i64 %i.bz, 1
  store i64 %i.cz, ptr %i.o, align 8, !alias.scope !528
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCsbNMRYq9Xj9a_14rustworkx_core.exit

bb.r:                                             ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0CsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i
  %i.da = load i64, ptr %i.o, align 8, !alias.scope !504, !noundef !5 ; 2 uses
  %i.db = icmp ult i64 %.val.i.i.i.i.i, %i.da
  br i1 %i.db, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i.i, i64 noundef %i.da, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #27
  unreachable

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core.exit.i, %bb.r
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE6insertCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !alias.scope !546, !noalias !547, !noundef !5
  %i.b = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !548, !noundef !5
  %i.c = zext i32 %1 to i64
  %i.d = xor i64 %.val, %i.c
  %i.e = zext i64 %i.d to i128
  %i.f = zext i64 %i.b to i128
  %i.g = mul nuw i128 %i.f, %i.e                  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !550, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.n = tail call { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noundef nonnull readonly align 8 %i.a, i1 noundef zeroext true) #31 ; 0 uses
  br label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !549, !nonnull !5, !noundef !5 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.o, align 8, !alias.scope !549, !noundef !5 ; 4 uses
  %i.p = lshr i64 %i.j, 57
  %i.q = trunc nuw nsw i64 %i.p to i8             ; 3 uses
  %i.r = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i
  %.pn.i.i = phi i64 [ %i.j, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.ar, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %.sroa.01.122.i.i, %bb.f ]
  %i.t = phi i64 [ 0, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.aq, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !551 ; 3 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.s
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.w, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.05.029.i.i = phi i16 [ %i.ag, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.029.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.0.017.i.i, %i.y
  %i.aa = and i64 %i.z, %.val5.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %.val2.i.i = load i32, ptr %i.ad, align 4, !noalias !552, !noundef !5
  %i.ae = icmp eq i32 %1, %.val2.i.i
  br i1 %i.ae, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2b_11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit, label %bb.d, !prof !9

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not11.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not11.i.i, label %.thread.i.i, label %bb.e, !prof !6

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.af = add i16 %.sroa.05.029.i.i, -1
  %i.ag = and i16 %i.af, %.sroa.05.029.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !6

.thread24.i.i:                                    ; preds = %bb.e
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ai, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.0.017.i.i, %i.ak
  %i.am = and i64 %i.al, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.am, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.aq = add i64 %i.t, 16                        ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.at = load i8, ptr %i.as, align 1, !noalias !549, !noundef !5 ; 2 uses
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !549
  %i.av = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i22.i.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i22.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ay
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !553
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.az = phi i8 [ %.pre, %bb.h ], [ %i.at, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.bb = and i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = add i64 %.sroa.3.0.i.ph.i, -16
  %i.be = and i64 %i.bd, %.val5.i
  store i8 %i.q, ptr %i.ba, align 1, !noalias !553
  %i.bf = getelementptr i8, ptr %.val.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store i8 %i.q, ptr %i.bg, align 1, !noalias !553
  %i.bh = load <2 x i64>, ptr %i.k, align 8, !alias.scope !553
  %i.bi = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bc, i64 0
  %i.bj = sub <2 x i64> %i.bh, %i.bi
  store <2 x i64> %i.bj, ptr %i.k, align 8, !alias.scope !553
  %i.bk = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -4
  store i32 %1, ptr %i.bm, align 4, !noalias !553
  br label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2b_11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2b_11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %.lr.ph.i.i, %bb.i
  %.sroa.0.0 = phi i1 [ false, %bb.i ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjjE6insertCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !alias.scope !570, !noalias !571, !noundef !5
  %i.b = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !572, !noundef !5
  %i.c = xor i64 %.val, %1
  %i.d = zext i64 %i.c to i128
  %i.e = zext i64 %i.b to i128
  %i.f = mul nuw i128 %i.e, %i.d                  ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !574, !noundef !5
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = tail call { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE14reserve_rehashNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noundef nonnull readonly align 8 %i.a, i1 noundef zeroext true) #31 ; 0 uses
  br label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !573, !nonnull !5, !noundef !5 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.n, align 8, !alias.scope !573, !noundef !5 ; 4 uses
  %i.o = lshr i64 %i.i, 57
  %i.p = trunc nuw nsw i64 %i.o to i8             ; 3 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i
  %.pn.i.i = phi i64 [ %i.i, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.aq, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.01.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %.sroa.01.122.i.i, %bb.f ]
  %i.s = phi i64 [ 0, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i ], [ %i.ap, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.t, align 1, !noalias !575 ; 3 uses
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.r
end_hunk_0
begin_hunk_1_@llvm.smin.i128
!287 = !{!257}
!288 = !{!258}
!289 = !{!258, !244, !214}
!290 = !{!257, !244, !214}
!291 = !{!259}
!292 = !{!260}
!293 = !{!260, !244, !214}
!294 = !{!259, !244, !214}
!295 = !{!247, !244, !214}
!296 = !{!212, !214, !213}
!297 = distinct !{!297, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!298 = distinct !{!298, !297, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!299 = distinct !{!299, !297, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!300 = distinct !{!300, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!301 = distinct !{!301, !300, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!302 = distinct !{!302, !300, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!303 = distinct !{!303, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!304 = distinct !{!304, !303, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!305 = distinct !{!305, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!306 = distinct !{!306, !305, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!307 = distinct !{!307, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core"}
!308 = distinct !{!308, !307, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!309 = distinct !{!309, !307, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!310 = distinct !{!310, !307, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 0:It1"}
!311 = distinct !{!311, !307, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 1:It1"}
!312 = distinct !{!312, !307, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 0:It2"}
!313 = distinct !{!313, !307, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 1:It2"}
!314 = distinct !{!314, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core"}
!315 = distinct !{!315, !314, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!316 = distinct !{!316, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core"}
!317 = distinct !{!317, !316, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!318 = distinct !{!318, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!319 = distinct !{!319, !318, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!320 = distinct !{!320, !318, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!321 = distinct !{!321, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!322 = distinct !{!322, !321, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!323 = distinct !{!323, !"_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!324 = distinct !{!324, !323, !"_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!325 = distinct !{!325, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!326 = distinct !{!326, !325, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 1:pre.rot"}
!327 = distinct !{!327, !325, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!328 = distinct !{!328, !325, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!329 = distinct !{!329, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!330 = distinct !{!330, !329, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!331 = distinct !{!331, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core"}
!332 = distinct !{!332, !331, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!333 = distinct !{!333, !331, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!334 = distinct !{!334, !325, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 1:h.rot"}
!335 = !{!298}
!336 = !{!299}
!337 = !{!298, !299}
!338 = !{!301}
!339 = !{!301, !302, !298, !299}
!340 = !{!"branch_weights", i32 4292820, i32 2143190828}
!341 = !{!306, !304}
!342 = !{!304}
!343 = !{!301, !298}
!344 = !{!302, !299}
!345 = !{!308}
!346 = !{!309}
!347 = !{!310}
!348 = !{!311}
!349 = !{!312}
!350 = !{!313}
!351 = !{!317, !315}
!352 = !{!320, !319}
!353 = !{!322}
!354 = !{!324}
!355 = !{!327, !326}
!356 = !{!327, !328}
!357 = !{!330}
!358 = !{!332}
!359 = !{!333}
!360 = !{!334}
!361 = !{!334, !324}
!362 = !{!327}
!363 = !{!327, !334}
!364 = distinct !{!364, !"_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!365 = distinct !{!365, !364, !"_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!366 = !{!365}
!367 = distinct !{!367, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core"}
!368 = distinct !{!368, !367, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!369 = !{!368}
!370 = distinct !{!370, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_EEECsbNMRYq9Xj9a_14rustworkx_core"}
!371 = distinct !{!371, !370, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_EEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!372 = !{!371}
!373 = distinct !{!373, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core"}
!374 = distinct !{!374, !373, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!375 = !{!374}
!376 = distinct !{!376, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core"}
!377 = distinct !{!377, !376, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!378 = distinct !{!378, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core"}
!379 = distinct !{!379, !378, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!380 = !{!377}
!381 = !{!379}
!382 = !{!379, !377}
!383 = distinct !{!383, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core"}
!384 = distinct !{!384, !383, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!385 = !{!384}
!386 = distinct !{!386, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core"}
!387 = distinct !{!387, !386, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!388 = distinct !{null, null}
!389 = !{!387}
!390 = distinct !{!390, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_"}
!391 = distinct !{!391, !390, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_: argument 0"}
!392 = !{!391}
!393 = distinct !{!393, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_"}
!394 = distinct !{!394, !393, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_: argument 0"}
!395 = distinct !{!395, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_"}
!396 = distinct !{!396, !395, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_: argument 0"}
!397 = !{!394}
!398 = !{!396}
!399 = !{!396, !394}
!400 = distinct !{!400, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core"}
!401 = distinct !{!401, !400, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!402 = distinct !{!402, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core"}
!403 = distinct !{!403, !402, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!404 = distinct !{!404, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core"}
!405 = distinct !{!405, !404, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!406 = !{!401}
!407 = !{!403}
!408 = !{!405}
!409 = !{!405, !403, !401}
!410 = distinct !{!410, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!411 = distinct !{!411, !410, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!412 = !{!411}
!413 = distinct !{!413, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11clear_edgesB1k_"}
!414 = distinct !{!414, !413, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11clear_edgesB1k_: argument 0"}
!415 = distinct !{!415, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!416 = distinct !{!416, !415, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!417 = distinct !{!417, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core"}
!418 = distinct !{!418, !417, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!419 = distinct !{!419, !415, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!420 = distinct !{!420, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!421 = distinct !{!421, !420, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!422 = distinct !{!422, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone"}
!423 = distinct !{!423, !422, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!424 = distinct !{!424, !16, !17}
!425 = distinct !{!425, !17, !16}
!426 = distinct !{!426, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!427 = distinct !{!427, !426, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!428 = distinct !{!428, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core"}
!429 = distinct !{!429, !428, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!430 = distinct !{!430, !426, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!431 = distinct !{!431, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!432 = distinct !{!432, !431, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!433 = distinct !{!433, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone"}
!434 = distinct !{!434, !433, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!435 = distinct !{!435, !16, !17}
!436 = distinct !{!436, !17, !16}
!437 = !{!414}
!438 = !{!416}
!439 = !{!421, !419, !416, !418}
!440 = !{!423, !416}
!441 = !{!419, !418}
!442 = !{!419, !416, !418}
!443 = !{!427}
!444 = !{!432, !430, !427, !429}
!445 = !{!434, !427}
!446 = !{!430, !429}
!447 = !{!430, !427, !429}
!448 = distinct !{!448, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE9find_edgeB1k_"}
!449 = distinct !{!449, !448, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE9find_edgeB1k_: argument 0"}
!450 = distinct !{!450, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE20find_edge_undirectedB1k_"}
!451 = distinct !{!451, !450, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE20find_edge_undirectedB1k_: argument 0"}
!452 = distinct !{!452, !"_RNvMsk_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionuEIBT_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtB7_10UndirectedE30find_edge_undirected_from_nodeB1E_"}
!453 = distinct !{!453, !452, !"_RNvMsk_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionuEIBT_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtB7_10UndirectedE30find_edge_undirected_from_nodeB1E_: argument 0"}
!454 = !{!449}
!455 = !{!451}
!456 = !{!451, !449}
!457 = !{!453, !451, !449}
!458 = distinct !{!458, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!459 = distinct !{!459, !458, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!460 = distinct !{!460, !458, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!461 = distinct !{!461, !"_RINvYNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECsbNMRYq9Xj9a_14rustworkx_core"}
!462 = distinct !{!462, !461, !"_RINvYNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!463 = distinct !{!463, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!464 = distinct !{!464, !463, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!465 = distinct !{!465, !463, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!466 = distinct !{!466, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCsbNMRYq9Xj9a_14rustworkx_core"}
!467 = distinct !{!467, !466, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!468 = distinct !{!468, !"_RINvMs_NtCslcZTgAvcSNH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1L_E0NCINvB14_8get_hashB1L_uE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!469 = distinct !{!469, !468, !"_RINvMs_NtCslcZTgAvcSNH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1L_E0NCINvB14_8get_hashB1L_uE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!470 = distinct !{!470, !"_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB24_E0NCINvB1n_8get_hashB24_uE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!471 = distinct !{!471, !470, !"_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB24_E0NCINvB1n_8get_hashB24_uE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!472 = distinct !{!472, !"_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!473 = distinct !{!473, !472, !"_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!474 = distinct !{!474, !468, !"_RINvMs_NtCslcZTgAvcSNH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1L_E0NCINvB14_8get_hashB1L_uE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 2"}
!475 = distinct !{!475, !468, !"_RINvMs_NtCslcZTgAvcSNH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1L_E0NCINvB14_8get_hashB1L_uE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!476 = distinct !{!476, !470, !"_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB24_E0NCINvB1n_8get_hashB24_uE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!477 = distinct !{!477, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!478 = distinct !{!478, !477, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!479 = distinct !{!479, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!480 = distinct !{!480, !479, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!481 = distinct !{!481, !"_RNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuBL_E0CsbNMRYq9Xj9a_14rustworkx_core"}
!482 = distinct !{!482, !481, !"_RNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuBL_E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!483 = distinct !{!483, !"_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsbNMRYq9Xj9a_14rustworkx_core"}
!484 = distinct !{!484, !483, !"_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!485 = distinct !{!485, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core"}
!486 = distinct !{!486, !485, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!487 = distinct !{!487, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core"}
!488 = distinct !{!488, !487, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!489 = distinct !{!489, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsbNMRYq9Xj9a_14rustworkx_core"}
!490 = distinct !{!490, !489, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!491 = distinct !{!491, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsbNMRYq9Xj9a_14rustworkx_core"}
!492 = distinct !{!492, !491, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!493 = distinct !{!493, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbNMRYq9Xj9a_14rustworkx_core"}
!494 = distinct !{!494, !493, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!495 = distinct !{!495, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsbNMRYq9Xj9a_14rustworkx_core"}
!496 = distinct !{!496, !495, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!497 = distinct !{!497, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbNMRYq9Xj9a_14rustworkx_core"}
!498 = distinct !{!498, !497, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!499 = distinct !{!499, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE8push_mutCsbNMRYq9Xj9a_14rustworkx_core"}
!500 = distinct !{!500, !499, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE8push_mutCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!501 = !{!459}
!502 = !{!460}
!503 = !{!465, !464, !462}
!504 = !{!467}
!505 = !{!473, !471, !469, !467}
!506 = !{!476, !475, !474}
!507 = !{!471, !469, !467}
!508 = !{!478, !476, !475, !474}
!509 = !{!480, !476, !475, !474}
!510 = !{!482, !480, !476, !475, !474}
!511 = !{!484}
!512 = !{!484, !467}
!513 = !{!486}
!514 = !{!486, !467}
!515 = !{!488}
!516 = !{!488, !486, !467}
!517 = !{!490}
!518 = !{!492}
!519 = !{!494}
!520 = !{!494, !492, !490, !488, !486, !467}
!521 = !{!494, !492, !490, !488, !486}
!522 = !{!490, !488, !486}
!523 = !{!496}
!524 = !{!498}
!525 = !{!498, !496, !488, !486, !467}
!526 = !{!498, !496, !488, !486}
!527 = !{!500}
!528 = !{!500, !486, !467}
!529 = !{!500, !486}
!530 = distinct !{!530, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!531 = distinct !{!531, !530, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!532 = distinct !{!532, !530, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!533 = distinct !{!533, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!534 = distinct !{!534, !533, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!535 = distinct !{!535, !533, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!536 = distinct !{!536, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2b_11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!537 = distinct !{!537, !536, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2b_11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!538 = distinct !{!538, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!539 = distinct !{!539, !538, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!540 = distinct !{!540, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!541 = distinct !{!541, !540, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!542 = distinct !{!542, !"_RNCINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB8_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2d_11make_hasherBS_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!543 = distinct !{!543, !542, !"_RNCINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB8_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2d_11make_hasherBS_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!544 = distinct !{!544, !"_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14insert_in_slotCsbNMRYq9Xj9a_14rustworkx_core"}
!545 = distinct !{!545, !544, !"_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14insert_in_slotCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!546 = !{!531}
!547 = !{!532}
!548 = !{!535, !534}
!549 = !{!537}
!550 = !{!539, !537}
!551 = !{!541, !537}
!552 = !{!543, !537}
!553 = !{!545}
!554 = distinct !{!554, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!555 = distinct !{!555, !554, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!556 = distinct !{!556, !554, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!557 = distinct !{!557, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!558 = distinct !{!558, !557, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!559 = distinct !{!559, !557, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!560 = distinct !{!560, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyjjjE0NCINvB1p_11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!561 = distinct !{!561, !560, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyjjjE0NCINvB1p_11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!562 = distinct !{!562, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!563 = distinct !{!563, !562, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!564 = distinct !{!564, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!565 = distinct !{!565, !564, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!566 = distinct !{!566, !"_RNCINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB8_8RawTableTjjEE24find_or_find_insert_slotNCINvNtBa_3map14equivalent_keyjjjE0NCINvB1r_11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!567 = distinct !{!567, !566, !"_RNCINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB8_8RawTableTjjEE24find_or_find_insert_slotNCINvNtBa_3map14equivalent_keyjjjE0NCINvB1r_11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!568 = distinct !{!568, !"_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTjjEE14insert_in_slotCsbNMRYq9Xj9a_14rustworkx_core"}
!569 = distinct !{!569, !568, !"_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTjjEE14insert_in_slotCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!570 = !{!555}
!571 = !{!556}
!572 = !{!559, !558}
!573 = !{!561}
!574 = !{!563, !561}
!575 = !{!565, !561}
!576 = !{!567, !561}
!577 = !{!569}
!578 = distinct !{!578, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE12try_add_edgeB1k_"}
!579 = distinct !{!579, !578, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE12try_add_edgeB1k_: argument 1"}
!580 = distinct !{!580, !578, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE12try_add_edgeB1k_: argument 0"}
!581 = distinct !{!581, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEE8push_mutB24_"}
!582 = distinct !{!582, !581, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEE8push_mutB24_: argument 0"}
!583 = distinct !{!583, !581, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEE8push_mutB24_: argument 1"}
!584 = distinct !{!584, !"_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexNtBJ_10GraphErrorE6unwrapCsbNMRYq9Xj9a_14rustworkx_core"}
!585 = distinct !{!585, !584, !"_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexNtBJ_10GraphErrorE6unwrapCsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!586 = distinct !{!586, !584, !"_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexNtBJ_10GraphErrorE6unwrapCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!587 = !{!579}
!588 = !{!580, !579}
!589 = !{!580}
!590 = !{!582, !579}
!591 = !{!583, !580}
!592 = !{!586, !585}
!593 = !{!586}
!594 = distinct !{!594, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!595 = distinct !{!595, !594, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!596 = !{!595}
!597 = distinct !{!597, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!598 = distinct !{!598, !597, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!599 = !{!598}
!600 = distinct !{!600, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!601 = distinct !{!601, !600, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!602 = !{!601}
!603 = distinct !{!603, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!604 = distinct !{!604, !603, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!605 = !{!604}
!606 = distinct !{!606, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!607 = distinct !{!607, !606, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!608 = !{!607}
!609 = distinct !{!609, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!610 = distinct !{!610, !609, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!611 = !{!610}
!612 = distinct !{!612, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!613 = distinct !{!613, !612, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!614 = !{!613}
!615 = distinct !{!615, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!616 = distinct !{!616, !615, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!617 = !{!616}
!618 = distinct !{!618, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!619 = distinct !{!619, !618, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!620 = !{!619}
!621 = distinct !{!621, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!622 = distinct !{!622, !621, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!623 = !{!622}
!624 = distinct !{!624, !"_RNvXsb_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraphNtNtCslwFuT2d6ECx_4core5clone5Clone5clone"}
!625 = distinct !{!625, !624, !"_RNvXsb_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraphNtNtCslwFuT2d6ECx_4core5clone5Clone5clone: argument 0"}
!626 = distinct !{!626, !624, !"_RNvXsb_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraphNtNtCslwFuT2d6ECx_4core5clone5Clone5clone: argument 1"}
!627 = distinct !{!627, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!628 = distinct !{!628, !627, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!629 = distinct !{!629, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core"}
!630 = distinct !{!630, !629, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!631 = distinct !{!631, !627, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!632 = distinct !{!632, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!633 = distinct !{!633, !632, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!634 = distinct !{!634, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone"}
!635 = distinct !{!635, !634, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!636 = distinct !{!636, !16, !17}
!637 = distinct !{!637, !17, !16}
!638 = distinct !{!638, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!639 = distinct !{!639, !638, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!640 = distinct !{!640, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core"}
!641 = distinct !{!641, !640, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!642 = distinct !{!642, !638, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!643 = distinct !{!643, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!644 = distinct !{!644, !643, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!645 = distinct !{!645, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone"}
!646 = distinct !{!646, !645, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!647 = distinct !{!647, !16, !17}
!648 = distinct !{!648, !17, !16}
!649 = distinct !{!649, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!650 = distinct !{!650, !649, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!651 = distinct !{!651, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!652 = distinct !{!652, !651, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!653 = distinct !{!653, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_"}
!654 = distinct !{!654, !653, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_: argument 0"}
!655 = distinct !{!655, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_"}
!656 = distinct !{!656, !655, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_: argument 0"}
!657 = distinct !{!657, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_"}
!658 = distinct !{!658, !657, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_: argument 0"}
!659 = distinct !{!659, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_"}
!660 = distinct !{!660, !659, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 1"}
!661 = distinct !{!661, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_"}
!662 = distinct !{!662, !661, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 1"}
!663 = distinct !{!663, !661, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 0"}
!664 = distinct !{!664, !659, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 0"}
!665 = distinct !{!665, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBG_EE8push_mutCsbNMRYq9Xj9a_14rustworkx_core"}
!666 = distinct !{!666, !665, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBG_EE8push_mutCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!667 = distinct !{!667, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEE8push_mutCsbNMRYq9Xj9a_14rustworkx_core"}
!668 = distinct !{!668, !667, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEE8push_mutCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!669 = distinct !{!669, !667, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEE8push_mutCsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!670 = distinct !{!670, !"_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26rbmg_find_perfect_matching"}
!671 = distinct !{!671, !670, !"_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26rbmg_find_perfect_matching: argument 1"}
!672 = distinct !{!672, !670, !"_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26rbmg_find_perfect_matching: argument 0"}
!673 = distinct !{!673, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_"}
!674 = distinct !{!674, !673, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 1"}
!675 = distinct !{!675, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_"}
!676 = distinct !{!676, !675, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 1"}
!677 = distinct !{!677, !675, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 0"}
!678 = distinct !{!678, !673, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 0"}
!679 = distinct !{!679, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_"}
!680 = distinct !{!680, !679, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_: argument 0"}
!681 = distinct !{!681, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_"}
!682 = distinct !{!682, !681, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_: argument 0"}
!683 = distinct !{!683, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_"}
!684 = distinct !{!684, !683, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_: argument 0"}
!685 = distinct !{!685, !"_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge"}
!686 = distinct !{!686, !685, !"_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge: argument 0"}
!687 = distinct !{!687, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE9find_edgeB1k_"}
!688 = distinct !{!688, !687, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE9find_edgeB1k_: argument 0"}
!689 = distinct !{!689, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE20find_edge_undirectedB1k_"}
!690 = distinct !{!690, !689, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE20find_edge_undirectedB1k_: argument 0"}
!691 = distinct !{!691, !"_RNvMsk_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionuEIBT_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtB7_10UndirectedE30find_edge_undirected_from_nodeB1E_"}
!692 = distinct !{!692, !691, !"_RNvMsk_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionuEIBT_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtB7_10UndirectedE30find_edge_undirected_from_nodeB1E_: argument 0"}
!693 = distinct !{!693, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!694 = distinct !{!694, !693, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!695 = distinct !{!695, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_"}
!696 = distinct !{!696, !695, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 1"}
!697 = distinct !{!697, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_"}
!698 = distinct !{!698, !697, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 1"}
!699 = distinct !{!699, !697, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 0"}
!700 = distinct !{!700, !695, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 0"}
!701 = distinct !{!701, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBG_EE8push_mutCsbNMRYq9Xj9a_14rustworkx_core"}
!702 = distinct !{!702, !701, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBG_EE8push_mutCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!703 = distinct !{!703, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_"}
!704 = distinct !{!704, !703, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_: argument 0"}
!705 = distinct !{!705, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_"}
!706 = distinct !{!706, !705, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_: argument 0"}
!707 = distinct !{!707, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_"}
!708 = distinct !{!708, !707, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_: argument 0"}
!709 = distinct !{!709, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_"}
!710 = distinct !{!710, !709, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 1"}
!711 = distinct !{!711, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matching0NCINvXsK_NtB2j_5accumjNtB51_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_"}
!712 = distinct !{!712, !711, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matching0NCINvXsK_NtB2j_5accumjNtB51_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_: argument 0"}
!713 = distinct !{!713, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_"}
!714 = distinct !{!714, !713, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_: argument 1"}
!715 = distinct !{!715, !713, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_: argument 0"}
!716 = distinct !{!716, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_"}
!717 = distinct !{!717, !716, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 1"}
!718 = distinct !{!718, !716, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 0"}
!719 = distinct !{!719, !709, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 0"}
!720 = distinct !{!720, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_"}
!721 = distinct !{!721, !720, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 1"}
!722 = distinct !{!722, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matchings_0NCINvXsK_NtB2j_5accumjNtB53_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_"}
!723 = distinct !{!723, !722, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matchings_0NCINvXsK_NtB2j_5accumjNtB53_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_: argument 0"}
!724 = distinct !{!724, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_"}
!725 = distinct !{!725, !724, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_: argument 1"}
!726 = distinct !{!726, !724, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_: argument 0"}
!727 = distinct !{!727, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_"}
!728 = distinct !{!728, !727, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 1"}
!729 = distinct !{!729, !727, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 0"}
end_hunk_1
