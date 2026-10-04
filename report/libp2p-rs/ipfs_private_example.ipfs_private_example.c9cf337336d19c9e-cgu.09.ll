Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_private_example.ipfs_private_example.c9cf337336d19c9e-cgu.09?download=true
inline.NumInlined: 1699
inline.NumDeleted: 847
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvCse0v0U5LqnG1_12thread_local15allocate_bucketINtNtBc_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB42_8for_each4callINtB1u_5EntryB2d_ENCINvMsk_B2B_IB2z_B55_E14extend_trustedBN_E0E0ECshke30g4Hb4g_20ipfs_private_example:bb.a
  %.sroa.42.0..sroa_idx.i.i.2 = getelementptr i8, ptr %i.l, i64 112
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.2, align 8, !noalias !1481
  %i.m = add nuw i64 %.sroa.0.010.i, 4            ; 2 uses
  %i.n = getelementptr [40 x i8], ptr %.sroa.6.0.copyload, i64 %i.i
  %.sroa.42.0..sroa_idx.i.i.3 = getelementptr i8, ptr %i.n, i64 152
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.3, align 8, !noalias !1481
  %i.o = add i64 %i.i, 4                          ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.m, %1
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCse0v0U5LqnG1_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit, label %.lr.ph.i

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtCse0v0U5LqnG1_12thread_local5EntryINtNtBa_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs9Bqz0CSWZZv_12tracing_core8metadata11LevelFilterEEEuNCINvB28_15allocate_bucketB2G_E0NCINvNvBL_8for_each4callB25_NCINvMsk_B34_IB32_B25_E14extend_trustedINtB1B_3MapB3_B4u_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.o, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1482
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB1u_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1w_3cfg13DefaultConfigE3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callINtNtB1w_4page6SharedB2h_B3m_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5A_3VecB4X_E14extend_trustedBN_E0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !7, !align !14, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.f = icmp ult i64 %i.b, %i.d
  br i1 %i.f, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i
  %.val4.i = phi i64 [ %i.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.h, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = invoke noundef i64 @_RNvYNtNtCskeoOuuhwsQF_12sharded_slab3cfg13DefaultConfigNtB4_10CfgPrivate9page_sizeCshke30g4Hb4g_20ipfs_private_example(i64 noundef %.sroa.0.010.i)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i unwind label %bb.b, !noalias !1493 ; 2 uses

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %.lr.ph.i
  %i.h = add i64 %.sroa.0.010.i, 1                ; 2 uses
  %i.i = load i64, ptr %i.e, align 8, !noalias !1494, !noundef !7 ; 2 uses
  %i.j = add i64 %i.i, %i.g
  store i64 %i.j, ptr %i.e, align 8, !noalias !1494
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i ; 4 uses
  store ptr null, ptr %i.k, align 8, !noalias !1495
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 274877906944, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1495
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %i.g, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !1495
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1495
  %i.l = add i64 %.val4.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1493
  resume { ptr, i32 } %i.m

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2a_3cfg13DefaultConfigEuNCNvMNtB2a_5shardINtB4r_5ShardB2O_B3T_E3new0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5F_3VecB25_E14extend_trustedINtB1B_3MapB3_B4m_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtCskeoOuuhwsQF_12sharded_slab4page6SharedNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB10_3cfg13DefaultConfigEuNCNvMNtB10_5shardINtB3h_5ShardB1E_B2J_E3new0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4Z_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3c_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1493
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskeoOuuhwsQF_12sharded_slab5shardINtB1u_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1w_3cfg13DefaultConfigE3news_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callNtNtB1w_4page5LocalNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5r_3VecB4Z_E14extend_trustedBN_E0E0ECshke30g4Hb4g_20ipfs_private_example(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.b = shl i64 %.sroa.4.0.copyload, 3
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %i.b
  %i.c = sub nuw i64 %1, %0                       ; 2 uses
  %i.d = shl i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.d, i1 false), !noalias !1504
  %i.e = add i64 %i.c, %.sroa.4.0.copyload
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCskeoOuuhwsQF_12sharded_slab4page5LocaluNCNvMNtB29_5shardINtB2S_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB29_3cfg13DefaultConfigE3news_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5w_3VecB25_E14extend_trustedINtB1B_3MapB3_B2N_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.a, %.lr.ph.i
  %.val6.i = phi i64 [ %i.e, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1505
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENvMs2_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB1v_4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1z_3cfg13DefaultConfigE3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4callB2b_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB2b_E14extend_trustedBN_E0E0ECshke30g4Hb4g_20ipfs_private_example(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.b = icmp ult i64 %0, %1
  br i1 %i.b, label %.lr.ph.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i
  %.val4.i = phi i64 [ %i.e, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.c, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i ], [ %0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1514
  invoke void @_RNvMs2_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB9_3cfg13DefaultConfigE3newCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, i64 noundef %.sroa.0.010.i)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i unwind label %bb.b, !noalias !1515

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %.lr.ph.i
  %i.c = add i64 %.sroa.0.010.i, 1                ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !1516
  %i.e = add i64 %.val4.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1514
  %exitcond.not.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1515
  resume { ptr, i32 } %i.f

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB2c_3cfg13DefaultConfigEuNvMs2_B28_B25_3newNCINvNvBL_8for_each4callB25_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5k_3VecB25_E14extend_trustedINtB1B_3MapB3_B4r_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.e, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldjINtNtNtCskeoOuuhwsQF_12sharded_slab4page4slot4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB12_3cfg13DefaultConfigEuNvMs2_BY_BV_3newNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB3h_EE0E0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1515
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1u_12dns_exchange11DnsExchangeNtNtNtB1w_7runtime13tokio_runtime20TokioRuntimeProviderEEKj0_ENCINvMNtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB3R_10NameServerB2L_E3newAB1r_B3H_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5g_8for_each4callINtB3R_15ConnectionStateB2L_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6V_3VecB6j_E14extend_trustedBN_E0E0ECshke30g4Hb4g_20ipfs_private_example(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !noalias !1522
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !noalias !1522
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.16.copyload.i = load ptr, ptr %2, align 8, !alias.scope !1522, !nonnull !7, !noundef !7
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.9.16.copyload.i = load i64, ptr %.sroa.9.16..sroa_idx.i, align 8, !alias.scope !1522
  %.not5.i.i = icmp eq i64 %0, %1
  tail call void @llvm.assume(i1 %.not5.i.i)
  store i64 %.sroa.9.16.copyload.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !1523
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1z_12dns_exchange11DnsExchangeNtNtNtB1B_7runtime13tokio_runtime20TokioRuntimeProviderEEEj0_NtB4_11PartialDrop12partial_dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.c, i64 noundef %0, i64 noundef %0), !noalias !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i32 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB2l_13CachingClientINtNtB2n_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0ENtNtNtBa_6traits8iterator8Iterator4foldmNvYmNtNtBc_3cmp3Ord3minECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRBQ_mmNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB3e_13CachingClientINtNtB3g_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0NvYmNtNtBb_3cmp3Ord3minE0ECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 280                 ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 1120
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 72057594037927932
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.02.0.i = phi i32 [ %2, %.new ], [ %..i.i.i.i.3, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.h = getelementptr i8, ptr %i.g, i64 268
  %.val.i = load i32, ptr %i.h, align 4, !noundef !7
  %..i.i.i.i = tail call noundef i32 @llvm.umin.i32(i32 %.val.i, i32 %.sroa.02.0.i)
  %i.i = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 548
  %.val.i.1 = load i32, ptr %i.j, align 4, !noundef !7
  %..i.i.i.i.1 = tail call noundef i32 @llvm.umin.i32(i32 %.val.i.1, i32 %..i.i.i.i)
  %i.k = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.l = getelementptr i8, ptr %i.k, i64 828
  %.val.i.2 = load i32, ptr %i.l, align 4, !noundef !7
  %..i.i.i.i.2 = tail call noundef i32 @llvm.umin.i32(i32 %.val.i.2, i32 %..i.i.i.i.1)
  %i.m = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 1108
  %.val.i.3 = load i32, ptr %i.n, align 4, !noundef !7
  %..i.i.i.i.3 = tail call noundef i32 @llvm.umin.i32(i32 %.val.i.3, i32 %..i.i.i.i.2) ; 3 uses
  %i.o = add nuw nsw i64 %.sroa.04.0.i, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRBQ_mmNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB3e_13CachingClientINtNtB3g_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0NvYmNtNtBb_3cmp3Ord3minE0ECshke30g4Hb4g_20ipfs_private_example.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRBQ_mmNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB3e_13CachingClientINtNtB3g_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0NvYmNtNtBb_3cmp3Ord3minE0ECshke30g4Hb4g_20ipfs_private_example.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRBQ_mmNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB3e_13CachingClientINtNtB3g_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0NvYmNtNtBb_3cmp3Ord3minE0ECshke30g4Hb4g_20ipfs_private_example.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRBQ_mmNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB3e_13CachingClientINtNtB3g_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0NvYmNtNtBb_3cmp3Ord3minE0ECshke30g4Hb4g_20ipfs_private_example.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRBQ_mmNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB3e_13CachingClientINtNtB3g_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0NvYmNtNtBb_3cmp3Ord3minE0ECshke30g4Hb4g_20ipfs_private_example.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i32 [ %2, %bb.b ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRBQ_mmNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB3e_13CachingClientINtNtB3g_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0NvYmNtNtBb_3cmp3Ord3minE0ECshke30g4Hb4g_20ipfs_private_example.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.r, %bb.d ] ; 2 uses
  %.sroa.02.0.i.epil = phi i32 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %..i.i.i.i.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.p = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %.sroa.04.0.i.epil
  %i.q = getelementptr i8, ptr %i.p, i64 268
  %.val.i.epil = load i32, ptr %i.q, align 4, !noundef !7
  %..i.i.i.i.epil = tail call noundef i32 @llvm.umin.i32(i32 %.val.i.epil, i32 %.sroa.02.0.i.epil) ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRBQ_mmNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB3e_13CachingClientINtNtB3g_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0NvYmNtNtBb_3cmp3Ord3minE0ECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.d, !llvm.loop !1524

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRBQ_mmNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB3e_13CachingClientINtNtB3g_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0NvYmNtNtBb_3cmp3Ord3minE0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRBQ_mmNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB3e_13CachingClientINtNtB3g_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0NvYmNtNtBb_3cmp3Ord3minE0ECshke30g4Hb4g_20ipfs_private_example.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.sroa.0.0.i = phi i32 [ %2, %bb.a ], [ %..i.i.i.i.3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1N_8adapters3map8map_foldRBQ_mmNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB3e_13CachingClientINtNtB3g_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE17lookup_from_cache0NvYmNtNtBb_3cmp3Ord3minE0ECshke30g4Hb4g_20ipfs_private_example.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %bb.d ]
  ret i32 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtCscu2bAJ62uie_6either6EitherIB1p_IB1p_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIB1p_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB36_EEB36_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENCNvXNtB4o_15listener_selectINtB5l_20ListenerSelectFutureNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxB1o_ENtNtNtBc_6future6future6Future4poll0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRB4k_B4k_uNvYB4k_NtNtBc_5clone5Clone5cloneNCINvNvB7P_8for_each4callB4k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa2_3VecB4k_E14extend_trustedINtNtB8_6cloned6ClonedBN_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTINtCscu2bAJ62uie_6either6EitherIBS_IBS_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBS_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2w_EEB2w_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB4M_8adapters3map8map_foldRBQ_RB3K_uNCNvXNtB3O_15listener_selectINtB6f_20ListenerSelectFutureNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxBR_ENtNtNtBb_6future6future6Future4poll0NCIB5u_B64_B3K_uNvYB3K_NtNtBb_5clone5Clone5cloneNCINvNvB4G_8for_each4callB3K_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa5_3VecB3K_E14extend_trustedINtNtB5y_6cloned6ClonedINtB5w_3MapBF_B6a_EEE0E0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1537
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.d unwind label %bb.e, !noalias !1538

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1539
  %i.j = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1537
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTINtCscu2bAJ62uie_6either6EitherIBS_IBS_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBS_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2w_EEB2w_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB4M_8adapters3map8map_foldRBQ_RB3K_uNCNvXNtB3O_15listener_selectINtB6f_20ListenerSelectFutureNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxBR_ENtNtNtBb_6future6future6Future4poll0NCIB5u_B64_B3K_uNvYB3K_NtNtBb_5clone5Clone5cloneNCINvNvB4G_8for_each4callB3K_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa5_3VecB3K_E14extend_trustedINtNtB5y_6cloned6ClonedINtB5w_3MapBF_B6a_EEE0E0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1538
  resume { ptr, i32 } %i.m

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTINtCscu2bAJ62uie_6either6EitherIBS_IBS_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBS_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2w_EEB2w_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB4M_8adapters3map8map_foldRBQ_RB3K_uNCNvXNtB3O_15listener_selectINtB6f_20ListenerSelectFutureNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed12SubstreamBoxBR_ENtNtNtBb_6future6future6Future4poll0NCIB5u_B64_B3K_uNvYB3K_NtNtBb_5clone5Clone5cloneNCINvNvB4G_8for_each4callB3K_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa5_3VecB3K_E14extend_trustedINtNtB5y_6cloned6ClonedINtB5w_3MapBF_B6a_EEE0E0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1538
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtBc_2io5error5ErrorEEENCNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB3v_5SwarmNtNCNvCshke30g4Hb4g_20ipfs_private_example4main011MyBehaviourE17handle_pool_events_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRB1o_B1o_uNvYB1o_NtNtBc_5clone5Clone5cloneNCINvNvB5y_8for_each4callB1o_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7L_3VecB1o_E14extend_trustedINtNtB8_6cloned6ClonedBN_EE0E0E0EB4g_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtBb_2io5error5ErrorEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2U_8adapters3map8map_foldRBQ_RBR_uNCNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB4r_5SwarmNtNCNvCshke30g4Hb4g_20ipfs_private_example4main011MyBehaviourE17handle_pool_events_00NCIB3C_B4c_BR_uNvYBR_NtNtBb_5clone5Clone5cloneNCINvNvB2O_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7O_3VecBR_E14extend_trustedINtNtB3G_6cloned6ClonedINtB3E_3MapBF_B4h_EEE0E0E0E0EB5c_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1555
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1556, !nonnull !7, !align !14, !noundef !7
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1556, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1556, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1556, !noundef !7
  invoke void %i.i(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.j, ptr noundef %i.l, i64 noundef %i.n)
          to label %bb.d unwind label %bb.e, !noalias !1557, !inline_history !1550

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1558
  %i.p = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1555
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.f
  br i1 %i.r, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtBb_2io5error5ErrorEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2U_8adapters3map8map_foldRBQ_RBR_uNCNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB4r_5SwarmNtNCNvCshke30g4Hb4g_20ipfs_private_example4main011MyBehaviourE17handle_pool_events_00NCIB3C_B4c_BR_uNvYBR_NtNtBb_5clone5Clone5cloneNCINvNvB2O_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7O_3VecBR_E14extend_trustedINtNtB3G_6cloned6ClonedINtB3E_3MapBF_B4h_EEE0E0E0E0EB5c_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1557
  resume { ptr, i32 } %i.s

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtBb_2io5error5ErrorEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2U_8adapters3map8map_foldRBQ_RBR_uNCNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB4r_5SwarmNtNCNvCshke30g4Hb4g_20ipfs_private_example4main011MyBehaviourE17handle_pool_events_00NCIB3C_B4c_BR_uNvYBR_NtNtBb_5clone5Clone5cloneNCINvNvB2O_8for_each4callBR_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7O_3VecBR_E14extend_trustedINtNtB3G_6cloned6ClonedINtB3E_3MapBF_B4h_EEE0E0E0E0EB5c_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1557
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENCNvXNtB1u_15listener_selectINtB2r_20ListenerSelectFutureINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtB1u_10negotiated10NegotiatedINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB64_EEEB1o_ENtNtNtBc_6future6future6Future4poll0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRB1q_B1q_uNvYB1q_NtNtBc_5clone5Clone5cloneNCINvNvB7N_8for_each4callB1q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa0_3VecB1q_E14extend_trustedINtNtB8_6cloned6ClonedBN_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldRBQ_RBT_uNCNvXNtBX_15listener_selectINtB3n_20ListenerSelectFutureINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtBX_10negotiated10NegotiatedINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB6Y_EEEBR_ENtNtNtBb_6future6future6Future4poll0NCIB2D_B3d_BT_uNvYBT_NtNtBb_5clone5Clone5cloneNCINvNvB1P_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa0_3VecBT_E14extend_trustedINtNtB2H_6cloned6ClonedINtB2F_3MapBF_B3i_EEE0E0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 40
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1571
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.d unwind label %bb.e, !noalias !1572

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1573
  %i.j = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1571
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldRBQ_RBT_uNCNvXNtBX_15listener_selectINtB3n_20ListenerSelectFutureINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtBX_10negotiated10NegotiatedINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB6Y_EEEBR_ENtNtNtBb_6future6future6Future4poll0NCIB2D_B3d_BT_uNvYBT_NtNtBb_5clone5Clone5cloneNCINvNvB1P_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa0_3VecBT_E14extend_trustedINtNtB2H_6cloned6ClonedINtB2F_3MapBF_B3i_EEE0E0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1572
  resume { ptr, i32 } %i.m

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldRBQ_RBT_uNCNvXNtBX_15listener_selectINtB3n_20ListenerSelectFutureINtNtCshuexzQAPOo_12libp2p_noise2io6OutputINtNtBX_10negotiated10NegotiatedINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB6Y_EEEBR_ENtNtNtBb_6future6future6Future4poll0NCIB2D_B3d_BT_uNvYBT_NtNtBb_5clone5Clone5cloneNCINvNvB1P_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa0_3VecBT_E14extend_trustedINtNtB2H_6cloned6ClonedINtB2F_3MapBF_B3i_EEE0E0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1572
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENCNvXNtB1u_15listener_selectINtB2r_20ListenerSelectFutureINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB4R_EB1o_ENtNtNtBc_6future6future6Future4poll0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRB1q_B1q_uNvYB1q_NtNtBc_5clone5Clone5cloneNCINvNvB6y_8for_each4callB1q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8L_3VecB1q_E14extend_trustedINtNtB8_6cloned6ClonedBN_EE0E0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldRBQ_RBT_uNCNvXNtBX_15listener_selectINtB3n_20ListenerSelectFutureINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB5M_EBR_ENtNtNtBb_6future6future6Future4poll0NCIB2D_B3d_BT_uNvYBT_NtNtBb_5clone5Clone5cloneNCINvNvB1P_8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8M_3VecBT_E14extend_trustedINtNtB2H_6cloned6ClonedINtB2F_3MapBF_B3i_EEE0E0E0E0ECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 40
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1586
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.d unwind label %bb.e, !noalias !1587

end_hunk_0
begin_hunk_1_@_RNvYINtNtNtCs4WSCZBoZJWV_6cipher6stream7wrapper23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1S_IB1S_IB1S_NtB1U_5UTermNtNtB1W_3bit2B1ENtB2V_2B0EB2T_EB39_EEENtB7_12StreamCipher25try_apply_keystream_inoutCshke30g4Hb4g_20ipfs_private_example:bb.a
  %i.or = xor i32 %i.oq, %i.nl                    ; 2 uses
  %i.os = add i32 %i.or, %i.oo                    ; 2 uses
  %i.ot = call noundef i32 @llvm.fshl.i32(i32 %i.os, i32 %i.os, i32 18)
  %i.ou = xor i32 %i.ot, %i.nk                    ; 3 uses
  %i.ov = add i32 %i.np, %i.no                    ; 2 uses
  %i.ow = call noundef i32 @llvm.fshl.i32(i32 %i.ov, i32 %i.ov, i32 7)
  %i.ox = xor i32 %i.ow, %i.nq                    ; 4 uses
  %i.oy = add i32 %i.ox, %i.no                    ; 2 uses
  %i.oz = call noundef i32 @llvm.fshl.i32(i32 %i.oy, i32 %i.oy, i32 9)
  %i.pa = xor i32 %i.oz, %i.nr                    ; 3 uses
  %i.pb = add i32 %i.pa, %i.ox                    ; 2 uses
  %i.pc = call noundef i32 @llvm.fshl.i32(i32 %i.pb, i32 %i.pb, i32 13)
  %i.pd = xor i32 %i.pc, %i.np                    ; 2 uses
  %i.pe = add i32 %i.pd, %i.pa                    ; 2 uses
  %i.pf = call noundef i32 @llvm.fshl.i32(i32 %i.pe, i32 %i.pe, i32 18)
  %i.pg = xor i32 %i.pf, %i.no                    ; 3 uses
  %i.ph = add i32 %i.nt, %i.ns                    ; 2 uses
  %i.pi = call noundef i32 @llvm.fshl.i32(i32 %i.ph, i32 %i.ph, i32 7)
  %i.pj = xor i32 %i.pi, %i.nu                    ; 4 uses
  %i.pk = add i32 %i.pj, %i.ns                    ; 2 uses
  %i.pl = call noundef i32 @llvm.fshl.i32(i32 %i.pk, i32 %i.pk, i32 9)
  %i.pm = xor i32 %i.pl, %i.nv                    ; 3 uses
  %i.pn = add i32 %i.pm, %i.pj                    ; 2 uses
  %i.po = call noundef i32 @llvm.fshl.i32(i32 %i.pn, i32 %i.pn, i32 13)
  %i.pp = xor i32 %i.po, %i.nt                    ; 2 uses
  %i.pq = add i32 %i.pp, %i.pm                    ; 2 uses
  %i.pr = call noundef i32 @llvm.fshl.i32(i32 %i.pq, i32 %i.pq, i32 18)
  %i.ps = xor i32 %i.pr, %i.ns                    ; 3 uses
  %i.pt = add i32 %i.pj, %i.oi                    ; 2 uses
  %i.pu = call noundef i32 @llvm.fshl.i32(i32 %i.pt, i32 %i.pt, i32 7)
  %i.pv = xor i32 %i.pu, %i.or                    ; 4 uses
  %i.pw = add i32 %i.pv, %i.oi                    ; 2 uses
  %i.px = call noundef i32 @llvm.fshl.i32(i32 %i.pw, i32 %i.pw, i32 9)
  %i.py = xor i32 %i.px, %i.pa                    ; 4 uses
  %i.pz = add i32 %i.py, %i.pv                    ; 2 uses
  %i.qa = call noundef i32 @llvm.fshl.i32(i32 %i.pz, i32 %i.pz, i32 13)
  %i.qb = xor i32 %i.qa, %i.pj                    ; 3 uses
  %i.qc = add i32 %i.qb, %i.py                    ; 2 uses
  %i.qd = call noundef i32 @llvm.fshl.i32(i32 %i.qc, i32 %i.qc, i32 18)
  %i.qe = xor i32 %i.qd, %i.oi                    ; 2 uses
  %i.qf = add i32 %i.ou, %i.nz                    ; 2 uses
  %i.qg = call noundef i32 @llvm.fshl.i32(i32 %i.qf, i32 %i.qf, i32 7)
  %i.qh = xor i32 %i.qg, %i.pd                    ; 4 uses
  %i.qi = add i32 %i.qh, %i.ou                    ; 2 uses
  %i.qj = call noundef i32 @llvm.fshl.i32(i32 %i.qi, i32 %i.qi, i32 9)
  %i.qk = xor i32 %i.qj, %i.pm                    ; 4 uses
  %i.ql = add i32 %i.qk, %i.qh                    ; 2 uses
  %i.qm = call noundef i32 @llvm.fshl.i32(i32 %i.ql, i32 %i.ql, i32 13)
  %i.qn = xor i32 %i.qm, %i.nz                    ; 3 uses
  %i.qo = add i32 %i.qn, %i.qk                    ; 2 uses
  %i.qp = call noundef i32 @llvm.fshl.i32(i32 %i.qo, i32 %i.qo, i32 18)
  %i.qq = xor i32 %i.qp, %i.ou                    ; 2 uses
  %i.qr = add i32 %i.pg, %i.ol                    ; 2 uses
  %i.qs = call noundef i32 @llvm.fshl.i32(i32 %i.qr, i32 %i.qr, i32 7)
  %i.qt = xor i32 %i.qs, %i.pp                    ; 4 uses
  %i.qu = add i32 %i.qt, %i.pg                    ; 2 uses
  %i.qv = call noundef i32 @llvm.fshl.i32(i32 %i.qu, i32 %i.qu, i32 9)
  %i.qw = xor i32 %i.qv, %i.oc                    ; 4 uses
  %i.qx = add i32 %i.qw, %i.qt                    ; 2 uses
  %i.qy = call noundef i32 @llvm.fshl.i32(i32 %i.qx, i32 %i.qx, i32 13)
  %i.qz = xor i32 %i.qy, %i.ol                    ; 3 uses
  %i.ra = add i32 %i.qz, %i.qw                    ; 2 uses
  %i.rb = call noundef i32 @llvm.fshl.i32(i32 %i.ra, i32 %i.ra, i32 18)
  %i.rc = xor i32 %i.rb, %i.pg                    ; 2 uses
  %i.rd = add i32 %i.ps, %i.ox                    ; 2 uses
  %i.re = call noundef i32 @llvm.fshl.i32(i32 %i.rd, i32 %i.rd, i32 7)
  %i.rf = xor i32 %i.re, %i.of                    ; 4 uses
  %i.rg = add i32 %i.rf, %i.ps                    ; 2 uses
  %i.rh = call noundef i32 @llvm.fshl.i32(i32 %i.rg, i32 %i.rg, i32 9)
  %i.ri = xor i32 %i.rh, %i.oo                    ; 4 uses
  %i.rj = add i32 %i.ri, %i.rf                    ; 2 uses
  %i.rk = call noundef i32 @llvm.fshl.i32(i32 %i.rj, i32 %i.rj, i32 13)
  %i.rl = xor i32 %i.rk, %i.ox                    ; 3 uses
  %i.rm = add i32 %i.rl, %i.ri                    ; 2 uses
  %i.rn = call noundef i32 @llvm.fshl.i32(i32 %i.rm, i32 %i.rm, i32 18)
  %i.ro = xor i32 %i.rn, %i.ps                    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.nw, 10
  br i1 %exitcond.not.i.i.i, label %bb.g, label %bb.h

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
  %.sroa.510.051.i.i.i = phi i64 [ %i.sj, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i ], [ %.sroa.510.051.i.i.i.unr, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.prol.loopexit ] ; 6 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %.sroa.510.051.i.i.i ; 2 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %.sroa.510.051.i.i.i
  %i.rr = add nuw i64 %.sroa.510.051.i.i.i, 1     ; 2 uses
  %i.rs = load i32, ptr %i.rp, align 4, !noalias !4320, !noundef !7
  %i.rt = load i32, ptr %i.rq, align 4, !noalias !4320, !noundef !7
  %i.ru = add i32 %i.rt, %i.rs
  store i32 %i.ru, ptr %i.rp, align 4, !noalias !4320
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %i.rr ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %i.rr
  %i.rx = add nuw i64 %.sroa.510.051.i.i.i, 2     ; 2 uses
  %i.ry = load i32, ptr %i.rv, align 4, !noalias !4320, !noundef !7
  %i.rz = load i32, ptr %i.rw, align 4, !noalias !4320, !noundef !7
  %i.sa = add i32 %i.rz, %i.ry
  store i32 %i.sa, ptr %i.rv, align 4, !noalias !4320
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %i.rx ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %i.rx
  %i.sd = add nuw i64 %.sroa.510.051.i.i.i, 3     ; 2 uses
  %i.se = load i32, ptr %i.sb, align 4, !noalias !4320, !noundef !7
  %i.sf = load i32, ptr %i.sc, align 4, !noalias !4320, !noundef !7
  %i.sg = add i32 %i.sf, %i.se
  store i32 %i.sg, ptr %i.sb, align 4, !noalias !4320
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %i.sd ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %i.sd
  %i.sj = add nuw i64 %.sroa.510.051.i.i.i, 4     ; 2 uses
  %i.sk = load i32, ptr %i.sh, align 4, !noalias !4320, !noundef !7
  %i.sl = load i32, ptr %i.si, align 4, !noalias !4320, !noundef !7
  %i.sm = add i32 %i.sl, %i.sk
  store i32 %i.sm, ptr %i.sh, align 4, !noalias !4320
  %exitcond67.not.i.i.i.3 = icmp eq i64 %i.sj, %.sroa.711.0.copyload.i.i.i
  br i1 %exitcond67.not.i.i.i.3, label %_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, !llvm.loop !4260

_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, %middle.block198, %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !4324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4318
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.so = load i64, ptr %i.sn, align 4, !alias.scope !4325, !noalias !4326
  %i.sp = add i64 %i.so, 1
  store i64 %i.sp, ptr %i.sn, align 4, !alias.scope !4325, !noalias !4326
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.sr = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4327
  store ptr %i.sq, ptr %i.b, align 8, !noalias !4328
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4328
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !4328
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !4328
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !4328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4318
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull %i.g, ptr noundef nonnull %i.sr)
          to label %.noexc5.i unwind label %.loopexit.split-lp.i, !noalias !4282

.noexc5.i:                                        ; preds = %_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4327
  %i.ss = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.su = load i64, ptr %i.ss, align 8, !alias.scope !4329, !noalias !4330, !noundef !7 ; 2 uses
  %i.sv = load i64, ptr %i.st, align 8, !alias.scope !4329, !noalias !4330, !noundef !7
  %i.sw = icmp ult i64 %i.su, %i.sv
  br i1 %i.sw, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i, label %iter.check217

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i: ; preds = %.noexc5.i
  %i.sx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %.noexc7.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i
  %i.sy = phi i64 [ %i.su, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i ], [ %i.tf, %.noexc7.i ] ; 3 uses
  %i.sz = add nuw i64 %i.sy, 1
  store i64 %i.sz, ptr %i.ss, align 8, !alias.scope !4329, !noalias !4330
  %i.ta = invoke { ptr, i64 } @_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef %i.sy)
          to label %.noexc6.i unwind label %.loopexit.i, !noalias !4282 ; 2 uses

.noexc6.i:                                        ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
  %i.tb = extractvalue { ptr, i64 } %i.ta, 0      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i.i, label %iter.check217, label %bb.i

bb.i:                                             ; preds = %.noexc6.i
  %.val.i1.i.i.i = load ptr, ptr %i.sx, align 8, !alias.scope !4329, !noalias !4330, !nonnull !7, !noundef !7
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.val.i1.i.i.i, i64 %i.sy
  %i.td = extractvalue { ptr, i64 } %i.ta, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4318
  %i.te = load i32, ptr %i.tc, align 4, !noalias !4331, !noundef !7
  store i32 %i.te, ptr %i.e, align 4, !noalias !4318
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull %i.tb, i64 noundef %i.td, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !4282

.noexc7.i:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4318
  %i.tf = load i64, ptr %i.ss, align 8, !alias.scope !4329, !noalias !4330, !noundef !7 ; 2 uses
  %i.tg = load i64, ptr %i.st, align 8, !alias.scope !4329, !noalias !4330, !noundef !7
  %i.th = icmp ult i64 %i.tf, %i.tg
  br i1 %i.th, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, label %iter.check217

iter.check217:                                    ; preds = %.noexc7.i, %.noexc6.i, %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4318
  call void @llvm.experimental.noalias.scope.decl(metadata !4332)
  call void @llvm.experimental.noalias.scope.decl(metadata !4333)
  %min.iters.check204 = icmp samesign ult i64 %i.au, 4
  %i.ti = sub i64 %i.ao, %i.am
  %diff.check202 = icmp ugt i64 %i.ti, -16
  %or.cond231 = or i1 %min.iters.check204, %diff.check202
  br i1 %or.cond231, label %vec.epilog.scalar.ph218.preheader, label %vector.main.loop.iter.check205

vector.main.loop.iter.check205:                   ; preds = %iter.check217
  %min.iters.check206 = icmp samesign ult i64 %i.au, 16
  br i1 %min.iters.check206, label %vec.epilog.ph221, label %vector.ph207

vector.ph207:                                     ; preds = %vector.main.loop.iter.check205
  %i.tj = and i64 %i.ar, 12
  %n.vec208 = and i64 %i.ar, 48                   ; 4 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.ph207, %vector.body209
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next213, %vector.body209 ] ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.av, i64 %index210 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.load211 = load <8 x i8>, ptr %2, align 1, !noalias !4334
  %wide.load212 = load <8 x i8>, ptr %i.tk, align 1, !noalias !4334
  %3 = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index210 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.s, i64 %index210 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %wide.load213 = load <8 x i8>, ptr %i.tl, align 4, !alias.scope !4335, !noalias !4336
  %wide.load214 = load <8 x i8>, ptr %i.tm, align 4, !alias.scope !4335, !noalias !4336
  %4 = xor <8 x i8> %wide.load213, %wide.load211
  %5 = xor <8 x i8> %wide.load214, %wide.load212
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <8 x i8> %4, ptr %3, align 1, !noalias !4334
  store <8 x i8> %5, ptr %6, align 1, !noalias !4334
  %index.next213 = add nuw i64 %index210, 16      ; 2 uses
  %i.tn = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.tn, label %middle.block214, label %vector.body209, !llvm.loop !4273

middle.block214:                                  ; preds = %vector.body209
  %cmp.n215 = icmp eq i64 %i.au, %n.vec208
  br i1 %cmp.n215, label %.loopexit, label %vec.epilog.iter.check219

vec.epilog.iter.check219:                         ; preds = %middle.block214
  %min.epilog.iters.check220 = icmp eq i64 %i.tj, 0
  br i1 %min.epilog.iters.check220, label %vec.epilog.scalar.ph218.preheader, label %vec.epilog.ph221, !prof !4288

vec.epilog.ph221:                                 ; preds = %vector.main.loop.iter.check205, %vec.epilog.iter.check219
  %vec.epilog.resume.val216 = phi i64 [ %n.vec208, %vec.epilog.iter.check219 ], [ 0, %vector.main.loop.iter.check205 ]
  %n.vec222 = and i64 %i.ar, 60                   ; 3 uses
  br label %vec.epilog.vector.body223

vec.epilog.vector.body223:                        ; preds = %vec.epilog.vector.body223, %vec.epilog.ph221
  %index224 = phi i64 [ %vec.epilog.resume.val216, %vec.epilog.ph221 ], [ %index.next227, %vec.epilog.vector.body223 ] ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.av, i64 %index224
  %wide.load225 = load <4 x i8>, ptr %i.to, align 1, !noalias !4334
  %i.tp = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index224
  %i.tq = getelementptr inbounds nuw i8, ptr %i.s, i64 %index224
  %wide.load226 = load <4 x i8>, ptr %i.tq, align 4, !alias.scope !4335, !noalias !4336
  %i.tr = xor <4 x i8> %wide.load226, %wide.load225
  store <4 x i8> %i.tr, ptr %i.tp, align 1, !noalias !4334
  %index.next227 = add nuw i64 %index224, 4       ; 2 uses
  %i.ts = icmp eq i64 %index.next227, %n.vec222
  br i1 %i.ts, label %vec.epilog.middle.block228, label %vec.epilog.vector.body223, !llvm.loop !4274

vec.epilog.middle.block228:                       ; preds = %vec.epilog.vector.body223
  %cmp.n229 = icmp eq i64 %i.au, %n.vec222
  br i1 %cmp.n229, label %.loopexit, label %vec.epilog.scalar.ph218.preheader

vec.epilog.scalar.ph218.preheader:                ; preds = %iter.check217, %vec.epilog.iter.check219, %vec.epilog.middle.block228
  %.sroa.01.0.i1.i.i.ph = phi i64 [ 0, %iter.check217 ], [ %n.vec208, %vec.epilog.iter.check219 ], [ %n.vec222, %vec.epilog.middle.block228 ] ; 3 uses
  %xtraiter269 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod270.not = icmp eq i64 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %vec.epilog.scalar.ph218.prol.loopexit, label %vec.epilog.scalar.ph218.prol

vec.epilog.scalar.ph218.prol:                     ; preds = %vec.epilog.scalar.ph218.preheader, %vec.epilog.scalar.ph218.prol
  %.sroa.01.0.i1.i.i.prol = phi i64 [ %i.tw, %vec.epilog.scalar.ph218.prol ], [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph218.preheader ] ; 4 uses
  %prol.iter271 = phi i64 [ %prol.iter271.next, %vec.epilog.scalar.ph218.prol ], [ 0, %vec.epilog.scalar.ph218.preheader ]
  %i.tt = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.01.0.i1.i.i.prol
  %i.tu = load i8, ptr %i.tt, align 1, !noalias !4334, !noundef !7
  %i.tv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i1.i.i.prol
  %i.tw = add nuw nsw i64 %.sroa.01.0.i1.i.i.prol, 1 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i1.i.i.prol
  %i.ty = load i8, ptr %i.tx, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.tz = xor i8 %i.ty, %i.tu
  store i8 %i.tz, ptr %i.tv, align 1, !noalias !4334
  %prol.iter271.next = add i64 %prol.iter271, 1   ; 2 uses
  %prol.iter271.cmp.not = icmp eq i64 %prol.iter271.next, %xtraiter269
  br i1 %prol.iter271.cmp.not, label %vec.epilog.scalar.ph218.prol.loopexit, label %vec.epilog.scalar.ph218.prol, !llvm.loop !4275

vec.epilog.scalar.ph218.prol.loopexit:            ; preds = %vec.epilog.scalar.ph218.prol, %vec.epilog.scalar.ph218.preheader
  %.sroa.01.0.i1.i.i.unr = phi i64 [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph218.preheader ], [ %i.tw, %vec.epilog.scalar.ph218.prol ]
  %i.ua = sub nsw i64 %.sroa.01.0.i1.i.i.ph, %i.au
  %i.ub = icmp ugt i64 %i.ua, -4
  br i1 %i.ub, label %.loopexit, label %vec.epilog.scalar.ph218

vec.epilog.scalar.ph218:                          ; preds = %vec.epilog.scalar.ph218.prol.loopexit, %vec.epilog.scalar.ph218
  %.sroa.01.0.i1.i.i = phi i64 [ %i.va, %vec.epilog.scalar.ph218 ], [ %.sroa.01.0.i1.i.i.unr, %vec.epilog.scalar.ph218.prol.loopexit ] ; 7 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.01.0.i1.i.i
  %i.ud = load i8, ptr %i.uc, align 1, !noalias !4334, !noundef !7
  %i.ue = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i1.i.i
  %i.uf = add nuw nsw i64 %.sroa.01.0.i1.i.i, 1   ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i1.i.i
  %i.uh = load i8, ptr %i.ug, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.ui = xor i8 %i.uh, %i.ud
  store i8 %i.ui, ptr %i.ue, align 1, !noalias !4334
  %i.uj = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.uf
  %i.uk = load i8, ptr %i.uj, align 1, !noalias !4334, !noundef !7
  %i.ul = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.uf
  %i.um = add nuw nsw i64 %.sroa.01.0.i1.i.i, 2   ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.uf
  %i.uo = load i8, ptr %i.un, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.up = xor i8 %i.uo, %i.uk
  store i8 %i.up, ptr %i.ul, align 1, !noalias !4334
  %i.uq = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.um
  %i.ur = load i8, ptr %i.uq, align 1, !noalias !4334, !noundef !7
  %i.us = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.um
  %i.ut = add nuw nsw i64 %.sroa.01.0.i1.i.i, 3   ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.um
  %i.uv = load i8, ptr %i.uu, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.uw = xor i8 %i.uv, %i.ur
  store i8 %i.uw, ptr %i.us, align 1, !noalias !4334
  %i.ux = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ut
  %i.uy = load i8, ptr %i.ux, align 1, !noalias !4334, !noundef !7
  %i.uz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ut
  %i.va = add nuw nsw i64 %.sroa.01.0.i1.i.i, 4   ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ut
  %i.vc = load i8, ptr %i.vb, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.vd = xor i8 %i.vc, %i.uy
  store i8 %i.vd, ptr %i.uz, align 1, !noalias !4334
  %exitcond.not.i8.i.3 = icmp eq i64 %i.va, %i.au
  br i1 %exitcond.not.i8.i.3, label %.loopexit, label %vec.epilog.scalar.ph218, !llvm.loop !4276

.loopexit:                                        ; preds = %vec.epilog.scalar.ph218.prol.loopexit, %vec.epilog.scalar.ph218, %vec.epilog.middle.block228, %middle.block214
  %i.ve = trunc nuw nsw i64 %i.au to i8
  store i8 %i.ve, ptr %i.s, align 4, !alias.scope !4337, !noalias !4338
  br label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCshke30g4Hb4g_20ipfs_private_example.exit

.loopexit.i:                                      ; preds = %bb.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i, %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i8 64, ptr %i.s, align 4, !alias.scope !4281, !noalias !4282
  resume { ptr, i32 } %lpad.phi.i

_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %.loopexit, %_RNvYINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBM_IBM_IBM_NtBO_5UTermNtNtBQ_3bit2B1ENtB1L_2B0EB1J_EB1Y_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCshke30g4Hb4g_20ipfs_private_example.exit.i, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.0.0.i4 = phi i1 [ true, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit ], [ false, %_RNvYINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBM_IBM_IBM_NtBO_5UTermNtNtBQ_3bit2B1ENtB1L_2B0EB1J_EB1Y_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCshke30g4Hb4g_20ipfs_private_example.exit.i ], [ false, %.loopexit ]
  ret i1 %.sroa.0.0.i4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBJ_3ops8function6FnOnceTlQNtNtBJ_3fmt9FormatterEE9call_onceCshke30g4Hb4g_20ipfs_private_example(i32 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4341
  call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix12error_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %0), !noalias !4341
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !4341, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !4341, !noundef !7
  %i.f = invoke noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume.i unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume.i:                                  ; preds = %bb.d, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4341
  ret i1 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCskmxkG8Vp81z_12hybrid_array7from_fnINtB5_5ArrayhINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB24_2B0EB2h_EB2h_EB2h_EB2h_EB2h_EE11try_from_fnzNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtCskKLDkoKarTP_4core7default7Default7default0E0ECshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 1 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1R_IB1R_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIB1R_NtNtBZ_15stream_protocol14StreamProtocolB3y_EEB3y_EEbEE3newCshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1S_IB1S_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIB1S_NtNtB10_15stream_protocol14StreamProtocolB3z_EEB3z_EEbEE9next_implKb0_ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0
end_hunk_1
