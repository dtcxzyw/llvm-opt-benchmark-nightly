Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyyNCINvBY_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3b_3zip3ZipINtNtB8_4iter4IteryEB3V_ENCNvBY_23cluster_pairwise_result0EEs_0E0EB12_:bb.a
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015), !noalias !2014
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016), !noalias !2014
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keyyNCINvB14_13cluster_edgesINtNtNtNtB8_4iter8adapters3map3MapINtNtB3j_3zip3ZipINtNtB6_4iter4IteryEB43_ENCNvB14_23cluster_pairwise_result0EEs_0E0EB18_.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.am = getelementptr [32 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !2017, !noalias !2018
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !2019, !noalias !2020
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !2017, !noalias !2018
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !2019, !noalias !2020
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !2021, !noalias !2018
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !2022, !noalias !2020
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !2021, !noalias !2018
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !2022, !noalias !2020
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keyyNCINvB15_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3k_3zip3ZipINtNtB8_4iter4IteryEB44_ENCNvB15_23cluster_pairwise_result0EEs_0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster7reverseBA_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !18
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !18 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.161 to i1
  %i.br = or i64 %i.bj, %.sroa.023.161
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCINvB17_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3m_3zip3ZipINtNtB8_4iter4IteryEB46_ENCNvB17_23cluster_pairwise_result0EEs_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 288230376151711744) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2001
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCINvBZ_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3c_3zip3ZipINtNtB8_4iter4IteryEB3W_ENCNvBZ_23cluster_pairwise_result0EEs_0E0EB13_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCINvBZ_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3c_3zip3ZipINtNtB8_4iter4IteryEB3W_ENCNvBZ_23cluster_pairwise_result0EEs_0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i.i35, 5     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !2025
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cg = phi ptr [ %i.cs, %.preheader.i ], [ %i.cf, %.critedge.i ] ; 2 uses
  %i.ch = phi ptr [ %i.cq, %.preheader.i ], [ %i.cd, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -32 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cg, i64 -8
  %.val.i.i = load i64, ptr %i.cl, align 8, !alias.scope !2024, !noalias !2026, !noundef !18
  %i.cm = getelementptr i8, ptr %i.ch, i64 -8
  %.val10.i.i = load i64, ptr %i.cm, align 8, !alias.scope !2023, !noalias !2027, !noundef !18
  %i.cn = icmp ult i64 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cn, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !2025, !noalias !2028
  %i.co = xor i1 %i.cn, true
  %i.cp = zext i1 %i.co to i64
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cp ; 3 uses
  %i.cr = zext i1 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cr ; 3 uses
  %i.ct = icmp eq ptr %i.cq, %i.bo
  %i.cu = icmp eq ptr %i.cs, %2
  %or.cond.i.i = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCINvB1c_13cluster_edgesINtNtNtNtBb_4iter8adapters3map3MapINtNtB3E_3zip3ZipINtNtB9_4iter4IteryEB4o_ENCNvB1c_23cluster_pairwise_result0EEs_0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cv = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 3 uses
  %i.cw = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 24
  %.sroa.0.0.val.i.i = load i64, ptr %i.cx, align 8, !alias.scope !2023, !noalias !2029, !noundef !18
  %i.cy = getelementptr i8, ptr %i.cw, i64 24
  %.val.i19.i = load i64, ptr %i.cy, align 8, !alias.scope !2024, !noalias !2030, !noundef !18
  %i.cz = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.da = xor i1 %i.cz, true
  %spec.select.i.i = select i1 %i.cz, ptr %.sroa.0.02.i.i, ptr %i.cw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !2025, !noalias !2031
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %i.dg = icmp ne ptr %i.dc, %i.cf
  %i.dh = icmp ne ptr %i.de, %i.m
  %or.cond.i20.i = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCINvB1c_13cluster_edgesINtNtNtNtBb_4iter8adapters3map3MapINtNtB3E_3zip3ZipINtNtB9_4iter4IteryEB4o_ENCNvB1c_23cluster_pairwise_result0EEs_0E0EB1g_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCINvB1c_13cluster_edgesINtNtNtNtBb_4iter8adapters3map3MapINtNtB3E_3zip3ZipINtNtB9_4iter4IteryEB4o_ENCNvB1c_23cluster_pairwise_result0EEs_0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cs, %.preheader.i ], [ %i.cf, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dc, %.lr.ph.i.i ] ; 2 uses
  %i.di = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dk, i1 false), !alias.scope !2025, !noalias !2032
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCINvBZ_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3c_3zip3ZipINtNtB8_4iter4IteryEB3W_ENCNvBZ_23cluster_pairwise_result0EEs_0E0EB13_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCINvBZ_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3c_3zip3ZipINtNtB8_4iter4IteryEB3W_ENCNvBZ_23cluster_pairwise_result0EEs_0E0EB13_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyyNCINvB1c_13cluster_edgesINtNtNtNtBb_4iter8adapters3map3MapINtNtB3E_3zip3ZipINtNtB9_4iter4IteryEB4o_ENCNvB1c_23cluster_pairwise_result0EEs_0E0EB1g_.exit.i
  %i.dl = shl nuw nsw i64 %i.bm, 1
  %i.dm = or disjoint i64 %i.dl, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit

bb.z:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bk
  %i.do = or i64 %i.bl, 1
  %i.dp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.do, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 1
  %i.ds = xor i32 %i.dr, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCINvB17_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3m_3zip3ZipINtNtB8_4iter4IteryEB46_ENCNvB17_23cluster_pairwise_result0EEs_0E0EB1b_(ptr noalias noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 288230376151711744) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2001
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyyNCINvB18_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3n_3zip3ZipINtNtB8_4iter4IteryEB47_ENCNvB18_23cluster_pairwise_result0EEs_0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCINvBZ_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3c_3zip3ZipINtNtB8_4iter4IteryEB3W_ENCNvBZ_23cluster_pairwise_result0EEs_0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.dm, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyyNCINvBZ_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3c_3zip3ZipINtNtB8_4iter4IteryEB3W_ENCNvBZ_23cluster_pairwise_result0EEs_0E0EB13_.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dt = icmp ugt i64 %i.bd, 1
  br i1 %i.dt, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.du = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.dv = lshr i64 %.sroa.018.0, 1
  %i.dw = add nuw i64 %i.dv, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dx = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dx, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dy = or i64 %1, 1
  %i.dz = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = xor i32 %i.eb, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCINvB17_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3m_3zip3ZipINtNtB8_4iter4IteryEB46_ENCNvB17_23cluster_pairwise_result0EEs_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !2001
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyyNCINvB17_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3m_3zip3ZipINtNtB8_4iter4IteryEB46_ENCNvB17_23cluster_pairwise_result0EEs_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(32) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph105 = phi ptr [ %i.hy, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph104 = phi i64 [ %i.hj, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph103 = phi i32 [ %i.eq, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph102 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph105, i64 24
  %i.d = ptrtoint ptr %.sroa.0.0.ph105 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph102, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph102, i64 24
  %i.f = icmp eq i32 %.sroa.025.0.ph103, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph251

bb.b:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit
  %i.g = icmp eq i32 %i.eq, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph251

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit, %bb.a
  %.sroa.0.0.ph.lcssa96 = phi ptr [ %.sroa.0.0.ph105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit ], [ %0, %bb.a ], [ %i.hy, %.outer ] ; 16 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7Cluster12split_at_mutBA_.exit ], [ %1, %bb.a ], [ %i.hj, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2071)
  call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  %i.h = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.h, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_11sort_by_keyyNCINvB1u_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3J_3zip3ZipINtNtB8_4iter4IteryEB4t_ENCNvB1u_23cluster_pairwise_result0EEs_0E0EB1y_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.i = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.j = icmp samesign ult i64 %3, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %.sroa.16.0.lcssa, 1            ; 10 uses
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.sroa.0.0.ph.lcssa96, i64 56
  %.val8.i.i = load i64, ptr %i.m, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.n = getelementptr i8, ptr %.sroa.0.0.ph.lcssa96, i64 24
  %.val9.i.i = load i64, ptr %i.n, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.o = icmp ult i64 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.0.0.ph.lcssa96, i64 120
  %.val6.i.i = load i64, ptr %i.p, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.q = getelementptr i8, ptr %.sroa.0.0.ph.lcssa96, i64 88
  %.val7.i.i = load i64, ptr %i.q, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.r = icmp ult i64 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.s = zext i1 %i.o to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa96, i64 %i.s ; 3 uses
  %i.u = xor i1 %i.o, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa96, i64 %i.v ; 4 uses
  %i.x = select i1 %i.r, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa96, i64 %i.x ; 4 uses
  %i.z = select i1 %i.r, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa96, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 24
  %.val4.i.i = load i64, ptr %i.ab, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.ac = getelementptr i8, ptr %i.t, i64 24
  %.val5.i.i = load i64, ptr %i.ac, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.ad = icmp ult i64 %.val4.i.i, %.val5.i.i     ; 3 uses
  %i.ae = getelementptr i8, ptr %i.aa, i64 24
  %.val2.i.i = load i64, ptr %i.ae, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.af = getelementptr i8, ptr %i.w, i64 24
  %.val3.i.i = load i64, ptr %i.af, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.ag = icmp ult i64 %.val2.i.i, %.val3.i.i     ; 3 uses
  %i.ah = select i1 %i.ad, ptr %i.y, ptr %i.t, !unpredictable !18
  %i.ai = select i1 %i.ag, ptr %i.w, ptr %i.aa, !unpredictable !18
  %i.aj = select i1 %i.ag, ptr %i.y, ptr %i.w, !unpredictable !18
  %i.ak = select i1 %i.ad, ptr %i.t, ptr %i.aj, !unpredictable !18 ; 3 uses
  %i.al = select i1 %i.ad, ptr %i.w, ptr %i.y, !unpredictable !18
  %i.am = select i1 %i.ag, ptr %i.aa, ptr %i.al, !unpredictable !18 ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.ao = getelementptr i8, ptr %i.ak, i64 24
  %.val1.i.i = load i64, ptr %i.ao, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.ap = icmp ult i64 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.aq = select i1 %i.ap, ptr %i.am, ptr %i.ak, !unpredictable !18
  %i.ar = select i1 %i.ap, ptr %i.ak, ptr %i.am, !unpredictable !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !alias.scope !2073
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !alias.scope !2073
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !alias.scope !2073
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !alias.scope !2073
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa96, i64 %i.k ; 8 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.k ; 4 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 56
  %.val8.i30.i = load i64, ptr %i.ax, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.ay = getelementptr i8, ptr %i.av, i64 24
  %.val9.i31.i = load i64, ptr %i.ay, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.az = icmp ult i64 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.ba = getelementptr i8, ptr %i.av, i64 120
  %.val6.i32.i = load i64, ptr %i.ba, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.bb = getelementptr i8, ptr %i.av, i64 88
  %.val7.i33.i = load i64, ptr %i.bb, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.bc = icmp ult i64 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.bd = zext i1 %i.az to i64
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.bd ; 3 uses
  %i.bf = xor i1 %i.az, true
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.bc, i64 3, i64 2
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.bi ; 4 uses
  %i.bk = select i1 %i.bc, i64 2, i64 3
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.bk ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 24
  %.val4.i34.i = load i64, ptr %i.bm, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.bn = getelementptr i8, ptr %i.be, i64 24
  %.val5.i35.i = load i64, ptr %i.bn, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.bo = icmp ult i64 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bl, i64 24
  %.val2.i36.i = load i64, ptr %i.bp, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.bq = getelementptr i8, ptr %i.bh, i64 24
  %.val3.i37.i = load i64, ptr %i.bq, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.br = icmp ult i64 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.bs = select i1 %i.bo, ptr %i.bj, ptr %i.be, !unpredictable !18
  %i.bt = select i1 %i.br, ptr %i.bh, ptr %i.bl, !unpredictable !18
  %i.bu = select i1 %i.br, ptr %i.bj, ptr %i.bh, !unpredictable !18
  %i.bv = select i1 %i.bo, ptr %i.be, ptr %i.bu, !unpredictable !18 ; 3 uses
  %i.bw = select i1 %i.bo, ptr %i.bh, ptr %i.bj, !unpredictable !18
  %i.bx = select i1 %i.br, ptr %i.bl, ptr %i.bw, !unpredictable !18 ; 3 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  %.val.i38.i = load i64, ptr %i.by, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.bz = getelementptr i8, ptr %i.bv, i64 24
  %.val1.i39.i = load i64, ptr %i.bz, align 8, !alias.scope !2071, !noalias !2072, !noundef !18
  %i.ca = icmp ult i64 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.cb = select i1 %i.ca, ptr %i.bx, ptr %i.bv, !unpredictable !18
  %i.cc = select i1 %i.ca, ptr %i.bv, ptr %i.bx, !unpredictable !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false), !alias.scope !2073
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false), !alias.scope !2073
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !alias.scope !2073
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !alias.scope !2073
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.ph.lcssa96, i64 32, i1 false), !alias.scope !2073
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa96, i64 %i.k
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !alias.scope !2073
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.ci = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.k ; 2 uses
  %i.cj = icmp samesign ult i64 %.sroa.0.0.i, %i.k
  br i1 %i.cj, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCINvB1a_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3p_3zip3ZipINtNtB8_4iter4IteryEB49_ENCNvB1a_23cluster_pairwise_result0EEs_0E0EB1e_.exit.i, %bb.h
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa96, i64 %i.k
  %i.cl = getelementptr [32 x i8], ptr %2, i64 %i.k ; 6 uses
  %i.cm = icmp samesign ult i64 %.sroa.0.0.i, %i.ci
  br i1 %i.cm, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCINvB1a_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3p_3zip3ZipINtNtB8_4iter4IteryEB49_ENCNvB1a_23cluster_pairwise_result0EEs_0E0EB1e_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cw, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming7ClusterNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyyNCINvB1a_13cluster_edgesINtNtNtNtBa_4iter8adapters3map3MapINtNtB3p_3zip3ZipINtNtB8_4iter4IteryEB49_ENCNvB1a_23cluster_pairwise_result0EEs_0E0EB1e_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %.sroa.05.08.1.i ; 2 uses
  %.idx273 = shl nuw nsw i64 %.sroa.05.08.1.i, 5
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx273 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 32, i1 false), !alias.scope !2073
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCs9JgWGBoX3PY_12lance_linalg4simd3f32NtB5_5f32x8INtB7_9FloatSimdfKj8_E12multiply_add:bb.a
  store <8 x float> %i.f, ptr %i.a, align 32
  call fastcc void @_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x863fma15__mm256_fmadd_ps(ptr noalias noundef align 32 captures(address) dereferenceable(32) %0, ptr noalias noundef align 32 captures(address) dereferenceable(32) %i.c, ptr noalias noundef align 32 captures(address) dereferenceable(32) %i.b, ptr noalias noundef align 32 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef float @_RNvXs3_NtNtCs9JgWGBoX3PY_12lance_linalg8distance2l2dNtB5_2L22l2(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %3, ptr %i.d, align 8
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull @53, ptr nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #74
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9286)
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8) acquire, align 8, !noalias !9287
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9287
  store ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, ptr %i.b, align 8, !noalias !9287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9287
  store ptr %i.b, ptr %i.a, align 8, !noalias !9287
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !9287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9287
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.d, %bb.c
  %i.j = load i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, align 8, !range !42, !noalias !9287, !noundef !18
  switch i8 %i.j, label %bb.e [
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.h
  ]

bb.e:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9288)
  call void @llvm.experimental.noalias.scope.decl(metadata !9289)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l211l2_f64_simd.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.k = icmp samesign ult i64 %1, 4
  br i1 %i.k, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %1, 1152921504606846972
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.017.i.i.i = phi double [ -0.000000e+00, %.lr.ph.i.i.i.preheader.new ], [ %i.ai, %.lr.ph.i.i.i ]
  %.sroa.02.016.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ad, %.lr.ph.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.l = or disjoint i64 %.sroa.02.016.i.i.i, 1   ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.016.i.i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.02.016.i.i.i
  %.val14.i.i.i = load double, ptr %i.m, align 8, !alias.scope !9290, !noalias !9291, !noundef !18
  %.val15.i.i.i = load double, ptr %i.n, align 8, !alias.scope !9292, !noalias !9293, !noundef !18
  %i.o = fsub double %.val14.i.i.i, %.val15.i.i.i ; 2 uses
  %i.p = fmul double %i.o, %i.o
  %i.q = fadd double %.sroa.0.017.i.i.i, %i.p
  %i.r = or disjoint i64 %.sroa.02.016.i.i.i, 2   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.l
  %.val14.i.i.i.1 = load double, ptr %i.s, align 8, !alias.scope !9290, !noalias !9291, !noundef !18
  %.val15.i.i.i.1 = load double, ptr %i.t, align 8, !alias.scope !9292, !noalias !9293, !noundef !18
  %i.u = fsub double %.val14.i.i.i.1, %.val15.i.i.i.1 ; 2 uses
  %i.v = fmul double %i.u, %i.u
  %i.w = fadd double %i.q, %i.v
  %i.x = or disjoint i64 %.sroa.02.016.i.i.i, 3   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.r
  %.val14.i.i.i.2 = load double, ptr %i.y, align 8, !alias.scope !9290, !noalias !9291, !noundef !18
  %.val15.i.i.i.2 = load double, ptr %i.z, align 8, !alias.scope !9292, !noalias !9293, !noundef !18
  %i.aa = fsub double %.val14.i.i.i.2, %.val15.i.i.i.2 ; 2 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = fadd double %i.w, %i.ab
  %i.ad = add nuw nsw i64 %.sroa.02.016.i.i.i, 4  ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.x
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.x
  %.val14.i.i.i.3 = load double, ptr %i.ae, align 8, !alias.scope !9290, !noalias !9291, !noundef !18
  %.val15.i.i.i.3 = load double, ptr %i.af, align 8, !alias.scope !9292, !noalias !9293, !noundef !18
  %i.ag = fsub double %.val14.i.i.i.3, %.val15.i.i.i.3 ; 2 uses
  %i.ah = fmul double %i.ag, %i.ag
  %i.ai = fadd double %i.ac, %i.ah                ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i.i

_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.sroa.0.017.i.i.i.epil.init = phi double [ -0.000000e+00, %.lr.ph.i.i.i.preheader ], [ %i.ai, %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i.unr-lcssa ]
  %.sroa.02.016.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ad, %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.017.i.i.i.epil = phi double [ %i.ao, %.lr.ph.i.i.i.epil ], [ %.sroa.0.017.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.02.016.i.i.i.epil = phi i64 [ %i.aj, %.lr.ph.i.i.i.epil ], [ %.sroa.02.016.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.aj = add nuw nsw i64 %.sroa.02.016.i.i.i.epil, 1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.016.i.i.i.epil
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.02.016.i.i.i.epil
  %.val14.i.i.i.epil = load double, ptr %i.ak, align 8, !alias.scope !9290, !noalias !9291, !noundef !18
  %.val15.i.i.i.epil = load double, ptr %i.al, align 8, !alias.scope !9292, !noalias !9293, !noundef !18
  %i.am = fsub double %.val14.i.i.i.epil, %.val15.i.i.i.epil ; 2 uses
  %i.an = fmul double %i.am, %i.am
  %i.ao = fadd double %.sroa.0.017.i.i.i.epil, %i.an ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !9284

_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.epil, %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i.unr-lcssa
  %.lcssa = phi double [ %i.ai, %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i.unr-lcssa ], [ %i.ao, %.lr.ph.i.i.i.epil ]
  %i.ap = fptrunc double %.lcssa to float
  br label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l211l2_f64_simd.exit

bb.f:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.aq = call noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8610l2_f64_avx(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %1)
  br label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l211l2_f64_simd.exit

bb.g:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.ar = call noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f64_avx_fma(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %1)
  br label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l211l2_f64_simd.exit

bb.h:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.as = call noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8613l2_f64_avx512(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %1)
  br label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l211l2_f64_simd.exit

_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l211l2_f64_simd.exit: ; preds = %bb.e, %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi float [ %i.as, %bb.h ], [ %i.aq, %bb.f ], [ %i.ar, %bb.g ], [ -0.000000e+00, %bb.e ], [ %i.ap, %_RINvXs2_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterdEBX_EINtB6_7ZipImplBX_BX_E4folddNCINvNtB8_3map8map_foldTRdB2i_EddNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l213l2_f64_scalar0NCINvXs26_NtNtBa_6traits5accumdNtB3D_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit.i.i ]
  ret float %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal { i32, float } @_RNvXs3_NtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosineNtB5_16CosineBatch8IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 16 captures(none) dereferenceable(64) %0) unnamed_addr #49 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !18 ; 3 uses
  %i.c = add i64 %i.b, 8                          ; 2 uses
  %i.d = icmp ugt i64 %i.b, -9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not = icmp ugt i64 %i.c, %i.f
  %or.cond = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 16, !nonnull !18, !align !37, !noundef !18
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.b ; 2 uses
  store i64 %i.c, ptr %i.a, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load <4 x float>, ptr %i.i, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load <4 x float>, ptr %i.k, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load float, ptr %i.m, align 8, !noundef !18
  %.val7 = load <4 x float>, ptr %i.h, align 4, !noalias !9298 ; 3 uses
  %i.o = getelementptr i8, ptr %i.h, i64 16
  %.val8 = load <4 x float>, ptr %i.o, align 4, !noalias !9299 ; 3 uses
  %i.p = fmul <4 x float> %i.j, %.val7
  %i.q = fmul <4 x float> %i.l, %.val8
  %i.r = fadd <4 x float> %i.p, %i.q              ; 2 uses
  %i.s = fmul <4 x float> %.val7, %.val7
  %i.t = fmul <4 x float> %.val8, %.val8
  %i.u = fadd <4 x float> %i.s, %i.t              ; 2 uses
  %1 = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %2 = fadd <4 x float> %i.r, %1                  ; 2 uses
  %shift = shufflevector <4 x float> %2, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %2, %shift
  %3 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.v = fdiv float %3, %i.n
  %4 = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %5 = fadd <4 x float> %i.u, %4                  ; 2 uses
  %shift12 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop13 = fadd <4 x float> %5, %shift12
  %6 = extractelement <4 x float> %foldExtExtBinop13, i64 0
  %i.w = tail call float @llvm.sqrt.f32(float %6)
  %i.x = fdiv float %i.v, %i.w
  %i.y = fsub float 1.000000e+00, %i.x
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi float [ %i.y, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.z = insertvalue { i32, float } poison, i32 %.sroa.0.0, 0
  %i.aa = insertvalue { i32, float } %i.z, float %.sroa.3.0, 1
  ret { i32, float } %i.aa
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs3_NtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosineNtB5_16CosineBatch8IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator9size_hint(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(64) %1) unnamed_addr #50 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 16, !noundef !18
  %i.e = sub i64 %i.b, %i.d
  %i.f = lshr i64 %i.e, 3                         ; 2 uses
  store i64 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9JgWGBoX3PY_12lance_linalg(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #51 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !18
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !18 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !9308
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i10 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !9308
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i10
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i10, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !9308, !noundef !18
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !18
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted20 = load i64, ptr %i.aj, align 8
  %.promoted21 = load i64, ptr %i.ak, align 8, !alias.scope !9309
  %.promoted23 = load i64, ptr %i.al, align 8, !alias.scope !9309
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !18
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !9310, !noundef !18
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !9310, !noundef !18 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !9310, !noundef !18
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !9310
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !9310
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !9310
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !9309
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !9309
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i17 = load i32, ptr %i.bl, align 1, !alias.scope !9311
  %i.bm = zext i32 %.sroa.014.0.copyload.i17 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i11 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i12 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i11, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i11
  %.sroa.015.0.copyload.i16 = load i16, ptr %i.bq, align 1, !alias.scope !9311
  %i.br = zext i16 %.sroa.015.0.copyload.i16 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i11, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i12
  %i.bv = or disjoint i64 %.sroa.03.0.i11, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i13 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i11, %bb.m ] ; 3 uses
  %.sroa.0.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i12, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i13, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit18

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i13, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !9311, !noundef !18
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i13, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i14
end_hunk_1
begin_hunk_2_@_RNvYNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine16CosineBatch8IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byB8_:bb.a
  %umax3 = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i, i64 -8)
  %i.af = add nsw i64 %umax3, 7
  %i.ag = sub i64 %i.af, %.promoted.i.i
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = zext nneg i64 %i.ah to i128
  %umin4 = tail call i128 @llvm.umin.i128(i128 %umin, i128 %i.ai)
  %i.aj = trunc nuw nsw i128 %umin4 to i64
  %mul = shl nuw i64 %i.aj, 3
  %i.ak = sub i64 -9, %.promoted.i.i
  %i.al = icmp ult i64 %i.ak, %mul
  br i1 %i.al, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.am = and i64 %i.v, 3                         ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = select i1 %i.an, i64 4, i64 %i.am
  %n.vec = sub nsw i64 %i.v, %i.ao                ; 3 uses
  %i.ap = shl i64 %n.vec, 3
  %i.aq = add i64 %.promoted.i.i, %i.ap
  %i.ar = sub i64 %1, %n.vec
  %i.as = add i64 %.promoted.i.i, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.at = phi i64 [ %i.as, %vector.ph ], [ %i.au, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = add i64 %i.at, 32
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !10383

middle.block:                                     ; preds = %vector.body
  %i.aw = add i64 %i.at, 24
  store i64 %i.aw, ptr %i.a, align 16, !alias.scope !10385
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.promoted.i.i, %vector.scevcheck ], [ %.promoted.i.i, %bb.b ], [ %i.aq, %middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.ar, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.ax = phi i64 [ %i.ay, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.ba, %bb.c ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ay = add i64 %i.ax, 8                        ; 3 uses
  %i.az = icmp ugt i64 %i.ax, -9
  %.not.i.i.i = icmp ugt i64 %i.ay, %i.c
  %or.cond.i.i.i = select i1 %i.az, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine16CosineBatch8IterNtB4_13SpecAdvanceBy15spec_advance_byB1j_.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  store i64 %i.ay, ptr %i.a, align 16, !alias.scope !10385
  %i.ba = add i64 %.sroa.01.0.i.i, -1             ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine16CosineBatch8IterNtB4_13SpecAdvanceBy15spec_advance_byB1j_.exit, label %scalar.ph, !llvm.loop !10384

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine16CosineBatch8IterNtB4_13SpecAdvanceBy15spec_advance_byB1j_.exit: ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.sroa.01.0.i.i, %scalar.ph ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal { i32, float } @_RNvYNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine16CosineBatch8IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3nthB8_(ptr noalias nofree noundef align 16 captures(none) dereferenceable(64) %0, i64 noundef %1) unnamed_addr #43 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre = load i64, ptr %.phi.trans.insert, align 16, !alias.scope !10402
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre5 = load i64, ptr %.phi.trans.insert4, align 8, !alias.scope !10402
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10403 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %.phi.trans.insert, align 16, !alias.scope !10403 ; 11 uses
  %i.c = zext i64 %i.b to i128
  %i.d = add nuw nsw i128 %i.c, 1
  %i.e = add i64 %.promoted.i.i.i, 8
  %i.f = zext i64 %i.e to i128                    ; 2 uses
  %i.g = tail call i128 @llvm.umax.i128(i128 %i.d, i128 %i.f)
  %i.h = add nuw nsw i128 %i.g, 7
  %i.i = sub nsw i128 %i.h, %i.f
  %.fr16 = freeze i128 %i.i
  %i.j = lshr i128 %.fr16, 3
  %i.k = add i64 %1, -1
  %i.l = zext i64 %i.k to i128
  %i.m = tail call i128 @llvm.umin.i128(i128 %i.j, i128 %i.l)
  %i.n = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i.i, i64 -8)
  %i.o = add nsw i64 %i.n, 7
  %i.p = sub i64 %i.o, %.promoted.i.i.i
  %i.q = lshr i64 %i.p, 3
  %i.r = zext nneg i64 %i.q to i128
  %i.s = tail call i128 @llvm.umin.i128(i128 %i.m, i128 %i.r)
  %i.t = trunc nuw nsw i128 %i.s to i64           ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.v = zext i64 %i.b to i128
  %i.w = add nuw nsw i128 %i.v, 1
  %i.x = add i64 %.promoted.i.i.i, 8
  %i.y = zext i64 %i.x to i128                    ; 2 uses
  %umax = tail call i128 @llvm.umax.i128(i128 %i.w, i128 %i.y)
  %i.z = add nuw nsw i128 %umax, 7
  %i.aa = sub nsw i128 %i.z, %i.y
  %.fr17 = freeze i128 %i.aa
  %i.ab = lshr i128 %.fr17, 3
  %i.ac = add i64 %1, -1
  %i.ad = zext i64 %i.ac to i128
  %umin = tail call i128 @llvm.umin.i128(i128 %i.ab, i128 %i.ad)
  %umax13 = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i.i, i64 -8)
  %i.ae = add nsw i64 %umax13, 7
  %i.af = sub i64 %i.ae, %.promoted.i.i.i
  %i.ag = lshr i64 %i.af, 3
  %i.ah = zext nneg i64 %i.ag to i128
  %umin14 = tail call i128 @llvm.umin.i128(i128 %umin, i128 %i.ah)
  %i.ai = trunc nuw nsw i128 %umin14 to i64
  %mul = shl nuw i64 %i.ai, 3
  %i.aj = sub i64 -9, %.promoted.i.i.i
  %i.ak = icmp ult i64 %i.aj, %mul
  br i1 %i.ak, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.al = and i64 %i.u, 3                         ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = select i1 %i.am, i64 4, i64 %i.al
  %n.vec = sub nsw i64 %i.u, %i.an                ; 3 uses
  %i.ao = shl i64 %n.vec, 3
  %i.ap = add i64 %.promoted.i.i.i, %i.ao
  %i.aq = sub i64 %1, %n.vec
  %i.ar = add i64 %.promoted.i.i.i, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.as = phi i64 [ %i.ar, %vector.ph ], [ %i.at, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = add i64 %i.as, 32
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !10396

middle.block:                                     ; preds = %vector.body
  %i.av = add i64 %i.as, 24
  store i64 %i.av, ptr %.phi.trans.insert, align 16, !alias.scope !10403
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.promoted.i.i.i, %vector.scevcheck ], [ %.promoted.i.i.i, %bb.b ], [ %i.ap, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.aq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.aw = phi i64 [ %i.ax, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.az, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ]
  %i.ax = add i64 %i.aw, 8                        ; 4 uses
  %i.ay = icmp ugt i64 %i.aw, -9
  %.not.i.i.i.i = icmp ugt i64 %i.ax, %i.b
  %or.cond.i.i.i.i = select i1 %i.ay, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RNvYNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine16CosineBatch8IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byB8_.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  store i64 %i.ax, ptr %.phi.trans.insert, align 16, !alias.scope !10403
  %i.az = add i64 %.sroa.01.0.i.i.i, -1           ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %scalar.ph, !llvm.loop !10397

.loopexit:                                        ; preds = %bb.c, %..loopexit_crit_edge
  %i.bb = phi i64 [ %.pre5, %..loopexit_crit_edge ], [ %i.b, %bb.c ]
  %i.bc = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.ax, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10402)
  %i.bd = add i64 %i.bc, 8                        ; 2 uses
  %i.be = icmp ugt i64 %i.bc, -9
  %.not.i = icmp ugt i64 %i.bd, %i.bb
  %or.cond.i = select i1 %i.be, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_RNvYNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine16CosineBatch8IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byB8_.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load ptr, ptr %0, align 16, !alias.scope !10402, !nonnull !18, !align !37, !noundef !18
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bc ; 2 uses
  store i64 %i.bd, ptr %i.bf, align 16, !alias.scope !10402
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load <4 x float>, ptr %i.bi, align 16, !alias.scope !10402
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bl = load <4 x float>, ptr %i.bk, align 16, !alias.scope !10402
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load float, ptr %i.bm, align 8, !alias.scope !10402, !noundef !18
  %.val7.i = load <4 x float>, ptr %i.bh, align 4, !noalias !10404 ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bh, i64 16
  %.val8.i = load <4 x float>, ptr %i.bo, align 4, !noalias !10405 ; 3 uses
  %i.bp = fmul <4 x float> %i.bj, %.val7.i
  %i.bq = fmul <4 x float> %i.bl, %.val8.i
  %i.br = fadd <4 x float> %i.bp, %i.bq           ; 2 uses
  %i.bs = fmul <4 x float> %.val7.i, %.val7.i
  %i.bt = fmul <4 x float> %.val8.i, %.val8.i
  %i.bu = fadd <4 x float> %i.bs, %i.bt           ; 2 uses
  %2 = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %3 = fadd <4 x float> %i.br, %2                 ; 2 uses
  %shift = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %3, %shift
  %4 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.bv = fdiv float %4, %i.bn
  %5 = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %6 = fadd <4 x float> %i.bu, %5                 ; 2 uses
  %shift19 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop20 = fadd <4 x float> %6, %shift19
  %7 = extractelement <4 x float> %foldExtExtBinop20, i64 0
  %i.bw = tail call float @llvm.sqrt.f32(float %7)
  %i.bx = fdiv float %i.bv, %i.bw
  %i.by = fsub float 1.000000e+00, %i.bx
  br label %_RNvYNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine16CosineBatch8IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byB8_.exit

_RNvYNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosine16CosineBatch8IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byB8_.exit: ; preds = %scalar.ph, %bb.d, %.loopexit
  %.sroa.3.0 = phi float [ undef, %.loopexit ], [ %i.by, %bb.d ], [ undef, %scalar.ph ]
  %.sroa.0.0 = phi i32 [ 0, %.loopexit ], [ 1, %bb.d ], [ 0, %scalar.ph ]
  %i.bz = insertvalue { i32, float } poison, i32 %.sroa.0.0, 0
  %i.ca = insertvalue { i32, float } %i.bz, float %.sroa.3.0, 1
  ret { i32, float } %i.ca
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.h
  %.sroa.0.047.i = phi ptr [ %.sroa.0.122.i, %bb.h ], [ @311, %bb.a ] ; 3 uses
  %.sroa.6.046.i = phi i64 [ %.sroa.6.120.i, %bb.h ], [ 61, %bb.a ] ; 6 uses
  %i.a = tail call { i64, ptr } @_RNvXs3_NtNtNtCsgczF5crJ4sT_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.047.i, i64 noundef %.sroa.6.046.i) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 11 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 7 uses
  %i.e = trunc nuw i64 %i.b to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = and i64 %i.d, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %bb.g
    i64 0, label %.split42.i
    i64 1, label %.split41.i
  ], !prof !40

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = icmp eq ptr %i.c, null
  br i1 %i.g, label %_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs9JgWGBoX3PY_12lance_linalg.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %.sroa.6.046.i, %i.d
  br i1 %i.h, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %.sroa.6.046.i, i64 noundef %.sroa.6.046.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @471) #74
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = sub nuw nsw i64 %.sroa.6.046.i, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.047.i, i64 %i.d
  br label %bb.h

.split.i:                                         ; preds = %bb.b
  %.mask.i = and i64 %i.d, -4294967296
  %i.k = icmp eq i64 %.mask.i, 17179869184
  br i1 %i.k, label %.thread.i, label %_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs9JgWGBoX3PY_12lance_linalg.exit

.split42.i:                                       ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !10406, !noundef !18
  %i.n = icmp eq i8 %i.m, 35
  br i1 %i.n, label %.thread.i, label %_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs9JgWGBoX3PY_12lance_linalg.exit

.split41.i:                                       ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.c, i64 15
  %i.p = load i8, ptr %i.o, align 8, !range !10406, !noundef !18
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %.thread.i, label %_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs9JgWGBoX3PY_12lance_linalg.exit

bb.g:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.d, 32
  %i.s = icmp ult ptr %i.c, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8
  %spec.select.i.i.i = select i1 %i.s, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.t = icmp ne i8 %spec.select.i.i.i, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.u, label %.thread.i, label %_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs9JgWGBoX3PY_12lance_linalg.exit

.thread.i:                                        ; preds = %bb.g, %.split41.i, %.split42.i, %.split.i
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs9JgWGBoX3PY_12lance_linalg(ptr %i.c)
  br label %bb.h

bb.h:                                             ; preds = %.thread.i, %bb.f
  %.sroa.0.122.i = phi ptr [ %.sroa.0.047.i, %.thread.i ], [ %i.j, %bb.f ]
  %.sroa.6.120.i = phi i64 [ %.sroa.6.046.i, %.thread.i ], [ %i.i, %bb.f ] ; 2 uses
  %i.v = icmp eq i64 %.sroa.6.120.i, 0
  br i1 %i.v, label %_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs9JgWGBoX3PY_12lance_linalg.exit, label %.lr.ph.i

_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.h, %bb.g, %.split41.i, %.split42.i, %.split.i, %bb.c
  %.sroa.0.0 = phi ptr [ %i.c, %bb.g ], [ null, %bb.h ], [ @470, %bb.c ], [ %i.c, %.split42.i ], [ %i.c, %.split41.i ], [ %i.c, %.split.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #55

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #55

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #55

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #56

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128, ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #58

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #59

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128, ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs8_NtCseYO0BYRUZk5_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128, ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #59

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #60

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #61

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #60

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #59

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #62

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #59

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray7try_new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noundef nonnull, i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB2_18FixedSizeListArray10into_parts(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #62

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() unnamed_addr #56

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #55

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCseYO0BYRUZk5_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtCseYO0BYRUZk5_10rayon_core8registry15global_registry() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsgczF5crJ4sT_3std3env4__var(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2
end_hunk_2
begin_hunk_3_@_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema6fieldsNtB2_6FieldsNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsgczF5crJ4sT_3std2io5errorNtB2_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs40k4W9msRzi_5alloc3stre12to_lowercase(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_7to_data(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10child_data(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(184), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsgczF5crJ4sT_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_21get_array_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_22get_buffer_memory_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4YAKbnGhBJc_12arrow_buffer5alloc10AllocationEL_E9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt32TypeEE9drop_slowCsaSUzbtlTZbr_30datafusion_functions_aggregate(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt64TypeEE9drop_slowCsaSUzbtlTZbr_30datafusion_functions_aggregate(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCseYO0BYRUZk5_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTaIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceE9drop_slowCs8SUNSmrkv52_12arrow_schema(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema5fieldNtB2_5FieldNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCscI6d9CVNmLh_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray22as_fixed_size_list_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsgczF5crJ4sT_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #62

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #72

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #73

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #62

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.ctpop.v4i8(<4 x i8>) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i64> @llvm.ctpop.v16i64(<16 x i64>) #62

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #62

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.abs.v16i16(<16 x i16>, i1 immarg) #60

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umax.i128(i128, i128) #62

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #62

attributes #0 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #9 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #20 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #22 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+avx2,+avx512f,+avx512vpopcntdq,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+f16c,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #25 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #26 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #27 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #28 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #29 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #30 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #31 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+avx2,+avx512bw,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+avx2,+avx512f,+avx512vnni,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #32 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #33 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #34 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #35 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #37 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #38 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #39 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+ssse3" }
attributes #40 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+f16c,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #41 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3,+avx,+fma,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #42 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #55 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #56 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #59 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #60 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #61 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #62 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #63 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #64 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #65 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #66 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #67 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #68 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #69 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #70 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #71 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #72 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #73 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #74 = { noreturn }
attributes #75 = { cold noreturn nounwind }
attributes #76 = { nounwind }
attributes #77 = { cold }
attributes #78 = { "function-inline-cost-multiplier"="2" }
attributes #79 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !{null, null}
!1 = distinct !{null, null}
!2 = distinct !{null, null}
!3 = distinct !{!3, !"_RNvXs12_NtNtCscI6d9CVNmLh_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!4 = distinct !{!4, !3, !"_RNvXs12_NtNtCscI6d9CVNmLh_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!5 = distinct !{!5, !3, !"_RNvXs12_NtNtCscI6d9CVNmLh_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!6 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs9JgWGBoX3PY_12lance_linalg, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs9JgWGBoX3PY_12lance_linalg, null}
!7 = distinct !{null, null}
!8 = distinct !{!8, !"_RINvNtCscI6d9CVNmLh_4core3ptr14read_unalignedNtNtNtB4_9core_arch3x867___m512iECs9JgWGBoX3PY_12lance_linalg"}
!9 = distinct !{!9, !8, !"_RINvNtCscI6d9CVNmLh_4core3ptr14read_unalignedNtNtNtB4_9core_arch3x867___m512iECs9JgWGBoX3PY_12lance_linalg: argument 0"}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 2, !"RtLibUseGOT", i32 1}
!15 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i8 0, i8 3}
!18 = !{}
!19 = !{i64 0, i64 2}
!20 = !{!"branch_weights", i32 1, i32 4001}
!21 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!22 = !{i8 0, i8 2}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{i64 8}
!25 = !{!"branch_weights", i32 1, i32 1999}
!26 = !{!"branch_weights", i32 0, i32 1}
!27 = !{!"branch_weights", i32 2002, i32 2000}
!28 = !{i64 1, i64 536870913}
!29 = !{i64 0, i64 -9223372036854775808}
!30 = !{i8 0, i8 41}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 1}
!33 = !{i64 -1, i64 -9223372036854775808}
!34 = !{i64 1, i64 -9223372036854775807}
!35 = !{i64 0, i64 3}
!36 = !{i64 0, i64 -9223372036854775807}
!37 = !{i64 4}
!38 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECs9JgWGBoX3PY_12lance_linalg}
!39 = !{i64 0, i64 -9223372036854775788}
!40 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!41 = !{i8 -1, i8 41}
!42 = !{i8 0, i8 10}
!43 = !{!4}
!44 = !{!5}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 4001, i32 4000000}
!48 = !{i64 0, i64 9718196733118104, i64 9718286927431350, i64 9718420071417547}
!49 = !{i64 -1, i64 -9223372036854775788}
!50 = !{i8 0, i8 4}
!51 = !{i64 2}
!52 = !{!9}
!53 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!54 = !{!"branch_weights", i32 4, i32 28}
!55 = !{!"branch_weights", i32 8, i32 56}
!56 = distinct !{!56, !"_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtCs9JgWGBoX3PY_12lance_linalg4simd8amx_fp1613amx_supported0E0zE0EB2m_"}
!57 = distinct !{!57, !56, !"_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtCs9JgWGBoX3PY_12lance_linalg4simd8amx_fp1613amx_supported0E0zE0EB2m_: argument 0"}
!58 = !{!57}
!59 = distinct !{!59, !"_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7dot_f1617amx_fp16_disabled0E0zE0EB2m_"}
!60 = distinct !{!60, !59, !"_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7dot_f1617amx_fp16_disabled0E0zE0EB2m_: argument 0"}
!61 = !{!60}
!62 = !{!"branch_weights", i32 1, i32 585287003, i32 1561415935, i32 780708}
!63 = distinct !{!63, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTjjEEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB63_34pairwise_hamming_distance_parallel0EE0NCB37_s_0INtB5l_13CollectResultB61_EB82_E0TB82_B82_EE0B8z_EB67_"}
!64 = distinct !{!64, !63, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTjjEEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB63_34pairwise_hamming_distance_parallel0EE0NCB37_s_0INtB5l_13CollectResultB61_EB82_E0TB82_B82_EE0B8z_EB67_: argument 0"}
!65 = distinct !{!65, !63, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTjjEEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB63_34pairwise_hamming_distance_parallel0EE0NCB37_s_0INtB5l_13CollectResultB61_EB82_E0TB82_B82_EE0B8z_EB67_: argument 1"}
!66 = distinct !{!66, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_3vec13DrainProducerTjjEEINtNtB3i_3map11MapConsumerINtNtNtB3i_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB67_34pairwise_hamming_distance_parallel0EE0NCB3b_s_0INtB5p_13CollectResultB65_EB86_E0TB86_B86_EE0B8D_EB6b_"}
!67 = distinct !{!67, !66, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_3vec13DrainProducerTjjEEINtNtB3i_3map11MapConsumerINtNtNtB3i_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB67_34pairwise_hamming_distance_parallel0EE0NCB3b_s_0INtB5p_13CollectResultB65_EB86_E0TB86_B86_EE0B8D_EB6b_: argument 1"}
!68 = distinct !{!68, !66, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_3vec13DrainProducerTjjEEINtNtB3i_3map11MapConsumerINtNtNtB3i_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB67_34pairwise_hamming_distance_parallel0EE0NCB3b_s_0INtB5p_13CollectResultB65_EB86_E0TB86_B86_EE0B8D_EB6b_: argument 0"}
!69 = distinct !{!69, !"_RNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB8_8Registry14in_worker_coldNCINvNtBa_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1R_3vec13DrainProducerTjjEEINtNtB1P_3map11MapConsumerINtNtNtB1P_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4E_34pairwise_hamming_distance_parallel0EE0NCB1I_s_0INtB3W_13CollectResultB4C_EB6D_E0TB6D_B6D_EE0B4I_"}
!70 = distinct !{!70, !69, !"_RNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB8_8Registry14in_worker_coldNCINvNtBa_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1R_3vec13DrainProducerTjjEEINtNtB1P_3map11MapConsumerINtNtNtB1P_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4E_34pairwise_hamming_distance_parallel0EE0NCB1I_s_0INtB3W_13CollectResultB4C_EB6D_E0TB6D_B6D_EE0B4I_: argument 1"}
!71 = distinct !{!71, !69, !"_RNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB8_8Registry14in_worker_coldNCINvNtBa_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1R_3vec13DrainProducerTjjEEINtNtB1P_3map11MapConsumerINtNtNtB1P_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4E_34pairwise_hamming_distance_parallel0EE0NCB1I_s_0INtB3W_13CollectResultB4C_EB6D_E0TB6D_B6D_EE0B4I_: argument 0"}
!72 = distinct !{null, null, null}
!73 = distinct !{!73, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCseYO0BYRUZk5_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerTjjEEINtNtB3t_3map11MapConsumerINtNtNtB3t_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB6i_34pairwise_hamming_distance_parallel0EE0NCB3m_s_0INtB5A_13CollectResultB6g_EB8h_E0TB8h_B8h_EE00B8O_EEB6m_"}
!74 = distinct !{!74, !73, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCseYO0BYRUZk5_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerTjjEEINtNtB3t_3map11MapConsumerINtNtNtB3t_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB6i_34pairwise_hamming_distance_parallel0EE0NCB3m_s_0INtB5A_13CollectResultB6g_EB8h_E0TB8h_B8h_EE00B8O_EEB6m_: argument 0"}
!75 = distinct !{!75, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTjjEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB65_34pairwise_hamming_distance_parallel0EE0NCB39_s_0INtB5n_13CollectResultB63_EB84_E0TB84_B84_EE00EEEB69_"}
!76 = distinct !{!76, !75, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerTjjEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB65_34pairwise_hamming_distance_parallel0EE0NCB39_s_0INtB5n_13CollectResultB63_EB84_E0TB84_B84_EE00EEEB69_: argument 0"}
!77 = distinct !{!77, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB18_8Registry14in_worker_coldNCINvNtB1a_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2T_3vec13DrainProducerTjjEEINtNtB2R_3map11MapConsumerINtNtNtB2R_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB5G_34pairwise_hamming_distance_parallel0EE0NCB2K_s_0INtB4Y_13CollectResultB5E_EB7F_E0TB7F_B7F_EE00EEB5K_"}
!78 = distinct !{!78, !77, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB18_8Registry14in_worker_coldNCINvNtB1a_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2T_3vec13DrainProducerTjjEEINtNtB2R_3map11MapConsumerINtNtNtB2R_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB5G_34pairwise_hamming_distance_parallel0EE0NCB2K_s_0INtB4Y_13CollectResultB5E_EB7F_E0TB7F_B7F_EE00EEB5K_: argument 0"}
!79 = distinct !{!79, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTjjEEINtNtB2t_3map11MapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB5i_34pairwise_hamming_distance_parallel0EE0NCB2m_s_0INtB4A_13CollectResultB5g_EB7h_E0TB7h_B7h_EE00EB5m_"}
!80 = distinct !{!80, !79, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerTjjEEINtNtB2t_3map11MapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB5i_34pairwise_hamming_distance_parallel0EE0NCB2m_s_0INtB4A_13CollectResultB5g_EB7h_E0TB7h_B7h_EE00EB5m_: argument 0"}
!81 = distinct !{!81, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNtCseYO0BYRUZk5_10rayon_core4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerTjjEEINtNtB1A_3map11MapConsumerINtNtNtB1A_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4p_34pairwise_hamming_distance_parallel0EE0NCB1t_s_0INtB3H_13CollectResultB4n_EB6o_E0EB4t_"}
!82 = distinct !{!82, !81, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNtCseYO0BYRUZk5_10rayon_core4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerTjjEEINtNtB1A_3map11MapConsumerINtNtNtB1A_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4p_34pairwise_hamming_distance_parallel0EE0NCB1t_s_0INtB3H_13CollectResultB4n_EB6o_E0EB4t_: argument 0"}
!83 = distinct !{!83, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTjjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB3w_34pairwise_hamming_distance_parallel0EEs_0EB3A_"}
!84 = distinct !{!84, !83, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTjjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB3w_34pairwise_hamming_distance_parallel0EEs_0EB3A_: argument 0"}
!85 = distinct !{!85, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs8b6P7Nzverp_5rayon3vec13DrainProducerTjjEEECs9JgWGBoX3PY_12lance_linalg"}
!86 = distinct !{!86, !85, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs8b6P7Nzverp_5rayon3vec13DrainProducerTjjEEECs9JgWGBoX3PY_12lance_linalg: argument 0"}
!87 = distinct !{!87, !"_RNvXsa_NtCs8b6P7Nzverp_5rayon3vecINtB5_13DrainProducerTjjEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9JgWGBoX3PY_12lance_linalg"}
!88 = distinct !{!88, !87, !"_RNvXsa_NtCs8b6P7Nzverp_5rayon3vecINtB5_13DrainProducerTjjEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9JgWGBoX3PY_12lance_linalg: argument 0"}
!89 = distinct !{!89, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTjjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB3w_34pairwise_hamming_distance_parallel0EE0EB3A_"}
!90 = distinct !{!90, !89, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerTjjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB3w_34pairwise_hamming_distance_parallel0EE0EB3A_: argument 0"}
!91 = distinct !{!91, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs8b6P7Nzverp_5rayon3vec13DrainProducerTjjEEECs9JgWGBoX3PY_12lance_linalg"}
!92 = distinct !{!92, !91, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs8b6P7Nzverp_5rayon3vec13DrainProducerTjjEEECs9JgWGBoX3PY_12lance_linalg: argument 0"}
!93 = distinct !{!93, !"_RNvXsa_NtCs8b6P7Nzverp_5rayon3vecINtB5_13DrainProducerTjjEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9JgWGBoX3PY_12lance_linalg"}
!94 = distinct !{!94, !93, !"_RNvXsa_NtCs8b6P7Nzverp_5rayon3vecINtB5_13DrainProducerTjjEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9JgWGBoX3PY_12lance_linalg: argument 0"}
!95 = !{!64}
!96 = !{!71, !70, !68, !67, !64, !65}
!97 = !{!68, !64}
!98 = !{!68, !67, !64, !65}
!99 = !{!78, !76, !74}
!100 = !{!88, !86, !84, !82, !80, !78, !76, !74}
!101 = !{!94, !92, !90, !82, !80, !78, !76, !74}
!102 = !{!65}
!103 = distinct !{!103, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTjjEEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB63_41pairwise_hamming_distance_binary_parallel0EE0NCB37_s_0INtB5l_13CollectResultB61_EB89_E0TB89_B89_EE0B8G_EB67_"}
!104 = distinct !{!104, !103, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTjjEEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB63_41pairwise_hamming_distance_binary_parallel0EE0NCB37_s_0INtB5l_13CollectResultB61_EB89_E0TB89_B89_EE0B8G_EB67_: argument 0"}
!105 = distinct !{!105, !103, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE4withNCINvMs4_NtBY_8registryNtB1T_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3g_3vec13DrainProducerTjjEEINtNtB3e_3map11MapConsumerINtNtNtB3e_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB63_41pairwise_hamming_distance_binary_parallel0EE0NCB37_s_0INtB5l_13CollectResultB61_EB89_E0TB89_B89_EE0B8G_EB67_: argument 1"}
!106 = distinct !{!106, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_3vec13DrainProducerTjjEEINtNtB3i_3map11MapConsumerINtNtNtB3i_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB67_41pairwise_hamming_distance_binary_parallel0EE0NCB3b_s_0INtB5p_13CollectResultB65_EB8d_E0TB8d_B8d_EE0B8K_EB6b_"}
!107 = distinct !{!107, !106, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_3vec13DrainProducerTjjEEINtNtB3i_3map11MapConsumerINtNtNtB3i_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB67_41pairwise_hamming_distance_binary_parallel0EE0NCB3b_s_0INtB5p_13CollectResultB65_EB8d_E0TB8d_B8d_EE0B8K_EB6b_: argument 1"}
!108 = distinct !{!108, !106, !"_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyNtNtCseYO0BYRUZk5_10rayon_core5latch9LockLatchE8try_withNCINvMs4_NtBY_8registryNtB1X_8Registry14in_worker_coldNCINvNtBY_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3k_3vec13DrainProducerTjjEEINtNtB3i_3map11MapConsumerINtNtNtB3i_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB67_41pairwise_hamming_distance_binary_parallel0EE0NCB3b_s_0INtB5p_13CollectResultB65_EB8d_E0TB8d_B8d_EE0B8K_EB6b_: argument 0"}
!109 = distinct !{!109, !"_RNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB8_8Registry14in_worker_coldNCINvNtBa_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1R_3vec13DrainProducerTjjEEINtNtB1P_3map11MapConsumerINtNtNtB1P_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4E_41pairwise_hamming_distance_binary_parallel0EE0NCB1I_s_0INtB3W_13CollectResultB4C_EB6K_E0TB6K_B6K_EE0B4I_"}
!110 = distinct !{!110, !109, !"_RNCINvMs4_NtCseYO0BYRUZk5_10rayon_core8registryNtB8_8Registry14in_worker_coldNCINvNtBa_4join12join_contextNCINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1R_3vec13DrainProducerTjjEEINtNtB1P_3map11MapConsumerINtNtNtB1P_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB4E_41pairwise_hamming_distance_binary_parallel0EE0NCB1I_s_0INtB3W_13CollectResultB4C_EB6K_E0TB6K_B6K_EE0B4I_: argument 1"}
end_hunk_3
