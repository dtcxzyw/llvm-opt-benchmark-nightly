Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.015?download=true
inline.NumInlined: 5638
inline.NumDeleted: 3744
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesmINtNtB16_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENCINvMNtB2h_12shard_holderNtB3r_11ShardHolder14split_by_shardNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsEs0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5s_8for_each4callTRB1V_B4k_ENCINvMsk_NtB16_3vecINtB6P_3VecB6v_E14extend_trustedBN_E0E0ECsl8OoimOLbh_6qdrant:bb.a

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.513.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.417.0..sroa_idx.i.i.i.i.i, i64 23, i1 false), !noalias !8565
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops23PointStructRawPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc14.i unwind label %bb.c, !noalias !8551

.noexc14.i:                                       ; preds = %bb.ac
  store i8 %i.cy, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.59.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.56.i.i.i.i.i, i64 23, i1 false), !noalias !8563
  store i8 %i.da, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.610.sroa.4.0..sroa.610.0..sroa_idx.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.513.i.i.i.i.i, i64 23, i1 false), !noalias !8563
  br label %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.noexc14.i, %.noexc13.i, %.noexc11.i, %bb.r, %bb.p, %bb.o, %_RNvXs1w_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_34ConditionalInsertOperationInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %.sroa.8.8.copyload.i.i.i = phi i64 [ 9, %.noexc14.i ], [ 7, %.noexc13.i ], [ 3, %.noexc11.i ], [ 6, %bb.p ], [ 5, %bb.o ], [ %.sroa.8.8.copyload.pre.i.i.i, %_RNvXs1w_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_34ConditionalInsertOperationInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ 8, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !8556
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.i.i.i.i.i)
  %i.db = load <4 x i8>, ptr %i.ax, align 8, !noalias !8563
  %.sroa.17.8.copyload.i.i.i = load i8, ptr %.sroa.17.8..sroa_idx.i.i.i, align 4, !noalias !8563
  %.sroa.18.8.copyload.i.i.i = load i8, ptr %.sroa.18.8..sroa_idx.i.i.i, align 1, !noalias !8563
  %.sroa.19.8.copyload.i.i.i = load i16, ptr %.sroa.19.8..sroa_idx.i.i.i, align 2, !noalias !8563
  %i.dc = load <2 x i64>, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !8563
  %.sroa.22.8.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8563
  %.sroa.24.8.copyload.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx3.i.i.i.i.i, align 8, !noalias !8563
  %.sroa.27.8.copyload.i.i.i = load i64, ptr %.sroa.27.8..sroa_idx.i.i.i, align 8, !noalias !8563
  %i.dd = load <8 x i8>, ptr %.sroa.29.8..sroa_idx.i.i.i, align 8, !noalias !8563
  %.sroa.37.sroa.0.0.copyload125.i.i.i = load i64, ptr %.sroa.37.8..sroa_idx.i.i.i, align 8, !noalias !8563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.38.8..sroa_idx.i.i.i, i64 64, i1 false), !noalias !8563
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetETBU_NtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsEuNCINvMNtB1x_12shard_holderNtB3O_11ShardHolder14split_by_shardB2E_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvMsk_NtB10_3vecINtB5W_3VecB2A_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map6ValuesmBV_EB3I_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i

bb.ad:                                            ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !8566)
  %i.de = load i64, ptr %i.az, align 8, !range !19, !alias.scope !8567, !noalias !8554, !noundef !10 ; 2 uses
  switch i64 %i.de, label %default.unreachable [
    i64 0, label %bb.ae
    i64 1, label %bb.aj
    i64 2, label %bb.bf
  ]

default.unreachable:                              ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !8568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8569
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.be)
          to label %.noexc15.i unwind label %bb.c, !noalias !8551

.noexc15.i:                                       ; preds = %bb.ae
  %i.df = load i64, ptr %i.bd, align 8, !range !17, !alias.scope !8570, !noalias !8554, !noundef !10
  %.not.i.i.i.i.i.i = icmp eq i64 %i.df, -2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.noexc15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !8569
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bd)
          to label %bb.ah unwind label %bb.ag, !noalias !8571

bb.ag:                                            ; preds = %bb.af
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #37
          to label %.body unwind label %bb.ai, !noalias !8571

bb.ah:                                            ; preds = %bb.af
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !8569
  %.sroa.5.i.i.i.sroa.0.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !8556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i.i.i, i64 23, i1 false), !noalias !8556
  %.sroa.5.i.i.i.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i.i.i, align 8, !noalias !8556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i.i.i, i64 24, i1 false), !noalias !8556
  %i.dh = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i.i.i, align 8, !noalias !8556
  %.sroa.5.i.i.i.sroa.17.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i.i.i, align 8, !noalias !8556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5.0..sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.sroa_idx.i.i.i, i64 24, i1 false), !noalias !8556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !8569
  br label %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8571
  unreachable

_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %bb.ah, %.noexc15.i
  %.sroa.5.i.i.i.sroa.17.sroa.0.0.i.i.i = phi i64 [ undef, %.noexc15.i ], [ %.sroa.5.i.i.i.sroa.17.sroa.0.0.copyload.i.i.i, %bb.ah ]
  %.sroa.5.i.i.i.sroa.7.0.i.i.i = phi i64 [ undef, %.noexc15.i ], [ %.sroa.5.i.i.i.sroa.7.0.copyload.i.i.i, %bb.ah ]
  %.sroa.5.i.i.i.sroa.0.0.i.i.i = phi i8 [ undef, %.noexc15.i ], [ %.sroa.5.i.i.i.sroa.0.0.copyload.i.i.i, %bb.ah ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ -2, %.noexc15.i ], [ %.sroa.0.0.copyload1.i.i.i.i.i.i, %bb.ah ]
  %i.dj = phi <8 x i8> [ undef, %.noexc15.i ], [ %i.dh, %bb.ah ]
  %i.dk = load <4 x i8>, ptr %i.x, align 8, !noalias !8572
  %.sroa.6.i.sroa.9.0.copyload86.i.i.i = load i8, ptr %.sroa.6.i.sroa.9.0..sroa_idx85.i.i.i, align 4, !noalias !8572
  %.sroa.6.i.sroa.10.0.copyload90.i.i.i = load i8, ptr %.sroa.6.i.sroa.10.0..sroa_idx89.i.i.i, align 1, !noalias !8572
  %.sroa.6.i.sroa.11.0.copyload94.i.i.i = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx93.i.i.i, align 2, !noalias !8572
  %i.dl = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx97.i.i.i, align 8, !noalias !8572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8569
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !8573
  call void @llvm.experimental.noalias.scope.decl(metadata !8574)
  call void @llvm.experimental.noalias.scope.decl(metadata !8575)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !8576
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz)
          to label %.noexc16.i unwind label %bb.c, !noalias !8551

.noexc16.i:                                       ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i2.i.i.i.i.i)
  %i.dm = load i64, ptr %i.bd, align 8, !range !18, !alias.scope !8577, !noalias !8554, !noundef !10 ; 4 uses
  %.not.i3.i.i.i.i.i = icmp eq i64 %i.dm, -1
  br i1 %.not.i3.i.i.i.i.i, label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.noexc16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !8576
  call void @llvm.experimental.noalias.scope.decl(metadata !8578)
  call void @llvm.experimental.noalias.scope.decl(metadata !8579)
  %i.dn = add nsw i64 %i.dm, -2
  %.inv.i.i.i.i.i.i.i = icmp samesign ult i64 %i.dm, 2
  %i.do = select i1 %.inv.i.i.i.i.i.i.i, i64 2, i64 %i.dn
  switch i64 %i.do, label %bb.al [
    i64 0, label %bb.am
    i64 1, label %bb.ar
    i64 2, label %bb.as
  ]

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8580)
  call void @llvm.experimental.noalias.scope.decl(metadata !8581)
  %i.dp = load i64, ptr %i.bm, align 8, !range !15, !alias.scope !8582, !noalias !8554, !noundef !10
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dr = load i64, ptr %i.bu, align 8, !alias.scope !8582, !noalias !8554, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ds = load i8, ptr %i.cd, align 1, !alias.scope !8582, !noalias !8554, !noundef !10
  %.not.i.i.i.i.i.i.i.i = icmp sgt i8 %i.ds, -1
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !8582, !noalias !8554 ; 5 uses
  %.val21.i.i.i.i.i.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !8582, !noalias !8554 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ap, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dt = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i, i64 -16
  %i.du = atomicrmw add ptr %i.dt, i64 1 monotonic, align 8, !noalias !8583
  %i.dv = icmp slt i64 %i.du, 0
  br i1 %i.dv, label %.invoke.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i, !prof !24

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %bb.aq, %bb.ap
  %.sroa.06.0.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i, %bb.aq ], [ inttoptr (i64 16 to ptr), %bb.ap ], [ %.val.i.i.i.i.i.i.i.i, %bb.ao ]
  %i.dw = ptrtoint ptr %.sroa.06.0.i.i.i.i.i.i.i.i to i64
  store i64 %i.dw, ptr %.sroa.4.i.i.i.i.i.i.i, align 8, !alias.scope !8580, !noalias !8584
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i, %bb.an
  %.sink.i.sroa.phi.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i ], [ %.sroa.4.i.i.i.i.i.i.i, %bb.an ]
  %.sroa.58.0.sink.i.i.i.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i ], [ %i.dr, %bb.an ]
  %storemerge.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i ], [ 1, %bb.an ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i.i.i, align 8, !alias.scope !8580, !noalias !8584
  store i64 %storemerge.i.i.i.i.i.i.i.i, ptr %i.au, align 8, !alias.scope !8578, !noalias !8576
  %.sroa.4.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i.i.i.i, align 8, !noalias !8584
  store i64 %.sroa.4.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !8578, !noalias !8576
  %.sroa.6.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i.i.i.i, align 8, !noalias !8584
  store i64 %.sroa.6.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !8578, !noalias !8576
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !8585

bb.as:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !8586)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !8587
  call void @llvm.experimental.noalias.scope.decl(metadata !8588)
  call void @llvm.experimental.noalias.scope.decl(metadata !8589)
  %i.dx = trunc nuw i64 %i.dm to i1               ; 2 uses
  br i1 %i.dx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dy = load i64, ptr %i.bm, align 8, !alias.scope !8590, !noalias !8554, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.dz = load i8, ptr %i.ca, align 1, !alias.scope !8590, !noalias !8554, !noundef !10
  %.not.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.dz, -1
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !8590, !noalias !8554 ; 5 uses
  %.val21.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !8590, !noalias !8554 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %2, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.i

2:                                                ; preds = %bb.au
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %2
  %i.ea = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 -16
  %i.eb = atomicrmw add ptr %i.ea, i64 1 monotonic, align 8, !noalias !8591
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %.invoke.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.i, !prof !24

.invoke.i.i.i.i.i.i:                              ; preds = %bb.av, %bb.aq
  %i.ed = phi ptr [ %.val.i.i.i.i.i.i.i.i, %bb.aq ], [ %.val.i.i.i.i.i.i.i.i.i, %bb.av ]
  %i.ee = phi i64 [ %.val21.i.i.i.i.i.i.i.i, %bb.aq ], [ %.val21.i.i.i.i.i.i.i.i.i, %bb.av ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ed, i64 noundef %i.ee) #40
          to label %.cont.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !8585

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.av, %2
  %.sroa.06.0.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i, %bb.av ], [ inttoptr (i64 16 to ptr), %2 ], [ %.val.i.i.i.i.i.i.i.i.i, %bb.au ]
  store ptr %.sroa.06.0.i.i.i.i.i.i.i.i.i, ptr %.sink.i.sroa.gep16.i.i.i.i.i.i.i.i, align 8, !alias.scope !8588, !noalias !8587
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.i, %bb.at
  %.sink.i.sroa.phi.i.i.i.i.i.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.i ], [ %.sink.i.sroa.gep16.i.i.i.i.i.i.i.i, %bb.at ]
  %.sroa.58.0.sink.i.i.i.i.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.i ], [ %i.dy, %bb.at ]
  %i.ef = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i.i ], [ 1, %bb.at ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i.i.i.i, align 8, !alias.scope !8588, !noalias !8587
  store i64 %i.ef, ptr %i.t, align 8, !alias.scope !8588, !noalias !8587
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8592)
  call void @llvm.experimental.noalias.scope.decl(metadata !8593)
  %i.eg = load i64, ptr %i.cb, align 8, !range !15, !alias.scope !8594, !noalias !8554, !noundef !10
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i
  %i.ei = load i64, ptr %i.bn, align 8, !alias.scope !8594, !noalias !8554, !noundef !10
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i
  %i.ej = load i8, ptr %i.cc, align 1, !alias.scope !8594, !noalias !8554, !noundef !10
  %.not.i1.i.i.i.i.i.i.i.i = icmp sgt i8 %i.ej, -1
  %.val.i11.i.i.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !8594, !noalias !8554 ; 5 uses
  %.val21.i12.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !8594, !noalias !8554 ; 2 uses
  br i1 %.not.i1.i.i.i.i.i.i.i.i, label %bb.ay, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i13.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i11.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i.i.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ek = getelementptr inbounds i8, ptr %.val.i11.i.i.i.i.i.i.i.i, i64 -16
  %i.el = atomicrmw add ptr %i.ek, i64 1 monotonic, align 8, !noalias !8595
  %i.em = icmp slt i64 %i.el, 0
  br i1 %i.em, label %bb.ba, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i.i.i, !prof !24

bb.ba:                                            ; preds = %bb.az
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i.i.i.i.i.i.i.i, i64 noundef %.val21.i12.i.i.i.i.i.i.i.i) #40
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.bb, !noalias !8596

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ba
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i.i.i: ; preds = %bb.ax, %bb.az, %bb.ay
  %.sroa.06.0.i6.i.i.i.i.i.i.i.i = phi ptr [ %.val.i11.i.i.i.i.i.i.i.i, %bb.az ], [ inttoptr (i64 16 to ptr), %bb.ay ], [ %.val.i11.i.i.i.i.i.i.i.i, %bb.ax ]
  %i.en = ptrtoint ptr %.sroa.06.0.i6.i.i.i.i.i.i.i.i to i64
  store i64 %i.en, ptr %.sroa.4.i.i.i.i.i.i.i.i, align 8, !alias.scope !8592, !noalias !8587
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.t, i64 23
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !8597, !noalias !8587
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp slt i8 %i.eq, 0
  %or.cond.i.not.i.i.i.i.i.i.i.i = select i1 %i.dx, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i.i.i.i.i.i.i.i)
          to label %.body.i.i.i.i.i.i unwind label %bb.bd, !noalias !8596

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8596
  unreachable

_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i.i.i, %bb.aw
  %.sink.i7.sroa.phi.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i.i.i ], [ %.sroa.4.i.i.i.i.i.i.i.i, %bb.aw ]
  %.sroa.58.0.sink.i8.i.i.i.i.i.i.i.i = phi i64 [ %.val21.i12.i.i.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i.i.i ], [ %i.ei, %bb.aw ]
  %storemerge.i9.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i.i.i.i ], [ 1, %bb.aw ]
  store i64 %.sroa.58.0.sink.i8.i.i.i.i.i.i.i.i, ptr %.sink.i7.sroa.phi.i.i.i.i.i.i.i.i, align 8, !alias.scope !8592, !noalias !8587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !8598
  %.sroa.4.i.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i.i.i.i.i, align 8, !noalias !8587
  %.sroa.6.i.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i.i.i.i.i, align 8, !noalias !8587
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8587
  store i64 %storemerge.i9.i.i.i.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !8578, !noalias !8576
  store i64 %.sroa.4.i.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !8578, !noalias !8576
  store i64 %.sroa.6.i.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !8578, !noalias !8576
  %.sroa.0.0.copyload1.pre.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !8576
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %.invoke.i.i.i.i.i.i
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.bc, %bb.bb
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.eo, %bb.bb ], [ %i.eo, %bb.bc ], [ %lpad.loopexit.split-lp139, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #37
          to label %.body unwind label %bb.be, !noalias !8585

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i, %bb.ar, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i
  %.sroa.0.0.copyload1.i4.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.pre.i.i.i.i.i.i, %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ 3, %bb.ar ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !noalias !8576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !8576
  br label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.be:                                            ; preds = %.body.i.i.i.i.i.i
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8585
  unreachable

_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i, %.noexc16.i
  %.sroa.9.32.copyload.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i4.i.i.i.i.i, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ -1, %.noexc16.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !8599
  store i64 %.sroa.9.32.copyload.i.i.i.i, ptr %i.ab, align 8, !alias.scope !8574, !noalias !8573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i.i.i.i.i, i64 40, i1 false), !noalias !8599
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i2.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !8576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !8573
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %bb.bh unwind label %bb.bg, !noalias !8600

bb.bf:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !8573
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.be) #39
          to label %.noexc17.i unwind label %bb.c, !noalias !8551

.noexc17.i:                                       ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !8573
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by)
          to label %bb.bk unwind label %bb.bj, !noalias !8600

bb.bg:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops12PointIdsListECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ab) #37
          to label %.body unwind label %bb.bi, !noalias !8600

bb.bh:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %.sroa.5.i.i.i.sroa.0.0.copyload104.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i7.i.i.i.i.i, align 8, !noalias !8556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i.i.i, i64 23, i1 false), !noalias !8556
  %.sroa.5.i.i.i.sroa.7.0.copyload106.i.i.i = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i.i.i, align 8, !noalias !8556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i.i.i, i64 24, i1 false), !noalias !8556
  %i.eu = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx.i.i.i, align 8, !noalias !8556
  %i.ev = load <4 x i8>, ptr %i.aa, align 8, !noalias !8572
  %.sroa.6.i.sroa.9.0.copyload84.i.i.i = load i8, ptr %.sroa.6.i.sroa.9.0..sroa_idx83.i.i.i, align 4, !noalias !8572
  %.sroa.6.i.sroa.10.0.copyload88.i.i.i = load i8, ptr %.sroa.6.i.sroa.10.0..sroa_idx87.i.i.i, align 1, !noalias !8572
  %.sroa.6.i.sroa.11.0.copyload92.i.i.i = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx91.i.i.i, align 2, !noalias !8572
  %i.ew = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx95.i.i.i, align 8, !noalias !8572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8573
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bj, %bb.bg
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8600
  unreachable

bb.bj:                                            ; preds = %.noexc17.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.z) #37
          to label %.body unwind label %bb.bi, !noalias !8600

bb.bk:                                            ; preds = %.noexc17.i
  %i.ez = load <4 x i8>, ptr %i.z, align 8, !noalias !8572
  %.sroa.6.i.sroa.9.0.copyload.i.i.i = load i8, ptr %.sroa.6.i.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !8572
  %.sroa.6.i.sroa.10.0.copyload.i.i.i = load i8, ptr %.sroa.6.i.sroa.10.0..sroa_idx.i.i.i, align 1, !noalias !8572
  %.sroa.6.i.sroa.11.0.copyload.i.i.i = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx.i.i.i, align 2, !noalias !8572
  %i.fa = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !8572
  %.sroa.9.8.copyload.i.i.i.i = load i64, ptr %.sroa.9.8..sroa_idx.i.i.i.i, align 8, !noalias !8572
  %.sroa.5.i.i.i.sroa.0.0.copyload103.i.i.i = load i8, ptr %.sroa.11.8..sroa_idx.i.i.i.i, align 8, !noalias !8556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.11.8..sroa_idx.i.sroa_idx.i.i.i, i64 23, i1 false), !noalias !8556
  %.sroa.5.i.i.i.sroa.7.0.copyload105.i.i.i = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.11.8..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !8556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.11.8..sroa_idx.i.sroa_idx.i.i.i, i64 24, i1 false), !noalias !8556
  %i.fb = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.11.8..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !8556
  %i.fc = load i64, ptr %.sroa.5.i.i.i.sroa.17.0..sroa.11.8..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !8556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !8556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8573
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.bk, %bb.bh, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %.sroa.5.i.i.i.sroa.17.sroa.0.1.i.i.i = phi i64 [ %.sroa.5.i.i.i.sroa.17.sroa.0.0.i.i.i, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ undef, %bb.bh ], [ %i.fc, %bb.bk ]
  %.sroa.5.i.i.i.sroa.7.1.i.i.i = phi i64 [ %.sroa.5.i.i.i.sroa.7.0.i.i.i, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.5.i.i.i.sroa.7.0.copyload106.i.i.i, %bb.bh ], [ %.sroa.5.i.i.i.sroa.7.0.copyload105.i.i.i, %bb.bk ]
  %.sroa.5.i.i.i.sroa.0.1.i.i.i = phi i8 [ %.sroa.5.i.i.i.sroa.0.0.i.i.i, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.5.i.i.i.sroa.0.0.copyload104.i.i.i, %bb.bh ], [ %.sroa.5.i.i.i.sroa.0.0.copyload103.i.i.i, %bb.bk ]
  %.sroa.6.i.sroa.11.0.i.i.i = phi i16 [ %.sroa.6.i.sroa.11.0.copyload94.i.i.i, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.6.i.sroa.11.0.copyload92.i.i.i, %bb.bh ], [ %.sroa.6.i.sroa.11.0.copyload.i.i.i, %bb.bk ]
  %.sroa.6.i.sroa.10.0.i.i.i = phi i8 [ %.sroa.6.i.sroa.10.0.copyload90.i.i.i, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.6.i.sroa.10.0.copyload88.i.i.i, %bb.bh ], [ %.sroa.6.i.sroa.10.0.copyload.i.i.i, %bb.bk ]
  %.sroa.6.i.sroa.9.0.i.i.i = phi i8 [ %.sroa.6.i.sroa.9.0.copyload86.i.i.i, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.6.i.sroa.9.0.copyload84.i.i.i, %bb.bh ], [ %.sroa.6.i.sroa.9.0.copyload.i.i.i, %bb.bk ]
  %.sroa.9.0.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.9.32.copyload.i.i.i.i, %bb.bh ], [ %.sroa.9.8.copyload.i.i.i.i, %bb.bk ]
  %i.fd = phi <8 x i8> [ %i.dj, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %i.eu, %bb.bh ], [ %i.fb, %bb.bk ]
  %i.fe = phi <4 x i8> [ %i.dk, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %i.ev, %bb.bh ], [ %i.ez, %bb.bk ]
  %i.ff = phi <2 x i64> [ %i.dl, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %i.ew, %bb.bh ], [ %i.fa, %bb.bk ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.al, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.i.i.i, i64 23, i1 false), !noalias !8563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.i.i.i, i64 24, i1 false), !noalias !8563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5.i.i.i, i64 24, i1 false), !noalias !8563
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetETBU_NtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsEuNCINvMNtB1x_12shard_holderNtB3O_11ShardHolder14split_by_shardB2E_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvMsk_NtB10_3vecINtB5W_3VecB2A_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map6ValuesmBV_EB3I_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i

bb.bl:                                            ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !8601)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i2.i.i.i.i)
  switch i64 %i.ch, label %default.unreachable1.i.i.i.i.i [
end_hunk_0
