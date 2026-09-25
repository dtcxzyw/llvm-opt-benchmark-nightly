Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.015?download=true
inline.NumInlined: 5638
inline.NumDeleted: 3744
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesmINtNtB16_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENCINvMNtB2h_12shard_holderNtB3r_11ShardHolder14split_by_shardNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsEs0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5s_8for_each4callTRB1V_B4k_ENCINvMsk_NtB16_3vecINtB6P_3VecB6v_E14extend_trustedBN_E0E0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.37.sroa.7.0..sroa.37.0..sroa_idx67.sroa_idx.i.i.i, i64 24, i1 false), !noalias !8750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.37.sroa.8.0..sroa.37.0..sroa_idx67.sroa_idx.i.i.i, i64 16, i1 false), !noalias !8750
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetETBU_NtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsEuNCINvMNtB1x_12shard_holderNtB3O_11ShardHolder14split_by_shardB2E_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvMsk_NtB10_3vecINtB5W_3VecB2A_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map6ValuesmBV_EB3I_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i

bb.cs:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28.i.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28.i.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8809)
  %i.fz = load i64, ptr %i.az, align 8, !range !8810, !alias.scope !8811, !noalias !8812, !noundef !11 ; 8 uses
  %i.ga = icmp eq i64 %i.fz, -3
  br i1 %i.ga, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8813
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.be)
          to label %.noexc23.i unwind label %bb.c, !noalias !8737

.noexc23.i:                                       ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8813
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i unwind label %bb.cu, !noalias !8814

bb.cu:                                            ; preds = %.noexc23.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #37
          to label %.body unwind label %bb.cv, !noalias !8814

bb.cv:                                            ; preds = %bb.cu
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8814
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %.noexc23.i
  %i.gd = load <4 x i8>, ptr %i.o, align 8, !noalias !8815
  %.sroa.726.0.copyload.i.i.i.i = load i8, ptr %.sroa.726.0..sroa_idx.i.i.i.i, align 4, !noalias !8815
  %.sroa.827.0.copyload.i.i.i.i = load i8, ptr %.sroa.827.0..sroa_idx.i.i.i.i, align 1, !noalias !8815
  %.sroa.928.0.copyload.i.i.i.i = load i16, ptr %.sroa.928.0..sroa_idx.i.i.i.i, align 2, !noalias !8815
  %i.ge = load <2 x i64>, ptr %.sroa.1029.0..sroa_idx.i.i.i.i, align 8, !noalias !8815
  %.sroa.1231.24.copyload.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !8815
  %.sroa.1432.24.copyload.i.i.i.i = load i8, ptr %.sroa.1432.24..sroa_idx.i.i.i.i, align 8, !noalias !8815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.sroa.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.1533.24..sroa_idx.i.i.i.i, i64 15, i1 false), !noalias !8742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8813
  br label %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.cw:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !8816)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8818
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bf)
          to label %.noexc24.i unwind label %bb.c, !noalias !8737

.noexc24.i:                                       ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8818
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i unwind label %bb.cx, !noalias !8819

bb.cx:                                            ; preds = %.noexc24.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #37
          to label %.body unwind label %bb.cy, !noalias !8819

bb.cy:                                            ; preds = %bb.cx
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8819
  unreachable

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %.noexc24.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !8820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !8820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8818
  switch i64 %i.fz, label %bb.cz [
    i64 -2, label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
    i64 -1, label %bb.dr
  ]

bb.cz:                                            ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8821)
  %i.gh = icmp ne i64 %i.fz, 6
  call void @llvm.assume(i1 %i.gh)
  %i.gi = add nsw i64 %i.fz, -2
  %i.gj = icmp samesign ugt i64 %i.fz, 1
  %i.gk = select i1 %i.gj, i64 %i.gi, i64 4
  switch i64 %i.gk, label %bb.da [
    i64 0, label %bb.db
    i64 1, label %bb.dc
    i64 2, label %bb.dd
    i64 3, label %bb.de
    i64 4, label %bb.df
    i64 5, label %bb.do
    i64 6, label %bb.dp
    i64 7, label %bb.dq
  ]

bb.da:                                            ; preds = %bb.cz
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.gl = load i8, ptr %i.bt, align 4, !range !36, !alias.scope !8822, !noalias !8823, !noundef !11
  %i.gm = load <4 x i8>, ptr %i.be, align 8, !alias.scope !8822, !noalias !8823
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.dc:                                            ; preds = %bb.cz
  %i.gn = load <4 x i8>, ptr %i.be, align 8, !alias.scope !8822, !noalias !8823
  %i.go = load i8, ptr %i.bs, align 1, !range !36, !alias.scope !8822, !noalias !8823, !noundef !11
  %i.gp = load i8, ptr %i.bt, align 4, !range !26, !alias.scope !8822, !noalias !8823, !noundef !11
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.dd:                                            ; preds = %bb.cz
  %i.gq = load <4 x i8>, ptr %i.be, align 8, !alias.scope !8822, !noalias !8823
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.de:                                            ; preds = %bb.cz
  %i.gr = load i8, ptr %i.bh, align 2, !range !36, !alias.scope !8822, !noalias !8823, !noundef !11
  %i.gs = load <2 x i8>, ptr %i.be, align 8, !alias.scope !8822, !noalias !8823
  %i.gt = shufflevector <2 x i8> %i.gs, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gu = insertelement <4 x i8> poison, i8 %i.gr, i64 0
  %i.gv = shufflevector <4 x i8> %i.gu, <4 x i8> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.gw = shufflevector <4 x i8> %i.gt, <4 x i8> %i.gv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.df:                                            ; preds = %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !8824)
  %i.gx = load i8, ptr %i.bi, align 1, !range !27, !alias.scope !8825, !noalias !8826, !noundef !11
  %i.gy = load i64, ptr %i.be, align 8, !alias.scope !8825, !noalias !8826
  %i.gz = load i64, ptr %i.bj, align 8, !range !16, !alias.scope !8825, !noalias !8826, !noundef !11 ; 2 uses
  %i.ha = load i64, ptr %i.ba, align 8, !alias.scope !8825, !noalias !8826
  %i.hb = load <2 x i8>, ptr %i.bk, align 8, !alias.scope !8825, !noalias !8826
  %i.hc = load i8, ptr %i.bl, align 2, !range !26, !alias.scope !8825, !noalias !8826, !noundef !11
  %i.hd = load i64, ptr %i.bd, align 8, !range !22, !alias.scope !8825, !noalias !8826, !noundef !11 ; 3 uses
  switch i64 %i.hd, label %bb.dg [
    i64 -1, label %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i
    i64 2, label %bb.dn
  ]

bb.dg:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !8827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8828
  %i.he = trunc nuw i64 %i.hd to i1               ; 2 uses
  br i1 %i.he, label %bb.dh, label %.noexc.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.dg
  invoke void @_RNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNtNtB7_7set_val9SetValZSTENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ds, !noalias !8829

.noexc.i.i.i.i.i.i:                               ; preds = %bb.dh, %bb.dg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.dg ], [ 1, %bb.dh ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !8828
  %i.hf = load i64, ptr %i.bn, align 8, !range !16, !alias.scope !8830, !noalias !8831, !noundef !11
  %i.hg = trunc nuw i64 %i.hf to i1
  br i1 %i.hg, label %bb.di, label %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i

bb.di:                                            ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8828
  invoke void @_RNvXs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %bb.dl unwind label %bb.dj, !noalias !8831

bb.dj:                                            ; preds = %bb.di
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.he, label %bb.dk, label %.body.i.i17.i.i.i.i

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs607s0NAIaWN_7segment10data_types5index8LanguageNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body.i.i17.i.i.i.i unwind label %bb.dm, !noalias !8831

bb.dl:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !8742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8828
  br label %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8831
  unreachable

_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dl, %.noexc.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.dl ], [ 0, %.noexc.i.i.i.i.i.i ]
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %i.as, align 8, !noalias !8832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.sroa.0.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, i64 23, i1 false), !noalias !8742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8828
  br label %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.dn:                                            ; preds = %bb.df
  %i.hj = load i8, ptr %i.bm, align 8, !range !8833, !alias.scope !8825, !noalias !8826, !noundef !11
  br label %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i: ; preds = %bb.dn, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i, %bb.df
  %.sroa.58.sroa.4.sroa.4.0.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.df ], [ undef, %bb.dn ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i ]
  %.sroa.58.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ undef, %bb.df ], [ %i.hj, %bb.dn ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i ]
  %.sroa.06.0.i.i.i.i16.i.i.i.i = phi i64 [ %i.hd, %bb.df ], [ 2, %bb.dn ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %_RNvXs2M_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_12StopwordsSetNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i.i ]
  %i.hk = trunc nuw i64 %i.gz to i1
  %.sroa.52.0.i.i.i.i.i.i.i.i = select i1 %i.hk, i64 %i.ha, i64 undef
  %i.hl = trunc nuw i64 %i.fz to i1
  %i.hm = load <2 x i8>, ptr %i.bq, align 2, !alias.scope !8825, !noalias !8826
  %i.hn = load i8, ptr %i.br, align 4, !range !26, !alias.scope !8825, !noalias !8826, !noundef !11
  %i.ho = load i8, ptr %i.bp, align 1, !range !26, !alias.scope !8825, !noalias !8826, !noundef !11
  %.sroa.5.0.i.i.i.i.i.i.i.i = select i1 %i.hl, i64 %i.gy, i64 undef ; 7 uses
  %.sroa.11.sroa.26.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i.i.i, 24
  %.sroa.11.sroa.19.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i.i.i, 16
  %.sroa.11.sroa.11.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i.i.i, 8
  %.sroa.11.sroa.0.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i.i.i to i8
  %.sroa.11.sroa.11.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.11.sroa.11.0.extract.shift.i.i.i.i.i.i to i8
  %.sroa.11.sroa.19.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.11.sroa.19.0.extract.shift.i.i.i.i.i.i to i8
  %.sroa.11.sroa.26.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.11.sroa.26.0.extract.shift.i.i.i.i.i.i to i8
  %.sroa.11.sroa.31.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i.i.i, 32
  %.sroa.11.sroa.31.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.11.sroa.31.0.extract.shift.i.i.i.i.i.i to i8
  %.sroa.11.sroa.33.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i.i.i, 40
  %.sroa.11.sroa.33.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.11.sroa.33.0.extract.shift.i.i.i.i.i.i to i8
  %.sroa.11.sroa.34.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i.i.i, 48
  %.sroa.11.sroa.34.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.11.sroa.34.0.extract.shift.i.i.i.i.i.i to i16
  %2 = insertelement <4 x i8> poison, i8 %.sroa.11.sroa.0.0.extract.trunc.i.i.i.i.i.i, i64 0
  %3 = insertelement <4 x i8> %2, i8 %.sroa.11.sroa.11.0.extract.trunc.i.i.i.i.i.i, i64 1
  %4 = insertelement <4 x i8> %3, i8 %.sroa.11.sroa.19.0.extract.trunc.i.i.i.i.i.i, i64 2
  %5 = insertelement <4 x i8> %4, i8 %.sroa.11.sroa.26.0.extract.trunc.i.i.i.i.i.i, i64 3
  %i.hp = insertelement <2 x i64> poison, i64 %i.gz, i64 0
  %i.hq = insertelement <2 x i64> %i.hp, i64 %.sroa.52.0.i.i.i.i.i.i.i.i, i64 1
  %i.hr = shufflevector <2 x i8> %i.hm, <2 x i8> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.hs = insertelement <4 x i8> %i.hr, i8 %i.hn, i64 0
  %i.ht = insertelement <4 x i8> %i.hs, i8 %i.gx, i64 1
  %i.hu = insertelement <2 x i8> poison, i8 %i.hc, i64 0
  %i.hv = insertelement <2 x i8> %i.hu, i8 %i.ho, i64 1
  %i.hw = shufflevector <4 x i8> %i.ht, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.do:                                            ; preds = %bb.cz
  %i.hx = load i8, ptr %i.bh, align 2, !range !36, !alias.scope !8822, !noalias !8823, !noundef !11
  %i.hy = load <2 x i8>, ptr %i.be, align 8, !alias.scope !8822, !noalias !8823
  %i.hz = shufflevector <2 x i8> %i.hy, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ia = insertelement <4 x i8> poison, i8 %i.hx, i64 0
  %i.ib = shufflevector <4 x i8> %i.ia, <4 x i8> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.ic = shufflevector <4 x i8> %i.hz, <4 x i8> %i.ib, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.dp:                                            ; preds = %bb.cz
  %i.id = load <4 x i8>, ptr %i.be, align 8, !alias.scope !8822, !noalias !8823
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.dq:                                            ; preds = %bb.cz
  %i.ie = load <4 x i8>, ptr %i.be, align 8, !alias.scope !8822, !noalias !8823
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.dr:                                            ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  %i.if = load i8, ptr %i.be, align 8, !range !8834, !alias.scope !8835, !noalias !8829, !noundef !11
  %i.ig = insertelement <4 x i8> <i8 poison, i8 undef, i8 undef, i8 undef>, i8 %i.if, i64 0
  br label %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i

bb.ds:                                            ; preds = %bb.dh
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i17.i.i.i.i

.body.i.i17.i.i.i.i:                              ; preds = %bb.ds, %bb.dk, %bb.dj
  %eh.lpad-body.i.i18.i.i.i.i = phi { ptr, i32 } [ %i.ih, %bb.ds ], [ %i.hh, %bb.dk ], [ %i.hh, %bb.dj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.m) #37
          to label %.body unwind label %bb.dt, !noalias !8829

bb.dt:                                            ; preds = %.body.i.i17.i.i.i.i
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8829
  unreachable

_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %bb.dr, %bb.dq, %bb.dp, %bb.do, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i, %bb.de, %bb.dd, %bb.dc, %bb.db, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  %.sroa.5.sroa.4.sroa.14.0.i.i.i.i.i.i = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ undef, %bb.dr ], [ undef, %bb.db ], [ undef, %bb.dc ], [ undef, %bb.dd ], [ undef, %bb.de ], [ %.sroa.58.sroa.4.sroa.4.0.i.i.i.i.i.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ undef, %bb.do ], [ undef, %bb.dp ], [ undef, %bb.dq ]
  %.sroa.5.sroa.4.sroa.12.0.i.i.i.i.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ undef, %bb.dr ], [ undef, %bb.db ], [ undef, %bb.dc ], [ undef, %bb.dd ], [ undef, %bb.de ], [ %.sroa.58.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ undef, %bb.do ], [ undef, %bb.dp ], [ undef, %bb.dq ]
  %.sroa.5.sroa.4.sroa.11.0.i.i.i.i.i.i = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ undef, %bb.dr ], [ undef, %bb.db ], [ undef, %bb.dc ], [ undef, %bb.dd ], [ undef, %bb.de ], [ %.sroa.06.0.i.i.i.i16.i.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ undef, %bb.do ], [ undef, %bb.dp ], [ undef, %bb.dq ]
  %.sroa.5.sroa.4.sroa.8.0.i.i.i.i.i.i = phi i16 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ undef, %bb.dr ], [ undef, %bb.db ], [ undef, %bb.dc ], [ undef, %bb.dd ], [ undef, %bb.de ], [ %.sroa.11.sroa.34.0.extract.trunc.i.i.i.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ undef, %bb.do ], [ undef, %bb.dp ], [ undef, %bb.dq ]
  %.sroa.5.sroa.4.sroa.7.0.i.i.i.i.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ undef, %bb.dr ], [ undef, %bb.db ], [ %i.go, %bb.dc ], [ undef, %bb.dd ], [ undef, %bb.de ], [ %.sroa.11.sroa.33.0.extract.trunc.i.i.i.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ undef, %bb.do ], [ undef, %bb.dp ], [ undef, %bb.dq ]
  %.sroa.5.sroa.4.sroa.6.0.i.i.i.i.i.i = phi i8 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ undef, %bb.dr ], [ %i.gl, %bb.db ], [ %i.gp, %bb.dc ], [ undef, %bb.dd ], [ undef, %bb.de ], [ %.sroa.11.sroa.31.0.extract.trunc.i.i.i.i.i.i, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ undef, %bb.do ], [ undef, %bb.dp ], [ undef, %bb.dq ]
  %.sroa.0.0.i.i12.i.i.i.i = phi i64 [ %i.fz, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ -1, %bb.dr ], [ 2, %bb.db ], [ 3, %bb.dc ], [ 4, %bb.dd ], [ 5, %bb.de ], [ %i.fz, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ 7, %bb.do ], [ 8, %bb.dp ], [ 9, %bb.dq ]
  %i.ij = phi <4 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ %i.ig, %bb.dr ], [ %i.gm, %bb.db ], [ %i.gn, %bb.dc ], [ %i.gq, %bb.dd ], [ %i.gw, %bb.de ], [ %5, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ %i.ic, %bb.do ], [ %i.id, %bb.dp ], [ %i.ie, %bb.dq ]
  %i.ik = phi <2 x i64> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ undef, %bb.dr ], [ undef, %bb.db ], [ undef, %bb.dc ], [ undef, %bb.dd ], [ undef, %bb.de ], [ %i.hq, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ undef, %bb.do ], [ undef, %bb.dp ], [ undef, %bb.dq ]
  %i.il = phi <2 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ undef, %bb.dr ], [ undef, %bb.db ], [ undef, %bb.dc ], [ undef, %bb.dd ], [ undef, %bb.de ], [ %i.hb, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ undef, %bb.do ], [ undef, %bb.dp ], [ undef, %bb.dq ]
  %i.im = phi <8 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ undef, %bb.dr ], [ undef, %bb.db ], [ undef, %bb.dc ], [ undef, %bb.dd ], [ undef, %bb.de ], [ %i.hw, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ undef, %bb.do ], [ undef, %bb.dp ], [ undef, %bb.dq ]
  %i.in = phi <2 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i ], [ undef, %bb.dr ], [ undef, %bb.db ], [ undef, %bb.dc ], [ undef, %bb.dd ], [ undef, %bb.de ], [ %i.hv, %_RNvXs1H_NtNtCs607s0NAIaWN_7segment10data_types5indexNtB6_15TextIndexParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ undef, %bb.do ], [ undef, %bb.dp ], [ undef, %bb.dq ]
  %.sroa.28.i.sroa.0.0.copyload.i.i.i = load i64, ptr %i.m, align 8, !noalias !8836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.i.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.i.sroa.4.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !8836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !8836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8817
  %i.io = shufflevector <2 x i8> %i.il, <2 x i8> %i.in, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ip = shufflevector <8 x i8> %i.io, <8 x i8> %i.im, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  br label %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i
  %.sroa.28.i.sroa.0.0.i.i.i = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.28.i.sroa.0.0.copyload.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.18.0.i.i.i.i = phi i64 [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.5.sroa.4.sroa.14.0.i.i.i.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.16.0.i.i.i.i = phi i8 [ %.sroa.1432.24.copyload.i.i.i.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.5.sroa.4.sroa.12.0.i.i.i.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.15.0.i.i.i.i = phi i64 [ %.sroa.1231.24.copyload.i.i.i.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.5.sroa.4.sroa.11.0.i.i.i.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.12.0.i.i.i.i = phi i16 [ %.sroa.928.0.copyload.i.i.i.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.5.sroa.4.sroa.8.0.i.i.i.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.1122.0.i.i.i.i = phi i8 [ %.sroa.827.0.copyload.i.i.i.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.5.sroa.4.sroa.7.0.i.i.i.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.10.0.i.i.i.i = phi i8 [ %.sroa.726.0.copyload.i.i.i.i, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.5.sroa.4.sroa.6.0.i.i.i.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %.sroa.020.0.i.i.i.i = phi i64 [ -3, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i12.i.i.i.i, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %i.iq = phi <8 x i8> [ undef, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %i.ip, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %i.ir = phi <4 x i8> [ %i.gd, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %i.ij, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  %i.is = phi <2 x i64> [ %i.ge, %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ %i.ik, %_RNvXsO_NtCs5QaNqjAn6vc_5shard10operationsNtB5_11CreateIndexNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.al, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.sroa.0.i.i.i.i.i.i.i.i, i64 23, i1 false), !noalias !8750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !8750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.i.sroa.4.i.i.i, i64 24, i1 false), !noalias !8750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i.sroa.5.i.i.i, i64 16, i1 false), !noalias !8750
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.i.sroa.5.i.i.i)
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetETBU_NtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsEuNCINvMNtB1x_12shard_holderNtB3O_11ShardHolder14split_by_shardB2E_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvMsk_NtB10_3vecINtB5W_3VecB2A_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map6ValuesmBV_EB3I_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i

bb.du:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !8742
  call void @llvm.experimental.noalias.scope.decl(metadata !8837)
  call void @llvm.experimental.noalias.scope.decl(metadata !8838)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8742
  %i.it = load i64, ptr %i.az, align 8, !range !15, !alias.scope !8839, !noalias !8840, !noundef !11
  %i.iu = icmp eq i64 %i.it, -1
  br i1 %i.iu, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc25.i unwind label %bb.c, !noalias !8737

.noexc25.i:                                       ; preds = %bb.dv
  %.sroa.21.8.copyload40.pre.i.i.i = load i64, ptr %.sroa.21.8..sroa_idx39.phi.trans.insert.i.i.i, align 8, !noalias !8841
  br label %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.dw:                                            ; preds = %bb.du
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.az)
          to label %.noexc26.i unwind label %bb.c, !noalias !8737

.noexc26.i:                                       ; preds = %bb.dw
  %i.iv = load i8, ptr %i.bb, align 2, !range !26, !alias.scope !8839, !noalias !8840, !noundef !11 ; 2 uses
  %i.iw = icmp eq i8 %i.iv, 2
  %.sroa.06.0.copyload.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !8839, !noalias !8840
  br i1 %i.iw, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %.noexc26.i
  %.sroa.58.0.copyload.i.i.i.i.i = load i8, ptr %i.bd, align 8, !alias.scope !8839, !noalias !8840
  %.sroa.611.0.copyload.i.i.i.i.i = load i8, ptr %i.bc, align 1, !alias.scope !8839, !noalias !8840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(5) %.sroa.8.0..sroa_idx.i19.i.i.i.i, i64 5, i1 false), !noalias !8840
  br label %bb.dz

bb.dy:                                            ; preds = %.noexc26.i
  %i.ix = load i8, ptr %i.bc, align 1, !range !27, !alias.scope !8839, !noalias !8840, !noundef !11
  %i.iy = load i8, ptr %i.bd, align 8, !range !49, !alias.scope !8839, !noalias !8840, !noundef !11
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.sroa.611.0.i.i.i.i.i = phi i8 [ %.sroa.611.0.copyload.i.i.i.i.i, %bb.dx ], [ %i.ix, %bb.dy ]
  %.sroa.58.0.i.i.i.i.i = phi i8 [ %.sroa.58.0.copyload.i.i.i.i.i, %bb.dx ], [ %i.iy, %bb.dy ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !8842
  store i8 %.sroa.58.0.i.i.i.i.i, ptr %.sroa.520.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !8837, !noalias !8842
  store i8 %.sroa.611.0.i.i.i.i.i, ptr %.sroa.621.0..sroa_idx.i.i.i.i.i, align 1, !alias.scope !8837, !noalias !8842
  store i8 %i.iv, ptr %.sroa.722.0..sroa_idx.i.i.i.i.i, align 2, !alias.scope !8837, !noalias !8842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.823.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i.i.i.i.i, i64 5, i1 false), !noalias !8842
  %.sroa.8.8.copyload4.pre.i.i.i = load i64, ptr %i.af, align 8, !noalias !8841
  br label %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.dz, %.noexc25.i
  %.sroa.21.8.copyload40.i.i.i = phi i64 [ %.sroa.06.0.copyload.i.i.i.i.i, %bb.dz ], [ %.sroa.21.8.copyload40.pre.i.i.i, %.noexc25.i ]
  %.sroa.8.8.copyload4.i.i.i = phi i64 [ %.sroa.8.8.copyload4.pre.i.i.i, %bb.dz ], [ -1, %.noexc25.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8742
  %i.iz = load <4 x i8>, ptr %i.aq, align 8, !noalias !8841
  %.sroa.17.8.copyload24.i.i.i = load i8, ptr %.sroa.17.8..sroa_idx23.i.i.i, align 4, !noalias !8841
  %.sroa.18.8.copyload28.i.i.i = load i8, ptr %.sroa.18.8..sroa_idx27.i.i.i, align 1, !noalias !8841
  %.sroa.19.8.copyload32.i.i.i = load i16, ptr %.sroa.19.8..sroa_idx31.i.i.i, align 2, !noalias !8841
  %i.ja = load <2 x i64>, ptr %.sroa.20.8..sroa_idx35.i.i.i, align 8
  %.sroa.22.8.copyload44.i.i.i = load i64, ptr %.sroa.520.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !8742
  %i.jb = insertelement <2 x i64> %i.ja, i64 %.sroa.21.8.copyload40.i.i.i, i64 1
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetETBU_NtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsEuNCINvMNtB1x_12shard_holderNtB3O_11ShardHolder14split_by_shardB2E_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvMsk_NtB10_3vecINtB5W_3VecB2A_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map6ValuesmBV_EB3I_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetETBU_NtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsEuNCINvMNtB1x_12shard_holderNtB3O_11ShardHolder14split_by_shardB2E_Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvMsk_NtB10_3vecINtB5W_3VecB2A_E14extend_trustedINtB4_3MapINtNtNtNtB10_11collections5btree3map6ValuesmBV_EB3I_EE0E0E0Csl8OoimOLbh_6qdrant.exit.i: ; preds = %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i
  %.sroa.37.sroa.0.0.i.i.i = phi i64 [ %.sroa.37.sroa.0.0.copyload125.i.i.i, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.5.i.i.i.sroa.17.sroa.0.1.i.i.i, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.37.sroa.0.0.copyload124.i.i.i, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.28.i.sroa.0.0.i.i.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.27.0.i.i.i = phi i64 [ %.sroa.27.8.copyload.i.i.i, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.5.i.i.i.sroa.7.1.i.i.i, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.27.0.copyload49.i.i.i, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.18.0.i.i.i.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.24.0.i.i.i = phi i8 [ %.sroa.24.8.copyload.i.i.i, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.5.i.i.i.sroa.0.1.i.i.i, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.24.0.copyload46.i.i.i, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.16.0.i.i.i.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.22.0.i.i.i = phi i64 [ %.sroa.22.8.copyload.i.i.i, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.9.0.i.i.i.i, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.22.0.copyload42.i.i.i, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.15.0.i.i.i.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.22.8.copyload44.i.i.i, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.19.0.i.i.i = phi i16 [ %.sroa.19.8.copyload.i.i.i, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.6.i.sroa.11.0.i.i.i, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.19.0.copyload30.i.i.i, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.12.0.i.i.i.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.19.8.copyload32.i.i.i, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.18.0.i.i.i = phi i8 [ %.sroa.18.8.copyload.i.i.i, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.6.i.sroa.10.0.i.i.i, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.18.0.copyload26.i.i.i, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.1122.0.i.i.i.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.18.8.copyload28.i.i.i, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.17.0.i.i.i = phi i8 [ %.sroa.17.8.copyload.i.i.i, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.6.i.sroa.9.0.i.i.i, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.17.0.copyload22.i.i.i, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.10.0.i.i.i.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.17.8.copyload24.i.i.i, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.8.0.i.i.i = phi i64 [ %.sroa.8.8.copyload.i.i.i, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.de, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.8.0.copyload3.i.i.i, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.020.0.i.i.i.i, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.sroa.8.8.copyload4.i.i.i, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi i64 [ 5, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 6, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.ch, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 8, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 9, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.jc = phi <8 x i8> [ %i.dd, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.fd, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.fy, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.iq, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.jd = phi <4 x i8> [ %i.db, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.fe, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.fw, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.ir, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.iz, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  %i.je = phi <2 x i64> [ %i.dc, %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.ff, %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.fx, %_RNvXs2_NtNtCs5QaNqjAn6vc_5shard10operations11payload_opsNtB5_10PayloadOpsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.is, %_RNvXsr_NtCs5QaNqjAn6vc_5shard10operationsNtB5_20FieldIndexOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.jb, %_RNvXNtNtCs5QaNqjAn6vc_5shard10operations15vector_name_opsNtB2_20VectorNameOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.sroa.17.sroa.5.i.i.i)
  %i.jf = getelementptr inbounds nuw [264 x i8], ptr %.sroa.9.0.copyload, i64 %.sroa.5.0 ; 18 uses
  store ptr %i.cf, ptr %i.jf, align 8, !noalias !8843
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !8844
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store i64 %.sroa.8.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !8844
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  store <4 x i8> %i.jd, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !8844
  %.sroa.108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 28
  store i8 %.sroa.17.0.i.i.i, ptr %.sroa.108.0..sroa_idx.i.i, align 4, !noalias !8844
  %.sroa.119.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 29
  store i8 %.sroa.18.0.i.i.i, ptr %.sroa.119.0..sroa_idx.i.i, align 1, !noalias !8844
  %.sroa.1210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 30
  store i16 %.sroa.19.0.i.i.i, ptr %.sroa.1210.0..sroa_idx.i.i, align 2, !noalias !8844
  %.sroa.1311.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  store <2 x i64> %i.je, ptr %.sroa.1311.0..sroa_idx.i.i, align 8, !noalias !8844
  %.sroa.1513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  store i64 %.sroa.22.0.i.i.i, ptr %.sroa.1513.0..sroa_idx.i.i, align 8, !noalias !8844
  %.sroa.1614.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  store i8 %.sroa.24.0.i.i.i, ptr %.sroa.1614.0..sroa_idx.i.i, align 8, !noalias !8844
  %.sroa.1715.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.1715.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %i.al, i64 23, i1 false), !noalias !8845
  %.sroa.1816.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 80
  store i64 %.sroa.27.0.i.i.i, ptr %.sroa.1816.0..sroa_idx.i.i, align 8, !noalias !8844
  %.sroa.1917.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1917.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !noalias !8845
  %.sroa.2018.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 112
  store <8 x i8> %i.jc, ptr %.sroa.2018.0..sroa_idx.i.i, align 8, !noalias !8844
  %.sroa.2826.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 120
  store i64 %.sroa.37.sroa.0.0.i.i.i, ptr %.sroa.2826.0..sroa_idx.i.i, align 8, !noalias !8844
  %.sroa.2927.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2927.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !8845
  %.sroa.3028.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3028.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !noalias !8845
  %.sroa.3129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3129.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.ap, i64 96, i1 false), !noalias !8845
  %i.jg = add i64 %.sroa.5.0, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8738
  br label %bb.b

.body:                                            ; preds = %bb.cd, %bb.c, %.body.i.i17.i.i.i.i, %bb.cx, %bb.cu, %bb.br, %bb.bk, %bb.bh, %.body.i.i.i.i.i.i, %bb.ag, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body.i.i18.i.i.i.i, %.body.i.i17.i.i.i.i ], [ %.pn.i.i.i.i.i.i, %bb.br ], [ %i.cu, %bb.m ], [ %i.ey, %bb.bk ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.dg, %bb.ag ], [ %i.et, %bb.bh ], [ %i.gb, %bb.cu ], [ %i.gf, %bb.cx ], [ %i.cg, %bb.c ], [ %.pn.pn.i, %bb.cd ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.5.0, ptr %.sroa.0.0.copyload, align 8, !noalias !8737
  resume { ptr, i32 } %eh.lpad-body.i

_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesmINtNtBc_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2w_8adapters3map8map_foldRB11_TB40_NtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsEuNCINvMNtB1m_12shard_holderNtB5k_11ShardHolder14split_by_shardB4a_Es0_0NCINvNvB2q_8for_each4callB45_NCINvMsk_NtBc_3vecINtB6Y_3VecB45_E14extend_trustedINtB3w_3MapB3_B5e_EE0E0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.5.0, ptr %.sroa.0.0.copyload, align 8, !noalias !8737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesmINtNtB16_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENCNCNCNvMNtNtB2j_10collection16state_managementNtB3w_10Collection22truncate_unapplied_wal000ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvMB2f_B2d_22truncate_unapplied_wal0ENCINvXsc_B5w_B5t_INtNtB4U_7collect12FromIteratorB6K_E9from_iterBN_E0ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [312 x i8], align 8               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !8857
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.e = invoke noundef align 8 ptr @_RNvXsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_6ValuesmINtNtBb_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.c unwind label %bb.h, !noalias !8858 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map6ValuesmINtNtBc_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtNtCsiHzErX7aQFk_12futures_util6stream17futures_unordered16FuturesUnorderedNCNvMB1k_B1i_22truncate_unapplied_wal0ENCINvNtNtB2w_8adapters3map8map_foldRB11_B4H_B3q_NCNCNCNvMNtNtB1o_10collection16state_managementNtB6h_10Collection22truncate_unapplied_wal000NCINvXsc_B3t_B3q_INtNtB2u_7collect12FromIteratorB4H_E9from_iterINtB5p_3MapB3_B66_EE0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !8858, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8859
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !8856
  store ptr %i.f, ptr %i.d, align 8, !noalias !8859
  store i8 0, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !8859
  invoke void @_RNvMs4_NtNtCsiHzErX7aQFk_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1u_15ShardReplicaSet22truncate_unapplied_wal0E4pushCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %i.d)
          to label %bb.g unwind label %bb.e, !noalias !8860
end_hunk_0
