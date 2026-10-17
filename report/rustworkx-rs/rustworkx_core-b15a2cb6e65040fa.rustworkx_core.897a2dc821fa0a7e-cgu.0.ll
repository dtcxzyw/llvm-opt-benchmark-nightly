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
  %wide.load51 = load <4 x i32>, ptr %next.gep50, align 4, !alias.scope !395, !noalias !396
  %wide.load52 = load <4 x i32>, ptr %i.bl, align 4, !alias.scope !395, !noalias !396
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index49 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> %wide.load51, ptr %i.bm, align 4, !noalias !397
  store <4 x i32> %wide.load52, ptr %i.bn, align 4, !noalias !397
  %index.next53 = add nuw i64 %index49, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.bo, label %.lr.ph.i.i10.preheader, label %vector.body48, !llvm.loop !385

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
  %.val.i.i14 = load i32, ptr %.sroa.016.034.i.i11, align 4, !alias.scope !395, !noalias !396, !noundef !5
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.7.033.i.i12
  store i32 %.val.i.i14, ptr %i.bt, align 4, !noalias !397
  %i.bu = icmp eq i64 %i.bq, 0
  br i1 %i.bu, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core.exit18, label %.lr.ph.i.i10, !llvm.loop !386

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.a, align 8, !alias.scope !406, !noundef !5
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = icmp ugt i64 %.val3.i.i, %i.b
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !406, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i, i64 %i.b ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 4, !range !15, !noalias !406, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i, label %.loopexit

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i.i = load ptr, ptr %i.i, align 8, !alias.scope !406, !nonnull !5, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i.i = load i64, ptr %i.j, align 8, !alias.scope !406 ; 2 uses
  br label %bb.d

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c
  %.pn.1.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.d ]
  %.sroa.04.0.in.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.1.i.i.i, i64 4
  %.sroa.04.0.1.i.i.i = load i32, ptr %.sroa.04.0.in.1.i.i.i, align 4, !noalias !406, !noundef !5
  %i.k = zext i32 %.sroa.04.0.1.i.i.i to i64      ; 3 uses
  %i.l = icmp ugt i64 %.val5.i.i, %i.k
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.loopexit.i.i.i
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.1.i.i.i = load i32, ptr %i.n, align 4, !noalias !407, !noundef !5
  %i.o = icmp eq i32 %.val.1.i.i.i, %2
  br i1 %i.o, label %.loopexit8, label %.loopexit.i.i.i

bb.d:                                             ; preds = %bb.e, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i
  %.pn.i.i.i = phi ptr [ %i.e, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE8get_nodeB1k_.exit.i.i ], [ %i.r, %bb.e ]
  %.sroa.04.0.i.i.i = load i32, ptr %.pn.i.i.i, align 4, !noalias !406, !noundef !5
  %i.p = zext i32 %.sroa.04.0.i.i.i to i64        ; 3 uses
  %i.q = icmp ugt i64 %.val5.i.i, %i.p
  br i1 %i.q, label %bb.e, label %.loopexit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.val.i.i.i = load i32, ptr %i.s, align 4, !noalias !407, !noundef !5
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
  %.val = load i64, ptr %i.c, align 8, !alias.scope !450, !noundef !5
  %i.d = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !451, !noundef !5
  %i.e = zext i32 %1 to i64
  %i.f = xor i64 %.val, %i.e
  %i.g = zext i64 %i.f to i128
  %i.h = zext i64 %i.d to i128
  %i.i = mul nuw i128 %i.g, %i.h                  ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = xor i128 %i.j, %i.i
  %i.l = trunc i128 %i.k to i64                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !452, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !452, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !453, !noundef !5
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.u = tail call { i64, i64 } @_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 1, ptr noundef nonnull readonly align 8 %i.n, i64 noundef %i.p, i1 noundef zeroext true) #31, !noalias !454 ; 0 uses
  br label %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i

_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !455, !nonnull !5, !noundef !5 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !455, !noundef !5 ; 4 uses
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
  %.sroa.0.0.copyload.i31.i.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !456 ; 3 uses
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
  %.val.i.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !457, !noundef !5 ; 5 uses
  %i.al = icmp ult i64 %.val.i.i.i.i.i, %i.p
  br i1 %i.al, label %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0CsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i.i, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27, !noalias !458
  unreachable

_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0CsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.val.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val2.i.i.i.i.i.i = load i32, ptr %i.an, align 4, !noalias !458, !noundef !5
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
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !454, !noundef !5 ; 2 uses
  %i.be = icmp sgt i8 %i.bd, -1
  br i1 %i.be, label %bb.i, label %bb.j, !prof !6

bb.i:                                             ; preds = %bb.h
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !454
  %i.bf = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %.not.i22.i.i.i.i = icmp ne i16 %i.bg, 0
  %i.bh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true)
  %i.bi = zext nneg i16 %i.bh to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i22.i.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.bi
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !459
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bj = phi i8 [ %.pre.i, %bb.i ], [ %i.bd, %bb.h ]
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.bi, %bb.i ], [ %.sroa.4.125.i.i.i.i, %bb.h ] ; 3 uses
  %i.bk = load i64, ptr %i.o, align 8, !alias.scope !452, !noundef !5 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 576460752303423488
  tail call void @llvm.assume(i1 %i.bl)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i
  %i.bn = and i8 %i.bj, 1
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.bq = and i64 %i.bp, %.val5.i.i.i
  store i8 %i.x, ptr %i.bm, align 1, !noalias !459
  %i.br = getelementptr i8, ptr %.val.i.i.i, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.x, ptr %i.bs, align 1, !noalias !459
  %i.bt = load <2 x i64>, ptr %i.r, align 8, !alias.scope !460
  %i.bu = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bo, i64 0
  %i.bv = sub <2 x i64> %i.bt, %i.bu
  store <2 x i64> %i.bv, ptr %i.r, align 8, !alias.scope !460
  %i.bw = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.bx = getelementptr inbounds [8 x i8], ptr %.val.i.i.i, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  store i64 %i.bk, ptr %i.by, align 8, !noalias !459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.bz = load i64, ptr %i.o, align 8, !alias.scope !462, !noundef !5 ; 10 uses
  %i.ca = icmp ult i64 %i.bz, 576460752303423488
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %0, align 8, !range !11, !alias.scope !462, !noundef !5
  %i.cc = icmp eq i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.k, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !464, !noundef !5
  %i.cf = load i64, ptr %i.r, align 8, !alias.scope !464, !noundef !5
  %i.cg = add i64 %i.cf, %i.ce                    ; 2 uses
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 576460752303423487) ; 4 uses
  %i.ci = sub nsw i64 %i.ch, %i.bz
  %i.cj = icmp ugt i64 %i.ci, 1
  br i1 %i.cj, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.p, %bb.n, %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.ck = add nuw nsw i64 %i.bz, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !468
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !468
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.bz, ptr %.val11.i.i.i.i.i.i, i64 noundef %i.ck, i64 noundef 8, i64 noundef 16), !noalias !469
  %i.cl = load i64, ptr %i.b, align 8, !range !13, !noalias !468, !noundef !5
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.cm, label %bb.m, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.thread4.i.i

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %i.cn, align 8, !range !14, !noalias !468, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !468
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %i.co, i64 %i.cq) #30, !noalias !470
  unreachable

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.thread4.i.i: ; preds = %bb.l
  %i.cr = load ptr, ptr %i.cn, align 8, !noalias !468, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !468
  store ptr %i.cr, ptr %i.m, align 8, !alias.scope !468
  store i64 %i.ck, ptr %0, align 8, !alias.scope !464
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core.exit.i

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.cs = icmp ult i64 %i.cg, %i.bz
  br i1 %i.cs, label %bb.l, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !473
  %.val11.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !473
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.bz, ptr %.val11.i.i.i.i.i, i64 noundef %i.ch, i64 noundef 8, i64 noundef 16), !noalias !474
  %i.ct = load i64, ptr %i.a, align 8, !range !13, !noalias !473, !noundef !5
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.p, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !473
  br label %bb.l

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !473, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !473
  store ptr %i.cw, ptr %i.m, align 8, !alias.scope !473
  store i64 %i.ch, ptr %0, align 8, !alias.scope !464
  %2 = icmp eq i64 %i.bz, %i.ch
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  br i1 %2, label %bb.q, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core.exit.i

bb.q:                                             ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  tail call void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE8grow_oneCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #31
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.q, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core.exit.thread4.i.i, %bb.j
  %3 = load ptr, ptr %i.m, align 8, !alias.scope !476, !nonnull !5, !noundef !5
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.bz ; 2 uses
  store i64 %i.l, ptr %i.cx, align 8, !noalias !477
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 %1, ptr %i.cy, align 8, !noalias !477
  %i.cz = add nuw nsw i64 %i.bz, 1
  store i64 %i.cz, ptr %i.o, align 8, !alias.scope !476
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCsbNMRYq9Xj9a_14rustworkx_core.exit

bb.r:                                             ; preds = %_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0CsbNMRYq9Xj9a_14rustworkx_core.exit.i.i.i.i
  %i.da = load i64, ptr %i.o, align 8, !alias.scope !452, !noundef !5 ; 2 uses
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
  %.val = load i64, ptr %i.a, align 8, !alias.scope !493, !noundef !5
  %i.b = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !494, !noundef !5
  %i.c = zext i32 %1 to i64
  %i.d = xor i64 %.val, %i.c
  %i.e = zext i64 %i.d to i128
  %i.f = zext i64 %i.b to i128
  %i.g = mul nuw i128 %i.f, %i.e                  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !496, !noundef !5
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.n = tail call { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noundef nonnull readonly align 8 %i.a, i1 noundef zeroext true) #31 ; 0 uses
  br label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !495, !nonnull !5, !noundef !5 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.o, align 8, !alias.scope !495, !noundef !5 ; 4 uses
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
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !497 ; 3 uses
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
  %.val2.i.i = load i32, ptr %i.ad, align 4, !noalias !498, !noundef !5
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
  %i.at = load i8, ptr %i.as, align 1, !noalias !495, !noundef !5 ; 2 uses
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !495
  %i.av = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i22.i.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i22.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ay
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !499
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.az = phi i8 [ %.pre, %bb.h ], [ %i.at, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.bb = and i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = add i64 %.sroa.3.0.i.ph.i, -16
  %i.be = and i64 %i.bd, %.val5.i
  store i8 %i.q, ptr %i.ba, align 1, !noalias !499
  %i.bf = getelementptr i8, ptr %.val.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store i8 %i.q, ptr %i.bg, align 1, !noalias !499
  %i.bh = load <2 x i64>, ptr %i.k, align 8, !alias.scope !499
  %i.bi = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bc, i64 0
  %i.bj = sub <2 x i64> %i.bh, %i.bi
  store <2 x i64> %i.bj, ptr %i.k, align 8, !alias.scope !499
  %i.bk = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -4
  store i32 %1, ptr %i.bm, align 4, !noalias !499
  br label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2b_11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2b_11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %.lr.ph.i.i, %bb.i
  %.sroa.0.0 = phi i1 [ false, %bb.i ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjjE6insertCsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !alias.scope !515, !noundef !5
  %i.b = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !516, !noundef !5
  %i.c = xor i64 %.val, %1
  %i.d = zext i64 %i.c to i128
  %i.e = zext i64 %i.b to i128
  %i.f = mul nuw i128 %i.e, %i.d                  ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !518, !noundef !5
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = tail call { i64, i64 } @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE14reserve_rehashNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noundef nonnull readonly align 8 %i.a, i1 noundef zeroext true) #31 ; 0 uses
  br label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !517, !nonnull !5, !noundef !5 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.n, align 8, !alias.scope !517, !noundef !5 ; 4 uses
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
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.t, align 1, !noalias !519 ; 3 uses
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.r
end_hunk_0
begin_hunk_1_@llvm.smin.i128
!236 = !{!199, !197, !195, !186, !184}
!237 = !{!202, !201, !186, !184}
!238 = !{!204}
!239 = !{!207, !206, !202, !201, !186, !184}
!240 = !{!209}
!241 = !{!211, !185}
!242 = !{!213}
!243 = !{!214, !213, !211, !185}
!244 = !{!216}
!245 = !{!219, !218, !214, !213, !211, !185}
!246 = !{!221}
!247 = !{!223}
!248 = !{!224}
!249 = !{!226}
!250 = !{!227}
!251 = !{!181, !185, !184}
!252 = distinct !{!252, i1 true, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!253 = distinct !{!253, !252, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!254 = distinct !{!254, !252, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!255 = distinct !{!255, i1 true, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!256 = distinct !{!256, !255, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!257 = distinct !{!257, !255, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!258 = distinct !{!258, i1 true, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!259 = distinct !{!259, !258, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!260 = distinct !{!260, i1 true, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!261 = distinct !{!261, !260, !"_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!262 = distinct !{!262, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core"}
!263 = distinct !{!263, !262, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!264 = distinct !{!264, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core"}
!265 = distinct !{!265, !264, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 0:It1"}
!266 = distinct !{!266, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core"}
!267 = distinct !{!267, !266, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 0:It2"}
!268 = distinct !{!268, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core"}
!269 = distinct !{!269, !268, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!270 = distinct !{!270, i1 true, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core"}
!271 = distinct !{!271, !270, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!272 = distinct !{!272, i1 true, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!273 = distinct !{!273, !272, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!274 = distinct !{!274, !272, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!275 = distinct !{!275, i1 true, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!276 = distinct !{!276, !275, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!277 = distinct !{!277, i1 true, !"_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!278 = distinct !{!278, !277, !"_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!279 = distinct !{!279, i1 true, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!280 = distinct !{!280, !279, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 1:pre.rot"}
!281 = distinct !{!281, i1 true, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!282 = distinct !{!282, !281, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!283 = distinct !{!283, !281, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!284 = distinct !{!284, i1 true, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!285 = distinct !{!285, !284, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!286 = distinct !{!286, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core"}
!287 = distinct !{!287, !286, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!288 = distinct !{!288, !286, !"_RINvNtCslwFuT2d6ECx_4core3ptr10swap_chunkKj8_ECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!289 = distinct !{!289, i1 true, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!290 = distinct !{!290, !289, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 1:h.rot"}
!291 = !{!253}
!292 = !{!253, !254}
!293 = !{!256}
!294 = !{!256, !257, !253, !254}
!295 = !{!"branch_weights", i32 4292820, i32 2143190828}
!296 = !{!261, !259}
!297 = !{!259}
!298 = !{!256, !253}
!299 = !{!263}
!300 = !{!265}
!301 = !{!267}
!302 = !{!271, !269}
!303 = !{!274, !273}
!304 = !{!276}
!305 = !{!278}
!306 = !{!282, !280}
!307 = !{!282, !283}
!308 = !{!285}
!309 = !{!287}
!310 = !{!288}
!311 = !{!290}
!312 = !{!290, !278}
!313 = !{!282, !290}
!314 = distinct !{!314, i1 true, !"_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!315 = distinct !{!315, !314, !"_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!316 = !{!315}
!317 = distinct !{!317, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core"}
!318 = distinct !{!318, !317, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!319 = !{!318}
!320 = distinct !{!320, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_EEECsbNMRYq9Xj9a_14rustworkx_core"}
!321 = distinct !{!321, !320, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueSINtNtCs87CvPiUlf0m_5alloc3vec3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1a_EEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!322 = !{!321}
!323 = distinct !{!323, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core"}
!324 = distinct !{!324, !323, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!325 = !{!324}
!326 = distinct !{!326, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core"}
!327 = distinct !{!327, !326, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!328 = distinct !{!328, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core"}
!329 = distinct !{!329, !328, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!330 = !{!327}
!331 = !{!329}
!332 = !{!329, !327}
!333 = distinct !{!333, i1 true, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core"}
!334 = distinct !{!334, !333, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!335 = !{!334}
!336 = distinct !{!336, i1 true, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core"}
!337 = distinct !{!337, !336, !"_RNvXs1_NtCslcZTgAvcSNH_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!338 = distinct !{null, null}
!339 = !{!337}
!340 = distinct !{!340, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_"}
!341 = distinct !{!341, !340, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_: argument 0"}
!342 = !{!341}
!343 = distinct !{!343, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_"}
!344 = distinct !{!344, !343, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_: argument 0"}
!345 = distinct !{!345, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_"}
!346 = distinct !{!346, !345, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_: argument 0"}
!347 = !{!344}
!348 = !{!346}
!349 = !{!346, !344}
!350 = distinct !{!350, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core"}
!351 = distinct !{!351, !350, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3set8IndexSetNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!352 = distinct !{!352, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core"}
!353 = distinct !{!353, !352, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!354 = distinct !{!354, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core"}
!355 = distinct !{!355, !354, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!356 = !{!351}
!357 = !{!353}
!358 = !{!355}
!359 = !{!355, !353, !351}
!360 = distinct !{!360, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!361 = distinct !{!361, !360, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!362 = !{!361}
!363 = distinct !{!363, i1 true, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11clear_edgesB1k_"}
!364 = distinct !{!364, !363, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE11clear_edgesB1k_: argument 0"}
!365 = distinct !{!365, i1 true, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!366 = distinct !{!366, !365, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!367 = distinct !{!367, i1 true, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core"}
!368 = distinct !{!368, !367, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!369 = distinct !{!369, !365, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!370 = distinct !{!370, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!371 = distinct !{!371, !370, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!372 = distinct !{!372, i1 true, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone"}
!373 = distinct !{!373, !372, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!374 = distinct !{!374, !16, !17}
!375 = distinct !{!375, !17, !16}
!376 = distinct !{!376, i1 true, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!377 = distinct !{!377, !376, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!378 = distinct !{!378, i1 true, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core"}
!379 = distinct !{!379, !378, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!380 = distinct !{!380, !376, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!381 = distinct !{!381, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!382 = distinct !{!382, !381, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!383 = distinct !{!383, i1 true, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone"}
!384 = distinct !{!384, !383, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!385 = distinct !{!385, !16, !17}
!386 = distinct !{!386, !17, !16}
!387 = !{!364}
!388 = !{!366}
!389 = !{!371, !369, !366, !368}
!390 = !{!373, !366}
!391 = !{!368}
!392 = !{!369, !366, !368}
!393 = !{!377}
!394 = !{!382, !380, !377, !379}
!395 = !{!384, !377}
!396 = !{!379}
!397 = !{!380, !377, !379}
!398 = distinct !{!398, i1 true, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE9find_edgeB1k_"}
!399 = distinct !{!399, !398, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE9find_edgeB1k_: argument 0"}
!400 = distinct !{!400, i1 true, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE20find_edge_undirectedB1k_"}
!401 = distinct !{!401, !400, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE20find_edge_undirectedB1k_: argument 0"}
!402 = distinct !{!402, i1 true, !"_RNvMsk_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionuEIBT_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtB7_10UndirectedE30find_edge_undirected_from_nodeB1E_"}
!403 = distinct !{!403, !402, !"_RNvMsk_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionuEIBT_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtB7_10UndirectedE30find_edge_undirected_from_nodeB1E_: argument 0"}
!404 = !{!399}
!405 = !{!401}
!406 = !{!401, !399}
!407 = !{!403, !401, !399}
!408 = distinct !{!408, i1 true, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!409 = distinct !{!409, !408, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!410 = distinct !{!410, i1 true, !"_RINvYNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECsbNMRYq9Xj9a_14rustworkx_core"}
!411 = distinct !{!411, !410, !"_RINvYNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!412 = distinct !{!412, i1 true, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!413 = distinct !{!413, !412, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!414 = distinct !{!414, !412, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!415 = distinct !{!415, i1 true, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCsbNMRYq9Xj9a_14rustworkx_core"}
!416 = distinct !{!416, !415, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE11insert_fullCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!417 = distinct !{!417, i1 true, !"_RINvMs_NtCslcZTgAvcSNH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1L_E0NCINvB14_8get_hashB1L_uE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!418 = distinct !{!418, !417, !"_RINvMs_NtCslcZTgAvcSNH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1L_E0NCINvB14_8get_hashB1L_uE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!419 = distinct !{!419, i1 true, !"_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB24_E0NCINvB1n_8get_hashB24_uE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!420 = distinct !{!420, !419, !"_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB24_E0NCINvB1n_8get_hashB24_uE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!421 = distinct !{!421, i1 true, !"_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!422 = distinct !{!422, !421, !"_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!423 = distinct !{!423, !417, !"_RINvMs_NtCslcZTgAvcSNH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1L_E0NCINvB14_8get_hashB1L_uE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 2"}
!424 = distinct !{!424, !417, !"_RINvMs_NtCslcZTgAvcSNH_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB1L_E0NCINvB14_8get_hashB1L_uE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!425 = distinct !{!425, !419, !"_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB24_E0NCINvB1n_8get_hashB24_uE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!426 = distinct !{!426, i1 true, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!427 = distinct !{!427, !426, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!428 = distinct !{!428, i1 true, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!429 = distinct !{!429, !428, !"_RNCINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuB26_E0NCINvB1p_8get_hashB26_uE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!430 = distinct !{!430, i1 true, !"_RNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuBL_E0CsbNMRYq9Xj9a_14rustworkx_core"}
!431 = distinct !{!431, !430, !"_RNCINvNtCsfztDQZkQYYe_8indexmap5inner10equivalentNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuBL_E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!432 = distinct !{!432, i1 true, !"_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsbNMRYq9Xj9a_14rustworkx_core"}
!433 = distinct !{!433, !432, !"_RNvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!434 = distinct !{!434, i1 true, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core"}
!435 = distinct !{!435, !434, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE10push_entryCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!436 = distinct !{!436, i1 true, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core"}
!437 = distinct !{!437, !436, !"_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE15reserve_entriesCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!438 = distinct !{!438, i1 true, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsbNMRYq9Xj9a_14rustworkx_core"}
!439 = distinct !{!439, !438, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!440 = distinct !{!440, i1 true, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsbNMRYq9Xj9a_14rustworkx_core"}
!441 = distinct !{!441, !440, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!442 = distinct !{!442, i1 true, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbNMRYq9Xj9a_14rustworkx_core"}
!443 = distinct !{!443, !442, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!444 = distinct !{!444, i1 true, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsbNMRYq9Xj9a_14rustworkx_core"}
!445 = distinct !{!445, !444, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!446 = distinct !{!446, i1 true, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbNMRYq9Xj9a_14rustworkx_core"}
!447 = distinct !{!447, !446, !"_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!448 = distinct !{!448, i1 true, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE8push_mutCsbNMRYq9Xj9a_14rustworkx_core"}
!449 = distinct !{!449, !448, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE8push_mutCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!450 = !{!409}
!451 = !{!414, !413, !411}
!452 = !{!416}
!453 = !{!422, !420, !418, !416}
!454 = !{!425, !424, !423}
!455 = !{!420, !418, !416}
!456 = !{!427, !425, !424, !423}
!457 = !{!429, !425, !424, !423}
!458 = !{!431, !429, !425, !424, !423}
!459 = !{!433}
!460 = !{!433, !416}
!461 = !{!435}
!462 = !{!435, !416}
!463 = !{!437}
!464 = !{!437, !435, !416}
!465 = !{!439}
!466 = !{!441}
!467 = !{!443}
!468 = !{!443, !441, !439, !437, !435, !416}
!469 = !{!443, !441, !439, !437, !435}
!470 = !{!439, !437, !435}
!471 = !{!445}
!472 = !{!447}
!473 = !{!447, !445, !437, !435, !416}
!474 = !{!447, !445, !437, !435}
!475 = !{!449}
!476 = !{!449, !435, !416}
!477 = !{!449, !435}
!478 = distinct !{!478, i1 true, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!479 = distinct !{!479, !478, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!480 = distinct !{!480, i1 true, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!481 = distinct !{!481, !480, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!482 = distinct !{!482, !480, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!483 = distinct !{!483, i1 true, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2b_11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!484 = distinct !{!484, !483, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2b_11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!485 = distinct !{!485, i1 true, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!486 = distinct !{!486, !485, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!487 = distinct !{!487, i1 true, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!488 = distinct !{!488, !487, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!489 = distinct !{!489, i1 true, !"_RNCINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB8_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2d_11make_hasherBS_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!490 = distinct !{!490, !489, !"_RNCINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB8_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE24find_or_find_insert_slotNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2d_11make_hasherBS_uNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!491 = distinct !{!491, i1 true, !"_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14insert_in_slotCsbNMRYq9Xj9a_14rustworkx_core"}
!492 = distinct !{!492, !491, !"_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuEE14insert_in_slotCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!493 = !{!479}
!494 = !{!482, !481}
!495 = !{!484}
!496 = !{!486, !484}
!497 = !{!488, !484}
!498 = !{!490, !484}
!499 = !{!492}
!500 = distinct !{!500, i1 true, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!501 = distinct !{!501, !500, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!502 = distinct !{!502, i1 true, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!503 = distinct !{!503, !502, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!504 = distinct !{!504, !502, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!505 = distinct !{!505, i1 true, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyjjjE0NCINvB1p_11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!506 = distinct !{!506, !505, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE24find_or_find_insert_slotNCINvNtB8_3map14equivalent_keyjjjE0NCINvB1p_11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!507 = distinct !{!507, i1 true, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core"}
!508 = distinct !{!508, !507, !"_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTjjEE7reserveNCINvNtB8_3map11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0ECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!509 = distinct !{!509, i1 true, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!510 = distinct !{!510, !509, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!511 = distinct !{!511, i1 true, !"_RNCINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB8_8RawTableTjjEE24find_or_find_insert_slotNCINvNtBa_3map14equivalent_keyjjjE0NCINvB1r_11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0E0CsbNMRYq9Xj9a_14rustworkx_core"}
!512 = distinct !{!512, !511, !"_RNCINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB8_8RawTableTjjEE24find_or_find_insert_slotNCINvNtBa_3map14equivalent_keyjjjE0NCINvB1r_11make_hasherjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0E0CsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!513 = distinct !{!513, i1 true, !"_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTjjEE14insert_in_slotCsbNMRYq9Xj9a_14rustworkx_core"}
!514 = distinct !{!514, !513, !"_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTjjEE14insert_in_slotCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!515 = !{!501}
!516 = !{!504, !503}
!517 = !{!506}
!518 = !{!508, !506}
!519 = !{!510, !506}
!520 = !{!512, !506}
!521 = !{!514}
!522 = distinct !{!522, i1 true, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE12try_add_edgeB1k_"}
!523 = distinct !{!523, !522, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE12try_add_edgeB1k_: argument 1"}
!524 = distinct !{!524, !522, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE12try_add_edgeB1k_: argument 0"}
!525 = distinct !{!525, i1 true, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEE8push_mutB24_"}
!526 = distinct !{!526, !525, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEE8push_mutB24_: argument 0"}
!527 = distinct !{!527, !525, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEE8push_mutB24_: argument 1"}
!528 = distinct !{!528, i1 true, !"_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexNtBJ_10GraphErrorE6unwrapCsbNMRYq9Xj9a_14rustworkx_core"}
!529 = distinct !{!529, !528, !"_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexNtBJ_10GraphErrorE6unwrapCsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!530 = distinct !{!530, !528, !"_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexNtBJ_10GraphErrorE6unwrapCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!531 = !{!523}
!532 = !{!524, !523}
!533 = !{!526, !523}
!534 = !{!527, !524}
!535 = !{!530, !529}
!536 = !{!530}
!537 = distinct !{!537, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!538 = distinct !{!538, !537, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!539 = !{!538}
!540 = distinct !{!540, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!541 = distinct !{!541, !540, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!542 = !{!541}
!543 = distinct !{!543, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!544 = distinct !{!544, !543, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!545 = !{!544}
!546 = distinct !{!546, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!547 = distinct !{!547, !546, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!548 = !{!547}
!549 = distinct !{!549, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!550 = distinct !{!550, !549, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!551 = !{!550}
!552 = distinct !{!552, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!553 = distinct !{!553, !552, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!554 = !{!553}
!555 = distinct !{!555, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!556 = distinct !{!556, !555, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!557 = !{!556}
!558 = distinct !{!558, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!559 = distinct !{!559, !558, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!560 = !{!559}
!561 = distinct !{!561, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core"}
!562 = distinct !{!562, !561, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!563 = !{!562}
!564 = distinct !{!564, i1 true, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128"}
!565 = distinct !{!565, !564, !"_RNvNtNtNtCslwFuT2d6ECx_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!566 = !{!565}
!567 = distinct !{!567, i1 true, !"_RNvXsb_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraphNtNtCslwFuT2d6ECx_4core5clone5Clone5clone"}
!568 = distinct !{!568, !567, !"_RNvXsb_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraphNtNtCslwFuT2d6ECx_4core5clone5Clone5clone: argument 0"}
!569 = distinct !{!569, !567, !"_RNvXsb_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraphNtNtCslwFuT2d6ECx_4core5clone5Clone5clone: argument 1"}
!570 = distinct !{!570, i1 true, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!571 = distinct !{!571, !570, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!572 = distinct !{!572, i1 true, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core"}
!573 = distinct !{!573, !572, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!574 = distinct !{!574, !570, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!575 = distinct !{!575, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!576 = distinct !{!576, !575, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!577 = distinct !{!577, i1 true, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone"}
!578 = distinct !{!578, !577, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!579 = distinct !{!579, !16, !17}
!580 = distinct !{!580, !17, !16}
!581 = distinct !{!581, i1 true, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core"}
!582 = distinct !{!582, !581, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 1"}
!583 = distinct !{!583, i1 true, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core"}
!584 = distinct !{!584, !583, !"_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!585 = distinct !{!585, !581, !"_RINvXNvMNtCs87CvPiUlf0m_5alloc5sliceSp9to_vec_inNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!586 = distinct !{!586, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!587 = distinct !{!587, !586, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!588 = distinct !{!588, i1 true, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone"}
!589 = distinct !{!589, !588, !"_RNvXse_NtNtCslwFuT2d6ECx_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!590 = distinct !{!590, !16, !17}
!591 = distinct !{!591, !17, !16}
!592 = distinct !{!592, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!593 = distinct !{!593, !592, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!594 = distinct !{!594, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!595 = distinct !{!595, !594, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!596 = distinct !{!596, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_"}
!597 = distinct !{!597, !596, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_: argument 0"}
!598 = distinct !{!598, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_"}
!599 = distinct !{!599, !598, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_: argument 0"}
!600 = distinct !{!600, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_"}
!601 = distinct !{!601, !600, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_: argument 0"}
!602 = distinct !{!602, i1 true, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_"}
!603 = distinct !{!603, !602, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 1"}
!604 = distinct !{!604, i1 true, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_"}
!605 = distinct !{!605, !604, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 1"}
!606 = distinct !{!606, !604, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 0"}
!607 = distinct !{!607, i1 true, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBG_EE8push_mutCsbNMRYq9Xj9a_14rustworkx_core"}
!608 = distinct !{!608, !607, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBG_EE8push_mutCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!609 = distinct !{!609, i1 true, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEE8push_mutCsbNMRYq9Xj9a_14rustworkx_core"}
!610 = distinct !{!610, !609, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBK_EEE8push_mutCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!611 = distinct !{!611, i1 true, !"_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26rbmg_find_perfect_matching"}
!612 = distinct !{!612, !611, !"_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26rbmg_find_perfect_matching: argument 1"}
!613 = distinct !{!613, !611, !"_RNvNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26rbmg_find_perfect_matching: argument 0"}
!614 = distinct !{!614, i1 true, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_"}
!615 = distinct !{!615, !614, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 1"}
!616 = distinct !{!616, i1 true, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_"}
!617 = distinct !{!617, !616, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 1"}
!618 = distinct !{!618, !616, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 0"}
!619 = distinct !{!619, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_"}
!620 = distinct !{!620, !619, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_: argument 0"}
!621 = distinct !{!621, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_"}
!622 = distinct !{!622, !621, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_: argument 0"}
!623 = distinct !{!623, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_"}
!624 = distinct !{!624, !623, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_: argument 0"}
!625 = distinct !{!625, i1 true, !"_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge"}
!626 = distinct !{!626, !625, !"_RNvMs0_NtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloringNtB5_26RegularBipartiteMultiGraph8add_edge: argument 0"}
!627 = distinct !{!627, i1 true, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE9find_edgeB1k_"}
!628 = distinct !{!628, !627, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE9find_edgeB1k_: argument 0"}
!629 = distinct !{!629, i1 true, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE20find_edge_undirectedB1k_"}
!630 = distinct !{!630, !629, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtB9_10UndirectedE20find_edge_undirectedB1k_: argument 0"}
!631 = distinct !{!631, i1 true, !"_RNvMsk_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionuEIBT_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtB7_10UndirectedE30find_edge_undirected_from_nodeB1E_"}
!632 = distinct !{!632, !631, !"_RNvMsk_NtCs68Jln09rRqb_8petgraph10graph_implINtB5_5GraphINtNtCslwFuT2d6ECx_4core6option6OptionuEIBT_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtB7_10UndirectedE30find_edge_undirected_from_nodeB1E_: argument 0"}
!633 = distinct !{!633, i1 true, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core"}
!634 = distinct !{!634, !633, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!635 = distinct !{!635, i1 true, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_"}
!636 = distinct !{!636, !635, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 1"}
!637 = distinct !{!637, i1 true, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_"}
!638 = distinct !{!638, !637, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 1"}
!639 = distinct !{!639, !637, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 0"}
!640 = distinct !{!640, i1 true, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBG_EE8push_mutCsbNMRYq9Xj9a_14rustworkx_core"}
!641 = distinct !{!641, !640, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBG_EE8push_mutCsbNMRYq9Xj9a_14rustworkx_core: argument 0"}
!642 = distinct !{!642, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_"}
!643 = distinct !{!643, !642, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_: argument 0"}
!644 = distinct !{!644, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_"}
!645 = distinct !{!645, !644, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_: argument 0"}
!646 = distinct !{!646, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_"}
!647 = distinct !{!647, !646, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_: argument 0"}
!648 = distinct !{!648, i1 true, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_"}
!649 = distinct !{!649, !648, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 1"}
!650 = distinct !{!650, i1 true, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matching0NCINvXsK_NtB2j_5accumjNtB51_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_"}
!651 = distinct !{!651, !650, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matching0NCINvXsK_NtB2j_5accumjNtB51_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_: argument 0"}
!652 = distinct !{!652, i1 true, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_"}
!653 = distinct !{!653, !652, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_: argument 1"}
!654 = distinct !{!654, !652, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_: argument 0"}
!655 = distinct !{!655, i1 true, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_"}
!656 = distinct !{!656, !655, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 1"}
!657 = distinct !{!657, !655, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 0"}
!658 = distinct !{!658, i1 true, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_"}
!659 = distinct !{!659, !658, !"_RNCNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB7_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4next0B1o_: argument 1"}
!660 = distinct !{!660, i1 true, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matchings_0NCINvXsK_NtB2j_5accumjNtB53_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_"}
!661 = distinct !{!661, !660, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldINtB6_13EdgeReferenceB1d_EjjNCNvB1f_26rbmg_find_perfect_matchings_0NCINvXsK_NtB2j_5accumjNtB53_3Sum3sumINtB3l_3MapB3_B4h_EE0E0EB1h_: argument 0"}
!662 = distinct !{!662, i1 true, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_"}
!663 = distinct !{!663, !662, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_: argument 1"}
!664 = distinct !{!664, !662, !"_RNvXsk_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_14EdgeReferencesNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextB1m_: argument 0"}
!665 = distinct !{!665, i1 true, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_"}
!666 = distinct !{!666, !665, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 1"}
!667 = distinct !{!667, !665, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4EdgeINtNtBc_6option6OptionNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsk_NtB1w_12stable_graphINtB4w_14EdgeReferencesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0INtB4w_13EdgeReferenceB2y_EEB2C_: argument 0"}
!668 = distinct !{!668, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_"}
!669 = distinct !{!669, !668, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_: argument 0"}
!670 = distinct !{!670, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_"}
!671 = distinct !{!671, !670, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_: argument 0"}
!672 = distinct !{!672, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_"}
!673 = distinct !{!673, !672, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphINtNtB4_6option6OptionuEIB1m_NtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataENtBG_10UndirectedEEB1S_: argument 0"}
!674 = distinct !{!674, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_"}
!675 = distinct !{!675, !674, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring26RegularBipartiteMultiGraphEBF_: argument 0"}
!676 = distinct !{!676, i1 true, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_"}
!677 = distinct !{!677, !676, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphuNtNtCsbNMRYq9Xj9a_14rustworkx_core18bipartite_coloring8EdgeDataNtBI_10UndirectedEEB1N_: argument 0"}
end_hunk_1
