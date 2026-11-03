Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.202?download=true
inline.NumInlined: 372
inline.NumDeleted: 289
begin_hunk_0_@_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENCINvMNtB2i_12shard_holderNtB3l_11ShardHolder13get_transfersNCNCNvMNtNtB2k_10collection14collection_opsNtB4m_10Collection22handle_replica_changes00E0EENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant:bb.a
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 %i.r, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 %i.t, ptr %.sroa.11.0..sroa_idx, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !495
  store i64 -3, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXsl_NtNtCsPYQCUnoTxQ_10collection6shards8transferNtB5_13ShardTransferNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENCINvMNtB2i_12shard_holderNtB3l_11ShardHolder13get_transfersNCNCNvMNtNtB2k_10collection14collection_opsNtB4m_10Collection22handle_replica_changes00E0EENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !6
  store i64 0, ptr %0, align 8, !alias.scope !501
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !501
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !501
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENCINvMNtB2i_12shard_holderNtB3l_11ShardHolder13get_transfersNCNCNvMNtNtB2k_10collection14shard_transferNtB4m_10Collection21get_related_transfers00E0EENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !515
  store ptr %i.e, ptr %i.c, align 8, !noalias !516
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 10 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !516
  store ptr %i.g, ptr %i.b, align 8, !noalias !517
  %i.h = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtBU_11ShardHolder13get_transfersNCNCNvMNtNtBY_10collection14shard_transferNtB2o_10Collection21get_related_transfers00E0INtB7_5FnMutTRRNtNtBW_8transfer13ShardTransferEE8call_mutCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !516
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !515
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !518, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.l = load i32, ptr %i.k, align 8, !range !18, !alias.scope !518, !noundef !6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !518
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.p = load <2 x i64>, ptr %i.o, align 8, !alias.scope !518
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  %i.r = load i8, ptr %i.q, align 4, !range !11, !alias.scope !518, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 133
  %i.t = load i8, ptr %i.s, align 1, !range !19, !alias.scope !518, !noundef !6
  %i.u = load i64, ptr %i.g, align 8, !range !15, !alias.scope !518, !noundef !6
  %.not6.i = icmp eq i64 %i.u, -2
  br i1 %.not6.i, label %_RNvXsl_NtNtCsPYQCUnoTxQ_10collection6shards8transferNtB5_13ShardTransferNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.g) #25
  %.sroa.02.0.copyload.i = load i64, ptr %i.a, align 8
  br label %_RNvXsl_NtNtCsPYQCUnoTxQ_10collection6shards8transferNtB5_13ShardTransferNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsl_NtNtCsPYQCUnoTxQ_10collection6shards8transferNtB5_13ShardTransferNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.d, %bb.e
  %.sroa.02.0.i = phi i64 [ %.sroa.02.0.copyload.i, %bb.e ], [ -2, %bb.d ]
  %i.v = trunc nuw i32 %i.l to i1
  %.sroa.5.0.i = select i1 %i.v, i32 %i.n, i32 undef
  store i64 %.sroa.02.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.p, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.j, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 %i.r, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 %i.t, ptr %.sroa.11.0..sroa_idx, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !515
  store i64 -3, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXsl_NtNtCsPYQCUnoTxQ_10collection6shards8transferNtB5_13ShardTransferNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENCINvMNtB2i_12shard_holderNtB3l_11ShardHolder13get_transfersNCNCNvMNtNtB2k_10collection14shard_transferNtB4m_10Collection21get_related_transfers00E0EENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !6
  store i64 0, ptr %0, align 8, !alias.scope !521
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !521
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !521
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB33_10Collection20do_core_search_batch0s0_0EEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !536
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !537, !nonnull !6
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.d = phi ptr [ %i.f, %bb.d ], [ %.promoted.i.i, %bb.a ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 472 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !540
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.h = load i64, ptr %i.g, align 8, !range !15, !alias.scope !541, !noalias !542, !noundef !6
  %.not.i.i.i.i.i = icmp eq i64 %i.h, -2
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2I_10Collection20do_core_search_batch0s0_0EENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2I_10Collection20do_core_search_batch0s0_0EENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  tail call fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2I_10Collection20do_core_search_batch0s0_0EENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB33_10Collection20do_core_search_batch0s0_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2I_10Collection20do_core_search_batch0s0_0EENtNtNtB9_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 472
  br label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2I_10Collection20do_core_search_batch0s0_0EENtNtNtB9_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2I_10Collection20do_core_search_batch0s0_0EENtNtNtB9_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  %.sroa.7.0.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8, !alias.scope !547
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !alias.scope !547
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.i.i, ptr %i.h, align 8, !alias.scope !547
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBa_6option6OptionRNtNtCs607s0NAIaWN_7segment5types6FilterEEEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !558, !noundef !6
  %.not.i.i.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !559, !nonnull !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not.i.i.i, label %.split.us.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.a
  %.promoted.i.i = load ptr, ptr %i.e, align 8, !alias.scope !559
  br label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  br label %.loopexit

.split.i.i:                                       ; preds = %bb.b, %.split.preheader.i.i
  %i.f = phi ptr [ %i.h, %bb.b ], [ %.promoted.i.i, %.split.preheader.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.split.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !562
  %i.i = load ptr, ptr %i.f, align 8, !noalias !562, !align !10, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.split.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCs607s0NAIaWN_7segment5types6FilterEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCs607s0NAIaWN_7segment5types6FilterEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.b
  tail call fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i) #25
  br label %bb.c

.loopexit:                                        ; preds = %.split.i.i, %.split.us.i.i
  store i64 -2, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionRNtNtCs607s0NAIaWN_7segment5types6FilterEEENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_7flatten7FlattenINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBa_6option6OptionRNtNtCs607s0NAIaWN_7segment5types6FilterEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !573, !noundef !6
  %.not.i.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !573, !nonnull !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val2.i.i = load ptr, ptr %i.d, align 8, !alias.scope !573, !nonnull !6
  %i.e = ptrtoint ptr %.val2.i.i to i64
  %i.f = ptrtoint ptr %.val.i.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %.sroa.7.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.h
  store i64 0, ptr %0, align 8, !alias.scope !574
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8, !alias.scope !574
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.i.i, ptr %i.j, align 8, !alias.scope !574
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCshqfBqtY9aGF_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 104                 ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !577
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !577
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !577
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCshqfBqtY9aGF_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringuEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 5                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !580
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !580
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !580
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCshqfBqtY9aGF_8indexmap6BucketxuEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !583
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !583
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !583
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !586
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !586
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !586
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard8grouping5GroupEENtNtNtB8_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !alias.scope !592, !nonnull !6, !noundef !6 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !592, !nonnull !6, !noundef !6
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.g, ptr %1, align 8, !alias.scope !592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !594
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c), !noalias !595
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !596, !alias.scope !593, !noundef !6 ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  %i.k = add i64 %i.i, -9223372036854775807
  %i.l = select i1 %i.j, i64 %i.k, i64 0
  switch i64 %i.l, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !594
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.h unwind label %bb.g, !noalias !595

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !593, !noundef !6
  %i.o = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.n, i64 0
  br label %_RNvXs3_NtCs5QaNqjAn6vc_5shard8groupingNtB5_5GroupNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !593, !noundef !6
  %i.r = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.q, i64 0
  br label %_RNvXs3_NtCs5QaNqjAn6vc_5shard8groupingNtB5_5GroupNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %bb.j unwind label %bb.i, !noalias !595

bb.h:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !594
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load <2 x i64>, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !594
  br label %_RNvXs3_NtCs5QaNqjAn6vc_5shard8groupingNtB5_5GroupNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !595
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

_RNvXs3_NtCs5QaNqjAn6vc_5shard8groupingNtB5_5GroupNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.e, %bb.f, %bb.h
  %.sroa.0.0.i2 = phi i64 [ %.sroa.0.0.copyload.i, %bb.h ], [ -9223372036854775808, %bb.e ], [ -9223372036854775807, %bb.f ]
  %i.v = phi <2 x i64> [ %i.t, %bb.h ], [ %i.o, %bb.e ], [ %i.r, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !594
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.v, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvXs3_NtCs5QaNqjAn6vc_5shard8groupingNtB5_5GroupNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard8grouping5GroupEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
