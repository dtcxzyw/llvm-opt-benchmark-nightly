Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.002?download=true
inline.NumInlined: 25559
inline.NumDeleted: 7874
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB6_14TableOfContent15handle_transfer0Csl8OoimOLbh_6qdrant:bb.a
  %.val.i.i.i.i219.i = load ptr, ptr %i.aaa, align 8, !noalias !51946, !align !42, !noundef !38 ; 2 uses
  %i.aab = icmp eq ptr %.val.i.i.i.i219.i, null
  br i1 %i.aab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.aac = getelementptr i8, ptr %1, i64 2384
  %.val1.i.i.i.i220.i = load ptr, ptr %i.aac, align 8, !noalias !51946
  %i.aad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i219.i, i64 24
  %i.aae = load ptr, ptr %i.aad, align 8, !noalias !51947, !nonnull !38, !noundef !38
  invoke void %i.aae(ptr noundef %.val1.i.i.i.i220.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i unwind label %bb.ii, !noalias !51947, !inline_history !105

bb.ih:                                            ; preds = %bb.ie
  %i.aaf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !51947
  unreachable

bb.ii:                                            ; preds = %bb.ig
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %.body211.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i: ; preds = %bb.ig, %bb.if, %bb.ib, %bb.ia, %bb.hz
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 1869
  %i.aai = load i8, ptr %i.aah, align 1, !range !54, !noalias !51946, !noundef !38
  switch i8 %i.aai, label %default.unreachable1031 [
    i8 -1, label %bb.ij
    i8 0, label %bb.im
    i8 1, label %bb.il
    i8 2, label %bb.il
    i8 3, label %bb.in
  ], !prof !51961

bb.ij:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #25
          to label %.noexc226.i unwind label %bb.ik, !noalias !51947

.noexc226.i:                                      ; preds = %bb.ij
  unreachable

bb.ik:                                            ; preds = %bb.ij
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %.body211.i

bb.il:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i
  br label %bb.im

bb.im:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.i, %bb.il, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i
  %i.aak = phi ptr [ %i.aas, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.i ], [ %i.zg, %bb.il ], [ %i.zg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i ] ; 2 uses
  %i.aal = phi ptr [ %i.aat, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.i ], [ %i.zh, %bb.il ], [ %i.zh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i ] ; 2 uses
  %.sroa.0586.01054 = phi ptr [ %.sroa.0586.01055, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.i ], [ %.sroa.0586.01056, %bb.il ], [ %.sroa.0586.01056, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i ] ; 2 uses
  %.sink666.i = phi i8 [ %..i325, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.i ], [ 6, %bb.il ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i ] ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 2333
  store i8 %.sink666.i, ptr %i.aam, align 1, !noalias !51946
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 2332
  %i.aao = load i8, ptr %i.aan, align 4, !range !40, !noalias !51946, !noundef !38
  %i.aap = trunc nuw i8 %i.aao to i1
  br i1 %i.aap, label %bb.ji, label %bb.jg

bb.in:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet8is_local0ECsl8OoimOLbh_6qdrant.exit224.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %i.aar = load ptr, ptr %i.aaq, align 8, !noalias !51946, !nonnull !38, !align !42, !noundef !38
  store ptr %i.aar, ptr %i.zi, align 8, !noalias !51946
  %.sroa.8395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2464
  store i8 0, ptr %.sroa.8395.0..sroa_idx.i, align 8, !noalias !51946
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.dz
  %i.aas = phi ptr [ %i.zg, %bb.in ], [ %i.qe, %bb.dz ] ; 8 uses
  %i.aat = phi ptr [ %i.zh, %bb.in ], [ %i.qd, %bb.dz ] ; 7 uses
  %.sroa.0586.01055 = phi ptr [ %.sroa.0586.01056, %bb.in ], [ undef, %bb.dz ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !51946
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 2344 ; 2 uses
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtB6_10Collection16resharding_state0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.bf, ptr noundef nonnull align 8 %i.aau, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.iq unwind label %bb.ip, !noalias !51947

bb.ip:                                            ; preds = %bb.io
  %i.aav = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !51946
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aau) #26
          to label %.body211.i unwind label %bb.eq, !noalias !51947

bb.iq:                                            ; preds = %bb.io
  %i.aaw = load i64, ptr %i.bf, align 8, !range !68, !noalias !51946, !noundef !38 ; 5 uses
  %i.aax = icmp eq i64 %i.aaw, -2
  br i1 %i.aax, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !51946
  br label %.thread885

bb.is:                                            ; preds = %bb.iq
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i, i64 48, i1 false), !noalias !51946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !51946
  %i.aay = getelementptr inbounds nuw i8, ptr %1, i64 2464
  %i.aaz = load i8, ptr %i.aay, align 8, !range !39, !noalias !51946, !noundef !38
  %cond.i227.i = icmp eq i8 %i.aaz, 3
  br i1 %cond.i227.i, label %bb.it, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i

bb.it:                                            ; preds = %bb.is
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 2456
  %i.abb = load i8, ptr %i.aba, align 8, !range !39, !noalias !51946, !noundef !38
  %cond.i.i228.i = icmp eq i8 %i.abb, 3
  br i1 %cond.i.i228.i, label %bb.iu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i

bb.iu:                                            ; preds = %bb.it
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 2448
  %i.abd = load i8, ptr %i.abc, align 8, !range !39, !noalias !51946, !noundef !38
  %cond.i.i.i229.i = icmp eq i8 %i.abd, 3
  br i1 %cond.i.i.i229.i, label %bb.iv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i

bb.iv:                                            ; preds = %bb.iu
  %i.abe = getelementptr inbounds nuw i8, ptr %1, i64 2440
  %i.abf = load i8, ptr %i.abe, align 8, !range !39, !noalias !51946, !noundef !38
  %cond.i.i.i.i230.i = icmp eq i8 %i.abf, 3
  br i1 %cond.i.i.i.i230.i, label %bb.iw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i

bb.iw:                                            ; preds = %bb.iv
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 2376
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.abg)
          to label %bb.iz unwind label %bb.ix, !noalias !51947

bb.ix:                                            ; preds = %bb.iw
  %i.abh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %1, i64 2384
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.abi, align 8, !noalias !51946, !align !42, !noundef !38 ; 2 uses
  %i.abj = icmp eq ptr %.val2.i.i.i.i.i.i, null
  br i1 %i.abj, label %.body211.i, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.abk = getelementptr i8, ptr %1, i64 2392
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.abk, align 8, !noalias !51946
  %i.abl = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 24
  %i.abm = load ptr, ptr %i.abl, align 8, !noalias !51947, !nonnull !38, !noundef !38
  invoke void %i.abm(ptr noundef %.val3.i.i.i.i.i.i)
          to label %.body211.i unwind label %bb.jb, !noalias !51947, !inline_history !2

bb.iz:                                            ; preds = %bb.iw
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 2384
  %.val.i.i.i.i.i.i = load ptr, ptr %i.abn, align 8, !noalias !51946, !align !42, !noundef !38 ; 2 uses
  %i.abo = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.abo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.abp = getelementptr i8, ptr %1, i64 2392
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.abp, align 8, !noalias !51946
  %i.abq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.abr = load ptr, ptr %i.abq, align 8, !noalias !51947, !nonnull !38, !noundef !38
  invoke void %i.abr(ptr noundef %.val1.i.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.jc, !noalias !51947, !inline_history !106

bb.jb:                                            ; preds = %bb.iy
  %i.abs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !51947
  unreachable

bb.jc:                                            ; preds = %bb.jf, %bb.ja
  %i.abt = landingpad { ptr, i32 }
          cleanup
  br label %.body211.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ja, %bb.iz, %bb.iv, %bb.iu, %bb.it, %bb.is
  %.not.i234.i = icmp eq i64 %i.aaw, -1
  br i1 %.not.i234.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.jd

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !51946
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError9bad_inputReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 70)
          to label %bb.jk unwind label %bb.jj, !noalias !51947

bb.jd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !51962
  store i64 %i.aaw, ptr %i.at, align 8, !noalias !51946
  %.sroa.3.0..sroa_idx399.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx399.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.i, i64 48, i1 false), !noalias !51946
  %i.abu = getelementptr inbounds nuw i8, ptr %i.at, i64 52
  %i.abv = load i8, ptr %i.abu, align 4, !range !40, !alias.scope !51963, !noalias !51962, !noundef !38
  %i.abw = icmp eq i64 %i.aaw, 2
  br i1 %i.abw, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.abx = icmp eq i64 %i.aaw, 0
  %i.aby = getelementptr inbounds nuw i8, ptr %i.at, i64 23
  %i.abz = load i8, ptr %i.aby, align 1, !alias.scope !51964, !noalias !51962
  %.not.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.abz, -1
  %or.cond.i.i.i.i.i.i = select i1 %i.abx, i1 %.not.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.jf, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.i

bb.jf:                                            ; preds = %bb.je
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx399.i)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.jc, !noalias !51947

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.jf, %bb.je, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !51962
  %cond.i = icmp eq i8 %i.abv, 0
  %..i325 = select i1 %cond.i, i8 7, i8 8
  br label %bb.im

bb.jg:                                            ; preds = %bb.im
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 2329
  %i.acb = load i8, ptr %i.aca, align 1, !range !40, !noalias !51946, !noundef !38
  %i.acc = trunc nuw i8 %i.acb to i1
  br i1 %i.acc, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %i.ace = load ptr, ptr %i.acd, align 8, !noalias !51946, !nonnull !38, !align !42, !noundef !38
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 2344
  store ptr %i.ace, ptr %i.acf, align 8, !noalias !51946
  %.sroa.9411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2456
  store i8 0, ptr %.sroa.9411.0..sroa_idx.i, align 8, !noalias !51946
  br label %bb.jl

bb.ji:                                            ; preds = %bb.jg, %bb.im
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 2312
  %i.ach = load ptr, ptr %i.acg, align 8, !noalias !51946, !nonnull !38, !align !42, !noundef !38
  %.val145.i = load ptr, ptr %i.ach, align 8, !noalias !51947, !nonnull !38, !noundef !38
  %i.aci = getelementptr inbounds nuw i8, ptr %.val145.i, i64 16
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 1856
  %i.ack = load i64, ptr %i.acj, align 8, !noalias !51946, !noundef !38
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 2344
  store i64 %i.ack, ptr %i.acl, align 8, !noalias !51946
  %.sroa.8500.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2352
  store ptr %i.aci, ptr %.sroa.8500.0..sroa_idx.i, align 8, !noalias !51946
  %.sroa.9501.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2360
  store i8 %.sink666.i, ptr %.sroa.9501.0..sroa_idx.i, align 8, !noalias !51946
  %.sroa.10502.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2361
  store i8 0, ptr %.sroa.10502.0..sroa_idx.i, align 1, !noalias !51946
  br label %bb.of

bb.jj:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.thread.i
  %i.acm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !51946
  br label %.body211.i

bb.jk:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCINvMNtNtBO_10collection14shard_transferNtB2S_10Collection20start_shard_transferNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB4c_14TableOfContent15handle_transfer0s1_0NCB45_s2_0E0s0_0ECsl8OoimOLbh_6qdrant.exit.thread.i
  %.sroa.0526.0.copyload527.i = load i64, ptr %i.be, align 8, !noalias !51946
  %.sroa.11532.0..sroa_idx533.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.11532.0.copyload534.i = load ptr, ptr %.sroa.11532.0..sroa_idx533.i, align 8, !noalias !51946
  %.sroa.17.0..sroa_idx543.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.0..sroa_idx543.i, i64 32, i1 false), !noalias !51946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !51946
  br label %bb.hg

bb.jl:                                            ; preds = %bb.dz, %bb.jh
  %i.acn = phi ptr [ %i.qe, %bb.dz ], [ %i.aak, %bb.jh ] ; 8 uses
  %i.aco = phi ptr [ %i.qd, %bb.dz ], [ %i.aal, %bb.jh ] ; 7 uses
  %.sroa.0586.01053 = phi ptr [ undef, %bb.dz ], [ %.sroa.0586.01054, %bb.jh ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !51946
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 2344 ; 3 uses
  invoke fastcc void @_RNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtB4_10Collection27effective_optimizers_config0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.bd, ptr noundef nonnull align 8 %i.acp, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jn unwind label %bb.jm, !noalias !51947

bb.jm:                                            ; preds = %bb.jl
  %i.acq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !51946
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.acp) #26
          to label %.body211.i unwind label %bb.eq, !noalias !51947

bb.jn:                                            ; preds = %bb.jl
  %i.acr = load i64, ptr %i.bd, align 8, !range !64, !noalias !51946, !noundef !38 ; 3 uses
  %i.acs = icmp eq i64 %i.acr, -1
  br i1 %i.acs, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !51946
  br label %.thread885

bb.jp:                                            ; preds = %bb.jn
  %.sroa.3414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.3414.sroa.0.0.copyload.i = load i64, ptr %.sroa.3414.0..sroa_idx.i, align 8, !noalias !51946 ; 2 uses
  %.sroa.3414.sroa.3.0..sroa.3414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.3414.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3414.sroa.3.0..sroa.3414.0..sroa_idx.sroa_idx.i, align 8, !noalias !51946 ; 2 uses
  %.sroa.3414.sroa.5.0..sroa.3414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3414.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3414.sroa.5.0..sroa.3414.0..sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !51946
  %.sroa.5415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5415.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5415.0..sroa_idx.i, i64 48, i1 false), !noalias !51946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !51946
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 2456
  %i.acu = load i8, ptr %i.act, align 8, !range !39, !noalias !51946, !noundef !38
  %cond.i236.i = icmp eq i8 %i.acu, 3
  br i1 %cond.i236.i, label %bb.jq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit.i

bb.jq:                                            ; preds = %bb.jp
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 2448
  %i.acw = load i8, ptr %i.acv, align 8, !range !39, !noalias !51946, !noundef !38
  %cond.i.i237.i = icmp eq i8 %i.acw, 3
  br i1 %cond.i.i237.i, label %bb.jr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit.i

bb.jr:                                            ; preds = %bb.jq
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 2440
  %i.acy = load i8, ptr %i.acx, align 8, !range !39, !noalias !51946, !noundef !38
  %cond.i.i.i238.i = icmp eq i8 %i.acy, 3
  br i1 %cond.i.i.i238.i, label %bb.js, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit.i

bb.js:                                            ; preds = %bb.jr
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 2376
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.acz)
          to label %bb.jv unwind label %bb.jt, !noalias !51947

bb.jt:                                            ; preds = %bb.js
  %i.ada = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 2384
  %.val2.i.i.i.i239.i = load ptr, ptr %i.adb, align 8, !noalias !51946, !align !42, !noundef !38 ; 2 uses
  %i.adc = icmp eq ptr %.val2.i.i.i.i239.i, null
  br i1 %i.adc, label %.body211.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.add = getelementptr i8, ptr %1, i64 2392
  %.val3.i.i.i.i240.i = load ptr, ptr %i.add, align 8, !noalias !51946
  %i.ade = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i239.i, i64 24
  %i.adf = load ptr, ptr %i.ade, align 8, !noalias !51947, !nonnull !38, !noundef !38
  invoke void %i.adf(ptr noundef %.val3.i.i.i.i240.i)
          to label %.body211.i unwind label %bb.jx, !noalias !51947, !inline_history !2

bb.jv:                                            ; preds = %bb.js
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 2384
  %.val.i.i.i.i242.i = load ptr, ptr %i.adg, align 8, !noalias !51946, !align !42, !noundef !38 ; 2 uses
  %i.adh = icmp eq ptr %.val.i.i.i.i242.i, null
  br i1 %i.adh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.adi = getelementptr i8, ptr %1, i64 2392
  %.val1.i.i.i.i243.i = load ptr, ptr %i.adi, align 8, !noalias !51946
  %i.adj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i242.i, i64 24
  %i.adk = load ptr, ptr %i.adj, align 8, !noalias !51947, !nonnull !38, !noundef !38
  invoke void %i.adk(ptr noundef %.val1.i.i.i.i243.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.jy, !noalias !51947, !inline_history !107

bb.jx:                                            ; preds = %bb.ju
  %i.adl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !51947
  unreachable

bb.jy:                                            ; preds = %bb.jw
  %i.adm = landingpad { ptr, i32 }
          cleanup
  br label %.body211.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.jw, %bb.jv, %bb.jr, %bb.jq, %bb.jp
  %i.adn = icmp eq i64 %i.acr, 2
  br i1 %i.adn, label %bb.kr, label %bb.ka

bb.jz:                                            ; preds = %bb.kb, %bb.ka
  %i.ado = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.ka:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !51946
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 2324
  %i.adq = load i32, ptr %i.adp, align 4, !noalias !51946, !noundef !38
  %i.adr = getelementptr inbounds nuw i8, ptr %1, i64 1728 ; 7 uses
  %i.ads = load ptr, ptr %i.adr, align 8, !noalias !51946, !nonnull !38, !align !42, !noundef !38 ; 2 uses
  %i.adt = getelementptr i8, ptr %i.ads, i64 200
  %.val150.i = load ptr, ptr %i.adt, align 8, !noalias !51947, !nonnull !38, !noundef !38
  %i.adu = getelementptr i8, ptr %i.ads, i64 208
  %.val151.i = load i64, ptr %i.adu, align 8, !noalias !51947, !noundef !38 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !51965
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, i64 noundef range(i64 0, -9223372036854775808) %.val151.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc247.i unwind label %bb.jz, !noalias !51947

.noexc247.i:                                      ; preds = %bb.ka
  %i.adv = load i64, ptr %i.as, align 8, !range !56, !noalias !51965, !noundef !38
  %i.adw = trunc nuw i64 %i.adv to i1
  %i.adx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ady = load i64, ptr %i.adx, align 8, !range !57, !noalias !51965, !noundef !38 ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  br i1 %i.adw, label %bb.kb, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i.i, !prof !58

bb.kb:                                            ; preds = %.noexc247.i
  %i.aea = load i64, ptr %i.adz, align 8, !noalias !51965
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ady, i64 %i.aea) #29
          to label %.noexc248.i unwind label %bb.jz, !noalias !51947

.noexc248.i:                                      ; preds = %bb.kb
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %.noexc247.i
  %i.aeb = load ptr, ptr %i.adz, align 8, !noalias !51965, !nonnull !38, !noundef !38 ; 2 uses
  %i.aec = icmp ule i64 %.val151.i, %i.ady
  call void @llvm.assume(i1 %i.aec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !51965
  %.not.i.i.i.i = icmp eq i64 %.val151.i, 0
  br i1 %.not.i.i.i.i, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aeb, ptr nonnull readonly align 1 %.val150.i, i64 range(i64 0, -9223372036854775808) %.val151.i, i1 false), !noalias !51966
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 2312
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc19collection_meta_opsNtB6_14TableOfContent15handle_transfer0Csl8OoimOLbh_6qdrant:bb.a
  %i.bok = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.bol = load ptr, ptr %i.bok, align 8, !noalias !52068, !nonnull !38, !align !42, !noundef !38
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bol, i64 360
  %i.bon = getelementptr inbounds nuw i8, ptr %1, i64 1384
  store ptr %i.bom, ptr %i.bon, align 8, !noalias !52068
  %.sroa.8.0..sroa_idx.i419 = getelementptr inbounds nuw i8, ptr %1, i64 1488
  store i8 0, ptr %.sroa.8.0..sroa_idx.i419, align 8, !noalias !52068
  br label %bb.aac

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.aez, %bb.abc, %.body145.i, %bb.zx, %bb.zu, %.body131.i, %bb.zh, %bb.zd, %bb.zc, %bb.yw
  %i.boo = phi ptr [ %i.bzf, %bb.aez ], [ %i.brz, %.body145.i ], [ %i.brz, %bb.abc ], [ %i.bna, %bb.zx ], [ %i.bna, %bb.zu ], [ %i.bna, %.body131.i ], [ %i.blo, %bb.yw ], [ %i.blo, %bb.zh ], [ %i.blo, %bb.zd ], [ %i.blo, %bb.zc ] ; 2 uses
  %i.bop = phi ptr [ %i.bzg, %bb.aez ], [ %i.bsa, %.body145.i ], [ %i.bsa, %bb.abc ], [ %i.bnb, %bb.zx ], [ %i.bnb, %bb.zu ], [ %i.bnb, %.body131.i ], [ %i.blp, %bb.yw ], [ %i.blp, %bb.zh ], [ %i.blp, %bb.zd ], [ %i.blp, %bb.zc ] ; 2 uses
  %.pn101.i = phi { ptr, i32 } [ %i.bzh, %bb.aez ], [ %.pn97.pn.pn.i, %.body145.i ], [ %.pn97.pn.pn.i, %bb.abc ], [ %i.bof, %bb.zx ], [ %i.bny, %bb.zu ], [ %.pn27.i, %.body131.i ], [ %i.bls, %bb.yw ], [ %i.bmo, %bb.zh ], [ %i.bmc, %bb.zd ], [ %i.bmc, %bb.zc ] ; 2 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %1, i64 1176 ; 2 uses
  %i.bor = load i64, ptr %i.boq, align 8, !range !49, !alias.scope !52082, !noalias !52068, !noundef !38
  %i.bos = icmp eq i64 %i.bor, -2
  br i1 %i.bos, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferECsl8OoimOLbh_6qdrant.exit.i402, label %bb.aab

bb.aab:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEEECsl8OoimOLbh_6qdrant.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.boq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferECsl8OoimOLbh_6qdrant.exit.i402 unwind label %bb.zj, !noalias !52069

bb.aac:                                           ; preds = %bb.aaa, %bb.yr
  %i.bot = phi ptr [ %i.bna, %bb.aaa ], [ %i.blc, %bb.yr ] ; 7 uses
  %i.bou = phi ptr [ %i.bnb, %bb.aaa ], [ %i.blb, %bb.yr ] ; 6 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 2 uses
  %i.bow = invoke fastcc { ptr, ptr } @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtB4_17SharedShardHolder4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bov, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aae unwind label %bb.aad, !noalias !52069 ; 2 uses

bb.aad:                                           ; preds = %bb.aac
  %i.box = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bov) #26
          to label %.body145.i unwind label %bb.zj, !noalias !52069

bb.aae:                                           ; preds = %bb.aac
  %i.boy = extractvalue { ptr, ptr } %i.bow, 0    ; 3 uses
  %i.boz = extractvalue { ptr, ptr } %i.bow, 1    ; 3 uses
  %i.bpa = icmp eq ptr %i.boy, null
  br i1 %i.bpa, label %bb.afh, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  %i.bpb = getelementptr inbounds nuw i8, ptr %1, i64 1488
  %i.bpc = load i8, ptr %i.bpb, align 8, !range !39, !noalias !52068, !noundef !38
  %cond.i136.i = icmp eq i8 %i.bpc, 3
  br i1 %cond.i136.i, label %bb.aag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant.exit.i

bb.aag:                                           ; preds = %bb.aaf
  %i.bpd = getelementptr inbounds nuw i8, ptr %1, i64 1480
  %i.bpe = load i8, ptr %i.bpd, align 8, !range !39, !noalias !52068, !noundef !38
  %cond.i.i137.i = icmp eq i8 %i.bpe, 3
  br i1 %cond.i.i137.i, label %bb.aah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant.exit.i

bb.aah:                                           ; preds = %bb.aag
  %i.bpf = getelementptr inbounds nuw i8, ptr %1, i64 1472
  %i.bpg = load i8, ptr %i.bpf, align 8, !range !39, !noalias !52068, !noundef !38
  %cond.i.i.i138.i = icmp eq i8 %i.bpg, 3
  br i1 %cond.i.i.i138.i, label %bb.aai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant.exit.i

bb.aai:                                           ; preds = %bb.aah
  %i.bph = getelementptr inbounds nuw i8, ptr %1, i64 1408
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.bph)
          to label %bb.aal unwind label %bb.aaj, !noalias !52069

bb.aaj:                                           ; preds = %bb.aai
  %i.bpi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %1, i64 1416
  %.val2.i.i.i.i139.i = load ptr, ptr %i.bpj, align 8, !noalias !52068, !align !42, !noundef !38 ; 2 uses
  %i.bpk = icmp eq ptr %.val2.i.i.i.i139.i, null
  br i1 %i.bpk, label %.body145.i, label %bb.aak

bb.aak:                                           ; preds = %bb.aaj
  %i.bpl = getelementptr i8, ptr %1, i64 1424
  %.val3.i.i.i.i140.i = load ptr, ptr %i.bpl, align 8, !noalias !52068
  %i.bpm = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i139.i, i64 24
  %i.bpn = load ptr, ptr %i.bpm, align 8, !noalias !52069, !nonnull !38, !noundef !38
  invoke void %i.bpn(ptr noundef %.val3.i.i.i.i140.i)
          to label %.body145.i unwind label %bb.aan, !noalias !52069, !inline_history !2

bb.aal:                                           ; preds = %bb.aai
  %i.bpo = getelementptr inbounds nuw i8, ptr %1, i64 1416
  %.val.i.i.i.i142.i = load ptr, ptr %i.bpo, align 8, !noalias !52068, !align !42, !noundef !38 ; 2 uses
  %i.bpp = icmp eq ptr %.val.i.i.i.i142.i, null
  br i1 %i.bpp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.aam

bb.aam:                                           ; preds = %bb.aal
  %i.bpq = getelementptr i8, ptr %1, i64 1424
  %.val1.i.i.i.i143.i = load ptr, ptr %i.bpq, align 8, !noalias !52068
  %i.bpr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i142.i, i64 24
  %i.bps = load ptr, ptr %i.bpr, align 8, !noalias !52069, !nonnull !38, !noundef !38
  invoke void %i.bps(ptr noundef %.val1.i.i.i.i143.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.aao, !noalias !52069, !inline_history !45

bb.aan:                                           ; preds = %bb.aak
  %i.bpt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !52069
  unreachable

bb.aao:                                           ; preds = %bb.aam
  %i.bpu = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.aam, %bb.aal, %bb.aah, %bb.aag, %bb.aaf
  %i.bpv = getelementptr inbounds nuw i8, ptr %1, i64 1376
  %i.bpw = load ptr, ptr %i.bpv, align 8, !noalias !52068, !nonnull !38, !align !42, !noundef !38 ; 6 uses
  %i.bpx = load ptr, ptr %i.bpw, align 8, !alias.scope !52083, !noalias !52069, !align !42, !noundef !38
  %i.bpy = icmp eq ptr %i.bpx, null
  br i1 %i.bpy, label %bb.aar, label %bb.aap

bb.aap:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant.exit.i
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bpw)
          to label %bb.aar unwind label %bb.aaq, !noalias !52069

bb.aaq:                                           ; preds = %bb.aap
  %i.bpz = landingpad { ptr, i32 }
          cleanup
  store ptr %i.boy, ptr %i.bpw, align 8, !alias.scope !52084, !noalias !52069
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpw, i64 8
  store ptr %i.boz, ptr %i.bqa, align 8, !alias.scope !52084, !noalias !52069
  br label %.body145.i

bb.aar:                                           ; preds = %bb.aap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant.exit.i
  store ptr %i.boy, ptr %i.bpw, align 8, !alias.scope !52084, !noalias !52069
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bpw, i64 8
  store ptr %i.boz, ptr %i.bqb, align 8, !alias.scope !52084, !noalias !52069
  br label %bb.aas

bb.aas:                                           ; preds = %bb.aar, %bb.zv
  %i.bqc = phi ptr [ %i.bot, %bb.aar ], [ %i.bna, %bb.zv ] ; 6 uses
  %i.bqd = phi ptr [ %i.bou, %bb.aar ], [ %i.bnb, %bb.zv ] ; 6 uses
  %.sink390.i = phi ptr [ %i.boz, %bb.aar ], [ %i.bob, %bb.zv ] ; 2 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %1, i64 1344
  store ptr %.sink390.i, ptr %i.bqe, align 8, !noalias !52068
  %i.bqf = getelementptr inbounds nuw i8, ptr %1, i64 1309
  %i.bqg = load i8, ptr %i.bqf, align 1, !range !54, !noalias !52068, !noundef !38
  %i.bqh = getelementptr inbounds nuw i8, ptr %1, i64 1370 ; 2 uses
  %i.bqi = icmp eq i8 %i.bqg, 3
  %i.bqj = zext i1 %i.bqi to i8
  store i8 %i.bqj, ptr %i.bqh, align 2, !noalias !52068
  %i.bqk = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.bql = load i32, ptr %i.bqk, align 8, !range !77, !noalias !52068, !noundef !38
  %i.bqm = getelementptr inbounds nuw i8, ptr %1, i64 1284
  %i.bqn = load i32, ptr %i.bqm, align 4, !noalias !52068
  %i.bqo = getelementptr inbounds nuw i8, ptr %1, i64 1304
  %i.bqp = load i32, ptr %i.bqo, align 8, !noalias !52068, !noundef !38
  %i.bqq = trunc nuw i32 %i.bql to i1
  %..i.i417 = select i1 %i.bqq, i32 %i.bqn, i32 %i.bqp
  %i.bqr = invoke noundef align 8 ptr @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB2_11ShardHolder9get_shard(ptr noundef nonnull align 8 %.sink390.i, i32 noundef %..i.i417)
          to label %bb.aau unwind label %bb.aat, !noalias !52069 ; 3 uses

bb.aat:                                           ; preds = %bb.aas
  %i.bqs = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i

bb.aau:                                           ; preds = %bb.aas
  %.not40.i = icmp eq ptr %i.bqr, null
  br i1 %.not40.i, label %bb.aav, label %bb.aaw

bb.aav:                                           ; preds = %bb.acg, %bb.aay, %bb.aau
  %i.bqt = phi ptr [ %i.bqc, %bb.aau ], [ %i.bue, %bb.acg ], [ %i.bqc, %bb.aay ] ; 7 uses
  %i.bqu = phi ptr [ %i.bqd, %bb.aau ], [ %i.buf, %bb.acg ], [ %i.bqd, %bb.aay ] ; 7 uses
  %.sroa.011.0.i = phi i1 [ false, %bb.aau ], [ %i.buh, %bb.acg ], [ false, %bb.aay ]
  %i.bqv = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %i.bqw = load ptr, ptr %i.bqv, align 8, !noalias !52068, !nonnull !38, !align !42, !noundef !38
  %i.bqx = getelementptr inbounds nuw i8, ptr %1, i64 1304 ; 2 uses
  %i.bqy = load i32, ptr %i.bqx, align 8, !noalias !52068, !noundef !38
  %i.bqz = invoke noundef align 8 ptr @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB2_11ShardHolder9get_shard(ptr noundef nonnull align 8 %i.bqw, i32 noundef %i.bqy)
          to label %bb.acq unwind label %bb.acp, !noalias !52069 ; 4 uses

bb.aaw:                                           ; preds = %bb.aau
  %i.bra = getelementptr inbounds nuw i8, ptr %1, i64 1352
  store ptr %i.bqr, ptr %i.bra, align 8, !noalias !52068, !captures !47
  %.val112.i = load ptr, ptr %i.bqr, align 8, !noalias !52069, !nonnull !38, !noundef !38
  %i.brb = getelementptr inbounds nuw i8, ptr %.val112.i, i64 16
  %i.brc = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.brd = load i64, ptr %i.brc, align 8, !noalias !52068, !noundef !38
  %i.bre = invoke noundef i8 @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2_15ShardReplicaSet10peer_state(ptr noundef nonnull align 8 %i.brb, i64 noundef %i.brd)
          to label %bb.aay unwind label %bb.aax, !noalias !52069

bb.aax:                                           ; preds = %bb.aaw
  %i.brf = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i

bb.aay:                                           ; preds = %bb.aaw
  %.not373.i = icmp eq i8 %i.bre, -1
  br i1 %.not373.i, label %bb.aav, label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay
  %i.brg = load i8, ptr %i.bqh, align 2, !range !40, !noalias !52068, !noundef !38
  %i.brh = trunc nuw i8 %i.brg to i1
  br i1 %i.brh, label %bb.abb, label %bb.aba

bb.aba:                                           ; preds = %bb.abx, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.thread.i, %bb.aaz
  %i.bri = phi ptr [ %i.bse, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.i ], [ %i.bse, %bb.abx ], [ %i.bse, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.thread.i ], [ %i.bqc, %bb.aaz ] ; 2 uses
  %i.brj = phi ptr [ %i.bsf, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.i ], [ %i.bsf, %bb.abx ], [ %i.bsf, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.thread.i ], [ %i.bqd, %bb.aaz ] ; 2 uses
  %.sink392.i = phi i8 [ %..i411, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.i ], [ 1, %bb.abx ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.thread.i ], [ 0, %bb.aaz ] ; 2 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %1, i64 1371
  store i8 %.sink392.i, ptr %i.brk, align 1, !noalias !52068
  %i.brl = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.brm = load i64, ptr %i.brl, align 8, !noalias !52068, !noundef !38 ; 2 uses
  %i.brn = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.bro = load ptr, ptr %i.brn, align 8, !noalias !52068, !nonnull !38, !align !42, !noundef !38
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 504
  %i.brq = load i64, ptr %i.brp, align 8, !noalias !52069, !noundef !38
  %i.brr = icmp eq i64 %i.brm, %i.brq
  %i.brs = getelementptr inbounds nuw i8, ptr %1, i64 1352
  %i.brt = getelementptr inbounds nuw i8, ptr %1, i64 1376
  %.sroa.9242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1400
  %.sroa.11244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1409
  %.sroa.12245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1410
  %i.bru = load ptr, ptr %i.brs, align 8, !noalias !52068, !nonnull !38, !align !42, !noundef !38
  %.val110.i = load ptr, ptr %i.bru, align 8, !noalias !52069, !nonnull !38, !noundef !38
  %i.brv = getelementptr inbounds nuw i8, ptr %.val110.i, i64 16
  store i64 %i.brm, ptr %i.brt, align 8, !noalias !52068
  store ptr %i.brv, ptr %.sroa.9242.0..sroa_idx.i, align 8, !noalias !52068
  store i8 %.sink392.i, ptr %.sroa.11244.0..sroa_idx.i, align 1, !noalias !52068
  store i8 0, ptr %.sroa.12245.0..sroa_idx.i, align 2, !noalias !52068
  br i1 %i.brr, label %bb.aby, label %bb.aci

bb.abb:                                           ; preds = %bb.aaz
  %i.brw = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.brx = load ptr, ptr %i.brw, align 8, !noalias !52068, !nonnull !38, !align !42, !noundef !38
  %i.bry = getelementptr inbounds nuw i8, ptr %1, i64 1376
  store ptr %i.brx, ptr %i.bry, align 8, !noalias !52068
  %.sroa.8222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i8 0, ptr %.sroa.8222.0..sroa_idx.i, align 8, !noalias !52068
  br label %bb.abd

.body145.i:                                       ; preds = %bb.adv, %bb.adz, %bb.add, %bb.adh, %bb.aed, %bb.aek, %bb.ael, %bb.aep, %bb.abz, %bb.acf, %bb.acj, %bb.acn, %bb.afc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEEECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.adl, %bb.acp, %bb.abv, %bb.abr, %bb.abn, %bb.abm, %bb.abe, %bb.aax, %bb.aat, %bb.aaq, %bb.aao, %bb.aak, %bb.aaj, %bb.aad
  %i.brz = phi ptr [ %i.bvw, %bb.adh ], [ %i.bse, %bb.abv ], [ %i.bui, %bb.acn ], [ %i.bot, %bb.aao ], [ %i.bse, %bb.abn ], [ %i.bwd, %bb.adl ], [ %i.btt, %bb.acf ], [ %i.bqt, %bb.acp ], [ %i.bqc, %bb.aat ], [ %i.bqc, %bb.aax ], [ %i.bxd, %bb.aep ], [ %i.byd, %bb.afc ], [ %i.bot, %bb.aaq ], [ %i.bot, %bb.aad ], [ %i.bot, %bb.aaj ], [ %i.bot, %bb.aak ], [ %i.bse, %bb.abm ], [ %i.bse, %bb.abe ], [ %i.bse, %bb.abr ], [ %i.bwd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEEECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.bui, %bb.acj ], [ %i.btt, %bb.abz ], [ %i.bxd, %bb.ael ], [ %i.bxd, %bb.aek ], [ %i.bxd, %bb.aed ], [ %i.bvw, %bb.add ], [ %i.bww, %bb.adv ], [ %i.bww, %bb.adz ] ; 2 uses
  %i.bsa = phi ptr [ %i.bvx, %bb.adh ], [ %i.bsf, %bb.abv ], [ %i.buj, %bb.acn ], [ %i.bou, %bb.aao ], [ %i.bsf, %bb.abn ], [ %i.bwe, %bb.adl ], [ %i.btu, %bb.acf ], [ %i.bqu, %bb.acp ], [ %i.bqd, %bb.aat ], [ %i.bqd, %bb.aax ], [ %i.bxe, %bb.aep ], [ %i.bye, %bb.afc ], [ %i.bou, %bb.aaq ], [ %i.bou, %bb.aad ], [ %i.bou, %bb.aaj ], [ %i.bou, %bb.aak ], [ %i.bsf, %bb.abm ], [ %i.bsf, %bb.abe ], [ %i.bsf, %bb.abr ], [ %i.bwe, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEEECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.buj, %bb.acj ], [ %i.btu, %bb.abz ], [ %i.bxe, %bb.ael ], [ %i.bxe, %bb.aek ], [ %i.bxe, %bb.aed ], [ %i.bvx, %bb.add ], [ %i.bwx, %bb.adv ], [ %i.bwx, %bb.adz ] ; 2 uses
  %.pn97.pn.pn.i = phi { ptr, i32 } [ %i.bwc, %bb.adh ], [ %i.bto, %bb.abv ], [ %i.buo, %bb.acn ], [ %i.bpu, %bb.aao ], [ %i.bst, %bb.abn ], [ %i.bwh, %bb.adl ], [ %i.bud, %bb.acf ], [ %i.bup, %bb.acp ], [ %i.bqs, %bb.aat ], [ %i.brf, %bb.aax ], [ %i.byc, %bb.aep ], [ %.pn91.pn.i, %bb.afc ], [ %i.bpz, %bb.aaq ], [ %i.box, %bb.aad ], [ %i.bpi, %bb.aaj ], [ %i.bpi, %bb.aak ], [ %i.bst, %bb.abm ], [ %i.bsh, %bb.abe ], [ %i.btf, %bb.abr ], [ %.pn.i.i.i404, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEEECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.bul, %bb.acj ], [ %i.btw, %bb.abz ], [ %i.bxq, %bb.ael ], [ %i.bxq, %bb.aek ], [ %i.bxg, %bb.aed ], [ %i.bvz, %bb.add ], [ %i.bwz, %bb.adv ], [ %i.bxc, %bb.adz ] ; 2 uses
  %i.bsb = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 2 uses
  %i.bsc = load ptr, ptr %i.bsb, align 8, !alias.scope !52085, !noalias !52068, !align !42, !noundef !38
  %i.bsd = icmp eq ptr %i.bsc, null
  br i1 %i.bsd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEEECsl8OoimOLbh_6qdrant.exit.i, label %bb.abc

bb.abc:                                           ; preds = %.body145.i
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bsb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.zj, !noalias !52069

bb.abd:                                           ; preds = %bb.abb, %bb.yr
  %i.bse = phi ptr [ %i.bqc, %bb.abb ], [ %i.blc, %bb.yr ] ; 9 uses
  %i.bsf = phi ptr [ %i.bqd, %bb.abb ], [ %i.blb, %bb.yr ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !52068
  %i.bsg = getelementptr inbounds nuw i8, ptr %1, i64 1376 ; 2 uses
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtB6_10Collection16resharding_state0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.r, ptr noundef nonnull align 8 %i.bsg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.abf unwind label %bb.abe, !noalias !52069

bb.abe:                                           ; preds = %bb.abd
  %i.bsh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !52068
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bsg) #26
          to label %.body145.i unwind label %bb.zj, !noalias !52069

bb.abf:                                           ; preds = %bb.abd
  %i.bsi = load i64, ptr %i.r, align 8, !range !68, !noalias !52068, !noundef !38 ; 5 uses
  %i.bsj = icmp eq i64 %i.bsi, -2
  br i1 %i.bsj, label %bb.abg, label %bb.abh

bb.abg:                                           ; preds = %bb.abf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !52068
  br label %bb.afh

bb.abh:                                           ; preds = %bb.abf
  %.sroa.3.0..sroa_idx.i405 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.i401, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i405, i64 48, i1 false), !noalias !52068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !52068
  %i.bsk = getelementptr inbounds nuw i8, ptr %1, i64 1496
  %i.bsl = load i8, ptr %i.bsk, align 8, !range !39, !noalias !52068, !noundef !38
  %cond.i150.i = icmp eq i8 %i.bsl, 3
  br i1 %cond.i150.i, label %bb.abi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i406

bb.abi:                                           ; preds = %bb.abh
  %i.bsm = getelementptr inbounds nuw i8, ptr %1, i64 1488
  %i.bsn = load i8, ptr %i.bsm, align 8, !range !39, !noalias !52068, !noundef !38
  %cond.i.i151.i = icmp eq i8 %i.bsn, 3
  br i1 %cond.i.i151.i, label %bb.abj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i406

bb.abj:                                           ; preds = %bb.abi
  %i.bso = getelementptr inbounds nuw i8, ptr %1, i64 1480
  %i.bsp = load i8, ptr %i.bso, align 8, !range !39, !noalias !52068, !noundef !38
  %cond.i.i.i152.i = icmp eq i8 %i.bsp, 3
  br i1 %cond.i.i.i152.i, label %bb.abk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i406

bb.abk:                                           ; preds = %bb.abj
  %i.bsq = getelementptr inbounds nuw i8, ptr %1, i64 1472
  %i.bsr = load i8, ptr %i.bsq, align 8, !range !39, !noalias !52068, !noundef !38
  %cond.i.i.i.i.i412 = icmp eq i8 %i.bsr, 3
  br i1 %cond.i.i.i.i.i412, label %bb.abl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i406

bb.abl:                                           ; preds = %bb.abk
  %i.bss = getelementptr inbounds nuw i8, ptr %1, i64 1408
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.bss)
          to label %bb.abo unwind label %bb.abm, !noalias !52069

bb.abm:                                           ; preds = %bb.abl
  %i.bst = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bsu = getelementptr inbounds nuw i8, ptr %1, i64 1416
  %.val2.i.i.i.i.i.i413 = load ptr, ptr %i.bsu, align 8, !noalias !52068, !align !42, !noundef !38 ; 2 uses
  %i.bsv = icmp eq ptr %.val2.i.i.i.i.i.i413, null
  br i1 %i.bsv, label %.body145.i, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.bsw = getelementptr i8, ptr %1, i64 1424
  %.val3.i.i.i.i.i.i414 = load ptr, ptr %i.bsw, align 8, !noalias !52068
  %i.bsx = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i413, i64 24
  %i.bsy = load ptr, ptr %i.bsx, align 8, !noalias !52069, !nonnull !38, !noundef !38
  invoke void %i.bsy(ptr noundef %.val3.i.i.i.i.i.i414)
          to label %.body145.i unwind label %bb.abq, !noalias !52069, !inline_history !2

bb.abo:                                           ; preds = %bb.abl
  %i.bsz = getelementptr inbounds nuw i8, ptr %1, i64 1416
  %.val.i.i.i.i.i.i415 = load ptr, ptr %i.bsz, align 8, !noalias !52068, !align !42, !noundef !38 ; 2 uses
  %i.bta = icmp eq ptr %.val.i.i.i.i.i.i415, null
  br i1 %i.bta, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i406, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %i.btb = getelementptr i8, ptr %1, i64 1424
  %.val1.i.i.i.i.i.i416 = load ptr, ptr %i.btb, align 8, !noalias !52068
  %i.btc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i415, i64 24
  %i.btd = load ptr, ptr %i.btc, align 8, !noalias !52069, !nonnull !38, !noundef !38
  invoke void %i.btd(ptr noundef %.val1.i.i.i.i.i.i416)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i406 unwind label %bb.abr, !noalias !52069, !inline_history !106

bb.abq:                                           ; preds = %bb.abn
  %i.bte = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !52069
  unreachable

bb.abr:                                           ; preds = %bb.abu, %bb.abp
  %i.btf = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i406: ; preds = %bb.abp, %bb.abo, %bb.abk, %bb.abj, %bb.abi, %bb.abh
  %.not.i.i407 = icmp eq i64 %i.bsi, -1
  br i1 %.not.i.i407, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.abs

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i406
  %i.btg = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !52068 ; 2 uses
  %i.bth = icmp ult i64 %i.btg, 6
  call void @llvm.assume(i1 %i.bth)
  %.not374.i = icmp eq i64 %i.btg, 0
  br i1 %.not374.i, label %bb.aba, label %bb.abw

bb.abs:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtBI_10Collection16resharding_state0ECsl8OoimOLbh_6qdrant.exit.i406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !52086
  store i64 %i.bsi, ptr %i.f, align 8, !noalias !52068
  %.sroa.3.0..sroa_idx226.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx226.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.i401, i64 48, i1 false), !noalias !52068
  %i.bti = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.btj = load i8, ptr %i.bti, align 4, !range !40, !alias.scope !52087, !noalias !52086, !noundef !38
  %i.btk = icmp eq i64 %i.bsi, 2
  br i1 %i.btk, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.i, label %bb.abt

bb.abt:                                           ; preds = %bb.abs
  %i.btl = icmp eq i64 %i.bsi, 0
  %i.btm = getelementptr inbounds nuw i8, ptr %i.f, i64 23
  %i.btn = load i8, ptr %i.btm, align 1, !alias.scope !52088, !noalias !52086
  %.not.i.i.i.i.i.i.i.i.i408 = icmp sgt i8 %i.btn, -1
  %or.cond.i.i.i.i.i.i409 = select i1 %i.btl, i1 %.not.i.i.i.i.i.i.i.i.i408, i1 false
  br i1 %or.cond.i.i.i.i.i.i409, label %bb.abu, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.i

bb.abu:                                           ; preds = %bb.abt
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx226.i)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.abr, !noalias !52069

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.abu, %bb.abt, %bb.abs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !52086
  %cond.i410 = icmp eq i8 %i.btj, 0
  %..i411 = select i1 %cond.i410, i8 7, i8 8
  br label %bb.aba

bb.abv:                                           ; preds = %bb.abw
  %i.bto = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !52068
  br label %.body145.i

bb.abw:                                           ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateE3mapNtNtNtBO_10operations11cluster_ops19ReshardingDirectionNCNCNvMNtNtBO_10collection14shard_transferNtB2R_10Collection21finish_shard_transfer0s_0ECsl8OoimOLbh_6qdrant.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !52068
  store ptr @42, ptr %i.q, align 8, !noalias !52068
  %i.btp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 38, ptr %i.btp, align 8, !noalias !52068
  %i.btq = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr @42, ptr %i.btq, align 8, !noalias !52068
  %i.btr = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 38, ptr %i.btr, align 8, !noalias !52068
  %i.bts = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr @456, ptr %i.bts, align 8, !noalias !52068
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @455, ptr noundef nonnull inttoptr (i64 193 to ptr), i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q)
          to label %bb.abx unwind label %bb.abv, !noalias !52069

bb.abx:                                           ; preds = %bb.abw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !52068
  br label %bb.aba

bb.aby:                                           ; preds = %bb.aba, %bb.yr
  %i.btt = phi ptr [ %i.blc, %bb.yr ], [ %i.bri, %bb.aba ] ; 5 uses
  %i.btu = phi ptr [ %i.blb, %bb.yr ], [ %i.brj, %bb.aba ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !52068
  %i.btv = getelementptr inbounds nuw i8, ptr %1, i64 1376 ; 2 uses
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4_15ShardReplicaSet17set_replica_state0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.p, ptr noundef nonnull align 8 %i.btv, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aca unwind label %bb.abz, !noalias !52069

bb.abz:                                           ; preds = %bb.aby
  %i.btw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !52068
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet17set_replica_state0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.btv) #26
          to label %.body145.i unwind label %bb.zj, !noalias !52069

bb.aca:                                           ; preds = %bb.aby
  %i.btx = load i64, ptr %i.p, align 8, !range !50, !noalias !52068, !noundef !38 ; 3 uses
  %i.bty = icmp eq i64 %i.btx, -2
  br i1 %i.bty, label %bb.acb, label %bb.acc

bb.acb:                                           ; preds = %bb.aca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !52068
  br label %bb.afh

bb.acc:                                           ; preds = %bb.aca
  %.sroa.3248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.3248.sroa.0.0.copyload.i = load i8, ptr %.sroa.3248.0..sroa_idx.i, align 8, !noalias !52068
  %.sroa.3248.sroa.2.0..sroa.3248.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3248.sroa.2.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3248.sroa.2.0..sroa.3248.0..sroa_idx.sroa_idx.i, i64 39, i1 false), !noalias !52068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !52068
  %i.btz = getelementptr inbounds nuw i8, ptr %1, i64 1410
  %i.bua = load i8, ptr %i.btz, align 2, !range !44, !noalias !52068, !noundef !38
  switch i8 %i.bua, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet17set_replica_state0ECsl8OoimOLbh_6qdrant.exit.i [
    i8 4, label %bb.ace
    i8 3, label %bb.acd
  ]

bb.acd:                                           ; preds = %bb.acc
  %i.bub = getelementptr inbounds nuw i8, ptr %1, i64 1416
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet22on_local_state_updated0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bub)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet17set_replica_state0ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.acf, !noalias !52069

bb.ace:                                           ; preds = %bb.acc
  %i.buc = getelementptr inbounds nuw i8, ptr %1, i64 1416
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet23on_remote_state_updated0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.buc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet17set_replica_state0ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.acf, !noalias !52069

bb.acf:                                           ; preds = %bb.ace, %bb.acd
  %i.bud = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet17set_replica_state0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ace, %bb.acd, %bb.acc
  %.not.i159.i = icmp eq i64 %i.btx, -1
  br i1 %.not.i159.i, label %bb.acg, label %bb.ach

bb.acg:                                           ; preds = %bb.aco, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet17set_replica_state0ECsl8OoimOLbh_6qdrant.exit.i
  %i.bue = phi ptr [ %i.bui, %bb.aco ], [ %i.btt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet17set_replica_state0ECsl8OoimOLbh_6qdrant.exit.i ]
  %i.buf = phi ptr [ %i.buj, %bb.aco ], [ %i.btu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet17set_replica_state0ECsl8OoimOLbh_6qdrant.exit.i ]
  %i.bug = getelementptr inbounds nuw i8, ptr %1, i64 1371
  %.val126.i = load i8, ptr %i.bug, align 1, !range !112, !noalias !52068, !noundef !38
  %i.buh = icmp eq i8 %.val126.i, 0
  br label %bb.aav

bb.ach:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet17set_replica_state0ECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.14.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3248.sroa.2.i, i64 39, i1 false), !noalias !52068
  br label %bb.ada

bb.aci:                                           ; preds = %bb.aba, %bb.yr
  %i.bui = phi ptr [ %i.blc, %bb.yr ], [ %i.bri, %bb.aba ] ; 5 uses
  %i.buj = phi ptr [ %i.blb, %bb.yr ], [ %i.brj, %bb.aba ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !52068
  %i.buk = getelementptr inbounds nuw i8, ptr %1, i64 1376 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4_15ShardReplicaSet10add_remote0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.o, ptr noundef nonnull align 8 %i.buk, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ack unwind label %bb.acj, !noalias !52069

bb.acj:                                           ; preds = %bb.aci
  %i.bul = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !52068
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet10add_remote0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.buk) #26
          to label %.body145.i unwind label %bb.zj, !noalias !52069

bb.ack:                                           ; preds = %bb.aci
  %i.bum = load i64, ptr %i.o, align 8, !range !50, !noalias !52068, !noundef !38 ; 3 uses
  %i.bun = icmp eq i64 %i.bum, -2
  br i1 %i.bun, label %bb.acl, label %bb.acm

bb.acl:                                           ; preds = %bb.ack
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !52068
  br label %bb.afh

bb.acm:                                           ; preds = %bb.ack
  %.sroa.3270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.3270.sroa.0.0.copyload.i = load i8, ptr %.sroa.3270.0..sroa_idx.i, align 8, !noalias !52068
  %.sroa.3270.sroa.2.0..sroa.3270.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3270.sroa.2.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3270.sroa.2.0..sroa.3270.0..sroa_idx.sroa_idx.i, i64 39, i1 false), !noalias !52068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !52068
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet10add_remote0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.buk)
          to label %bb.aco unwind label %bb.acn, !noalias !52069

bb.acn:                                           ; preds = %bb.acm
  %i.buo = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i

bb.aco:                                           ; preds = %bb.acm
  %.not.i160.i = icmp eq i64 %i.bum, -1
  br i1 %.not.i160.i, label %bb.acg, label %bb.acz

bb.acp:                                           ; preds = %bb.aav
  %i.bup = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i

bb.acq:                                           ; preds = %bb.aav
  %.not63.i = icmp eq ptr %i.bqz, null
  br i1 %.not63.i, label %bb.aeq, label %bb.acr

bb.acr:                                           ; preds = %bb.acq
  %i.buq = getelementptr inbounds nuw i8, ptr %1, i64 1360
  store ptr %i.bqz, ptr %i.buq, align 8, !noalias !52068, !captures !47
  %i.bur = getelementptr inbounds nuw i8, ptr %1, i64 1308
  %i.bus = load i8, ptr %i.bur, align 4, !range !40, !noalias !52068, !noundef !38
  %i.but = trunc nuw i8 %i.bus to i1
  br i1 %i.but, label %bb.act, label %bb.acs

bb.acs:                                           ; preds = %bb.acr
  %i.buu = getelementptr inbounds nuw i8, ptr %1, i64 1370
  %i.buv = load i8, ptr %i.buu, align 2, !range !40, !noalias !52068, !noundef !38
  %i.buw = trunc nuw i8 %i.buv to i1
  br i1 %i.buw, label %bb.act, label %bb.acu

bb.act:                                           ; preds = %bb.acs, %bb.acr
  %i.bux = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.buy = load i64, ptr %i.bux, align 8, !noalias !52068, !noundef !38
  %i.buz = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.bva = load ptr, ptr %i.buz, align 8, !noalias !52068, !nonnull !38, !align !42, !noundef !38
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 504
  %i.bvc = load i64, ptr %i.bvb, align 8, !noalias !52069, !noundef !38
  %i.bvd = icmp eq i64 %i.buy, %i.bvc
  br i1 %i.bvd, label %bb.acy, label %bb.aeq

bb.acu:                                           ; preds = %bb.acs
  br i1 %.sroa.011.0.i, label %bb.acv, label %bb.aeq

bb.acv:                                           ; preds = %bb.acu
  %i.bve = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.bvf = load i64, ptr %i.bve, align 8, !noalias !52068, !noundef !38 ; 2 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.bvh = load ptr, ptr %i.bvg, align 8, !noalias !52068, !nonnull !38, !align !42, !noundef !38 ; 2 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvh, i64 504
  %i.bvj = load i64, ptr %i.bvi, align 8, !noalias !52069, !noundef !38
  %i.bvk = icmp eq i64 %i.bvf, %i.bvj
  br i1 %i.bvk, label %bb.acx, label %bb.acw

bb.acw:                                           ; preds = %bb.acv
  %.val109.i = load ptr, ptr %i.bqz, align 8, !noalias !52069, !nonnull !38, !noundef !38
  %i.bvl = getelementptr inbounds nuw i8, ptr %.val109.i, i64 16
  %i.bvm = getelementptr inbounds nuw i8, ptr %1, i64 1376
  store ptr %i.bvl, ptr %i.bvm, align 8, !noalias !52068
  %.sroa.8325.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1384
  store i64 %i.bvf, ptr %.sroa.8325.0..sroa_idx.i, align 8, !noalias !52068
  %.sroa.10327.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i8 0, ptr %.sroa.10327.0..sroa_idx.i, align 8, !noalias !52068
  br label %bb.aec

bb.acx:                                           ; preds = %bb.acv
  %i.bvn = load i32, ptr %i.bqx, align 8, !noalias !52068, !noundef !38
  %i.bvo = getelementptr inbounds nuw i8, ptr %1, i64 1376
  store ptr %i.bvh, ptr %i.bvo, align 8, !noalias !52068
  %.sroa.8296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1440
  store i32 %i.bvn, ptr %.sroa.8296.0..sroa_idx.i, align 8, !noalias !52068
  %.sroa.9297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1444
end_hunk_1
