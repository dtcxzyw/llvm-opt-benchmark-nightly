Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.04?download=true
inline.NumInlined: 1659
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RINvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB6_8BTreeSetINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEE6retainNCNvMs1_NtB1q_11table_indexNtB2p_14CoreTableIndex13prune_removed0EB1q_:bb.a
  %i.u = load ptr, ptr %i.t, align 8, !noalias !707, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !noalias !707, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !noalias !707, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !707, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !707, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !707, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !707, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = add i64 %.sroa.3.0.i17.i.i, -8          ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvMsq_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker3MutINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB8_7set_val9SetValZSTNtB1k_14LeafOrInternalE11lower_boundB1B_EB1U_.exit.i.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker3MutINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB8_7set_val9SetValZSTNtB1i_14LeafOrInternalE22find_lower_bound_indexB1y_EB1R_.exit.i.i.i

_RINvMsq_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker3MutINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB8_7set_val9SetValZSTNtB1k_14LeafOrInternalE11lower_boundB1B_EB1U_.exit.i.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker3MutINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB8_7set_val9SetValZSTNtB1i_14LeafOrInternalE22find_lower_bound_indexB1y_EB1R_.exit.i.i.i.prol.loopexit, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker3MutINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB8_7set_val9SetValZSTNtB1i_14LeafOrInternalE22find_lower_bound_indexB1y_EB1R_.exit.i.i.i, %bb.b
  %.sroa.0.0.i.lcssa.i.i = phi ptr [ %i.j, %bb.b ], [ %.lcssa45.unr, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker3MutINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB8_7set_val9SetValZSTNtB1i_14LeafOrInternalE22find_lower_bound_indexB1y_EB1R_.exit.i.i.i.prol.loopexit ], [ %i.ag, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker3MutINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB8_7set_val9SetValZSTNtB1i_14LeafOrInternalE22find_lower_bound_indexB1y_EB1R_.exit.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i8 0, i64 16, i1 false), !noalias !708
  br label %_RINvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB6_8BTreeSetINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEE10extract_ifNCINvB2_6retainNCNvMs1_NtB1q_11table_indexNtB2J_14CoreTableIndex13prune_removed0E0NtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEB1q_.exit

_RINvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB6_8BTreeSetINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEE10extract_ifNCINvB2_6retainNCNvMs1_NtB1q_11table_indexNtB2J_14CoreTableIndex13prune_removed0E0NtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEB1q_.exit: ; preds = %bb.a, %_RINvMsq_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker3MutINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB8_7set_val9SetValZSTNtB1k_14LeafOrInternalE11lower_boundB1B_EB1U_.exit.i.i
  %.sroa.5.0.i = phi ptr [ %0, %_RINvMsq_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker3MutINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB8_7set_val9SetValZSTNtB1k_14LeafOrInternalE11lower_boundB1B_EB1U_.exit.i.i ], [ null, %bb.a ]
  %.sroa.7.0.i = phi ptr [ %.sroa.0.0.i.lcssa.i.i, %_RINvMsq_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker3MutINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB8_7set_val9SetValZSTNtB1k_14LeafOrInternalE11lower_boundB1B_EB1U_.exit.i.i ], [ null, %bb.a ] ; 2 uses
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !703
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.aj, align 8, !alias.scope !703
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !703
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 6 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false), !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !711)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !712
  %.sroa.6.sroa.0.0.copyload40.i.i16.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !713
  %.sroa.6.sroa.5.0.copyload41.i.i17.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !713
  store ptr null, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !713
  %.not42.i.i18.i = icmp eq ptr %.sroa.7.0.i, null
  br i1 %.not42.i.i18.i, label %_RNvXsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_9ExtractIfINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullNCINvMsc_B5_INtB5_8BTreeSetB17_E6retainNCNvMs1_NtB1q_11table_indexNtB3D_14CoreTableIndex13prune_removed0E0ENtNtNtNtB2f_4iter6traits8iterator8Iterator4nextB1q_.exit.thread.i, label %.lr.ph.i.i.lr.ph.i

.lr.ph.i.i.lr.ph.i:                               ; preds = %_RINvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB6_8BTreeSetINtNtBc_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEE10extract_ifNCINvB2_6retainNCNvMs1_NtB1q_11table_indexNtB2J_14CoreTableIndex13prune_removed0E0NtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullEB1q_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.511.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.517.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.718.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.4.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEINvNtBe_3mem4dropB1f_EE0B1O_.exit.i, %.lr.ph.i.i.lr.ph.i
  %.sroa.6.sroa.5.0.copyload41.i.i21.i = phi i64 [ %.sroa.6.sroa.5.0.copyload41.i.i17.i, %.lr.ph.i.i.lr.ph.i ], [ %.sroa.6.sroa.5.0.copyload41.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEINvNtBe_3mem4dropB1f_EE0B1O_.exit.i ]
  %.sroa.6.sroa.0.0.copyload40.i.i20.i = phi i64 [ %.sroa.6.sroa.0.0.copyload40.i.i16.i, %.lr.ph.i.i.lr.ph.i ], [ %.sroa.6.sroa.0.0.copyload40.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEINvNtBe_3mem4dropB1f_EE0B1O_.exit.i ]
  %.promoted.i.i19.i = phi ptr [ %.sroa.7.0.i, %.lr.ph.i.i.lr.ph.i ], [ %.promoted.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEINvNtBe_3mem4dropB1f_EE0B1O_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !716, !nonnull !4, !align !9 ; 2 uses
  %i.ao = getelementptr i8, ptr %.val.i.i.i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB25_.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.6.sroa.5.0.copyload45.i.i.i = phi i64 [ %.sroa.6.sroa.5.0.copyload41.i.i21.i, %.lr.ph.i.i.i ], [ %.sroa.713.0.i.i.i, %_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB25_.exit.i.i.i ] ; 2 uses
  %.sroa.6.sroa.0.0.copyload44.i.i.i = phi i64 [ %.sroa.6.sroa.0.0.copyload40.i.i20.i, %.lr.ph.i.i.i ], [ 0, %_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB25_.exit.i.i.i ] ; 2 uses
  %.sroa.012.03943.i.i.i = phi ptr [ %.promoted.i.i19.i, %.lr.ph.i.i.i ], [ %.sroa.012.0.i.i.i, %_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB25_.exit.i.i.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.03943.i.i.i, i64 98
  %i.aq = load i16, ptr %i.ap, align 2, !noalias !717, !noundef !4
  %i.ar = zext i16 %i.aq to i64
  %i.as = icmp ult i64 %.sroa.6.sroa.5.0.copyload45.i.i.i, %i.ar
  br i1 %i.as, label %bb.e, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.at, %bb.d ], [ %.sroa.012.03943.i.i.i, %bb.c ] ; 2 uses
  %.sroa.5.021.i.i.i.i = phi i64 [ %i.av, %bb.d ], [ %.sroa.6.sroa.0.0.copyload44.i.i.i, %bb.c ]
  %i.at = load ptr, ptr %.sroa.0.022.i.i.i.i, align 8, !noalias !718, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_RNvXsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_9ExtractIfINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullNCINvMsc_B5_INtB5_8BTreeSetB17_E6retainNCNvMs1_NtB1q_11table_indexNtB3D_14CoreTableIndex13prune_removed0E0ENtNtNtNtB2f_4iter6traits8iterator8Iterator4nextB1q_.exit.thread.i, label %bb.d

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.d
  %i.au = zext i16 %i.ax to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.av = add i64 %.sroa.5.021.i.i.i.i, 1         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i, i64 96
  %i.ax = load i16, ptr %i.aw, align 8, !noalias !718 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 98
  %i.az = load i16, ptr %i.ay, align 2, !noalias !717, !noundef !4
  %i.ba = icmp ult i16 %i.ax, %i.az
  br i1 %i.ba, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.au, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.6.sroa.5.0.copyload45.i.i.i, %bb.c ] ; 7 uses
  %.sroa.8.0.ph.i.i.i = phi i64 [ %i.av, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.6.sroa.0.0.copyload44.i.i.i, %bb.c ] ; 8 uses
  %.sroa.0.020.ph.i.i.i = phi ptr [ %i.at, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.012.03943.i.i.i, %bb.c ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.020.ph.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.10.0.ph.i.i.i
  %.val17.i.i.i = load ptr, ptr %i.bc, align 8, !noalias !719, !nonnull !4, !noundef !4 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i, align 8, !noalias !719, !nonnull !4, !align !9, !noundef !4 ; 4 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !719 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !720, !noalias !719, !noundef !4
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.loopexit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 32
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !721, !noalias !719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !722
  call void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bh), !noalias !723
  %i.bi = load i64, ptr %i.al, align 8, !alias.scope !724, !noalias !722, !noundef !4
  %i.bj = xor i64 %i.bi, %.val.i.i.i.i.i.i.i
  %i.bk = zext i64 %i.bj to i128
  %i.bl = mul nuw nsw i128 %i.bk, 6364136223846793005 ; 2 uses
  %i.bm = lshr i128 %i.bl, 64
  %i.bn = xor i128 %i.bm, %i.bl                   ; 2 uses
  %i.bo = trunc i128 %i.bn to i64
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !722, !noundef !4
  %i.bp = and i128 %i.bn, 18446744073709551615
  %i.bq = zext i64 %.val2.i.i.i.i.i.i.i.i to i128
  %i.br = mul nuw i128 %i.bp, %i.bq               ; 2 uses
  %i.bs = lshr i128 %i.br, 64
  %i.bt = xor i128 %i.bs, %i.br
  %i.bu = trunc i128 %i.bt to i64                 ; 2 uses
  %i.bv = call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 %i.bo) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !722
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.bw = lshr i64 %i.bv, 57
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !727, !noalias !719, !noundef !4 ; 2 uses
  %i.ca = load ptr, ptr %.val.i.i.i.i.i, align 8, !alias.scope !727, !noalias !719, !nonnull !4, !noundef !4 ; 2 uses
  %i.cb = insertelement <16 x i8> poison, i8 %i.bx, i64 0
  %i.cc = shufflevector <16 x i8> %i.cb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.sroa.011.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ct, %bb.k ]
  %.pn.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %bb.f ], [ %i.cu, %bb.k ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i, %i.bz ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !728 ; 2 uses
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i, %i.cc
  %i.cf = bitcast <16 x i1> %i.ce to i16
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.05.0.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cf, %bb.g ], [ %i.cj, %bb.i ] ; 4 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.05.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = add i16 %.sroa.05.0.i.i.i.i.i.i.i.i.i, -1
  %i.ch = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = and i16 %i.cg, %.sroa.05.0.i.i.i.i.i.i.i.i.i
  %i.ck = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, %i.ci
  %i.cl = and i64 %i.ck, %i.bz
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -8
  %i.cp = call noundef zeroext i1 @_RNvXCsc96bKABWO34_9hashbrownNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdINtB2_10EquivalentBq_E10equivalentCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.co), !noalias !729
  br i1 %i.cp, label %bb.n, label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.cq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.k, label %.loopexit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ct = add i64 %.sroa.011.0.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.cu = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, %i.ct
  br label %bb.g

.loopexit.i.i.i:                                  ; preds = %bb.j, %bb.e
  %i.cv = getelementptr inbounds nuw i8, ptr %.val17.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i) ]
  call void @_RNvMs2_NtCs92BnbMq7p8c_15influxdb3_write11table_indexNtB5_13IndexMetadata23merge_from_parquet_file(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val1.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cv), !noalias !719
  %i.cw = icmp eq i64 %.sroa.8.0.ph.i.i.i, 0
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit.i.i.i
  %i.cx = add nuw nsw i64 %.sroa.10.0.ph.i.i.i, 1
  br label %_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB25_.exit.i.i.i

bb.m:                                             ; preds = %.loopexit.i.i.i
  %3 = icmp slt i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %3)
  %i.cy = getelementptr i8, ptr %.sroa.0.020.ph.i.i.i, i64 112
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %xtraiter46 = and i64 %.sroa.8.0.ph.i.i.i, 7    ; 2 uses
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.m, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.da, %.prol.preheader ], [ %i.cz, %bb.m ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.8.0.ph.i.i.i, %bb.m ]
  %prol.iter48 = phi i64 [ %prol.iter48.next, %.prol.preheader ], [ 0, %bb.m ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !730, !nonnull !4, !noundef !4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 104 ; 2 uses
  %prol.iter48.next = add i64 %prol.iter48, 1     ; 2 uses
  %prol.iter48.cmp.not = icmp eq i64 %prol.iter48.next, %xtraiter46
  br i1 %prol.iter48.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !673

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.m
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.cz, %bb.m ], [ %i.da, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %.sroa.8.0.ph.i.i.i, %bb.m ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ]
  %i.db = icmp ult i64 %.sroa.8.0.ph.i.i.i, 8
  br i1 %i.db, label %_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB25_.exit.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.dk, %.new ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !730, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 104
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.dc, align 8, !noalias !730, !nonnull !4, !noundef !4
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 104
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.dd, align 8, !noalias !730, !nonnull !4, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 104
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.de, align 8, !noalias !730, !nonnull !4, !noundef !4
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 104
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.df, align 8, !noalias !730, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 104
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.dg, align 8, !noalias !730, !nonnull !4, !noundef !4
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 104
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.dh, align 8, !noalias !730, !nonnull !4, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 104
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.di, align 8, !noalias !730, !nonnull !4, !noundef !4 ; 2 uses
  %i.dj = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 104
  br i1 %i.dj, label %_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB25_.exit.i.i.i, label %.new

_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB25_.exit.i.i.i: ; preds = %.prol.loopexit, %.new, %bb.l
  %.sroa.713.0.i.i.i = phi i64 [ %i.cx, %bb.l ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 2 uses
  %.sroa.012.0.i.i.i = phi ptr [ %.sroa.0.020.ph.i.i.i, %bb.l ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.7, %.new ]
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !719
  store i64 %.sroa.713.0.i.i.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !719
  store ptr null, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !719
  br label %bb.c

bb.n:                                             ; preds = %bb.i
  %i.dl = load ptr, ptr %i.aj, align 8, !alias.scope !719, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !719, !noundef !4
  %i.dn = add i64 %i.dm, -1
  store i64 %i.dn, ptr %i.dl, align 8, !noalias !719
  %i.do = icmp eq i64 %.sroa.8.0.ph.i.i.i, 0
  br i1 %i.do, label %_RNvXsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_9ExtractIfINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullNCINvMsc_B5_INtB5_8BTreeSetB17_E6retainNCNvMs1_NtB1q_11table_indexNtB3D_14CoreTableIndex13prune_removed0E0ENtNtNtNtB2f_4iter6traits8iterator8Iterator4nextB1q_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.020.ph.i.i.i, i64 104
  %i.dq = icmp ult i64 %.sroa.10.0.ph.i.i.i, 12
  call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.sroa.10.0.ph.i.i.i
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !731, !nonnull !4, !noundef !4 ; 3 uses
  %i.dt = add i64 %.sroa.8.0.ph.i.i.i, -1         ; 4 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1S_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.o
  %i.dv = add i64 %.sroa.8.0.ph.i.i.i, -2
  %xtraiter50 = and i64 %i.dt, 7                  ; 2 uses
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.03.08.i.i.i.i.i.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.prol = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.preheader ]
  %prol.iter52 = phi i64 [ %prol.iter52.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.prol, i64 98
  %i.dx = load i16, ptr %i.dw, align 2, !noalias !732, !noundef !4 ; 2 uses
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.prol, i64 104
  %i.ea = icmp ult i16 %i.dx, 12
  call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !732, !nonnull !4, !noundef !4 ; 3 uses
  %i.ed = add i64 %.sroa.05.07.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter52.next = add i64 %prol.iter52, 1     ; 2 uses
  %prol.iter52.cmp.not = icmp eq i64 %prol.iter52.next, %xtraiter50
  br i1 %prol.iter52.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !684

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.03.08.i.i.i.i.i.i.unr = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.i.unr = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ee = icmp ult i64 %i.dv, 7
  br i1 %i.ee, label %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1S_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.03.08.i.i.i.i.i.i = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i, i64 98
  %i.eg = load i16, ptr %i.ef, align 2, !noalias !732, !noundef !4 ; 2 uses
  %i.eh = zext nneg i16 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i, i64 104
  %i.ej = icmp ult i16 %i.eg, 12
  call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !732, !nonnull !4, !noundef !4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 98
  %i.en = load i16, ptr %i.em, align 2, !noalias !732, !noundef !4 ; 2 uses
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 104
  %i.eq = icmp ult i16 %i.en, 12
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  %i.es = load ptr, ptr %i.er, align 8, !noalias !732, !nonnull !4, !noundef !4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 98
  %i.eu = load i16, ptr %i.et, align 2, !noalias !732, !noundef !4 ; 2 uses
  %i.ev = zext nneg i16 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.ex = icmp ult i16 %i.eu, 12
  call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ev
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !732, !nonnull !4, !noundef !4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 98
  %i.fb = load i16, ptr %i.fa, align 2, !noalias !732, !noundef !4 ; 2 uses
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 104
  %i.fe = icmp ult i16 %i.fb, 12
  call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fc
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !732, !nonnull !4, !noundef !4 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 98
  %i.fi = load i16, ptr %i.fh, align 2, !noalias !732, !noundef !4 ; 2 uses
  %i.fj = zext nneg i16 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 104
  %i.fl = icmp ult i16 %i.fi, 12
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fj
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !732, !nonnull !4, !noundef !4 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 98
  %i.fp = load i16, ptr %i.fo, align 2, !noalias !732, !noundef !4 ; 2 uses
  %i.fq = zext nneg i16 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 104
  %i.fs = icmp ult i16 %i.fp, 12
  call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fq
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !732, !nonnull !4, !noundef !4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 98
  %i.fw = load i16, ptr %i.fv, align 2, !noalias !732, !noundef !4 ; 2 uses
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 104
  %i.fz = icmp ult i16 %i.fw, 12
  call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !732, !nonnull !4, !noundef !4 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 98
  %i.gd = load i16, ptr %i.gc, align 2, !noalias !732, !noundef !4 ; 2 uses
  %i.ge = zext nneg i16 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 104
  %i.gg = icmp ult i16 %i.gd, 12
  call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ge
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !732, !nonnull !4, !noundef !4 ; 2 uses
  %i.gj = add i64 %.sroa.05.07.i.i.i.i.i.i, -8    ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1S_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1S_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.o
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ds, %bb.o ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.gi, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 98
  %i.gm = load i16, ptr %i.gl, align 2, !noalias !732, !noundef !4 ; 2 uses
  %i.gn = zext i16 %i.gm to i64
  %i.go = icmp ne i16 %i.gm, 0
  call void @llvm.assume(i1 %i.go)
  %i.gp = add nsw i64 %i.gn, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !731
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !731
  store i64 0, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i, align 8, !noalias !731
  store i64 %i.gp, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i, align 8, !noalias !731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !731
  call fastcc void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBX_7NodeRefNtNtBX_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1u_4LeafENtB1u_2KVE14remove_leaf_kvNCINvMsV_NtB7_3mapINtB3W_14ExtractIfInnerB1K_B2M_NtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullE4nextNCNvXsj_NtB7_3setINtB5x_9ExtractIfB1K_B4A_NCINvMsc_B5x_INtB5x_8BTreeSetB1K_E6retainNCNvMs1_NtB23_11table_indexNtB6S_14CoreTableIndex13prune_removed0E0ENtNtNtNtB4G_4iter6traits8iterator8Iterator4next0NtNtBb_5alloc6GlobalE0B8C_EB23_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i), !noalias !733
  %i.gq = load ptr, ptr %i.b, align 8, !noalias !731, !nonnull !4, !noundef !4
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %i.an, align 8, !noalias !731, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.42.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !731 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !731 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !731
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i.i.i.i, i64 98
  %i.gs = load i16, ptr %i.gr, align 2, !noalias !734, !noundef !4
  %i.gt = zext i16 %i.gs to i64
  %i.gu = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i, %i.gt
  br i1 %i.gu, label %bb.p, label %.lr.ph.i16.i.i.i.i.i

.lr.ph.i16.i.i.i.i.i:                             ; preds = %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1S_.exit.i.i.i.i.i, %.lr.ph.i16.i.i.i.i.i
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i16.i.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1S_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i = phi i64 [ %i.gw, %.lr.ph.i16.i.i.i.i.i ], [ %.sroa.42.0.copyload.i.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1S_.exit.i.i.i.i.i ]
  %i.gv = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !noalias !735, !nonnull !4, !noundef !4 ; 3 uses
  %i.gw = add i64 %.sroa.5.021.i.i.i.i.i.i, 1     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 96
  %i.gy = load i16, ptr %i.gx, align 8, !noalias !735 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 98
  %i.ha = load i16, ptr %i.gz, align 2, !noalias !734, !noundef !4
  %i.hb = icmp ult i16 %i.gy, %i.ha
  br i1 %i.hb, label %._crit_edge.loopexit.i.i.i.i.i.i, label %.lr.ph.i16.i.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %.lr.ph.i16.i.i.i.i.i
  %i.hc = zext i16 %i.gy to i64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1S_.exit.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.hc, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1S_.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.515.0.i.i.i.i.i = phi i64 [ %i.gw, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.sroa.42.0.copyload.i.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1S_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.014.0.i.i.i.i.i = phi ptr [ %i.gv, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1S_.exit.i.i.i.i.i ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i.i.i, i64 8
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !731, !nonnull !4, !noundef !4
  store ptr %i.gq, ptr %i.he, align 8, !noalias !731
  %i.hg = icmp eq i64 %.sroa.515.0.i.i.i.i.i, 0
  br i1 %i.hg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hh = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i, 1
  br label %_RNvXsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_9ExtractIfINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullNCINvMsc_B5_INtB5_8BTreeSetB17_E6retainNCNvMs1_NtB1q_11table_indexNtB3D_14CoreTableIndex13prune_removed0E0ENtNtNtNtB2f_4iter6traits8iterator8Iterator4nextB1q_.exit.thread6.i

bb.r:                                             ; preds = %bb.p
  %i.hi = icmp samesign ult i64 %.sroa.7.0.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr i8, ptr %.sroa.014.0.i.i.i.i.i, i64 112
  %i.hk = getelementptr [8 x i8], ptr %i.hj, i64 %.sroa.7.0.i.i.i.i.i ; 2 uses
  %xtraiter56 = and i64 %.sroa.515.0.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.prol.loopexit54, label %.prol.preheader53

.prol.preheader53:                                ; preds = %bb.r, %.prol.preheader53
  %.sroa.017.0.in.i.i.i.i.i.i.prol = phi ptr [ %i.hl, %.prol.preheader53 ], [ %i.hk, %bb.r ]
  %.sroa.019.0.in.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.prol, %.prol.preheader53 ], [ %.sroa.515.0.i.i.i.i.i, %bb.r ]
  %prol.iter58 = phi i64 [ %prol.iter58.next, %.prol.preheader53 ], [ 0, %bb.r ]
  %.sroa.019.0.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.prol, align 8, !noalias !736, !nonnull !4, !noundef !4 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.prol, i64 104 ; 2 uses
  %prol.iter58.next = add i64 %prol.iter58, 1     ; 2 uses
  %prol.iter58.cmp.not = icmp eq i64 %prol.iter58.next, %xtraiter56
  br i1 %prol.iter58.cmp.not, label %.prol.loopexit54, label %.prol.preheader53, !llvm.loop !693

.prol.loopexit54:                                 ; preds = %.prol.preheader53, %bb.r
  %.sroa.017.0.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.r ], [ %.sroa.017.0.i.i.i.i.i.i.prol, %.prol.preheader53 ]
  %.sroa.017.0.in.i.i.i.i.i.i.unr = phi ptr [ %i.hk, %bb.r ], [ %i.hl, %.prol.preheader53 ]
  %.sroa.019.0.in.i.i.i.i.i.i.unr = phi i64 [ %.sroa.515.0.i.i.i.i.i, %bb.r ], [ %.sroa.019.0.i.i.i.i.i.i.prol, %.prol.preheader53 ]
  %i.hm = icmp ult i64 %.sroa.515.0.i.i.i.i.i, 8
  br i1 %i.hm, label %_RNvXsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_9ExtractIfINtNtBb_4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullNCINvMsc_B5_INtB5_8BTreeSetB17_E6retainNCNvMs1_NtB1q_11table_indexNtB3D_14CoreTableIndex13prune_removed0E0ENtNtNtNtB2f_4iter6traits8iterator8Iterator4nextB1q_.exit.thread6.i, label %.new55

.new55:                                           ; preds = %.prol.loopexit54, %.new55
  %.sroa.017.0.in.i.i.i.i.i.i = phi ptr [ %i.hv, %.new55 ], [ %.sroa.017.0.in.i.i.i.i.i.i.unr, %.prol.loopexit54 ]
  %.sroa.019.0.in.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.7, %.new55 ], [ %.sroa.019.0.in.i.i.i.i.i.i.unr, %.prol.loopexit54 ]
  %.sroa.017.0.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i, align 8, !noalias !736, !nonnull !4, !noundef !4
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i, i64 104
  %.sroa.017.0.i.i.i.i.i.i.1 = load ptr, ptr %i.hn, align 8, !noalias !736, !nonnull !4, !noundef !4
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.1, i64 104
  %.sroa.017.0.i.i.i.i.i.i.2 = load ptr, ptr %i.ho, align 8, !noalias !736, !nonnull !4, !noundef !4
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.2, i64 104
end_hunk_0
