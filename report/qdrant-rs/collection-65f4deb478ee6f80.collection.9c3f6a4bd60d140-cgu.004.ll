Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.004?download=true
inline.NumInlined: 5142
inline.NumDeleted: 3641
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCINvNtB1r_8optimize17build_new_segmentINtNtNtB1r_10optimizers17segment_optimizer25ShardOptimizationStrategyNtNtB2Z_16vacuum_optimizer15VacuumOptimizerEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4M_8for_each4callINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEENCINvMsk_NtB5U_3vecINtB8L_3VecB5P_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection:bb.a

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.i = atomicrmw add ptr %.val16.i, i64 1 monotonic, align 8, !noalias !5074
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store ptr %.val16.i, ptr %i.k, align 8, !noalias !5075
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEuNCINvNtBU_8optimize17build_new_segmentINtNtNtBU_10optimizers17segment_optimizer25ShardOptimizationStrategyNtNtB6D_16vacuum_optimizer15VacuumOptimizerEE0NCINvNvB1K_8for_each4callB38_NCINvMsk_NtB3d_3vecINtB90_3VecB38_E14extend_trustedINtB2A_3MapBF_B5W_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

bb.h:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5073
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEuNCINvNtBU_8optimize17build_new_segmentINtNtNtBU_10optimizers17segment_optimizer25ShardOptimizationStrategyNtNtB6D_16vacuum_optimizer15VacuumOptimizerEE0NCINvNvB1K_8for_each4callB38_NCINvMsk_NtB3d_3vecINtB90_3VecB38_E14extend_trustedINtB2A_3MapBF_B5W_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5073
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCINvNtB1r_8optimize17build_new_segmentINtNtNtB1r_10optimizers17segment_optimizer25ShardOptimizationStrategyNtNtB2Z_18indexing_optimizer17IndexingOptimizerEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4Q_8for_each4callINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEENCINvMsk_NtB5Y_3vecINtB8P_3VecB5T_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEuNCINvNtBU_8optimize17build_new_segmentINtNtNtBU_10optimizers17segment_optimizer25ShardOptimizationStrategyNtNtB6D_18indexing_optimizer17IndexingOptimizerEE0NCINvNvB1K_8for_each4callB38_NCINvMsk_NtB3d_3vecINtB94_3VecB38_E14extend_trustedINtB2A_3MapBF_B5W_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.g ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load i64, ptr %i.f, align 8, !range !8, !noalias !5084, !noundef !7
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val16.i = load ptr, ptr %i.g, align 8, !noalias !5084 ; 3 uses
  %i.h = trunc nuw i64 %.val15.i to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #43
          to label %.noexc.i unwind label %bb.h, !noalias !5084

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.i = atomicrmw add ptr %.val16.i, i64 1 monotonic, align 8, !noalias !5085
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store ptr %.val16.i, ptr %i.k, align 8, !noalias !5086
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEuNCINvNtBU_8optimize17build_new_segmentINtNtNtBU_10optimizers17segment_optimizer25ShardOptimizationStrategyNtNtB6D_18indexing_optimizer17IndexingOptimizerEE0NCINvNvB1K_8for_each4callB38_NCINvMsk_NtB3d_3vecINtB94_3VecB38_E14extend_trustedINtB2A_3MapBF_B5W_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

bb.h:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5084
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEuNCINvNtBU_8optimize17build_new_segmentINtNtNtBU_10optimizers17segment_optimizer25ShardOptimizationStrategyNtNtB6D_18indexing_optimizer17IndexingOptimizerEE0NCINvNvB1K_8for_each4callB38_NCINvMsk_NtB3d_3vecINtB94_3VecB38_E14extend_trustedINtB2A_3MapBF_B5W_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5084
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCINvNtB1r_8optimize17build_new_segmentINtNtNtB1r_10optimizers17segment_optimizer25ShardOptimizationStrategyNtNtB2Z_25config_mismatch_optimizer23ConfigMismatchOptimizerEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB53_8for_each4callINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEENCINvMsk_NtB6b_3vecINtB92_3VecB66_E14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEuNCINvNtBU_8optimize17build_new_segmentINtNtNtBU_10optimizers17segment_optimizer25ShardOptimizationStrategyNtNtB6D_25config_mismatch_optimizer23ConfigMismatchOptimizerEE0NCINvNvB1K_8for_each4callB38_NCINvMsk_NtB3d_3vecINtB9h_3VecB38_E14extend_trustedINtB2A_3MapBF_B5W_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.g ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load i64, ptr %i.f, align 8, !range !8, !noalias !5095, !noundef !7
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val16.i = load ptr, ptr %i.g, align 8, !noalias !5095 ; 3 uses
  %i.h = trunc nuw i64 %.val15.i to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #43
          to label %.noexc.i unwind label %bb.h, !noalias !5095

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.i = atomicrmw add ptr %.val16.i, i64 1 monotonic, align 8, !noalias !5096
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store ptr %.val16.i, ptr %i.k, align 8, !noalias !5097
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEuNCINvNtBU_8optimize17build_new_segmentINtNtNtBU_10optimizers17segment_optimizer25ShardOptimizationStrategyNtNtB6D_25config_mismatch_optimizer23ConfigMismatchOptimizerEE0NCINvNvB1K_8for_each4callB38_NCINvMsk_NtB3d_3vecINtB9h_3VecB38_E14extend_trustedINtB2A_3MapBF_B5W_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.c

bb.h:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5095
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldRBQ_INtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEuNCINvNtBU_8optimize17build_new_segmentINtNtNtBU_10optimizers17segment_optimizer25ShardOptimizationStrategyNtNtB6D_25config_mismatch_optimizer23ConfigMismatchOptimizerEE0NCINvNvB1K_8for_each4callB38_NCINvMsk_NtB3d_3vecINtB9h_3VecB38_E14extend_trustedINtB2A_3MapBF_B5W_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5095
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard12indexed_only31get_index_only_excluded_vectors0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4M_13FlattenCompatppE9iter_fold7flattenINtNtB8_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB6h_6string6StringENCNCB2j_00EuNCINvNvXsi_B4M_B4Z_B3X_4fold7flattenB5G_uNCINvNvB3X_8for_each4callTB6Y_INtNtBc_6option6OptionjEjENCB2j_s_0E0E0E0EB2r_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldRBQ_INtNtB2C_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB3K_6string6StringENCNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard12indexed_only31get_index_only_excluded_vectors00EuNCB4S_0NCINvNvMsg_NtB2C_7flattenINtB6Q_13FlattenCompatppE9iter_fold7flattenB38_uNCINvNvXsi_B6Q_B74_B1K_4fold7flattenB38_uNCINvNvB1K_8for_each4callTB4r_INtNtBb_6option6OptionjEjENCB4S_s_0E0E0E0E0EB50_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtB6_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2p_6string6StringENCNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard12indexed_only31get_index_only_excluded_vectors00EuNCB3x_0NCINvNvMsg_NtB6_7flattenINtB5v_13FlattenCompatppE9iter_fold7flattenB1O_uNCINvNvXsi_B5v_B5I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1O_uNCINvNvB6N_8for_each4callTB36_INtNtBa_6option6OptionjEjENCB3x_s_0E0E0E0E0B3F_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ai, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtB6_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2p_6string6StringENCNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard12indexed_only31get_index_only_excluded_vectors00EuNCB3x_0NCINvNvMsg_NtB6_7flattenINtB5v_13FlattenCompatppE9iter_fold7flattenB1O_uNCINvNvXsi_B5v_B5I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1O_uNCINvNvB6N_8for_each4callTB36_INtNtBa_6option6OptionjEjENCB3x_s_0E0E0E0E0B3F_.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5114)
  call void @llvm.experimental.noalias.scope.decl(metadata !5115)
  %i.n = load i64, ptr %i.m, align 8, !range !8, !alias.scope !5116, !noalias !5117, !noundef !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = trunc nuw i64 %i.n to i1                 ; 2 uses
  %.pn.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !5116, !noalias !5117, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16 ; 6 uses
  %i.q = load atomic i64, ptr %.sroa.0.0.i.i.i monotonic, align 8, !noalias !5118 ; 4 uses
  %i.r = and i64 %i.q, 8
  %i.s = icmp ne i64 %i.r, 0
  %i.t = icmp ugt i64 %i.q, -17
  %or.cond.i.i.i.i.i = or i1 %i.t, %i.s
  br i1 %or.cond.i.i.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i, !prof !58

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i: ; preds = %bb.c
  %i.u = add nuw i64 %i.q, 16
  %i.v = cmpxchg weak ptr %.sroa.0.0.i.i.i, i64 %i.q, i64 %i.u acquire monotonic, align 8, !noalias !5118
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i, !prof !59

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i, %bb.c
  %i.x = call noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i, i1 noundef zeroext false, i64 undef, i32 noundef -1), !noalias !5118 ; 0 uses
  br label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i
  %i.y = ptrtoint ptr %.sroa.0.0.i.i.i to i64     ; 2 uses
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.y), !noalias !5118
  %i.z = or disjoint i64 %i.y, 1
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.z), !noalias !5118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5119
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24
  %3 = select i1 %i.p, ptr @_RNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB6_12ProxySegmentNtNtNtCs607s0NAIaWN_7segment5entry11entry_point16ReadSegmentEntry12vector_names, ptr @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry12vector_names
  invoke void %3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.aa)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtB6_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2p_6string6StringENCNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard12indexed_only31get_index_only_excluded_vectors00EuNCB3x_0NCINvNvMsg_NtB6_7flattenINtB5v_13FlattenCompatppE9iter_fold7flattenB1O_uNCINvNvXsi_B5v_B5I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1O_uNCINvNvB6N_8for_each4callTB36_INtNtBa_6option6OptionjEjENCB3x_s_0E0E0E0E0B3F_.exit.i unwind label %bb.d, !noalias !5118

bb.d:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsPYQCUnoTxQ_10collection(ptr nonnull %.sroa.0.0.i.i.i) #39
          to label %bb.f unwind label %bb.e, !noalias !5118

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !5118
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtB6_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2p_6string6StringENCNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard12indexed_only31get_index_only_excluded_vectors00EuNCB3x_0NCINvNvMsg_NtB6_7flattenINtB5v_13FlattenCompatppE9iter_fold7flattenB1O_uNCINvNvXsi_B5v_B5I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1O_uNCINvNvB6N_8for_each4callTB36_INtNtBa_6option6OptionjEjENCB3x_s_0E0E0E0E0B3F_.exit.i: ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i
  %..i.i.i = select i1 %i.p, ptr @21, ptr @19
  %i.ad = load ptr, ptr %i.i, align 8, !noalias !5119, !nonnull !7, !noundef !7 ; 3 uses
  %i.ae = load i64, ptr %i.c, align 8, !range !10, !noalias !5119, !noundef !7
  %i.af = load i64, ptr %i.j, align 8, !noalias !5119, !noundef !7 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 384307168202282326
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5120
  store ptr %i.ad, ptr %i.b, align 8, !noalias !5121
  store ptr %i.ad, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5121
  store i64 %i.ae, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5121
  store ptr %i.ah, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5120
  store ptr %.sroa.0.0.i.i.i, ptr %i.a, align 8, !noalias !5120
  store ptr %..i.i.i, ptr %i.k, align 8, !noalias !5120
  store ptr %2, ptr %i.l, align 8, !noalias !5120
  call void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters10filter_map15filter_map_foldBX_TBX_INtNtB1r_6option6OptionjEjEuNCNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard12indexed_only31get_index_only_excluded_vectors00QNCINvNvB1j_8for_each4callB3c_NCB3M_s_0E0E0EB3U_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !5122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5120
  %i.ai = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.h
  br i1 %i.aj, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldRBQ_INtNtB2C_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB3K_6string6StringENCNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard12indexed_only31get_index_only_excluded_vectors00EuNCB4S_0NCINvNvMsg_NtB2C_7flattenINtB6Q_13FlattenCompatppE9iter_fold7flattenB38_uNCINvNvXsi_B6Q_B74_B1K_4fold7flattenB38_uNCINvNvB1K_8for_each4callTB4r_INtNtBb_6option6OptionjEjENCB4S_s_0E0E0E0E0EB50_.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1Q_8adapters3map8map_foldRBQ_INtNtB2C_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB3K_6string6StringENCNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard12indexed_only31get_index_only_excluded_vectors00EuNCB4S_0NCINvNvMsg_NtB2C_7flattenINtB6Q_13FlattenCompatppE9iter_fold7flattenB38_uNCINvNvXsi_B6Q_B74_B1K_4fold7flattenB38_uNCINvNvB1K_8for_each4callTB4r_INtNtBb_6option6OptionjEjENCB4S_s_0E0E0E0E0EB50_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtB6_10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB2p_6string6StringENCNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard12indexed_only31get_index_only_excluded_vectors00EuNCB3x_0NCINvNvMsg_NtB6_7flattenINtB5v_13FlattenCompatppE9iter_fold7flattenB1O_uNCINvNvXsi_B5v_B5I_NtNtNtB8_6traits8iterator8Iterator4fold7flattenB1O_uNCINvNvB6N_8for_each4callTB36_INtNtBa_6option6OptionjEjENCB3x_s_0E0E0E0E0B3F_.exit.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENCNvNtNtCsPYQCUnoTxQ_10collection10collection5query24intermediate_query_infos0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3o_8for_each4callNtB2b_21IntermediateQueryInfoNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB53_3VecB4r_E14extend_trustedBN_E0E0EB2f_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtNtCsPYQCUnoTxQ_10collection10collection5query21IntermediateQueryInfouNCNvB30_24intermediate_query_infos0NCINvNvB1A_8for_each4callB2Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B49_EE0E0E0EB34_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 504                 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 504
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 72057594037927934
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.w, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.x, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [504 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5137)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 304 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !60, !alias.scope !5138, !noalias !5139, !noundef !7
  %.not.i.i.i = icmp eq i64 %i.j, -1
  %..i.i.i = select i1 %.not.i.i.i, ptr null, ptr %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !5138, !noalias !5139, !noundef !7
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store ptr %..i.i.i, ptr %i.m, align 8, !noalias !5140
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.l, ptr %i.n, align 8, !noalias !5141
  %i.o = getelementptr inbounds nuw [504 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5142)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 808 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !60, !alias.scope !5143, !noalias !5139, !noundef !7
  %.not.i.i.i.1 = icmp eq i64 %i.q, -1
  %..i.i.i.1 = select i1 %.not.i.i.i.1, ptr null, ptr %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1000
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5143, !noalias !5139, !noundef !7
  %i.t = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store ptr %..i.i.i.1, ptr %i.u, align 8, !noalias !5144
  %i.v = getelementptr i8, ptr %i.t, i64 24
  store i64 %i.s, ptr %i.v, align 8, !noalias !5141
  %i.w = add i64 %i.g, 2                          ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtNtCsPYQCUnoTxQ_10collection10collection5query21IntermediateQueryInfouNCNvB30_24intermediate_query_infos0NCINvNvB1A_8for_each4callB2Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B49_EE0E0E0EB34_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtNtCsPYQCUnoTxQ_10collection10collection5query21IntermediateQueryInfouNCNvB30_24intermediate_query_infos0NCINvNvB1A_8for_each4callB2Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B49_EE0E0E0EB34_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtNtCsPYQCUnoTxQ_10collection10collection5query21IntermediateQueryInfouNCNvB30_24intermediate_query_infos0NCINvNvB1A_8for_each4callB2Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B49_EE0E0E0EB34_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtNtCsPYQCUnoTxQ_10collection10collection5query21IntermediateQueryInfouNCNvB30_24intermediate_query_infos0NCINvNvB1A_8for_each4callB2Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B49_EE0E0E0EB34_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtNtCsPYQCUnoTxQ_10collection10collection5query21IntermediateQueryInfouNCNvB30_24intermediate_query_infos0NCINvNvB1A_8for_each4callB2Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B49_EE0E0E0EB34_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtNtCsPYQCUnoTxQ_10collection10collection5query21IntermediateQueryInfouNCNvB30_24intermediate_query_infos0NCINvNvB1A_8for_each4callB2Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B49_EE0E0E0EB34_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.y = getelementptr inbounds nuw [504 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5137)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 304 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !60, !alias.scope !5138, !noalias !5139, !noundef !7
  %.not.i.i.i.epil = icmp eq i64 %i.aa, -1
  %..i.i.i.epil = select i1 %.not.i.i.i.epil, ptr null, ptr %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 496
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !5138, !noalias !5139, !noundef !7
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store ptr %..i.i.i.epil, ptr %i.ad, align 8, !noalias !5140
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !5141
  %i.af = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtNtCsPYQCUnoTxQ_10collection10collection5query21IntermediateQueryInfouNCNvB30_24intermediate_query_infos0NCINvNvB1A_8for_each4callB2Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B49_EE0E0E0EB34_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtNtCsPYQCUnoTxQ_10collection10collection5query21IntermediateQueryInfouNCNvB30_24intermediate_query_infos0NCINvNvB1A_8for_each4callB2Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B49_EE0E0E0EB34_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtNtCsPYQCUnoTxQ_10collection10collection5query21IntermediateQueryInfouNCNvB30_24intermediate_query_infos0NCINvNvB1A_8for_each4callB2Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B49_EE0E0E0EB34_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtNtNtCsPYQCUnoTxQ_10collection10collection5query21IntermediateQueryInfouNCNvB30_24intermediate_query_infos0NCINvNvB1A_8for_each4callB2Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB2Y_E14extend_trustedINtB2q_3MapBF_B49_EE0E0E0EB34_.exit.loopexit.unr-lcssa ], [ %i.af, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5145
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENCNvXs0_NtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer5queryB1n_NtB2h_11Generalizer14remove_details0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callB1n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5a_3VecB1n_E14extend_trustedBN_E0E0EB2l_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [504 x i8], align 8               ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNCNvXs0_NtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer5queryBQ_NtB3c_11Generalizer14remove_details0NCINvNvB1A_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5o_3VecBQ_E14extend_trustedINtB2q_3MapBF_B32_EE0E0E0EB3g_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 504
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [504 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5155
  invoke void @_RNvXs0_NtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer5queryNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchNtB7_11Generalizer14remove_details(ptr noalias nofree noundef nonnull sret([504 x i8]) align 8 captures(none) dereferenceable(504) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(504) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !5156

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [504 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(504) %i.a, i64 504, i1 false), !noalias !5157
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5155
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNCNvXs0_NtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer5queryBQ_NtB3c_11Generalizer14remove_details0NCINvNvB1A_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5o_3VecBQ_E14extend_trustedINtB2q_3MapBF_B32_EE0E0E0EB3g_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5156
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNCNvXs0_NtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer5queryBQ_NtB3c_11Generalizer14remove_details0NCINvNvB1A_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5o_3VecBQ_E14extend_trustedINtB2q_3MapBF_B32_EE0E0E0EB3g_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5156
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENCNvXs_NtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer5queryNtB1p_17ShardQueryRequestNtB2g_11Generalizer14remove_details0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4e_8for_each4callB1n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5u_3VecB1n_E14extend_trustedBN_E0E0EB2k_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [504 x i8], align 8               ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNCNvXs_NtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer5queryNtBS_17ShardQueryRequestNtB3b_11Generalizer14remove_details0NCINvNvB1A_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5I_3VecBQ_E14extend_trustedINtB2q_3MapBF_B32_EE0E0E0EB3f_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 504
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [504 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5167
  invoke void @_RNvXs0_NtNtNtCsPYQCUnoTxQ_10collection10operations11generalizer5queryNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchNtB7_11Generalizer14remove_details(ptr noalias nofree noundef nonnull sret([504 x i8]) align 8 captures(none) dereferenceable(504) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(504) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !5168

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [504 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(504) %i.a, i64 504, i1 false), !noalias !5169
end_hunk_0
begin_hunk_1_@_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8_10LocalShard25internal_scroll_by_id_raw0s_0Bc_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8464
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.l)
          to label %bb.e unwind label %bb.k, !noalias !8464

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.e ], [ -2, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !8462, !noalias !8463, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !8464, !nonnull !7, !noundef !7
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !8464
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !8464
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx.i, i64 96, i1 false), !noalias !8464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8464
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !noalias !8464, !nonnull !7, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.t = load i8, ptr %i.s, align 8, !range !27, !alias.scope !8463, !noalias !8462, !noundef !7
  %.not9.i = icmp eq i8 %i.t, 2
  br i1 %.not9.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !8463, !noalias !8462, !nonnull !7, !noundef !7 ; 2 uses
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8, !noalias !8464
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.05.0.i = phi ptr [ null, %bb.f ], [ %i.v, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !8462, !noalias !8463, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8464
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !8462, !noalias !8463, !nonnull !7, !align !6, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !8462, !noalias !8463, !nonnull !7, !align !6, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !8462, !noalias !8463, !nonnull !7, !noundef !7
  store i64 %0, ptr %i.b, align 8, !noalias !8464
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.ag, align 8, !noalias !8464
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !8464
  %i.ai = load i64, ptr %i.ad, align 8, !noalias !8464, !noundef !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store i64 %i.ai, ptr %i.aj, align 8, !noalias !8464
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.0.0.i, ptr %i.ak, align 8, !noalias !8464
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i, i64 96, i1 false), !noalias !8464
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr %i.r, ptr %i.al, align 8, !noalias !8464
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.am, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  %i.an = load i8, ptr %i.af, align 1, !range !23, !noalias !8464, !noundef !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store i8 %i.an, ptr %i.ao, align 8, !noalias !8464
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store ptr %.sroa.05.0.i, ptr %i.ap, align 8, !noalias !8464
  %i.aq = call noundef nonnull ptr @_RINvMs_NtNtCsPYQCUnoTxQ_10collection6common15adaptive_handleNtB5_20AdaptiveSearchHandle14spawn_blockingNCNCNCNvMNtNtNtB9_6shards11local_shard6scrollNtB1O_10LocalShard25internal_scroll_by_id_raw000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4l_6common15operation_error14OperationErrorEEB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(280) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8464
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.aq

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.i) #39
          to label %bb.m unwind label %bb.l, !noalias !8462

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !8462
  unreachable

bb.m:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #39
          to label %.body.thread unwind label %bb.l, !noalias !8462

.body.thread:                                     ; preds = %bb.m, %bb.n
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.at, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body3

bb.n:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(16) %i.e) #39
          to label %.body.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNtNtCs5QaNqjAn6vc_5shard13proxy_segment12ProxySegmentNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntry9drop_data6vtableCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs0_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB7_12ProxySegmentNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntry9drop_data(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(352) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNtNtCs607s0NAIaWN_7segment7segment7SegmentNtNtNtB8_5entry11entry_point19StorageSegmentEntry9drop_data6vtableCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs0_NtNtCs607s0NAIaWN_7segment7segment5entryNtB7_7SegmentNtNtNtB9_5entry11entry_point19StorageSegmentEntry9drop_data(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(560) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i16 @_RNvNtNtNtCseUPaKcRZYeZ_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %0) unnamed_addr #14 {
bb.a:
  %.sroa.0.12.vec.insert = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %0, i64 0
  %i.a = tail call <8 x i16> @llvm.x86.vcvtps2ph.128(<4 x float> %.sroa.0.12.vec.insert, i32 0)
  %.sroa.02.0.vec.extract = extractelement <8 x i16> %i.a, i64 0
  ret i16 %.sroa.02.0.vec.extract
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 3) i8 @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry12segment_type(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(560) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.b = load i8, ptr %i.a, align 2, !range !27, !noundef !7
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry12segment_uuid(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(560) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry13is_appendable(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(560) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load i8, ptr %i.a, align 8, !range !23, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry6config(ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(560) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry8is_proxy(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #17 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs0_NtNtCs607s0NAIaWN_7segment7segment5entryNtB7_7SegmentNtNtNtB9_5entry11entry_point19StorageSegmentEntry7version(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(560) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.0.0 = select i1 %i.c, i64 %i.e, i64 0
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldTRjRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentETjB1B_EuINtNtB9_12control_flow11ControlFlowuENCNvMs3_NtB1G_14segment_holderNtB3n_13SegmentHolder4iter0NCIBR_B2w_NtNtCs607s0NAIaWN_7segment5types11SegmentTypeuB2E_NCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB5h_10LocalShard18local_shard_status00s_0NCINvNvNtNtNtBX_6traits8iterator8Iterator3any5checkB4k_NCB5a_s0_0E0E0E0INtB7_5FnMutTuB1y_EE8call_mutB5l_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8473)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8474
  %i.b = load i64, ptr %2, align 8, !range !8, !alias.scope !8474, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = trunc nuw i64 %i.b to i1
  %.pn.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !8474, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16 ; 7 uses
  %i.e = load atomic i64, ptr %.sroa.0.0.i.i.i monotonic, align 8, !noalias !8474 ; 4 uses
  %i.f = and i64 %i.e, 8
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ugt i64 %i.e, -17
  %or.cond.i.i.i.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i, !prof !58

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i: ; preds = %bb.a
  %i.i = add nuw i64 %i.e, 16
  %i.j = cmpxchg weak ptr %.sroa.0.0.i.i.i, i64 %i.e, i64 %i.i acquire monotonic, align 8, !noalias !8474
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i, !prof !59

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i, %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i, i1 noundef zeroext false, i64 undef, i32 noundef -1), !noalias !8474 ; 0 uses
  br label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i
  %i.m = ptrtoint ptr %.sroa.0.0.i.i.i to i64     ; 3 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.m), !noalias !8474
  %i.n = or disjoint i64 %i.m, 1                  ; 2 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.n), !noalias !8474
  %i.o = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24
  %3 = select i1 %i.d, ptr @_RNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB6_12ProxySegmentNtNtNtCs607s0NAIaWN_7segment5entry11entry_point16ReadSegmentEntry9size_info, ptr @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry9size_info
  invoke void %3(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.a, ptr noundef nonnull %i.o)
          to label %bb.c unwind label %bb.b, !noalias !8474

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsPYQCUnoTxQ_10collection.exit.i.i.i.i, %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.d, %bb.b
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.p, %bb.b ], [ %i.t, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsPYQCUnoTxQ_10collection(ptr nonnull %.sroa.0.0.i.i.i) #39
          to label %bb.h unwind label %bb.g, !noalias !8474

bb.c:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 217
  %i.r = load i8, ptr %i.q, align 1, !range !27, !noalias !8474, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBT_5types16PayloadIndexInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsPYQCUnoTxQ_10collection.exit.i.i.i.i unwind label %bb.d, !noalias !8474

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types14VectorDataInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %.body.i.i.i unwind label %bb.e, !noalias !8474

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types14VectorDataInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsPYQCUnoTxQ_10collection.exit.i.i.i unwind label %bb.b, !noalias !8474

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !8474
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsPYQCUnoTxQ_10collection.exit.i.i.i.i
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.m), !noalias !8474
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.n), !noalias !8474
  %i.x = atomicrmw sub ptr %.sroa.0.0.i.i.i, i64 16 release, align 8, !noalias !8474
  %i.y = and i64 %i.x, -14
  %i.z = icmp eq i64 %i.y, 18
  br i1 %i.z, label %bb.f, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTRjRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentETjB12_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs3_NtB17_14segment_holderNtB2U_13SegmentHolder4iter0NCIB2_B1X_NtNtCs607s0NAIaWN_7segment5types11SegmentTypeuB25_NCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB4O_10LocalShard18local_shard_status00s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB3R_NCB4H_s0_0E0E0E0B4S_.exit, !prof !18

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsPYQCUnoTxQ_10collection.exit.i.i.i
  call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i), !noalias !8474
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTRjRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentETjB12_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs3_NtB17_14segment_holderNtB2U_13SegmentHolder4iter0NCIB2_B1X_NtNtCs607s0NAIaWN_7segment5types11SegmentTypeuB25_NCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB4O_10LocalShard18local_shard_status00s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB3R_NCB4H_s0_0E0E0E0B4S_.exit

bb.g:                                             ; preds = %.body.i.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !8474
  unreachable

bb.h:                                             ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTRjRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentETjB12_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs3_NtB17_14segment_holderNtB2U_13SegmentHolder4iter0NCIB2_B1X_NtNtCs607s0NAIaWN_7segment5types11SegmentTypeuB25_NCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB4O_10LocalShard18local_shard_status00s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB3R_NCB4H_s0_0E0E0E0B4S_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsPYQCUnoTxQ_10collection.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8474
  %i.ab = icmp eq i8 %i.r, 2
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldTRjRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentETjB1B_EuINtNtB9_12control_flow11ControlFlowuENCNvMs3_NtB1G_14segment_holderNtB3n_13SegmentHolder4iter0NCINvNvNtNtNtBX_6traits8iterator8Iterator3any5checkB2w_NCNCNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13update_workerNtB5e_13UpdateWorkers30wait_for_deferred_points_ready000E0E0INtB7_5FnMutTuB1y_EE8call_mutB5g_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8483)
  %i.a = load i64, ptr %2, align 8, !range !8, !alias.scope !8484, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = trunc nuw i64 %i.a to i1
  %.pn.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !8484, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16 ; 7 uses
  %i.d = load atomic i64, ptr %.sroa.0.0.i.i.i monotonic, align 8, !noalias !8484 ; 4 uses
  %i.e = and i64 %i.d, 8
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ugt i64 %i.d, -17
  %or.cond.i.i.i.i.i = or i1 %i.g, %i.f
  br i1 %or.cond.i.i.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i, !prof !58

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i: ; preds = %bb.a
  %i.h = add nuw i64 %i.d, 16
  %i.i = cmpxchg weak ptr %.sroa.0.0.i.i.i, i64 %i.d, i64 %i.h acquire monotonic, align 8, !noalias !8484
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i, !prof !59

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i, %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i, i1 noundef zeroext false, i64 undef, i32 noundef -1), !noalias !8484 ; 0 uses
  br label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i
  %i.l = ptrtoint ptr %.sroa.0.0.i.i.i to i64     ; 3 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.l), !noalias !8484
  %i.m = or disjoint i64 %i.l, 1                  ; 2 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.m), !noalias !8484
  %i.n = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24
  %3 = select i1 %i.c, ptr @_RNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB6_12ProxySegmentNtNtNtCs607s0NAIaWN_7segment5entry11entry_point16ReadSegmentEntry19has_deferred_points, ptr @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry19has_deferred_points
  %i.o = invoke noundef zeroext i1 %3(ptr noundef nonnull %i.n)
          to label %bb.c unwind label %bb.b, !noalias !8484

bb.b:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsPYQCUnoTxQ_10collection(ptr nonnull %.sroa.0.0.i.i.i) #39
          to label %bb.f unwind label %bb.e, !noalias !8484

bb.c:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i.i
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.l), !noalias !8484
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.m), !noalias !8484
  %i.q = atomicrmw sub ptr %.sroa.0.0.i.i.i, i64 16 release, align 8, !noalias !8484
  %i.r = and i64 %i.q, -14
  %i.s = icmp eq i64 %i.r, 18
  br i1 %i.s, label %bb.d, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTRjRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentETjB12_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs3_NtB17_14segment_holderNtB2U_13SegmentHolder4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1X_NCNCNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13update_workerNtB4L_13UpdateWorkers30wait_for_deferred_points_ready000E0E0B4N_.exit, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i), !noalias !8484
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTRjRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentETjB12_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs3_NtB17_14segment_holderNtB2U_13SegmentHolder4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1X_NCNCNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13update_workerNtB4L_13UpdateWorkers30wait_for_deferred_points_ready000E0E0B4N_.exit

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !8484
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.p

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldTRjRNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentETjB12_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs3_NtB17_14segment_holderNtB2U_13SegmentHolder4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1X_NCNCNCNvMNtNtCsPYQCUnoTxQ_10collection14update_workers13update_workerNtB4L_13UpdateWorkers30wait_for_deferred_points_ready000E0E0B4N_.exit: ; preds = %bb.c, %bb.d
  ret i1 %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBb_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4t_6common15operation_error14OperationErrorEEINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB6a_6future10try_future11into_future10IntoFutureB2m_EENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8q_10LocalShard21internal_scroll_by_id0s_0NCIBR_B2m_B7g_B63_NvYB2m_NtB7l_12TryFutureExt11into_futureNCINvXs8_B66_B63_INtNtNtBX_6traits7collect12FromIteratorB7g_E9from_iterINtBT_3MapIBc9_INtNtBV_5chain5ChainINtNtB3V_9into_iter8IntoIterB1t_EBcH_EB8h_EBal_EE0E0E0INtB7_5FnMutTB63_B1t_EE8call_mutB8u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2, i64 noundef range(i64 0, 2) %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !7, !align !6, !noundef !7
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !8495
  %i.e = invoke fastcc noundef nonnull ptr @_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8_10LocalShard21internal_scroll_by_id0s_0Bc_(ptr nonnull readonly %.val, ptr %.val1, i64 noundef range(i64 0, 2) %3, ptr noundef %4)
          to label %bb.b unwind label %bb.e, !noalias !8494 ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !8495
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.e, ptr %i.f, align 8, !noalias !8496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8497)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !8498, !noalias !8499, !noundef !7 ; 2 uses
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !8498, !noalias !8499
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvMs4_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB5j_6common15operation_error14OperationErrorEEEEE4pushCsPYQCUnoTxQ_10collection(ptr noundef nonnull align 8 %i.j, ptr noundef nonnull %i.e, i64 noundef %i.h)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB3U_6common15operation_error14OperationErrorEEINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB5B_6future10try_future11into_future10IntoFutureB1N_EENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB7R_10LocalShard21internal_scroll_by_id0s_0NCIB2_B1N_B6H_B5u_NvYB1N_NtB6M_12TryFutureExt11into_futureNCINvXs8_B5x_B5u_INtNtNtB8_6traits7collect12FromIteratorB6H_E9from_iterINtB4_3MapIBbA_INtNtB6_5chain5ChainINtNtB3m_9into_iter8IntoIterBU_EBc8_EB7I_EB9M_EE0E0E0B7V_.exit unwind label %bb.c, !noalias !8499

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4P_6common15operation_error14OperationErrorEEEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #39
          to label %.body.i unwind label %bb.d, !noalias !8499

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !8499
  unreachable

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4P_6common15operation_error14OperationErrorEEEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b) #39
          to label %.body.i unwind label %bb.f, !noalias !8494

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !8494
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB3U_6common15operation_error14OperationErrorEEINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB5B_6future10try_future11into_future10IntoFutureB1N_EENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB7R_10LocalShard21internal_scroll_by_id0s_0NCIB2_B1N_B6H_B5u_NvYB1N_NtB6M_12TryFutureExt11into_futureNCINvXs8_B5x_B5u_INtNtNtB8_6traits7collect12FromIteratorB6H_E9from_iterINtB4_3MapIBbA_INtNtB6_5chain5ChainINtNtB3m_9into_iter8IntoIterBU_EBc8_EB7I_EB9M_EE0E0E0B7V_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !alias.scope !8500, !noalias !8501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8494
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBb_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4t_6common15operation_error14OperationErrorEEINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB6a_6future10try_future11into_future10IntoFutureB2m_EENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8q_10LocalShard25internal_scroll_by_id_raw0s_0NCIBR_B2m_B7g_B63_NvYB2m_NtB7l_12TryFutureExt11into_futureNCINvXs8_B66_B63_INtNtNtBX_6traits7collect12FromIteratorB7g_E9from_iterINtBT_3MapIBcd_INtNtBV_5chain5ChainINtNtB3V_9into_iter8IntoIterB1t_EBcL_EB8h_EBap_EE0E0E0INtB7_5FnMutTB63_B1t_EE8call_mutB8u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2, i64 noundef range(i64 0, 2) %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !7, !align !6, !noundef !7
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !7, !align !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !8512
  %i.e = invoke fastcc noundef nonnull ptr @_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8_10LocalShard25internal_scroll_by_id_raw0s_0Bc_(ptr nonnull readonly %.val, ptr %.val1, i64 noundef range(i64 0, 2) %3, ptr noundef %4)
          to label %bb.b unwind label %bb.e, !noalias !8511 ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !8512
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.e, ptr %i.f, align 8, !noalias !8513
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8514)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !8515, !noalias !8516, !noundef !7 ; 2 uses
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !8515, !noalias !8516
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_RNvMs4_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB5j_6common15operation_error14OperationErrorEEEEE4pushCsPYQCUnoTxQ_10collection(ptr noundef nonnull align 8 %i.j, ptr noundef nonnull %i.e, i64 noundef %i.h)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB3U_6common15operation_error14OperationErrorEEINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB5B_6future10try_future11into_future10IntoFutureB1N_EENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB7R_10LocalShard25internal_scroll_by_id_raw0s_0NCIB2_B1N_B6H_B5u_NvYB1N_NtB6M_12TryFutureExt11into_futureNCINvXs8_B5x_B5u_INtNtNtB8_6traits7collect12FromIteratorB6H_E9from_iterINtB4_3MapIBbE_INtNtB6_5chain5ChainINtNtB3m_9into_iter8IntoIterBU_EBcc_EB7I_EB9Q_EE0E0E0B7V_.exit unwind label %bb.c, !noalias !8516

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4P_6common15operation_error14OperationErrorEEEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #39
          to label %.body.i unwind label %bb.d, !noalias !8516

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !8516
  unreachable

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBI_6future10try_future11into_future10IntoFutureINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4P_6common15operation_error14OperationErrorEEEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b) #39
          to label %.body.i unwind label %bb.f, !noalias !8511

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !8511
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB3U_6common15operation_error14OperationErrorEEINtNtNtCsiHzErX7aQFk_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtB5B_6future10try_future11into_future10IntoFutureB1N_EENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB7R_10LocalShard25internal_scroll_by_id_raw0s_0NCIB2_B1N_B6H_B5u_NvYB1N_NtB6M_12TryFutureExt11into_futureNCINvXs8_B5x_B5u_INtNtNtB8_6traits7collect12FromIteratorB6H_E9from_iterINtB4_3MapIBbE_INtNtB6_5chain5ChainINtNtB3m_9into_iter8IntoIterBU_EBcc_EB7I_EB9Q_EE0E0E0B7V_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !alias.scope !8517, !noalias !8518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8511
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBb_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4t_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB6d_10LocalShard21internal_scroll_by_id0s_0NCIBR_B2m_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB2m_EuNvYB2m_NtB85_12TryFutureExt11into_futureNCIBR_B80_INtNtB87_14try_maybe_done12TryMaybeDoneB80_EuNcNtBad_6Future0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callBad_NCINvMsk_B3V_IB3T_Bad_E14extend_trustedINtBT_3MapIBcN_IBcN_INtNtBV_5chain5ChainINtNtB3V_9into_iter8IntoIterB1t_EBdq_EB64_EB9p_EBaW_EE0E0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutB6h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 0, 2) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8531)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !8531, !nonnull !7, !align !6, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !8531, !nonnull !7, !align !6, !noundef !7
  %i.d = tail call fastcc noundef nonnull ptr @_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8_10LocalShard21internal_scroll_by_id0s_0Bc_(ptr nonnull %.val.i, ptr %.val1.i, i64 noundef range(i64 0, 2) %1, ptr noundef %2) #41, !noalias !8531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8535)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !8536, !noalias !8537, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !8536, !noalias !8537, !noundef !7 ; 2 uses
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i64 -9223372036854775788, ptr %i.i, align 8, !noalias !8536
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !8536
  %i.j = add i64 %i.h, 1
  store i64 %i.j, ptr %i.g, align 8, !alias.scope !8536, !noalias !8537
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtBb_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtB4t_6common15operation_error14OperationErrorEEuNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB6d_10LocalShard25internal_scroll_by_id_raw0s_0NCIBR_B2m_INtNtNtNtCsiHzErX7aQFk_12futures_util6future10try_future11into_future10IntoFutureB2m_EuNvYB2m_NtB89_12TryFutureExt11into_futureNCIBR_B84_INtNtB8b_14try_maybe_done12TryMaybeDoneB84_EuNcNtBah_6Future0NCINvNvNtNtNtBX_6traits8iterator8Iterator8for_each4callBah_NCINvMsk_B3V_IB3T_Bah_E14extend_trustedINtBT_3MapIBcR_IBcR_INtNtBV_5chain5ChainINtNtB3V_9into_iter8IntoIterB1t_EBdu_EB64_EB9t_EBb0_EE0E0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutB6h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 0, 2) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !6, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8550)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !8550, !nonnull !7, !align !6, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !8550, !nonnull !7, !align !6, !noundef !7
  %i.d = tail call fastcc noundef nonnull ptr @_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6scrollNtB8_10LocalShard25internal_scroll_by_id_raw0s_0Bc_(ptr nonnull %.val.i, ptr %.val1.i, i64 noundef range(i64 0, 2) %1, ptr noundef %2) #41, !noalias !8550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8554)
end_hunk_1
