inline.NumInlined: 8493
inline.NumDeleted: 3149
begin_hunk_0_@_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB4_14LogDataHandler10pick_stats:bb.a
.lr.ph.i.i:                                       ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val3.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !14690, !noalias !14691, !noundef !27 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !14690, !noalias !14691, !nonnull !27 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB4_14LogDataHandler10pick_stats:bb.a
bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %i.ar, i64 8
  %.val3.i.i = load ptr, ptr %i.av, align 8, !alias.scope !14685, !noalias !14693, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !14694
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4planNtB2_14KernelScanPlan7try_new:bb.a
  store i64 %i.fq, ptr %.sroa.4.0..sroa_idx.i295, align 8, !noalias !14936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.au, i64 80, i1 false), !noalias !14940
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.fv, align 8, !noalias !14941, !nonnull !27
  %7 = ptrtoint ptr %.val4.i.i.i.i.i.i to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.fw, align 8, !noalias !14941, !nonnull !27
  %8 = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %9 = sub nuw i64 %7, %8
  %10 = lshr exact i64 %9, 4
  %.val4.i.i.i.i.i.i.a = load ptr, ptr %i.b, align 8, !noalias !14941, !noundef !27
  %.not.i.i.i.i.i = icmp eq ptr %.val4.i.i.i.i.i.i.a, null
  %.sroa.7.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 %10
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %12 = load ptr, ptr %11, align 8, !alias.scope !14945, !noalias !14952, !noundef !27
  %.not54.i.i.i.i.i = icmp eq ptr %12, null
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.val.i63.i.i.i.i.i = load ptr, ptr %13, align 8, !alias.scope !14945, !noalias !14952, !nonnull !27
  %14 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.val4.i64.i.i.i.i.i = load ptr, ptr %14, align 8, !alias.scope !14945, !noalias !14952, !nonnull !27
  %i.fx = ptrtoint ptr %.val4.i64.i.i.i.i.i to i64
  %i.fy = ptrtoint ptr %.val.i63.i.i.i.i.i to i64
  %i.fz = sub nuw i64 %i.fx, %i.fy
end_hunk_2
begin_hunk_3_@_RNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31record_batch_without_partitions:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.val3.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !15890, !noalias !15891, !noundef !27 ; 2 uses
  %.val2.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !15890, !noalias !15891, !nonnull !27
  br label %bb.p

bb.p:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %.lr.ph.i.i
end_hunk_3
begin_hunk_4_@_RNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31record_batch_without_partitions:bb.a
bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr i8, ptr %i.bf, i64 8
  %.val3.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !15878, !noalias !15893, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val3.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !15894
  %i.bk = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bk, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i
end_hunk_4
begin_hunk_5_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %.val6.i, i64 72
  %.val3.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !16836, !noalias !16837, !noundef !27 ; 2 uses
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !16836, !noalias !16837, !nonnull !27
  br label %bb.d

bb.d:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i, %.lr.ph.i.i.i.i.i
end_hunk_5
begin_hunk_6_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate:bb.a
bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !16831, !noalias !16839, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val3.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i), !noalias !16840
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkRRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate0E0B2g_.exit.loopexit.i, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i
end_hunk_6
begin_hunk_7_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %.val6.i26, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.val6.i26, i64 72
  %.val3.i.i.i.i.i.i27 = load i64, ptr %i.ai, align 8, !alias.scope !16852, !noalias !16853, !noundef !27 ; 2 uses
  %.val2.i.i.i.i.i.i28 = load ptr, ptr %i.ah, align 8, !alias.scope !16852, !noalias !16853, !nonnull !27
  br label %bb.g

bb.g:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30, %.lr.ph.i.i.i.i.i25
end_hunk_7
begin_hunk_8_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate:bb.a
bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %.val3.i.i.i.i.i34 = load ptr, ptr %i.an, align 8, !alias.scope !16844, !noalias !16855, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i.i.i.i35 = call i32 @bcmp(ptr nonnull readonly %.val3.i.i.i.i.i34, ptr nonnull readonly %.val2.i.i.i.i.i.i28, i64 %.val3.i.i.i.i.i.i27), !noalias !16856
  %i.ao = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i35, 0
  br i1 %i.ao, label %.loopexit61, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i.i.i30
end_hunk_8
begin_hunk_9_@_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31arrow_schema_without_partitions0INtB7_5FnMutTRRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE8call_mutBW_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val3.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !18293, !noalias !18294, !noundef !27 ; 2 uses
  %.val2.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !18293, !noalias !18294, !nonnull !27
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i, %.lr.ph.i.i.i
end_hunk_9
begin_hunk_10_@_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31arrow_schema_without_partitions0INtB7_5FnMutTRRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE8call_mutBW_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %.val3.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !18288, !noalias !18296, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i.i.i, ptr nonnull readonly %.val2.i.i.i.i, i64 %.val3.i.i.i.i), !noalias !18297
  %i.l = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.l, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils31arrow_schema_without_partitions0B7_.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i
end_hunk_10
begin_hunk_11_@_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val3.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !22949, !noalias !22950, !noundef !27 ; 2 uses
  %.val2.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !22949, !noalias !22950, !nonnull !27
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %.lr.ph.i.i
end_hunk_11
begin_hunk_12_@_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts:bb.a
bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  %.val3.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !22944, !noalias !22952, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !22953
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i
end_hunk_12
begin_hunk_13_@_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics9contained:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val3.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !23025, !noalias !23026, !noundef !27 ; 2 uses
  %.val2.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !23025, !noalias !23026, !nonnull !27
  br label %bb.c

bb.c:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %.lr.ph.i.i
end_hunk_13
begin_hunk_14_@_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics9contained:bb.a
bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  %.val3.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !23020, !noalias !23028, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !23029
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i
end_hunk_14
begin_hunk_15_@_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.c, align 8, !alias.scope !23602, !noalias !23605, !noundef !27 ; 2 uses
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !23602, !noalias !23605, !nonnull !27
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i, %.lr.ph.i
end_hunk_15
begin_hunk_16_@_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core:bb.a
bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val3.i = load ptr, ptr %i.h, align 8, !noalias !23607, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i, ptr nonnull readonly %.val2.i.i, i64 %.val3.i.i), !noalias !23607
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i
end_hunk_16
