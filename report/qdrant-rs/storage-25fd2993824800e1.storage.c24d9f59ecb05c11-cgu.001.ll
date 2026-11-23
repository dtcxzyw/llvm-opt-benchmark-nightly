Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.001?download=true
inline.NumInlined: 14628
inline.NumDeleted: 4678
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4_11ShardHolder10add_shards0CsgGgPqgSfnMH_7storage:bb.a
  %i.br = icmp eq i64 %.val37, 0
  br i1 %i.br, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.090.0136, i64 1488 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bq
  br i1 %i.bt, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.sroa.090.0136 = phi ptr [ %i.bs, %bb.ae ], [ %.val36, %bb.ad ] ; 2 uses
  %i.bu = load i32, ptr %.sroa.090.0136, align 8, !noundef !27
  %i.bv = invoke noundef zeroext i1 @_RNvMNtCsPYQCUnoTxQ_10collection9hash_ringNtB2_14HashRingRouter3addCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %.sroa.0.0.i.i, i32 noundef %i.bu)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge:                                      ; preds = %bb.ae, %bb.ad
  store i8 0, ptr %i.n, align 1
  %.sroa.095.0.copyload = load i64, ptr %i.r, align 8
  %.sroa.596.0.copyload = load ptr, ptr %i.bp, align 8, !nonnull !27, !noundef !27 ; 4 uses
  %.sroa.697.0.copyload = load i64, ptr %i.u, align 8 ; 2 uses
  %i.bw = icmp ult i64 %.sroa.697.0.copyload, 6198502712940038
  call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [1488 x i8], ptr %.sroa.596.0.copyload, i64 %.sroa.697.0.copyload ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.sroa.596.0.copyload, ptr %i.by, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %.sroa.596.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %.sroa.095.0.copyload, ptr %.sroa.893.0..sroa_idx, align 8
  %.sroa.994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.bx, ptr %.sroa.994.0..sroa_idx, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.bd, %._crit_edge
  %i.bz = phi ptr [ %.pre122, %bb.bd ], [ %.sroa.596.0.copyload, %._crit_edge ] ; 3 uses
  %i.ca = phi ptr [ %.pre, %bb.bd ], [ %i.bx, %._crit_edge ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17092)
  call void @llvm.experimental.noalias.scope.decl(metadata !17093)
  %i.cd = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cd, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit.thread: ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 2, ptr %i.ce, align 8, !alias.scope !17092
  br label %bb.bo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit45: ; preds = %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit, %bb.v, %bb.ag
  %.pn32 = phi { ptr, i32 } [ %i.ci, %bb.ag ], [ %.pn29.pn, %bb.v ], [ %.pn29.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit ], [ %.pn29.pn, %bb.u ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 3149
  %i.cg = load i8, ptr %i.cf, align 1, !range !53, !noundef !27
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.bw, label %.body51

bb.ag:                                            ; preds = %bb.bq, %bb.t
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit45

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.s, %bb.r, %bb.t
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body51 unwind label %bb.aj

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.body51:                                          ; preds = %bb.ak, %bb.ah, %bb.bw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit45
  %.pn34 = phi { ptr, i32 } [ %.pn32, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit45 ], [ %.pn32, %bb.bw ], [ %i.cm, %bb.ak ], [ %i.cj, %bb.ah ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 3149
  store i8 0, ptr %i.cl, align 1
  store i8 2, ptr %i.l, align 4
  resume { ptr, i32 } %.pn34

bb.ak:                                            ; preds = %bb.ai
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body51

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.ai
  store i8 0, ptr %i.n, align 1
  br label %bb.al

common.ret:                                       ; preds = %bb.ar, %bb.al
  %storemerge = phi i8 [ 3, %bb.ar ], [ 1, %bb.al ]
  store i8 %storemerge, ptr %i.l, align 4
  ret void

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit71, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  br label %common.ret

bb.am:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @517) #29
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @517) #29
  unreachable

bb.ao:                                            ; preds = %bb.a, %bb.bu
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 1640 ; 3 uses
  %i.co = invoke fastcc noundef zeroext i1 @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4_15ShardReplicaSet15stop_gracefully0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.cn, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet15stop_gracefully0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.cn) #28
          to label %bb.at unwind label %bb.bv

bb.aq:                                            ; preds = %bb.ao
  br i1 %i.co, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.as:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet15stop_gracefully0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.cn)
          to label %bb.aw unwind label %bb.av

bb.at:                                            ; preds = %bb.av, %bb.ap
  %.pn19 = phi { ptr, i32 } [ %i.cu, %bb.av ], [ %i.cp, %bb.ap ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17094)
  call void @llvm.experimental.noalias.scope.decl(metadata !17095)
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !17096, !nonnull !27, !noundef !27
  %i.cs = atomicrmw add ptr %i.cr, i64 -1 release, align 8, !noalias !17096
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cq) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit unwind label %bb.bv

bb.av:                                            ; preds = %bb.as
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aw:                                            ; preds = %bb.as
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17097)
  call void @llvm.experimental.noalias.scope.decl(metadata !17098)
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !17099, !nonnull !27, !noundef !27
  %i.cx = atomicrmw add ptr %i.cw, i64 -1 release, align 8, !noalias !17099
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit55

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cv) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit55 unwind label %bb.br

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.br, %bb.bm, %bb.at, %bb.au, %bb.bi
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.bi ], [ %.pn19, %bb.at ], [ %.pn19, %bb.au ], [ %i.eu, %bb.br ], [ %i.ek, %bb.bm ]
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.bv

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit55: ; preds = %bb.aw, %bb.ax, %bb.bt
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.db = load i64, ptr %i.da, align 8, !range !35, !noundef !27 ; 2 uses
  %.not21 = icmp eq i64 %i.db, 2
  br i1 %.not21, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !27, !align !31, !noundef !27
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 3144
  %i.df = load i32, ptr %i.de, align 8, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !17100)
  call void @llvm.experimental.noalias.scope.decl(metadata !17101)
  %i.dg = trunc nuw i64 %i.db to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br i1 %i.dg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !17101, !noundef !27
  br label %bb.bf

bb.ba:                                            ; preds = %bb.ay
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 111
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !17101, !noundef !27
  %.not.i56 = icmp slt i8 %i.dk, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i = load ptr, ptr %i.dh, align 8, !alias.scope !17101 ; 4 uses
  %.val21.i = load i64, ptr %i.dl, align 8, !alias.scope !17101 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i56, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dm = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !noalias !17102
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i, !prof !29

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsgGgPqgSfnMH_7storage(ptr noundef nonnull %.val.i, i64 noundef %.val21.i) #24
          to label %.noexc57 unwind label %bb.be

.noexc57:                                         ; preds = %bb.bc
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.ba, %bb.bb
  store ptr %.val.i, ptr %.sink.i.sroa.gep106, align 8, !alias.scope !17100
  br label %bb.bf

bb.bd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit62, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit55
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !17093
  %.phi.trans.insert121 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.pre122 = load ptr, ptr %.phi.trans.insert121, align 8, !alias.scope !17093
  br label %bb.af

bb.be:                                            ; preds = %bb.bf, %bb.bc
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bi

bb.bf:                                            ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i, %bb.az
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i ], [ %.sink.i.sroa.gep106, %bb.az ]
  %.sroa.58.0.sink.i = phi i64 [ %.val21.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i ], [ %i.di, %bb.az ]
  %storemerge.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i ], [ 1, %bb.az ]
  store i64 %.sroa.58.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !17100
  store i64 %storemerge.i, ptr %i.h, align 8, !alias.scope !17100
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 352
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE6insertCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dq, i32 noundef %i.df, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsgGgPqgSfnMH_7storage.exit unwind label %bb.be

_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsgGgPqgSfnMH_7storage.exit: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dr = load i64, ptr %i.i, align 8, !range !35, !alias.scope !17103, !noundef !27 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 2
  br i1 %i.ds, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit62, label %bb.bg

bb.bg:                                            ; preds = %_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsgGgPqgSfnMH_7storage.exit
  %i.dt = icmp eq i64 %i.dr, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !17104
  %.not.i.i.i.i.i59 = icmp sgt i8 %i.dv, -1
  %or.cond.i.i60 = select i1 %i.dt, i1 %.not.i.i.i.i.i59, i1 false
  br i1 %or.cond.i.i60, label %bb.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit62

bb.bh:                                            ; preds = %bb.bg
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit62 unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bj, %bb.be
  %.pn22 = phi { ptr, i32 } [ %i.dx, %bb.bj ], [ %i.dp, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit

bb.bj:                                            ; preds = %bb.bh
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit62: ; preds = %bb.bg, %_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsgGgPqgSfnMH_7storage.exit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bd

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit: ; preds = %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bz, i64 1488
  store ptr %i.dz, ptr %i.dy, align 8, !alias.scope !17093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1488) %i.cc, ptr noundef nonnull align 8 dereferenceable(1488) %i.bz, i64 1488, i1 false), !noalias !17093
  %.phi.trans.insert123 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.pre124 = load i64, ptr %.phi.trans.insert123, align 8, !range !35
  %i.ea = icmp eq i64 %.pre124, 2
  br i1 %i.ea, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 3144
  %i.ed = load i32, ptr %i.cc, align 8, !noundef !27 ; 2 uses
  store i32 %i.ed, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1480) %i.ee, ptr noundef nonnull align 8 dereferenceable(1480) %i.eb, i64 1480, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !27, !align !31, !noundef !27
  store i64 1, ptr %i.a, align 8, !noalias !17105
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.eh, align 8, !noalias !17105
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !17106
  %i.ei = call noundef align 8 dereferenceable_or_null(1496) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 10953) 1496, i64 noundef 8) #27, !noalias !17106 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.bl, label %bb.bs, !prof !29

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1496) #24
          to label %.noexc.i unwind label %bb.bm, !noalias !17105

.noexc.i:                                         ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(1480) %i.ee)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit unwind label %bb.bn, !noalias !17105

bb.bn:                                            ; preds = %bb.bm
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !17105
  unreachable

bb.bo:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit.thread, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.bo, %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterE14or_insert_withNvMB2o_B2m_6singleE0CsgGgPqgSfnMH_7storage.exit.i.i, %bb.p
  %lpad.loopexit.split-lp137 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit67: ; preds = %bb.bo
  store i64 -1, ptr %i.g, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.en = load i64, ptr %i.em, align 8, !range !35, !alias.scope !17107, !noundef !27 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 2
  br i1 %i.eo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit71, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit67
  %i.ep = icmp eq i64 %i.en, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 111
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !17108
  %.not.i.i.i.i.i68 = icmp sgt i8 %i.er, -1
  %or.cond.i.i69 = select i1 %i.ep, i1 %.not.i.i.i.i.i68, i1 false
  br i1 %or.cond.i.i69, label %bb.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit71

bb.bq:                                            ; preds = %bb.bp
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.es)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit71 unwind label %bb.ag

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit71: ; preds = %bb.bp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit67, %bb.bq
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 3149
  store i8 0, ptr %i.et, align 1
  br label %bb.al

bb.br:                                            ; preds = %bb.ax, %bb.bs
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit

bb.bs:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1496) %i.ei, ptr noundef nonnull align 8 dereferenceable(1496) %i.a, i64 1496, i1 false), !noalias !17105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17105
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eg, i64 424
  %i.ew = invoke noundef ptr @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapmINtNtBb_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEE6insertCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev, i32 noundef %i.ed, ptr noundef nonnull %i.ei)
          to label %bb.bt unwind label %bb.br     ; 3 uses

bb.bt:                                            ; preds = %bb.bs
  %.not14 = icmp eq ptr %i.ew, null
  br i1 %.not14, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit55, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 1632
  store ptr %i.ew, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 1640
  store ptr %i.ey, ptr %i.ez, align 8
  %.sroa.8104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1672
  store i8 0, ptr %.sroa.8104.0..sroa_idx, align 8
  br label %bb.ao

bb.bv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit, %bb.au, %bb.v, %bb.bw, %bb.ap
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit45
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fb) #28
          to label %.body51 unwind label %bb.bv
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4_11ShardHolder21drop_and_remove_shard0CsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.560.i = alloca [112 x i8], align 8       ; 5 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 3 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !range !54, !noundef !27
  switch i8 %i.k, label %default.unreachable151 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.p
    i8 5, label %bb.aq
    i8 6, label %bb.eu
end_hunk_0
