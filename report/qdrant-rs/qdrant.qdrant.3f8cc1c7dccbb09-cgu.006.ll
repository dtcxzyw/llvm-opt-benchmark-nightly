Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.006?download=true
inline.NumInlined: 9333
inline.NumDeleted: 3748
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB6_15ShardReplicaSet6update0Csl8OoimOLbh_6qdrant:bb.a
  %i.aus = load <8 x i8>, ptr %.sroa.30.8..sroa_idx, align 8, !noalias !13203
  %.sroa.38.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %.sroa.38.sroa.0.0.copyload450 = load i64, ptr %.sroa.38.8..sroa_idx, align 8, !noalias !13203
  %.sroa.38.sroa.8.0..sroa.38.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.38.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.38.sroa.8.0..sroa.38.8..sroa_idx.sroa_idx, i64 24, i1 false), !noalias !13203
  %.sroa.38.sroa.9.0..sroa.38.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.38.sroa.9.0..sroa.38.8..sroa_idx.sroa_idx, i64 16, i1 false), !noalias !13203
  %.sroa.39.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.39.8..sroa_idx, i64 64, i1 false), !noalias !13203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !13204
  br label %bb.um

bb.re:                                            ; preds = %bb.qf
  %i.aut = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.experimental.noalias.scope.decl(metadata !13216)
  %i.auu = load i64, ptr %i.aut, align 8, !range !24, !alias.scope !13217, !noundef !17 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  switch i64 %i.auu, label %default.unreachable433 [
    i64 0, label %bb.rf
    i64 1, label %bb.rk
    i64 2, label %bb.sh
  ]

bb.rf:                                            ; preds = %bb.re
  call void @llvm.experimental.noalias.scope.decl(metadata !13218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !13219
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.auv)
          to label %.noexc135 unwind label %bb.ul

.noexc135:                                        ; preds = %bb.rf
  %i.auw = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.aux = load i64, ptr %i.auw, align 8, !range !41, !alias.scope !13220, !noundef !17
  %.not.i.i.i121 = icmp eq i64 %i.aux, -2
  br i1 %.not.i.i.i121, label %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, label %bb.rg

bb.rg:                                            ; preds = %.noexc135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13219
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.auw)
          to label %bb.ri unwind label %bb.rh, !noalias !13221

bb.rh:                                            ; preds = %bb.rg
  %i.auy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #24
          to label %.body126 unwind label %bb.rj, !noalias !13221

bb.ri:                                            ; preds = %bb.rg
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.p, align 8, !noalias !13219
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.i.i.i.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !13204
  %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx, i64 23, i1 false), !noalias !13204
  %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.5.i.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx, align 8, !noalias !13204
  %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx, i64 24, i1 false), !noalias !13204
  %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.auz = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx, align 8, !noalias !13204
  %.sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.5.i.i.i.sroa.17.sroa.0.0.copyload = load i64, ptr %.sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx, align 8, !noalias !13204
  %.sroa.5.i.i.i.sroa.17.sroa.5.0..sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.17.sroa.5.0..sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.sroa_idx, i64 24, i1 false), !noalias !13204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13219
  br label %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.rj:                                            ; preds = %bb.rh
  %i.ava = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13221
  unreachable

_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.ri, %.noexc135
  %.sroa.5.i.i.i.sroa.17.sroa.0.0 = phi i64 [ undef, %.noexc135 ], [ %.sroa.5.i.i.i.sroa.17.sroa.0.0.copyload, %bb.ri ]
  %.sroa.5.i.i.i.sroa.7.0 = phi i64 [ undef, %.noexc135 ], [ %.sroa.5.i.i.i.sroa.7.0.copyload, %bb.ri ]
  %.sroa.5.i.i.i.sroa.0.0 = phi i8 [ undef, %.noexc135 ], [ %.sroa.5.i.i.i.sroa.0.0.copyload, %bb.ri ]
  %.sroa.0.0.i.i.i = phi i64 [ -2, %.noexc135 ], [ %.sroa.0.0.copyload1.i.i.i, %bb.ri ]
  %i.avb = phi <8 x i8> [ undef, %.noexc135 ], [ %i.auz, %bb.ri ]
  %i.avc = load <4 x i8>, ptr %i.q, align 8, !noalias !13222
  %.sroa.6.i.sroa.9.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.avd = load <2 x i8>, ptr %.sroa.6.i.sroa.9.0..sroa_idx351, align 4, !noalias !13222
  %.sroa.6.i.sroa.11.0..sroa_idx359 = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %.sroa.6.i.sroa.11.0.copyload360 = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx359, align 2, !noalias !13222
  %.sroa.6.i.sroa.12.0..sroa_idx363 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ave = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx363, align 8, !noalias !13222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13219
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.rk:                                            ; preds = %bb.re
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !13223
  call void @llvm.experimental.noalias.scope.decl(metadata !13224)
  call void @llvm.experimental.noalias.scope.decl(metadata !13225)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13226
  %i.avf = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.avf)
          to label %.noexc136 unwind label %bb.ul

.noexc136:                                        ; preds = %bb.rk
  %i.avg = getelementptr inbounds nuw i8, ptr %1, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i2.i.i)
  %i.avh = load i64, ptr %i.avg, align 8, !range !36, !alias.scope !13227, !noundef !17 ; 4 uses
  %.not.i3.i.i = icmp eq i64 %i.avh, -1
  br i1 %.not.i3.i.i, label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, label %bb.rl

bb.rl:                                            ; preds = %.noexc136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13226
  call void @llvm.experimental.noalias.scope.decl(metadata !13228)
  call void @llvm.experimental.noalias.scope.decl(metadata !13229)
  %i.avi = add nsw i64 %i.avh, -2
  %.inv.i.i.i.i = icmp samesign ult i64 %i.avh, 2
  %i.avj = select i1 %.inv.i.i.i.i, i64 2, i64 %i.avi
  switch i64 %i.avj, label %bb.rm [
    i64 0, label %bb.rn
    i64 1, label %bb.rs
    i64 2, label %bb.rt
  ]

bb.rm:                                            ; preds = %bb.rl
  unreachable

bb.rn:                                            ; preds = %bb.rl
  %i.avk = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !13230)
  call void @llvm.experimental.noalias.scope.decl(metadata !13231)
  %i.avl = load i64, ptr %i.avk, align 8, !range !20, !alias.scope !13232, !noundef !17
  %i.avm = trunc nuw i64 %i.avl to i1
  %i.avn = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  br i1 %i.avm, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.avo = load i64, ptr %i.avn, align 8, !alias.scope !13232, !noundef !17
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.rp:                                            ; preds = %bb.rn
  %i.avp = getelementptr inbounds nuw i8, ptr %1, i64 391
  %i.avq = load i8, ptr %i.avp, align 1, !alias.scope !13232, !noundef !17
  %.not.i.i.i.i.i118 = icmp sgt i8 %i.avq, -1
  %i.avr = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.val.i.i.i.i.i = load ptr, ptr %i.avn, align 8, !alias.scope !13232 ; 5 uses
  %.val21.i.i.i.i.i = load i64, ptr %i.avr, align 8, !alias.scope !13232 ; 2 uses
  br i1 %.not.i.i.i.i.i118, label %bb.rq, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.rq:                                            ; preds = %bb.rp
  %.not.i.i.i.i.i.i.i120 = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i120, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %i.avs = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16
  %i.avt = atomicrmw add ptr %i.avs, i64 1 monotonic, align 8, !noalias !13233
  %i.avu = icmp slt i64 %i.avt, 0
  br i1 %i.avu, label %.invoke.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, !prof !40

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.rp, %bb.rr, %bb.rq
  %.sroa.06.0.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.rr ], [ inttoptr (i64 16 to ptr), %bb.rq ], [ %.val.i.i.i.i.i, %bb.rp ]
  %i.avv = ptrtoint ptr %.sroa.06.0.i.i.i.i.i to i64
  store i64 %i.avv, ptr %.sroa.4.i.i.i.i, align 8, !alias.scope !13230, !noalias !13234
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.ro
  %.sink.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %.sroa.4.i.i.i.i, %bb.ro ]
  %.sroa.58.0.sink.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %i.avo, %bb.ro ]
  %storemerge.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ 1, %bb.ro ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i, align 8, !alias.scope !13230, !noalias !13234
  %i.avw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %storemerge.i.i.i.i.i, ptr %i.avw, align 8, !alias.scope !13228, !noalias !13226
  %.sroa.4.0..sroa_idx.i.i.i.i119 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i, align 8, !noalias !13234
  store i64 %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i119, align 8, !alias.scope !13228, !noalias !13226
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !noalias !13234
  store i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !13228, !noalias !13226
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.rs:                                            ; preds = %bb.rl
  %i.avx = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.avy = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.avy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.avx)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.sf, !noalias !13235

bb.rt:                                            ; preds = %bb.rl
  call void @llvm.experimental.noalias.scope.decl(metadata !13236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13237
  call void @llvm.experimental.noalias.scope.decl(metadata !13238)
  call void @llvm.experimental.noalias.scope.decl(metadata !13239)
  %i.avz = trunc nuw i64 %i.avh to i1             ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %.sink.i.sroa.gep.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sink.i.sroa.gep16.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  br i1 %i.avz, label %bb.ru, label %bb.rv

bb.ru:                                            ; preds = %bb.rt
  %i.awb = load i64, ptr %i.awa, align 8, !alias.scope !13240, !noundef !17
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.rv:                                            ; preds = %bb.rt
  %i.awc = getelementptr inbounds nuw i8, ptr %1, i64 383
  %i.awd = load i8, ptr %i.awc, align 1, !alias.scope !13240, !noundef !17
  %.not.i.i.i.i.i.i = icmp slt i8 %i.awd, 0
  %i.awe = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.val.i.i.i.i.i.i = load ptr, ptr %i.awa, align 8, !alias.scope !13240 ; 4 uses
  %.val21.i.i.i.i.i.i = load i64, ptr %i.awe, align 8, !alias.scope !13240 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.awf = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 -16
  %i.awg = atomicrmw add ptr %i.awf, i64 1 monotonic, align 8, !noalias !13241
  %i.awh = icmp slt i64 %i.awg, 0
  br i1 %i.awh, label %.invoke.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, !prof !40

.invoke.i.i.i:                                    ; preds = %bb.rw, %bb.rr
  %i.awi = phi ptr [ %.val.i.i.i.i.i, %bb.rr ], [ %.val.i.i.i.i.i.i, %bb.rw ]
  %i.awj = phi i64 [ %.val21.i.i.i.i.i, %bb.rr ], [ %.val21.i.i.i.i.i.i, %bb.rw ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.awi, i64 noundef %i.awj) #25
          to label %.cont.i.i.i unwind label %bb.sf, !noalias !13235

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.rv, %bb.rw
  store ptr %.val.i.i.i.i.i.i, ptr %.sink.i.sroa.gep16.i.i.i.i.i, align 8, !alias.scope !13238, !noalias !13237
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.ru
  %.sink.i.sroa.phi.i.i.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %.sink.i.sroa.gep16.i.i.i.i.i, %bb.ru ]
  %.sroa.58.0.sink.i.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %i.awb, %bb.ru ]
  %i.awk = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ 1, %bb.ru ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i, align 8, !alias.scope !13238, !noalias !13237
  store i64 %i.awk, ptr %i.m, align 8, !alias.scope !13238, !noalias !13237
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %i.awl = getelementptr inbounds nuw i8, ptr %1, i64 384
  call void @llvm.experimental.noalias.scope.decl(metadata !13242)
  call void @llvm.experimental.noalias.scope.decl(metadata !13243)
  %i.awm = load i64, ptr %i.awl, align 8, !range !20, !alias.scope !13244, !noundef !17
  %i.awn = trunc nuw i64 %i.awm to i1
  %i.awo = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  br i1 %i.awn, label %bb.rx, label %bb.ry

bb.rx:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %i.awp = load i64, ptr %i.awo, align 8, !alias.scope !13244, !noundef !17
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.ry:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %i.awq = getelementptr inbounds nuw i8, ptr %1, i64 407
  %i.awr = load i8, ptr %i.awq, align 1, !alias.scope !13244, !noundef !17
  %.not.i1.i.i.i.i.i = icmp sgt i8 %i.awr, -1
  %i.aws = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.val.i11.i.i.i.i.i = load ptr, ptr %i.awo, align 8, !alias.scope !13244 ; 5 uses
  %.val21.i12.i.i.i.i.i = load i64, ptr %i.aws, align 8, !alias.scope !13244 ; 2 uses
  br i1 %.not.i1.i.i.i.i.i, label %bb.rz, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i

bb.rz:                                            ; preds = %bb.ry
  %.not.i.i.i13.i.i.i.i.i = icmp eq ptr %.val.i11.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.awt = getelementptr inbounds i8, ptr %.val.i11.i.i.i.i.i, i64 -16
  %i.awu = atomicrmw add ptr %i.awt, i64 1 monotonic, align 8, !noalias !13245
  %i.awv = icmp slt i64 %i.awu, 0
  br i1 %i.awv, label %bb.sb, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, !prof !40

bb.sb:                                            ; preds = %bb.sa
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i.i.i.i.i, i64 noundef %.val21.i12.i.i.i.i.i) #25
          to label %.noexc.i.i.i.i.i unwind label %bb.sc, !noalias !13246

.noexc.i.i.i.i.i:                                 ; preds = %bb.sb
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i: ; preds = %bb.ry, %bb.sa, %bb.rz
  %.sroa.06.0.i6.i.i.i.i.i = phi ptr [ %.val.i11.i.i.i.i.i, %bb.sa ], [ inttoptr (i64 16 to ptr), %bb.rz ], [ %.val.i11.i.i.i.i.i, %bb.ry ]
  %i.aww = ptrtoint ptr %.sroa.06.0.i6.i.i.i.i.i to i64
  store i64 %i.aww, ptr %.sroa.4.i.i.i.i.i, align 8, !alias.scope !13242, !noalias !13237
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.sc:                                            ; preds = %bb.sb
  %i.awx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.m, i64 23
  %i.awz = load i8, ptr %i.awy, align 1, !alias.scope !13247, !noalias !13237
  %.not.i.i.i.i.i.i.i.i.i = icmp slt i8 %i.awz, 0
  %or.cond.i.not.i.i.i.i.i = select i1 %i.avz, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i.i, label %.body.i.i.i, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i.i.i.i.i)
          to label %.body.i.i.i unwind label %bb.se, !noalias !13246

bb.se:                                            ; preds = %bb.sd
  %i.axa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13246
  unreachable

_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i, %bb.rx
  %.sink.i7.sroa.phi.i.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ %.sroa.4.i.i.i.i.i, %bb.rx ]
  %.sroa.58.0.sink.i8.i.i.i.i.i = phi i64 [ %.val21.i12.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ %i.awp, %bb.rx ]
  %storemerge.i9.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i.i ], [ 1, %bb.rx ]
  store i64 %.sroa.58.0.sink.i8.i.i.i.i.i, ptr %.sink.i7.sroa.phi.i.i.i.i.i, align 8, !alias.scope !13242, !noalias !13237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !13248
  %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i.i, align 8, !noalias !13237
  %.sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i.i, align 8, !noalias !13237
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13237
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %storemerge.i9.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !alias.scope !13228, !noalias !13226
  %.sroa.5.0..sroa_idx.i.i.i.i117 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i117, align 8, !alias.scope !13228, !noalias !13226
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %.sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !13228, !noalias !13226
  %.sroa.0.0.copyload1.pre.i.i.i = load i64, ptr %i.n, align 8, !noalias !13226
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.sf:                                            ; preds = %.invoke.i.i.i, %bb.rs
  %i.axb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.sf, %bb.sd, %bb.sc
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.axb, %bb.sf ], [ %i.awx, %bb.sd ], [ %i.awx, %bb.sc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #24
          to label %.body126 unwind label %bb.sg, !noalias !13235

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.rs, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i
  %.sroa.0.0.copyload1.i4.i.i = phi i64 [ %.sroa.0.0.copyload1.pre.i.i.i, %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 3, %bb.rs ]
  %.sroa.5.0..sroa_idx2.i5.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i5.i.i, i64 40, i1 false), !noalias !13226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13226
  br label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.sg:                                            ; preds = %.body.i.i.i
  %i.axc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13235
  unreachable

_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %.noexc136
  %.sroa.9.32.copyload.i = phi i64 [ %.sroa.0.0.copyload1.i4.i.i, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ -1, %.noexc136 ] ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.axd, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !13249
  store i64 %.sroa.9.32.copyload.i, ptr %i.u, align 8, !alias.scope !13224, !noalias !13223
  %.sroa.5.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i7.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i.i, i64 40, i1 false), !noalias !13249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i2.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !13223
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.auv)
          to label %bb.sj unwind label %bb.si, !noalias !13250

bb.sh:                                            ; preds = %bb.re
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !13223
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.auv) #27
          to label %.noexc137 unwind label %bb.ul

.noexc137:                                        ; preds = %bb.sh
  %i.axe = getelementptr inbounds nuw i8, ptr %1, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !13223
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.axe)
          to label %bb.sm unwind label %bb.sl, !noalias !13250

bb.si:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.axf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops12PointIdsListECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #24
          to label %.body126 unwind label %bb.sk, !noalias !13250

bb.sj:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.5.i.i.i.sroa.0.0.copyload370 = load i8, ptr %.sroa.5.0..sroa_idx.i7.i.i, align 8, !noalias !13204
  %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx, i64 23, i1 false), !noalias !13204
  %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.5.i.i.i.sroa.7.0.copyload372 = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx, align 8, !noalias !13204
  %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx, i64 24, i1 false), !noalias !13204
  %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.axg = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx.i7.i.i.sroa_idx, align 8, !noalias !13204
  %i.axh = load <4 x i8>, ptr %i.t, align 8, !noalias !13222
  %.sroa.6.i.sroa.9.0..sroa_idx349 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.axi = load <2 x i8>, ptr %.sroa.6.i.sroa.9.0..sroa_idx349, align 4, !noalias !13222
  %.sroa.6.i.sroa.11.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %.sroa.6.i.sroa.11.0.copyload358 = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx357, align 2, !noalias !13222
  %.sroa.6.i.sroa.12.0..sroa_idx361 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.axj = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx361, align 8, !noalias !13222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !13223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !13223
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.sk:                                            ; preds = %bb.sl, %bb.si
  %i.axk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13250
  unreachable

bb.sl:                                            ; preds = %.noexc137
  %i.axl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.s) #24
          to label %.body126 unwind label %bb.sk, !noalias !13250

bb.sm:                                            ; preds = %.noexc137
  %i.axm = load <4 x i8>, ptr %i.s, align 8, !noalias !13222
  %.sroa.6.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.axn = load <2 x i8>, ptr %.sroa.6.i.sroa.9.0..sroa_idx, align 4, !noalias !13222
  %.sroa.6.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %.sroa.6.i.sroa.11.0.copyload = load i16, ptr %.sroa.6.i.sroa.11.0..sroa_idx, align 2, !noalias !13222
  %.sroa.6.i.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.axo = load <2 x i64>, ptr %.sroa.6.i.sroa.12.0..sroa_idx, align 8, !noalias !13222
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.9.8.copyload.i = load i64, ptr %.sroa.9.8..sroa_idx.i, align 8, !noalias !13222
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.5.i.i.i.sroa.0.0.copyload369 = load i8, ptr %.sroa.11.8..sroa_idx.i, align 8, !noalias !13204
  %.sroa.5.i.i.i.sroa.6.0..sroa.11.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.i.i.i.sroa.6.0..sroa.11.8..sroa_idx.i.sroa_idx, i64 23, i1 false), !noalias !13204
  %.sroa.5.i.i.i.sroa.7.0..sroa.11.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.5.i.i.i.sroa.7.0.copyload371 = load i64, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.11.8..sroa_idx.i.sroa_idx, align 8, !noalias !13204
  %.sroa.5.i.i.i.sroa.8.0..sroa.11.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.sroa.8.0..sroa.11.8..sroa_idx.i.sroa_idx, i64 24, i1 false), !noalias !13204
  %.sroa.5.i.i.i.sroa.9.0..sroa.11.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.axp = load <8 x i8>, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.11.8..sroa_idx.i.sroa_idx, align 8, !noalias !13204
  %.sroa.5.i.i.i.sroa.17.0..sroa.11.8..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 96
end_hunk_0
