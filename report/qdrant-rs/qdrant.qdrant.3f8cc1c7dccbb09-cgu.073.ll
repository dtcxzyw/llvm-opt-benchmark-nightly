Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.073?download=true
inline.NumInlined: 1228
inline.NumDeleted: 485
begin_hunk_0_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsRTNtNtNtB6_10operations5types23DiscoverRequestInternalNtNtB17_23shard_selector_internal21ShardSelectorInternalEINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB4_13fetch_vectors16ReferencedPointsINtNtCsexYYUdYSQU6_5alloc3vec3VecNCINvMs_B4l_B4j_13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB68_14TableOfContent14discover_batch00NCNvMB68_B73_18get_collection_opt0E0ERSB12_NCNCINvB4l_32resolve_referenced_vectors_batchB5Z_B7H_B13_E00NCB8q_s_0NCB8q_s0_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  %i.bf = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1304, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.bf, -1
  br i1 %.not.i, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1305
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.bg = add nsw i64 %i.bf, -2
  %.inv.i.i = icmp samesign ult i64 %i.bf, 2
  %i.bh = select i1 %.inv.i.i, i64 2, i64 %i.bg
  switch i64 %i.bh, label %bb.p [
    i64 0, label %bb.q
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.bj = load i64, ptr %i.bi, align 8, !range !11, !alias.scope !1310, !noundef !10
  %i.bk = trunc nuw i64 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !1310, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !1310, !noundef !10
  %.not.i.i.i = icmp sgt i8 %i.bo, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !1310 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !1310 ; 2 uses
  br i1 %.not.i.i.i, label %bb.t, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !noalias !1311
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !30

.invoke:                                          ; preds = %bb.ak, %bb.af, %bb.u
  %i.bt = phi ptr [ %.val.i.i.i46, %bb.af ], [ %.val.i.i.i, %bb.u ], [ %.val.i.i, %bb.ak ]
  %i.bu = phi i64 [ %.val21.i.i.i47, %bb.af ], [ %.val21.i.i.i, %bb.u ], [ %.val21.i.i, %bb.ak ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.bt, i64 noundef %i.bu) #19
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.s, %bb.u, %bb.t
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.u ], [ inttoptr (i64 16 to ptr), %bb.t ], [ %.val.i.i.i, %bb.s ]
  %i.bv = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  store i64 %i.bv, ptr %.sroa.4.i.i, align 8, !alias.scope !1308, !noalias !1312
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.r
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sroa.6.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.sroa.4.i.i, %bb.r ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.bm, %bb.r ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 1, %bb.r ]
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i.sroa.phi.i.i, align 8, !alias.scope !1308, !noalias !1312
  store i64 %storemerge.i.i.i, ptr %i.ah, align 8, !alias.scope !1306, !noalias !1305
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !1312
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1306, !noalias !1305
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.i.i, align 8, !noalias !1312
  store i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1306, !noalias !1305
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.v:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %bb.o
  invoke fastcc void @_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %..i.i) #18
          to label %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge unwind label %.loopexit

._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge: ; preds = %bb.w
  %.sroa.0105.0.copyload106.pre = load i64, ptr %i.h, align 8, !noalias !1304
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.v, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.0105.0.copyload106 = phi i64 [ %.sroa.0105.0.copyload106.pre, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 3, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5107, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !1304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1305
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.x:                                             ; preds = %bb.m
  br i1 %i.be, label %bb.y, label %bb.bi

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.bx = load i64, ptr %i.n, align 8, !range !18, !alias.scope !1313, !noundef !10 ; 4 uses
  %.not.i29 = icmp eq i64 %i.bx, -1
  br i1 %.not.i29, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1314
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  %i.by = add nsw i64 %i.bx, -2
  %.inv.i.i30 = icmp samesign ult i64 %i.bx, 2
  %i.bz = select i1 %.inv.i.i30, i64 2, i64 %i.by
  switch i64 %i.bz, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i28)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.ca = load i64, ptr %i.u, align 8, !range !11, !alias.scope !1319, !noundef !10
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i64, ptr %i.w, align 8, !alias.scope !1319, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

bb.ad:                                            ; preds = %bb.ab
  %i.cd = load i8, ptr %i.ad, align 1, !alias.scope !1319, !noundef !10
  %.not.i.i.i32 = icmp sgt i8 %i.cd, -1
  %.val.i.i.i46 = load ptr, ptr %i.w, align 8, !alias.scope !1319 ; 5 uses
  %.val21.i.i.i47 = load i64, ptr %i.x, align 8, !alias.scope !1319 ; 2 uses
  br i1 %.not.i.i.i32, label %bb.ae, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i48 = icmp eq ptr %.val.i.i.i46, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i48, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds i8, ptr %.val.i.i.i46, i64 -16
  %i.cf = atomicrmw add ptr %i.ce, i64 1 monotonic, align 8, !noalias !1320
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35: ; preds = %bb.ad, %bb.af, %bb.ae
  %.sroa.06.0.i.i.i37 = phi ptr [ %.val.i.i.i46, %bb.af ], [ inttoptr (i64 16 to ptr), %bb.ae ], [ %.val.i.i.i46, %bb.ad ]
  %i.ch = ptrtoint ptr %.sroa.06.0.i.i.i37 to i64
  store i64 %i.ch, ptr %.sroa.4.i.i27, align 8, !alias.scope !1317, !noalias !1321
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, %bb.ac
  %.sink.i.sroa.phi.i.i39 = phi ptr [ %.sroa.6.i.i28, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %.sroa.4.i.i27, %bb.ac ]
  %.sroa.58.0.sink.i.i.i40 = phi i64 [ %.val21.i.i.i47, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %i.cc, %bb.ac ]
  %storemerge.i.i.i41 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ 1, %bb.ac ]
  store i64 %.sroa.58.0.sink.i.i.i40, ptr %.sink.i.sroa.phi.i.i39, align 8, !alias.scope !1317, !noalias !1321
  store i64 %storemerge.i.i.i41, ptr %i.ac, align 8, !alias.scope !1315, !noalias !1314
  %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i27, align 8, !noalias !1321
  store i64 %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.4.0..sroa_idx.i.i42, align 8, !alias.scope !1315, !noalias !1314
  %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45 = load i64, ptr %.sroa.6.i.i28, align 8, !noalias !1321
  store i64 %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45, ptr %i.ab, align 8, !alias.scope !1315, !noalias !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i28)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

bb.ag:                                            ; preds = %bb.z
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 unwind label %.loopexit

bb.ah:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1324
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  %i.ci = trunc nuw i64 %i.bx to i1               ; 2 uses
  br i1 %i.ci, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i64, ptr %i.u, align 8, !alias.scope !1327, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.ck = load i8, ptr %i.v, align 1, !alias.scope !1327, !noundef !10
  %.not.i.i87 = icmp sgt i8 %i.ck, -1
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1327 ; 5 uses
  %.val21.i.i = load i64, ptr %i.w, align 8, !alias.scope !1327 ; 2 uses
  br i1 %.not.i.i87, label %4, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

4:                                                ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %4
  %i.cl = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8, !noalias !1328
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.aj, %bb.ak, %4
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i, %bb.aj ]
  store ptr %.sroa.06.0.i.i, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !1325, !noalias !1324
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.ai
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sink.i.sroa.gep16.i, %bb.ai ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.cj, %bb.ai ]
  %i.co = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.ai ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !1325, !noalias !1324
  store i64 %i.co, ptr %i.a, align 8, !alias.scope !1325, !noalias !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  %i.cp = load i64, ptr %i.x, align 8, !range !11, !alias.scope !1331, !noundef !10
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cr = load i64, ptr %i.y, align 8, !alias.scope !1331, !noundef !10
  br label %.noexc51

bb.am:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cs = load i8, ptr %i.z, align 1, !alias.scope !1331, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cs, -1
  %.val.i11.i = load ptr, ptr %i.y, align 8, !alias.scope !1331 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.aa, align 8, !alias.scope !1331 ; 2 uses
  br i1 %.not.i1.i, label %bb.an, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ct = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cu = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !1332
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ap, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.aq, !noalias !1324

.noexc.i:                                         ; preds = %bb.ap
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.am, %bb.ao, %bb.an
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ao ], [ inttoptr (i64 16 to ptr), %bb.an ], [ %.val.i11.i, %bb.am ]
  %i.cw = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.cw, ptr %.sroa.4.i, align 8, !alias.scope !1329, !noalias !1324
  br label %.noexc51

bb.aq:                                            ; preds = %bb.ap
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !1333, !noalias !1324
  %.not.i.i.i.i.i88 = icmp slt i8 %i.cz, 0
  %or.cond.i.not.i = select i1 %i.ci, i1 true, i1 %.not.i.i.i.i.i88
  br i1 %or.cond.i.not.i, label %.body83thread-pre-split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.body83thread-pre-split unwind label %bb.as, !noalias !1324

bb.as:                                            ; preds = %bb.ar
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !1324
  unreachable

.noexc51:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.al
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i, %bb.al ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cr, %bb.al ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.al ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !1329, !noalias !1324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1323
  store i64 %storemerge.i9.i, ptr %i.ab, align 8, !alias.scope !1322
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !1324
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1322
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !1324
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1324
  %.sroa.094.0.copyload95.pre = load i64, ptr %i.g, align 8, !noalias !1313
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31: ; preds = %bb.ag, %.noexc51, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38
  %.sroa.094.0.copyload95 = phi i64 [ %.sroa.094.0.copyload95.pre, %.noexc51 ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38 ], [ 3, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !1313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1314
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31, %bb.y
  %.sroa.094.0 = phi i64 [ %.sroa.094.0.copyload95, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 ], [ -1, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %i.p, i64 128, i1 false)
  store i64 %.sroa.094.0, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  store ptr %i.o, ptr %i.af, align 8
  invoke fastcc void @_RNCNCINvNtNtCsPYQCUnoTxQ_10collection6common13fetch_vectors32resolve_referenced_vectors_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1C_14TableOfContent14discover_batch00NCNvMB1C_B2x_18get_collection_opt0NtNtNtBa_10operations5types23DiscoverRequestInternalE0s0_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef align 8 dereferenceable(48) %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ae, ptr noundef nonnull align 8 %i.o)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.db = load i64, ptr %i.m, align 8, !range !29, !noundef !10
  %.not17 = icmp eq i64 %i.db, -1
  br i1 %.not17, label %bb.au, label %bb.bm

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5103)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.dc = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1334, !noundef !10 ; 3 uses
  %.not.i55 = icmp eq i64 %i.dc, -1
  br i1 %.not.i55, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit78, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1335
  call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %i.dd = add nsw i64 %i.dc, -2
  %.inv.i.i56 = icmp samesign ult i64 %i.dc, 2
  %i.de = select i1 %.inv.i.i56, i64 2, i64 %i.dd
  switch i64 %i.de, label %bb.aw [
    i64 0, label %bb.ax
    i64 1, label %bb.bd
    i64 2, label %bb.be
  ]

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.df = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i54)
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.dg = load i64, ptr %i.df, align 8, !range !11, !alias.scope !1340, !noundef !10
  %i.dh = trunc nuw i64 %i.dg to i1
  %i.di = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.dh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !1340, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

bb.az:                                            ; preds = %bb.ax
  %i.dk = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !1340, !noundef !10
  %.not.i.i.i58 = icmp sgt i8 %i.dl, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i72 = load ptr, ptr %i.di, align 8, !alias.scope !1340 ; 5 uses
  %.val21.i.i.i73 = load i64, ptr %i.dm, align 8, !alias.scope !1340 ; 2 uses
  br i1 %.not.i.i.i58, label %bb.ba, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i.i74 = icmp eq ptr %.val.i.i.i72, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i74, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dn = getelementptr inbounds i8, ptr %.val.i.i.i72, i64 -16
  %i.do = atomicrmw add ptr %i.dn, i64 1 monotonic, align 8, !noalias !1341
  %i.dp = icmp slt i64 %i.do, 0
  br i1 %i.dp, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, !prof !30

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i72, i64 noundef %.val21.i.i.i73) #19
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.bc
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61: ; preds = %bb.az, %bb.bb, %bb.ba
  %.sroa.06.0.i.i.i63 = phi ptr [ %.val.i.i.i72, %bb.bb ], [ inttoptr (i64 16 to ptr), %bb.ba ], [ %.val.i.i.i72, %bb.az ]
  %i.dq = ptrtoint ptr %.sroa.06.0.i.i.i63 to i64
  store i64 %i.dq, ptr %.sroa.4.i.i53, align 8, !alias.scope !1338, !noalias !1342
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, %bb.ay
  %.sink.i.sroa.phi.i.i65 = phi ptr [ %.sroa.6.i.i54, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %.sroa.4.i.i53, %bb.ay ]
  %.sroa.58.0.sink.i.i.i66 = phi i64 [ %.val21.i.i.i73, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %i.dj, %bb.ay ]
  %storemerge.i.i.i67 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ 1, %bb.ay ]
  store i64 %.sroa.58.0.sink.i.i.i66, ptr %.sink.i.sroa.phi.i.i65, align 8, !alias.scope !1338, !noalias !1342
  store i64 %storemerge.i.i.i67, ptr %i.ag, align 8, !alias.scope !1336, !noalias !1335
  %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69 = load i64, ptr %.sroa.4.i.i53, align 8, !noalias !1342
  store i64 %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69, ptr %.sroa.4.0..sroa_idx.i.i68, align 8, !alias.scope !1336, !noalias !1335
  %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71 = load i64, ptr %.sroa.6.i.i54, align 8, !noalias !1342
  store i64 %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71, ptr %.sroa.6.0..sroa_idx.i.i70, align 8, !alias.scope !1336, !noalias !1335
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i54)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57

bb.bd:                                            ; preds = %bb.av
  %i.dr = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57 unwind label %.loopexit

bb.be:                                            ; preds = %bb.av
end_hunk_0
begin_hunk_1_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsRTNtNtNtB6_10operations5types23DiscoverRequestInternalNtNtB17_23shard_selector_internal21ShardSelectorInternalEINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB4_13fetch_vectors16ReferencedPointsINtNtCsexYYUdYSQU6_5alloc3vec3VecNCINvMs_B4l_B4j_13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB68_14TableOfContent8discover00NCNvMB68_B73_18get_collection_opt0E0ERSB12_NCNCINvB4l_32resolve_referenced_vectors_batchB5Z_B7A_B13_E00NCB8j_s_0NCB8j_s0_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.bf = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1400, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.bf, -1
  br i1 %.not.i, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1401
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  %i.bg = add nsw i64 %i.bf, -2
  %.inv.i.i = icmp samesign ult i64 %i.bf, 2
  %i.bh = select i1 %.inv.i.i, i64 2, i64 %i.bg
  switch i64 %i.bh, label %bb.p [
    i64 0, label %bb.q
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  %i.bj = load i64, ptr %i.bi, align 8, !range !11, !alias.scope !1406, !noundef !10
  %i.bk = trunc nuw i64 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !1406, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !1406, !noundef !10
  %.not.i.i.i = icmp sgt i8 %i.bo, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !1406 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !1406 ; 2 uses
  br i1 %.not.i.i.i, label %bb.t, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !noalias !1407
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !30

.invoke:                                          ; preds = %bb.ak, %bb.af, %bb.u
  %i.bt = phi ptr [ %.val.i.i.i46, %bb.af ], [ %.val.i.i.i, %bb.u ], [ %.val.i.i, %bb.ak ]
  %i.bu = phi i64 [ %.val21.i.i.i47, %bb.af ], [ %.val21.i.i.i, %bb.u ], [ %.val21.i.i, %bb.ak ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.bt, i64 noundef %i.bu) #19
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.s, %bb.u, %bb.t
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.u ], [ inttoptr (i64 16 to ptr), %bb.t ], [ %.val.i.i.i, %bb.s ]
  %i.bv = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  store i64 %i.bv, ptr %.sroa.4.i.i, align 8, !alias.scope !1404, !noalias !1408
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.r
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sroa.6.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.sroa.4.i.i, %bb.r ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.bm, %bb.r ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 1, %bb.r ]
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i.sroa.phi.i.i, align 8, !alias.scope !1404, !noalias !1408
  store i64 %storemerge.i.i.i, ptr %i.ah, align 8, !alias.scope !1402, !noalias !1401
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !1408
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1402, !noalias !1401
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.i.i, align 8, !noalias !1408
  store i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1402, !noalias !1401
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.v:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %bb.o
  invoke fastcc void @_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %..i.i) #18
          to label %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge unwind label %.loopexit

._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge: ; preds = %bb.w
  %.sroa.0105.0.copyload106.pre = load i64, ptr %i.h, align 8, !noalias !1400
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.v, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.0105.0.copyload106 = phi i64 [ %.sroa.0105.0.copyload106.pre, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 3, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5107, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1401
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.x:                                             ; preds = %bb.m
  br i1 %i.be, label %bb.y, label %bb.bi

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  %i.bx = load i64, ptr %i.n, align 8, !range !18, !alias.scope !1409, !noundef !10 ; 4 uses
  %.not.i29 = icmp eq i64 %i.bx, -1
  br i1 %.not.i29, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1410
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.by = add nsw i64 %i.bx, -2
  %.inv.i.i30 = icmp samesign ult i64 %i.bx, 2
  %i.bz = select i1 %.inv.i.i30, i64 2, i64 %i.by
  switch i64 %i.bz, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i28)
  call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  %i.ca = load i64, ptr %i.u, align 8, !range !11, !alias.scope !1415, !noundef !10
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i64, ptr %i.w, align 8, !alias.scope !1415, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

bb.ad:                                            ; preds = %bb.ab
  %i.cd = load i8, ptr %i.ad, align 1, !alias.scope !1415, !noundef !10
  %.not.i.i.i32 = icmp sgt i8 %i.cd, -1
  %.val.i.i.i46 = load ptr, ptr %i.w, align 8, !alias.scope !1415 ; 5 uses
  %.val21.i.i.i47 = load i64, ptr %i.x, align 8, !alias.scope !1415 ; 2 uses
  br i1 %.not.i.i.i32, label %bb.ae, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i48 = icmp eq ptr %.val.i.i.i46, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i48, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds i8, ptr %.val.i.i.i46, i64 -16
  %i.cf = atomicrmw add ptr %i.ce, i64 1 monotonic, align 8, !noalias !1416
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35: ; preds = %bb.ad, %bb.af, %bb.ae
  %.sroa.06.0.i.i.i37 = phi ptr [ %.val.i.i.i46, %bb.af ], [ inttoptr (i64 16 to ptr), %bb.ae ], [ %.val.i.i.i46, %bb.ad ]
  %i.ch = ptrtoint ptr %.sroa.06.0.i.i.i37 to i64
  store i64 %i.ch, ptr %.sroa.4.i.i27, align 8, !alias.scope !1413, !noalias !1417
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, %bb.ac
  %.sink.i.sroa.phi.i.i39 = phi ptr [ %.sroa.6.i.i28, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %.sroa.4.i.i27, %bb.ac ]
  %.sroa.58.0.sink.i.i.i40 = phi i64 [ %.val21.i.i.i47, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %i.cc, %bb.ac ]
  %storemerge.i.i.i41 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ 1, %bb.ac ]
  store i64 %.sroa.58.0.sink.i.i.i40, ptr %.sink.i.sroa.phi.i.i39, align 8, !alias.scope !1413, !noalias !1417
  store i64 %storemerge.i.i.i41, ptr %i.ac, align 8, !alias.scope !1411, !noalias !1410
  %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i27, align 8, !noalias !1417
  store i64 %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.4.0..sroa_idx.i.i42, align 8, !alias.scope !1411, !noalias !1410
  %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45 = load i64, ptr %.sroa.6.i.i28, align 8, !noalias !1417
  store i64 %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45, ptr %i.ab, align 8, !alias.scope !1411, !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i28)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

bb.ag:                                            ; preds = %bb.z
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 unwind label %.loopexit

bb.ah:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1420
  call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.ci = trunc nuw i64 %i.bx to i1               ; 2 uses
  br i1 %i.ci, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i64, ptr %i.u, align 8, !alias.scope !1423, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.ck = load i8, ptr %i.v, align 1, !alias.scope !1423, !noundef !10
  %.not.i.i87 = icmp sgt i8 %i.ck, -1
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1423 ; 5 uses
  %.val21.i.i = load i64, ptr %i.w, align 8, !alias.scope !1423 ; 2 uses
  br i1 %.not.i.i87, label %4, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

4:                                                ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %4
  %i.cl = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8, !noalias !1424
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.aj, %bb.ak, %4
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i, %bb.aj ]
  store ptr %.sroa.06.0.i.i, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !1421, !noalias !1420
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.ai
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sink.i.sroa.gep16.i, %bb.ai ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.cj, %bb.ai ]
  %i.co = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.ai ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !1421, !noalias !1420
  store i64 %i.co, ptr %i.a, align 8, !alias.scope !1421, !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  %i.cp = load i64, ptr %i.x, align 8, !range !11, !alias.scope !1427, !noundef !10
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cr = load i64, ptr %i.y, align 8, !alias.scope !1427, !noundef !10
  br label %.noexc51

bb.am:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cs = load i8, ptr %i.z, align 1, !alias.scope !1427, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cs, -1
  %.val.i11.i = load ptr, ptr %i.y, align 8, !alias.scope !1427 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.aa, align 8, !alias.scope !1427 ; 2 uses
  br i1 %.not.i1.i, label %bb.an, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ct = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cu = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !1428
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ap, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.aq, !noalias !1420

.noexc.i:                                         ; preds = %bb.ap
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.am, %bb.ao, %bb.an
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ao ], [ inttoptr (i64 16 to ptr), %bb.an ], [ %.val.i11.i, %bb.am ]
  %i.cw = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.cw, ptr %.sroa.4.i, align 8, !alias.scope !1425, !noalias !1420
  br label %.noexc51

bb.aq:                                            ; preds = %bb.ap
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !1429, !noalias !1420
  %.not.i.i.i.i.i88 = icmp slt i8 %i.cz, 0
  %or.cond.i.not.i = select i1 %i.ci, i1 true, i1 %.not.i.i.i.i.i88
  br i1 %or.cond.i.not.i, label %.body83thread-pre-split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.body83thread-pre-split unwind label %bb.as, !noalias !1420

bb.as:                                            ; preds = %bb.ar
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !1420
  unreachable

.noexc51:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.al
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i, %bb.al ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cr, %bb.al ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.al ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !1425, !noalias !1420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1419
  store i64 %storemerge.i9.i, ptr %i.ab, align 8, !alias.scope !1418
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !1420
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1418
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !1420
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1420
  %.sroa.094.0.copyload95.pre = load i64, ptr %i.g, align 8, !noalias !1409
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31: ; preds = %bb.ag, %.noexc51, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38
  %.sroa.094.0.copyload95 = phi i64 [ %.sroa.094.0.copyload95.pre, %.noexc51 ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38 ], [ 3, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !1409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1410
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31, %bb.y
  %.sroa.094.0 = phi i64 [ %.sroa.094.0.copyload95, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 ], [ -1, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %i.p, i64 128, i1 false)
  store i64 %.sroa.094.0, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  store ptr %i.o, ptr %i.af, align 8
  invoke fastcc void @_RNCNCINvNtNtCsPYQCUnoTxQ_10collection6common13fetch_vectors32resolve_referenced_vectors_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1C_14TableOfContent8discover00NCNvMB1C_B2x_18get_collection_opt0NtNtNtBa_10operations5types23DiscoverRequestInternalE0s0_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef align 8 dereferenceable(48) %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ae, ptr noundef nonnull align 8 %i.o)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.db = load i64, ptr %i.m, align 8, !range !29, !noundef !10
  %.not17 = icmp eq i64 %i.db, -1
  br i1 %.not17, label %bb.au, label %bb.bm

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5103)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.dc = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1430, !noundef !10 ; 3 uses
  %.not.i55 = icmp eq i64 %i.dc, -1
  br i1 %.not.i55, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit78, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1431
  call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.dd = add nsw i64 %i.dc, -2
  %.inv.i.i56 = icmp samesign ult i64 %i.dc, 2
  %i.de = select i1 %.inv.i.i56, i64 2, i64 %i.dd
  switch i64 %i.de, label %bb.aw [
    i64 0, label %bb.ax
    i64 1, label %bb.bd
    i64 2, label %bb.be
  ]

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.df = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i54)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %i.dg = load i64, ptr %i.df, align 8, !range !11, !alias.scope !1436, !noundef !10
  %i.dh = trunc nuw i64 %i.dg to i1
  %i.di = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.dh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !1436, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

bb.az:                                            ; preds = %bb.ax
  %i.dk = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !1436, !noundef !10
  %.not.i.i.i58 = icmp sgt i8 %i.dl, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i72 = load ptr, ptr %i.di, align 8, !alias.scope !1436 ; 5 uses
  %.val21.i.i.i73 = load i64, ptr %i.dm, align 8, !alias.scope !1436 ; 2 uses
  br i1 %.not.i.i.i58, label %bb.ba, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i.i74 = icmp eq ptr %.val.i.i.i72, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i74, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dn = getelementptr inbounds i8, ptr %.val.i.i.i72, i64 -16
  %i.do = atomicrmw add ptr %i.dn, i64 1 monotonic, align 8, !noalias !1437
  %i.dp = icmp slt i64 %i.do, 0
  br i1 %i.dp, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, !prof !30

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i72, i64 noundef %.val21.i.i.i73) #19
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.bc
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61: ; preds = %bb.az, %bb.bb, %bb.ba
  %.sroa.06.0.i.i.i63 = phi ptr [ %.val.i.i.i72, %bb.bb ], [ inttoptr (i64 16 to ptr), %bb.ba ], [ %.val.i.i.i72, %bb.az ]
  %i.dq = ptrtoint ptr %.sroa.06.0.i.i.i63 to i64
  store i64 %i.dq, ptr %.sroa.4.i.i53, align 8, !alias.scope !1434, !noalias !1438
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, %bb.ay
  %.sink.i.sroa.phi.i.i65 = phi ptr [ %.sroa.6.i.i54, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %.sroa.4.i.i53, %bb.ay ]
  %.sroa.58.0.sink.i.i.i66 = phi i64 [ %.val21.i.i.i73, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %i.dj, %bb.ay ]
  %storemerge.i.i.i67 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ 1, %bb.ay ]
  store i64 %.sroa.58.0.sink.i.i.i66, ptr %.sink.i.sroa.phi.i.i65, align 8, !alias.scope !1434, !noalias !1438
  store i64 %storemerge.i.i.i67, ptr %i.ag, align 8, !alias.scope !1432, !noalias !1431
  %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69 = load i64, ptr %.sroa.4.i.i53, align 8, !noalias !1438
  store i64 %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69, ptr %.sroa.4.0..sroa_idx.i.i68, align 8, !alias.scope !1432, !noalias !1431
  %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71 = load i64, ptr %.sroa.6.i.i54, align 8, !noalias !1438
  store i64 %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71, ptr %.sroa.6.0..sroa_idx.i.i70, align 8, !alias.scope !1432, !noalias !1431
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i54)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57

bb.bd:                                            ; preds = %bb.av
  %i.dr = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57 unwind label %.loopexit

bb.be:                                            ; preds = %bb.av
end_hunk_1
begin_hunk_2_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsRTNtNtNtB6_10operations5types24RecommendRequestInternalNtNtB17_23shard_selector_internal21ShardSelectorInternalEINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB4_13fetch_vectors16ReferencedPointsINtNtCsexYYUdYSQU6_5alloc3vec3VecNCINvMs_B4m_B4k_13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB69_14TableOfContent15recommend_batch00NCNvMB69_B74_18get_collection_opt0E0ERSB12_NCNCINvB4m_32resolve_referenced_vectors_batchB60_B7J_B13_E00NCB8s_s_0NCB8s_s0_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %i.bf = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1496, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.bf, -1
  br i1 %.not.i, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1497
  call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  %i.bg = add nsw i64 %i.bf, -2
  %.inv.i.i = icmp samesign ult i64 %i.bf, 2
  %i.bh = select i1 %.inv.i.i, i64 2, i64 %i.bg
  switch i64 %i.bh, label %bb.p [
    i64 0, label %bb.q
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.bj = load i64, ptr %i.bi, align 8, !range !11, !alias.scope !1502, !noundef !10
  %i.bk = trunc nuw i64 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !1502, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !1502, !noundef !10
  %.not.i.i.i = icmp sgt i8 %i.bo, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !1502 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !1502 ; 2 uses
  br i1 %.not.i.i.i, label %bb.t, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !noalias !1503
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !30

.invoke:                                          ; preds = %bb.ak, %bb.af, %bb.u
  %i.bt = phi ptr [ %.val.i.i.i46, %bb.af ], [ %.val.i.i.i, %bb.u ], [ %.val.i.i, %bb.ak ]
  %i.bu = phi i64 [ %.val21.i.i.i47, %bb.af ], [ %.val21.i.i.i, %bb.u ], [ %.val21.i.i, %bb.ak ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.bt, i64 noundef %i.bu) #19
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.s, %bb.u, %bb.t
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.u ], [ inttoptr (i64 16 to ptr), %bb.t ], [ %.val.i.i.i, %bb.s ]
  %i.bv = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  store i64 %i.bv, ptr %.sroa.4.i.i, align 8, !alias.scope !1500, !noalias !1504
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.r
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sroa.6.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.sroa.4.i.i, %bb.r ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.bm, %bb.r ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 1, %bb.r ]
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i.sroa.phi.i.i, align 8, !alias.scope !1500, !noalias !1504
  store i64 %storemerge.i.i.i, ptr %i.ah, align 8, !alias.scope !1498, !noalias !1497
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !1504
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1498, !noalias !1497
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.i.i, align 8, !noalias !1504
  store i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1498, !noalias !1497
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.v:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %bb.o
  invoke fastcc void @_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %..i.i) #18
          to label %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge unwind label %.loopexit

._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge: ; preds = %bb.w
  %.sroa.0105.0.copyload106.pre = load i64, ptr %i.h, align 8, !noalias !1496
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.v, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.0105.0.copyload106 = phi i64 [ %.sroa.0105.0.copyload106.pre, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 3, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5107, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !1496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1497
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.x:                                             ; preds = %bb.m
  br i1 %i.be, label %bb.y, label %bb.bi

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  %i.bx = load i64, ptr %i.n, align 8, !range !18, !alias.scope !1505, !noundef !10 ; 4 uses
  %.not.i29 = icmp eq i64 %i.bx, -1
  br i1 %.not.i29, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1506
  call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.by = add nsw i64 %i.bx, -2
  %.inv.i.i30 = icmp samesign ult i64 %i.bx, 2
  %i.bz = select i1 %.inv.i.i30, i64 2, i64 %i.by
  switch i64 %i.bz, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i28)
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  %i.ca = load i64, ptr %i.u, align 8, !range !11, !alias.scope !1511, !noundef !10
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i64, ptr %i.w, align 8, !alias.scope !1511, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

bb.ad:                                            ; preds = %bb.ab
  %i.cd = load i8, ptr %i.ad, align 1, !alias.scope !1511, !noundef !10
  %.not.i.i.i32 = icmp sgt i8 %i.cd, -1
  %.val.i.i.i46 = load ptr, ptr %i.w, align 8, !alias.scope !1511 ; 5 uses
  %.val21.i.i.i47 = load i64, ptr %i.x, align 8, !alias.scope !1511 ; 2 uses
  br i1 %.not.i.i.i32, label %bb.ae, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i48 = icmp eq ptr %.val.i.i.i46, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i48, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds i8, ptr %.val.i.i.i46, i64 -16
  %i.cf = atomicrmw add ptr %i.ce, i64 1 monotonic, align 8, !noalias !1512
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35: ; preds = %bb.ad, %bb.af, %bb.ae
  %.sroa.06.0.i.i.i37 = phi ptr [ %.val.i.i.i46, %bb.af ], [ inttoptr (i64 16 to ptr), %bb.ae ], [ %.val.i.i.i46, %bb.ad ]
  %i.ch = ptrtoint ptr %.sroa.06.0.i.i.i37 to i64
  store i64 %i.ch, ptr %.sroa.4.i.i27, align 8, !alias.scope !1509, !noalias !1513
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, %bb.ac
  %.sink.i.sroa.phi.i.i39 = phi ptr [ %.sroa.6.i.i28, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %.sroa.4.i.i27, %bb.ac ]
  %.sroa.58.0.sink.i.i.i40 = phi i64 [ %.val21.i.i.i47, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %i.cc, %bb.ac ]
  %storemerge.i.i.i41 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ 1, %bb.ac ]
  store i64 %.sroa.58.0.sink.i.i.i40, ptr %.sink.i.sroa.phi.i.i39, align 8, !alias.scope !1509, !noalias !1513
  store i64 %storemerge.i.i.i41, ptr %i.ac, align 8, !alias.scope !1507, !noalias !1506
  %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i27, align 8, !noalias !1513
  store i64 %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.4.0..sroa_idx.i.i42, align 8, !alias.scope !1507, !noalias !1506
  %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45 = load i64, ptr %.sroa.6.i.i28, align 8, !noalias !1513
  store i64 %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45, ptr %i.ab, align 8, !alias.scope !1507, !noalias !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i28)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

bb.ag:                                            ; preds = %bb.z
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 unwind label %.loopexit

bb.ah:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1516
  call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.ci = trunc nuw i64 %i.bx to i1               ; 2 uses
  br i1 %i.ci, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i64, ptr %i.u, align 8, !alias.scope !1519, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.ck = load i8, ptr %i.v, align 1, !alias.scope !1519, !noundef !10
  %.not.i.i87 = icmp sgt i8 %i.ck, -1
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1519 ; 5 uses
  %.val21.i.i = load i64, ptr %i.w, align 8, !alias.scope !1519 ; 2 uses
  br i1 %.not.i.i87, label %4, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

4:                                                ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %4
  %i.cl = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8, !noalias !1520
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.aj, %bb.ak, %4
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i, %bb.aj ]
  store ptr %.sroa.06.0.i.i, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !1517, !noalias !1516
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.ai
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sink.i.sroa.gep16.i, %bb.ai ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.cj, %bb.ai ]
  %i.co = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.ai ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !1517, !noalias !1516
  store i64 %i.co, ptr %i.a, align 8, !alias.scope !1517, !noalias !1516
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  %i.cp = load i64, ptr %i.x, align 8, !range !11, !alias.scope !1523, !noundef !10
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cr = load i64, ptr %i.y, align 8, !alias.scope !1523, !noundef !10
  br label %.noexc51

bb.am:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cs = load i8, ptr %i.z, align 1, !alias.scope !1523, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cs, -1
  %.val.i11.i = load ptr, ptr %i.y, align 8, !alias.scope !1523 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.aa, align 8, !alias.scope !1523 ; 2 uses
  br i1 %.not.i1.i, label %bb.an, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ct = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cu = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !1524
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ap, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.aq, !noalias !1516

.noexc.i:                                         ; preds = %bb.ap
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.am, %bb.ao, %bb.an
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ao ], [ inttoptr (i64 16 to ptr), %bb.an ], [ %.val.i11.i, %bb.am ]
  %i.cw = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.cw, ptr %.sroa.4.i, align 8, !alias.scope !1521, !noalias !1516
  br label %.noexc51

bb.aq:                                            ; preds = %bb.ap
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !1525, !noalias !1516
  %.not.i.i.i.i.i88 = icmp slt i8 %i.cz, 0
  %or.cond.i.not.i = select i1 %i.ci, i1 true, i1 %.not.i.i.i.i.i88
  br i1 %or.cond.i.not.i, label %.body83thread-pre-split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.body83thread-pre-split unwind label %bb.as, !noalias !1516

bb.as:                                            ; preds = %bb.ar
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !1516
  unreachable

.noexc51:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.al
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i, %bb.al ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cr, %bb.al ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.al ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !1521, !noalias !1516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1515
  store i64 %storemerge.i9.i, ptr %i.ab, align 8, !alias.scope !1514
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !1516
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1514
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !1516
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1516
  %.sroa.094.0.copyload95.pre = load i64, ptr %i.g, align 8, !noalias !1505
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31: ; preds = %bb.ag, %.noexc51, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38
  %.sroa.094.0.copyload95 = phi i64 [ %.sroa.094.0.copyload95.pre, %.noexc51 ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38 ], [ 3, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !1505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1506
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31, %bb.y
  %.sroa.094.0 = phi i64 [ %.sroa.094.0.copyload95, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 ], [ -1, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %i.p, i64 128, i1 false)
  store i64 %.sroa.094.0, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  store ptr %i.o, ptr %i.af, align 8
  invoke fastcc void @_RNCNCINvNtNtCsPYQCUnoTxQ_10collection6common13fetch_vectors32resolve_referenced_vectors_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1C_14TableOfContent15recommend_batch00NCNvMB1C_B2x_18get_collection_opt0NtNtNtBa_10operations5types24RecommendRequestInternalE0s0_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef align 8 dereferenceable(48) %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ae, ptr noundef nonnull align 8 %i.o)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.db = load i64, ptr %i.m, align 8, !range !29, !noundef !10
  %.not17 = icmp eq i64 %i.db, -1
  br i1 %.not17, label %bb.au, label %bb.bm

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5103)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  %i.dc = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1526, !noundef !10 ; 3 uses
  %.not.i55 = icmp eq i64 %i.dc, -1
  br i1 %.not.i55, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit78, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1527
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  %i.dd = add nsw i64 %i.dc, -2
  %.inv.i.i56 = icmp samesign ult i64 %i.dc, 2
  %i.de = select i1 %.inv.i.i56, i64 2, i64 %i.dd
  switch i64 %i.de, label %bb.aw [
    i64 0, label %bb.ax
    i64 1, label %bb.bd
    i64 2, label %bb.be
  ]

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.df = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i54)
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.dg = load i64, ptr %i.df, align 8, !range !11, !alias.scope !1532, !noundef !10
  %i.dh = trunc nuw i64 %i.dg to i1
  %i.di = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.dh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !1532, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

bb.az:                                            ; preds = %bb.ax
  %i.dk = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !1532, !noundef !10
  %.not.i.i.i58 = icmp sgt i8 %i.dl, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i72 = load ptr, ptr %i.di, align 8, !alias.scope !1532 ; 5 uses
  %.val21.i.i.i73 = load i64, ptr %i.dm, align 8, !alias.scope !1532 ; 2 uses
  br i1 %.not.i.i.i58, label %bb.ba, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i.i74 = icmp eq ptr %.val.i.i.i72, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i74, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dn = getelementptr inbounds i8, ptr %.val.i.i.i72, i64 -16
  %i.do = atomicrmw add ptr %i.dn, i64 1 monotonic, align 8, !noalias !1533
  %i.dp = icmp slt i64 %i.do, 0
  br i1 %i.dp, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, !prof !30

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i72, i64 noundef %.val21.i.i.i73) #19
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.bc
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61: ; preds = %bb.az, %bb.bb, %bb.ba
  %.sroa.06.0.i.i.i63 = phi ptr [ %.val.i.i.i72, %bb.bb ], [ inttoptr (i64 16 to ptr), %bb.ba ], [ %.val.i.i.i72, %bb.az ]
  %i.dq = ptrtoint ptr %.sroa.06.0.i.i.i63 to i64
  store i64 %i.dq, ptr %.sroa.4.i.i53, align 8, !alias.scope !1530, !noalias !1534
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, %bb.ay
  %.sink.i.sroa.phi.i.i65 = phi ptr [ %.sroa.6.i.i54, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %.sroa.4.i.i53, %bb.ay ]
  %.sroa.58.0.sink.i.i.i66 = phi i64 [ %.val21.i.i.i73, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %i.dj, %bb.ay ]
  %storemerge.i.i.i67 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ 1, %bb.ay ]
  store i64 %.sroa.58.0.sink.i.i.i66, ptr %.sink.i.sroa.phi.i.i65, align 8, !alias.scope !1530, !noalias !1534
  store i64 %storemerge.i.i.i67, ptr %i.ag, align 8, !alias.scope !1528, !noalias !1527
  %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69 = load i64, ptr %.sroa.4.i.i53, align 8, !noalias !1534
  store i64 %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69, ptr %.sroa.4.0..sroa_idx.i.i68, align 8, !alias.scope !1528, !noalias !1527
  %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71 = load i64, ptr %.sroa.6.i.i54, align 8, !noalias !1534
  store i64 %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71, ptr %.sroa.6.0..sroa_idx.i.i70, align 8, !alias.scope !1528, !noalias !1527
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i54)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57

bb.bd:                                            ; preds = %bb.av
  %i.dr = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57 unwind label %.loopexit

bb.be:                                            ; preds = %bb.av
end_hunk_2
begin_hunk_3_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsRTNtNtNtB6_10operations5types24RecommendRequestInternalNtNtB17_23shard_selector_internal21ShardSelectorInternalEINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB4_13fetch_vectors16ReferencedPointsINtNtCsexYYUdYSQU6_5alloc3vec3VecNCINvMs_B4m_B4k_13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB69_14TableOfContent5group00NCNvMB69_B74_18get_collection_opt0E0ERSB12_NCNCINvB4m_32resolve_referenced_vectors_batchB60_B7y_B13_E00NCB8h_s_0NCB8h_s0_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  %i.bf = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1592, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.bf, -1
  br i1 %.not.i, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1593
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  %i.bg = add nsw i64 %i.bf, -2
  %.inv.i.i = icmp samesign ult i64 %i.bf, 2
  %i.bh = select i1 %.inv.i.i, i64 2, i64 %i.bg
  switch i64 %i.bh, label %bb.p [
    i64 0, label %bb.q
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1596)
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  %i.bj = load i64, ptr %i.bi, align 8, !range !11, !alias.scope !1598, !noundef !10
  %i.bk = trunc nuw i64 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !1598, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !1598, !noundef !10
  %.not.i.i.i = icmp sgt i8 %i.bo, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !1598 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !1598 ; 2 uses
  br i1 %.not.i.i.i, label %bb.t, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !noalias !1599
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !30

.invoke:                                          ; preds = %bb.ak, %bb.af, %bb.u
  %i.bt = phi ptr [ %.val.i.i.i46, %bb.af ], [ %.val.i.i.i, %bb.u ], [ %.val.i.i, %bb.ak ]
  %i.bu = phi i64 [ %.val21.i.i.i47, %bb.af ], [ %.val21.i.i.i, %bb.u ], [ %.val21.i.i, %bb.ak ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.bt, i64 noundef %i.bu) #19
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.s, %bb.u, %bb.t
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.u ], [ inttoptr (i64 16 to ptr), %bb.t ], [ %.val.i.i.i, %bb.s ]
  %i.bv = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  store i64 %i.bv, ptr %.sroa.4.i.i, align 8, !alias.scope !1596, !noalias !1600
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.r
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sroa.6.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.sroa.4.i.i, %bb.r ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.bm, %bb.r ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 1, %bb.r ]
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i.sroa.phi.i.i, align 8, !alias.scope !1596, !noalias !1600
  store i64 %storemerge.i.i.i, ptr %i.ah, align 8, !alias.scope !1594, !noalias !1593
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !1600
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1594, !noalias !1593
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.i.i, align 8, !noalias !1600
  store i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1594, !noalias !1593
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.v:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %bb.o
  invoke fastcc void @_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %..i.i) #18
          to label %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge unwind label %.loopexit

._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge: ; preds = %bb.w
  %.sroa.0105.0.copyload106.pre = load i64, ptr %i.h, align 8, !noalias !1592
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.v, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.0105.0.copyload106 = phi i64 [ %.sroa.0105.0.copyload106.pre, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 3, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5107, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !1592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1593
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.x:                                             ; preds = %bb.m
  br i1 %i.be, label %bb.y, label %bb.bi

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.bx = load i64, ptr %i.n, align 8, !range !18, !alias.scope !1601, !noundef !10 ; 4 uses
  %.not.i29 = icmp eq i64 %i.bx, -1
  br i1 %.not.i29, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1602
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  %i.by = add nsw i64 %i.bx, -2
  %.inv.i.i30 = icmp samesign ult i64 %i.bx, 2
  %i.bz = select i1 %.inv.i.i30, i64 2, i64 %i.by
  switch i64 %i.bz, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i28)
  call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  %i.ca = load i64, ptr %i.u, align 8, !range !11, !alias.scope !1607, !noundef !10
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i64, ptr %i.w, align 8, !alias.scope !1607, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

bb.ad:                                            ; preds = %bb.ab
  %i.cd = load i8, ptr %i.ad, align 1, !alias.scope !1607, !noundef !10
  %.not.i.i.i32 = icmp sgt i8 %i.cd, -1
  %.val.i.i.i46 = load ptr, ptr %i.w, align 8, !alias.scope !1607 ; 5 uses
  %.val21.i.i.i47 = load i64, ptr %i.x, align 8, !alias.scope !1607 ; 2 uses
  br i1 %.not.i.i.i32, label %bb.ae, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i48 = icmp eq ptr %.val.i.i.i46, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i48, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds i8, ptr %.val.i.i.i46, i64 -16
  %i.cf = atomicrmw add ptr %i.ce, i64 1 monotonic, align 8, !noalias !1608
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35: ; preds = %bb.ad, %bb.af, %bb.ae
  %.sroa.06.0.i.i.i37 = phi ptr [ %.val.i.i.i46, %bb.af ], [ inttoptr (i64 16 to ptr), %bb.ae ], [ %.val.i.i.i46, %bb.ad ]
  %i.ch = ptrtoint ptr %.sroa.06.0.i.i.i37 to i64
  store i64 %i.ch, ptr %.sroa.4.i.i27, align 8, !alias.scope !1605, !noalias !1609
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, %bb.ac
  %.sink.i.sroa.phi.i.i39 = phi ptr [ %.sroa.6.i.i28, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %.sroa.4.i.i27, %bb.ac ]
  %.sroa.58.0.sink.i.i.i40 = phi i64 [ %.val21.i.i.i47, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %i.cc, %bb.ac ]
  %storemerge.i.i.i41 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ 1, %bb.ac ]
  store i64 %.sroa.58.0.sink.i.i.i40, ptr %.sink.i.sroa.phi.i.i39, align 8, !alias.scope !1605, !noalias !1609
  store i64 %storemerge.i.i.i41, ptr %i.ac, align 8, !alias.scope !1603, !noalias !1602
  %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i27, align 8, !noalias !1609
  store i64 %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.4.0..sroa_idx.i.i42, align 8, !alias.scope !1603, !noalias !1602
  %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45 = load i64, ptr %.sroa.6.i.i28, align 8, !noalias !1609
  store i64 %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45, ptr %i.ab, align 8, !alias.scope !1603, !noalias !1602
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i28)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

bb.ag:                                            ; preds = %bb.z
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 unwind label %.loopexit

bb.ah:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1612
  call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  %i.ci = trunc nuw i64 %i.bx to i1               ; 2 uses
  br i1 %i.ci, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i64, ptr %i.u, align 8, !alias.scope !1615, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.ck = load i8, ptr %i.v, align 1, !alias.scope !1615, !noundef !10
  %.not.i.i87 = icmp sgt i8 %i.ck, -1
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1615 ; 5 uses
  %.val21.i.i = load i64, ptr %i.w, align 8, !alias.scope !1615 ; 2 uses
  br i1 %.not.i.i87, label %4, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

4:                                                ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %4
  %i.cl = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8, !noalias !1616
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.aj, %bb.ak, %4
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i, %bb.aj ]
  store ptr %.sroa.06.0.i.i, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !1613, !noalias !1612
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.ai
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sink.i.sroa.gep16.i, %bb.ai ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.cj, %bb.ai ]
  %i.co = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.ai ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !1613, !noalias !1612
  store i64 %i.co, ptr %i.a, align 8, !alias.scope !1613, !noalias !1612
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  %i.cp = load i64, ptr %i.x, align 8, !range !11, !alias.scope !1619, !noundef !10
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cr = load i64, ptr %i.y, align 8, !alias.scope !1619, !noundef !10
  br label %.noexc51

bb.am:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cs = load i8, ptr %i.z, align 1, !alias.scope !1619, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cs, -1
  %.val.i11.i = load ptr, ptr %i.y, align 8, !alias.scope !1619 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.aa, align 8, !alias.scope !1619 ; 2 uses
  br i1 %.not.i1.i, label %bb.an, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ct = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cu = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !1620
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ap, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.aq, !noalias !1612

.noexc.i:                                         ; preds = %bb.ap
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.am, %bb.ao, %bb.an
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ao ], [ inttoptr (i64 16 to ptr), %bb.an ], [ %.val.i11.i, %bb.am ]
  %i.cw = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.cw, ptr %.sroa.4.i, align 8, !alias.scope !1617, !noalias !1612
  br label %.noexc51

bb.aq:                                            ; preds = %bb.ap
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !1621, !noalias !1612
  %.not.i.i.i.i.i88 = icmp slt i8 %i.cz, 0
  %or.cond.i.not.i = select i1 %i.ci, i1 true, i1 %.not.i.i.i.i.i88
  br i1 %or.cond.i.not.i, label %.body83thread-pre-split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.body83thread-pre-split unwind label %bb.as, !noalias !1612

bb.as:                                            ; preds = %bb.ar
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !1612
  unreachable

.noexc51:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.al
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i, %bb.al ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cr, %bb.al ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.al ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !1617, !noalias !1612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1611
  store i64 %storemerge.i9.i, ptr %i.ab, align 8, !alias.scope !1610
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !1612
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1610
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !1612
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1610
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1612
  %.sroa.094.0.copyload95.pre = load i64, ptr %i.g, align 8, !noalias !1601
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31: ; preds = %bb.ag, %.noexc51, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38
  %.sroa.094.0.copyload95 = phi i64 [ %.sroa.094.0.copyload95.pre, %.noexc51 ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38 ], [ 3, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !1601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1602
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31, %bb.y
  %.sroa.094.0 = phi i64 [ %.sroa.094.0.copyload95, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 ], [ -1, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %i.p, i64 128, i1 false)
  store i64 %.sroa.094.0, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  store ptr %i.o, ptr %i.af, align 8
  invoke fastcc void @_RNCNCINvNtNtCsPYQCUnoTxQ_10collection6common13fetch_vectors32resolve_referenced_vectors_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1C_14TableOfContent5group00NCNvMB1C_B2x_18get_collection_opt0NtNtNtBa_10operations5types24RecommendRequestInternalE0s0_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef align 8 dereferenceable(48) %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ae, ptr noundef nonnull align 8 %i.o)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.db = load i64, ptr %i.m, align 8, !range !29, !noundef !10
  %.not17 = icmp eq i64 %i.db, -1
  br i1 %.not17, label %bb.au, label %bb.bm

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5103)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  %i.dc = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1622, !noundef !10 ; 3 uses
  %.not.i55 = icmp eq i64 %i.dc, -1
  br i1 %.not.i55, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit78, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1623
  call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  %i.dd = add nsw i64 %i.dc, -2
  %.inv.i.i56 = icmp samesign ult i64 %i.dc, 2
  %i.de = select i1 %.inv.i.i56, i64 2, i64 %i.dd
  switch i64 %i.de, label %bb.aw [
    i64 0, label %bb.ax
    i64 1, label %bb.bd
    i64 2, label %bb.be
  ]

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.df = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i54)
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  call void @llvm.experimental.noalias.scope.decl(metadata !1627)
  %i.dg = load i64, ptr %i.df, align 8, !range !11, !alias.scope !1628, !noundef !10
  %i.dh = trunc nuw i64 %i.dg to i1
  %i.di = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.dh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !1628, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

bb.az:                                            ; preds = %bb.ax
  %i.dk = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !1628, !noundef !10
  %.not.i.i.i58 = icmp sgt i8 %i.dl, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i72 = load ptr, ptr %i.di, align 8, !alias.scope !1628 ; 5 uses
  %.val21.i.i.i73 = load i64, ptr %i.dm, align 8, !alias.scope !1628 ; 2 uses
  br i1 %.not.i.i.i58, label %bb.ba, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i.i74 = icmp eq ptr %.val.i.i.i72, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i74, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dn = getelementptr inbounds i8, ptr %.val.i.i.i72, i64 -16
  %i.do = atomicrmw add ptr %i.dn, i64 1 monotonic, align 8, !noalias !1629
  %i.dp = icmp slt i64 %i.do, 0
  br i1 %i.dp, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, !prof !30

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i72, i64 noundef %.val21.i.i.i73) #19
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.bc
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61: ; preds = %bb.az, %bb.bb, %bb.ba
  %.sroa.06.0.i.i.i63 = phi ptr [ %.val.i.i.i72, %bb.bb ], [ inttoptr (i64 16 to ptr), %bb.ba ], [ %.val.i.i.i72, %bb.az ]
  %i.dq = ptrtoint ptr %.sroa.06.0.i.i.i63 to i64
  store i64 %i.dq, ptr %.sroa.4.i.i53, align 8, !alias.scope !1626, !noalias !1630
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, %bb.ay
  %.sink.i.sroa.phi.i.i65 = phi ptr [ %.sroa.6.i.i54, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %.sroa.4.i.i53, %bb.ay ]
  %.sroa.58.0.sink.i.i.i66 = phi i64 [ %.val21.i.i.i73, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %i.dj, %bb.ay ]
  %storemerge.i.i.i67 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ 1, %bb.ay ]
  store i64 %.sroa.58.0.sink.i.i.i66, ptr %.sink.i.sroa.phi.i.i65, align 8, !alias.scope !1626, !noalias !1630
  store i64 %storemerge.i.i.i67, ptr %i.ag, align 8, !alias.scope !1624, !noalias !1623
  %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69 = load i64, ptr %.sroa.4.i.i53, align 8, !noalias !1630
  store i64 %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69, ptr %.sroa.4.0..sroa_idx.i.i68, align 8, !alias.scope !1624, !noalias !1623
  %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71 = load i64, ptr %.sroa.6.i.i54, align 8, !noalias !1630
  store i64 %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71, ptr %.sroa.6.0..sroa_idx.i.i70, align 8, !alias.scope !1624, !noalias !1623
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i54)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57

bb.bd:                                            ; preds = %bb.av
  %i.dr = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57 unwind label %.loopexit

bb.be:                                            ; preds = %bb.av
end_hunk_3
begin_hunk_4_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsRTNtNtNtB6_10operations5types24RecommendRequestInternalNtNtB17_23shard_selector_internal21ShardSelectorInternalEINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB4_13fetch_vectors16ReferencedPointsINtNtCsexYYUdYSQU6_5alloc3vec3VecNCINvMs_B4m_B4k_13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB69_14TableOfContent9recommend00NCNvMB69_B74_18get_collection_opt0E0ERSB12_NCNCINvB4m_32resolve_referenced_vectors_batchB60_B7C_B13_E00NCB8l_s_0NCB8l_s0_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  %i.bf = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1688, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.bf, -1
  br i1 %.not.i, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1689
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  %i.bg = add nsw i64 %i.bf, -2
  %.inv.i.i = icmp samesign ult i64 %i.bf, 2
  %i.bh = select i1 %.inv.i.i, i64 2, i64 %i.bg
  switch i64 %i.bh, label %bb.p [
    i64 0, label %bb.q
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  %i.bj = load i64, ptr %i.bi, align 8, !range !11, !alias.scope !1694, !noundef !10
  %i.bk = trunc nuw i64 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !1694, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !1694, !noundef !10
  %.not.i.i.i = icmp sgt i8 %i.bo, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !1694 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !1694 ; 2 uses
  br i1 %.not.i.i.i, label %bb.t, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !noalias !1695
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !30

.invoke:                                          ; preds = %bb.ak, %bb.af, %bb.u
  %i.bt = phi ptr [ %.val.i.i.i46, %bb.af ], [ %.val.i.i.i, %bb.u ], [ %.val.i.i, %bb.ak ]
  %i.bu = phi i64 [ %.val21.i.i.i47, %bb.af ], [ %.val21.i.i.i, %bb.u ], [ %.val21.i.i, %bb.ak ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.bt, i64 noundef %i.bu) #19
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.s, %bb.u, %bb.t
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.u ], [ inttoptr (i64 16 to ptr), %bb.t ], [ %.val.i.i.i, %bb.s ]
  %i.bv = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  store i64 %i.bv, ptr %.sroa.4.i.i, align 8, !alias.scope !1692, !noalias !1696
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.r
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sroa.6.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.sroa.4.i.i, %bb.r ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.bm, %bb.r ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 1, %bb.r ]
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i.sroa.phi.i.i, align 8, !alias.scope !1692, !noalias !1696
  store i64 %storemerge.i.i.i, ptr %i.ah, align 8, !alias.scope !1690, !noalias !1689
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !1696
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1690, !noalias !1689
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.i.i, align 8, !noalias !1696
  store i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1690, !noalias !1689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.v:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %bb.o
  invoke fastcc void @_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %..i.i) #18
          to label %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge unwind label %.loopexit

._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge: ; preds = %bb.w
  %.sroa.0105.0.copyload106.pre = load i64, ptr %i.h, align 8, !noalias !1688
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.v, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.0105.0.copyload106 = phi i64 [ %.sroa.0105.0.copyload106.pre, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 3, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5107, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !1688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1689
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.x:                                             ; preds = %bb.m
  br i1 %i.be, label %bb.y, label %bb.bi

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  %i.bx = load i64, ptr %i.n, align 8, !range !18, !alias.scope !1697, !noundef !10 ; 4 uses
  %.not.i29 = icmp eq i64 %i.bx, -1
  br i1 %.not.i29, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1698
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  %i.by = add nsw i64 %i.bx, -2
  %.inv.i.i30 = icmp samesign ult i64 %i.bx, 2
  %i.bz = select i1 %.inv.i.i30, i64 2, i64 %i.by
  switch i64 %i.bz, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i28)
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.ca = load i64, ptr %i.u, align 8, !range !11, !alias.scope !1703, !noundef !10
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i64, ptr %i.w, align 8, !alias.scope !1703, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

bb.ad:                                            ; preds = %bb.ab
  %i.cd = load i8, ptr %i.ad, align 1, !alias.scope !1703, !noundef !10
  %.not.i.i.i32 = icmp sgt i8 %i.cd, -1
  %.val.i.i.i46 = load ptr, ptr %i.w, align 8, !alias.scope !1703 ; 5 uses
  %.val21.i.i.i47 = load i64, ptr %i.x, align 8, !alias.scope !1703 ; 2 uses
  br i1 %.not.i.i.i32, label %bb.ae, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i48 = icmp eq ptr %.val.i.i.i46, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i48, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds i8, ptr %.val.i.i.i46, i64 -16
  %i.cf = atomicrmw add ptr %i.ce, i64 1 monotonic, align 8, !noalias !1704
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35: ; preds = %bb.ad, %bb.af, %bb.ae
  %.sroa.06.0.i.i.i37 = phi ptr [ %.val.i.i.i46, %bb.af ], [ inttoptr (i64 16 to ptr), %bb.ae ], [ %.val.i.i.i46, %bb.ad ]
  %i.ch = ptrtoint ptr %.sroa.06.0.i.i.i37 to i64
  store i64 %i.ch, ptr %.sroa.4.i.i27, align 8, !alias.scope !1701, !noalias !1705
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, %bb.ac
  %.sink.i.sroa.phi.i.i39 = phi ptr [ %.sroa.6.i.i28, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %.sroa.4.i.i27, %bb.ac ]
  %.sroa.58.0.sink.i.i.i40 = phi i64 [ %.val21.i.i.i47, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %i.cc, %bb.ac ]
  %storemerge.i.i.i41 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ 1, %bb.ac ]
  store i64 %.sroa.58.0.sink.i.i.i40, ptr %.sink.i.sroa.phi.i.i39, align 8, !alias.scope !1701, !noalias !1705
  store i64 %storemerge.i.i.i41, ptr %i.ac, align 8, !alias.scope !1699, !noalias !1698
  %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i27, align 8, !noalias !1705
  store i64 %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.4.0..sroa_idx.i.i42, align 8, !alias.scope !1699, !noalias !1698
  %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45 = load i64, ptr %.sroa.6.i.i28, align 8, !noalias !1705
  store i64 %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45, ptr %i.ab, align 8, !alias.scope !1699, !noalias !1698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i28)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

bb.ag:                                            ; preds = %bb.z
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 unwind label %.loopexit

bb.ah:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  call void @llvm.experimental.noalias.scope.decl(metadata !1707)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1708
  call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  %i.ci = trunc nuw i64 %i.bx to i1               ; 2 uses
  br i1 %i.ci, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i64, ptr %i.u, align 8, !alias.scope !1711, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.ck = load i8, ptr %i.v, align 1, !alias.scope !1711, !noundef !10
  %.not.i.i87 = icmp sgt i8 %i.ck, -1
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1711 ; 5 uses
  %.val21.i.i = load i64, ptr %i.w, align 8, !alias.scope !1711 ; 2 uses
  br i1 %.not.i.i87, label %4, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

4:                                                ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %4
  %i.cl = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8, !noalias !1712
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.aj, %bb.ak, %4
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i, %bb.aj ]
  store ptr %.sroa.06.0.i.i, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !1709, !noalias !1708
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.ai
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sink.i.sroa.gep16.i, %bb.ai ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.cj, %bb.ai ]
  %i.co = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.ai ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !1709, !noalias !1708
  store i64 %i.co, ptr %i.a, align 8, !alias.scope !1709, !noalias !1708
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  %i.cp = load i64, ptr %i.x, align 8, !range !11, !alias.scope !1715, !noundef !10
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cr = load i64, ptr %i.y, align 8, !alias.scope !1715, !noundef !10
  br label %.noexc51

bb.am:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cs = load i8, ptr %i.z, align 1, !alias.scope !1715, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cs, -1
  %.val.i11.i = load ptr, ptr %i.y, align 8, !alias.scope !1715 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.aa, align 8, !alias.scope !1715 ; 2 uses
  br i1 %.not.i1.i, label %bb.an, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ct = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cu = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !1716
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ap, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.aq, !noalias !1708

.noexc.i:                                         ; preds = %bb.ap
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.am, %bb.ao, %bb.an
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ao ], [ inttoptr (i64 16 to ptr), %bb.an ], [ %.val.i11.i, %bb.am ]
  %i.cw = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.cw, ptr %.sroa.4.i, align 8, !alias.scope !1713, !noalias !1708
  br label %.noexc51

bb.aq:                                            ; preds = %bb.ap
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !1717, !noalias !1708
  %.not.i.i.i.i.i88 = icmp slt i8 %i.cz, 0
  %or.cond.i.not.i = select i1 %i.ci, i1 true, i1 %.not.i.i.i.i.i88
  br i1 %or.cond.i.not.i, label %.body83thread-pre-split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.body83thread-pre-split unwind label %bb.as, !noalias !1708

bb.as:                                            ; preds = %bb.ar
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !1708
  unreachable

.noexc51:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.al
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i, %bb.al ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cr, %bb.al ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.al ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !1713, !noalias !1708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1707
  store i64 %storemerge.i9.i, ptr %i.ab, align 8, !alias.scope !1706
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !1708
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1706
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !1708
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1708
  %.sroa.094.0.copyload95.pre = load i64, ptr %i.g, align 8, !noalias !1697
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31: ; preds = %bb.ag, %.noexc51, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38
  %.sroa.094.0.copyload95 = phi i64 [ %.sroa.094.0.copyload95.pre, %.noexc51 ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38 ], [ 3, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !1697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1698
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31, %bb.y
  %.sroa.094.0 = phi i64 [ %.sroa.094.0.copyload95, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 ], [ -1, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %i.p, i64 128, i1 false)
  store i64 %.sroa.094.0, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  store ptr %i.o, ptr %i.af, align 8
  invoke fastcc void @_RNCNCINvNtNtCsPYQCUnoTxQ_10collection6common13fetch_vectors32resolve_referenced_vectors_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1C_14TableOfContent9recommend00NCNvMB1C_B2x_18get_collection_opt0NtNtNtBa_10operations5types24RecommendRequestInternalE0s0_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef align 8 dereferenceable(48) %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ae, ptr noundef nonnull align 8 %i.o)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.db = load i64, ptr %i.m, align 8, !range !29, !noundef !10
  %.not17 = icmp eq i64 %i.db, -1
  br i1 %.not17, label %bb.au, label %bb.bm

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5103)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  %i.dc = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1718, !noundef !10 ; 3 uses
  %.not.i55 = icmp eq i64 %i.dc, -1
  br i1 %.not.i55, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit78, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1719
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  %i.dd = add nsw i64 %i.dc, -2
  %.inv.i.i56 = icmp samesign ult i64 %i.dc, 2
  %i.de = select i1 %.inv.i.i56, i64 2, i64 %i.dd
  switch i64 %i.de, label %bb.aw [
    i64 0, label %bb.ax
    i64 1, label %bb.bd
    i64 2, label %bb.be
  ]

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.df = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i54)
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %i.dg = load i64, ptr %i.df, align 8, !range !11, !alias.scope !1724, !noundef !10
  %i.dh = trunc nuw i64 %i.dg to i1
  %i.di = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.dh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !1724, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

bb.az:                                            ; preds = %bb.ax
  %i.dk = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !1724, !noundef !10
  %.not.i.i.i58 = icmp sgt i8 %i.dl, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i72 = load ptr, ptr %i.di, align 8, !alias.scope !1724 ; 5 uses
  %.val21.i.i.i73 = load i64, ptr %i.dm, align 8, !alias.scope !1724 ; 2 uses
  br i1 %.not.i.i.i58, label %bb.ba, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i.i74 = icmp eq ptr %.val.i.i.i72, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i74, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dn = getelementptr inbounds i8, ptr %.val.i.i.i72, i64 -16
  %i.do = atomicrmw add ptr %i.dn, i64 1 monotonic, align 8, !noalias !1725
  %i.dp = icmp slt i64 %i.do, 0
  br i1 %i.dp, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, !prof !30

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i72, i64 noundef %.val21.i.i.i73) #19
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.bc
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61: ; preds = %bb.az, %bb.bb, %bb.ba
  %.sroa.06.0.i.i.i63 = phi ptr [ %.val.i.i.i72, %bb.bb ], [ inttoptr (i64 16 to ptr), %bb.ba ], [ %.val.i.i.i72, %bb.az ]
  %i.dq = ptrtoint ptr %.sroa.06.0.i.i.i63 to i64
  store i64 %i.dq, ptr %.sroa.4.i.i53, align 8, !alias.scope !1722, !noalias !1726
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, %bb.ay
  %.sink.i.sroa.phi.i.i65 = phi ptr [ %.sroa.6.i.i54, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %.sroa.4.i.i53, %bb.ay ]
  %.sroa.58.0.sink.i.i.i66 = phi i64 [ %.val21.i.i.i73, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %i.dj, %bb.ay ]
  %storemerge.i.i.i67 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ 1, %bb.ay ]
  store i64 %.sroa.58.0.sink.i.i.i66, ptr %.sink.i.sroa.phi.i.i65, align 8, !alias.scope !1722, !noalias !1726
  store i64 %storemerge.i.i.i67, ptr %i.ag, align 8, !alias.scope !1720, !noalias !1719
  %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69 = load i64, ptr %.sroa.4.i.i53, align 8, !noalias !1726
  store i64 %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69, ptr %.sroa.4.0..sroa_idx.i.i68, align 8, !alias.scope !1720, !noalias !1719
  %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71 = load i64, ptr %.sroa.6.i.i54, align 8, !noalias !1726
  store i64 %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71, ptr %.sroa.6.0..sroa_idx.i.i70, align 8, !alias.scope !1720, !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i54)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57

bb.bd:                                            ; preds = %bb.av
  %i.dr = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57 unwind label %.loopexit

bb.be:                                            ; preds = %bb.av
end_hunk_4
begin_hunk_5_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsRTNtNtNtNtB6_10operations15universal_query16collection_query29CollectionQueryResolveRequestNtNtB19_23shard_selector_internal21ShardSelectorInternalEINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB4_13fetch_vectors16ReferencedPointsINtNtCsexYYUdYSQU6_5alloc3vec3VecNCINvMs_B4W_B4U_13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB6J_14TableOfContent11query_batch00NCNvMB6J_B7E_18get_collection_opt0E0ERSB12_NCNCINvB4W_32resolve_referenced_vectors_batchB6A_B8f_B13_E00NCB8Y_s_0NCB8Y_s0_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  %i.be = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1784, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.be, -1
  br i1 %.not.i, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1785
  call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  %i.bf = add nsw i64 %i.be, -2
  %.inv.i.i = icmp samesign ult i64 %i.be, 2
  %i.bg = select i1 %.inv.i.i, i64 2, i64 %i.bf
  switch i64 %i.bg, label %bb.p [
    i64 0, label %bb.q
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  %i.bi = load i64, ptr %i.bh, align 8, !range !11, !alias.scope !1790, !noundef !10
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !1790, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !1790, !noundef !10
  %.not.i.i.i = icmp sgt i8 %i.bn, -1
  %i.bo = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !1790 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !1790 ; 2 uses
  br i1 %.not.i.i.i, label %bb.t, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.bq = atomicrmw add ptr %i.bp, i64 1 monotonic, align 8, !noalias !1791
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !30

.invoke:                                          ; preds = %bb.ak, %bb.af, %bb.u
  %i.bs = phi ptr [ %.val.i.i.i46, %bb.af ], [ %.val.i.i.i, %bb.u ], [ %.val.i.i, %bb.ak ]
  %i.bt = phi i64 [ %.val21.i.i.i47, %bb.af ], [ %.val21.i.i.i, %bb.u ], [ %.val21.i.i, %bb.ak ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.bs, i64 noundef %i.bt) #19
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.s, %bb.u, %bb.t
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.u ], [ inttoptr (i64 16 to ptr), %bb.t ], [ %.val.i.i.i, %bb.s ]
  %i.bu = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  store i64 %i.bu, ptr %.sroa.4.i.i, align 8, !alias.scope !1788, !noalias !1792
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.r
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sroa.6.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.sroa.4.i.i, %bb.r ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.bl, %bb.r ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 1, %bb.r ]
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i.sroa.phi.i.i, align 8, !alias.scope !1788, !noalias !1792
  store i64 %storemerge.i.i.i, ptr %i.ah, align 8, !alias.scope !1786, !noalias !1785
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !1792
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1786, !noalias !1785
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.i.i, align 8, !noalias !1792
  store i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1786, !noalias !1785
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.v:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %bb.o
  invoke fastcc void @_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %..i.i) #18
          to label %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge unwind label %.loopexit

._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge: ; preds = %bb.w
  %.sroa.0105.0.copyload106.pre = load i64, ptr %i.h, align 8, !noalias !1784
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.v, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.0105.0.copyload106 = phi i64 [ %.sroa.0105.0.copyload106.pre, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 3, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5107, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !1784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1785
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.x:                                             ; preds = %bb.m
  br i1 %i.bd, label %bb.y, label %bb.bi

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  %i.bw = load i64, ptr %i.n, align 8, !range !18, !alias.scope !1793, !noundef !10 ; 4 uses
  %.not.i29 = icmp eq i64 %i.bw, -1
  br i1 %.not.i29, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1794
  call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  %i.bx = add nsw i64 %i.bw, -2
  %.inv.i.i30 = icmp samesign ult i64 %i.bw, 2
  %i.by = select i1 %.inv.i.i30, i64 2, i64 %i.bx
  switch i64 %i.by, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i28)
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  %i.bz = load i64, ptr %i.u, align 8, !range !11, !alias.scope !1799, !noundef !10
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load i64, ptr %i.w, align 8, !alias.scope !1799, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

bb.ad:                                            ; preds = %bb.ab
  %i.cc = load i8, ptr %i.ad, align 1, !alias.scope !1799, !noundef !10
  %.not.i.i.i32 = icmp sgt i8 %i.cc, -1
  %.val.i.i.i46 = load ptr, ptr %i.w, align 8, !alias.scope !1799 ; 5 uses
  %.val21.i.i.i47 = load i64, ptr %i.x, align 8, !alias.scope !1799 ; 2 uses
  br i1 %.not.i.i.i32, label %bb.ae, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i48 = icmp eq ptr %.val.i.i.i46, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i48, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = getelementptr inbounds i8, ptr %.val.i.i.i46, i64 -16
  %i.ce = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !1800
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35: ; preds = %bb.ad, %bb.af, %bb.ae
  %.sroa.06.0.i.i.i37 = phi ptr [ %.val.i.i.i46, %bb.af ], [ inttoptr (i64 16 to ptr), %bb.ae ], [ %.val.i.i.i46, %bb.ad ]
  %i.cg = ptrtoint ptr %.sroa.06.0.i.i.i37 to i64
  store i64 %i.cg, ptr %.sroa.4.i.i27, align 8, !alias.scope !1797, !noalias !1801
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, %bb.ac
  %.sink.i.sroa.phi.i.i39 = phi ptr [ %.sroa.6.i.i28, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %.sroa.4.i.i27, %bb.ac ]
  %.sroa.58.0.sink.i.i.i40 = phi i64 [ %.val21.i.i.i47, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %i.cb, %bb.ac ]
  %storemerge.i.i.i41 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ 1, %bb.ac ]
  store i64 %.sroa.58.0.sink.i.i.i40, ptr %.sink.i.sroa.phi.i.i39, align 8, !alias.scope !1797, !noalias !1801
  store i64 %storemerge.i.i.i41, ptr %i.ac, align 8, !alias.scope !1795, !noalias !1794
  %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i27, align 8, !noalias !1801
  store i64 %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.4.0..sroa_idx.i.i42, align 8, !alias.scope !1795, !noalias !1794
  %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45 = load i64, ptr %.sroa.6.i.i28, align 8, !noalias !1801
  store i64 %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45, ptr %i.ab, align 8, !alias.scope !1795, !noalias !1794
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i28)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

bb.ag:                                            ; preds = %bb.z
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 unwind label %.loopexit

bb.ah:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1804
  call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  %i.ch = trunc nuw i64 %i.bw to i1               ; 2 uses
  br i1 %i.ch, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ci = load i64, ptr %i.u, align 8, !alias.scope !1807, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.cj = load i8, ptr %i.v, align 1, !alias.scope !1807, !noundef !10
  %.not.i.i87 = icmp sgt i8 %i.cj, -1
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1807 ; 5 uses
  %.val21.i.i = load i64, ptr %i.w, align 8, !alias.scope !1807 ; 2 uses
  br i1 %.not.i.i87, label %4, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

4:                                                ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %4
  %i.ck = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8, !noalias !1808
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.aj, %bb.ak, %4
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i, %bb.aj ]
  store ptr %.sroa.06.0.i.i, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !1805, !noalias !1804
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.ai
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sink.i.sroa.gep16.i, %bb.ai ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.ci, %bb.ai ]
  %i.cn = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.ai ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !1805, !noalias !1804
  store i64 %i.cn, ptr %i.a, align 8, !alias.scope !1805, !noalias !1804
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  call void @llvm.experimental.noalias.scope.decl(metadata !1810)
  %i.co = load i64, ptr %i.x, align 8, !range !11, !alias.scope !1811, !noundef !10
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cq = load i64, ptr %i.y, align 8, !alias.scope !1811, !noundef !10
  br label %.noexc51

bb.am:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cr = load i8, ptr %i.z, align 1, !alias.scope !1811, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cr, -1
  %.val.i11.i = load ptr, ptr %i.y, align 8, !alias.scope !1811 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.aa, align 8, !alias.scope !1811 ; 2 uses
  br i1 %.not.i1.i, label %bb.an, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cs = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.ct = atomicrmw add ptr %i.cs, i64 1 monotonic, align 8, !noalias !1812
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %bb.ap, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.aq, !noalias !1804

.noexc.i:                                         ; preds = %bb.ap
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.am, %bb.ao, %bb.an
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ao ], [ inttoptr (i64 16 to ptr), %bb.an ], [ %.val.i11.i, %bb.am ]
  %i.cv = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.cv, ptr %.sroa.4.i, align 8, !alias.scope !1809, !noalias !1804
  br label %.noexc51

bb.aq:                                            ; preds = %bb.ap
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !1813, !noalias !1804
  %.not.i.i.i.i.i88 = icmp slt i8 %i.cy, 0
  %or.cond.i.not.i = select i1 %i.ch, i1 true, i1 %.not.i.i.i.i.i88
  br i1 %or.cond.i.not.i, label %.body83thread-pre-split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.body83thread-pre-split unwind label %bb.as, !noalias !1804

bb.as:                                            ; preds = %bb.ar
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !1804
  unreachable

.noexc51:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.al
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i, %bb.al ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cq, %bb.al ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.al ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !1809, !noalias !1804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1803
  store i64 %storemerge.i9.i, ptr %i.ab, align 8, !alias.scope !1802
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !1804
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1802
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !1804
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1802
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1804
  %.sroa.094.0.copyload95.pre = load i64, ptr %i.g, align 8, !noalias !1793
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31: ; preds = %bb.ag, %.noexc51, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38
  %.sroa.094.0.copyload95 = phi i64 [ %.sroa.094.0.copyload95.pre, %.noexc51 ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38 ], [ 3, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !1793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1794
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31, %bb.y
  %.sroa.094.0 = phi i64 [ %.sroa.094.0.copyload95, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 ], [ -1, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %i.p, i64 128, i1 false)
  store i64 %.sroa.094.0, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  store ptr %i.o, ptr %i.af, align 8
  invoke fastcc void @_RNCNCINvNtNtCsPYQCUnoTxQ_10collection6common13fetch_vectors32resolve_referenced_vectors_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1C_14TableOfContent11query_batch00NCNvMB1C_B2x_18get_collection_opt0NtNtNtNtBa_10operations15universal_query16collection_query29CollectionQueryResolveRequestE0s0_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef align 8 dereferenceable(48) %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ae, ptr noundef nonnull align 8 %i.o)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.da = load i64, ptr %i.m, align 8, !range !29, !noundef !10
  %.not17 = icmp eq i64 %i.da, -1
  br i1 %.not17, label %bb.au, label %bb.bm

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5103)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  %i.db = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1814, !noundef !10 ; 3 uses
  %.not.i55 = icmp eq i64 %i.db, -1
  br i1 %.not.i55, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit78, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1815
  call void @llvm.experimental.noalias.scope.decl(metadata !1816)
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  %i.dc = add nsw i64 %i.db, -2
  %.inv.i.i56 = icmp samesign ult i64 %i.db, 2
  %i.dd = select i1 %.inv.i.i56, i64 2, i64 %i.dc
  switch i64 %i.dd, label %bb.aw [
    i64 0, label %bb.ax
    i64 1, label %bb.bd
    i64 2, label %bb.be
  ]

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.de = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i54)
  call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  %i.df = load i64, ptr %i.de, align 8, !range !11, !alias.scope !1820, !noundef !10
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.dg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !1820, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

bb.az:                                            ; preds = %bb.ax
  %i.dj = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !1820, !noundef !10
  %.not.i.i.i58 = icmp sgt i8 %i.dk, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i72 = load ptr, ptr %i.dh, align 8, !alias.scope !1820 ; 5 uses
  %.val21.i.i.i73 = load i64, ptr %i.dl, align 8, !alias.scope !1820 ; 2 uses
  br i1 %.not.i.i.i58, label %bb.ba, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i.i74 = icmp eq ptr %.val.i.i.i72, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i74, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dm = getelementptr inbounds i8, ptr %.val.i.i.i72, i64 -16
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !noalias !1821
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, !prof !30

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i72, i64 noundef %.val21.i.i.i73) #19
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.bc
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61: ; preds = %bb.az, %bb.bb, %bb.ba
  %.sroa.06.0.i.i.i63 = phi ptr [ %.val.i.i.i72, %bb.bb ], [ inttoptr (i64 16 to ptr), %bb.ba ], [ %.val.i.i.i72, %bb.az ]
  %i.dp = ptrtoint ptr %.sroa.06.0.i.i.i63 to i64
  store i64 %i.dp, ptr %.sroa.4.i.i53, align 8, !alias.scope !1818, !noalias !1822
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, %bb.ay
  %.sink.i.sroa.phi.i.i65 = phi ptr [ %.sroa.6.i.i54, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %.sroa.4.i.i53, %bb.ay ]
  %.sroa.58.0.sink.i.i.i66 = phi i64 [ %.val21.i.i.i73, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %i.di, %bb.ay ]
  %storemerge.i.i.i67 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ 1, %bb.ay ]
  store i64 %.sroa.58.0.sink.i.i.i66, ptr %.sink.i.sroa.phi.i.i65, align 8, !alias.scope !1818, !noalias !1822
  store i64 %storemerge.i.i.i67, ptr %i.ag, align 8, !alias.scope !1816, !noalias !1815
  %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69 = load i64, ptr %.sroa.4.i.i53, align 8, !noalias !1822
  store i64 %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69, ptr %.sroa.4.0..sroa_idx.i.i68, align 8, !alias.scope !1816, !noalias !1815
  %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71 = load i64, ptr %.sroa.6.i.i54, align 8, !noalias !1822
  store i64 %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71, ptr %.sroa.6.0..sroa_idx.i.i70, align 8, !alias.scope !1816, !noalias !1815
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i54)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57

bb.bd:                                            ; preds = %bb.av
  %i.dq = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57 unwind label %.loopexit

bb.be:                                            ; preds = %bb.av
end_hunk_5
begin_hunk_6_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsRTNtNtNtNtB6_10operations15universal_query16collection_query29CollectionQueryResolveRequestNtNtB19_23shard_selector_internal21ShardSelectorInternalEINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB4_13fetch_vectors16ReferencedPointsINtNtCsexYYUdYSQU6_5alloc3vec3VecNCINvMs_B4W_B4U_13fetch_vectorsNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB6J_14TableOfContent5group00NCNvMB6J_B7E_18get_collection_opt0E0ERSB12_NCNCINvB4W_32resolve_referenced_vectors_batchB6A_B88_B13_E00NCB8R_s_0NCB8R_s0_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  %i.be = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1880, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.be, -1
  br i1 %.not.i, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1881
  call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %i.bf = add nsw i64 %i.be, -2
  %.inv.i.i = icmp samesign ult i64 %i.be, 2
  %i.bg = select i1 %.inv.i.i, i64 2, i64 %i.bf
  switch i64 %i.bg, label %bb.p [
    i64 0, label %bb.q
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  %i.bi = load i64, ptr %i.bh, align 8, !range !11, !alias.scope !1886, !noundef !10
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !1886, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !1886, !noundef !10
  %.not.i.i.i = icmp sgt i8 %i.bn, -1
  %i.bo = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !1886 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !1886 ; 2 uses
  br i1 %.not.i.i.i, label %bb.t, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.bq = atomicrmw add ptr %i.bp, i64 1 monotonic, align 8, !noalias !1887
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !30

.invoke:                                          ; preds = %bb.ak, %bb.af, %bb.u
  %i.bs = phi ptr [ %.val.i.i.i46, %bb.af ], [ %.val.i.i.i, %bb.u ], [ %.val.i.i, %bb.ak ]
  %i.bt = phi i64 [ %.val21.i.i.i47, %bb.af ], [ %.val21.i.i.i, %bb.u ], [ %.val21.i.i, %bb.ak ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.bs, i64 noundef %i.bt) #19
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.s, %bb.u, %bb.t
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.u ], [ inttoptr (i64 16 to ptr), %bb.t ], [ %.val.i.i.i, %bb.s ]
  %i.bu = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  store i64 %i.bu, ptr %.sroa.4.i.i, align 8, !alias.scope !1884, !noalias !1888
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.r
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sroa.6.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.sroa.4.i.i, %bb.r ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.bl, %bb.r ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 1, %bb.r ]
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i.sroa.phi.i.i, align 8, !alias.scope !1884, !noalias !1888
  store i64 %storemerge.i.i.i, ptr %i.ah, align 8, !alias.scope !1882, !noalias !1881
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !1888
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1882, !noalias !1881
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.i.i, align 8, !noalias !1888
  store i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1882, !noalias !1881
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.v:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %bb.o
  invoke fastcc void @_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %..i.i) #18
          to label %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge unwind label %.loopexit

._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge: ; preds = %bb.w
  %.sroa.0105.0.copyload106.pre = load i64, ptr %i.h, align 8, !noalias !1880
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.v, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.0105.0.copyload106 = phi i64 [ %.sroa.0105.0.copyload106.pre, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 3, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5107, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !1880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1881
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.x:                                             ; preds = %bb.m
  br i1 %i.bd, label %bb.y, label %bb.bi

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  %i.bw = load i64, ptr %i.n, align 8, !range !18, !alias.scope !1889, !noundef !10 ; 4 uses
  %.not.i29 = icmp eq i64 %i.bw, -1
  br i1 %.not.i29, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1890
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  %i.bx = add nsw i64 %i.bw, -2
  %.inv.i.i30 = icmp samesign ult i64 %i.bw, 2
  %i.by = select i1 %.inv.i.i30, i64 2, i64 %i.bx
  switch i64 %i.by, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i28)
  call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  %i.bz = load i64, ptr %i.u, align 8, !range !11, !alias.scope !1895, !noundef !10
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load i64, ptr %i.w, align 8, !alias.scope !1895, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

bb.ad:                                            ; preds = %bb.ab
  %i.cc = load i8, ptr %i.ad, align 1, !alias.scope !1895, !noundef !10
  %.not.i.i.i32 = icmp sgt i8 %i.cc, -1
  %.val.i.i.i46 = load ptr, ptr %i.w, align 8, !alias.scope !1895 ; 5 uses
  %.val21.i.i.i47 = load i64, ptr %i.x, align 8, !alias.scope !1895 ; 2 uses
  br i1 %.not.i.i.i32, label %bb.ae, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i48 = icmp eq ptr %.val.i.i.i46, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i48, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = getelementptr inbounds i8, ptr %.val.i.i.i46, i64 -16
  %i.ce = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !1896
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35: ; preds = %bb.ad, %bb.af, %bb.ae
  %.sroa.06.0.i.i.i37 = phi ptr [ %.val.i.i.i46, %bb.af ], [ inttoptr (i64 16 to ptr), %bb.ae ], [ %.val.i.i.i46, %bb.ad ]
  %i.cg = ptrtoint ptr %.sroa.06.0.i.i.i37 to i64
  store i64 %i.cg, ptr %.sroa.4.i.i27, align 8, !alias.scope !1893, !noalias !1897
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, %bb.ac
  %.sink.i.sroa.phi.i.i39 = phi ptr [ %.sroa.6.i.i28, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %.sroa.4.i.i27, %bb.ac ]
  %.sroa.58.0.sink.i.i.i40 = phi i64 [ %.val21.i.i.i47, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %i.cb, %bb.ac ]
  %storemerge.i.i.i41 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ 1, %bb.ac ]
  store i64 %.sroa.58.0.sink.i.i.i40, ptr %.sink.i.sroa.phi.i.i39, align 8, !alias.scope !1893, !noalias !1897
  store i64 %storemerge.i.i.i41, ptr %i.ac, align 8, !alias.scope !1891, !noalias !1890
  %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i27, align 8, !noalias !1897
  store i64 %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.4.0..sroa_idx.i.i42, align 8, !alias.scope !1891, !noalias !1890
  %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45 = load i64, ptr %.sroa.6.i.i28, align 8, !noalias !1897
  store i64 %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45, ptr %i.ab, align 8, !alias.scope !1891, !noalias !1890
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i28)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

bb.ag:                                            ; preds = %bb.z
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 unwind label %.loopexit

bb.ah:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1900
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  %i.ch = trunc nuw i64 %i.bw to i1               ; 2 uses
  br i1 %i.ch, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ci = load i64, ptr %i.u, align 8, !alias.scope !1903, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.cj = load i8, ptr %i.v, align 1, !alias.scope !1903, !noundef !10
  %.not.i.i87 = icmp sgt i8 %i.cj, -1
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1903 ; 5 uses
  %.val21.i.i = load i64, ptr %i.w, align 8, !alias.scope !1903 ; 2 uses
  br i1 %.not.i.i87, label %4, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

4:                                                ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %4
  %i.ck = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8, !noalias !1904
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.aj, %bb.ak, %4
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i, %bb.aj ]
  store ptr %.sroa.06.0.i.i, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !1901, !noalias !1900
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.ai
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sink.i.sroa.gep16.i, %bb.ai ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.ci, %bb.ai ]
  %i.cn = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.ai ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !1901, !noalias !1900
  store i64 %i.cn, ptr %i.a, align 8, !alias.scope !1901, !noalias !1900
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  %i.co = load i64, ptr %i.x, align 8, !range !11, !alias.scope !1907, !noundef !10
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cq = load i64, ptr %i.y, align 8, !alias.scope !1907, !noundef !10
  br label %.noexc51

bb.am:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cr = load i8, ptr %i.z, align 1, !alias.scope !1907, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cr, -1
  %.val.i11.i = load ptr, ptr %i.y, align 8, !alias.scope !1907 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.aa, align 8, !alias.scope !1907 ; 2 uses
  br i1 %.not.i1.i, label %bb.an, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cs = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.ct = atomicrmw add ptr %i.cs, i64 1 monotonic, align 8, !noalias !1908
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %bb.ap, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.aq, !noalias !1900

.noexc.i:                                         ; preds = %bb.ap
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.am, %bb.ao, %bb.an
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ao ], [ inttoptr (i64 16 to ptr), %bb.an ], [ %.val.i11.i, %bb.am ]
  %i.cv = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.cv, ptr %.sroa.4.i, align 8, !alias.scope !1905, !noalias !1900
  br label %.noexc51

bb.aq:                                            ; preds = %bb.ap
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !1909, !noalias !1900
  %.not.i.i.i.i.i88 = icmp slt i8 %i.cy, 0
  %or.cond.i.not.i = select i1 %i.ch, i1 true, i1 %.not.i.i.i.i.i88
  br i1 %or.cond.i.not.i, label %.body83thread-pre-split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.body83thread-pre-split unwind label %bb.as, !noalias !1900

bb.as:                                            ; preds = %bb.ar
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !1900
  unreachable

.noexc51:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.al
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i, %bb.al ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cq, %bb.al ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.al ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !1905, !noalias !1900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1899
  store i64 %storemerge.i9.i, ptr %i.ab, align 8, !alias.scope !1898
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !1900
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1898
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !1900
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1898
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1900
  %.sroa.094.0.copyload95.pre = load i64, ptr %i.g, align 8, !noalias !1889
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31: ; preds = %bb.ag, %.noexc51, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38
  %.sroa.094.0.copyload95 = phi i64 [ %.sroa.094.0.copyload95.pre, %.noexc51 ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38 ], [ 3, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !1889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1890
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31, %bb.y
  %.sroa.094.0 = phi i64 [ %.sroa.094.0.copyload95, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 ], [ -1, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %i.p, i64 128, i1 false)
  store i64 %.sroa.094.0, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  store ptr %i.o, ptr %i.af, align 8
  invoke fastcc void @_RNCNCINvNtNtCsPYQCUnoTxQ_10collection6common13fetch_vectors32resolve_referenced_vectors_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1C_14TableOfContent5group00NCNvMB1C_B2x_18get_collection_opt0NtNtNtNtBa_10operations15universal_query16collection_query29CollectionQueryResolveRequestE0s0_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef align 8 dereferenceable(48) %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ae, ptr noundef nonnull align 8 %i.o)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.da = load i64, ptr %i.m, align 8, !range !29, !noundef !10
  %.not17 = icmp eq i64 %i.da, -1
  br i1 %.not17, label %bb.au, label %bb.bm

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5103)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.599)
  call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  %i.db = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1910, !noundef !10 ; 3 uses
  %.not.i55 = icmp eq i64 %i.db, -1
  br i1 %.not.i55, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit78, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1911
  call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  %i.dc = add nsw i64 %i.db, -2
  %.inv.i.i56 = icmp samesign ult i64 %i.db, 2
  %i.dd = select i1 %.inv.i.i56, i64 2, i64 %i.dc
  switch i64 %i.dd, label %bb.aw [
    i64 0, label %bb.ax
    i64 1, label %bb.bd
    i64 2, label %bb.be
  ]

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.de = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i54)
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  %i.df = load i64, ptr %i.de, align 8, !range !11, !alias.scope !1916, !noundef !10
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.dg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !1916, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

bb.az:                                            ; preds = %bb.ax
  %i.dj = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !1916, !noundef !10
  %.not.i.i.i58 = icmp sgt i8 %i.dk, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i72 = load ptr, ptr %i.dh, align 8, !alias.scope !1916 ; 5 uses
  %.val21.i.i.i73 = load i64, ptr %i.dl, align 8, !alias.scope !1916 ; 2 uses
  br i1 %.not.i.i.i58, label %bb.ba, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i.i74 = icmp eq ptr %.val.i.i.i72, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i74, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dm = getelementptr inbounds i8, ptr %.val.i.i.i72, i64 -16
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !noalias !1917
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, !prof !30

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i72, i64 noundef %.val21.i.i.i73) #19
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.bc
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61: ; preds = %bb.az, %bb.bb, %bb.ba
  %.sroa.06.0.i.i.i63 = phi ptr [ %.val.i.i.i72, %bb.bb ], [ inttoptr (i64 16 to ptr), %bb.ba ], [ %.val.i.i.i72, %bb.az ]
  %i.dp = ptrtoint ptr %.sroa.06.0.i.i.i63 to i64
  store i64 %i.dp, ptr %.sroa.4.i.i53, align 8, !alias.scope !1914, !noalias !1918
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, %bb.ay
  %.sink.i.sroa.phi.i.i65 = phi ptr [ %.sroa.6.i.i54, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %.sroa.4.i.i53, %bb.ay ]
  %.sroa.58.0.sink.i.i.i66 = phi i64 [ %.val21.i.i.i73, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %i.di, %bb.ay ]
  %storemerge.i.i.i67 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ 1, %bb.ay ]
  store i64 %.sroa.58.0.sink.i.i.i66, ptr %.sink.i.sroa.phi.i.i65, align 8, !alias.scope !1914, !noalias !1918
  store i64 %storemerge.i.i.i67, ptr %i.ag, align 8, !alias.scope !1912, !noalias !1911
  %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69 = load i64, ptr %.sroa.4.i.i53, align 8, !noalias !1918
  store i64 %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69, ptr %.sroa.4.0..sroa_idx.i.i68, align 8, !alias.scope !1912, !noalias !1911
  %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71 = load i64, ptr %.sroa.6.i.i54, align 8, !noalias !1918
  store i64 %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71, ptr %.sroa.6.0..sroa_idx.i.i70, align 8, !alias.scope !1912, !noalias !1911
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i54)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57

bb.bd:                                            ; preds = %bb.av
  %i.dq = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57 unwind label %.loopexit

bb.be:                                            ; preds = %bb.av
end_hunk_6
begin_hunk_7_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsRTNtNtNtNtB6_10operations15universal_query16collection_query29CollectionQueryResolveRequestNtNtB19_23shard_selector_internal21ShardSelectorInternalEINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB4_13fetch_vectors16ReferencedPointsINtNtCsexYYUdYSQU6_5alloc3vec3VecNCINvMs_B4W_B4U_13fetch_vectorsNCNCNvMs4_NtNtB6_10collection15distance_matrixNtB6M_10Collection20search_points_matrix0s4_0NCNCB6C_s4_00E0ERSB12_NCNCINvB4W_32resolve_referenced_vectors_batchB6A_B83_B13_E00NCB8r_s_0NCB8r_s0_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %i.be = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !1976, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.be, -1
  br i1 %.not.i, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1977
  call void @llvm.experimental.noalias.scope.decl(metadata !1978)
  call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  %i.bf = add nsw i64 %i.be, -2
  %.inv.i.i = icmp samesign ult i64 %i.be, 2
  %i.bg = select i1 %.inv.i.i, i64 2, i64 %i.bf
  switch i64 %i.bg, label %bb.p [
    i64 0, label %bb.q
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  %i.bi = load i64, ptr %i.bh, align 8, !range !11, !alias.scope !1982, !noundef !10
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !1982, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !1982, !noundef !10
  %.not.i.i.i = icmp sgt i8 %i.bn, -1
  %i.bo = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !1982 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !1982 ; 2 uses
  br i1 %.not.i.i.i, label %bb.t, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.bq = atomicrmw add ptr %i.bp, i64 1 monotonic, align 8, !noalias !1983
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !30

.invoke:                                          ; preds = %bb.ak, %bb.af, %bb.u
  %i.bs = phi ptr [ %.val.i.i.i46, %bb.af ], [ %.val.i.i.i, %bb.u ], [ %.val.i.i, %bb.ak ]
  %i.bt = phi i64 [ %.val21.i.i.i47, %bb.af ], [ %.val21.i.i.i, %bb.u ], [ %.val21.i.i, %bb.ak ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.bs, i64 noundef %i.bt) #19
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.s, %bb.u, %bb.t
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.u ], [ inttoptr (i64 16 to ptr), %bb.t ], [ %.val.i.i.i, %bb.s ]
  %i.bu = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  store i64 %i.bu, ptr %.sroa.4.i.i, align 8, !alias.scope !1980, !noalias !1984
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.r
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sroa.6.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.sroa.4.i.i, %bb.r ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.bl, %bb.r ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 1, %bb.r ]
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i.sroa.phi.i.i, align 8, !alias.scope !1980, !noalias !1984
  store i64 %storemerge.i.i.i, ptr %i.ah, align 8, !alias.scope !1978, !noalias !1977
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !1984
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1978, !noalias !1977
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.i.i, align 8, !noalias !1984
  store i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1978, !noalias !1977
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.v:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %bb.o
  invoke fastcc void @_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %..i.i) #18
          to label %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge unwind label %.loopexit

._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge: ; preds = %bb.w
  %.sroa.0105.0.copyload106.pre = load i64, ptr %i.h, align 8, !noalias !1976
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.v, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.0105.0.copyload106 = phi i64 [ %.sroa.0105.0.copyload106.pre, %._RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i_crit_edge ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 3, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5107, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !noalias !1976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1977
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.x:                                             ; preds = %bb.m
  br i1 %i.bd, label %bb.y, label %bb.bi

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  %i.bw = load i64, ptr %i.n, align 8, !range !18, !alias.scope !1985, !noundef !10 ; 4 uses
  %.not.i29 = icmp eq i64 %i.bw, -1
  br i1 %.not.i29, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1986
  call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  %i.bx = add nsw i64 %i.bw, -2
  %.inv.i.i30 = icmp samesign ult i64 %i.bw, 2
  %i.by = select i1 %.inv.i.i30, i64 2, i64 %i.bx
  switch i64 %i.by, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i28)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  call void @llvm.experimental.noalias.scope.decl(metadata !1990)
  %i.bz = load i64, ptr %i.u, align 8, !range !11, !alias.scope !1991, !noundef !10
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load i64, ptr %i.w, align 8, !alias.scope !1991, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

bb.ad:                                            ; preds = %bb.ab
  %i.cc = load i8, ptr %i.ad, align 1, !alias.scope !1991, !noundef !10
  %.not.i.i.i32 = icmp sgt i8 %i.cc, -1
  %.val.i.i.i46 = load ptr, ptr %i.w, align 8, !alias.scope !1991 ; 5 uses
  %.val21.i.i.i47 = load i64, ptr %i.x, align 8, !alias.scope !1991 ; 2 uses
  br i1 %.not.i.i.i32, label %bb.ae, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i48 = icmp eq ptr %.val.i.i.i46, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i48, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cd = getelementptr inbounds i8, ptr %.val.i.i.i46, i64 -16
  %i.ce = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !1992
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35: ; preds = %bb.ad, %bb.af, %bb.ae
  %.sroa.06.0.i.i.i37 = phi ptr [ %.val.i.i.i46, %bb.af ], [ inttoptr (i64 16 to ptr), %bb.ae ], [ %.val.i.i.i46, %bb.ad ]
  %i.cg = ptrtoint ptr %.sroa.06.0.i.i.i37 to i64
  store i64 %i.cg, ptr %.sroa.4.i.i27, align 8, !alias.scope !1989, !noalias !1993
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35, %bb.ac
  %.sink.i.sroa.phi.i.i39 = phi ptr [ %.sroa.6.i.i28, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %.sroa.4.i.i27, %bb.ac ]
  %.sroa.58.0.sink.i.i.i40 = phi i64 [ %.val21.i.i.i47, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ %i.cb, %bb.ac ]
  %storemerge.i.i.i41 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i35 ], [ 1, %bb.ac ]
  store i64 %.sroa.58.0.sink.i.i.i40, ptr %.sink.i.sroa.phi.i.i39, align 8, !alias.scope !1989, !noalias !1993
  store i64 %storemerge.i.i.i41, ptr %i.ac, align 8, !alias.scope !1987, !noalias !1986
  %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i27, align 8, !noalias !1993
  store i64 %.sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.i27.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.4.0..sroa_idx.i.i42, align 8, !alias.scope !1987, !noalias !1986
  %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45 = load i64, ptr %.sroa.6.i.i28, align 8, !noalias !1993
  store i64 %.sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.i28.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i45, ptr %i.ab, align 8, !alias.scope !1987, !noalias !1986
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i27)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i28)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

bb.ag:                                            ; preds = %bb.z
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 unwind label %.loopexit

bb.ah:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1996
  call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  %i.ch = trunc nuw i64 %i.bw to i1               ; 2 uses
  br i1 %i.ch, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ci = load i64, ptr %i.u, align 8, !alias.scope !1999, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.cj = load i8, ptr %i.v, align 1, !alias.scope !1999, !noundef !10
  %.not.i.i87 = icmp sgt i8 %i.cj, -1
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1999 ; 5 uses
  %.val21.i.i = load i64, ptr %i.w, align 8, !alias.scope !1999 ; 2 uses
  br i1 %.not.i.i87, label %4, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

4:                                                ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %4
  %i.ck = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8, !noalias !2000
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.aj, %bb.ak, %4
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i, %bb.aj ]
  store ptr %.sroa.06.0.i.i, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !1997, !noalias !1996
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.ai
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sink.i.sroa.gep16.i, %bb.ai ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.ci, %bb.ai ]
  %i.cn = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.ai ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !1997, !noalias !1996
  store i64 %i.cn, ptr %i.a, align 8, !alias.scope !1997, !noalias !1996
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  %i.co = load i64, ptr %i.x, align 8, !range !11, !alias.scope !2003, !noundef !10
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cq = load i64, ptr %i.y, align 8, !alias.scope !2003, !noundef !10
  br label %.noexc51

bb.am:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.cr = load i8, ptr %i.z, align 1, !alias.scope !2003, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cr, -1
  %.val.i11.i = load ptr, ptr %i.y, align 8, !alias.scope !2003 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.aa, align 8, !alias.scope !2003 ; 2 uses
  br i1 %.not.i1.i, label %bb.an, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cs = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.ct = atomicrmw add ptr %i.cs, i64 1 monotonic, align 8, !noalias !2004
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %bb.ap, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.aq, !noalias !1996

.noexc.i:                                         ; preds = %bb.ap
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.am, %bb.ao, %bb.an
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ao ], [ inttoptr (i64 16 to ptr), %bb.an ], [ %.val.i11.i, %bb.am ]
  %i.cv = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.cv, ptr %.sroa.4.i, align 8, !alias.scope !2001, !noalias !1996
  br label %.noexc51

bb.aq:                                            ; preds = %bb.ap
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !2005, !noalias !1996
  %.not.i.i.i.i.i88 = icmp slt i8 %i.cy, 0
  %or.cond.i.not.i = select i1 %i.ch, i1 true, i1 %.not.i.i.i.i.i88
  br i1 %or.cond.i.not.i, label %.body83thread-pre-split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.body83thread-pre-split unwind label %bb.as, !noalias !1996

bb.as:                                            ; preds = %bb.ar
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !1996
  unreachable

.noexc51:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.al
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i, %bb.al ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cq, %bb.al ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.al ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !2001, !noalias !1996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1995
  store i64 %storemerge.i9.i, ptr %i.ab, align 8, !alias.scope !1994
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !1996
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1994
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !1996
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1994
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1996
  %.sroa.094.0.copyload95.pre = load i64, ptr %i.g, align 8, !noalias !1985
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31: ; preds = %bb.ag, %.noexc51, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38
  %.sroa.094.0.copyload95 = phi i64 [ %.sroa.094.0.copyload95.pre, %.noexc51 ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i38 ], [ 3, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !noalias !1985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1986
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31, %bb.y
  %.sroa.094.0 = phi i64 [ %.sroa.094.0.copyload95, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i31 ], [ -1, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef nonnull align 8 dereferenceable(128) %i.p, i64 128, i1 false)
  store i64 %.sroa.094.0, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  store ptr %i.o, ptr %i.af, align 8
  invoke fastcc void @_RNCNCINvNtNtCsPYQCUnoTxQ_10collection6common13fetch_vectors32resolve_referenced_vectors_batchNCNCNvMs4_NtNtBa_10collection15distance_matrixNtB1F_10Collection20search_points_matrix0s4_0NCNCB1v_s4_00NtNtNtNtBa_10operations15universal_query16collection_query29CollectionQueryResolveRequestE0s0_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef align 8 dereferenceable(48) %3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.ae, ptr noundef nonnull align 8 %i.o)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.da = load i64, ptr %i.m, align 8, !range !29, !noundef !10
  %.not17 = icmp eq i64 %i.da, -1
  br i1 %.not17, label %bb.au, label %bb.bm

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5103)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.599)
  call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  %i.db = load i64, ptr %..i.i, align 8, !range !18, !alias.scope !2006, !noundef !10 ; 3 uses
  %.not.i55 = icmp eq i64 %i.db, -1
  br i1 %.not.i55, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCshMzyYDJGtjv_3api4rest6schema16ShardKeySelectorENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit78, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2007
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  %i.dc = add nsw i64 %i.db, -2
  %.inv.i.i56 = icmp samesign ult i64 %i.db, 2
  %i.dd = select i1 %.inv.i.i56, i64 2, i64 %i.dc
  switch i64 %i.dd, label %bb.aw [
    i64 0, label %bb.ax
    i64 1, label %bb.bd
    i64 2, label %bb.be
  ]

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.de = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i54)
  call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  %i.df = load i64, ptr %i.de, align 8, !range !11, !alias.scope !2012, !noundef !10
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %..i.i, i64 16 ; 2 uses
  br i1 %i.dg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !2012, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

bb.az:                                            ; preds = %bb.ax
  %i.dj = getelementptr inbounds nuw i8, ptr %..i.i, i64 31
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !2012, !noundef !10
  %.not.i.i.i58 = icmp sgt i8 %i.dk, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %..i.i, i64 24
  %.val.i.i.i72 = load ptr, ptr %i.dh, align 8, !alias.scope !2012 ; 5 uses
  %.val21.i.i.i73 = load i64, ptr %i.dl, align 8, !alias.scope !2012 ; 2 uses
  br i1 %.not.i.i.i58, label %bb.ba, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i.i74 = icmp eq ptr %.val.i.i.i72, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i74, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dm = getelementptr inbounds i8, ptr %.val.i.i.i72, i64 -16
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !noalias !2013
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, !prof !30

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i72, i64 noundef %.val21.i.i.i73) #19
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.bc
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61: ; preds = %bb.az, %bb.bb, %bb.ba
  %.sroa.06.0.i.i.i63 = phi ptr [ %.val.i.i.i72, %bb.bb ], [ inttoptr (i64 16 to ptr), %bb.ba ], [ %.val.i.i.i72, %bb.az ]
  %i.dp = ptrtoint ptr %.sroa.06.0.i.i.i63 to i64
  store i64 %i.dp, ptr %.sroa.4.i.i53, align 8, !alias.scope !2010, !noalias !2014
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i64: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61, %bb.ay
  %.sink.i.sroa.phi.i.i65 = phi ptr [ %.sroa.6.i.i54, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %.sroa.4.i.i53, %bb.ay ]
  %.sroa.58.0.sink.i.i.i66 = phi i64 [ %.val21.i.i.i73, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ %i.di, %bb.ay ]
  %storemerge.i.i.i67 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i61 ], [ 1, %bb.ay ]
  store i64 %.sroa.58.0.sink.i.i.i66, ptr %.sink.i.sroa.phi.i.i65, align 8, !alias.scope !2010, !noalias !2014
  store i64 %storemerge.i.i.i67, ptr %i.ag, align 8, !alias.scope !2008, !noalias !2007
  %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69 = load i64, ptr %.sroa.4.i.i53, align 8, !noalias !2014
  store i64 %.sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.i53.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i69, ptr %.sroa.4.0..sroa_idx.i.i68, align 8, !alias.scope !2008, !noalias !2007
  %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71 = load i64, ptr %.sroa.6.i.i54, align 8, !noalias !2014
  store i64 %.sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.i54.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i71, ptr %.sroa.6.0..sroa_idx.i.i70, align 8, !alias.scope !2008, !noalias !2007
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i53)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i54)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57

bb.bd:                                            ; preds = %bb.av
  %i.dq = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i57 unwind label %.loopexit

bb.be:                                            ; preds = %bb.av
end_hunk_7
begin_hunk_8_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtB6_10operations23shard_selector_internal21ShardSelectorInternalEB1Q_INtNtCsexYYUdYSQU6_5alloc3vec3VecB12_EIB33_NCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB3Q_14TableOfContent17core_search_batch0EIB33_B11_ENCNCNvNtNtCsl8OoimOLbh_6qdrant6common5query22do_search_batch_points00NCB5E_s_0NCB5E_s0_0EB5M_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bm = load i64, ptr %i.f, align 8, !range !29, !noundef !10
  %.not13 = icmp eq i64 %i.bm, -1
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %bb.j, %bb.cx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtBM_14TableOfContent17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1f_14TableOfContent17core_search_batch0EECsl8OoimOLbh_6qdrant.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtBT_14TableOfContent17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.q)
          to label %.body unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1f_14TableOfContent17core_search_batch0EECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.l
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtBT_14TableOfContent17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.k, %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1f_14TableOfContent17core_search_batch0EECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

.thread244.loopexit:                              ; preds = %bb.ay, %bb.aa, %bb.q, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit56, %bb.ca
  %.sroa.0.9.ph.ph = phi i1 [ false, %bb.ca ], [ false, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit56 ], [ true, %bb.q ], [ true, %bb.aa ], [ true, %bb.ay ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread232

.thread244.loopexit.split-lp:                     ; preds = %.invoke286, %.invoke
  %.sroa.0.9.ph.ph248 = phi i1 [ true, %.invoke286 ], [ false, %.invoke ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread232

bb.o:                                             ; preds = %bb.cu
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body58

bb.p:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.0203.0.copyload204, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(512) %.sroa.8, i64 512, i1 false)
  %i.bq = load i64, ptr %i.p, align 8, !range !31, !noundef !10
  %.not14 = icmp eq i64 %i.bq, -1
  br i1 %.not14, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = invoke fastcc noundef zeroext i1 @_RNvYNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p)
          to label %bb.ao unwind label %.thread244.loopexit

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  %i.bs = load i64, ptr %i.z, align 8, !range !28, !alias.scope !2092, !noundef !10 ; 4 uses
  %i.bt = icmp ne i64 %i.bs, 6
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nsw i64 %i.bs, -2
  %i.bv = icmp samesign ugt i64 %i.bs, 1
  %i.bw = select i1 %i.bv, i64 %i.bu, i64 4
  switch i64 %i.bw, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.aa
    i64 4, label %bb.ab
    i64 5, label %bb.an
  ]

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  store i64 2, ptr %i.h, align 8, !alias.scope !2091
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.u:                                             ; preds = %bb.r
  store i64 3, ptr %i.h, align 8, !alias.scope !2091
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  %i.bx = load i64, ptr %i.am, align 8, !range !11, !alias.scope !2095, !noundef !10
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = load i64, ptr %i.ap, align 8, !alias.scope !2095, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.x:                                             ; preds = %bb.v
  %i.ca = load i8, ptr %i.av, align 1, !alias.scope !2095, !noundef !10
  %.not.i.i = icmp sgt i8 %i.ca, -1
  %.val.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !2095 ; 5 uses
  %.val21.i.i = load i64, ptr %i.aq, align 8, !alias.scope !2095 ; 2 uses
  br i1 %.not.i.i, label %bb.y, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.y:                                             ; preds = %bb.x
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cc = atomicrmw add ptr %i.cb, i64 1 monotonic, align 8, !noalias !2096
  %i.cd = icmp slt i64 %i.cc, 0
  br i1 %i.cd, label %.invoke286, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.x, %bb.z, %bb.y
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.z ], [ inttoptr (i64 16 to ptr), %bb.y ], [ %.val.i.i, %bb.x ]
  %i.ce = ptrtoint ptr %.sroa.06.0.i.i to i64
  store i64 %i.ce, ptr %.sroa.4.i, align 8, !alias.scope !2093, !noalias !2097
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.w
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.4.i, %bb.w ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.bz, %bb.w ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.w ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !2093, !noalias !2097
  store i64 %storemerge.i.i, ptr %i.aw, align 8, !alias.scope !2091
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !2097
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2091
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !2097
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %i.ax, align 8, !alias.scope !2091
  store i64 4, ptr %i.h, align 8, !alias.scope !2091
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.aa:                                            ; preds = %bb.r
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %.noexc32 unwind label %.thread244.loopexit

.noexc32:                                         ; preds = %bb.aa
  store i64 5, ptr %i.h, align 8, !alias.scope !2091
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ab:                                            ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !2098)
  call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2100
  call void @llvm.experimental.noalias.scope.decl(metadata !2101)
  call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  %i.cf = trunc nuw i64 %i.bs to i1               ; 2 uses
  br i1 %i.cf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cg = load i64, ptr %i.am, align 8, !alias.scope !2103, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i102

bb.ad:                                            ; preds = %bb.ab
  %i.ch = load i8, ptr %i.ao, align 1, !alias.scope !2103, !noundef !10
  %.not.i.i96 = icmp sgt i8 %i.ch, -1
  %.val.i.i109 = load ptr, ptr %i.am, align 8, !alias.scope !2103 ; 5 uses
  %.val21.i.i110 = load i64, ptr %i.ap, align 8, !alias.scope !2103 ; 2 uses
  br i1 %.not.i.i96, label %3, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i99

3:                                                ; preds = %bb.ad
  %.not.i.i.i.i111 = icmp eq ptr %.val.i.i109, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i111, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i99, label %bb.ae

bb.ae:                                            ; preds = %3
  %i.ci = getelementptr inbounds i8, ptr %.val.i.i109, i64 -16
  %i.cj = atomicrmw add ptr %i.ci, i64 1 monotonic, align 8, !noalias !2104
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %.invoke286, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i99, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i99: ; preds = %bb.ad, %bb.ae, %3
  %.sroa.06.0.i.i101 = phi ptr [ %.val.i.i109, %bb.ae ], [ inttoptr (i64 16 to ptr), %3 ], [ %.val.i.i109, %bb.ad ]
  store ptr %.sroa.06.0.i.i101, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !2101, !noalias !2100
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i102

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i102: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i99, %bb.ac
  %.sink.i.sroa.phi.i103 = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i99 ], [ %.sink.i.sroa.gep16.i, %bb.ac ]
  %.sroa.58.0.sink.i.i104 = phi i64 [ %.val21.i.i110, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i99 ], [ %i.cg, %bb.ac ]
  %i.cl = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i99 ], [ 1, %bb.ac ]
  store i64 %.sroa.58.0.sink.i.i104, ptr %.sink.i.sroa.phi.i103, align 8, !alias.scope !2101, !noalias !2100
  store i64 %i.cl, ptr %i.c, align 8, !alias.scope !2101, !noalias !2100
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i94)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i95)
  call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  %i.cm = load i64, ptr %i.aq, align 8, !range !11, !alias.scope !2107, !noundef !10
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i102
  %i.co = load i64, ptr %i.ar, align 8, !alias.scope !2107, !noundef !10
  br label %.noexc33

bb.ag:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i102
  %i.cp = load i8, ptr %i.as, align 1, !alias.scope !2107, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cp, -1
  %.val.i11.i = load ptr, ptr %i.ar, align 8, !alias.scope !2107 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.at, align 8, !alias.scope !2107 ; 2 uses
  br i1 %.not.i1.i, label %bb.ah, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cq = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cr = atomicrmw add ptr %i.cq, i64 1 monotonic, align 8, !noalias !2108
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %bb.aj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.ak, !noalias !2100

.noexc.i:                                         ; preds = %bb.aj
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.ag, %bb.ai, %bb.ah
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ai ], [ inttoptr (i64 16 to ptr), %bb.ah ], [ %.val.i11.i, %bb.ag ]
  %i.ct = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.ct, ptr %.sroa.4.i94, align 8, !alias.scope !2105, !noalias !2100
  br label %.noexc33

bb.ak:                                            ; preds = %bb.aj
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !2109, !noalias !2100
  %.not.i.i.i.i.i = icmp slt i8 %i.cw, 0
  %or.cond.i.not.i = select i1 %i.cf, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.not.i, label %.thread232, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.thread232 unwind label %bb.am, !noalias !2100

bb.am:                                            ; preds = %bb.al
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2100
  unreachable

.noexc33:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.af
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i95, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i94, %bb.af ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.co, %bb.af ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.af ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !2105, !noalias !2100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2099
  store i64 %storemerge.i9.i, ptr %i.ax, align 8, !alias.scope !2098
  %.sroa.4.i94.0..sroa.4.i94.0..sroa.4.i94.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i106 = load i64, ptr %.sroa.4.i94, align 8, !noalias !2100
  store i64 %.sroa.4.i94.0..sroa.4.i94.0..sroa.4.i94.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i106, ptr %.sroa.4.0..sroa_idx.i105, align 8, !alias.scope !2098
  %.sroa.6.i95.0..sroa.6.i95.0..sroa.6.i95.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i108 = load i64, ptr %.sroa.6.i95, align 8, !noalias !2100
  store i64 %.sroa.6.i95.0..sroa.6.i95.0..sroa.6.i95.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i108, ptr %.sroa.6.0..sroa_idx.i107, align 8, !alias.scope !2098
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i94)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2100
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.an:                                            ; preds = %bb.r
  %i.cy = load i32, ptr %i.am, align 8, !alias.scope !2092, !noundef !10
  store i32 %i.cy, ptr %i.aw, align 8, !alias.scope !2091
  store i64 7, ptr %i.h, align 8, !alias.scope !2091
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ao:                                            ; preds = %bb.q
  br i1 %i.br, label %bb.ap, label %bb.cq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  %i.cz = load i64, ptr %i.p, align 8, !range !28, !alias.scope !2111, !noundef !10 ; 4 uses
  %i.da = icmp ne i64 %i.cz, 6
  call void @llvm.assume(i1 %i.da)
  %i.db = add nsw i64 %i.cz, -2
  %i.dc = icmp samesign ugt i64 %i.cz, 1
  %i.dd = select i1 %i.dc, i64 %i.db, i64 4
  switch i64 %i.dd, label %bb.aq [
    i64 0, label %bb.ar
    i64 1, label %bb.as
    i64 2, label %bb.at
    i64 3, label %bb.ay
    i64 4, label %bb.az
    i64 5, label %bb.bl
  ]

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ap
  store i64 2, ptr %i.k, align 8, !alias.scope !2110
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit56

bb.as:                                            ; preds = %bb.ap
  store i64 3, ptr %i.k, align 8, !alias.scope !2110
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit56

bb.at:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i34)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i35)
  call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  %i.de = load i64, ptr %i.aa, align 8, !range !11, !alias.scope !2114, !noundef !10
  %i.df = trunc nuw i64 %i.de to i1
  br i1 %i.df, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dg = load i64, ptr %i.ad, align 8, !alias.scope !2114, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i42

bb.av:                                            ; preds = %bb.at
  %i.dh = load i8, ptr %i.aj, align 1, !alias.scope !2114, !noundef !10
  %.not.i.i36 = icmp sgt i8 %i.dh, -1
  %.val.i.i50 = load ptr, ptr %i.ad, align 8, !alias.scope !2114 ; 5 uses
  %.val21.i.i51 = load i64, ptr %i.ae, align 8, !alias.scope !2114 ; 2 uses
  br i1 %.not.i.i36, label %bb.aw, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i39

bb.aw:                                            ; preds = %bb.av
  %.not.i.i.i.i52 = icmp eq ptr %.val.i.i50, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i52, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i39, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.di = getelementptr inbounds i8, ptr %.val.i.i50, i64 -16
  %i.dj = atomicrmw add ptr %i.di, i64 1 monotonic, align 8, !noalias !2115
  %i.dk = icmp slt i64 %i.dj, 0
  br i1 %i.dk, label %.invoke286, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i39, !prof !30

.invoke286:                                       ; preds = %bb.bc, %bb.ax, %bb.ae, %bb.z
  %i.dl = phi ptr [ %.val.i.i109, %bb.ae ], [ %.val.i.i50, %bb.ax ], [ %.val.i.i, %bb.z ], [ %.val.i.i150, %bb.bc ]
  %i.dm = phi i64 [ %.val21.i.i110, %bb.ae ], [ %.val21.i.i51, %bb.ax ], [ %.val21.i.i, %bb.z ], [ %.val21.i.i151, %bb.bc ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.dl, i64 noundef %i.dm) #19
          to label %.cont287 unwind label %.thread244.loopexit.split-lp

.cont287:                                         ; preds = %.invoke286
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i39: ; preds = %bb.av, %bb.ax, %bb.aw
  %.sroa.06.0.i.i41 = phi ptr [ %.val.i.i50, %bb.ax ], [ inttoptr (i64 16 to ptr), %bb.aw ], [ %.val.i.i50, %bb.av ]
  %i.dn = ptrtoint ptr %.sroa.06.0.i.i41 to i64
  store i64 %i.dn, ptr %.sroa.4.i34, align 8, !alias.scope !2112, !noalias !2116
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i42

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i42: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i39, %bb.au
  %.sink.i.sroa.phi.i43 = phi ptr [ %.sroa.6.i35, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i39 ], [ %.sroa.4.i34, %bb.au ]
  %.sroa.58.0.sink.i.i44 = phi i64 [ %.val21.i.i51, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i39 ], [ %i.dg, %bb.au ]
  %storemerge.i.i45 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i39 ], [ 1, %bb.au ]
  store i64 %.sroa.58.0.sink.i.i44, ptr %.sink.i.sroa.phi.i43, align 8, !alias.scope !2112, !noalias !2116
  store i64 %storemerge.i.i45, ptr %i.ab, align 8, !alias.scope !2110
  %.sroa.4.i34.0..sroa.4.i34.0..sroa.4.i34.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i47 = load i64, ptr %.sroa.4.i34, align 8, !noalias !2116
  store i64 %.sroa.4.i34.0..sroa.4.i34.0..sroa.4.i34.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i47, ptr %.sroa.4.0..sroa_idx.i46, align 8, !alias.scope !2110
  %.sroa.6.i35.0..sroa.6.i35.0..sroa.6.i35.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i49 = load i64, ptr %.sroa.6.i35, align 8, !noalias !2116
  store i64 %.sroa.6.i35.0..sroa.6.i35.0..sroa.6.i35.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i49, ptr %i.ai, align 8, !alias.scope !2110
  store i64 4, ptr %i.k, align 8, !alias.scope !2110
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i34)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i35)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit56

bb.ay:                                            ; preds = %bb.ap
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %.noexc54 unwind label %.thread244.loopexit

.noexc54:                                         ; preds = %bb.ay
  store i64 5, ptr %i.k, align 8, !alias.scope !2110
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit56

bb.az:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2119
  call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  call void @llvm.experimental.noalias.scope.decl(metadata !2121)
  %i.do = trunc nuw i64 %i.cz to i1               ; 2 uses
  br i1 %i.do, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dp = load i64, ptr %i.aa, align 8, !alias.scope !2122, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i127

bb.bb:                                            ; preds = %bb.az
  %i.dq = load i8, ptr %i.ac, align 1, !alias.scope !2122, !noundef !10
  %.not.i.i121 = icmp sgt i8 %i.dq, -1
  %.val.i.i150 = load ptr, ptr %i.aa, align 8, !alias.scope !2122 ; 5 uses
  %.val21.i.i151 = load i64, ptr %i.ad, align 8, !alias.scope !2122 ; 2 uses
  br i1 %.not.i.i121, label %4, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i124

4:                                                ; preds = %bb.bb
  %.not.i.i.i.i152 = icmp eq ptr %.val.i.i150, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i152, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i124, label %bb.bc

bb.bc:                                            ; preds = %4
  %i.dr = getelementptr inbounds i8, ptr %.val.i.i150, i64 -16
  %i.ds = atomicrmw add ptr %i.dr, i64 1 monotonic, align 8, !noalias !2123
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %.invoke286, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i124, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i124: ; preds = %bb.bb, %bb.bc, %4
  %.sroa.06.0.i.i126 = phi ptr [ %.val.i.i150, %bb.bc ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i150, %bb.bb ]
  store ptr %.sroa.06.0.i.i126, ptr %.sink.i.sroa.gep16.i120, align 8, !alias.scope !2120, !noalias !2119
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i127

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i127: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i124, %bb.ba
  %.sink.i.sroa.phi.i128 = phi ptr [ %.sink.i.sroa.gep.i119, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i124 ], [ %.sink.i.sroa.gep16.i120, %bb.ba ]
  %.sroa.58.0.sink.i.i129 = phi i64 [ %.val21.i.i151, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i124 ], [ %i.dp, %bb.ba ]
  %i.du = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i124 ], [ 1, %bb.ba ]
  store i64 %.sroa.58.0.sink.i.i129, ptr %.sink.i.sroa.phi.i128, align 8, !alias.scope !2120, !noalias !2119
  store i64 %i.du, ptr %i.b, align 8, !alias.scope !2120, !noalias !2119
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i117)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i118)
  call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  %i.dv = load i64, ptr %i.ae, align 8, !range !11, !alias.scope !2126, !noundef !10
  %i.dw = trunc nuw i64 %i.dv to i1
  br i1 %i.dw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i127
  %i.dx = load i64, ptr %i.af, align 8, !alias.scope !2126, !noundef !10
  br label %.noexc55

bb.be:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i127
  %i.dy = load i8, ptr %i.ag, align 1, !alias.scope !2126, !noundef !10
  %.not.i1.i130 = icmp sgt i8 %i.dy, -1
  %.val.i11.i143 = load ptr, ptr %i.af, align 8, !alias.scope !2126 ; 5 uses
  %.val21.i12.i144 = load i64, ptr %i.ah, align 8, !alias.scope !2126 ; 2 uses
  br i1 %.not.i1.i130, label %bb.bf, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i133

bb.bf:                                            ; preds = %bb.be
  %.not.i.i.i13.i145 = icmp eq ptr %.val.i11.i143, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i145, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i133, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dz = getelementptr inbounds i8, ptr %.val.i11.i143, i64 -16
  %i.ea = atomicrmw add ptr %i.dz, i64 1 monotonic, align 8, !noalias !2127
  %i.eb = icmp slt i64 %i.ea, 0
  br i1 %i.eb, label %bb.bh, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i133, !prof !30

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i143, i64 noundef %.val21.i12.i144) #19
          to label %.noexc.i149 unwind label %bb.bi, !noalias !2119

.noexc.i149:                                      ; preds = %bb.bh
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i133: ; preds = %bb.be, %bb.bg, %bb.bf
  %.sroa.06.0.i6.i135 = phi ptr [ %.val.i11.i143, %bb.bg ], [ inttoptr (i64 16 to ptr), %bb.bf ], [ %.val.i11.i143, %bb.be ]
  %i.ec = ptrtoint ptr %.sroa.06.0.i6.i135 to i64
  store i64 %i.ec, ptr %.sroa.4.i117, align 8, !alias.scope !2124, !noalias !2119
  br label %.noexc55

bb.bi:                                            ; preds = %bb.bh
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !2128, !noalias !2119
  %.not.i.i.i.i.i146 = icmp slt i8 %i.ef, 0
  %or.cond.i.not.i147 = select i1 %i.do, i1 true, i1 %.not.i.i.i.i.i146
  br i1 %or.cond.i.not.i147, label %.thread232, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i120)
          to label %.thread232 unwind label %bb.bk, !noalias !2119

bb.bk:                                            ; preds = %bb.bj
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2119
  unreachable

.noexc55:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i133, %bb.bd
  %.sink.i7.sroa.phi.i136 = phi ptr [ %.sroa.6.i118, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i133 ], [ %.sroa.4.i117, %bb.bd ]
  %.sroa.58.0.sink.i8.i137 = phi i64 [ %.val21.i12.i144, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i133 ], [ %i.dx, %bb.bd ]
  %storemerge.i9.i138 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i133 ], [ 1, %bb.bd ]
  store i64 %.sroa.58.0.sink.i8.i137, ptr %.sink.i7.sroa.phi.i136, align 8, !alias.scope !2124, !noalias !2119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2118
  store i64 %storemerge.i9.i138, ptr %i.ai, align 8, !alias.scope !2117
  %.sroa.4.i117.0..sroa.4.i117.0..sroa.4.i117.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i140 = load i64, ptr %.sroa.4.i117, align 8, !noalias !2119
  store i64 %.sroa.4.i117.0..sroa.4.i117.0..sroa.4.i117.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i140, ptr %.sroa.4.0..sroa_idx.i139, align 8, !alias.scope !2117
  %.sroa.6.i118.0..sroa.6.i118.0..sroa.6.i118.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i142 = load i64, ptr %.sroa.6.i118, align 8, !noalias !2119
  store i64 %.sroa.6.i118.0..sroa.6.i118.0..sroa.6.i118.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i142, ptr %.sroa.6.0..sroa_idx.i141, align 8, !alias.scope !2117
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i117)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i118)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2119
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit56

bb.bl:                                            ; preds = %bb.ap
  %i.eh = load i32, ptr %i.aa, align 8, !alias.scope !2111, !noundef !10
  store i32 %i.eh, ptr %i.ab, align 8, !alias.scope !2110
  store i64 7, ptr %i.k, align 8, !alias.scope !2110
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit56

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit56: ; preds = %bb.bl, %.noexc55, %.noexc54, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i42, %bb.as, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  store ptr %i.q, ptr %i.al, align 8
  invoke fastcc void @_RNCNCNvNtNtCsl8OoimOLbh_6qdrant6common5query22do_search_batch_points0s0_0B9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.m, ptr noalias nofree noundef align 8 dereferenceable(64) %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ak, ptr noundef nonnull align 8 %i.q)
          to label %bb.bm unwind label %.thread244.loopexit

bb.bm:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ei = load i64, ptr %i.m, align 8, !range !29, !noundef !10
  %.not15 = icmp eq i64 %i.ei, -1
  br i1 %.not15, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %i.n)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.z) #15
          to label %.body58 unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEECsl8OoimOLbh_6qdrant.exit unwind label %bb.c

bb.bq:                                            ; preds = %bb.bo
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.br:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  %i.el = load i64, ptr %i.z, align 8, !range !28, !alias.scope !2130, !noundef !10 ; 4 uses
  %i.em = icmp ne i64 %i.el, 6
  call void @llvm.assume(i1 %i.em)
  %i.en = add nsw i64 %i.el, -2
  %i.eo = icmp samesign ugt i64 %i.el, 1
  %i.ep = select i1 %i.eo, i64 %i.en, i64 4
  switch i64 %i.ep, label %bb.bs [
    i64 0, label %bb.bt
    i64 1, label %bb.bu
    i64 2, label %bb.bv
    i64 3, label %bb.ca
    i64 4, label %bb.cb
    i64 5, label %bb.cn
  ]

bb.bs:                                            ; preds = %bb.br
  unreachable

bb.bt:                                            ; preds = %bb.br
  store i64 2, ptr %i.i, align 8, !alias.scope !2129
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit82

bb.bu:                                            ; preds = %bb.br
  store i64 3, ptr %i.i, align 8, !alias.scope !2129
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit82

bb.bv:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i60)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i61)
  call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  %i.eq = load i64, ptr %i.am, align 8, !range !11, !alias.scope !2133, !noundef !10
  %i.er = trunc nuw i64 %i.eq to i1
  br i1 %i.er, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.es = load i64, ptr %i.ap, align 8, !alias.scope !2133, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i68

bb.bx:                                            ; preds = %bb.bv
  %i.et = load i8, ptr %i.av, align 1, !alias.scope !2133, !noundef !10
  %.not.i.i62 = icmp sgt i8 %i.et, -1
  %.val.i.i76 = load ptr, ptr %i.ap, align 8, !alias.scope !2133 ; 5 uses
  %.val21.i.i77 = load i64, ptr %i.aq, align 8, !alias.scope !2133 ; 2 uses
  br i1 %.not.i.i62, label %bb.by, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i65

bb.by:                                            ; preds = %bb.bx
  %.not.i.i.i.i78 = icmp eq ptr %.val.i.i76, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i78, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i65, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.eu = getelementptr inbounds i8, ptr %.val.i.i76, i64 -16
  %i.ev = atomicrmw add ptr %i.eu, i64 1 monotonic, align 8, !noalias !2134
  %i.ew = icmp slt i64 %i.ev, 0
  br i1 %i.ew, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i65, !prof !30

.invoke:                                          ; preds = %bb.ce, %bb.bz
  %i.ex = phi ptr [ %.val.i.i76, %bb.bz ], [ %.val.i.i192, %bb.ce ]
  %i.ey = phi i64 [ %.val21.i.i77, %bb.bz ], [ %.val21.i.i193, %bb.ce ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ex, i64 noundef %i.ey) #19
          to label %.cont unwind label %.thread244.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i65: ; preds = %bb.bx, %bb.bz, %bb.by
  %.sroa.06.0.i.i67 = phi ptr [ %.val.i.i76, %bb.bz ], [ inttoptr (i64 16 to ptr), %bb.by ], [ %.val.i.i76, %bb.bx ]
  %i.ez = ptrtoint ptr %.sroa.06.0.i.i67 to i64
  store i64 %i.ez, ptr %.sroa.4.i60, align 8, !alias.scope !2131, !noalias !2135
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i68

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i68: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i65, %bb.bw
  %.sink.i.sroa.phi.i69 = phi ptr [ %.sroa.6.i61, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i65 ], [ %.sroa.4.i60, %bb.bw ]
  %.sroa.58.0.sink.i.i70 = phi i64 [ %.val21.i.i77, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i65 ], [ %i.es, %bb.bw ]
  %storemerge.i.i71 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i65 ], [ 1, %bb.bw ]
  store i64 %.sroa.58.0.sink.i.i70, ptr %.sink.i.sroa.phi.i69, align 8, !alias.scope !2131, !noalias !2135
  store i64 %storemerge.i.i71, ptr %i.an, align 8, !alias.scope !2129
  %.sroa.4.i60.0..sroa.4.i60.0..sroa.4.i60.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i73 = load i64, ptr %.sroa.4.i60, align 8, !noalias !2135
  store i64 %.sroa.4.i60.0..sroa.4.i60.0..sroa.4.i60.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i73, ptr %.sroa.4.0..sroa_idx.i72, align 8, !alias.scope !2129
  %.sroa.6.i61.0..sroa.6.i61.0..sroa.6.i61.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i75 = load i64, ptr %.sroa.6.i61, align 8, !noalias !2135
  store i64 %.sroa.6.i61.0..sroa.6.i61.0..sroa.6.i61.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i75, ptr %i.au, align 8, !alias.scope !2129
  store i64 4, ptr %i.i, align 8, !alias.scope !2129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i60)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i61)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit82

bb.ca:                                            ; preds = %bb.br
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %.noexc80 unwind label %.thread244.loopexit

.noexc80:                                         ; preds = %bb.ca
  store i64 5, ptr %i.i, align 8, !alias.scope !2129
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit82

bb.cb:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2138
  call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  %i.fa = trunc nuw i64 %i.el to i1               ; 2 uses
  br i1 %i.fa, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.fb = load i64, ptr %i.am, align 8, !alias.scope !2141, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i169

bb.cd:                                            ; preds = %bb.cb
  %i.fc = load i8, ptr %i.ao, align 1, !alias.scope !2141, !noundef !10
  %.not.i.i163 = icmp sgt i8 %i.fc, -1
  %.val.i.i192 = load ptr, ptr %i.am, align 8, !alias.scope !2141 ; 5 uses
  %.val21.i.i193 = load i64, ptr %i.ap, align 8, !alias.scope !2141 ; 2 uses
  br i1 %.not.i.i163, label %5, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i166

5:                                                ; preds = %bb.cd
  %.not.i.i.i.i194 = icmp eq ptr %.val.i.i192, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i194, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i166, label %bb.ce

bb.ce:                                            ; preds = %5
  %i.fd = getelementptr inbounds i8, ptr %.val.i.i192, i64 -16
  %i.fe = atomicrmw add ptr %i.fd, i64 1 monotonic, align 8, !noalias !2142
  %i.ff = icmp slt i64 %i.fe, 0
  br i1 %i.ff, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i166, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i166: ; preds = %bb.cd, %bb.ce, %5
  %.sroa.06.0.i.i168 = phi ptr [ %.val.i.i192, %bb.ce ], [ inttoptr (i64 16 to ptr), %5 ], [ %.val.i.i192, %bb.cd ]
  store ptr %.sroa.06.0.i.i168, ptr %.sink.i.sroa.gep16.i162, align 8, !alias.scope !2139, !noalias !2138
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i169

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i169: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i166, %bb.cc
  %.sink.i.sroa.phi.i170 = phi ptr [ %.sink.i.sroa.gep.i161, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i166 ], [ %.sink.i.sroa.gep16.i162, %bb.cc ]
  %.sroa.58.0.sink.i.i171 = phi i64 [ %.val21.i.i193, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i166 ], [ %i.fb, %bb.cc ]
  %i.fg = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i166 ], [ 1, %bb.cc ]
  store i64 %.sroa.58.0.sink.i.i171, ptr %.sink.i.sroa.phi.i170, align 8, !alias.scope !2139, !noalias !2138
  store i64 %i.fg, ptr %i.a, align 8, !alias.scope !2139, !noalias !2138
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i159)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i160)
  call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  %i.fh = load i64, ptr %i.aq, align 8, !range !11, !alias.scope !2145, !noundef !10
  %i.fi = trunc nuw i64 %i.fh to i1
  br i1 %i.fi, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i169
  %i.fj = load i64, ptr %i.ar, align 8, !alias.scope !2145, !noundef !10
  br label %.noexc81

bb.cg:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i169
  %i.fk = load i8, ptr %i.as, align 1, !alias.scope !2145, !noundef !10
  %.not.i1.i172 = icmp sgt i8 %i.fk, -1
  %.val.i11.i185 = load ptr, ptr %i.ar, align 8, !alias.scope !2145 ; 5 uses
  %.val21.i12.i186 = load i64, ptr %i.at, align 8, !alias.scope !2145 ; 2 uses
  br i1 %.not.i1.i172, label %bb.ch, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i175

bb.ch:                                            ; preds = %bb.cg
  %.not.i.i.i13.i187 = icmp eq ptr %.val.i11.i185, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i187, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i175, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fl = getelementptr inbounds i8, ptr %.val.i11.i185, i64 -16
  %i.fm = atomicrmw add ptr %i.fl, i64 1 monotonic, align 8, !noalias !2146
  %i.fn = icmp slt i64 %i.fm, 0
  br i1 %i.fn, label %bb.cj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i175, !prof !30

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i185, i64 noundef %.val21.i12.i186) #19
          to label %.noexc.i191 unwind label %bb.ck, !noalias !2138

.noexc.i191:                                      ; preds = %bb.cj
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i175: ; preds = %bb.cg, %bb.ci, %bb.ch
  %.sroa.06.0.i6.i177 = phi ptr [ %.val.i11.i185, %bb.ci ], [ inttoptr (i64 16 to ptr), %bb.ch ], [ %.val.i11.i185, %bb.cg ]
  %i.fo = ptrtoint ptr %.sroa.06.0.i6.i177 to i64
  store i64 %i.fo, ptr %.sroa.4.i159, align 8, !alias.scope !2143, !noalias !2138
  br label %.noexc81

bb.ck:                                            ; preds = %bb.cj
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !2147, !noalias !2138
  %.not.i.i.i.i.i188 = icmp slt i8 %i.fr, 0
  %or.cond.i.not.i189 = select i1 %i.fa, i1 true, i1 %.not.i.i.i.i.i188
  br i1 %or.cond.i.not.i189, label %.thread232, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i162)
          to label %.thread232 unwind label %bb.cm, !noalias !2138

bb.cm:                                            ; preds = %bb.cl
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2138
  unreachable

.noexc81:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i175, %bb.cf
  %.sink.i7.sroa.phi.i178 = phi ptr [ %.sroa.6.i160, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i175 ], [ %.sroa.4.i159, %bb.cf ]
  %.sroa.58.0.sink.i8.i179 = phi i64 [ %.val21.i12.i186, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i175 ], [ %i.fj, %bb.cf ]
  %storemerge.i9.i180 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i175 ], [ 1, %bb.cf ]
  store i64 %.sroa.58.0.sink.i8.i179, ptr %.sink.i7.sroa.phi.i178, align 8, !alias.scope !2143, !noalias !2138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2137
  store i64 %storemerge.i9.i180, ptr %i.au, align 8, !alias.scope !2136
  %.sroa.4.i159.0..sroa.4.i159.0..sroa.4.i159.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i182 = load i64, ptr %.sroa.4.i159, align 8, !noalias !2138
  store i64 %.sroa.4.i159.0..sroa.4.i159.0..sroa.4.i159.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i182, ptr %.sroa.4.0..sroa_idx.i181, align 8, !alias.scope !2136
  %.sroa.6.i160.0..sroa.6.i160.0..sroa.6.i160.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i184 = load i64, ptr %.sroa.6.i160, align 8, !noalias !2138
  store i64 %.sroa.6.i160.0..sroa.6.i160.0..sroa.6.i160.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i184, ptr %.sroa.6.0..sroa_idx.i183, align 8, !alias.scope !2136
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i159)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i160)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2138
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit82

bb.cn:                                            ; preds = %bb.br
  %i.ft = load i32, ptr %i.am, align 8, !alias.scope !2130, !noundef !10
  store i32 %i.ft, ptr %i.an, align 8, !alias.scope !2129
  store i64 7, ptr %i.i, align 8, !alias.scope !2129
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit82

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit82: ; preds = %bb.cn, %.noexc81, %.noexc80, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i68, %bb.bu, %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fu = load i64, ptr %i.p, align 8, !range !31, !alias.scope !2148, !noundef !10
  %i.fv = icmp eq i64 %i.fu, -1
  br i1 %i.fv, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit82
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %bb.cp unwind label %.thread

.thread:                                          ; preds = %bb.co
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  br label %.thread232

bb.cp:                                            ; preds = %bb.co, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.r, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8
  store i64 0, ptr %i.t, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.ao, %bb.cp, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.g, ptr noundef nonnull align 8 dereferenceable(520) %i.n, i64 520, i1 false)
  store ptr %i.r, ptr %i.ay, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.d, ptr noundef nonnull align 8 dereferenceable(472) %i.n, i64 472, i1 false)
  %i.fx = load i64, ptr %i.t, align 8, !alias.scope !2151, !noundef !10 ; 3 uses
  %i.fy = load i64, ptr %i.r, align 8, !range !21, !alias.scope !2151, !noundef !10
  %i.fz = icmp eq i64 %i.fx, %i.fy
  br i1 %i.fz, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.cu unwind label %bb.cs, !noalias !2152

bb.cs:                                            ; preds = %bb.cr
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(472) %i.d) #15
          to label %.body.i unwind label %bb.ct, !noalias !2153

bb.ct:                                            ; preds = %bb.cs
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2153
  unreachable

.body.i:                                          ; preds = %bb.cs
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.az) #15
          to label %.body58 unwind label %bb.cv, !noalias !2154

bb.cu:                                            ; preds = %bb.cr, %bb.cq
  %i.gc = load ptr, ptr %i.s, align 8, !alias.scope !2151, !nonnull !10, !noundef !10
  %i.gd = getelementptr inbounds nuw [472 x i8], ptr %i.gc, i64 %i.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.gd, ptr noundef nonnull align 8 dereferenceable(472) %i.d, i64 472, i1 false), !noalias !2153
  %i.ge = add i64 %i.fx, 1
  store i64 %i.ge, ptr %i.t, align 8, !alias.scope !2151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2150
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.az)
          to label %bb.cw unwind label %bb.o

bb.cv:                                            ; preds = %.body.i
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2154
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit88 unwind label %bb.b

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.an, %.noexc33, %.noexc32, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cq

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.gg = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !2155, !nonnull !10, !noundef !10
  %i.gh = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2155, !nonnull !10, !noundef !10 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.gg
  br i1 %i.gi, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit88: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.gj = load i64, ptr %i.p, align 8, !range !31, !noundef !10
  %.not22 = icmp eq i64 %i.gj, -1
  br i1 %.not22, label %bb.l, label %bb.cx

bb.cx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit88
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.p)
          to label %bb.l unwind label %bb.cz

bb.cy:                                            ; preds = %bb.db, %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit
  %.pn23 = phi { ptr, i32 } [ %i.gk, %bb.cz ], [ %.pn20, %bb.db ], [ %.pn20, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit ] ; 2 uses
  %.sroa.0.12 = phi i1 [ false, %bb.cz ], [ %.sroa.0.2, %bb.db ], [ %.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1f_14TableOfContent17core_search_batch0EECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.q) #15
          to label %.body30 unwind label %bb.da
end_hunk_8
begin_hunk_9_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsTNtNtNtB6_10operations5types23DiscoverRequestInternalNtNtB16_23shard_selector_internal21ShardSelectorInternalEB1S_INtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEIB2S_NCNvMNtNtB6_10collection6searchNtB4p_10Collection17core_search_batch0EIB2S_B11_ENCNCINvNtB6_9discovery14discover_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB6l_14TableOfContent14discover_batch00NCNvMB6l_B7g_18get_collection_opt0E0s1_0NCB5C_s2_0NCB5C_s3_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91

bb.i:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bt = load i64, ptr %i.h, align 8, !range !29, !noundef !10
  %.not13 = icmp eq i64 %i.bt, -1
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91

bb.m:                                             ; preds = %bb.k, %bb.dd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types23DiscoverRequestInternalNtNtB1u_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86
  %.sroa.0.7 = phi i8 [ %.sroa.0.11, %bb.dd ], [ %.sroa.0.11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types23DiscoverRequestInternalNtNtB1u_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86 ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBM_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBT_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %.body31 unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBT_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB1f_10Collection17core_search_batch0EECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.p:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91: ; preds = %bb.l, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB1f_10Collection17core_search_batch0EECsl8OoimOLbh_6qdrant.exit, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

.thread245.loopexit:                              ; preds = %bb.ba, %bb.ac, %bb.s, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57, %bb.bz
  %.sroa.0.9.ph.ph = phi i8 [ 0, %bb.bz ], [ 0, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57 ], [ 1, %bb.s ], [ 1, %bb.ac ], [ 1, %bb.ba ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

.thread245.loopexit.split-lp:                     ; preds = %.invoke271, %.invoke
  %.sroa.0.9.ph.ph249 = phi i8 [ 1, %.invoke271 ], [ 0, %.invoke ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

bb.q:                                             ; preds = %bb.cy
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread229

bb.r:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types23DiscoverRequestInternalNtNtB11_23shard_selector_internal21ShardSelectorInternalEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.0202.0.copyload203, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(592) %.sroa.8, i64 592, i1 false)
  %i.bx = load i64, ptr %i.r, align 8, !range !31, !noundef !10
  %.not14 = icmp eq i64 %i.bx, -1
  br i1 %.not14, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = invoke fastcc noundef zeroext i1 @_RNvYNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r)
          to label %bb.aq unwind label %.thread245.loopexit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  %i.bz = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2228, !noundef !10 ; 4 uses
  %i.ca = icmp ne i64 %i.bz, 6
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nsw i64 %i.bz, -2
  %i.cc = icmp samesign ugt i64 %i.bz, 1
  %i.cd = select i1 %i.cc, i64 %i.cb, i64 4
  switch i64 %i.cd, label %bb.u [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.x
    i64 3, label %bb.ac
    i64 4, label %bb.ad
    i64 5, label %bb.ap
  ]

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  store i64 2, ptr %i.j, align 8, !alias.scope !2227
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %bb.t
  store i64 3, ptr %i.j, align 8, !alias.scope !2227
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  %i.ce = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2231, !noundef !10
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = load i64, ptr %i.ar, align 8, !alias.scope !2231, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.ax, align 1, !alias.scope !2231, !noundef !10
  %.not.i.i = icmp sgt i8 %i.ch, -1
  %.val.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !2231 ; 5 uses
  %.val21.i.i = load i64, ptr %i.as, align 8, !alias.scope !2231 ; 2 uses
  br i1 %.not.i.i, label %bb.aa, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cj = atomicrmw add ptr %i.ci, i64 1 monotonic, align 8, !noalias !2232
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.z, %bb.ab, %bb.aa
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ab ], [ inttoptr (i64 16 to ptr), %bb.aa ], [ %.val.i.i, %bb.z ]
  %i.cl = ptrtoint ptr %.sroa.06.0.i.i to i64
  store i64 %i.cl, ptr %.sroa.4.i, align 8, !alias.scope !2229, !noalias !2233
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.y
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.4.i, %bb.y ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.cg, %bb.y ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.y ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !2229, !noalias !2233
  store i64 %storemerge.i.i, ptr %i.ay, align 8, !alias.scope !2227
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !2233
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2227
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !2233
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %i.az, align 8, !alias.scope !2227
  store i64 4, ptr %i.j, align 8, !alias.scope !2227
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.t
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc33 unwind label %.thread245.loopexit

.noexc33:                                         ; preds = %bb.ac
  store i64 5, ptr %i.j, align 8, !alias.scope !2227
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ad:                                            ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  call void @llvm.experimental.noalias.scope.decl(metadata !2235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2236
  call void @llvm.experimental.noalias.scope.decl(metadata !2237)
  call void @llvm.experimental.noalias.scope.decl(metadata !2238)
  %i.cm = trunc nuw i64 %i.bz to i1               ; 2 uses
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load i64, ptr %i.ao, align 8, !alias.scope !2239, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

bb.af:                                            ; preds = %bb.ad
  %i.co = load i8, ptr %i.aq, align 1, !alias.scope !2239, !noundef !10
  %.not.i.i94 = icmp sgt i8 %i.co, -1
  %.val.i.i107 = load ptr, ptr %i.ao, align 8, !alias.scope !2239 ; 5 uses
  %.val21.i.i108 = load i64, ptr %i.ar, align 8, !alias.scope !2239 ; 2 uses
  br i1 %.not.i.i94, label %5, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97

5:                                                ; preds = %bb.af
  %.not.i.i.i.i109 = icmp eq ptr %.val.i.i107, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i109, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, label %bb.ag

bb.ag:                                            ; preds = %5
  %i.cp = getelementptr inbounds i8, ptr %.val.i.i107, i64 -16
  %i.cq = atomicrmw add ptr %i.cp, i64 1 monotonic, align 8, !noalias !2240
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97: ; preds = %bb.af, %bb.ag, %5
  %.sroa.06.0.i.i99 = phi ptr [ %.val.i.i107, %bb.ag ], [ inttoptr (i64 16 to ptr), %5 ], [ %.val.i.i107, %bb.af ]
  store ptr %.sroa.06.0.i.i99, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !2237, !noalias !2236
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, %bb.ae
  %.sink.i.sroa.phi.i101 = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %.sink.i.sroa.gep16.i, %bb.ae ]
  %.sroa.58.0.sink.i.i102 = phi i64 [ %.val21.i.i108, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %i.cn, %bb.ae ]
  %i.cs = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ 1, %bb.ae ]
  store i64 %.sroa.58.0.sink.i.i102, ptr %.sink.i.sroa.phi.i101, align 8, !alias.scope !2237, !noalias !2236
  store i64 %i.cs, ptr %i.c, align 8, !alias.scope !2237, !noalias !2236
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %i.ct = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2243, !noundef !10
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cv = load i64, ptr %i.at, align 8, !alias.scope !2243, !noundef !10
  br label %.noexc34

bb.ai:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cw = load i8, ptr %i.au, align 1, !alias.scope !2243, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cw, -1
  %.val.i11.i = load ptr, ptr %i.at, align 8, !alias.scope !2243 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.av, align 8, !alias.scope !2243 ; 2 uses
  br i1 %.not.i1.i, label %bb.aj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cy = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8, !noalias !2244
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.al, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.am, !noalias !2236

.noexc.i:                                         ; preds = %bb.al
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.ai, %bb.ak, %bb.aj
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %bb.aj ], [ %.val.i11.i, %bb.ai ]
  %i.da = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.da, ptr %.sroa.4.i92, align 8, !alias.scope !2241, !noalias !2236
  br label %.noexc34

bb.am:                                            ; preds = %bb.al
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !2245, !noalias !2236
  %.not.i.i.i.i.i = icmp slt i8 %i.dd, 0
  %or.cond.i.not.i = select i1 %i.cm, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.not.i, label %.thread233, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.thread233 unwind label %bb.ao, !noalias !2236

bb.ao:                                            ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2236
  unreachable

.noexc34:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.ah
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i93, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i92, %bb.ah ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cv, %bb.ah ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.ah ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !2241, !noalias !2236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2235
  store i64 %storemerge.i9.i, ptr %i.az, align 8, !alias.scope !2234
  %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104 = load i64, ptr %.sroa.4.i92, align 8, !noalias !2236
  store i64 %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104, ptr %.sroa.4.0..sroa_idx.i103, align 8, !alias.scope !2234
  %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106 = load i64, ptr %.sroa.6.i93, align 8, !noalias !2236
  store i64 %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106, ptr %.sroa.6.0..sroa_idx.i105, align 8, !alias.scope !2234
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2236
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %bb.t
  %i.df = load i32, ptr %i.ao, align 8, !alias.scope !2228, !noundef !10
  store i32 %i.df, ptr %i.ay, align 8, !alias.scope !2227
  store i64 7, ptr %i.j, align 8, !alias.scope !2227
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.aq:                                            ; preds = %bb.s
  br i1 %i.by, label %bb.ar, label %bb.cp

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !2246)
  call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  %i.dg = load i64, ptr %i.r, align 8, !range !28, !alias.scope !2247, !noundef !10 ; 4 uses
  %i.dh = icmp ne i64 %i.dg, 6
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nsw i64 %i.dg, -2
  %i.dj = icmp samesign ugt i64 %i.dg, 1
  %i.dk = select i1 %i.dj, i64 %i.di, i64 4
  switch i64 %i.dk, label %bb.as [
    i64 0, label %bb.at
    i64 1, label %bb.au
    i64 2, label %bb.av
    i64 3, label %bb.ba
    i64 4, label %bb.bb
    i64 5, label %bb.bn
  ]

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 2, ptr %i.m, align 8, !alias.scope !2246
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.au:                                            ; preds = %bb.ar
  store i64 3, ptr %i.m, align 8, !alias.scope !2246
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i36)
  call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  %i.dl = load i64, ptr %i.ac, align 8, !range !11, !alias.scope !2250, !noundef !10
  %i.dm = trunc nuw i64 %i.dl to i1
  br i1 %i.dm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dn = load i64, ptr %i.af, align 8, !alias.scope !2250, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

bb.ax:                                            ; preds = %bb.av
  %i.do = load i8, ptr %i.al, align 1, !alias.scope !2250, !noundef !10
  %.not.i.i37 = icmp sgt i8 %i.do, -1
  %.val.i.i51 = load ptr, ptr %i.af, align 8, !alias.scope !2250 ; 5 uses
  %.val21.i.i52 = load i64, ptr %i.ag, align 8, !alias.scope !2250 ; 2 uses
  br i1 %.not.i.i37, label %bb.ay, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i.i53 = icmp eq ptr %.val.i.i51, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i53, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dp = getelementptr inbounds i8, ptr %.val.i.i51, i64 -16
  %i.dq = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !2251
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, !prof !30

.invoke271:                                       ; preds = %bb.be, %bb.az, %bb.ag, %bb.ab
  %i.ds = phi ptr [ %.val.i.i107, %bb.ag ], [ %.val.i.i51, %bb.az ], [ %.val.i.i, %bb.ab ], [ %.val.i.i148, %bb.be ]
  %i.dt = phi i64 [ %.val21.i.i108, %bb.ag ], [ %.val21.i.i52, %bb.az ], [ %.val21.i.i, %bb.ab ], [ %.val21.i.i149, %bb.be ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ds, i64 noundef %i.dt) #19
          to label %.cont272 unwind label %.thread245.loopexit.split-lp

.cont272:                                         ; preds = %.invoke271
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40: ; preds = %bb.ax, %bb.az, %bb.ay
  %.sroa.06.0.i.i42 = phi ptr [ %.val.i.i51, %bb.az ], [ inttoptr (i64 16 to ptr), %bb.ay ], [ %.val.i.i51, %bb.ax ]
  %i.du = ptrtoint ptr %.sroa.06.0.i.i42 to i64
  store i64 %i.du, ptr %.sroa.4.i35, align 8, !alias.scope !2248, !noalias !2252
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, %bb.aw
  %.sink.i.sroa.phi.i44 = phi ptr [ %.sroa.6.i36, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %.sroa.4.i35, %bb.aw ]
  %.sroa.58.0.sink.i.i45 = phi i64 [ %.val21.i.i52, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %i.dn, %bb.aw ]
  %storemerge.i.i46 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ 1, %bb.aw ]
  store i64 %.sroa.58.0.sink.i.i45, ptr %.sink.i.sroa.phi.i44, align 8, !alias.scope !2248, !noalias !2252
  store i64 %storemerge.i.i46, ptr %i.ad, align 8, !alias.scope !2246
  %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48 = load i64, ptr %.sroa.4.i35, align 8, !noalias !2252
  store i64 %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48, ptr %.sroa.4.0..sroa_idx.i47, align 8, !alias.scope !2246
  %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50 = load i64, ptr %.sroa.6.i36, align 8, !noalias !2252
  store i64 %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50, ptr %i.ak, align 8, !alias.scope !2246
  store i64 4, ptr %i.m, align 8, !alias.scope !2246
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i36)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.ba:                                            ; preds = %bb.ar
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc55 unwind label %.thread245.loopexit

.noexc55:                                         ; preds = %bb.ba
  store i64 5, ptr %i.m, align 8, !alias.scope !2246
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bb:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  call void @llvm.experimental.noalias.scope.decl(metadata !2254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2255
  call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  %i.dv = trunc nuw i64 %i.dg to i1               ; 2 uses
  br i1 %i.dv, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dw = load i64, ptr %i.ac, align 8, !alias.scope !2258, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

bb.bd:                                            ; preds = %bb.bb
  %i.dx = load i8, ptr %i.ae, align 1, !alias.scope !2258, !noundef !10
  %.not.i.i119 = icmp sgt i8 %i.dx, -1
  %.val.i.i148 = load ptr, ptr %i.ac, align 8, !alias.scope !2258 ; 5 uses
  %.val21.i.i149 = load i64, ptr %i.af, align 8, !alias.scope !2258 ; 2 uses
  br i1 %.not.i.i119, label %6, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122

6:                                                ; preds = %bb.bd
  %.not.i.i.i.i150 = icmp eq ptr %.val.i.i148, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i150, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, label %bb.be

bb.be:                                            ; preds = %6
  %i.dy = getelementptr inbounds i8, ptr %.val.i.i148, i64 -16
  %i.dz = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !noalias !2259
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122: ; preds = %bb.bd, %bb.be, %6
  %.sroa.06.0.i.i124 = phi ptr [ %.val.i.i148, %bb.be ], [ inttoptr (i64 16 to ptr), %6 ], [ %.val.i.i148, %bb.bd ]
  store ptr %.sroa.06.0.i.i124, ptr %.sink.i.sroa.gep16.i118, align 8, !alias.scope !2256, !noalias !2255
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, %bb.bc
  %.sink.i.sroa.phi.i126 = phi ptr [ %.sink.i.sroa.gep.i117, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %.sink.i.sroa.gep16.i118, %bb.bc ]
  %.sroa.58.0.sink.i.i127 = phi i64 [ %.val21.i.i149, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %i.dw, %bb.bc ]
  %i.eb = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ 1, %bb.bc ]
  store i64 %.sroa.58.0.sink.i.i127, ptr %.sink.i.sroa.phi.i126, align 8, !alias.scope !2256, !noalias !2255
  store i64 %i.eb, ptr %i.b, align 8, !alias.scope !2256, !noalias !2255
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  call void @llvm.experimental.noalias.scope.decl(metadata !2261)
  %i.ec = load i64, ptr %i.ag, align 8, !range !11, !alias.scope !2262, !noundef !10
  %i.ed = trunc nuw i64 %i.ec to i1
  br i1 %i.ed, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ee = load i64, ptr %i.ah, align 8, !alias.scope !2262, !noundef !10
  br label %.noexc56

bb.bg:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ef = load i8, ptr %i.ai, align 1, !alias.scope !2262, !noundef !10
  %.not.i1.i128 = icmp sgt i8 %i.ef, -1
  %.val.i11.i141 = load ptr, ptr %i.ah, align 8, !alias.scope !2262 ; 5 uses
  %.val21.i12.i142 = load i64, ptr %i.aj, align 8, !alias.scope !2262 ; 2 uses
  br i1 %.not.i1.i128, label %bb.bh, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i.i13.i143 = icmp eq ptr %.val.i11.i141, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i143, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eg = getelementptr inbounds i8, ptr %.val.i11.i141, i64 -16
  %i.eh = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8, !noalias !2263
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.bj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, !prof !30

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i141, i64 noundef %.val21.i12.i142) #19
          to label %.noexc.i147 unwind label %bb.bk, !noalias !2255

.noexc.i147:                                      ; preds = %bb.bj
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131: ; preds = %bb.bg, %bb.bi, %bb.bh
  %.sroa.06.0.i6.i133 = phi ptr [ %.val.i11.i141, %bb.bi ], [ inttoptr (i64 16 to ptr), %bb.bh ], [ %.val.i11.i141, %bb.bg ]
  %i.ej = ptrtoint ptr %.sroa.06.0.i6.i133 to i64
  store i64 %i.ej, ptr %.sroa.4.i115, align 8, !alias.scope !2260, !noalias !2255
  br label %.noexc56

bb.bk:                                            ; preds = %bb.bj
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !2264, !noalias !2255
  %.not.i.i.i.i.i144 = icmp slt i8 %i.em, 0
  %or.cond.i.not.i145 = select i1 %i.dv, i1 true, i1 %.not.i.i.i.i.i144
  br i1 %or.cond.i.not.i145, label %.thread233, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i118)
          to label %.thread233 unwind label %bb.bm, !noalias !2255

bb.bm:                                            ; preds = %bb.bl
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2255
  unreachable

.noexc56:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, %bb.bf
  %.sink.i7.sroa.phi.i134 = phi ptr [ %.sroa.6.i116, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %.sroa.4.i115, %bb.bf ]
  %.sroa.58.0.sink.i8.i135 = phi i64 [ %.val21.i12.i142, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %i.ee, %bb.bf ]
  %storemerge.i9.i136 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ 1, %bb.bf ]
  store i64 %.sroa.58.0.sink.i8.i135, ptr %.sink.i7.sroa.phi.i134, align 8, !alias.scope !2260, !noalias !2255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2254
  store i64 %storemerge.i9.i136, ptr %i.ak, align 8, !alias.scope !2253
  %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138 = load i64, ptr %.sroa.4.i115, align 8, !noalias !2255
  store i64 %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138, ptr %.sroa.4.0..sroa_idx.i137, align 8, !alias.scope !2253
  %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140 = load i64, ptr %.sroa.6.i116, align 8, !noalias !2255
  store i64 %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140, ptr %.sroa.6.0..sroa_idx.i139, align 8, !alias.scope !2253
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2255
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bn:                                            ; preds = %bb.ar
  %i.eo = load i32, ptr %i.ac, align 8, !alias.scope !2247, !noundef !10
  store i32 %i.eo, ptr %i.ad, align 8, !alias.scope !2246
  store i64 7, ptr %i.m, align 8, !alias.scope !2246
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57: ; preds = %bb.bn, %.noexc56, %.noexc55, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43, %bb.au, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  store ptr %i.s, ptr %i.an, align 8
  invoke fastcc void @_RNCNCINvNtCsPYQCUnoTxQ_10collection9discovery14discover_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB16_14TableOfContent14discover_batch00NCNvMB16_B21_18get_collection_opt0E0s3_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef align 8 dereferenceable(40) %4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am, ptr noundef nonnull align 8 %i.s)
          to label %bb.bo unwind label %.thread245.loopexit

bb.bo:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ep = load i64, ptr %i.o, align 8, !range !29, !noundef !10
  %.not15 = icmp eq i64 %i.ep, -1
  br i1 %.not15, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsPYQCUnoTxQ_10collection10operations5types23DiscoverRequestInternalNtNtBG_23shard_selector_internal21ShardSelectorInternalEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(600) %i.p)
          to label %bb.da unwind label %bb.d

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !2265)
  call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  %i.eq = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2266, !noundef !10 ; 4 uses
  %i.er = icmp ne i64 %i.eq, 6
  call void @llvm.assume(i1 %i.er)
  %i.es = add nsw i64 %i.eq, -2
  %i.et = icmp samesign ugt i64 %i.eq, 1
  %i.eu = select i1 %i.et, i64 %i.es, i64 4
  switch i64 %i.eu, label %bb.br [
    i64 0, label %bb.bs
    i64 1, label %bb.bt
    i64 2, label %bb.bu
    i64 3, label %bb.bz
    i64 4, label %bb.ca
    i64 5, label %bb.cm
  ]

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  store i64 2, ptr %i.k, align 8, !alias.scope !2265
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bt:                                            ; preds = %bb.bq
  store i64 3, ptr %i.k, align 8, !alias.scope !2265
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i59)
  call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  call void @llvm.experimental.noalias.scope.decl(metadata !2268)
  %i.ev = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2269, !noundef !10
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ex = load i64, ptr %i.ar, align 8, !alias.scope !2269, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

bb.bw:                                            ; preds = %bb.bu
  %i.ey = load i8, ptr %i.ax, align 1, !alias.scope !2269, !noundef !10
  %.not.i.i60 = icmp sgt i8 %i.ey, -1
  %.val.i.i74 = load ptr, ptr %i.ar, align 8, !alias.scope !2269 ; 5 uses
  %.val21.i.i75 = load i64, ptr %i.as, align 8, !alias.scope !2269 ; 2 uses
  br i1 %.not.i.i60, label %bb.bx, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i.i76 = icmp eq ptr %.val.i.i74, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i76, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ez = getelementptr inbounds i8, ptr %.val.i.i74, i64 -16
  %i.fa = atomicrmw add ptr %i.ez, i64 1 monotonic, align 8, !noalias !2270
  %i.fb = icmp slt i64 %i.fa, 0
  br i1 %i.fb, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, !prof !30

.invoke:                                          ; preds = %bb.cd, %bb.by
  %i.fc = phi ptr [ %.val.i.i74, %bb.by ], [ %.val.i.i190, %bb.cd ]
  %i.fd = phi i64 [ %.val21.i.i75, %bb.by ], [ %.val21.i.i191, %bb.cd ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.fc, i64 noundef %i.fd) #19
          to label %.cont unwind label %.thread245.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63: ; preds = %bb.bw, %bb.by, %bb.bx
  %.sroa.06.0.i.i65 = phi ptr [ %.val.i.i74, %bb.by ], [ inttoptr (i64 16 to ptr), %bb.bx ], [ %.val.i.i74, %bb.bw ]
  %i.fe = ptrtoint ptr %.sroa.06.0.i.i65 to i64
  store i64 %i.fe, ptr %.sroa.4.i58, align 8, !alias.scope !2267, !noalias !2271
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, %bb.bv
  %.sink.i.sroa.phi.i67 = phi ptr [ %.sroa.6.i59, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %.sroa.4.i58, %bb.bv ]
  %.sroa.58.0.sink.i.i68 = phi i64 [ %.val21.i.i75, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %i.ex, %bb.bv ]
  %storemerge.i.i69 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ 1, %bb.bv ]
  store i64 %.sroa.58.0.sink.i.i68, ptr %.sink.i.sroa.phi.i67, align 8, !alias.scope !2267, !noalias !2271
  store i64 %storemerge.i.i69, ptr %i.ap, align 8, !alias.scope !2265
  %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71 = load i64, ptr %.sroa.4.i58, align 8, !noalias !2271
  store i64 %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71, ptr %.sroa.4.0..sroa_idx.i70, align 8, !alias.scope !2265
  %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73 = load i64, ptr %.sroa.6.i59, align 8, !noalias !2271
  store i64 %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73, ptr %i.aw, align 8, !alias.scope !2265
  store i64 4, ptr %i.k, align 8, !alias.scope !2265
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i59)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bz:                                            ; preds = %bb.bq
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc78 unwind label %.thread245.loopexit

.noexc78:                                         ; preds = %bb.bz
  store i64 5, ptr %i.k, align 8, !alias.scope !2265
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.ca:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2274
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  %i.ff = trunc nuw i64 %i.eq to i1               ; 2 uses
  br i1 %i.ff, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fg = load i64, ptr %i.ao, align 8, !alias.scope !2277, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

bb.cc:                                            ; preds = %bb.ca
  %i.fh = load i8, ptr %i.aq, align 1, !alias.scope !2277, !noundef !10
  %.not.i.i161 = icmp sgt i8 %i.fh, -1
  %.val.i.i190 = load ptr, ptr %i.ao, align 8, !alias.scope !2277 ; 5 uses
  %.val21.i.i191 = load i64, ptr %i.ar, align 8, !alias.scope !2277 ; 2 uses
  br i1 %.not.i.i161, label %7, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164

7:                                                ; preds = %bb.cc
  %.not.i.i.i.i192 = icmp eq ptr %.val.i.i190, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i192, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, label %bb.cd

bb.cd:                                            ; preds = %7
  %i.fi = getelementptr inbounds i8, ptr %.val.i.i190, i64 -16
  %i.fj = atomicrmw add ptr %i.fi, i64 1 monotonic, align 8, !noalias !2278
  %i.fk = icmp slt i64 %i.fj, 0
  br i1 %i.fk, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164: ; preds = %bb.cc, %bb.cd, %7
  %.sroa.06.0.i.i166 = phi ptr [ %.val.i.i190, %bb.cd ], [ inttoptr (i64 16 to ptr), %7 ], [ %.val.i.i190, %bb.cc ]
  store ptr %.sroa.06.0.i.i166, ptr %.sink.i.sroa.gep16.i160, align 8, !alias.scope !2275, !noalias !2274
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, %bb.cb
  %.sink.i.sroa.phi.i168 = phi ptr [ %.sink.i.sroa.gep.i159, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %.sink.i.sroa.gep16.i160, %bb.cb ]
  %.sroa.58.0.sink.i.i169 = phi i64 [ %.val21.i.i191, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %i.fg, %bb.cb ]
  %i.fl = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ 1, %bb.cb ]
  store i64 %.sroa.58.0.sink.i.i169, ptr %.sink.i.sroa.phi.i168, align 8, !alias.scope !2275, !noalias !2274
  store i64 %i.fl, ptr %i.a, align 8, !alias.scope !2275, !noalias !2274
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  %i.fm = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2281, !noundef !10
  %i.fn = trunc nuw i64 %i.fm to i1
  br i1 %i.fn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fo = load i64, ptr %i.at, align 8, !alias.scope !2281, !noundef !10
  br label %.noexc79

bb.cf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fp = load i8, ptr %i.au, align 1, !alias.scope !2281, !noundef !10
  %.not.i1.i170 = icmp sgt i8 %i.fp, -1
  %.val.i11.i183 = load ptr, ptr %i.at, align 8, !alias.scope !2281 ; 5 uses
  %.val21.i12.i184 = load i64, ptr %i.av, align 8, !alias.scope !2281 ; 2 uses
  br i1 %.not.i1.i170, label %bb.cg, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i13.i185 = icmp eq ptr %.val.i11.i183, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i185, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fq = getelementptr inbounds i8, ptr %.val.i11.i183, i64 -16
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !2282
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.ci, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, !prof !30

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i183, i64 noundef %.val21.i12.i184) #19
          to label %.noexc.i189 unwind label %bb.cj, !noalias !2274

.noexc.i189:                                      ; preds = %bb.ci
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173: ; preds = %bb.cf, %bb.ch, %bb.cg
  %.sroa.06.0.i6.i175 = phi ptr [ %.val.i11.i183, %bb.ch ], [ inttoptr (i64 16 to ptr), %bb.cg ], [ %.val.i11.i183, %bb.cf ]
  %i.ft = ptrtoint ptr %.sroa.06.0.i6.i175 to i64
  store i64 %i.ft, ptr %.sroa.4.i157, align 8, !alias.scope !2279, !noalias !2274
  br label %.noexc79

bb.cj:                                            ; preds = %bb.ci
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !2283, !noalias !2274
  %.not.i.i.i.i.i186 = icmp slt i8 %i.fw, 0
  %or.cond.i.not.i187 = select i1 %i.ff, i1 true, i1 %.not.i.i.i.i.i186
  br i1 %or.cond.i.not.i187, label %.thread233, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i160)
          to label %.thread233 unwind label %bb.cl, !noalias !2274

bb.cl:                                            ; preds = %bb.ck
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2274
  unreachable

.noexc79:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, %bb.ce
  %.sink.i7.sroa.phi.i176 = phi ptr [ %.sroa.6.i158, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %.sroa.4.i157, %bb.ce ]
  %.sroa.58.0.sink.i8.i177 = phi i64 [ %.val21.i12.i184, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %i.fo, %bb.ce ]
  %storemerge.i9.i178 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ 1, %bb.ce ]
  store i64 %.sroa.58.0.sink.i8.i177, ptr %.sink.i7.sroa.phi.i176, align 8, !alias.scope !2279, !noalias !2274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2273
  store i64 %storemerge.i9.i178, ptr %i.aw, align 8, !alias.scope !2272
  %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180 = load i64, ptr %.sroa.4.i157, align 8, !noalias !2274
  store i64 %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180, ptr %.sroa.4.0..sroa_idx.i179, align 8, !alias.scope !2272
  %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182 = load i64, ptr %.sroa.6.i158, align 8, !noalias !2274
  store i64 %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182, ptr %.sroa.6.0..sroa_idx.i181, align 8, !alias.scope !2272
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2274
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.cm:                                            ; preds = %bb.bq
  %i.fy = load i32, ptr %i.ao, align 8, !alias.scope !2266, !noundef !10
  store i32 %i.fy, ptr %i.ap, align 8, !alias.scope !2265
  store i64 7, ptr %i.k, align 8, !alias.scope !2265
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80: ; preds = %bb.cm, %.noexc79, %.noexc78, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66, %bb.bt, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fz = load i64, ptr %i.r, align 8, !range !31, !alias.scope !2284, !noundef !10
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.co unwind label %.thread

.thread:                                          ; preds = %bb.cn
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  br label %.thread233

bb.co:                                            ; preds = %bb.cn, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.t, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8
  store i64 0, ptr %i.v, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.aq, %bb.co, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.i, ptr noundef nonnull align 8 dereferenceable(600) %i.p, i64 600, i1 false)
  store ptr %i.t, ptr %i.ba, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.f, ptr noundef nonnull align 8 dereferenceable(552) %i.p, i64 552, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2286
  %i.gc = load ptr, ptr %i.bb, align 8, !noalias !2286, !nonnull !10, !noundef !10
  %i.gd = load i64, ptr %i.bc, align 8, !noalias !2286, !noundef !10
  invoke void @_RNvNtCsPYQCUnoTxQ_10collection9discovery25discover_into_core_search(ptr noalias nofree noundef nonnull sret([472 x i8]) align 8 captures(none) dereferenceable(472) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.gd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(552) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %3)
          to label %bb.cr unwind label %bb.cq, !noalias !2286

bb.cq:                                            ; preds = %bb.cp
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cv, %bb.cq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ge, %bb.cq ], [ %i.gk, %bb.cv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be) #15
          to label %.thread229 unwind label %bb.cz, !noalias !2287

bb.cr:                                            ; preds = %bb.cp
  %i.gf = load i64, ptr %i.e, align 8, !range !24, !noalias !2286, !noundef !10
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %.sroa.0208.0.copyload209 = load i64, ptr %i.bd, align 8, !noalias !2288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210.0..sroa_idx211, i64 40, i1 false), !noalias !2288
  br label %bb.cy

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.d, ptr noundef nonnull align 8 dereferenceable(472) %i.e, i64 472, i1 false), !noalias !2286
  %i.gh = load i64, ptr %i.v, align 8, !alias.scope !2289, !noundef !10 ; 3 uses
  %i.gi = load i64, ptr %i.t, align 8, !range !21, !alias.scope !2289, !noundef !10
  %i.gj = icmp eq i64 %i.gh, %i.gi
  br i1 %i.gj, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.cx unwind label %bb.cv, !noalias !2290

bb.cv:                                            ; preds = %bb.cu
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(472) %i.d) #15
          to label %.body.i unwind label %bb.cw, !noalias !2291

bb.cw:                                            ; preds = %bb.cv
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2291
  unreachable

bb.cx:                                            ; preds = %bb.cu, %bb.ct
  %i.gm = load ptr, ptr %i.u, align 8, !alias.scope !2289, !nonnull !10, !noundef !10
  %i.gn = getelementptr inbounds nuw [472 x i8], ptr %i.gm, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.gn, ptr noundef nonnull align 8 dereferenceable(472) %i.e, i64 472, i1 false), !noalias !2291
  %i.go = add i64 %i.gh, 1
  store i64 %i.go, ptr %i.v, align 8, !alias.scope !2289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2286
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cs
  %.sroa.0208.0 = phi i64 [ %.sroa.0208.0.copyload209, %bb.cs ], [ -1, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2286
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be)
          to label %_RNCNCINvNtCsPYQCUnoTxQ_10collection9discovery14discover_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB16_14TableOfContent14discover_batch00NCNvMB16_B21_18get_collection_opt0E0s2_0Csl8OoimOLbh_6qdrant.exit unwind label %bb.q

bb.cz:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2287
  unreachable

bb.da:                                            ; preds = %bb.db, %bb.bp
  %.sroa.0.11 = phi i8 [ 0, %bb.bp ], [ 1, %bb.db ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
end_hunk_9
begin_hunk_10_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsTNtNtNtB6_10operations5types23DiscoverRequestInternalNtNtB16_23shard_selector_internal21ShardSelectorInternalEB1S_INtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEIB2S_NCNvMNtNtB6_10collection6searchNtB4p_10Collection17core_search_batch0EIB2S_B11_ENCNCINvNtB6_9discovery14discover_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB6l_14TableOfContent8discover00NCNvMB6l_B7g_18get_collection_opt0E0s1_0NCB5C_s2_0NCB5C_s3_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91

bb.i:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bt = load i64, ptr %i.h, align 8, !range !29, !noundef !10
  %.not13 = icmp eq i64 %i.bt, -1
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91

bb.m:                                             ; preds = %bb.k, %bb.dd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types23DiscoverRequestInternalNtNtB1u_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86
  %.sroa.0.7 = phi i8 [ %.sroa.0.11, %bb.dd ], [ %.sroa.0.11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types23DiscoverRequestInternalNtNtB1u_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86 ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBM_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBT_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %.body31 unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBT_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB1f_10Collection17core_search_batch0EECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.p:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91: ; preds = %bb.l, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB1f_10Collection17core_search_batch0EECsl8OoimOLbh_6qdrant.exit, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

.thread245.loopexit:                              ; preds = %bb.ba, %bb.ac, %bb.s, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57, %bb.bz
  %.sroa.0.9.ph.ph = phi i8 [ 0, %bb.bz ], [ 0, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57 ], [ 1, %bb.s ], [ 1, %bb.ac ], [ 1, %bb.ba ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

.thread245.loopexit.split-lp:                     ; preds = %.invoke271, %.invoke
  %.sroa.0.9.ph.ph249 = phi i8 [ 1, %.invoke271 ], [ 0, %.invoke ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

bb.q:                                             ; preds = %bb.cy
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread229

bb.r:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types23DiscoverRequestInternalNtNtB11_23shard_selector_internal21ShardSelectorInternalEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.0202.0.copyload203, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(592) %.sroa.8, i64 592, i1 false)
  %i.bx = load i64, ptr %i.r, align 8, !range !31, !noundef !10
  %.not14 = icmp eq i64 %i.bx, -1
  br i1 %.not14, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = invoke fastcc noundef zeroext i1 @_RNvYNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r)
          to label %bb.aq unwind label %.thread245.loopexit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  %i.bz = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2365, !noundef !10 ; 4 uses
  %i.ca = icmp ne i64 %i.bz, 6
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nsw i64 %i.bz, -2
  %i.cc = icmp samesign ugt i64 %i.bz, 1
  %i.cd = select i1 %i.cc, i64 %i.cb, i64 4
  switch i64 %i.cd, label %bb.u [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.x
    i64 3, label %bb.ac
    i64 4, label %bb.ad
    i64 5, label %bb.ap
  ]

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  store i64 2, ptr %i.j, align 8, !alias.scope !2364
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %bb.t
  store i64 3, ptr %i.j, align 8, !alias.scope !2364
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2366)
  call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  %i.ce = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2368, !noundef !10
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = load i64, ptr %i.ar, align 8, !alias.scope !2368, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.ax, align 1, !alias.scope !2368, !noundef !10
  %.not.i.i = icmp sgt i8 %i.ch, -1
  %.val.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !2368 ; 5 uses
  %.val21.i.i = load i64, ptr %i.as, align 8, !alias.scope !2368 ; 2 uses
  br i1 %.not.i.i, label %bb.aa, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cj = atomicrmw add ptr %i.ci, i64 1 monotonic, align 8, !noalias !2369
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.z, %bb.ab, %bb.aa
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ab ], [ inttoptr (i64 16 to ptr), %bb.aa ], [ %.val.i.i, %bb.z ]
  %i.cl = ptrtoint ptr %.sroa.06.0.i.i to i64
  store i64 %i.cl, ptr %.sroa.4.i, align 8, !alias.scope !2366, !noalias !2370
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.y
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.4.i, %bb.y ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.cg, %bb.y ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.y ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !2366, !noalias !2370
  store i64 %storemerge.i.i, ptr %i.ay, align 8, !alias.scope !2364
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !2370
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2364
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !2370
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %i.az, align 8, !alias.scope !2364
  store i64 4, ptr %i.j, align 8, !alias.scope !2364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.t
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc33 unwind label %.thread245.loopexit

.noexc33:                                         ; preds = %bb.ac
  store i64 5, ptr %i.j, align 8, !alias.scope !2364
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ad:                                            ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2371)
  call void @llvm.experimental.noalias.scope.decl(metadata !2372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2373
  call void @llvm.experimental.noalias.scope.decl(metadata !2374)
  call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  %i.cm = trunc nuw i64 %i.bz to i1               ; 2 uses
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load i64, ptr %i.ao, align 8, !alias.scope !2376, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

bb.af:                                            ; preds = %bb.ad
  %i.co = load i8, ptr %i.aq, align 1, !alias.scope !2376, !noundef !10
  %.not.i.i94 = icmp sgt i8 %i.co, -1
  %.val.i.i107 = load ptr, ptr %i.ao, align 8, !alias.scope !2376 ; 5 uses
  %.val21.i.i108 = load i64, ptr %i.ar, align 8, !alias.scope !2376 ; 2 uses
  br i1 %.not.i.i94, label %5, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97

5:                                                ; preds = %bb.af
  %.not.i.i.i.i109 = icmp eq ptr %.val.i.i107, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i109, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, label %bb.ag

bb.ag:                                            ; preds = %5
  %i.cp = getelementptr inbounds i8, ptr %.val.i.i107, i64 -16
  %i.cq = atomicrmw add ptr %i.cp, i64 1 monotonic, align 8, !noalias !2377
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97: ; preds = %bb.af, %bb.ag, %5
  %.sroa.06.0.i.i99 = phi ptr [ %.val.i.i107, %bb.ag ], [ inttoptr (i64 16 to ptr), %5 ], [ %.val.i.i107, %bb.af ]
  store ptr %.sroa.06.0.i.i99, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !2374, !noalias !2373
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, %bb.ae
  %.sink.i.sroa.phi.i101 = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %.sink.i.sroa.gep16.i, %bb.ae ]
  %.sroa.58.0.sink.i.i102 = phi i64 [ %.val21.i.i108, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %i.cn, %bb.ae ]
  %i.cs = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ 1, %bb.ae ]
  store i64 %.sroa.58.0.sink.i.i102, ptr %.sink.i.sroa.phi.i101, align 8, !alias.scope !2374, !noalias !2373
  store i64 %i.cs, ptr %i.c, align 8, !alias.scope !2374, !noalias !2373
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  %i.ct = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2380, !noundef !10
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cv = load i64, ptr %i.at, align 8, !alias.scope !2380, !noundef !10
  br label %.noexc34

bb.ai:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cw = load i8, ptr %i.au, align 1, !alias.scope !2380, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cw, -1
  %.val.i11.i = load ptr, ptr %i.at, align 8, !alias.scope !2380 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.av, align 8, !alias.scope !2380 ; 2 uses
  br i1 %.not.i1.i, label %bb.aj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cy = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8, !noalias !2381
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.al, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.am, !noalias !2373

.noexc.i:                                         ; preds = %bb.al
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.ai, %bb.ak, %bb.aj
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %bb.aj ], [ %.val.i11.i, %bb.ai ]
  %i.da = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.da, ptr %.sroa.4.i92, align 8, !alias.scope !2378, !noalias !2373
  br label %.noexc34

bb.am:                                            ; preds = %bb.al
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !2382, !noalias !2373
  %.not.i.i.i.i.i = icmp slt i8 %i.dd, 0
  %or.cond.i.not.i = select i1 %i.cm, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.not.i, label %.thread233, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.thread233 unwind label %bb.ao, !noalias !2373

bb.ao:                                            ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2373
  unreachable

.noexc34:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.ah
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i93, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i92, %bb.ah ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cv, %bb.ah ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.ah ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !2378, !noalias !2373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2372
  store i64 %storemerge.i9.i, ptr %i.az, align 8, !alias.scope !2371
  %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104 = load i64, ptr %.sroa.4.i92, align 8, !noalias !2373
  store i64 %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104, ptr %.sroa.4.0..sroa_idx.i103, align 8, !alias.scope !2371
  %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106 = load i64, ptr %.sroa.6.i93, align 8, !noalias !2373
  store i64 %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106, ptr %.sroa.6.0..sroa_idx.i105, align 8, !alias.scope !2371
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2373
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %bb.t
  %i.df = load i32, ptr %i.ao, align 8, !alias.scope !2365, !noundef !10
  store i32 %i.df, ptr %i.ay, align 8, !alias.scope !2364
  store i64 7, ptr %i.j, align 8, !alias.scope !2364
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.aq:                                            ; preds = %bb.s
  br i1 %i.by, label %bb.ar, label %bb.cp

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  call void @llvm.experimental.noalias.scope.decl(metadata !2384)
  %i.dg = load i64, ptr %i.r, align 8, !range !28, !alias.scope !2384, !noundef !10 ; 4 uses
  %i.dh = icmp ne i64 %i.dg, 6
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nsw i64 %i.dg, -2
  %i.dj = icmp samesign ugt i64 %i.dg, 1
  %i.dk = select i1 %i.dj, i64 %i.di, i64 4
  switch i64 %i.dk, label %bb.as [
    i64 0, label %bb.at
    i64 1, label %bb.au
    i64 2, label %bb.av
    i64 3, label %bb.ba
    i64 4, label %bb.bb
    i64 5, label %bb.bn
  ]

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 2, ptr %i.m, align 8, !alias.scope !2383
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.au:                                            ; preds = %bb.ar
  store i64 3, ptr %i.m, align 8, !alias.scope !2383
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i36)
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  %i.dl = load i64, ptr %i.ac, align 8, !range !11, !alias.scope !2387, !noundef !10
  %i.dm = trunc nuw i64 %i.dl to i1
  br i1 %i.dm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dn = load i64, ptr %i.af, align 8, !alias.scope !2387, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

bb.ax:                                            ; preds = %bb.av
  %i.do = load i8, ptr %i.al, align 1, !alias.scope !2387, !noundef !10
  %.not.i.i37 = icmp sgt i8 %i.do, -1
  %.val.i.i51 = load ptr, ptr %i.af, align 8, !alias.scope !2387 ; 5 uses
  %.val21.i.i52 = load i64, ptr %i.ag, align 8, !alias.scope !2387 ; 2 uses
  br i1 %.not.i.i37, label %bb.ay, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i.i53 = icmp eq ptr %.val.i.i51, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i53, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dp = getelementptr inbounds i8, ptr %.val.i.i51, i64 -16
  %i.dq = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !2388
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, !prof !30

.invoke271:                                       ; preds = %bb.be, %bb.az, %bb.ag, %bb.ab
  %i.ds = phi ptr [ %.val.i.i107, %bb.ag ], [ %.val.i.i51, %bb.az ], [ %.val.i.i, %bb.ab ], [ %.val.i.i148, %bb.be ]
  %i.dt = phi i64 [ %.val21.i.i108, %bb.ag ], [ %.val21.i.i52, %bb.az ], [ %.val21.i.i, %bb.ab ], [ %.val21.i.i149, %bb.be ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ds, i64 noundef %i.dt) #19
          to label %.cont272 unwind label %.thread245.loopexit.split-lp

.cont272:                                         ; preds = %.invoke271
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40: ; preds = %bb.ax, %bb.az, %bb.ay
  %.sroa.06.0.i.i42 = phi ptr [ %.val.i.i51, %bb.az ], [ inttoptr (i64 16 to ptr), %bb.ay ], [ %.val.i.i51, %bb.ax ]
  %i.du = ptrtoint ptr %.sroa.06.0.i.i42 to i64
  store i64 %i.du, ptr %.sroa.4.i35, align 8, !alias.scope !2385, !noalias !2389
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, %bb.aw
  %.sink.i.sroa.phi.i44 = phi ptr [ %.sroa.6.i36, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %.sroa.4.i35, %bb.aw ]
  %.sroa.58.0.sink.i.i45 = phi i64 [ %.val21.i.i52, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %i.dn, %bb.aw ]
  %storemerge.i.i46 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ 1, %bb.aw ]
  store i64 %.sroa.58.0.sink.i.i45, ptr %.sink.i.sroa.phi.i44, align 8, !alias.scope !2385, !noalias !2389
  store i64 %storemerge.i.i46, ptr %i.ad, align 8, !alias.scope !2383
  %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48 = load i64, ptr %.sroa.4.i35, align 8, !noalias !2389
  store i64 %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48, ptr %.sroa.4.0..sroa_idx.i47, align 8, !alias.scope !2383
  %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50 = load i64, ptr %.sroa.6.i36, align 8, !noalias !2389
  store i64 %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50, ptr %i.ak, align 8, !alias.scope !2383
  store i64 4, ptr %i.m, align 8, !alias.scope !2383
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i36)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.ba:                                            ; preds = %bb.ar
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc55 unwind label %.thread245.loopexit

.noexc55:                                         ; preds = %bb.ba
  store i64 5, ptr %i.m, align 8, !alias.scope !2383
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bb:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2392
  call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  %i.dv = trunc nuw i64 %i.dg to i1               ; 2 uses
  br i1 %i.dv, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dw = load i64, ptr %i.ac, align 8, !alias.scope !2395, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

bb.bd:                                            ; preds = %bb.bb
  %i.dx = load i8, ptr %i.ae, align 1, !alias.scope !2395, !noundef !10
  %.not.i.i119 = icmp sgt i8 %i.dx, -1
  %.val.i.i148 = load ptr, ptr %i.ac, align 8, !alias.scope !2395 ; 5 uses
  %.val21.i.i149 = load i64, ptr %i.af, align 8, !alias.scope !2395 ; 2 uses
  br i1 %.not.i.i119, label %6, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122

6:                                                ; preds = %bb.bd
  %.not.i.i.i.i150 = icmp eq ptr %.val.i.i148, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i150, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, label %bb.be

bb.be:                                            ; preds = %6
  %i.dy = getelementptr inbounds i8, ptr %.val.i.i148, i64 -16
  %i.dz = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !noalias !2396
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122: ; preds = %bb.bd, %bb.be, %6
  %.sroa.06.0.i.i124 = phi ptr [ %.val.i.i148, %bb.be ], [ inttoptr (i64 16 to ptr), %6 ], [ %.val.i.i148, %bb.bd ]
  store ptr %.sroa.06.0.i.i124, ptr %.sink.i.sroa.gep16.i118, align 8, !alias.scope !2393, !noalias !2392
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, %bb.bc
  %.sink.i.sroa.phi.i126 = phi ptr [ %.sink.i.sroa.gep.i117, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %.sink.i.sroa.gep16.i118, %bb.bc ]
  %.sroa.58.0.sink.i.i127 = phi i64 [ %.val21.i.i149, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %i.dw, %bb.bc ]
  %i.eb = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ 1, %bb.bc ]
  store i64 %.sroa.58.0.sink.i.i127, ptr %.sink.i.sroa.phi.i126, align 8, !alias.scope !2393, !noalias !2392
  store i64 %i.eb, ptr %i.b, align 8, !alias.scope !2393, !noalias !2392
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  %i.ec = load i64, ptr %i.ag, align 8, !range !11, !alias.scope !2399, !noundef !10
  %i.ed = trunc nuw i64 %i.ec to i1
  br i1 %i.ed, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ee = load i64, ptr %i.ah, align 8, !alias.scope !2399, !noundef !10
  br label %.noexc56

bb.bg:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ef = load i8, ptr %i.ai, align 1, !alias.scope !2399, !noundef !10
  %.not.i1.i128 = icmp sgt i8 %i.ef, -1
  %.val.i11.i141 = load ptr, ptr %i.ah, align 8, !alias.scope !2399 ; 5 uses
  %.val21.i12.i142 = load i64, ptr %i.aj, align 8, !alias.scope !2399 ; 2 uses
  br i1 %.not.i1.i128, label %bb.bh, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i.i13.i143 = icmp eq ptr %.val.i11.i141, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i143, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eg = getelementptr inbounds i8, ptr %.val.i11.i141, i64 -16
  %i.eh = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8, !noalias !2400
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.bj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, !prof !30

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i141, i64 noundef %.val21.i12.i142) #19
          to label %.noexc.i147 unwind label %bb.bk, !noalias !2392

.noexc.i147:                                      ; preds = %bb.bj
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131: ; preds = %bb.bg, %bb.bi, %bb.bh
  %.sroa.06.0.i6.i133 = phi ptr [ %.val.i11.i141, %bb.bi ], [ inttoptr (i64 16 to ptr), %bb.bh ], [ %.val.i11.i141, %bb.bg ]
  %i.ej = ptrtoint ptr %.sroa.06.0.i6.i133 to i64
  store i64 %i.ej, ptr %.sroa.4.i115, align 8, !alias.scope !2397, !noalias !2392
  br label %.noexc56

bb.bk:                                            ; preds = %bb.bj
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !2401, !noalias !2392
  %.not.i.i.i.i.i144 = icmp slt i8 %i.em, 0
  %or.cond.i.not.i145 = select i1 %i.dv, i1 true, i1 %.not.i.i.i.i.i144
  br i1 %or.cond.i.not.i145, label %.thread233, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i118)
          to label %.thread233 unwind label %bb.bm, !noalias !2392

bb.bm:                                            ; preds = %bb.bl
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2392
  unreachable

.noexc56:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, %bb.bf
  %.sink.i7.sroa.phi.i134 = phi ptr [ %.sroa.6.i116, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %.sroa.4.i115, %bb.bf ]
  %.sroa.58.0.sink.i8.i135 = phi i64 [ %.val21.i12.i142, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %i.ee, %bb.bf ]
  %storemerge.i9.i136 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ 1, %bb.bf ]
  store i64 %.sroa.58.0.sink.i8.i135, ptr %.sink.i7.sroa.phi.i134, align 8, !alias.scope !2397, !noalias !2392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2391
  store i64 %storemerge.i9.i136, ptr %i.ak, align 8, !alias.scope !2390
  %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138 = load i64, ptr %.sroa.4.i115, align 8, !noalias !2392
  store i64 %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138, ptr %.sroa.4.0..sroa_idx.i137, align 8, !alias.scope !2390
  %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140 = load i64, ptr %.sroa.6.i116, align 8, !noalias !2392
  store i64 %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140, ptr %.sroa.6.0..sroa_idx.i139, align 8, !alias.scope !2390
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2392
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bn:                                            ; preds = %bb.ar
  %i.eo = load i32, ptr %i.ac, align 8, !alias.scope !2384, !noundef !10
  store i32 %i.eo, ptr %i.ad, align 8, !alias.scope !2383
  store i64 7, ptr %i.m, align 8, !alias.scope !2383
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57: ; preds = %bb.bn, %.noexc56, %.noexc55, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43, %bb.au, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  store ptr %i.s, ptr %i.an, align 8
  invoke fastcc void @_RNCNCINvNtCsPYQCUnoTxQ_10collection9discovery14discover_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB16_14TableOfContent8discover00NCNvMB16_B21_18get_collection_opt0E0s3_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef align 8 dereferenceable(40) %4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am, ptr noundef nonnull align 8 %i.s)
          to label %bb.bo unwind label %.thread245.loopexit

bb.bo:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ep = load i64, ptr %i.o, align 8, !range !29, !noundef !10
  %.not15 = icmp eq i64 %i.ep, -1
  br i1 %.not15, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsPYQCUnoTxQ_10collection10operations5types23DiscoverRequestInternalNtNtBG_23shard_selector_internal21ShardSelectorInternalEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(600) %i.p)
          to label %bb.da unwind label %bb.d

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  %i.eq = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2403, !noundef !10 ; 4 uses
  %i.er = icmp ne i64 %i.eq, 6
  call void @llvm.assume(i1 %i.er)
  %i.es = add nsw i64 %i.eq, -2
  %i.et = icmp samesign ugt i64 %i.eq, 1
  %i.eu = select i1 %i.et, i64 %i.es, i64 4
  switch i64 %i.eu, label %bb.br [
    i64 0, label %bb.bs
    i64 1, label %bb.bt
    i64 2, label %bb.bu
    i64 3, label %bb.bz
    i64 4, label %bb.ca
    i64 5, label %bb.cm
  ]

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  store i64 2, ptr %i.k, align 8, !alias.scope !2402
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bt:                                            ; preds = %bb.bq
  store i64 3, ptr %i.k, align 8, !alias.scope !2402
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i59)
  call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  %i.ev = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2406, !noundef !10
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ex = load i64, ptr %i.ar, align 8, !alias.scope !2406, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

bb.bw:                                            ; preds = %bb.bu
  %i.ey = load i8, ptr %i.ax, align 1, !alias.scope !2406, !noundef !10
  %.not.i.i60 = icmp sgt i8 %i.ey, -1
  %.val.i.i74 = load ptr, ptr %i.ar, align 8, !alias.scope !2406 ; 5 uses
  %.val21.i.i75 = load i64, ptr %i.as, align 8, !alias.scope !2406 ; 2 uses
  br i1 %.not.i.i60, label %bb.bx, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i.i76 = icmp eq ptr %.val.i.i74, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i76, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ez = getelementptr inbounds i8, ptr %.val.i.i74, i64 -16
  %i.fa = atomicrmw add ptr %i.ez, i64 1 monotonic, align 8, !noalias !2407
  %i.fb = icmp slt i64 %i.fa, 0
  br i1 %i.fb, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, !prof !30

.invoke:                                          ; preds = %bb.cd, %bb.by
  %i.fc = phi ptr [ %.val.i.i74, %bb.by ], [ %.val.i.i190, %bb.cd ]
  %i.fd = phi i64 [ %.val21.i.i75, %bb.by ], [ %.val21.i.i191, %bb.cd ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.fc, i64 noundef %i.fd) #19
          to label %.cont unwind label %.thread245.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63: ; preds = %bb.bw, %bb.by, %bb.bx
  %.sroa.06.0.i.i65 = phi ptr [ %.val.i.i74, %bb.by ], [ inttoptr (i64 16 to ptr), %bb.bx ], [ %.val.i.i74, %bb.bw ]
  %i.fe = ptrtoint ptr %.sroa.06.0.i.i65 to i64
  store i64 %i.fe, ptr %.sroa.4.i58, align 8, !alias.scope !2404, !noalias !2408
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, %bb.bv
  %.sink.i.sroa.phi.i67 = phi ptr [ %.sroa.6.i59, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %.sroa.4.i58, %bb.bv ]
  %.sroa.58.0.sink.i.i68 = phi i64 [ %.val21.i.i75, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %i.ex, %bb.bv ]
  %storemerge.i.i69 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ 1, %bb.bv ]
  store i64 %.sroa.58.0.sink.i.i68, ptr %.sink.i.sroa.phi.i67, align 8, !alias.scope !2404, !noalias !2408
  store i64 %storemerge.i.i69, ptr %i.ap, align 8, !alias.scope !2402
  %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71 = load i64, ptr %.sroa.4.i58, align 8, !noalias !2408
  store i64 %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71, ptr %.sroa.4.0..sroa_idx.i70, align 8, !alias.scope !2402
  %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73 = load i64, ptr %.sroa.6.i59, align 8, !noalias !2408
  store i64 %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73, ptr %i.aw, align 8, !alias.scope !2402
  store i64 4, ptr %i.k, align 8, !alias.scope !2402
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i59)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bz:                                            ; preds = %bb.bq
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc78 unwind label %.thread245.loopexit

.noexc78:                                         ; preds = %bb.bz
  store i64 5, ptr %i.k, align 8, !alias.scope !2402
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.ca:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !2409)
  call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2411
  call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  %i.ff = trunc nuw i64 %i.eq to i1               ; 2 uses
  br i1 %i.ff, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fg = load i64, ptr %i.ao, align 8, !alias.scope !2414, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

bb.cc:                                            ; preds = %bb.ca
  %i.fh = load i8, ptr %i.aq, align 1, !alias.scope !2414, !noundef !10
  %.not.i.i161 = icmp sgt i8 %i.fh, -1
  %.val.i.i190 = load ptr, ptr %i.ao, align 8, !alias.scope !2414 ; 5 uses
  %.val21.i.i191 = load i64, ptr %i.ar, align 8, !alias.scope !2414 ; 2 uses
  br i1 %.not.i.i161, label %7, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164

7:                                                ; preds = %bb.cc
  %.not.i.i.i.i192 = icmp eq ptr %.val.i.i190, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i192, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, label %bb.cd

bb.cd:                                            ; preds = %7
  %i.fi = getelementptr inbounds i8, ptr %.val.i.i190, i64 -16
  %i.fj = atomicrmw add ptr %i.fi, i64 1 monotonic, align 8, !noalias !2415
  %i.fk = icmp slt i64 %i.fj, 0
  br i1 %i.fk, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164: ; preds = %bb.cc, %bb.cd, %7
  %.sroa.06.0.i.i166 = phi ptr [ %.val.i.i190, %bb.cd ], [ inttoptr (i64 16 to ptr), %7 ], [ %.val.i.i190, %bb.cc ]
  store ptr %.sroa.06.0.i.i166, ptr %.sink.i.sroa.gep16.i160, align 8, !alias.scope !2412, !noalias !2411
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, %bb.cb
  %.sink.i.sroa.phi.i168 = phi ptr [ %.sink.i.sroa.gep.i159, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %.sink.i.sroa.gep16.i160, %bb.cb ]
  %.sroa.58.0.sink.i.i169 = phi i64 [ %.val21.i.i191, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %i.fg, %bb.cb ]
  %i.fl = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ 1, %bb.cb ]
  store i64 %.sroa.58.0.sink.i.i169, ptr %.sink.i.sroa.phi.i168, align 8, !alias.scope !2412, !noalias !2411
  store i64 %i.fl, ptr %i.a, align 8, !alias.scope !2412, !noalias !2411
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  %i.fm = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2418, !noundef !10
  %i.fn = trunc nuw i64 %i.fm to i1
  br i1 %i.fn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fo = load i64, ptr %i.at, align 8, !alias.scope !2418, !noundef !10
  br label %.noexc79

bb.cf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fp = load i8, ptr %i.au, align 1, !alias.scope !2418, !noundef !10
  %.not.i1.i170 = icmp sgt i8 %i.fp, -1
  %.val.i11.i183 = load ptr, ptr %i.at, align 8, !alias.scope !2418 ; 5 uses
  %.val21.i12.i184 = load i64, ptr %i.av, align 8, !alias.scope !2418 ; 2 uses
  br i1 %.not.i1.i170, label %bb.cg, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i13.i185 = icmp eq ptr %.val.i11.i183, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i185, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fq = getelementptr inbounds i8, ptr %.val.i11.i183, i64 -16
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !2419
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.ci, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, !prof !30

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i183, i64 noundef %.val21.i12.i184) #19
          to label %.noexc.i189 unwind label %bb.cj, !noalias !2411

.noexc.i189:                                      ; preds = %bb.ci
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173: ; preds = %bb.cf, %bb.ch, %bb.cg
  %.sroa.06.0.i6.i175 = phi ptr [ %.val.i11.i183, %bb.ch ], [ inttoptr (i64 16 to ptr), %bb.cg ], [ %.val.i11.i183, %bb.cf ]
  %i.ft = ptrtoint ptr %.sroa.06.0.i6.i175 to i64
  store i64 %i.ft, ptr %.sroa.4.i157, align 8, !alias.scope !2416, !noalias !2411
  br label %.noexc79

bb.cj:                                            ; preds = %bb.ci
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !2420, !noalias !2411
  %.not.i.i.i.i.i186 = icmp slt i8 %i.fw, 0
  %or.cond.i.not.i187 = select i1 %i.ff, i1 true, i1 %.not.i.i.i.i.i186
  br i1 %or.cond.i.not.i187, label %.thread233, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i160)
          to label %.thread233 unwind label %bb.cl, !noalias !2411

bb.cl:                                            ; preds = %bb.ck
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2411
  unreachable

.noexc79:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, %bb.ce
  %.sink.i7.sroa.phi.i176 = phi ptr [ %.sroa.6.i158, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %.sroa.4.i157, %bb.ce ]
  %.sroa.58.0.sink.i8.i177 = phi i64 [ %.val21.i12.i184, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %i.fo, %bb.ce ]
  %storemerge.i9.i178 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ 1, %bb.ce ]
  store i64 %.sroa.58.0.sink.i8.i177, ptr %.sink.i7.sroa.phi.i176, align 8, !alias.scope !2416, !noalias !2411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2410
  store i64 %storemerge.i9.i178, ptr %i.aw, align 8, !alias.scope !2409
  %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180 = load i64, ptr %.sroa.4.i157, align 8, !noalias !2411
  store i64 %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180, ptr %.sroa.4.0..sroa_idx.i179, align 8, !alias.scope !2409
  %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182 = load i64, ptr %.sroa.6.i158, align 8, !noalias !2411
  store i64 %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182, ptr %.sroa.6.0..sroa_idx.i181, align 8, !alias.scope !2409
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2411
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.cm:                                            ; preds = %bb.bq
  %i.fy = load i32, ptr %i.ao, align 8, !alias.scope !2403, !noundef !10
  store i32 %i.fy, ptr %i.ap, align 8, !alias.scope !2402
  store i64 7, ptr %i.k, align 8, !alias.scope !2402
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80: ; preds = %bb.cm, %.noexc79, %.noexc78, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66, %bb.bt, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fz = load i64, ptr %i.r, align 8, !range !31, !alias.scope !2421, !noundef !10
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.co unwind label %.thread

.thread:                                          ; preds = %bb.cn
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  br label %.thread233

bb.co:                                            ; preds = %bb.cn, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.t, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8
  store i64 0, ptr %i.v, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.aq, %bb.co, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.i, ptr noundef nonnull align 8 dereferenceable(600) %i.p, i64 600, i1 false)
  store ptr %i.t, ptr %i.ba, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.f, ptr noundef nonnull align 8 dereferenceable(552) %i.p, i64 552, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2423
  %i.gc = load ptr, ptr %i.bb, align 8, !noalias !2423, !nonnull !10, !noundef !10
  %i.gd = load i64, ptr %i.bc, align 8, !noalias !2423, !noundef !10
  invoke void @_RNvNtCsPYQCUnoTxQ_10collection9discovery25discover_into_core_search(ptr noalias nofree noundef nonnull sret([472 x i8]) align 8 captures(none) dereferenceable(472) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.gd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(552) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %3)
          to label %bb.cr unwind label %bb.cq, !noalias !2423

bb.cq:                                            ; preds = %bb.cp
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cv, %bb.cq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ge, %bb.cq ], [ %i.gk, %bb.cv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be) #15
          to label %.thread229 unwind label %bb.cz, !noalias !2424

bb.cr:                                            ; preds = %bb.cp
  %i.gf = load i64, ptr %i.e, align 8, !range !24, !noalias !2423, !noundef !10
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %.sroa.0208.0.copyload209 = load i64, ptr %i.bd, align 8, !noalias !2425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210.0..sroa_idx211, i64 40, i1 false), !noalias !2425
  br label %bb.cy

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.d, ptr noundef nonnull align 8 dereferenceable(472) %i.e, i64 472, i1 false), !noalias !2423
  %i.gh = load i64, ptr %i.v, align 8, !alias.scope !2426, !noundef !10 ; 3 uses
  %i.gi = load i64, ptr %i.t, align 8, !range !21, !alias.scope !2426, !noundef !10
  %i.gj = icmp eq i64 %i.gh, %i.gi
  br i1 %i.gj, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.cx unwind label %bb.cv, !noalias !2427

bb.cv:                                            ; preds = %bb.cu
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(472) %i.d) #15
          to label %.body.i unwind label %bb.cw, !noalias !2428

bb.cw:                                            ; preds = %bb.cv
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2428
  unreachable

bb.cx:                                            ; preds = %bb.cu, %bb.ct
  %i.gm = load ptr, ptr %i.u, align 8, !alias.scope !2426, !nonnull !10, !noundef !10
  %i.gn = getelementptr inbounds nuw [472 x i8], ptr %i.gm, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.gn, ptr noundef nonnull align 8 dereferenceable(472) %i.e, i64 472, i1 false), !noalias !2428
  %i.go = add i64 %i.gh, 1
  store i64 %i.go, ptr %i.v, align 8, !alias.scope !2426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2423
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cs
  %.sroa.0208.0 = phi i64 [ %.sroa.0208.0.copyload209, %bb.cs ], [ -1, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2423
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be)
          to label %_RNCNCINvNtCsPYQCUnoTxQ_10collection9discovery14discover_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB16_14TableOfContent8discover00NCNvMB16_B21_18get_collection_opt0E0s2_0Csl8OoimOLbh_6qdrant.exit unwind label %bb.q

bb.cz:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2424
  unreachable

bb.da:                                            ; preds = %bb.db, %bb.bp
  %.sroa.0.11 = phi i8 [ 0, %bb.bp ], [ 1, %bb.db ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
end_hunk_10
begin_hunk_11_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsTNtNtNtB6_10operations5types24RecommendRequestInternalNtNtB16_23shard_selector_internal21ShardSelectorInternalEB1T_INtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEIB2T_NCNvMNtNtB6_10collection6searchNtB4q_10Collection17core_search_batch0EIB2T_B11_ENCNCINvNtB6_15recommendations18recommend_batch_byNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB6x_14TableOfContent15recommend_batch00NCNvMB6x_B7s_18get_collection_opt0E0s1_0NCB5D_s2_0NCB5D_s3_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91

bb.i:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bt = load i64, ptr %i.h, align 8, !range !29, !noundef !10
  %.not13 = icmp eq i64 %i.bt, -1
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91

bb.m:                                             ; preds = %bb.k, %bb.dd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types24RecommendRequestInternalNtNtB1u_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86
  %.sroa.0.7 = phi i8 [ %.sroa.0.11, %bb.dd ], [ %.sroa.0.11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types24RecommendRequestInternalNtNtB1u_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86 ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBM_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBT_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %.body31 unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBT_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB1f_10Collection17core_search_batch0EECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.p:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91: ; preds = %bb.l, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB1f_10Collection17core_search_batch0EECsl8OoimOLbh_6qdrant.exit, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

.thread245.loopexit:                              ; preds = %bb.ba, %bb.ac, %bb.s, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57, %bb.bz
  %.sroa.0.9.ph.ph = phi i8 [ 0, %bb.bz ], [ 0, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57 ], [ 1, %bb.s ], [ 1, %bb.ac ], [ 1, %bb.ba ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

.thread245.loopexit.split-lp:                     ; preds = %.invoke271, %.invoke
  %.sroa.0.9.ph.ph249 = phi i8 [ 1, %.invoke271 ], [ 0, %.invoke ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

bb.q:                                             ; preds = %bb.cy
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread229

bb.r:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types24RecommendRequestInternalNtNtB11_23shard_selector_internal21ShardSelectorInternalEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.0202.0.copyload203, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(584) %.sroa.8, i64 584, i1 false)
  %i.bx = load i64, ptr %i.r, align 8, !range !31, !noundef !10
  %.not14 = icmp eq i64 %i.bx, -1
  br i1 %.not14, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = invoke fastcc noundef zeroext i1 @_RNvYNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r)
          to label %bb.aq unwind label %.thread245.loopexit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  %i.bz = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2502, !noundef !10 ; 4 uses
  %i.ca = icmp ne i64 %i.bz, 6
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nsw i64 %i.bz, -2
  %i.cc = icmp samesign ugt i64 %i.bz, 1
  %i.cd = select i1 %i.cc, i64 %i.cb, i64 4
  switch i64 %i.cd, label %bb.u [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.x
    i64 3, label %bb.ac
    i64 4, label %bb.ad
    i64 5, label %bb.ap
  ]

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  store i64 2, ptr %i.j, align 8, !alias.scope !2501
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %bb.t
  store i64 3, ptr %i.j, align 8, !alias.scope !2501
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.ce = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2505, !noundef !10
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = load i64, ptr %i.ar, align 8, !alias.scope !2505, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.ax, align 1, !alias.scope !2505, !noundef !10
  %.not.i.i = icmp sgt i8 %i.ch, -1
  %.val.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !2505 ; 5 uses
  %.val21.i.i = load i64, ptr %i.as, align 8, !alias.scope !2505 ; 2 uses
  br i1 %.not.i.i, label %bb.aa, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cj = atomicrmw add ptr %i.ci, i64 1 monotonic, align 8, !noalias !2506
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.z, %bb.ab, %bb.aa
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ab ], [ inttoptr (i64 16 to ptr), %bb.aa ], [ %.val.i.i, %bb.z ]
  %i.cl = ptrtoint ptr %.sroa.06.0.i.i to i64
  store i64 %i.cl, ptr %.sroa.4.i, align 8, !alias.scope !2503, !noalias !2507
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.y
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.4.i, %bb.y ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.cg, %bb.y ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.y ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !2503, !noalias !2507
  store i64 %storemerge.i.i, ptr %i.ay, align 8, !alias.scope !2501
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !2507
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2501
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !2507
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %i.az, align 8, !alias.scope !2501
  store i64 4, ptr %i.j, align 8, !alias.scope !2501
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.t
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc33 unwind label %.thread245.loopexit

.noexc33:                                         ; preds = %bb.ac
  store i64 5, ptr %i.j, align 8, !alias.scope !2501
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ad:                                            ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2510
  call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  %i.cm = trunc nuw i64 %i.bz to i1               ; 2 uses
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load i64, ptr %i.ao, align 8, !alias.scope !2513, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

bb.af:                                            ; preds = %bb.ad
  %i.co = load i8, ptr %i.aq, align 1, !alias.scope !2513, !noundef !10
  %.not.i.i94 = icmp sgt i8 %i.co, -1
  %.val.i.i107 = load ptr, ptr %i.ao, align 8, !alias.scope !2513 ; 5 uses
  %.val21.i.i108 = load i64, ptr %i.ar, align 8, !alias.scope !2513 ; 2 uses
  br i1 %.not.i.i94, label %5, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97

5:                                                ; preds = %bb.af
  %.not.i.i.i.i109 = icmp eq ptr %.val.i.i107, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i109, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, label %bb.ag

bb.ag:                                            ; preds = %5
  %i.cp = getelementptr inbounds i8, ptr %.val.i.i107, i64 -16
  %i.cq = atomicrmw add ptr %i.cp, i64 1 monotonic, align 8, !noalias !2514
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97: ; preds = %bb.af, %bb.ag, %5
  %.sroa.06.0.i.i99 = phi ptr [ %.val.i.i107, %bb.ag ], [ inttoptr (i64 16 to ptr), %5 ], [ %.val.i.i107, %bb.af ]
  store ptr %.sroa.06.0.i.i99, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !2511, !noalias !2510
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, %bb.ae
  %.sink.i.sroa.phi.i101 = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %.sink.i.sroa.gep16.i, %bb.ae ]
  %.sroa.58.0.sink.i.i102 = phi i64 [ %.val21.i.i108, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %i.cn, %bb.ae ]
  %i.cs = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ 1, %bb.ae ]
  store i64 %.sroa.58.0.sink.i.i102, ptr %.sink.i.sroa.phi.i101, align 8, !alias.scope !2511, !noalias !2510
  store i64 %i.cs, ptr %i.c, align 8, !alias.scope !2511, !noalias !2510
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.experimental.noalias.scope.decl(metadata !2515)
  call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  %i.ct = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2517, !noundef !10
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cv = load i64, ptr %i.at, align 8, !alias.scope !2517, !noundef !10
  br label %.noexc34

bb.ai:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cw = load i8, ptr %i.au, align 1, !alias.scope !2517, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cw, -1
  %.val.i11.i = load ptr, ptr %i.at, align 8, !alias.scope !2517 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.av, align 8, !alias.scope !2517 ; 2 uses
  br i1 %.not.i1.i, label %bb.aj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cy = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8, !noalias !2518
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.al, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.am, !noalias !2510

.noexc.i:                                         ; preds = %bb.al
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.ai, %bb.ak, %bb.aj
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %bb.aj ], [ %.val.i11.i, %bb.ai ]
  %i.da = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.da, ptr %.sroa.4.i92, align 8, !alias.scope !2515, !noalias !2510
  br label %.noexc34

bb.am:                                            ; preds = %bb.al
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !2519, !noalias !2510
  %.not.i.i.i.i.i = icmp slt i8 %i.dd, 0
  %or.cond.i.not.i = select i1 %i.cm, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.not.i, label %.thread233, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.thread233 unwind label %bb.ao, !noalias !2510

bb.ao:                                            ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2510
  unreachable

.noexc34:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.ah
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i93, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i92, %bb.ah ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cv, %bb.ah ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.ah ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !2515, !noalias !2510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2509
  store i64 %storemerge.i9.i, ptr %i.az, align 8, !alias.scope !2508
  %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104 = load i64, ptr %.sroa.4.i92, align 8, !noalias !2510
  store i64 %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104, ptr %.sroa.4.0..sroa_idx.i103, align 8, !alias.scope !2508
  %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106 = load i64, ptr %.sroa.6.i93, align 8, !noalias !2510
  store i64 %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106, ptr %.sroa.6.0..sroa_idx.i105, align 8, !alias.scope !2508
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2510
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %bb.t
  %i.df = load i32, ptr %i.ao, align 8, !alias.scope !2502, !noundef !10
  store i32 %i.df, ptr %i.ay, align 8, !alias.scope !2501
  store i64 7, ptr %i.j, align 8, !alias.scope !2501
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.aq:                                            ; preds = %bb.s
  br i1 %i.by, label %bb.ar, label %bb.cp

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !2520)
  call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  %i.dg = load i64, ptr %i.r, align 8, !range !28, !alias.scope !2521, !noundef !10 ; 4 uses
  %i.dh = icmp ne i64 %i.dg, 6
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nsw i64 %i.dg, -2
  %i.dj = icmp samesign ugt i64 %i.dg, 1
  %i.dk = select i1 %i.dj, i64 %i.di, i64 4
  switch i64 %i.dk, label %bb.as [
    i64 0, label %bb.at
    i64 1, label %bb.au
    i64 2, label %bb.av
    i64 3, label %bb.ba
    i64 4, label %bb.bb
    i64 5, label %bb.bn
  ]

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 2, ptr %i.m, align 8, !alias.scope !2520
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.au:                                            ; preds = %bb.ar
  store i64 3, ptr %i.m, align 8, !alias.scope !2520
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i36)
  call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  %i.dl = load i64, ptr %i.ac, align 8, !range !11, !alias.scope !2524, !noundef !10
  %i.dm = trunc nuw i64 %i.dl to i1
  br i1 %i.dm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dn = load i64, ptr %i.af, align 8, !alias.scope !2524, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

bb.ax:                                            ; preds = %bb.av
  %i.do = load i8, ptr %i.al, align 1, !alias.scope !2524, !noundef !10
  %.not.i.i37 = icmp sgt i8 %i.do, -1
  %.val.i.i51 = load ptr, ptr %i.af, align 8, !alias.scope !2524 ; 5 uses
  %.val21.i.i52 = load i64, ptr %i.ag, align 8, !alias.scope !2524 ; 2 uses
  br i1 %.not.i.i37, label %bb.ay, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i.i53 = icmp eq ptr %.val.i.i51, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i53, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dp = getelementptr inbounds i8, ptr %.val.i.i51, i64 -16
  %i.dq = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !2525
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, !prof !30

.invoke271:                                       ; preds = %bb.be, %bb.az, %bb.ag, %bb.ab
  %i.ds = phi ptr [ %.val.i.i107, %bb.ag ], [ %.val.i.i51, %bb.az ], [ %.val.i.i, %bb.ab ], [ %.val.i.i148, %bb.be ]
  %i.dt = phi i64 [ %.val21.i.i108, %bb.ag ], [ %.val21.i.i52, %bb.az ], [ %.val21.i.i, %bb.ab ], [ %.val21.i.i149, %bb.be ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ds, i64 noundef %i.dt) #19
          to label %.cont272 unwind label %.thread245.loopexit.split-lp

.cont272:                                         ; preds = %.invoke271
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40: ; preds = %bb.ax, %bb.az, %bb.ay
  %.sroa.06.0.i.i42 = phi ptr [ %.val.i.i51, %bb.az ], [ inttoptr (i64 16 to ptr), %bb.ay ], [ %.val.i.i51, %bb.ax ]
  %i.du = ptrtoint ptr %.sroa.06.0.i.i42 to i64
  store i64 %i.du, ptr %.sroa.4.i35, align 8, !alias.scope !2522, !noalias !2526
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, %bb.aw
  %.sink.i.sroa.phi.i44 = phi ptr [ %.sroa.6.i36, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %.sroa.4.i35, %bb.aw ]
  %.sroa.58.0.sink.i.i45 = phi i64 [ %.val21.i.i52, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %i.dn, %bb.aw ]
  %storemerge.i.i46 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ 1, %bb.aw ]
  store i64 %.sroa.58.0.sink.i.i45, ptr %.sink.i.sroa.phi.i44, align 8, !alias.scope !2522, !noalias !2526
  store i64 %storemerge.i.i46, ptr %i.ad, align 8, !alias.scope !2520
  %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48 = load i64, ptr %.sroa.4.i35, align 8, !noalias !2526
  store i64 %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48, ptr %.sroa.4.0..sroa_idx.i47, align 8, !alias.scope !2520
  %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50 = load i64, ptr %.sroa.6.i36, align 8, !noalias !2526
  store i64 %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50, ptr %i.ak, align 8, !alias.scope !2520
  store i64 4, ptr %i.m, align 8, !alias.scope !2520
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i36)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.ba:                                            ; preds = %bb.ar
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc55 unwind label %.thread245.loopexit

.noexc55:                                         ; preds = %bb.ba
  store i64 5, ptr %i.m, align 8, !alias.scope !2520
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bb:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2529
  call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  call void @llvm.experimental.noalias.scope.decl(metadata !2531)
  %i.dv = trunc nuw i64 %i.dg to i1               ; 2 uses
  br i1 %i.dv, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dw = load i64, ptr %i.ac, align 8, !alias.scope !2532, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

bb.bd:                                            ; preds = %bb.bb
  %i.dx = load i8, ptr %i.ae, align 1, !alias.scope !2532, !noundef !10
  %.not.i.i119 = icmp sgt i8 %i.dx, -1
  %.val.i.i148 = load ptr, ptr %i.ac, align 8, !alias.scope !2532 ; 5 uses
  %.val21.i.i149 = load i64, ptr %i.af, align 8, !alias.scope !2532 ; 2 uses
  br i1 %.not.i.i119, label %6, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122

6:                                                ; preds = %bb.bd
  %.not.i.i.i.i150 = icmp eq ptr %.val.i.i148, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i150, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, label %bb.be

bb.be:                                            ; preds = %6
  %i.dy = getelementptr inbounds i8, ptr %.val.i.i148, i64 -16
  %i.dz = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !noalias !2533
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122: ; preds = %bb.bd, %bb.be, %6
  %.sroa.06.0.i.i124 = phi ptr [ %.val.i.i148, %bb.be ], [ inttoptr (i64 16 to ptr), %6 ], [ %.val.i.i148, %bb.bd ]
  store ptr %.sroa.06.0.i.i124, ptr %.sink.i.sroa.gep16.i118, align 8, !alias.scope !2530, !noalias !2529
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, %bb.bc
  %.sink.i.sroa.phi.i126 = phi ptr [ %.sink.i.sroa.gep.i117, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %.sink.i.sroa.gep16.i118, %bb.bc ]
  %.sroa.58.0.sink.i.i127 = phi i64 [ %.val21.i.i149, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %i.dw, %bb.bc ]
  %i.eb = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ 1, %bb.bc ]
  store i64 %.sroa.58.0.sink.i.i127, ptr %.sink.i.sroa.phi.i126, align 8, !alias.scope !2530, !noalias !2529
  store i64 %i.eb, ptr %i.b, align 8, !alias.scope !2530, !noalias !2529
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.experimental.noalias.scope.decl(metadata !2534)
  call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  %i.ec = load i64, ptr %i.ag, align 8, !range !11, !alias.scope !2536, !noundef !10
  %i.ed = trunc nuw i64 %i.ec to i1
  br i1 %i.ed, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ee = load i64, ptr %i.ah, align 8, !alias.scope !2536, !noundef !10
  br label %.noexc56

bb.bg:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ef = load i8, ptr %i.ai, align 1, !alias.scope !2536, !noundef !10
  %.not.i1.i128 = icmp sgt i8 %i.ef, -1
  %.val.i11.i141 = load ptr, ptr %i.ah, align 8, !alias.scope !2536 ; 5 uses
  %.val21.i12.i142 = load i64, ptr %i.aj, align 8, !alias.scope !2536 ; 2 uses
  br i1 %.not.i1.i128, label %bb.bh, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i.i13.i143 = icmp eq ptr %.val.i11.i141, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i143, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eg = getelementptr inbounds i8, ptr %.val.i11.i141, i64 -16
  %i.eh = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8, !noalias !2537
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.bj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, !prof !30

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i141, i64 noundef %.val21.i12.i142) #19
          to label %.noexc.i147 unwind label %bb.bk, !noalias !2529

.noexc.i147:                                      ; preds = %bb.bj
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131: ; preds = %bb.bg, %bb.bi, %bb.bh
  %.sroa.06.0.i6.i133 = phi ptr [ %.val.i11.i141, %bb.bi ], [ inttoptr (i64 16 to ptr), %bb.bh ], [ %.val.i11.i141, %bb.bg ]
  %i.ej = ptrtoint ptr %.sroa.06.0.i6.i133 to i64
  store i64 %i.ej, ptr %.sroa.4.i115, align 8, !alias.scope !2534, !noalias !2529
  br label %.noexc56

bb.bk:                                            ; preds = %bb.bj
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !2538, !noalias !2529
  %.not.i.i.i.i.i144 = icmp slt i8 %i.em, 0
  %or.cond.i.not.i145 = select i1 %i.dv, i1 true, i1 %.not.i.i.i.i.i144
  br i1 %or.cond.i.not.i145, label %.thread233, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i118)
          to label %.thread233 unwind label %bb.bm, !noalias !2529

bb.bm:                                            ; preds = %bb.bl
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2529
  unreachable

.noexc56:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, %bb.bf
  %.sink.i7.sroa.phi.i134 = phi ptr [ %.sroa.6.i116, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %.sroa.4.i115, %bb.bf ]
  %.sroa.58.0.sink.i8.i135 = phi i64 [ %.val21.i12.i142, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %i.ee, %bb.bf ]
  %storemerge.i9.i136 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ 1, %bb.bf ]
  store i64 %.sroa.58.0.sink.i8.i135, ptr %.sink.i7.sroa.phi.i134, align 8, !alias.scope !2534, !noalias !2529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2528
  store i64 %storemerge.i9.i136, ptr %i.ak, align 8, !alias.scope !2527
  %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138 = load i64, ptr %.sroa.4.i115, align 8, !noalias !2529
  store i64 %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138, ptr %.sroa.4.0..sroa_idx.i137, align 8, !alias.scope !2527
  %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140 = load i64, ptr %.sroa.6.i116, align 8, !noalias !2529
  store i64 %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140, ptr %.sroa.6.0..sroa_idx.i139, align 8, !alias.scope !2527
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2529
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bn:                                            ; preds = %bb.ar
  %i.eo = load i32, ptr %i.ac, align 8, !alias.scope !2521, !noundef !10
  store i32 %i.eo, ptr %i.ad, align 8, !alias.scope !2520
  store i64 7, ptr %i.m, align 8, !alias.scope !2520
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57: ; preds = %bb.bn, %.noexc56, %.noexc55, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43, %bb.au, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  store ptr %i.s, ptr %i.an, align 8
  invoke fastcc void @_RNCNCINvNtCsPYQCUnoTxQ_10collection15recommendations18recommend_batch_byNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1h_14TableOfContent15recommend_batch00NCNvMB1h_B2c_18get_collection_opt0E0s3_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef align 8 dereferenceable(40) %4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am, ptr noundef nonnull align 8 %i.s)
          to label %bb.bo unwind label %.thread245.loopexit

bb.bo:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ep = load i64, ptr %i.o, align 8, !range !29, !noundef !10
  %.not15 = icmp eq i64 %i.ep, -1
  br i1 %.not15, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsPYQCUnoTxQ_10collection10operations5types24RecommendRequestInternalNtNtBG_23shard_selector_internal21ShardSelectorInternalEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(592) %i.p)
          to label %bb.da unwind label %bb.d

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  %i.eq = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2540, !noundef !10 ; 4 uses
  %i.er = icmp ne i64 %i.eq, 6
  call void @llvm.assume(i1 %i.er)
  %i.es = add nsw i64 %i.eq, -2
  %i.et = icmp samesign ugt i64 %i.eq, 1
  %i.eu = select i1 %i.et, i64 %i.es, i64 4
  switch i64 %i.eu, label %bb.br [
    i64 0, label %bb.bs
    i64 1, label %bb.bt
    i64 2, label %bb.bu
    i64 3, label %bb.bz
    i64 4, label %bb.ca
    i64 5, label %bb.cm
  ]

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  store i64 2, ptr %i.k, align 8, !alias.scope !2539
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bt:                                            ; preds = %bb.bq
  store i64 3, ptr %i.k, align 8, !alias.scope !2539
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i59)
  call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  %i.ev = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2543, !noundef !10
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ex = load i64, ptr %i.ar, align 8, !alias.scope !2543, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

bb.bw:                                            ; preds = %bb.bu
  %i.ey = load i8, ptr %i.ax, align 1, !alias.scope !2543, !noundef !10
  %.not.i.i60 = icmp sgt i8 %i.ey, -1
  %.val.i.i74 = load ptr, ptr %i.ar, align 8, !alias.scope !2543 ; 5 uses
  %.val21.i.i75 = load i64, ptr %i.as, align 8, !alias.scope !2543 ; 2 uses
  br i1 %.not.i.i60, label %bb.bx, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i.i76 = icmp eq ptr %.val.i.i74, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i76, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ez = getelementptr inbounds i8, ptr %.val.i.i74, i64 -16
  %i.fa = atomicrmw add ptr %i.ez, i64 1 monotonic, align 8, !noalias !2544
  %i.fb = icmp slt i64 %i.fa, 0
  br i1 %i.fb, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, !prof !30

.invoke:                                          ; preds = %bb.cd, %bb.by
  %i.fc = phi ptr [ %.val.i.i74, %bb.by ], [ %.val.i.i190, %bb.cd ]
  %i.fd = phi i64 [ %.val21.i.i75, %bb.by ], [ %.val21.i.i191, %bb.cd ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.fc, i64 noundef %i.fd) #19
          to label %.cont unwind label %.thread245.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63: ; preds = %bb.bw, %bb.by, %bb.bx
  %.sroa.06.0.i.i65 = phi ptr [ %.val.i.i74, %bb.by ], [ inttoptr (i64 16 to ptr), %bb.bx ], [ %.val.i.i74, %bb.bw ]
  %i.fe = ptrtoint ptr %.sroa.06.0.i.i65 to i64
  store i64 %i.fe, ptr %.sroa.4.i58, align 8, !alias.scope !2541, !noalias !2545
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, %bb.bv
  %.sink.i.sroa.phi.i67 = phi ptr [ %.sroa.6.i59, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %.sroa.4.i58, %bb.bv ]
  %.sroa.58.0.sink.i.i68 = phi i64 [ %.val21.i.i75, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %i.ex, %bb.bv ]
  %storemerge.i.i69 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ 1, %bb.bv ]
  store i64 %.sroa.58.0.sink.i.i68, ptr %.sink.i.sroa.phi.i67, align 8, !alias.scope !2541, !noalias !2545
  store i64 %storemerge.i.i69, ptr %i.ap, align 8, !alias.scope !2539
  %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71 = load i64, ptr %.sroa.4.i58, align 8, !noalias !2545
  store i64 %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71, ptr %.sroa.4.0..sroa_idx.i70, align 8, !alias.scope !2539
  %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73 = load i64, ptr %.sroa.6.i59, align 8, !noalias !2545
  store i64 %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73, ptr %i.aw, align 8, !alias.scope !2539
  store i64 4, ptr %i.k, align 8, !alias.scope !2539
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i59)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bz:                                            ; preds = %bb.bq
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc78 unwind label %.thread245.loopexit

.noexc78:                                         ; preds = %bb.bz
  store i64 5, ptr %i.k, align 8, !alias.scope !2539
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.ca:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !2546)
  call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2548
  call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  call void @llvm.experimental.noalias.scope.decl(metadata !2550)
  %i.ff = trunc nuw i64 %i.eq to i1               ; 2 uses
  br i1 %i.ff, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fg = load i64, ptr %i.ao, align 8, !alias.scope !2551, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

bb.cc:                                            ; preds = %bb.ca
  %i.fh = load i8, ptr %i.aq, align 1, !alias.scope !2551, !noundef !10
  %.not.i.i161 = icmp sgt i8 %i.fh, -1
  %.val.i.i190 = load ptr, ptr %i.ao, align 8, !alias.scope !2551 ; 5 uses
  %.val21.i.i191 = load i64, ptr %i.ar, align 8, !alias.scope !2551 ; 2 uses
  br i1 %.not.i.i161, label %7, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164

7:                                                ; preds = %bb.cc
  %.not.i.i.i.i192 = icmp eq ptr %.val.i.i190, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i192, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, label %bb.cd

bb.cd:                                            ; preds = %7
  %i.fi = getelementptr inbounds i8, ptr %.val.i.i190, i64 -16
  %i.fj = atomicrmw add ptr %i.fi, i64 1 monotonic, align 8, !noalias !2552
  %i.fk = icmp slt i64 %i.fj, 0
  br i1 %i.fk, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164: ; preds = %bb.cc, %bb.cd, %7
  %.sroa.06.0.i.i166 = phi ptr [ %.val.i.i190, %bb.cd ], [ inttoptr (i64 16 to ptr), %7 ], [ %.val.i.i190, %bb.cc ]
  store ptr %.sroa.06.0.i.i166, ptr %.sink.i.sroa.gep16.i160, align 8, !alias.scope !2549, !noalias !2548
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, %bb.cb
  %.sink.i.sroa.phi.i168 = phi ptr [ %.sink.i.sroa.gep.i159, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %.sink.i.sroa.gep16.i160, %bb.cb ]
  %.sroa.58.0.sink.i.i169 = phi i64 [ %.val21.i.i191, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %i.fg, %bb.cb ]
  %i.fl = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ 1, %bb.cb ]
  store i64 %.sroa.58.0.sink.i.i169, ptr %.sink.i.sroa.phi.i168, align 8, !alias.scope !2549, !noalias !2548
  store i64 %i.fl, ptr %i.a, align 8, !alias.scope !2549, !noalias !2548
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.experimental.noalias.scope.decl(metadata !2553)
  call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  %i.fm = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2555, !noundef !10
  %i.fn = trunc nuw i64 %i.fm to i1
  br i1 %i.fn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fo = load i64, ptr %i.at, align 8, !alias.scope !2555, !noundef !10
  br label %.noexc79

bb.cf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fp = load i8, ptr %i.au, align 1, !alias.scope !2555, !noundef !10
  %.not.i1.i170 = icmp sgt i8 %i.fp, -1
  %.val.i11.i183 = load ptr, ptr %i.at, align 8, !alias.scope !2555 ; 5 uses
  %.val21.i12.i184 = load i64, ptr %i.av, align 8, !alias.scope !2555 ; 2 uses
  br i1 %.not.i1.i170, label %bb.cg, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i13.i185 = icmp eq ptr %.val.i11.i183, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i185, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fq = getelementptr inbounds i8, ptr %.val.i11.i183, i64 -16
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !2556
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.ci, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, !prof !30

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i183, i64 noundef %.val21.i12.i184) #19
          to label %.noexc.i189 unwind label %bb.cj, !noalias !2548

.noexc.i189:                                      ; preds = %bb.ci
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173: ; preds = %bb.cf, %bb.ch, %bb.cg
  %.sroa.06.0.i6.i175 = phi ptr [ %.val.i11.i183, %bb.ch ], [ inttoptr (i64 16 to ptr), %bb.cg ], [ %.val.i11.i183, %bb.cf ]
  %i.ft = ptrtoint ptr %.sroa.06.0.i6.i175 to i64
  store i64 %i.ft, ptr %.sroa.4.i157, align 8, !alias.scope !2553, !noalias !2548
  br label %.noexc79

bb.cj:                                            ; preds = %bb.ci
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !2557, !noalias !2548
  %.not.i.i.i.i.i186 = icmp slt i8 %i.fw, 0
  %or.cond.i.not.i187 = select i1 %i.ff, i1 true, i1 %.not.i.i.i.i.i186
  br i1 %or.cond.i.not.i187, label %.thread233, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i160)
          to label %.thread233 unwind label %bb.cl, !noalias !2548

bb.cl:                                            ; preds = %bb.ck
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2548
  unreachable

.noexc79:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, %bb.ce
  %.sink.i7.sroa.phi.i176 = phi ptr [ %.sroa.6.i158, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %.sroa.4.i157, %bb.ce ]
  %.sroa.58.0.sink.i8.i177 = phi i64 [ %.val21.i12.i184, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %i.fo, %bb.ce ]
  %storemerge.i9.i178 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ 1, %bb.ce ]
  store i64 %.sroa.58.0.sink.i8.i177, ptr %.sink.i7.sroa.phi.i176, align 8, !alias.scope !2553, !noalias !2548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2547
  store i64 %storemerge.i9.i178, ptr %i.aw, align 8, !alias.scope !2546
  %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180 = load i64, ptr %.sroa.4.i157, align 8, !noalias !2548
  store i64 %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180, ptr %.sroa.4.0..sroa_idx.i179, align 8, !alias.scope !2546
  %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182 = load i64, ptr %.sroa.6.i158, align 8, !noalias !2548
  store i64 %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182, ptr %.sroa.6.0..sroa_idx.i181, align 8, !alias.scope !2546
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2548
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.cm:                                            ; preds = %bb.bq
  %i.fy = load i32, ptr %i.ao, align 8, !alias.scope !2540, !noundef !10
  store i32 %i.fy, ptr %i.ap, align 8, !alias.scope !2539
  store i64 7, ptr %i.k, align 8, !alias.scope !2539
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80: ; preds = %bb.cm, %.noexc79, %.noexc78, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66, %bb.bt, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fz = load i64, ptr %i.r, align 8, !range !31, !alias.scope !2558, !noundef !10
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.co unwind label %.thread

.thread:                                          ; preds = %bb.cn
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  br label %.thread233

bb.co:                                            ; preds = %bb.cn, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.t, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8
  store i64 0, ptr %i.v, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.aq, %bb.co, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %i.i, ptr noundef nonnull align 8 dereferenceable(592) %i.p, i64 592, i1 false)
  store ptr %i.t, ptr %i.ba, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.f, ptr noundef nonnull align 8 dereferenceable(544) %i.p, i64 544, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2560
  %i.gc = load ptr, ptr %i.bb, align 8, !noalias !2560, !nonnull !10, !noundef !10
  %i.gd = load i64, ptr %i.bc, align 8, !noalias !2560, !noundef !10
  invoke void @_RNvNtCsPYQCUnoTxQ_10collection15recommendations26recommend_into_core_search(ptr noalias nofree noundef nonnull sret([472 x i8]) align 8 captures(address) dereferenceable(472) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.gd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(544) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %3)
          to label %bb.cr unwind label %bb.cq, !noalias !2560

bb.cq:                                            ; preds = %bb.cp
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cv, %bb.cq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ge, %bb.cq ], [ %i.gk, %bb.cv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be) #15
          to label %.thread229 unwind label %bb.cz, !noalias !2561

bb.cr:                                            ; preds = %bb.cp
  %i.gf = load i64, ptr %i.e, align 8, !range !24, !noalias !2560, !noundef !10
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %.sroa.0208.0.copyload209 = load i64, ptr %i.bd, align 8, !noalias !2562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210.0..sroa_idx211, i64 40, i1 false), !noalias !2562
  br label %bb.cy

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.d, ptr noundef nonnull align 8 dereferenceable(472) %i.e, i64 472, i1 false), !noalias !2560
  %i.gh = load i64, ptr %i.v, align 8, !alias.scope !2563, !noundef !10 ; 3 uses
  %i.gi = load i64, ptr %i.t, align 8, !range !21, !alias.scope !2563, !noundef !10
  %i.gj = icmp eq i64 %i.gh, %i.gi
  br i1 %i.gj, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.cx unwind label %bb.cv, !noalias !2564

bb.cv:                                            ; preds = %bb.cu
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(472) %i.d) #15
          to label %.body.i unwind label %bb.cw, !noalias !2565

bb.cw:                                            ; preds = %bb.cv
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2565
  unreachable

bb.cx:                                            ; preds = %bb.cu, %bb.ct
  %i.gm = load ptr, ptr %i.u, align 8, !alias.scope !2563, !nonnull !10, !noundef !10
  %i.gn = getelementptr inbounds nuw [472 x i8], ptr %i.gm, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.gn, ptr noundef nonnull align 8 dereferenceable(472) %i.e, i64 472, i1 false), !noalias !2565
  %i.go = add i64 %i.gh, 1
  store i64 %i.go, ptr %i.v, align 8, !alias.scope !2563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2560
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cs
  %.sroa.0208.0 = phi i64 [ %.sroa.0208.0.copyload209, %bb.cs ], [ -1, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2560
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be)
          to label %_RNCNCINvNtCsPYQCUnoTxQ_10collection15recommendations18recommend_batch_byNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1h_14TableOfContent15recommend_batch00NCNvMB1h_B2c_18get_collection_opt0E0s2_0Csl8OoimOLbh_6qdrant.exit unwind label %bb.q

bb.cz:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2561
  unreachable

bb.da:                                            ; preds = %bb.db, %bb.bp
  %.sroa.0.11 = phi i8 [ 0, %bb.bp ], [ 1, %bb.db ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
end_hunk_11
begin_hunk_12_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsTNtNtNtB6_10operations5types24RecommendRequestInternalNtNtB16_23shard_selector_internal21ShardSelectorInternalEB1T_INtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEIB2T_NCNvMNtNtB6_10collection6searchNtB4q_10Collection17core_search_batch0EIB2T_B11_ENCNCINvNtB6_15recommendations18recommend_batch_byNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB6x_14TableOfContent9recommend00NCNvMB6x_B7s_18get_collection_opt0E0s1_0NCB5D_s2_0NCB5D_s3_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91

bb.i:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bt = load i64, ptr %i.h, align 8, !range !29, !noundef !10
  %.not13 = icmp eq i64 %i.bt, -1
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91

bb.m:                                             ; preds = %bb.k, %bb.dd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types24RecommendRequestInternalNtNtB1u_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86
  %.sroa.0.7 = phi i8 [ %.sroa.0.11, %bb.dd ], [ %.sroa.0.11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types24RecommendRequestInternalNtNtB1u_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86 ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBM_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBT_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %.body31 unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtBT_10Collection17core_search_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB1f_10Collection17core_search_batch0EECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.p:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit91: ; preds = %bb.l, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB1f_10Collection17core_search_batch0EECsl8OoimOLbh_6qdrant.exit, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

.thread245.loopexit:                              ; preds = %bb.ba, %bb.ac, %bb.s, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57, %bb.bz
  %.sroa.0.9.ph.ph = phi i8 [ 0, %bb.bz ], [ 0, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57 ], [ 1, %bb.s ], [ 1, %bb.ac ], [ 1, %bb.ba ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

.thread245.loopexit.split-lp:                     ; preds = %.invoke271, %.invoke
  %.sroa.0.9.ph.ph249 = phi i8 [ 1, %.invoke271 ], [ 0, %.invoke ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

bb.q:                                             ; preds = %bb.cy
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread229

bb.r:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsPYQCUnoTxQ_10collection10operations5types24RecommendRequestInternalNtNtB11_23shard_selector_internal21ShardSelectorInternalEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.0202.0.copyload203, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(584) %.sroa.8, i64 584, i1 false)
  %i.bx = load i64, ptr %i.r, align 8, !range !31, !noundef !10
  %.not14 = icmp eq i64 %i.bx, -1
  br i1 %.not14, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = invoke fastcc noundef zeroext i1 @_RNvYNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r)
          to label %bb.aq unwind label %.thread245.loopexit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  call void @llvm.experimental.noalias.scope.decl(metadata !2639)
  %i.bz = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2639, !noundef !10 ; 4 uses
  %i.ca = icmp ne i64 %i.bz, 6
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nsw i64 %i.bz, -2
  %i.cc = icmp samesign ugt i64 %i.bz, 1
  %i.cd = select i1 %i.cc, i64 %i.cb, i64 4
  switch i64 %i.cd, label %bb.u [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.x
    i64 3, label %bb.ac
    i64 4, label %bb.ad
    i64 5, label %bb.ap
  ]

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  store i64 2, ptr %i.j, align 8, !alias.scope !2638
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %bb.t
  store i64 3, ptr %i.j, align 8, !alias.scope !2638
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2640)
  call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  %i.ce = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2642, !noundef !10
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = load i64, ptr %i.ar, align 8, !alias.scope !2642, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.ax, align 1, !alias.scope !2642, !noundef !10
  %.not.i.i = icmp sgt i8 %i.ch, -1
  %.val.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !2642 ; 5 uses
  %.val21.i.i = load i64, ptr %i.as, align 8, !alias.scope !2642 ; 2 uses
  br i1 %.not.i.i, label %bb.aa, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cj = atomicrmw add ptr %i.ci, i64 1 monotonic, align 8, !noalias !2643
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.z, %bb.ab, %bb.aa
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ab ], [ inttoptr (i64 16 to ptr), %bb.aa ], [ %.val.i.i, %bb.z ]
  %i.cl = ptrtoint ptr %.sroa.06.0.i.i to i64
  store i64 %i.cl, ptr %.sroa.4.i, align 8, !alias.scope !2640, !noalias !2644
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.y
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.4.i, %bb.y ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.cg, %bb.y ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.y ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !2640, !noalias !2644
  store i64 %storemerge.i.i, ptr %i.ay, align 8, !alias.scope !2638
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !2644
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2638
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !2644
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %i.az, align 8, !alias.scope !2638
  store i64 4, ptr %i.j, align 8, !alias.scope !2638
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.t
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc33 unwind label %.thread245.loopexit

.noexc33:                                         ; preds = %bb.ac
  store i64 5, ptr %i.j, align 8, !alias.scope !2638
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ad:                                            ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2647
  call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  %i.cm = trunc nuw i64 %i.bz to i1               ; 2 uses
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load i64, ptr %i.ao, align 8, !alias.scope !2650, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

bb.af:                                            ; preds = %bb.ad
  %i.co = load i8, ptr %i.aq, align 1, !alias.scope !2650, !noundef !10
  %.not.i.i94 = icmp sgt i8 %i.co, -1
  %.val.i.i107 = load ptr, ptr %i.ao, align 8, !alias.scope !2650 ; 5 uses
  %.val21.i.i108 = load i64, ptr %i.ar, align 8, !alias.scope !2650 ; 2 uses
  br i1 %.not.i.i94, label %5, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97

5:                                                ; preds = %bb.af
  %.not.i.i.i.i109 = icmp eq ptr %.val.i.i107, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i109, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, label %bb.ag

bb.ag:                                            ; preds = %5
  %i.cp = getelementptr inbounds i8, ptr %.val.i.i107, i64 -16
  %i.cq = atomicrmw add ptr %i.cp, i64 1 monotonic, align 8, !noalias !2651
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97: ; preds = %bb.af, %bb.ag, %5
  %.sroa.06.0.i.i99 = phi ptr [ %.val.i.i107, %bb.ag ], [ inttoptr (i64 16 to ptr), %5 ], [ %.val.i.i107, %bb.af ]
  store ptr %.sroa.06.0.i.i99, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !2648, !noalias !2647
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, %bb.ae
  %.sink.i.sroa.phi.i101 = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %.sink.i.sroa.gep16.i, %bb.ae ]
  %.sroa.58.0.sink.i.i102 = phi i64 [ %.val21.i.i108, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %i.cn, %bb.ae ]
  %i.cs = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ 1, %bb.ae ]
  store i64 %.sroa.58.0.sink.i.i102, ptr %.sink.i.sroa.phi.i101, align 8, !alias.scope !2648, !noalias !2647
  store i64 %i.cs, ptr %i.c, align 8, !alias.scope !2648, !noalias !2647
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  %i.ct = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2654, !noundef !10
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cv = load i64, ptr %i.at, align 8, !alias.scope !2654, !noundef !10
  br label %.noexc34

bb.ai:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cw = load i8, ptr %i.au, align 1, !alias.scope !2654, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cw, -1
  %.val.i11.i = load ptr, ptr %i.at, align 8, !alias.scope !2654 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.av, align 8, !alias.scope !2654 ; 2 uses
  br i1 %.not.i1.i, label %bb.aj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cy = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8, !noalias !2655
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.al, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.am, !noalias !2647

.noexc.i:                                         ; preds = %bb.al
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.ai, %bb.ak, %bb.aj
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %bb.aj ], [ %.val.i11.i, %bb.ai ]
  %i.da = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.da, ptr %.sroa.4.i92, align 8, !alias.scope !2652, !noalias !2647
  br label %.noexc34

bb.am:                                            ; preds = %bb.al
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !2656, !noalias !2647
  %.not.i.i.i.i.i = icmp slt i8 %i.dd, 0
  %or.cond.i.not.i = select i1 %i.cm, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.not.i, label %.thread233, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.thread233 unwind label %bb.ao, !noalias !2647

bb.ao:                                            ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2647
  unreachable

.noexc34:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.ah
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i93, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i92, %bb.ah ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cv, %bb.ah ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.ah ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !2652, !noalias !2647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2646
  store i64 %storemerge.i9.i, ptr %i.az, align 8, !alias.scope !2645
  %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104 = load i64, ptr %.sroa.4.i92, align 8, !noalias !2647
  store i64 %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104, ptr %.sroa.4.0..sroa_idx.i103, align 8, !alias.scope !2645
  %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106 = load i64, ptr %.sroa.6.i93, align 8, !noalias !2647
  store i64 %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106, ptr %.sroa.6.0..sroa_idx.i105, align 8, !alias.scope !2645
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2647
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %bb.t
  %i.df = load i32, ptr %i.ao, align 8, !alias.scope !2639, !noundef !10
  store i32 %i.df, ptr %i.ay, align 8, !alias.scope !2638
  store i64 7, ptr %i.j, align 8, !alias.scope !2638
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.aq:                                            ; preds = %bb.s
  br i1 %i.by, label %bb.ar, label %bb.cp

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !2657)
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  %i.dg = load i64, ptr %i.r, align 8, !range !28, !alias.scope !2658, !noundef !10 ; 4 uses
  %i.dh = icmp ne i64 %i.dg, 6
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nsw i64 %i.dg, -2
  %i.dj = icmp samesign ugt i64 %i.dg, 1
  %i.dk = select i1 %i.dj, i64 %i.di, i64 4
  switch i64 %i.dk, label %bb.as [
    i64 0, label %bb.at
    i64 1, label %bb.au
    i64 2, label %bb.av
    i64 3, label %bb.ba
    i64 4, label %bb.bb
    i64 5, label %bb.bn
  ]

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 2, ptr %i.m, align 8, !alias.scope !2657
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.au:                                            ; preds = %bb.ar
  store i64 3, ptr %i.m, align 8, !alias.scope !2657
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i36)
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.dl = load i64, ptr %i.ac, align 8, !range !11, !alias.scope !2661, !noundef !10
  %i.dm = trunc nuw i64 %i.dl to i1
  br i1 %i.dm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dn = load i64, ptr %i.af, align 8, !alias.scope !2661, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

bb.ax:                                            ; preds = %bb.av
  %i.do = load i8, ptr %i.al, align 1, !alias.scope !2661, !noundef !10
  %.not.i.i37 = icmp sgt i8 %i.do, -1
  %.val.i.i51 = load ptr, ptr %i.af, align 8, !alias.scope !2661 ; 5 uses
  %.val21.i.i52 = load i64, ptr %i.ag, align 8, !alias.scope !2661 ; 2 uses
  br i1 %.not.i.i37, label %bb.ay, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i.i53 = icmp eq ptr %.val.i.i51, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i53, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dp = getelementptr inbounds i8, ptr %.val.i.i51, i64 -16
  %i.dq = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !2662
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, !prof !30

.invoke271:                                       ; preds = %bb.be, %bb.az, %bb.ag, %bb.ab
  %i.ds = phi ptr [ %.val.i.i107, %bb.ag ], [ %.val.i.i51, %bb.az ], [ %.val.i.i, %bb.ab ], [ %.val.i.i148, %bb.be ]
  %i.dt = phi i64 [ %.val21.i.i108, %bb.ag ], [ %.val21.i.i52, %bb.az ], [ %.val21.i.i, %bb.ab ], [ %.val21.i.i149, %bb.be ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ds, i64 noundef %i.dt) #19
          to label %.cont272 unwind label %.thread245.loopexit.split-lp

.cont272:                                         ; preds = %.invoke271
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40: ; preds = %bb.ax, %bb.az, %bb.ay
  %.sroa.06.0.i.i42 = phi ptr [ %.val.i.i51, %bb.az ], [ inttoptr (i64 16 to ptr), %bb.ay ], [ %.val.i.i51, %bb.ax ]
  %i.du = ptrtoint ptr %.sroa.06.0.i.i42 to i64
  store i64 %i.du, ptr %.sroa.4.i35, align 8, !alias.scope !2659, !noalias !2663
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, %bb.aw
  %.sink.i.sroa.phi.i44 = phi ptr [ %.sroa.6.i36, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %.sroa.4.i35, %bb.aw ]
  %.sroa.58.0.sink.i.i45 = phi i64 [ %.val21.i.i52, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %i.dn, %bb.aw ]
  %storemerge.i.i46 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ 1, %bb.aw ]
  store i64 %.sroa.58.0.sink.i.i45, ptr %.sink.i.sroa.phi.i44, align 8, !alias.scope !2659, !noalias !2663
  store i64 %storemerge.i.i46, ptr %i.ad, align 8, !alias.scope !2657
  %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48 = load i64, ptr %.sroa.4.i35, align 8, !noalias !2663
  store i64 %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48, ptr %.sroa.4.0..sroa_idx.i47, align 8, !alias.scope !2657
  %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50 = load i64, ptr %.sroa.6.i36, align 8, !noalias !2663
  store i64 %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50, ptr %i.ak, align 8, !alias.scope !2657
  store i64 4, ptr %i.m, align 8, !alias.scope !2657
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i36)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.ba:                                            ; preds = %bb.ar
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc55 unwind label %.thread245.loopexit

.noexc55:                                         ; preds = %bb.ba
  store i64 5, ptr %i.m, align 8, !alias.scope !2657
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bb:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !2664)
  call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2666
  call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  %i.dv = trunc nuw i64 %i.dg to i1               ; 2 uses
  br i1 %i.dv, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dw = load i64, ptr %i.ac, align 8, !alias.scope !2669, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

bb.bd:                                            ; preds = %bb.bb
  %i.dx = load i8, ptr %i.ae, align 1, !alias.scope !2669, !noundef !10
  %.not.i.i119 = icmp sgt i8 %i.dx, -1
  %.val.i.i148 = load ptr, ptr %i.ac, align 8, !alias.scope !2669 ; 5 uses
  %.val21.i.i149 = load i64, ptr %i.af, align 8, !alias.scope !2669 ; 2 uses
  br i1 %.not.i.i119, label %6, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122

6:                                                ; preds = %bb.bd
  %.not.i.i.i.i150 = icmp eq ptr %.val.i.i148, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i150, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, label %bb.be

bb.be:                                            ; preds = %6
  %i.dy = getelementptr inbounds i8, ptr %.val.i.i148, i64 -16
  %i.dz = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !noalias !2670
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122: ; preds = %bb.bd, %bb.be, %6
  %.sroa.06.0.i.i124 = phi ptr [ %.val.i.i148, %bb.be ], [ inttoptr (i64 16 to ptr), %6 ], [ %.val.i.i148, %bb.bd ]
  store ptr %.sroa.06.0.i.i124, ptr %.sink.i.sroa.gep16.i118, align 8, !alias.scope !2667, !noalias !2666
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, %bb.bc
  %.sink.i.sroa.phi.i126 = phi ptr [ %.sink.i.sroa.gep.i117, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %.sink.i.sroa.gep16.i118, %bb.bc ]
  %.sroa.58.0.sink.i.i127 = phi i64 [ %.val21.i.i149, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %i.dw, %bb.bc ]
  %i.eb = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ 1, %bb.bc ]
  store i64 %.sroa.58.0.sink.i.i127, ptr %.sink.i.sroa.phi.i126, align 8, !alias.scope !2667, !noalias !2666
  store i64 %i.eb, ptr %i.b, align 8, !alias.scope !2667, !noalias !2666
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  call void @llvm.experimental.noalias.scope.decl(metadata !2672)
  %i.ec = load i64, ptr %i.ag, align 8, !range !11, !alias.scope !2673, !noundef !10
  %i.ed = trunc nuw i64 %i.ec to i1
  br i1 %i.ed, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ee = load i64, ptr %i.ah, align 8, !alias.scope !2673, !noundef !10
  br label %.noexc56

bb.bg:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ef = load i8, ptr %i.ai, align 1, !alias.scope !2673, !noundef !10
  %.not.i1.i128 = icmp sgt i8 %i.ef, -1
  %.val.i11.i141 = load ptr, ptr %i.ah, align 8, !alias.scope !2673 ; 5 uses
  %.val21.i12.i142 = load i64, ptr %i.aj, align 8, !alias.scope !2673 ; 2 uses
  br i1 %.not.i1.i128, label %bb.bh, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i.i13.i143 = icmp eq ptr %.val.i11.i141, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i143, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eg = getelementptr inbounds i8, ptr %.val.i11.i141, i64 -16
  %i.eh = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8, !noalias !2674
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.bj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, !prof !30

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i141, i64 noundef %.val21.i12.i142) #19
          to label %.noexc.i147 unwind label %bb.bk, !noalias !2666

.noexc.i147:                                      ; preds = %bb.bj
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131: ; preds = %bb.bg, %bb.bi, %bb.bh
  %.sroa.06.0.i6.i133 = phi ptr [ %.val.i11.i141, %bb.bi ], [ inttoptr (i64 16 to ptr), %bb.bh ], [ %.val.i11.i141, %bb.bg ]
  %i.ej = ptrtoint ptr %.sroa.06.0.i6.i133 to i64
  store i64 %i.ej, ptr %.sroa.4.i115, align 8, !alias.scope !2671, !noalias !2666
  br label %.noexc56

bb.bk:                                            ; preds = %bb.bj
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !2675, !noalias !2666
  %.not.i.i.i.i.i144 = icmp slt i8 %i.em, 0
  %or.cond.i.not.i145 = select i1 %i.dv, i1 true, i1 %.not.i.i.i.i.i144
  br i1 %or.cond.i.not.i145, label %.thread233, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i118)
          to label %.thread233 unwind label %bb.bm, !noalias !2666

bb.bm:                                            ; preds = %bb.bl
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2666
  unreachable

.noexc56:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, %bb.bf
  %.sink.i7.sroa.phi.i134 = phi ptr [ %.sroa.6.i116, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %.sroa.4.i115, %bb.bf ]
  %.sroa.58.0.sink.i8.i135 = phi i64 [ %.val21.i12.i142, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %i.ee, %bb.bf ]
  %storemerge.i9.i136 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ 1, %bb.bf ]
  store i64 %.sroa.58.0.sink.i8.i135, ptr %.sink.i7.sroa.phi.i134, align 8, !alias.scope !2671, !noalias !2666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2665
  store i64 %storemerge.i9.i136, ptr %i.ak, align 8, !alias.scope !2664
  %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138 = load i64, ptr %.sroa.4.i115, align 8, !noalias !2666
  store i64 %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138, ptr %.sroa.4.0..sroa_idx.i137, align 8, !alias.scope !2664
  %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140 = load i64, ptr %.sroa.6.i116, align 8, !noalias !2666
  store i64 %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140, ptr %.sroa.6.0..sroa_idx.i139, align 8, !alias.scope !2664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2666
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bn:                                            ; preds = %bb.ar
  %i.eo = load i32, ptr %i.ac, align 8, !alias.scope !2658, !noundef !10
  store i32 %i.eo, ptr %i.ad, align 8, !alias.scope !2657
  store i64 7, ptr %i.m, align 8, !alias.scope !2657
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57: ; preds = %bb.bn, %.noexc56, %.noexc55, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43, %bb.au, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  store ptr %i.s, ptr %i.an, align 8
  invoke fastcc void @_RNCNCINvNtCsPYQCUnoTxQ_10collection15recommendations18recommend_batch_byNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1h_14TableOfContent9recommend00NCNvMB1h_B2c_18get_collection_opt0E0s3_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef align 8 dereferenceable(40) %4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am, ptr noundef nonnull align 8 %i.s)
          to label %bb.bo unwind label %.thread245.loopexit

bb.bo:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ep = load i64, ptr %i.o, align 8, !range !29, !noundef !10
  %.not15 = icmp eq i64 %i.ep, -1
  br i1 %.not15, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsPYQCUnoTxQ_10collection10operations5types24RecommendRequestInternalNtNtBG_23shard_selector_internal21ShardSelectorInternalEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(592) %i.p)
          to label %bb.da unwind label %bb.d

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !2676)
  call void @llvm.experimental.noalias.scope.decl(metadata !2677)
  %i.eq = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2677, !noundef !10 ; 4 uses
  %i.er = icmp ne i64 %i.eq, 6
  call void @llvm.assume(i1 %i.er)
  %i.es = add nsw i64 %i.eq, -2
  %i.et = icmp samesign ugt i64 %i.eq, 1
  %i.eu = select i1 %i.et, i64 %i.es, i64 4
  switch i64 %i.eu, label %bb.br [
    i64 0, label %bb.bs
    i64 1, label %bb.bt
    i64 2, label %bb.bu
    i64 3, label %bb.bz
    i64 4, label %bb.ca
    i64 5, label %bb.cm
  ]

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  store i64 2, ptr %i.k, align 8, !alias.scope !2676
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bt:                                            ; preds = %bb.bq
  store i64 3, ptr %i.k, align 8, !alias.scope !2676
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i59)
  call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  call void @llvm.experimental.noalias.scope.decl(metadata !2679)
  %i.ev = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2680, !noundef !10
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ex = load i64, ptr %i.ar, align 8, !alias.scope !2680, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

bb.bw:                                            ; preds = %bb.bu
  %i.ey = load i8, ptr %i.ax, align 1, !alias.scope !2680, !noundef !10
  %.not.i.i60 = icmp sgt i8 %i.ey, -1
  %.val.i.i74 = load ptr, ptr %i.ar, align 8, !alias.scope !2680 ; 5 uses
  %.val21.i.i75 = load i64, ptr %i.as, align 8, !alias.scope !2680 ; 2 uses
  br i1 %.not.i.i60, label %bb.bx, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i.i76 = icmp eq ptr %.val.i.i74, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i76, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ez = getelementptr inbounds i8, ptr %.val.i.i74, i64 -16
  %i.fa = atomicrmw add ptr %i.ez, i64 1 monotonic, align 8, !noalias !2681
  %i.fb = icmp slt i64 %i.fa, 0
  br i1 %i.fb, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, !prof !30

.invoke:                                          ; preds = %bb.cd, %bb.by
  %i.fc = phi ptr [ %.val.i.i74, %bb.by ], [ %.val.i.i190, %bb.cd ]
  %i.fd = phi i64 [ %.val21.i.i75, %bb.by ], [ %.val21.i.i191, %bb.cd ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.fc, i64 noundef %i.fd) #19
          to label %.cont unwind label %.thread245.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63: ; preds = %bb.bw, %bb.by, %bb.bx
  %.sroa.06.0.i.i65 = phi ptr [ %.val.i.i74, %bb.by ], [ inttoptr (i64 16 to ptr), %bb.bx ], [ %.val.i.i74, %bb.bw ]
  %i.fe = ptrtoint ptr %.sroa.06.0.i.i65 to i64
  store i64 %i.fe, ptr %.sroa.4.i58, align 8, !alias.scope !2678, !noalias !2682
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, %bb.bv
  %.sink.i.sroa.phi.i67 = phi ptr [ %.sroa.6.i59, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %.sroa.4.i58, %bb.bv ]
  %.sroa.58.0.sink.i.i68 = phi i64 [ %.val21.i.i75, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %i.ex, %bb.bv ]
  %storemerge.i.i69 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ 1, %bb.bv ]
  store i64 %.sroa.58.0.sink.i.i68, ptr %.sink.i.sroa.phi.i67, align 8, !alias.scope !2678, !noalias !2682
  store i64 %storemerge.i.i69, ptr %i.ap, align 8, !alias.scope !2676
  %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71 = load i64, ptr %.sroa.4.i58, align 8, !noalias !2682
  store i64 %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71, ptr %.sroa.4.0..sroa_idx.i70, align 8, !alias.scope !2676
  %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73 = load i64, ptr %.sroa.6.i59, align 8, !noalias !2682
  store i64 %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73, ptr %i.aw, align 8, !alias.scope !2676
  store i64 4, ptr %i.k, align 8, !alias.scope !2676
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i59)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bz:                                            ; preds = %bb.bq
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc78 unwind label %.thread245.loopexit

.noexc78:                                         ; preds = %bb.bz
  store i64 5, ptr %i.k, align 8, !alias.scope !2676
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.ca:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  call void @llvm.experimental.noalias.scope.decl(metadata !2684)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2685
  call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  %i.ff = trunc nuw i64 %i.eq to i1               ; 2 uses
  br i1 %i.ff, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fg = load i64, ptr %i.ao, align 8, !alias.scope !2688, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

bb.cc:                                            ; preds = %bb.ca
  %i.fh = load i8, ptr %i.aq, align 1, !alias.scope !2688, !noundef !10
  %.not.i.i161 = icmp sgt i8 %i.fh, -1
  %.val.i.i190 = load ptr, ptr %i.ao, align 8, !alias.scope !2688 ; 5 uses
  %.val21.i.i191 = load i64, ptr %i.ar, align 8, !alias.scope !2688 ; 2 uses
  br i1 %.not.i.i161, label %7, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164

7:                                                ; preds = %bb.cc
  %.not.i.i.i.i192 = icmp eq ptr %.val.i.i190, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i192, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, label %bb.cd

bb.cd:                                            ; preds = %7
  %i.fi = getelementptr inbounds i8, ptr %.val.i.i190, i64 -16
  %i.fj = atomicrmw add ptr %i.fi, i64 1 monotonic, align 8, !noalias !2689
  %i.fk = icmp slt i64 %i.fj, 0
  br i1 %i.fk, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164: ; preds = %bb.cc, %bb.cd, %7
  %.sroa.06.0.i.i166 = phi ptr [ %.val.i.i190, %bb.cd ], [ inttoptr (i64 16 to ptr), %7 ], [ %.val.i.i190, %bb.cc ]
  store ptr %.sroa.06.0.i.i166, ptr %.sink.i.sroa.gep16.i160, align 8, !alias.scope !2686, !noalias !2685
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, %bb.cb
  %.sink.i.sroa.phi.i168 = phi ptr [ %.sink.i.sroa.gep.i159, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %.sink.i.sroa.gep16.i160, %bb.cb ]
  %.sroa.58.0.sink.i.i169 = phi i64 [ %.val21.i.i191, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %i.fg, %bb.cb ]
  %i.fl = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ 1, %bb.cb ]
  store i64 %.sroa.58.0.sink.i.i169, ptr %.sink.i.sroa.phi.i168, align 8, !alias.scope !2686, !noalias !2685
  store i64 %i.fl, ptr %i.a, align 8, !alias.scope !2686, !noalias !2685
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.experimental.noalias.scope.decl(metadata !2690)
  call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  %i.fm = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2692, !noundef !10
  %i.fn = trunc nuw i64 %i.fm to i1
  br i1 %i.fn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fo = load i64, ptr %i.at, align 8, !alias.scope !2692, !noundef !10
  br label %.noexc79

bb.cf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fp = load i8, ptr %i.au, align 1, !alias.scope !2692, !noundef !10
  %.not.i1.i170 = icmp sgt i8 %i.fp, -1
  %.val.i11.i183 = load ptr, ptr %i.at, align 8, !alias.scope !2692 ; 5 uses
  %.val21.i12.i184 = load i64, ptr %i.av, align 8, !alias.scope !2692 ; 2 uses
  br i1 %.not.i1.i170, label %bb.cg, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i13.i185 = icmp eq ptr %.val.i11.i183, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i185, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fq = getelementptr inbounds i8, ptr %.val.i11.i183, i64 -16
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !2693
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.ci, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, !prof !30

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i183, i64 noundef %.val21.i12.i184) #19
          to label %.noexc.i189 unwind label %bb.cj, !noalias !2685

.noexc.i189:                                      ; preds = %bb.ci
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173: ; preds = %bb.cf, %bb.ch, %bb.cg
  %.sroa.06.0.i6.i175 = phi ptr [ %.val.i11.i183, %bb.ch ], [ inttoptr (i64 16 to ptr), %bb.cg ], [ %.val.i11.i183, %bb.cf ]
  %i.ft = ptrtoint ptr %.sroa.06.0.i6.i175 to i64
  store i64 %i.ft, ptr %.sroa.4.i157, align 8, !alias.scope !2690, !noalias !2685
  br label %.noexc79

bb.cj:                                            ; preds = %bb.ci
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !2694, !noalias !2685
  %.not.i.i.i.i.i186 = icmp slt i8 %i.fw, 0
  %or.cond.i.not.i187 = select i1 %i.ff, i1 true, i1 %.not.i.i.i.i.i186
  br i1 %or.cond.i.not.i187, label %.thread233, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i160)
          to label %.thread233 unwind label %bb.cl, !noalias !2685

bb.cl:                                            ; preds = %bb.ck
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2685
  unreachable

.noexc79:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, %bb.ce
  %.sink.i7.sroa.phi.i176 = phi ptr [ %.sroa.6.i158, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %.sroa.4.i157, %bb.ce ]
  %.sroa.58.0.sink.i8.i177 = phi i64 [ %.val21.i12.i184, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %i.fo, %bb.ce ]
  %storemerge.i9.i178 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ 1, %bb.ce ]
  store i64 %.sroa.58.0.sink.i8.i177, ptr %.sink.i7.sroa.phi.i176, align 8, !alias.scope !2690, !noalias !2685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2684
  store i64 %storemerge.i9.i178, ptr %i.aw, align 8, !alias.scope !2683
  %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180 = load i64, ptr %.sroa.4.i157, align 8, !noalias !2685
  store i64 %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180, ptr %.sroa.4.0..sroa_idx.i179, align 8, !alias.scope !2683
  %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182 = load i64, ptr %.sroa.6.i158, align 8, !noalias !2685
  store i64 %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182, ptr %.sroa.6.0..sroa_idx.i181, align 8, !alias.scope !2683
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2685
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.cm:                                            ; preds = %bb.bq
  %i.fy = load i32, ptr %i.ao, align 8, !alias.scope !2677, !noundef !10
  store i32 %i.fy, ptr %i.ap, align 8, !alias.scope !2676
  store i64 7, ptr %i.k, align 8, !alias.scope !2676
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80: ; preds = %bb.cm, %.noexc79, %.noexc78, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66, %bb.bt, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fz = load i64, ptr %i.r, align 8, !range !31, !alias.scope !2695, !noundef !10
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.co unwind label %.thread

.thread:                                          ; preds = %bb.cn
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  br label %.thread233

bb.co:                                            ; preds = %bb.cn, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.t, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8
  store i64 0, ptr %i.v, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.aq, %bb.co, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %i.i, ptr noundef nonnull align 8 dereferenceable(592) %i.p, i64 592, i1 false)
  store ptr %i.t, ptr %i.ba, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.f, ptr noundef nonnull align 8 dereferenceable(544) %i.p, i64 544, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2697
  %i.gc = load ptr, ptr %i.bb, align 8, !noalias !2697, !nonnull !10, !noundef !10
  %i.gd = load i64, ptr %i.bc, align 8, !noalias !2697, !noundef !10
  invoke void @_RNvNtCsPYQCUnoTxQ_10collection15recommendations26recommend_into_core_search(ptr noalias nofree noundef nonnull sret([472 x i8]) align 8 captures(address) dereferenceable(472) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.gd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(544) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %3)
          to label %bb.cr unwind label %bb.cq, !noalias !2697

bb.cq:                                            ; preds = %bb.cp
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cv, %bb.cq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ge, %bb.cq ], [ %i.gk, %bb.cv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be) #15
          to label %.thread229 unwind label %bb.cz, !noalias !2698

bb.cr:                                            ; preds = %bb.cp
  %i.gf = load i64, ptr %i.e, align 8, !range !24, !noalias !2697, !noundef !10
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %.sroa.0208.0.copyload209 = load i64, ptr %i.bd, align 8, !noalias !2699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210.0..sroa_idx211, i64 40, i1 false), !noalias !2699
  br label %bb.cy

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.d, ptr noundef nonnull align 8 dereferenceable(472) %i.e, i64 472, i1 false), !noalias !2697
  %i.gh = load i64, ptr %i.v, align 8, !alias.scope !2700, !noundef !10 ; 3 uses
  %i.gi = load i64, ptr %i.t, align 8, !range !21, !alias.scope !2700, !noundef !10
  %i.gj = icmp eq i64 %i.gh, %i.gi
  br i1 %i.gj, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.cx unwind label %bb.cv, !noalias !2701

bb.cv:                                            ; preds = %bb.cu
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(472) %i.d) #15
          to label %.body.i unwind label %bb.cw, !noalias !2702

bb.cw:                                            ; preds = %bb.cv
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2702
  unreachable

bb.cx:                                            ; preds = %bb.cu, %bb.ct
  %i.gm = load ptr, ptr %i.u, align 8, !alias.scope !2700, !nonnull !10, !noundef !10
  %i.gn = getelementptr inbounds nuw [472 x i8], ptr %i.gm, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.gn, ptr noundef nonnull align 8 dereferenceable(472) %i.e, i64 472, i1 false), !noalias !2702
  %i.go = add i64 %i.gh, 1
  store i64 %i.go, ptr %i.v, align 8, !alias.scope !2700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2697
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cs
  %.sroa.0208.0 = phi i64 [ %.sroa.0208.0.copyload209, %bb.cs ], [ -1, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2697
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be)
          to label %_RNCNCINvNtCsPYQCUnoTxQ_10collection15recommendations18recommend_batch_byNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1h_14TableOfContent9recommend00NCNvMB1h_B2c_18get_collection_opt0E0s2_0Csl8OoimOLbh_6qdrant.exit unwind label %bb.q

bb.cz:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2698
  unreachable

bb.da:                                            ; preds = %bb.db, %bb.bp
  %.sroa.0.11 = phi i8 [ 0, %bb.bp ], [ 1, %bb.db ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
end_hunk_12
begin_hunk_13_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsTNtNtNtNtB6_10operations15universal_query16collection_query22CollectionQueryRequestNtNtB18_23shard_selector_internal21ShardSelectorInternalEB2m_INtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEIB3m_NCNvMNtNtB6_10collection5queryNtB4S_10Collection14do_query_batch0EIB3m_B11_ENCNCINvB4P_11query_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB6w_14TableOfContent11query_batch00NCNvMB6w_B7r_18get_collection_opt0E0s_0NCB61_s0_0NCB61_s1_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEECsl8OoimOLbh_6qdrant.exit91

bb.i:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bt = load i64, ptr %i.h, align 8, !range !29, !noundef !10
  %.not13 = icmp eq i64 %i.bt, -1
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEECsl8OoimOLbh_6qdrant.exit91

bb.m:                                             ; preds = %bb.k, %bb.dd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtB1w_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86
  %.sroa.0.7 = phi i8 [ %.sroa.0.11, %bb.dd ], [ %.sroa.0.11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtB1w_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86 ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtBM_10Collection14do_query_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtBT_10Collection14do_query_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %.body31 unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtBT_10Collection14do_query_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB1f_10Collection14do_query_batch0EECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.p:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEECsl8OoimOLbh_6qdrant.exit91: ; preds = %bb.l, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB1f_10Collection14do_query_batch0EECsl8OoimOLbh_6qdrant.exit, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

.thread245.loopexit:                              ; preds = %bb.ba, %bb.ac, %bb.s, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57, %bb.bz
  %.sroa.0.9.ph.ph = phi i8 [ 0, %bb.bz ], [ 0, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57 ], [ 1, %bb.s ], [ 1, %bb.ac ], [ 1, %bb.ba ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

.thread245.loopexit.split-lp:                     ; preds = %.invoke271, %.invoke
  %.sroa.0.9.ph.ph249 = phi i8 [ 1, %.invoke271 ], [ 0, %.invoke ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

bb.q:                                             ; preds = %bb.cy
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread229

bb.r:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtB13_23shard_selector_internal21ShardSelectorInternalEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.0202.0.copyload203, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(656) %.sroa.8, i64 656, i1 false)
  %i.bx = load i64, ptr %i.r, align 8, !range !31, !noundef !10
  %.not14 = icmp eq i64 %i.bx, -1
  br i1 %.not14, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = invoke fastcc noundef zeroext i1 @_RNvYNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r)
          to label %bb.aq unwind label %.thread245.loopexit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2778)
  call void @llvm.experimental.noalias.scope.decl(metadata !2779)
  %i.bz = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2779, !noundef !10 ; 4 uses
  %i.ca = icmp ne i64 %i.bz, 6
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nsw i64 %i.bz, -2
  %i.cc = icmp samesign ugt i64 %i.bz, 1
  %i.cd = select i1 %i.cc, i64 %i.cb, i64 4
  switch i64 %i.cd, label %bb.u [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.x
    i64 3, label %bb.ac
    i64 4, label %bb.ad
    i64 5, label %bb.ap
  ]

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  store i64 2, ptr %i.j, align 8, !alias.scope !2778
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %bb.t
  store i64 3, ptr %i.j, align 8, !alias.scope !2778
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2780)
  call void @llvm.experimental.noalias.scope.decl(metadata !2781)
  %i.ce = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2782, !noundef !10
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = load i64, ptr %i.ar, align 8, !alias.scope !2782, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.ax, align 1, !alias.scope !2782, !noundef !10
  %.not.i.i = icmp sgt i8 %i.ch, -1
  %.val.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !2782 ; 5 uses
  %.val21.i.i = load i64, ptr %i.as, align 8, !alias.scope !2782 ; 2 uses
  br i1 %.not.i.i, label %bb.aa, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cj = atomicrmw add ptr %i.ci, i64 1 monotonic, align 8, !noalias !2783
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.z, %bb.ab, %bb.aa
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ab ], [ inttoptr (i64 16 to ptr), %bb.aa ], [ %.val.i.i, %bb.z ]
  %i.cl = ptrtoint ptr %.sroa.06.0.i.i to i64
  store i64 %i.cl, ptr %.sroa.4.i, align 8, !alias.scope !2780, !noalias !2784
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.y
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.4.i, %bb.y ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.cg, %bb.y ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.y ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !2780, !noalias !2784
  store i64 %storemerge.i.i, ptr %i.ay, align 8, !alias.scope !2778
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !2784
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2778
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !2784
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %i.az, align 8, !alias.scope !2778
  store i64 4, ptr %i.j, align 8, !alias.scope !2778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.t
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc33 unwind label %.thread245.loopexit

.noexc33:                                         ; preds = %bb.ac
  store i64 5, ptr %i.j, align 8, !alias.scope !2778
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ad:                                            ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2787
  call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  call void @llvm.experimental.noalias.scope.decl(metadata !2789)
  %i.cm = trunc nuw i64 %i.bz to i1               ; 2 uses
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load i64, ptr %i.ao, align 8, !alias.scope !2790, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

bb.af:                                            ; preds = %bb.ad
  %i.co = load i8, ptr %i.aq, align 1, !alias.scope !2790, !noundef !10
  %.not.i.i94 = icmp sgt i8 %i.co, -1
  %.val.i.i107 = load ptr, ptr %i.ao, align 8, !alias.scope !2790 ; 5 uses
  %.val21.i.i108 = load i64, ptr %i.ar, align 8, !alias.scope !2790 ; 2 uses
  br i1 %.not.i.i94, label %5, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97

5:                                                ; preds = %bb.af
  %.not.i.i.i.i109 = icmp eq ptr %.val.i.i107, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i109, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, label %bb.ag

bb.ag:                                            ; preds = %5
  %i.cp = getelementptr inbounds i8, ptr %.val.i.i107, i64 -16
  %i.cq = atomicrmw add ptr %i.cp, i64 1 monotonic, align 8, !noalias !2791
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97: ; preds = %bb.af, %bb.ag, %5
  %.sroa.06.0.i.i99 = phi ptr [ %.val.i.i107, %bb.ag ], [ inttoptr (i64 16 to ptr), %5 ], [ %.val.i.i107, %bb.af ]
  store ptr %.sroa.06.0.i.i99, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !2788, !noalias !2787
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, %bb.ae
  %.sink.i.sroa.phi.i101 = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %.sink.i.sroa.gep16.i, %bb.ae ]
  %.sroa.58.0.sink.i.i102 = phi i64 [ %.val21.i.i108, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %i.cn, %bb.ae ]
  %i.cs = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ 1, %bb.ae ]
  store i64 %.sroa.58.0.sink.i.i102, ptr %.sink.i.sroa.phi.i101, align 8, !alias.scope !2788, !noalias !2787
  store i64 %i.cs, ptr %i.c, align 8, !alias.scope !2788, !noalias !2787
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  call void @llvm.experimental.noalias.scope.decl(metadata !2793)
  %i.ct = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2794, !noundef !10
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cv = load i64, ptr %i.at, align 8, !alias.scope !2794, !noundef !10
  br label %.noexc34

bb.ai:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cw = load i8, ptr %i.au, align 1, !alias.scope !2794, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cw, -1
  %.val.i11.i = load ptr, ptr %i.at, align 8, !alias.scope !2794 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.av, align 8, !alias.scope !2794 ; 2 uses
  br i1 %.not.i1.i, label %bb.aj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cy = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8, !noalias !2795
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.al, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.am, !noalias !2787

.noexc.i:                                         ; preds = %bb.al
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.ai, %bb.ak, %bb.aj
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %bb.aj ], [ %.val.i11.i, %bb.ai ]
  %i.da = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.da, ptr %.sroa.4.i92, align 8, !alias.scope !2792, !noalias !2787
  br label %.noexc34

bb.am:                                            ; preds = %bb.al
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !2796, !noalias !2787
  %.not.i.i.i.i.i = icmp slt i8 %i.dd, 0
  %or.cond.i.not.i = select i1 %i.cm, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.not.i, label %.thread233, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.thread233 unwind label %bb.ao, !noalias !2787

bb.ao:                                            ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2787
  unreachable

.noexc34:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.ah
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i93, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i92, %bb.ah ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cv, %bb.ah ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.ah ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !2792, !noalias !2787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2786
  store i64 %storemerge.i9.i, ptr %i.az, align 8, !alias.scope !2785
  %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104 = load i64, ptr %.sroa.4.i92, align 8, !noalias !2787
  store i64 %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104, ptr %.sroa.4.0..sroa_idx.i103, align 8, !alias.scope !2785
  %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106 = load i64, ptr %.sroa.6.i93, align 8, !noalias !2787
  store i64 %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106, ptr %.sroa.6.0..sroa_idx.i105, align 8, !alias.scope !2785
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2787
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %bb.t
  %i.df = load i32, ptr %i.ao, align 8, !alias.scope !2779, !noundef !10
  store i32 %i.df, ptr %i.ay, align 8, !alias.scope !2778
  store i64 7, ptr %i.j, align 8, !alias.scope !2778
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.aq:                                            ; preds = %bb.s
  br i1 %i.by, label %bb.ar, label %bb.cp

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  %i.dg = load i64, ptr %i.r, align 8, !range !28, !alias.scope !2798, !noundef !10 ; 4 uses
  %i.dh = icmp ne i64 %i.dg, 6
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nsw i64 %i.dg, -2
  %i.dj = icmp samesign ugt i64 %i.dg, 1
  %i.dk = select i1 %i.dj, i64 %i.di, i64 4
  switch i64 %i.dk, label %bb.as [
    i64 0, label %bb.at
    i64 1, label %bb.au
    i64 2, label %bb.av
    i64 3, label %bb.ba
    i64 4, label %bb.bb
    i64 5, label %bb.bn
  ]

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 2, ptr %i.m, align 8, !alias.scope !2797
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.au:                                            ; preds = %bb.ar
  store i64 3, ptr %i.m, align 8, !alias.scope !2797
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i36)
  call void @llvm.experimental.noalias.scope.decl(metadata !2799)
  call void @llvm.experimental.noalias.scope.decl(metadata !2800)
  %i.dl = load i64, ptr %i.ac, align 8, !range !11, !alias.scope !2801, !noundef !10
  %i.dm = trunc nuw i64 %i.dl to i1
  br i1 %i.dm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dn = load i64, ptr %i.af, align 8, !alias.scope !2801, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

bb.ax:                                            ; preds = %bb.av
  %i.do = load i8, ptr %i.al, align 1, !alias.scope !2801, !noundef !10
  %.not.i.i37 = icmp sgt i8 %i.do, -1
  %.val.i.i51 = load ptr, ptr %i.af, align 8, !alias.scope !2801 ; 5 uses
  %.val21.i.i52 = load i64, ptr %i.ag, align 8, !alias.scope !2801 ; 2 uses
  br i1 %.not.i.i37, label %bb.ay, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i.i53 = icmp eq ptr %.val.i.i51, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i53, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dp = getelementptr inbounds i8, ptr %.val.i.i51, i64 -16
  %i.dq = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !2802
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, !prof !30

.invoke271:                                       ; preds = %bb.be, %bb.az, %bb.ag, %bb.ab
  %i.ds = phi ptr [ %.val.i.i107, %bb.ag ], [ %.val.i.i51, %bb.az ], [ %.val.i.i, %bb.ab ], [ %.val.i.i148, %bb.be ]
  %i.dt = phi i64 [ %.val21.i.i108, %bb.ag ], [ %.val21.i.i52, %bb.az ], [ %.val21.i.i, %bb.ab ], [ %.val21.i.i149, %bb.be ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ds, i64 noundef %i.dt) #19
          to label %.cont272 unwind label %.thread245.loopexit.split-lp

.cont272:                                         ; preds = %.invoke271
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40: ; preds = %bb.ax, %bb.az, %bb.ay
  %.sroa.06.0.i.i42 = phi ptr [ %.val.i.i51, %bb.az ], [ inttoptr (i64 16 to ptr), %bb.ay ], [ %.val.i.i51, %bb.ax ]
  %i.du = ptrtoint ptr %.sroa.06.0.i.i42 to i64
  store i64 %i.du, ptr %.sroa.4.i35, align 8, !alias.scope !2799, !noalias !2803
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, %bb.aw
  %.sink.i.sroa.phi.i44 = phi ptr [ %.sroa.6.i36, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %.sroa.4.i35, %bb.aw ]
  %.sroa.58.0.sink.i.i45 = phi i64 [ %.val21.i.i52, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %i.dn, %bb.aw ]
  %storemerge.i.i46 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ 1, %bb.aw ]
  store i64 %.sroa.58.0.sink.i.i45, ptr %.sink.i.sroa.phi.i44, align 8, !alias.scope !2799, !noalias !2803
  store i64 %storemerge.i.i46, ptr %i.ad, align 8, !alias.scope !2797
  %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48 = load i64, ptr %.sroa.4.i35, align 8, !noalias !2803
  store i64 %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48, ptr %.sroa.4.0..sroa_idx.i47, align 8, !alias.scope !2797
  %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50 = load i64, ptr %.sroa.6.i36, align 8, !noalias !2803
  store i64 %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50, ptr %i.ak, align 8, !alias.scope !2797
  store i64 4, ptr %i.m, align 8, !alias.scope !2797
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i36)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.ba:                                            ; preds = %bb.ar
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc55 unwind label %.thread245.loopexit

.noexc55:                                         ; preds = %bb.ba
  store i64 5, ptr %i.m, align 8, !alias.scope !2797
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bb:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !2804)
  call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2806
  call void @llvm.experimental.noalias.scope.decl(metadata !2807)
  call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  %i.dv = trunc nuw i64 %i.dg to i1               ; 2 uses
  br i1 %i.dv, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dw = load i64, ptr %i.ac, align 8, !alias.scope !2809, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

bb.bd:                                            ; preds = %bb.bb
  %i.dx = load i8, ptr %i.ae, align 1, !alias.scope !2809, !noundef !10
  %.not.i.i119 = icmp sgt i8 %i.dx, -1
  %.val.i.i148 = load ptr, ptr %i.ac, align 8, !alias.scope !2809 ; 5 uses
  %.val21.i.i149 = load i64, ptr %i.af, align 8, !alias.scope !2809 ; 2 uses
  br i1 %.not.i.i119, label %6, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122

6:                                                ; preds = %bb.bd
  %.not.i.i.i.i150 = icmp eq ptr %.val.i.i148, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i150, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, label %bb.be

bb.be:                                            ; preds = %6
  %i.dy = getelementptr inbounds i8, ptr %.val.i.i148, i64 -16
  %i.dz = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !noalias !2810
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122: ; preds = %bb.bd, %bb.be, %6
  %.sroa.06.0.i.i124 = phi ptr [ %.val.i.i148, %bb.be ], [ inttoptr (i64 16 to ptr), %6 ], [ %.val.i.i148, %bb.bd ]
  store ptr %.sroa.06.0.i.i124, ptr %.sink.i.sroa.gep16.i118, align 8, !alias.scope !2807, !noalias !2806
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, %bb.bc
  %.sink.i.sroa.phi.i126 = phi ptr [ %.sink.i.sroa.gep.i117, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %.sink.i.sroa.gep16.i118, %bb.bc ]
  %.sroa.58.0.sink.i.i127 = phi i64 [ %.val21.i.i149, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %i.dw, %bb.bc ]
  %i.eb = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ 1, %bb.bc ]
  store i64 %.sroa.58.0.sink.i.i127, ptr %.sink.i.sroa.phi.i126, align 8, !alias.scope !2807, !noalias !2806
  store i64 %i.eb, ptr %i.b, align 8, !alias.scope !2807, !noalias !2806
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.experimental.noalias.scope.decl(metadata !2811)
  call void @llvm.experimental.noalias.scope.decl(metadata !2812)
  %i.ec = load i64, ptr %i.ag, align 8, !range !11, !alias.scope !2813, !noundef !10
  %i.ed = trunc nuw i64 %i.ec to i1
  br i1 %i.ed, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ee = load i64, ptr %i.ah, align 8, !alias.scope !2813, !noundef !10
  br label %.noexc56

bb.bg:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ef = load i8, ptr %i.ai, align 1, !alias.scope !2813, !noundef !10
  %.not.i1.i128 = icmp sgt i8 %i.ef, -1
  %.val.i11.i141 = load ptr, ptr %i.ah, align 8, !alias.scope !2813 ; 5 uses
  %.val21.i12.i142 = load i64, ptr %i.aj, align 8, !alias.scope !2813 ; 2 uses
  br i1 %.not.i1.i128, label %bb.bh, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i.i13.i143 = icmp eq ptr %.val.i11.i141, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i143, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eg = getelementptr inbounds i8, ptr %.val.i11.i141, i64 -16
  %i.eh = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8, !noalias !2814
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.bj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, !prof !30

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i141, i64 noundef %.val21.i12.i142) #19
          to label %.noexc.i147 unwind label %bb.bk, !noalias !2806

.noexc.i147:                                      ; preds = %bb.bj
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131: ; preds = %bb.bg, %bb.bi, %bb.bh
  %.sroa.06.0.i6.i133 = phi ptr [ %.val.i11.i141, %bb.bi ], [ inttoptr (i64 16 to ptr), %bb.bh ], [ %.val.i11.i141, %bb.bg ]
  %i.ej = ptrtoint ptr %.sroa.06.0.i6.i133 to i64
  store i64 %i.ej, ptr %.sroa.4.i115, align 8, !alias.scope !2811, !noalias !2806
  br label %.noexc56

bb.bk:                                            ; preds = %bb.bj
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !2815, !noalias !2806
  %.not.i.i.i.i.i144 = icmp slt i8 %i.em, 0
  %or.cond.i.not.i145 = select i1 %i.dv, i1 true, i1 %.not.i.i.i.i.i144
  br i1 %or.cond.i.not.i145, label %.thread233, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i118)
          to label %.thread233 unwind label %bb.bm, !noalias !2806

bb.bm:                                            ; preds = %bb.bl
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2806
  unreachable

.noexc56:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, %bb.bf
  %.sink.i7.sroa.phi.i134 = phi ptr [ %.sroa.6.i116, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %.sroa.4.i115, %bb.bf ]
  %.sroa.58.0.sink.i8.i135 = phi i64 [ %.val21.i12.i142, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %i.ee, %bb.bf ]
  %storemerge.i9.i136 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ 1, %bb.bf ]
  store i64 %.sroa.58.0.sink.i8.i135, ptr %.sink.i7.sroa.phi.i134, align 8, !alias.scope !2811, !noalias !2806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2805
  store i64 %storemerge.i9.i136, ptr %i.ak, align 8, !alias.scope !2804
  %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138 = load i64, ptr %.sroa.4.i115, align 8, !noalias !2806
  store i64 %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138, ptr %.sroa.4.0..sroa_idx.i137, align 8, !alias.scope !2804
  %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140 = load i64, ptr %.sroa.6.i116, align 8, !noalias !2806
  store i64 %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140, ptr %.sroa.6.0..sroa_idx.i139, align 8, !alias.scope !2804
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2806
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bn:                                            ; preds = %bb.ar
  %i.eo = load i32, ptr %i.ac, align 8, !alias.scope !2798, !noundef !10
  store i32 %i.eo, ptr %i.ad, align 8, !alias.scope !2797
  store i64 7, ptr %i.m, align 8, !alias.scope !2797
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57: ; preds = %bb.bn, %.noexc56, %.noexc55, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43, %bb.au, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  store ptr %i.s, ptr %i.an, align 8
  invoke fastcc void @_RNCNCINvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB9_10Collection11query_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1v_14TableOfContent11query_batch00NCNvMB1v_B2q_18get_collection_opt0E0s1_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef align 8 dereferenceable(40) %4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am, ptr noundef nonnull align 8 %i.s)
          to label %bb.bo unwind label %.thread245.loopexit

bb.bo:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ep = load i64, ptr %i.o, align 8, !range !29, !noundef !10
  %.not15 = icmp eq i64 %i.ep, -1
  br i1 %.not15, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtBI_23shard_selector_internal21ShardSelectorInternalEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(664) %i.p)
          to label %bb.da unwind label %bb.d

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  call void @llvm.experimental.noalias.scope.decl(metadata !2817)
  %i.eq = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2817, !noundef !10 ; 4 uses
  %i.er = icmp ne i64 %i.eq, 6
  call void @llvm.assume(i1 %i.er)
  %i.es = add nsw i64 %i.eq, -2
  %i.et = icmp samesign ugt i64 %i.eq, 1
  %i.eu = select i1 %i.et, i64 %i.es, i64 4
  switch i64 %i.eu, label %bb.br [
    i64 0, label %bb.bs
    i64 1, label %bb.bt
    i64 2, label %bb.bu
    i64 3, label %bb.bz
    i64 4, label %bb.ca
    i64 5, label %bb.cm
  ]

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  store i64 2, ptr %i.k, align 8, !alias.scope !2816
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bt:                                            ; preds = %bb.bq
  store i64 3, ptr %i.k, align 8, !alias.scope !2816
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i59)
  call void @llvm.experimental.noalias.scope.decl(metadata !2818)
  call void @llvm.experimental.noalias.scope.decl(metadata !2819)
  %i.ev = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2820, !noundef !10
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ex = load i64, ptr %i.ar, align 8, !alias.scope !2820, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

bb.bw:                                            ; preds = %bb.bu
  %i.ey = load i8, ptr %i.ax, align 1, !alias.scope !2820, !noundef !10
  %.not.i.i60 = icmp sgt i8 %i.ey, -1
  %.val.i.i74 = load ptr, ptr %i.ar, align 8, !alias.scope !2820 ; 5 uses
  %.val21.i.i75 = load i64, ptr %i.as, align 8, !alias.scope !2820 ; 2 uses
  br i1 %.not.i.i60, label %bb.bx, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i.i76 = icmp eq ptr %.val.i.i74, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i76, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ez = getelementptr inbounds i8, ptr %.val.i.i74, i64 -16
  %i.fa = atomicrmw add ptr %i.ez, i64 1 monotonic, align 8, !noalias !2821
  %i.fb = icmp slt i64 %i.fa, 0
  br i1 %i.fb, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, !prof !30

.invoke:                                          ; preds = %bb.cd, %bb.by
  %i.fc = phi ptr [ %.val.i.i74, %bb.by ], [ %.val.i.i190, %bb.cd ]
  %i.fd = phi i64 [ %.val21.i.i75, %bb.by ], [ %.val21.i.i191, %bb.cd ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.fc, i64 noundef %i.fd) #19
          to label %.cont unwind label %.thread245.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63: ; preds = %bb.bw, %bb.by, %bb.bx
  %.sroa.06.0.i.i65 = phi ptr [ %.val.i.i74, %bb.by ], [ inttoptr (i64 16 to ptr), %bb.bx ], [ %.val.i.i74, %bb.bw ]
  %i.fe = ptrtoint ptr %.sroa.06.0.i.i65 to i64
  store i64 %i.fe, ptr %.sroa.4.i58, align 8, !alias.scope !2818, !noalias !2822
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, %bb.bv
  %.sink.i.sroa.phi.i67 = phi ptr [ %.sroa.6.i59, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %.sroa.4.i58, %bb.bv ]
  %.sroa.58.0.sink.i.i68 = phi i64 [ %.val21.i.i75, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %i.ex, %bb.bv ]
  %storemerge.i.i69 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ 1, %bb.bv ]
  store i64 %.sroa.58.0.sink.i.i68, ptr %.sink.i.sroa.phi.i67, align 8, !alias.scope !2818, !noalias !2822
  store i64 %storemerge.i.i69, ptr %i.ap, align 8, !alias.scope !2816
  %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71 = load i64, ptr %.sroa.4.i58, align 8, !noalias !2822
  store i64 %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71, ptr %.sroa.4.0..sroa_idx.i70, align 8, !alias.scope !2816
  %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73 = load i64, ptr %.sroa.6.i59, align 8, !noalias !2822
  store i64 %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73, ptr %i.aw, align 8, !alias.scope !2816
  store i64 4, ptr %i.k, align 8, !alias.scope !2816
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i59)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bz:                                            ; preds = %bb.bq
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc78 unwind label %.thread245.loopexit

.noexc78:                                         ; preds = %bb.bz
  store i64 5, ptr %i.k, align 8, !alias.scope !2816
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.ca:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !2823)
  call void @llvm.experimental.noalias.scope.decl(metadata !2824)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2825
  call void @llvm.experimental.noalias.scope.decl(metadata !2826)
  call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  %i.ff = trunc nuw i64 %i.eq to i1               ; 2 uses
  br i1 %i.ff, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fg = load i64, ptr %i.ao, align 8, !alias.scope !2828, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

bb.cc:                                            ; preds = %bb.ca
  %i.fh = load i8, ptr %i.aq, align 1, !alias.scope !2828, !noundef !10
  %.not.i.i161 = icmp sgt i8 %i.fh, -1
  %.val.i.i190 = load ptr, ptr %i.ao, align 8, !alias.scope !2828 ; 5 uses
  %.val21.i.i191 = load i64, ptr %i.ar, align 8, !alias.scope !2828 ; 2 uses
  br i1 %.not.i.i161, label %7, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164

7:                                                ; preds = %bb.cc
  %.not.i.i.i.i192 = icmp eq ptr %.val.i.i190, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i192, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, label %bb.cd

bb.cd:                                            ; preds = %7
  %i.fi = getelementptr inbounds i8, ptr %.val.i.i190, i64 -16
  %i.fj = atomicrmw add ptr %i.fi, i64 1 monotonic, align 8, !noalias !2829
  %i.fk = icmp slt i64 %i.fj, 0
  br i1 %i.fk, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164: ; preds = %bb.cc, %bb.cd, %7
  %.sroa.06.0.i.i166 = phi ptr [ %.val.i.i190, %bb.cd ], [ inttoptr (i64 16 to ptr), %7 ], [ %.val.i.i190, %bb.cc ]
  store ptr %.sroa.06.0.i.i166, ptr %.sink.i.sroa.gep16.i160, align 8, !alias.scope !2826, !noalias !2825
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, %bb.cb
  %.sink.i.sroa.phi.i168 = phi ptr [ %.sink.i.sroa.gep.i159, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %.sink.i.sroa.gep16.i160, %bb.cb ]
  %.sroa.58.0.sink.i.i169 = phi i64 [ %.val21.i.i191, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %i.fg, %bb.cb ]
  %i.fl = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ 1, %bb.cb ]
  store i64 %.sroa.58.0.sink.i.i169, ptr %.sink.i.sroa.phi.i168, align 8, !alias.scope !2826, !noalias !2825
  store i64 %i.fl, ptr %i.a, align 8, !alias.scope !2826, !noalias !2825
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  %i.fm = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2832, !noundef !10
  %i.fn = trunc nuw i64 %i.fm to i1
  br i1 %i.fn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fo = load i64, ptr %i.at, align 8, !alias.scope !2832, !noundef !10
  br label %.noexc79

bb.cf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fp = load i8, ptr %i.au, align 1, !alias.scope !2832, !noundef !10
  %.not.i1.i170 = icmp sgt i8 %i.fp, -1
  %.val.i11.i183 = load ptr, ptr %i.at, align 8, !alias.scope !2832 ; 5 uses
  %.val21.i12.i184 = load i64, ptr %i.av, align 8, !alias.scope !2832 ; 2 uses
  br i1 %.not.i1.i170, label %bb.cg, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i13.i185 = icmp eq ptr %.val.i11.i183, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i185, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fq = getelementptr inbounds i8, ptr %.val.i11.i183, i64 -16
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !2833
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.ci, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, !prof !30

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i183, i64 noundef %.val21.i12.i184) #19
          to label %.noexc.i189 unwind label %bb.cj, !noalias !2825

.noexc.i189:                                      ; preds = %bb.ci
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173: ; preds = %bb.cf, %bb.ch, %bb.cg
  %.sroa.06.0.i6.i175 = phi ptr [ %.val.i11.i183, %bb.ch ], [ inttoptr (i64 16 to ptr), %bb.cg ], [ %.val.i11.i183, %bb.cf ]
  %i.ft = ptrtoint ptr %.sroa.06.0.i6.i175 to i64
  store i64 %i.ft, ptr %.sroa.4.i157, align 8, !alias.scope !2830, !noalias !2825
  br label %.noexc79

bb.cj:                                            ; preds = %bb.ci
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !2834, !noalias !2825
  %.not.i.i.i.i.i186 = icmp slt i8 %i.fw, 0
  %or.cond.i.not.i187 = select i1 %i.ff, i1 true, i1 %.not.i.i.i.i.i186
  br i1 %or.cond.i.not.i187, label %.thread233, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i160)
          to label %.thread233 unwind label %bb.cl, !noalias !2825

bb.cl:                                            ; preds = %bb.ck
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2825
  unreachable

.noexc79:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, %bb.ce
  %.sink.i7.sroa.phi.i176 = phi ptr [ %.sroa.6.i158, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %.sroa.4.i157, %bb.ce ]
  %.sroa.58.0.sink.i8.i177 = phi i64 [ %.val21.i12.i184, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %i.fo, %bb.ce ]
  %storemerge.i9.i178 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ 1, %bb.ce ]
  store i64 %.sroa.58.0.sink.i8.i177, ptr %.sink.i7.sroa.phi.i176, align 8, !alias.scope !2830, !noalias !2825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2824
  store i64 %storemerge.i9.i178, ptr %i.aw, align 8, !alias.scope !2823
  %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180 = load i64, ptr %.sroa.4.i157, align 8, !noalias !2825
  store i64 %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180, ptr %.sroa.4.0..sroa_idx.i179, align 8, !alias.scope !2823
  %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182 = load i64, ptr %.sroa.6.i158, align 8, !noalias !2825
  store i64 %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182, ptr %.sroa.6.0..sroa_idx.i181, align 8, !alias.scope !2823
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2825
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.cm:                                            ; preds = %bb.bq
  %i.fy = load i32, ptr %i.ao, align 8, !alias.scope !2817, !noundef !10
  store i32 %i.fy, ptr %i.ap, align 8, !alias.scope !2816
  store i64 7, ptr %i.k, align 8, !alias.scope !2816
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80: ; preds = %bb.cm, %.noexc79, %.noexc78, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66, %bb.bt, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fz = load i64, ptr %i.r, align 8, !range !31, !alias.scope !2835, !noundef !10
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.co unwind label %.thread

.thread:                                          ; preds = %bb.cn
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  br label %.thread233

bb.co:                                            ; preds = %bb.cn, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.t, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8
  store i64 0, ptr %i.v, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.aq, %bb.co, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.i, ptr noundef nonnull align 8 dereferenceable(664) %i.p, i64 664, i1 false)
  store ptr %i.t, ptr %i.ba, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.f, ptr noundef nonnull align 8 dereferenceable(616) %i.p, i64 616, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2837
  %i.gc = load ptr, ptr %i.bb, align 8, !noalias !2837, !nonnull !10, !noundef !10
  %i.gd = load i64, ptr %i.bc, align 8, !noalias !2837, !noundef !10
  invoke void @_RNvMs6_NtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_queryNtB5_22CollectionQueryRequest22try_into_shard_request(ptr noalias nofree noundef nonnull sret([568 x i8]) align 8 captures(none) dereferenceable(568) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(616) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.gd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %3)
          to label %bb.cr unwind label %bb.cq, !noalias !2837

bb.cq:                                            ; preds = %bb.cp
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cv, %bb.cq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ge, %bb.cq ], [ %i.gk, %bb.cv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be) #15
          to label %.thread229 unwind label %bb.cz, !noalias !2838

bb.cr:                                            ; preds = %bb.cp
  %i.gf = load i64, ptr %i.e, align 8, !range !24, !noalias !2837, !noundef !10
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %.sroa.0208.0.copyload209 = load i64, ptr %i.bd, align 8, !noalias !2839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210.0..sroa_idx211, i64 40, i1 false), !noalias !2839
  br label %bb.cy

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %i.d, ptr noundef nonnull align 8 dereferenceable(568) %i.e, i64 568, i1 false), !noalias !2837
  %i.gh = load i64, ptr %i.v, align 8, !alias.scope !2840, !noundef !10 ; 3 uses
  %i.gi = load i64, ptr %i.t, align 8, !range !21, !alias.scope !2840, !noundef !10
  %i.gj = icmp eq i64 %i.gh, %i.gi
  br i1 %i.gj, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestE8grow_oneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.cx unwind label %bb.cv, !noalias !2841

bb.cv:                                            ; preds = %bb.cu
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(568) %i.d) #15
          to label %.body.i unwind label %bb.cw, !noalias !2842

bb.cw:                                            ; preds = %bb.cv
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2842
  unreachable

bb.cx:                                            ; preds = %bb.cu, %bb.ct
  %i.gm = load ptr, ptr %i.u, align 8, !alias.scope !2840, !nonnull !10, !noundef !10
  %i.gn = getelementptr inbounds nuw [568 x i8], ptr %i.gm, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %i.gn, ptr noundef nonnull align 8 dereferenceable(568) %i.e, i64 568, i1 false), !noalias !2842
  %i.go = add i64 %i.gh, 1
  store i64 %i.go, ptr %i.v, align 8, !alias.scope !2840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2837
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cs
  %.sroa.0208.0 = phi i64 [ %.sroa.0208.0.copyload209, %bb.cs ], [ -1, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2837
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be)
          to label %_RNCNCINvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB9_10Collection11query_batchNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1v_14TableOfContent11query_batch00NCNvMB1v_B2q_18get_collection_opt0E0s0_0Csl8OoimOLbh_6qdrant.exit unwind label %bb.q

bb.cz:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2838
  unreachable

bb.da:                                            ; preds = %bb.db, %bb.bp
  %.sroa.0.11 = phi i8 [ 0, %bb.bp ], [ 1, %bb.db ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
end_hunk_13
begin_hunk_14_@_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching14batch_requestsTNtNtNtNtB6_10operations15universal_query16collection_query22CollectionQueryRequestNtNtB18_23shard_selector_internal21ShardSelectorInternalEB2m_INtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEIB3m_NCNvMNtNtB6_10collection5queryNtB4S_10Collection14do_query_batch0EIB3m_B11_ENCNCINvB4P_11query_batchNCNCNvMs4_NtB4S_15distance_matrixB5f_20search_points_matrix0s4_0NCNCB6p_s4_00E0s_0NCB61_s0_0NCB61_s1_0ECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEECsl8OoimOLbh_6qdrant.exit91

bb.i:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bt = load i64, ptr %i.h, align 8, !range !29, !noundef !10
  %.not13 = icmp eq i64 %i.bt, -1
  br i1 %.not13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEECsl8OoimOLbh_6qdrant.exit91

bb.m:                                             ; preds = %bb.k, %bb.dd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtB1w_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86
  %.sroa.0.7 = phi i8 [ %.sroa.0.11, %bb.dd ], [ %.sroa.0.11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtB1w_23shard_selector_internal21ShardSelectorInternalEEECsl8OoimOLbh_6qdrant.exit86 ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtBM_10Collection14do_query_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtBT_10Collection14do_query_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %.body31 unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtBT_10Collection14do_query_batch0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB1f_10Collection14do_query_batch0EECsl8OoimOLbh_6qdrant.exit unwind label %bb.b

bb.p:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEECsl8OoimOLbh_6qdrant.exit91: ; preds = %bb.l, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB1f_10Collection14do_query_batch0EECsl8OoimOLbh_6qdrant.exit, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

.thread245.loopexit:                              ; preds = %bb.ba, %bb.ac, %bb.s, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57, %bb.bz
  %.sroa.0.9.ph.ph = phi i8 [ 0, %bb.bz ], [ 0, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57 ], [ 1, %bb.s ], [ 1, %bb.ac ], [ 1, %bb.ba ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

.thread245.loopexit.split-lp:                     ; preds = %.invoke271, %.invoke
  %.sroa.0.9.ph.ph249 = phi i8 [ 1, %.invoke271 ], [ 0, %.invoke ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread233

bb.q:                                             ; preds = %bb.cy
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread229

bb.r:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtB13_23shard_selector_internal21ShardSelectorInternalEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.0202.0.copyload203, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(656) %.sroa.8, i64 656, i1 false)
  %i.bx = load i64, ptr %i.r, align 8, !range !31, !noundef !10
  %.not14 = icmp eq i64 %i.bx, -1
  br i1 %.not14, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = invoke fastcc noundef zeroext i1 @_RNvYNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r)
          to label %bb.aq unwind label %.thread245.loopexit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  call void @llvm.experimental.noalias.scope.decl(metadata !2919)
  %i.bz = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2919, !noundef !10 ; 4 uses
  %i.ca = icmp ne i64 %i.bz, 6
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nsw i64 %i.bz, -2
  %i.cc = icmp samesign ugt i64 %i.bz, 1
  %i.cd = select i1 %i.cc, i64 %i.cb, i64 4
  switch i64 %i.cd, label %bb.u [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.x
    i64 3, label %bb.ac
    i64 4, label %bb.ad
    i64 5, label %bb.ap
  ]

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  store i64 2, ptr %i.j, align 8, !alias.scope !2918
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.w:                                             ; preds = %bb.t
  store i64 3, ptr %i.j, align 8, !alias.scope !2918
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  call void @llvm.experimental.noalias.scope.decl(metadata !2921)
  %i.ce = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2922, !noundef !10
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = load i64, ptr %i.ar, align 8, !alias.scope !2922, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.ax, align 1, !alias.scope !2922, !noundef !10
  %.not.i.i = icmp sgt i8 %i.ch, -1
  %.val.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !2922 ; 5 uses
  %.val21.i.i = load i64, ptr %i.as, align 8, !alias.scope !2922 ; 2 uses
  br i1 %.not.i.i, label %bb.aa, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.cj = atomicrmw add ptr %i.ci, i64 1 monotonic, align 8, !noalias !2923
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.z, %bb.ab, %bb.aa
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.ab ], [ inttoptr (i64 16 to ptr), %bb.aa ], [ %.val.i.i, %bb.z ]
  %i.cl = ptrtoint ptr %.sroa.06.0.i.i to i64
  store i64 %i.cl, ptr %.sroa.4.i, align 8, !alias.scope !2920, !noalias !2924
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.y
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.4.i, %bb.y ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.cg, %bb.y ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.y ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !2920, !noalias !2924
  store i64 %storemerge.i.i, ptr %i.ay, align 8, !alias.scope !2918
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !2924
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2918
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = load i64, ptr %.sroa.6.i, align 8, !noalias !2924
  store i64 %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %i.az, align 8, !alias.scope !2918
  store i64 4, ptr %i.j, align 8, !alias.scope !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ac:                                            ; preds = %bb.t
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc33 unwind label %.thread245.loopexit

.noexc33:                                         ; preds = %bb.ac
  store i64 5, ptr %i.j, align 8, !alias.scope !2918
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ad:                                            ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2925)
  call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2927
  call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  call void @llvm.experimental.noalias.scope.decl(metadata !2929)
  %i.cm = trunc nuw i64 %i.bz to i1               ; 2 uses
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load i64, ptr %i.ao, align 8, !alias.scope !2930, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

bb.af:                                            ; preds = %bb.ad
  %i.co = load i8, ptr %i.aq, align 1, !alias.scope !2930, !noundef !10
  %.not.i.i94 = icmp sgt i8 %i.co, -1
  %.val.i.i107 = load ptr, ptr %i.ao, align 8, !alias.scope !2930 ; 5 uses
  %.val21.i.i108 = load i64, ptr %i.ar, align 8, !alias.scope !2930 ; 2 uses
  br i1 %.not.i.i94, label %5, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97

5:                                                ; preds = %bb.af
  %.not.i.i.i.i109 = icmp eq ptr %.val.i.i107, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i109, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, label %bb.ag

bb.ag:                                            ; preds = %5
  %i.cp = getelementptr inbounds i8, ptr %.val.i.i107, i64 -16
  %i.cq = atomicrmw add ptr %i.cp, i64 1 monotonic, align 8, !noalias !2931
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97: ; preds = %bb.af, %bb.ag, %5
  %.sroa.06.0.i.i99 = phi ptr [ %.val.i.i107, %bb.ag ], [ inttoptr (i64 16 to ptr), %5 ], [ %.val.i.i107, %bb.af ]
  store ptr %.sroa.06.0.i.i99, ptr %.sink.i.sroa.gep16.i, align 8, !alias.scope !2928, !noalias !2927
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97, %bb.ae
  %.sink.i.sroa.phi.i101 = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %.sink.i.sroa.gep16.i, %bb.ae ]
  %.sroa.58.0.sink.i.i102 = phi i64 [ %.val21.i.i108, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ %i.cn, %bb.ae ]
  %i.cs = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i97 ], [ 1, %bb.ae ]
  store i64 %.sroa.58.0.sink.i.i102, ptr %.sink.i.sroa.phi.i101, align 8, !alias.scope !2928, !noalias !2927
  store i64 %i.cs, ptr %i.c, align 8, !alias.scope !2928, !noalias !2927
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  call void @llvm.experimental.noalias.scope.decl(metadata !2933)
  %i.ct = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2934, !noundef !10
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cv = load i64, ptr %i.at, align 8, !alias.scope !2934, !noundef !10
  br label %.noexc34

bb.ai:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i100
  %i.cw = load i8, ptr %i.au, align 1, !alias.scope !2934, !noundef !10
  %.not.i1.i = icmp sgt i8 %i.cw, -1
  %.val.i11.i = load ptr, ptr %i.at, align 8, !alias.scope !2934 ; 5 uses
  %.val21.i12.i = load i64, ptr %i.av, align 8, !alias.scope !2934 ; 2 uses
  br i1 %.not.i1.i, label %bb.aj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i13.i = icmp eq ptr %.val.i11.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = getelementptr inbounds i8, ptr %.val.i11.i, i64 -16
  %i.cy = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8, !noalias !2935
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.al, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, !prof !30

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i, i64 noundef %.val21.i12.i) #19
          to label %.noexc.i unwind label %bb.am, !noalias !2927

.noexc.i:                                         ; preds = %bb.al
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i: ; preds = %bb.ai, %bb.ak, %bb.aj
  %.sroa.06.0.i6.i = phi ptr [ %.val.i11.i, %bb.ak ], [ inttoptr (i64 16 to ptr), %bb.aj ], [ %.val.i11.i, %bb.ai ]
  %i.da = ptrtoint ptr %.sroa.06.0.i6.i to i64
  store i64 %i.da, ptr %.sroa.4.i92, align 8, !alias.scope !2932, !noalias !2927
  br label %.noexc34

bb.am:                                            ; preds = %bb.al
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !2936, !noalias !2927
  %.not.i.i.i.i.i = icmp slt i8 %i.dd, 0
  %or.cond.i.not.i = select i1 %i.cm, i1 true, i1 %.not.i.i.i.i.i
  br i1 %or.cond.i.not.i, label %.thread233, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i)
          to label %.thread233 unwind label %bb.ao, !noalias !2927

bb.ao:                                            ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2927
  unreachable

.noexc34:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i, %bb.ah
  %.sink.i7.sroa.phi.i = phi ptr [ %.sroa.6.i93, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %.sroa.4.i92, %bb.ah ]
  %.sroa.58.0.sink.i8.i = phi i64 [ %.val21.i12.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ %i.cv, %bb.ah ]
  %storemerge.i9.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i ], [ 1, %bb.ah ]
  store i64 %.sroa.58.0.sink.i8.i, ptr %.sink.i7.sroa.phi.i, align 8, !alias.scope !2932, !noalias !2927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2926
  store i64 %storemerge.i9.i, ptr %i.az, align 8, !alias.scope !2925
  %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104 = load i64, ptr %.sroa.4.i92, align 8, !noalias !2927
  store i64 %.sroa.4.i92.0..sroa.4.i92.0..sroa.4.i92.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i104, ptr %.sroa.4.0..sroa_idx.i103, align 8, !alias.scope !2925
  %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106 = load i64, ptr %.sroa.6.i93, align 8, !noalias !2927
  store i64 %.sroa.6.i93.0..sroa.6.i93.0..sroa.6.i93.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i106, ptr %.sroa.6.0..sroa_idx.i105, align 8, !alias.scope !2925
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i92)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2927
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ap:                                            ; preds = %bb.t
  %i.df = load i32, ptr %i.ao, align 8, !alias.scope !2919, !noundef !10
  store i32 %i.df, ptr %i.ay, align 8, !alias.scope !2918
  store i64 7, ptr %i.j, align 8, !alias.scope !2918
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.aq:                                            ; preds = %bb.s
  br i1 %i.by, label %bb.ar, label %bb.cp

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !2937)
  call void @llvm.experimental.noalias.scope.decl(metadata !2938)
  %i.dg = load i64, ptr %i.r, align 8, !range !28, !alias.scope !2938, !noundef !10 ; 4 uses
  %i.dh = icmp ne i64 %i.dg, 6
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nsw i64 %i.dg, -2
  %i.dj = icmp samesign ugt i64 %i.dg, 1
  %i.dk = select i1 %i.dj, i64 %i.di, i64 4
  switch i64 %i.dk, label %bb.as [
    i64 0, label %bb.at
    i64 1, label %bb.au
    i64 2, label %bb.av
    i64 3, label %bb.ba
    i64 4, label %bb.bb
    i64 5, label %bb.bn
  ]

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 2, ptr %i.m, align 8, !alias.scope !2937
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.au:                                            ; preds = %bb.ar
  store i64 3, ptr %i.m, align 8, !alias.scope !2937
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i36)
  call void @llvm.experimental.noalias.scope.decl(metadata !2939)
  call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  %i.dl = load i64, ptr %i.ac, align 8, !range !11, !alias.scope !2941, !noundef !10
  %i.dm = trunc nuw i64 %i.dl to i1
  br i1 %i.dm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dn = load i64, ptr %i.af, align 8, !alias.scope !2941, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

bb.ax:                                            ; preds = %bb.av
  %i.do = load i8, ptr %i.al, align 1, !alias.scope !2941, !noundef !10
  %.not.i.i37 = icmp sgt i8 %i.do, -1
  %.val.i.i51 = load ptr, ptr %i.af, align 8, !alias.scope !2941 ; 5 uses
  %.val21.i.i52 = load i64, ptr %i.ag, align 8, !alias.scope !2941 ; 2 uses
  br i1 %.not.i.i37, label %bb.ay, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i.i53 = icmp eq ptr %.val.i.i51, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i53, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dp = getelementptr inbounds i8, ptr %.val.i.i51, i64 -16
  %i.dq = atomicrmw add ptr %i.dp, i64 1 monotonic, align 8, !noalias !2942
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, !prof !30

.invoke271:                                       ; preds = %bb.be, %bb.az, %bb.ag, %bb.ab
  %i.ds = phi ptr [ %.val.i.i107, %bb.ag ], [ %.val.i.i51, %bb.az ], [ %.val.i.i, %bb.ab ], [ %.val.i.i148, %bb.be ]
  %i.dt = phi i64 [ %.val21.i.i108, %bb.ag ], [ %.val21.i.i52, %bb.az ], [ %.val21.i.i, %bb.ab ], [ %.val21.i.i149, %bb.be ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ds, i64 noundef %i.dt) #19
          to label %.cont272 unwind label %.thread245.loopexit.split-lp

.cont272:                                         ; preds = %.invoke271
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40: ; preds = %bb.ax, %bb.az, %bb.ay
  %.sroa.06.0.i.i42 = phi ptr [ %.val.i.i51, %bb.az ], [ inttoptr (i64 16 to ptr), %bb.ay ], [ %.val.i.i51, %bb.ax ]
  %i.du = ptrtoint ptr %.sroa.06.0.i.i42 to i64
  store i64 %i.du, ptr %.sroa.4.i35, align 8, !alias.scope !2939, !noalias !2943
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40, %bb.aw
  %.sink.i.sroa.phi.i44 = phi ptr [ %.sroa.6.i36, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %.sroa.4.i35, %bb.aw ]
  %.sroa.58.0.sink.i.i45 = phi i64 [ %.val21.i.i52, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ %i.dn, %bb.aw ]
  %storemerge.i.i46 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i40 ], [ 1, %bb.aw ]
  store i64 %.sroa.58.0.sink.i.i45, ptr %.sink.i.sroa.phi.i44, align 8, !alias.scope !2939, !noalias !2943
  store i64 %storemerge.i.i46, ptr %i.ad, align 8, !alias.scope !2937
  %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48 = load i64, ptr %.sroa.4.i35, align 8, !noalias !2943
  store i64 %.sroa.4.i35.0..sroa.4.i35.0..sroa.4.i35.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i48, ptr %.sroa.4.0..sroa_idx.i47, align 8, !alias.scope !2937
  %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50 = load i64, ptr %.sroa.6.i36, align 8, !noalias !2943
  store i64 %.sroa.6.i36.0..sroa.6.i36.0..sroa.6.i36.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i50, ptr %i.ak, align 8, !alias.scope !2937
  store i64 4, ptr %i.m, align 8, !alias.scope !2937
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i35)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i36)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.ba:                                            ; preds = %bb.ar
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc55 unwind label %.thread245.loopexit

.noexc55:                                         ; preds = %bb.ba
  store i64 5, ptr %i.m, align 8, !alias.scope !2937
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bb:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2946
  call void @llvm.experimental.noalias.scope.decl(metadata !2947)
  call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  %i.dv = trunc nuw i64 %i.dg to i1               ; 2 uses
  br i1 %i.dv, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dw = load i64, ptr %i.ac, align 8, !alias.scope !2949, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

bb.bd:                                            ; preds = %bb.bb
  %i.dx = load i8, ptr %i.ae, align 1, !alias.scope !2949, !noundef !10
  %.not.i.i119 = icmp sgt i8 %i.dx, -1
  %.val.i.i148 = load ptr, ptr %i.ac, align 8, !alias.scope !2949 ; 5 uses
  %.val21.i.i149 = load i64, ptr %i.af, align 8, !alias.scope !2949 ; 2 uses
  br i1 %.not.i.i119, label %6, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122

6:                                                ; preds = %bb.bd
  %.not.i.i.i.i150 = icmp eq ptr %.val.i.i148, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i150, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, label %bb.be

bb.be:                                            ; preds = %6
  %i.dy = getelementptr inbounds i8, ptr %.val.i.i148, i64 -16
  %i.dz = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !noalias !2950
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %.invoke271, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122: ; preds = %bb.bd, %bb.be, %6
  %.sroa.06.0.i.i124 = phi ptr [ %.val.i.i148, %bb.be ], [ inttoptr (i64 16 to ptr), %6 ], [ %.val.i.i148, %bb.bd ]
  store ptr %.sroa.06.0.i.i124, ptr %.sink.i.sroa.gep16.i118, align 8, !alias.scope !2947, !noalias !2946
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122, %bb.bc
  %.sink.i.sroa.phi.i126 = phi ptr [ %.sink.i.sroa.gep.i117, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %.sink.i.sroa.gep16.i118, %bb.bc ]
  %.sroa.58.0.sink.i.i127 = phi i64 [ %.val21.i.i149, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ %i.dw, %bb.bc ]
  %i.eb = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i122 ], [ 1, %bb.bc ]
  store i64 %.sroa.58.0.sink.i.i127, ptr %.sink.i.sroa.phi.i126, align 8, !alias.scope !2947, !noalias !2946
  store i64 %i.eb, ptr %i.b, align 8, !alias.scope !2947, !noalias !2946
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.experimental.noalias.scope.decl(metadata !2951)
  call void @llvm.experimental.noalias.scope.decl(metadata !2952)
  %i.ec = load i64, ptr %i.ag, align 8, !range !11, !alias.scope !2953, !noundef !10
  %i.ed = trunc nuw i64 %i.ec to i1
  br i1 %i.ed, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ee = load i64, ptr %i.ah, align 8, !alias.scope !2953, !noundef !10
  br label %.noexc56

bb.bg:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i125
  %i.ef = load i8, ptr %i.ai, align 1, !alias.scope !2953, !noundef !10
  %.not.i1.i128 = icmp sgt i8 %i.ef, -1
  %.val.i11.i141 = load ptr, ptr %i.ah, align 8, !alias.scope !2953 ; 5 uses
  %.val21.i12.i142 = load i64, ptr %i.aj, align 8, !alias.scope !2953 ; 2 uses
  br i1 %.not.i1.i128, label %bb.bh, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i.i13.i143 = icmp eq ptr %.val.i11.i141, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i143, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eg = getelementptr inbounds i8, ptr %.val.i11.i141, i64 -16
  %i.eh = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8, !noalias !2954
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.bj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, !prof !30

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i141, i64 noundef %.val21.i12.i142) #19
          to label %.noexc.i147 unwind label %bb.bk, !noalias !2946

.noexc.i147:                                      ; preds = %bb.bj
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131: ; preds = %bb.bg, %bb.bi, %bb.bh
  %.sroa.06.0.i6.i133 = phi ptr [ %.val.i11.i141, %bb.bi ], [ inttoptr (i64 16 to ptr), %bb.bh ], [ %.val.i11.i141, %bb.bg ]
  %i.ej = ptrtoint ptr %.sroa.06.0.i6.i133 to i64
  store i64 %i.ej, ptr %.sroa.4.i115, align 8, !alias.scope !2951, !noalias !2946
  br label %.noexc56

bb.bk:                                            ; preds = %bb.bj
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !2955, !noalias !2946
  %.not.i.i.i.i.i144 = icmp slt i8 %i.em, 0
  %or.cond.i.not.i145 = select i1 %i.dv, i1 true, i1 %.not.i.i.i.i.i144
  br i1 %or.cond.i.not.i145, label %.thread233, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i118)
          to label %.thread233 unwind label %bb.bm, !noalias !2946

bb.bm:                                            ; preds = %bb.bl
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2946
  unreachable

.noexc56:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131, %bb.bf
  %.sink.i7.sroa.phi.i134 = phi ptr [ %.sroa.6.i116, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %.sroa.4.i115, %bb.bf ]
  %.sroa.58.0.sink.i8.i135 = phi i64 [ %.val21.i12.i142, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ %i.ee, %bb.bf ]
  %storemerge.i9.i136 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i131 ], [ 1, %bb.bf ]
  store i64 %.sroa.58.0.sink.i8.i135, ptr %.sink.i7.sroa.phi.i134, align 8, !alias.scope !2951, !noalias !2946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2945
  store i64 %storemerge.i9.i136, ptr %i.ak, align 8, !alias.scope !2944
  %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138 = load i64, ptr %.sroa.4.i115, align 8, !noalias !2946
  store i64 %.sroa.4.i115.0..sroa.4.i115.0..sroa.4.i115.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i138, ptr %.sroa.4.0..sroa_idx.i137, align 8, !alias.scope !2944
  %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140 = load i64, ptr %.sroa.6.i116, align 8, !noalias !2946
  store i64 %.sroa.6.i116.0..sroa.6.i116.0..sroa.6.i116.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i140, ptr %.sroa.6.0..sroa_idx.i139, align 8, !alias.scope !2944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i115)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2946
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

bb.bn:                                            ; preds = %bb.ar
  %i.eo = load i32, ptr %i.ac, align 8, !alias.scope !2938, !noundef !10
  store i32 %i.eo, ptr %i.ad, align 8, !alias.scope !2937
  store i64 7, ptr %i.m, align 8, !alias.scope !2937
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57: ; preds = %bb.bn, %.noexc56, %.noexc55, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i43, %bb.au, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  store ptr %i.s, ptr %i.an, align 8
  invoke fastcc void @_RNCNCINvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB9_10Collection11query_batchNCNCNvMs4_NtB9_15distance_matrixBS_20search_points_matrix0s4_0NCNCB1o_s4_00E0s1_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef align 8 dereferenceable(40) %4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am, ptr noundef nonnull align 8 %i.s)
          to label %bb.bo unwind label %.thread245.loopexit

bb.bo:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ep = load i64, ptr %i.o, align 8, !range !29, !noundef !10
  %.not15 = icmp eq i64 %i.ep, -1
  br i1 %.not15, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query22CollectionQueryRequestNtNtBI_23shard_selector_internal21ShardSelectorInternalEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(664) %i.p)
          to label %bb.da unwind label %bb.d

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !2956)
  call void @llvm.experimental.noalias.scope.decl(metadata !2957)
  %i.eq = load i64, ptr %i.ab, align 8, !range !28, !alias.scope !2957, !noundef !10 ; 4 uses
  %i.er = icmp ne i64 %i.eq, 6
  call void @llvm.assume(i1 %i.er)
  %i.es = add nsw i64 %i.eq, -2
  %i.et = icmp samesign ugt i64 %i.eq, 1
  %i.eu = select i1 %i.et, i64 %i.es, i64 4
  switch i64 %i.eu, label %bb.br [
    i64 0, label %bb.bs
    i64 1, label %bb.bt
    i64 2, label %bb.bu
    i64 3, label %bb.bz
    i64 4, label %bb.ca
    i64 5, label %bb.cm
  ]

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  store i64 2, ptr %i.k, align 8, !alias.scope !2956
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bt:                                            ; preds = %bb.bq
  store i64 3, ptr %i.k, align 8, !alias.scope !2956
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i59)
  call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  call void @llvm.experimental.noalias.scope.decl(metadata !2959)
  %i.ev = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !2960, !noundef !10
  %i.ew = trunc nuw i64 %i.ev to i1
  br i1 %i.ew, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ex = load i64, ptr %i.ar, align 8, !alias.scope !2960, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

bb.bw:                                            ; preds = %bb.bu
  %i.ey = load i8, ptr %i.ax, align 1, !alias.scope !2960, !noundef !10
  %.not.i.i60 = icmp sgt i8 %i.ey, -1
  %.val.i.i74 = load ptr, ptr %i.ar, align 8, !alias.scope !2960 ; 5 uses
  %.val21.i.i75 = load i64, ptr %i.as, align 8, !alias.scope !2960 ; 2 uses
  br i1 %.not.i.i60, label %bb.bx, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i.i76 = icmp eq ptr %.val.i.i74, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i76, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ez = getelementptr inbounds i8, ptr %.val.i.i74, i64 -16
  %i.fa = atomicrmw add ptr %i.ez, i64 1 monotonic, align 8, !noalias !2961
  %i.fb = icmp slt i64 %i.fa, 0
  br i1 %i.fb, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, !prof !30

.invoke:                                          ; preds = %bb.cd, %bb.by
  %i.fc = phi ptr [ %.val.i.i74, %bb.by ], [ %.val.i.i190, %bb.cd ]
  %i.fd = phi i64 [ %.val21.i.i75, %bb.by ], [ %.val21.i.i191, %bb.cd ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.fc, i64 noundef %i.fd) #19
          to label %.cont unwind label %.thread245.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63: ; preds = %bb.bw, %bb.by, %bb.bx
  %.sroa.06.0.i.i65 = phi ptr [ %.val.i.i74, %bb.by ], [ inttoptr (i64 16 to ptr), %bb.bx ], [ %.val.i.i74, %bb.bw ]
  %i.fe = ptrtoint ptr %.sroa.06.0.i.i65 to i64
  store i64 %i.fe, ptr %.sroa.4.i58, align 8, !alias.scope !2958, !noalias !2962
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63, %bb.bv
  %.sink.i.sroa.phi.i67 = phi ptr [ %.sroa.6.i59, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %.sroa.4.i58, %bb.bv ]
  %.sroa.58.0.sink.i.i68 = phi i64 [ %.val21.i.i75, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ %i.ex, %bb.bv ]
  %storemerge.i.i69 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i63 ], [ 1, %bb.bv ]
  store i64 %.sroa.58.0.sink.i.i68, ptr %.sink.i.sroa.phi.i67, align 8, !alias.scope !2958, !noalias !2962
  store i64 %storemerge.i.i69, ptr %i.ap, align 8, !alias.scope !2956
  %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71 = load i64, ptr %.sroa.4.i58, align 8, !noalias !2962
  store i64 %.sroa.4.i58.0..sroa.4.i58.0..sroa.4.i58.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i71, ptr %.sroa.4.0..sroa_idx.i70, align 8, !alias.scope !2956
  %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73 = load i64, ptr %.sroa.6.i59, align 8, !noalias !2962
  store i64 %.sroa.6.i59.0..sroa.6.i59.0..sroa.6.i59.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i73, ptr %i.aw, align 8, !alias.scope !2956
  store i64 4, ptr %i.k, align 8, !alias.scope !2956
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i58)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i59)
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.bz:                                            ; preds = %bb.bq
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %.noexc78 unwind label %.thread245.loopexit

.noexc78:                                         ; preds = %bb.bz
  store i64 5, ptr %i.k, align 8, !alias.scope !2956
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.ca:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !2963)
  call void @llvm.experimental.noalias.scope.decl(metadata !2964)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2965
  call void @llvm.experimental.noalias.scope.decl(metadata !2966)
  call void @llvm.experimental.noalias.scope.decl(metadata !2967)
  %i.ff = trunc nuw i64 %i.eq to i1               ; 2 uses
  br i1 %i.ff, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fg = load i64, ptr %i.ao, align 8, !alias.scope !2968, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

bb.cc:                                            ; preds = %bb.ca
  %i.fh = load i8, ptr %i.aq, align 1, !alias.scope !2968, !noundef !10
  %.not.i.i161 = icmp sgt i8 %i.fh, -1
  %.val.i.i190 = load ptr, ptr %i.ao, align 8, !alias.scope !2968 ; 5 uses
  %.val21.i.i191 = load i64, ptr %i.ar, align 8, !alias.scope !2968 ; 2 uses
  br i1 %.not.i.i161, label %7, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164

7:                                                ; preds = %bb.cc
  %.not.i.i.i.i192 = icmp eq ptr %.val.i.i190, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i192, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, label %bb.cd

bb.cd:                                            ; preds = %7
  %i.fi = getelementptr inbounds i8, ptr %.val.i.i190, i64 -16
  %i.fj = atomicrmw add ptr %i.fi, i64 1 monotonic, align 8, !noalias !2969
  %i.fk = icmp slt i64 %i.fj, 0
  br i1 %i.fk, label %.invoke, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, !prof !30

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164: ; preds = %bb.cc, %bb.cd, %7
  %.sroa.06.0.i.i166 = phi ptr [ %.val.i.i190, %bb.cd ], [ inttoptr (i64 16 to ptr), %7 ], [ %.val.i.i190, %bb.cc ]
  store ptr %.sroa.06.0.i.i166, ptr %.sink.i.sroa.gep16.i160, align 8, !alias.scope !2966, !noalias !2965
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164, %bb.cb
  %.sink.i.sroa.phi.i168 = phi ptr [ %.sink.i.sroa.gep.i159, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %.sink.i.sroa.gep16.i160, %bb.cb ]
  %.sroa.58.0.sink.i.i169 = phi i64 [ %.val21.i.i191, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ %i.fg, %bb.cb ]
  %i.fl = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i164 ], [ 1, %bb.cb ]
  store i64 %.sroa.58.0.sink.i.i169, ptr %.sink.i.sroa.phi.i168, align 8, !alias.scope !2966, !noalias !2965
  store i64 %i.fl, ptr %i.a, align 8, !alias.scope !2966, !noalias !2965
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.experimental.noalias.scope.decl(metadata !2970)
  call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  %i.fm = load i64, ptr %i.as, align 8, !range !11, !alias.scope !2972, !noundef !10
  %i.fn = trunc nuw i64 %i.fm to i1
  br i1 %i.fn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fo = load i64, ptr %i.at, align 8, !alias.scope !2972, !noundef !10
  br label %.noexc79

bb.cf:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i167
  %i.fp = load i8, ptr %i.au, align 1, !alias.scope !2972, !noundef !10
  %.not.i1.i170 = icmp sgt i8 %i.fp, -1
  %.val.i11.i183 = load ptr, ptr %i.at, align 8, !alias.scope !2972 ; 5 uses
  %.val21.i12.i184 = load i64, ptr %i.av, align 8, !alias.scope !2972 ; 2 uses
  br i1 %.not.i1.i170, label %bb.cg, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i13.i185 = icmp eq ptr %.val.i11.i183, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i185, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fq = getelementptr inbounds i8, ptr %.val.i11.i183, i64 -16
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !2973
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.ci, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, !prof !30

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i183, i64 noundef %.val21.i12.i184) #19
          to label %.noexc.i189 unwind label %bb.cj, !noalias !2965

.noexc.i189:                                      ; preds = %bb.ci
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173: ; preds = %bb.cf, %bb.ch, %bb.cg
  %.sroa.06.0.i6.i175 = phi ptr [ %.val.i11.i183, %bb.ch ], [ inttoptr (i64 16 to ptr), %bb.cg ], [ %.val.i11.i183, %bb.cf ]
  %i.ft = ptrtoint ptr %.sroa.06.0.i6.i175 to i64
  store i64 %i.ft, ptr %.sroa.4.i157, align 8, !alias.scope !2970, !noalias !2965
  br label %.noexc79

bb.cj:                                            ; preds = %bb.ci
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !2974, !noalias !2965
  %.not.i.i.i.i.i186 = icmp slt i8 %i.fw, 0
  %or.cond.i.not.i187 = select i1 %i.ff, i1 true, i1 %.not.i.i.i.i.i186
  br i1 %or.cond.i.not.i187, label %.thread233, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i160)
          to label %.thread233 unwind label %bb.cl, !noalias !2965

bb.cl:                                            ; preds = %bb.ck
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2965
  unreachable

.noexc79:                                         ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173, %bb.ce
  %.sink.i7.sroa.phi.i176 = phi ptr [ %.sroa.6.i158, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %.sroa.4.i157, %bb.ce ]
  %.sroa.58.0.sink.i8.i177 = phi i64 [ %.val21.i12.i184, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ %i.fo, %bb.ce ]
  %storemerge.i9.i178 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i173 ], [ 1, %bb.ce ]
  store i64 %.sroa.58.0.sink.i8.i177, ptr %.sink.i7.sroa.phi.i176, align 8, !alias.scope !2970, !noalias !2965
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2964
  store i64 %storemerge.i9.i178, ptr %i.aw, align 8, !alias.scope !2963
  %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180 = load i64, ptr %.sroa.4.i157, align 8, !noalias !2965
  store i64 %.sroa.4.i157.0..sroa.4.i157.0..sroa.4.i157.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i180, ptr %.sroa.4.0..sroa_idx.i179, align 8, !alias.scope !2963
  %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182 = load i64, ptr %.sroa.6.i158, align 8, !noalias !2965
  store i64 %.sroa.6.i158.0..sroa.6.i158.0..sroa.6.i158.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i182, ptr %.sroa.6.0..sroa_idx.i181, align 8, !alias.scope !2963
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i157)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i158)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2965
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

bb.cm:                                            ; preds = %bb.bq
  %i.fy = load i32, ptr %i.ao, align 8, !alias.scope !2957, !noundef !10
  store i32 %i.fy, ptr %i.ap, align 8, !alias.scope !2956
  store i64 7, ptr %i.k, align 8, !alias.scope !2956
  br label %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80

_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80: ; preds = %bb.cm, %.noexc79, %.noexc78, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i66, %bb.bt, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fz = load i64, ptr %i.r, align 8, !range !31, !alias.scope !2975, !noundef !10
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.co unwind label %.thread

.thread:                                          ; preds = %bb.cn
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  br label %.thread233

bb.co:                                            ; preds = %bb.cn, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.t, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8
  store i64 0, ptr %i.v, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.aq, %bb.co, %_RNvXs4_NtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internalNtB5_21ShardSelectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.i, ptr noundef nonnull align 8 dereferenceable(664) %i.p, i64 664, i1 false)
  store ptr %i.t, ptr %i.ba, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2976)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.f, ptr noundef nonnull align 8 dereferenceable(616) %i.p, i64 616, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2977
  %i.gc = load ptr, ptr %i.bb, align 8, !noalias !2977, !nonnull !10, !noundef !10
  %i.gd = load i64, ptr %i.bc, align 8, !noalias !2977, !noundef !10
  invoke void @_RNvMs6_NtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_queryNtB5_22CollectionQueryRequest22try_into_shard_request(ptr noalias nofree noundef nonnull sret([568 x i8]) align 8 captures(none) dereferenceable(568) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(616) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.gd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %3)
          to label %bb.cr unwind label %bb.cq, !noalias !2977

bb.cq:                                            ; preds = %bb.cp
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cv, %bb.cq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ge, %bb.cq ], [ %i.gk, %bb.cv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be) #15
          to label %.thread229 unwind label %bb.cz, !noalias !2978

bb.cr:                                            ; preds = %bb.cp
  %i.gf = load i64, ptr %i.e, align 8, !range !24, !noalias !2977, !noundef !10
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %.sroa.0208.0.copyload209 = load i64, ptr %i.bd, align 8, !noalias !2979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7210.0..sroa_idx211, i64 40, i1 false), !noalias !2979
  br label %bb.cy

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %i.d, ptr noundef nonnull align 8 dereferenceable(568) %i.e, i64 568, i1 false), !noalias !2977
  %i.gh = load i64, ptr %i.v, align 8, !alias.scope !2980, !noundef !10 ; 3 uses
  %i.gi = load i64, ptr %i.t, align 8, !range !21, !alias.scope !2980, !noundef !10
  %i.gj = icmp eq i64 %i.gh, %i.gi
  br i1 %i.gj, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestE8grow_oneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.cx unwind label %bb.cv, !noalias !2981

bb.cv:                                            ; preds = %bb.cu
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(568) %i.d) #15
          to label %.body.i unwind label %bb.cw, !noalias !2982

bb.cw:                                            ; preds = %bb.cv
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2982
  unreachable

bb.cx:                                            ; preds = %bb.cu, %bb.ct
  %i.gm = load ptr, ptr %i.u, align 8, !alias.scope !2980, !nonnull !10, !noundef !10
  %i.gn = getelementptr inbounds nuw [568 x i8], ptr %i.gm, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %i.gn, ptr noundef nonnull align 8 dereferenceable(568) %i.e, i64 568, i1 false), !noalias !2982
  %i.go = add i64 %i.gh, 1
  store i64 %i.go, ptr %i.v, align 8, !alias.scope !2980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2977
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cs
  %.sroa.0208.0 = phi i64 [ %.sroa.0208.0.copyload209, %bb.cs ], [ -1, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2977
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.be)
          to label %_RNCNCINvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB9_10Collection11query_batchNCNCNvMs4_NtB9_15distance_matrixBS_20search_points_matrix0s4_0NCNCB1o_s4_00E0s0_0Csl8OoimOLbh_6qdrant.exit unwind label %bb.q

bb.cz:                                            ; preds = %.body.i
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !2978
  unreachable

bb.da:                                            ; preds = %bb.db, %bb.bp
  %.sroa.0.11 = phi i8 [ 0, %bb.bp ], [ 1, %bb.db ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
end_hunk_14
begin_hunk_15_@_RNCNCNvNtNtCsl8OoimOLbh_6qdrant6common5query22do_search_batch_points0s0_0B9_:bb.a
bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit unwind label %.thread16

bb.ad:                                            ; preds = %bb.ab
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

.body:                                            ; preds = %bb.ae, %bb.h
  %.pn = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.h ], [ %i.av, %bb.ae ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.i) #15
          to label %bb.ar unwind label %bb.aq

bb.ae:                                            ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %bb.y, %bb.s
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %bb.y ], [ -1, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !3104
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !3104
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3104
  %.sroa.0.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3105
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !range !32, !noundef !10
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !10, !align !16, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3107)
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !3107, !nonnull !10, !noundef !10 ; 2 uses
  %i.be = atomicrmw add ptr %i.bd, i64 1 monotonic, align 8, !noalias !3108
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !3107, !nonnull !10, !noundef !10 ; 2 uses
  %i.bi = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8, !noalias !3108
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call void @llvm.trap()
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !range !23, !alias.scope !3107, !noundef !10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !3107, !nonnull !10, !noundef !10 ; 2 uses
  %i.bo = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8, !noalias !3108
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.ak, label %_RNvXs1_NtNtCslmvYCXbQjWR_6common7counter20hardware_accumulatorNtB5_16HwMeasurementAccNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.trap()
  unreachable

_RNvXs1_NtNtCslmvYCXbQjWR_6common7counter20hardware_accumulatorNtB5_16HwMeasurementAccNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.ai
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 280
  store <2 x ptr> %i.q, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 296
  store i64 %i.s, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  store <2 x i64> %i.x, ptr %i.l, align 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bv, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0, i64 96, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store i64 %.sroa.0.0.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  store i8 %i.ak, ptr %.sroa.9.0..sroa_idx, align 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  store i64 %i.ay, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 224
  store i32 %i.ba, ptr %i.bx, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  store ptr %i.bd, ptr %i.by, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  store ptr %i.bn, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  store i8 %i.bl, ptr %.sroa.6.0..sroa_idx, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 560
  store i8 0, ptr %i.bz, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !3109, !noundef !10 ; 3 uses
  %i.cc = load i64, ptr %4, align 8, !range !21, !noalias !3109, !noundef !10
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %_RNvXs1_NtNtCslmvYCXbQjWR_6common7counter20hardware_accumulatorNtB5_16HwMeasurementAccNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtBT_14TableOfContent17core_search_batch0E8grow_oneCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %4)
          to label %bb.ao unwind label %bb.am, !noalias !3109

bb.am:                                            ; preds = %bb.al
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtBI_14TableOfContent17core_search_batch0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 dereferenceable(1384) %i.l) #15
          to label %.thread unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

.thread16:                                        ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.thread13

bb.ao:                                            ; preds = %bb.al, %_RNvXs1_NtNtCslmvYCXbQjWR_6common7counter20hardware_accumulatorNtB5_16HwMeasurementAccNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !3109, !nonnull !10, !noundef !10
  %i.cj = getelementptr inbounds nuw [1384 x i8], ptr %i.ci, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1384) %i.cj, ptr noundef nonnull align 16 dereferenceable(1384) %i.l, i64 1384, i1 false)
  %i.ck = add i64 %i.cb, 1
  store i64 %i.ck, ptr %i.ca, align 8, !noalias !3109
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit, %bb.ao
  ret void

bb.aq:                                            ; preds = %.thread13, %bb.ar, %.body
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.ar:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #15
          to label %.thread unwind label %bb.aq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ac
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %2)
  br label %bb.ap

.thread:                                          ; preds = %bb.ar, %bb.am, %.thread13
  %.pn312 = phi { ptr, i32 } [ %i.ce, %bb.am ], [ %eh.lpad-body715, %.thread13 ], [ %.pn, %bb.ar ]
  resume { ptr, i32 } %.pn312

.thread13:                                        ; preds = %bb.ab, %.thread16
  %eh.lpad-body715 = phi { ptr, i32 } [ %i.cg, %.thread16 ], [ %i.at, %bb.ab ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations23shard_selector_internal21ShardSelectorInternalECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %2) #15
          to label %.thread unwind label %bb.aq
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca i64, align 8                  ; 5 uses
  %.sroa.6 = alloca i64, align 8                  ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  %i.b = load i64, ptr %1, align 8, !range !11, !alias.scope !3119, !noundef !10
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.i.sroa.gep16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3119, !noundef !10
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !3119, !noundef !10
  %.not.i = icmp sgt i8 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !3119 ; 5 uses
  %.val21.i = load i64, ptr %i.h, align 8, !alias.scope !3119 ; 2 uses
  br i1 %.not.i, label %2, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i

2:                                                ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, label %bb.d

bb.d:                                             ; preds = %2
  %i.i = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !3120
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, !prof !30

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i, i64 noundef %.val21.i) #19, !noalias !3120
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.c, %bb.d, %2
  %.sroa.06.0.i = phi ptr [ %.val.i, %bb.d ], [ inttoptr (i64 16 to ptr), %2 ], [ %.val.i, %bb.c ]
  store ptr %.sroa.06.0.i, ptr %.sink.i.sroa.gep16, align 8, !alias.scope !3118
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.b, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %.sink.i.sroa.gep16, %bb.b ]
  %.sroa.58.0.sink.i = phi i64 [ %.val21.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %i.e, %bb.b ]
  %i.l = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ 1, %bb.b ]
  store i64 %.sroa.58.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !3118
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !3118
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  %i.n = load i64, ptr %i.m, align 8, !range !11, !alias.scope !3122, !noundef !10
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !3122, !noundef !10
  br label %bb.m

bb.g:                                             ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !3122, !noundef !10
  %.not.i1 = icmp sgt i8 %i.s, -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i11 = load ptr, ptr %i.p, align 8, !alias.scope !3122 ; 5 uses
  %.val21.i12 = load i64, ptr %i.t, align 8, !alias.scope !3122 ; 2 uses
  br i1 %.not.i1, label %bb.h, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i13 = icmp eq ptr %.val.i11, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds i8, ptr %.val.i11, i64 -16
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !3123
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.j, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4, !prof !30

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11, i64 noundef %.val21.i12) #19
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4: ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.06.0.i6 = phi ptr [ %.val.i11, %bb.i ], [ inttoptr (i64 16 to ptr), %bb.h ], [ %.val.i11, %bb.g ]
  %i.x = ptrtoint ptr %.sroa.06.0.i6 to i64
  store i64 %i.x, ptr %.sroa.4, align 8, !alias.scope !3121
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !3124
  %.not.i.i.i.i = icmp slt i8 %i.aa, 0
  %or.cond.i.not = select i1 %i.c, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit unwind label %bb.n

bb.m:                                             ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4, %bb.f
  %.sink.i7.sroa.phi = phi ptr [ %.sroa.6, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4 ], [ %.sroa.4, %bb.f ]
  %.sroa.58.0.sink.i8 = phi i64 [ %.val21.i12, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4 ], [ %i.q, %bb.f ]
  %storemerge.i9 = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4 ], [ 1, %bb.f ]
  store i64 %.sroa.58.0.sink.i8, ptr %.sink.i7.sroa.phi, align 8, !alias.scope !3121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %storemerge.i9, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload = load i64, ptr %.sroa.4, align 8
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload = load i64, ptr %.sroa.6, align 8
  store i64 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.n:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1p_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !10 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !11, !noundef !10
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.a to i1
  br i1 %i.d, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !10
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3140)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !3141, !noundef !10 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.k, -1                ; 2 uses
  %i.l = and i8 %i.k, 127
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !3141
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.o, i64 %i.m ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !3142, !noundef !10 ; 2 uses
  %.not.i1.i = icmp sgt i8 %i.q, -1               ; 2 uses
  %i.r = and i8 %i.q, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3142
  %.sroa.3.0.i2.i = select i1 %.not.i1.i, i64 %i.u, i64 %i.s
  %i.v = icmp eq i64 %.sroa.3.0.i.i, %.sroa.3.0.i2.i
  br i1 %i.v, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !alias.scope !3142, !nonnull !10
  %.sroa.0.0.i3.i = select i1 %.not.i1.i, ptr %i.y, ptr %i.w
  %i.z = load ptr, ptr %i.x, align 8, !alias.scope !3141, !nonnull !10
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.z, ptr %i.x
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i, ptr nonnull %.sroa.0.0.i3.i, i64 %.sroa.3.0.i.i)
  %i.aa = icmp eq i32 %bcmp.i, 0
  br i1 %i.aa, label %bb.d, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

bb.d:                                             ; preds = %.split, %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !range !11, !noundef !10 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !range !11, !noundef !10
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13: ; preds = %bb.c, %bb.h, %bb.g, %.split, %bb.d, %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.a, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.al, %bb.f ], [ false, %.split ], [ false, %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.g ], [ %i.bd, %bb.h ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk

bb.e:                                             ; preds = %bb.d
  %i.ag = trunc nuw i64 %i.ac to i1
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !10
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !10
  %i.al = icmp eq i64 %i.ai, %i.ak
  br label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3144)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !3145, !noundef !10 ; 2 uses
  %.not.i.i5 = icmp sgt i8 %i.an, -1              ; 2 uses
  %i.ao = and i8 %i.an, 127
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !3145
  %.sroa.3.0.i.i6 = select i1 %.not.i.i5, i64 %i.ar, i64 %i.ap ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !3146, !noundef !10 ; 2 uses
  %.not.i1.i7 = icmp sgt i8 %i.at, -1             ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !3146
  %.sroa.3.0.i2.i8 = select i1 %.not.i1.i7, i64 %i.ax, i64 %i.av
  %i.ay = icmp eq i64 %.sroa.3.0.i.i6, %.sroa.3.0.i2.i8
  br i1 %i.ay, label %bb.h, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit13

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bb = load ptr, ptr %i.az, align 8, !alias.scope !3146, !nonnull !10
  %.sroa.0.0.i3.i10 = select i1 %.not.i1.i7, ptr %i.bb, ptr %i.az
end_hunk_15
