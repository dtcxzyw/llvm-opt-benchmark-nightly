Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.002?download=true
inline.NumInlined: 25559
inline.NumDeleted: 7874
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4_11ShardHolder10add_shards0Csl8OoimOLbh_6qdrant:bb.a
  %i.br = icmp eq i64 %.val38, 0
  br i1 %i.br, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.090.0136, i64 1488 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bq
  br i1 %i.bt, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.sroa.090.0136 = phi ptr [ %i.bs, %bb.ae ], [ %.val37, %bb.ad ] ; 2 uses
  %i.bu = load i32, ptr %.sroa.090.0136, align 8, !noundef !38
  %i.bv = invoke noundef zeroext i1 @_RNvMNtCsPYQCUnoTxQ_10collection9hash_ringNtB2_14HashRingRouter3addCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %.sroa.0.0.i.i, i32 noundef %i.bu)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge:                                      ; preds = %bb.ae, %bb.ad
  store i8 0, ptr %i.n, align 1
  %.sroa.095.0.copyload = load i64, ptr %i.r, align 8
  %.sroa.596.0.copyload = load ptr, ptr %i.bp, align 8, !nonnull !38, !noundef !38 ; 4 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !47904)
  call void @llvm.experimental.noalias.scope.decl(metadata !47905)
  %i.cd = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cd, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 2, ptr %i.ce, align 8, !alias.scope !47904
  br label %bb.bo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit45: ; preds = %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant.exit, %bb.v, %bb.ag
  %.pn32 = phi { ptr, i32 } [ %i.ci, %bb.ag ], [ %.pn29.pn, %bb.v ], [ %.pn29.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant.exit ], [ %.pn29.pn, %bb.u ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 3149
  %i.cg = load i8, ptr %i.cf, align 1, !range !40, !noundef !38
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.bw, label %.body51

bb.ag:                                            ; preds = %bb.bq, %bb.t
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit45

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %bb.r, %bb.t
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body51 unwind label %bb.aj

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body51:                                          ; preds = %bb.ak, %bb.ah, %bb.bw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit45
  %.pn34 = phi { ptr, i32 } [ %.pn32, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit45 ], [ %.pn32, %bb.bw ], [ %i.cm, %bb.ak ], [ %i.cj, %bb.ah ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 3149
  store i8 0, ptr %i.cl, align 1
  store i8 2, ptr %i.l, align 4
  resume { ptr, i32 } %.pn34

bb.ak:                                            ; preds = %bb.ai
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body51

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ai
  store i8 0, ptr %i.n, align 1
  br label %bb.al

common.ret:                                       ; preds = %bb.ar, %bb.al
  %storemerge = phi i8 [ 3, %bb.ar ], [ 1, %bb.al ]
  store i8 %storemerge, ptr %i.l, align 4
  ret void

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit71, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  br label %common.ret

bb.am:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @589) #25
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @589) #25
  unreachable

bb.ao:                                            ; preds = %bb.a, %bb.bu
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 1640 ; 3 uses
  %i.co = invoke fastcc noundef zeroext i1 @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4_15ShardReplicaSet15stop_gracefully0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cn, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet15stop_gracefully0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cn) #27
          to label %bb.at unwind label %bb.bv

bb.aq:                                            ; preds = %bb.ao
  br i1 %i.co, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.as:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet15stop_gracefully0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cn)
          to label %bb.aw unwind label %bb.av

bb.at:                                            ; preds = %bb.av, %bb.ap
  %.pn19 = phi { ptr, i32 } [ %i.cu, %bb.av ], [ %i.cp, %bb.ap ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47906)
  call void @llvm.experimental.noalias.scope.decl(metadata !47907)
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !47908, !nonnull !38, !noundef !38
  %i.cs = atomicrmw add ptr %i.cr, i64 -1 release, align 8, !noalias !47908
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cq) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit unwind label %bb.bv

bb.av:                                            ; preds = %bb.as
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aw:                                            ; preds = %bb.as
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47909)
  call void @llvm.experimental.noalias.scope.decl(metadata !47910)
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !47911, !nonnull !38, !noundef !38
  %i.cx = atomicrmw add ptr %i.cw, i64 -1 release, align 8, !noalias !47911
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit55

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cv) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit55 unwind label %bb.br

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.br, %bb.bm, %bb.at, %bb.au, %bb.bi
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.bi ], [ %.pn19, %bb.at ], [ %.pn19, %bb.au ], [ %i.eu, %bb.br ], [ %i.ek, %bb.bm ]
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.bv

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit55: ; preds = %bb.aw, %bb.ax, %bb.bt
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.db = load i64, ptr %i.da, align 8, !range !65, !noundef !38 ; 2 uses
  %.not21 = icmp eq i64 %i.db, 2
  br i1 %.not21, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !38, !align !42, !noundef !38
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 3144
  %i.df = load i32, ptr %i.de, align 8, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !47912)
  call void @llvm.experimental.noalias.scope.decl(metadata !47913)
  %i.dg = trunc nuw i64 %i.db to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br i1 %i.dg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !47913, !noundef !38
  br label %bb.bf

bb.ba:                                            ; preds = %bb.ay
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 111
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !47913, !noundef !38
  %.not.i56 = icmp slt i8 %i.dk, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i = load ptr, ptr %i.dh, align 8, !alias.scope !47913 ; 4 uses
  %.val21.i = load i64, ptr %i.dl, align 8, !alias.scope !47913 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i56, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dm = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !noalias !47914
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.bc, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, !prof !58

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i, i64 noundef %.val21.i) #29
          to label %.noexc57 unwind label %bb.be

.noexc57:                                         ; preds = %bb.bc
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ba, %bb.bb
  store ptr %.val.i, ptr %.sink.i.sroa.gep106, align 8, !alias.scope !47912
  br label %bb.bf

bb.bd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit62, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit55
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !47905
  %.phi.trans.insert121 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.pre122 = load ptr, ptr %.phi.trans.insert121, align 8, !alias.scope !47905
  br label %bb.af

bb.be:                                            ; preds = %bb.bf, %bb.bc
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bi

bb.bf:                                            ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, %bb.az
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %.sink.i.sroa.gep106, %bb.az ]
  %.sroa.58.0.sink.i = phi i64 [ %.val21.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %i.di, %bb.az ]
  %storemerge.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ 1, %bb.az ]
  store i64 %.sroa.58.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !47912
  store i64 %storemerge.i, ptr %i.h, align 8, !alias.scope !47912
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 352
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE6insertCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dq, i32 noundef %i.df, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsl8OoimOLbh_6qdrant.exit unwind label %bb.be

_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dr = load i64, ptr %i.i, align 8, !range !65, !alias.scope !47915, !noundef !38 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 2
  br i1 %i.ds, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit62, label %bb.bg

bb.bg:                                            ; preds = %_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsl8OoimOLbh_6qdrant.exit
  %i.dt = icmp eq i64 %i.dr, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !47916
  %.not.i.i.i.i.i59 = icmp sgt i8 %i.dv, -1
  %or.cond.i.i60 = select i1 %i.dt, i1 %.not.i.i.i.i.i59, i1 false
  br i1 %or.cond.i.i60, label %bb.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit62

bb.bh:                                            ; preds = %bb.bg
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit62 unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bj, %bb.be
  %.pn22 = phi { ptr, i32 } [ %i.dx, %bb.bj ], [ %i.dp, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit

bb.bj:                                            ; preds = %bb.bh
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit62: ; preds = %bb.bg, %_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsl8OoimOLbh_6qdrant.exit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bd

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bz, i64 1488
  store ptr %i.dz, ptr %i.dy, align 8, !alias.scope !47905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1488) %i.cc, ptr noundef nonnull align 8 dereferenceable(1488) %i.bz, i64 1488, i1 false), !noalias !47905
  %.phi.trans.insert123 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.pre124 = load i64, ptr %.phi.trans.insert123, align 8, !range !65
  %i.ea = icmp eq i64 %.pre124, 2
  br i1 %i.ea, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 3144
  %i.ed = load i32, ptr %i.cc, align 8, !noundef !38 ; 2 uses
  store i32 %i.ed, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1480) %i.ee, ptr noundef nonnull align 8 dereferenceable(1480) %i.eb, i64 1480, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !38, !align !42, !noundef !38
  store i64 1, ptr %i.a, align 8, !noalias !47917
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.eh, align 8, !noalias !47917
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !47918
  %i.ei = call noundef align 8 dereferenceable_or_null(1496) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1496, i64 noundef range(i64 8, 129) 8) #30, !noalias !47918 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.bl, label %bb.bs, !prof !159

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1496) #29
          to label %.noexc.i unwind label %bb.bm, !noalias !47917

.noexc.i:                                         ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1480) %i.ee)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit unwind label %bb.bn, !noalias !47917

bb.bn:                                            ; preds = %bb.bm
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !47917
  unreachable

bb.bo:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant.exit67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.bo, %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterE14or_insert_withNvMB2o_B2m_6singleE0Csl8OoimOLbh_6qdrant.exit.i.i, %bb.p
  %lpad.loopexit.split-lp137 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant.exit67: ; preds = %bb.bo
  store i64 -1, ptr %i.g, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.en = load i64, ptr %i.em, align 8, !range !65, !alias.scope !47919, !noundef !38 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 2
  br i1 %i.eo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit71, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant.exit67
  %i.ep = icmp eq i64 %i.en, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 111
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !47920
  %.not.i.i.i.i.i68 = icmp sgt i8 %i.er, -1
  %or.cond.i.i69 = select i1 %i.ep, i1 %.not.i.i.i.i.i68, i1 false
  br i1 %or.cond.i.i69, label %bb.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit71

bb.bq:                                            ; preds = %bb.bp
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.es)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit71 unwind label %bb.ag

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit71: ; preds = %bb.bp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant.exit67, %bb.bq
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 3149
  store i8 0, ptr %i.et, align 1
  br label %bb.al

bb.br:                                            ; preds = %bb.ax, %bb.bs
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit

bb.bs:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1496) %i.ei, ptr noundef nonnull align 8 dereferenceable(1496) %i.a, i64 1496, i1 false), !noalias !47917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47917
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eg, i64 424
  %i.ew = invoke noundef ptr @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapmINtNtBb_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEE6insertCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev, i32 noundef %i.ed, ptr noundef nonnull %i.ei)
          to label %bb.bt unwind label %bb.br     ; 3 uses

bb.bt:                                            ; preds = %bb.bs
  %.not14 = icmp eq ptr %i.ew, null
  br i1 %.not14, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit55, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 1632
  store ptr %i.ew, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 1640
  store ptr %i.ey, ptr %i.ez, align 8
  %.sroa.8104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1672
  store i8 0, ptr %.sroa.8104.0..sroa_idx, align 8
  br label %bb.ao

bb.bv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit, %bb.au, %bb.v, %bb.bw, %bb.ap
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit45
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fb) #27
          to label %.body51 unwind label %bb.bv
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4_11ShardHolder21drop_and_remove_shard0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !range !99, !noundef !38
  switch i8 %i.g, label %default.unreachable124 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.q
    i8 5, label %bb.an
    i8 6, label %bb.ba
  ]

default.unreachable124:                           ; preds = %bb.ac, %bb.a
  unreachable

end_hunk_0
begin_hunk_1_@_RNvXs4_NtCs5QaNqjAn6vc_5shard10operationsNtB5_26CollectionUpdateOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
  %i.bp = load i8, ptr %i.bo, align 8, !range !59, !alias.scope !60292, !noundef !38 ; 2 uses
  %.not33.i = icmp eq i8 %i.bp, 2
  br i1 %.not33.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.513.i, ptr noundef nonnull readonly align 1 dereferenceable(23) %.sroa.417.0..sroa_idx.i, i64 23, i1 false), !noalias !60291
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops23PointStructRawPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i8 %i.bi, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !60291
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.59.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.56.i, i64 23, i1 false), !noalias !60292
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i8 %i.bp, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !60291
  %.sroa.610.sroa.4.0..sroa.610.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.610.sroa.4.0..sroa.610.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.513.i, i64 23, i1 false), !noalias !60292
  store i64 9, ptr %i.z, align 8, !alias.scope !60291
  br label %_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsM_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_15PointOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %_RNvXs1w_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB6_34ConditionalInsertOperationInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %bb.l, %bb.m, %bb.o, %bb.s, %bb.w, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.528.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.i)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.br, ptr noundef nonnull align 8 dereferenceable(216) %i.z, i64 216, i1 false)
  store i64 5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cs

bb.ab:                                            ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60299)
  %i.bt = load i64, ptr %i.bs, align 8, !range !65, !alias.scope !60299, !noundef !38 ; 2 uses
  switch i64 %i.bt, label %default.unreachable [
    i64 0, label %bb.ac
    i64 1, label %bb.ah
    i64 2, label %bb.be
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !60301
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bu), !noalias !60302
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !range !49, !alias.scope !60303, !noundef !38
  %.not.i.i = icmp eq i64 %i.bw, -2
  br i1 %.not.i.i, label %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !60301
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bv)
          to label %bb.af unwind label %bb.ae, !noalias !60302

bb.ae:                                            ; preds = %bb.ad
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations10vector_ops21PointVectorsPersistedEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #27
          to label %common.resume unwind label %bb.ag, !noalias !60302

bb.af:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.o, align 8, !noalias !60301
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx2.i.i, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !60301
  br label %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !60302
  unreachable

_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %bb.af, %bb.ac
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.af ], [ -2, %bb.ac ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !60299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !60301
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.ah:                                            ; preds = %bb.ab
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !60304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60306)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !60307
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb), !noalias !60308
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i2.i)
  %i.cc = load i64, ptr %i.bz, align 8, !range !74, !alias.scope !60309, !noundef !38 ; 4 uses
  %.not.i3.i = icmp eq i64 %i.cc, -1
  br i1 %.not.i3.i, label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !60307
  call void @llvm.experimental.noalias.scope.decl(metadata !60310)
  call void @llvm.experimental.noalias.scope.decl(metadata !60311)
  %i.cd = add nsw i64 %i.cc, -2
  %.inv.i.i.i = icmp samesign ult i64 %i.cc, 2
  %i.ce = select i1 %.inv.i.i.i, i64 2, i64 %i.cd
  switch i64 %i.ce, label %bb.aj [
    i64 0, label %bb.ak
    i64 1, label %bb.ap
    i64 2, label %bb.aq
  ]

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !60312)
  call void @llvm.experimental.noalias.scope.decl(metadata !60313)
  %i.cg = load i64, ptr %i.cf, align 8, !range !56, !alias.scope !60314, !noundef !38
  %i.ch = trunc nuw i64 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %i.ch, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !60314, !noundef !38
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 71
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !60314, !noundef !38
  %.not.i.i.i.i = icmp sgt i8 %i.cl, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !60314 ; 5 uses
  %.val21.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !60314 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.an, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cn = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.co = atomicrmw add ptr %i.cn, i64 1 monotonic, align 8, !noalias !60315
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %.invoke.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, !prof !58

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.am, %bb.ao, %bb.an
  %.sroa.06.0.i.i.i.i = phi ptr [ %.val.i.i.i.i, %bb.ao ], [ inttoptr (i64 16 to ptr), %bb.an ], [ %.val.i.i.i.i, %bb.am ]
  %i.cq = ptrtoint ptr %.sroa.06.0.i.i.i.i to i64
  store i64 %i.cq, ptr %.sroa.4.i.i.i, align 8, !alias.scope !60312, !noalias !60316
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.al
  %.sink.i.sroa.phi.i.i.i = phi ptr [ %.sroa.6.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.4.i.i.i, %bb.al ]
  %.sroa.58.0.sink.i.i.i.i = phi i64 [ %.val21.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %i.cj, %bb.al ]
  %storemerge.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ 1, %bb.al ]
  store i64 %.sroa.58.0.sink.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i, align 8, !alias.scope !60312, !noalias !60316
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %storemerge.i.i.i.i, ptr %i.cr, align 8, !alias.scope !60310, !noalias !60307
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.i.i.i, align 8, !noalias !60316
  store i64 %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !60310, !noalias !60307
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.i.i.i, align 8, !noalias !60316
  store i64 %.sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !60310, !noalias !60307
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.ap:                                            ; preds = %bb.ai
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs)
          to label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i unwind label %bb.bc, !noalias !60308

bb.aq:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !60317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !60318
  call void @llvm.experimental.noalias.scope.decl(metadata !60319)
  call void @llvm.experimental.noalias.scope.decl(metadata !60320)
  %i.cu = trunc nuw i64 %i.cc to i1               ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sink.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink.i.sroa.gep16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  br i1 %i.cu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !60321, !noundef !38
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.cy = load i8, ptr %i.cx, align 1, !alias.scope !60321, !noundef !38
  %.not.i.i.i.i.i = icmp slt i8 %i.cy, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !60321 ; 4 uses
  %.val21.i.i.i.i.i = load i64, ptr %i.cz, align 8, !alias.scope !60321 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.da = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16
  %i.db = atomicrmw add ptr %i.da, i64 1 monotonic, align 8, !noalias !60322
  %i.dc = icmp slt i64 %i.db, 0
  br i1 %i.dc, label %.invoke.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, !prof !58

.invoke.i.i:                                      ; preds = %bb.at, %bb.ao
  %i.dd = phi ptr [ %.val.i.i.i.i, %bb.ao ], [ %.val.i.i.i.i.i, %bb.at ]
  %i.de = phi i64 [ %.val21.i.i.i.i, %bb.ao ], [ %.val21.i.i.i.i.i, %bb.at ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.dd, i64 noundef %i.de) #29
          to label %.cont.i.i unwind label %bb.bc, !noalias !60308

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.as, %bb.at
  store ptr %.val.i.i.i.i.i, ptr %.sink.i.sroa.gep16.i.i.i.i, align 8, !alias.scope !60319, !noalias !60318
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.ar
  %.sink.i.sroa.phi.i.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %.sink.i.sroa.gep16.i.i.i.i, %bb.ar ]
  %.sroa.58.0.sink.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %i.cw, %bb.ar ]
  %i.df = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ 1, %bb.ar ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i, align 8, !alias.scope !60319, !noalias !60318
  store i64 %i.df, ptr %i.l, align 8, !alias.scope !60319, !noalias !60318
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.experimental.noalias.scope.decl(metadata !60323)
  call void @llvm.experimental.noalias.scope.decl(metadata !60324)
  %i.dh = load i64, ptr %i.dg, align 8, !range !56, !alias.scope !60325, !noundef !38
  %i.di = trunc nuw i64 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br i1 %i.di, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !60325, !noundef !38
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.av:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 87
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !60325, !noundef !38
  %.not.i1.i.i.i.i = icmp sgt i8 %i.dm, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i11.i.i.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !60325 ; 5 uses
  %.val21.i12.i.i.i.i = load i64, ptr %i.dn, align 8, !alias.scope !60325 ; 2 uses
  br i1 %.not.i1.i.i.i.i, label %bb.aw, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %.not.i.i.i13.i.i.i.i = icmp eq ptr %.val.i11.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i13.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.do = getelementptr inbounds i8, ptr %.val.i11.i.i.i.i, i64 -16
  %i.dp = atomicrmw add ptr %i.do, i64 1 monotonic, align 8, !noalias !60326
  %i.dq = icmp slt i64 %i.dp, 0
  br i1 %i.dq, label %bb.ay, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i, !prof !58

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i11.i.i.i.i, i64 noundef %.val21.i12.i.i.i.i) #29
          to label %.noexc.i.i.i.i unwind label %bb.az, !noalias !60327

.noexc.i.i.i.i:                                   ; preds = %bb.ay
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i: ; preds = %bb.av, %bb.ax, %bb.aw
  %.sroa.06.0.i6.i.i.i.i = phi ptr [ %.val.i11.i.i.i.i, %bb.ax ], [ inttoptr (i64 16 to ptr), %bb.aw ], [ %.val.i11.i.i.i.i, %bb.av ]
  %i.dr = ptrtoint ptr %.sroa.06.0.i6.i.i.i.i to i64
  store i64 %i.dr, ptr %.sroa.4.i.i.i.i, align 8, !alias.scope !60323, !noalias !60318
  br label %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 23
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !60328, !noalias !60318
  %.not.i.i.i.i.i.i.i.i = icmp slt i8 %i.du, 0
  %or.cond.i.not.i.i.i.i = select i1 %i.cu, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i, label %.body.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep16.i.i.i.i)
          to label %.body.i.i unwind label %bb.bb, !noalias !60327

bb.bb:                                            ; preds = %bb.ba
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !60327
  unreachable

_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i, %bb.au
  %.sink.i7.sroa.phi.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i ], [ %.sroa.4.i.i.i.i, %bb.au ]
  %.sroa.58.0.sink.i8.i.i.i.i = phi i64 [ %.val21.i12.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i ], [ %i.dk, %bb.au ]
  %storemerge.i9.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i4.i.i.i.i ], [ 1, %bb.au ]
  store i64 %.sroa.58.0.sink.i8.i.i.i.i, ptr %.sink.i7.sroa.phi.i.i.i.i, align 8, !alias.scope !60323, !noalias !60318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !60329
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i, align 8, !noalias !60318
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !noalias !60318
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !60318
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %storemerge.i9.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !alias.scope !60310, !noalias !60307
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !60310, !noalias !60307
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !alias.scope !60310, !noalias !60307
  %.sroa.0.0.copyload1.pre.i.i = load i64, ptr %i.m, align 8, !noalias !60307
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.bc:                                            ; preds = %.invoke.i.i, %bb.ap
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bc, %bb.ba, %bb.az
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.dw, %bb.bc ], [ %i.ds, %bb.ba ], [ %i.ds, %bb.az ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #27
          to label %common.resume unwind label %bb.bd, !noalias !60308

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %bb.ap, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.0.0.copyload1.i4.i = phi i64 [ %.sroa.0.0.copyload1.pre.i.i, %_RNvXs1n_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_20ShardKeyWithFallbackNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 2, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ], [ 3, %bb.ap ]
  %.sroa.5.0..sroa_idx2.i5.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i5.i, i64 40, i1 false), !noalias !60307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !60307
  br label %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.bd:                                            ; preds = %.body.i.i
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !60308
  unreachable

_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %bb.ah
  %.sroa.9.32.copyload = phi i64 [ %.sroa.0.0.copyload1.i4.i, %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4rest6schemaNtB6_16ShardKeySelectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ -1, %bb.ah ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !60330
  store i64 %.sroa.9.32.copyload, ptr %i.t, align 8, !alias.scope !60305, !noalias !60304
  %.sroa.5.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i7.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i2.i, i64 40, i1 false), !noalias !60330
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !60307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !60304
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca)
          to label %bb.bg unwind label %bb.bf, !noalias !60331

bb.be:                                            ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !60304
  call fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dz) #31, !noalias !60331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !60304
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea)
          to label %bb.bj unwind label %bb.bi, !noalias !60331

bb.bf:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops12PointIdsListECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %i.t) #27
          to label %common.resume unwind label %bb.bh, !noalias !60331

bb.bg:                                            ; preds = %_RNvXsF_NtNtCs5QaNqjAn6vc_5shard10operations9point_opsNtB5_12PointIdsListNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i7.i, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !60299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !60304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !60304
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.bh:                                            ; preds = %bb.bi, %bb.bf
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !60331
  unreachable

bb.bi:                                            ; preds = %bb.be
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.r) #27
          to label %common.resume unwind label %bb.bh, !noalias !60331

bb.bj:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !60299
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.9.8.copyload = load i64, ptr %.sroa.9.8..sroa_idx, align 8, !noalias !60299
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11.8..sroa_idx, i64 72, i1 false)
  %.sroa.11.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !60304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !60304
  br label %_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXs_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB4_16VectorOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %bb.bg, %bb.bj
  %.sroa.9.0 = phi i64 [ %.sroa.0.0.i.i, %_RNvXsm_NtNtCs5QaNqjAn6vc_5shard10operations10vector_opsNtB5_15UpdateVectorsOpNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ %.sroa.9.32.copyload, %bb.bg ], [ %.sroa.9.8.copyload, %bb.bj ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bt, ptr %i.ee, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.i.i, i64 96, i1 false)
  store i64 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.cs

bb.bk:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60333)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i2)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  switch i64 %i.aa, label %default.unreachable1.i [
    i64 0, label %bb.bl
    i64 1, label %bb.bm
    i64 2, label %bb.bx
    i64 3, label %bb.by
end_hunk_1
begin_hunk_2_@_RNvXs7_NtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_opsNtB5_19ConsensusOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
    i64 2, label %bb.dt
    i64 3, label %bb.du
    i64 4, label %bb.dv
    i64 5, label %bb.dw
  ]

bb.dr:                                            ; preds = %.noexc5.i
  %i.mn = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.mp = load i32, ptr %i.mo, align 8, !alias.scope !60507, !noundef !38
  %i.mq = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.mr = load i32, ptr %i.mq, align 8, !range !77, !alias.scope !60507, !noundef !38 ; 2 uses
  %i.ms = trunc nuw i32 %i.mr to i1
  %i.mt = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.mu = load i32, ptr %i.mt, align 4, !alias.scope !60507
  %.sroa.524.0.i.i.i.i = select i1 %i.ms, i32 %i.mu, i32 undef
  %i.mv = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.mw = load <2 x i64>, ptr %i.mv, align 8, !alias.scope !60507
  %i.mx = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.my = load i8, ptr %i.mx, align 4, !range !40, !alias.scope !60507, !noundef !38
  %i.mz = getelementptr inbounds nuw i8, ptr %.val, i64 149
  %i.na = load i8, ptr %i.mz, align 1, !range !54, !alias.scope !60507, !noundef !38
  %i.nb = load i64, ptr %i.mn, align 8, !range !49, !alias.scope !60507, !noundef !38
  %.not31.i.i.i.i = icmp eq i64 %i.nb, -2
  br i1 %.not31.i.i.i.i, label %bb.dy, label %bb.dx

bb.ds:                                            ; preds = %.noexc5.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.nd = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ne = load i32, ptr %i.nd, align 8, !alias.scope !60507, !noundef !38
  %i.nf = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ng = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.nh = load i8, ptr %i.ng, align 4, !range !39, !alias.scope !60507, !noundef !38
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.nj = load <2 x i32>, ptr %i.nc, align 8, !alias.scope !60507
  store <2 x i32> %i.nj, ptr %i.ni, align 8, !alias.scope !60505, !noalias !60468
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.nk = load <2 x i64>, ptr %i.nf, align 8, !alias.scope !60507
  store <2 x i64> %i.nk, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !60505, !noalias !60468
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 %i.ne, ptr %.sroa.75.0..sroa_idx.i.i.i.i, align 8, !alias.scope !60505, !noalias !60468
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  store i8 %i.nh, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 4, !alias.scope !60505, !noalias !60468
  br label %.noexc25.i.i.i

bb.dt:                                            ; preds = %.noexc5.i
  %i.nl = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.nn = load i32, ptr %i.nm, align 8, !alias.scope !60507, !noundef !38
  %i.no = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.np = load i32, ptr %i.no, align 8, !range !77, !alias.scope !60507, !noundef !38 ; 2 uses
  %i.nq = trunc nuw i32 %i.np to i1
  %i.nr = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.ns = load i32, ptr %i.nr, align 4, !alias.scope !60507
  %.sroa.518.0.i.i.i.i = select i1 %i.nq, i32 %i.ns, i32 undef
  %i.nt = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.nu = load <2 x i64>, ptr %i.nt, align 8, !alias.scope !60507
  %i.nv = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.nw = load i8, ptr %i.nv, align 4, !range !40, !alias.scope !60507, !noundef !38
  %i.nx = getelementptr inbounds nuw i8, ptr %.val, i64 149
  %i.ny = load i8, ptr %i.nx, align 1, !range !54, !alias.scope !60507, !noundef !38
  %i.nz = load i64, ptr %i.nl, align 8, !range !49, !alias.scope !60507, !noundef !38
  %.not29.i.i.i.i = icmp eq i64 %i.nz, -2
  br i1 %.not29.i.i.i.i, label %bb.ea, label %bb.dz

bb.du:                                            ; preds = %.noexc5.i
  %i.oa = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ob, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.oa, i64 32, i1 false), !alias.scope !60508, !noalias !60453
  br label %.noexc25.i.i.i

bb.dv:                                            ; preds = %.noexc5.i
  %i.oc = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.od, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.oc, i64 32, i1 false), !alias.scope !60508, !noalias !60453
  br label %.noexc25.i.i.i

bb.dw:                                            ; preds = %.noexc5.i
  %i.oe = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.of = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.og = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.og, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.of, i64 32, i1 false), !alias.scope !60508, !noalias !60453
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.oh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oe)
          to label %.noexc25.i.i.i unwind label %bb.fv, !noalias !60453

bb.dx:                                            ; preds = %bb.dr
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.mn) #31
          to label %.noexc26.i.i.i unwind label %bb.fv, !noalias !60453

.noexc26.i.i.i:                                   ; preds = %bb.dx
  %.sroa.026.0.copyload.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !60509
  br label %bb.dy

bb.dy:                                            ; preds = %.noexc26.i.i.i, %bb.dr
  %.sroa.026.0.i.i.i.i = phi i64 [ %.sroa.026.0.copyload.i.i.i.i, %.noexc26.i.i.i ], [ -2, %bb.dr ]
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.sroa.026.0.i.i.i.i, ptr %i.oi, align 8, !alias.scope !60505, !noalias !60468
  %.sroa.0.sroa.4.0..sroa_idx.i20.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.sroa.4.0..sroa_idx.i20.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.ml, i64 96, i1 false), !noalias !60510
  %.sroa.4.0..sroa_idx.i21.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  store i32 %i.mr, ptr %.sroa.4.0..sroa_idx.i21.i.i.i, align 8, !alias.scope !60505, !noalias !60468
  %.sroa.5.0..sroa_idx.i22.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 116
  store i32 %.sroa.524.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i22.i.i.i, align 4, !alias.scope !60505, !noalias !60468
  %.sroa.6.0..sroa_idx.i23.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  store <2 x i64> %i.mw, ptr %.sroa.6.0..sroa_idx.i23.i.i.i, align 8, !alias.scope !60505, !noalias !60468
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  store i32 %i.mp, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !60505, !noalias !60468
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 140
  store i8 %i.my, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4, !alias.scope !60505, !noalias !60468
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 141
  store i8 %i.na, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 1, !alias.scope !60505, !noalias !60468
  br label %.noexc25.i.i.i

bb.dz:                                            ; preds = %bb.dt
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.nl) #31
          to label %.noexc27.i.i.i unwind label %bb.fv, !noalias !60453

.noexc27.i.i.i:                                   ; preds = %bb.dz
  %.sroa.020.0.copyload.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !60509
  br label %bb.ea

bb.ea:                                            ; preds = %.noexc27.i.i.i, %bb.dt
  %.sroa.020.0.i.i.i.i = phi i64 [ %.sroa.020.0.copyload.i.i.i.i, %.noexc27.i.i.i ], [ -2, %bb.dt ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.sroa.020.0.i.i.i.i, ptr %i.oj, align 8, !alias.scope !60505, !noalias !60468
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.mk, i64 96, i1 false), !noalias !60510
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  store i32 %i.np, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !alias.scope !60505, !noalias !60468
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 116
  store i32 %.sroa.518.0.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 4, !alias.scope !60505, !noalias !60468
  %.sroa.611.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  store <2 x i64> %i.nu, ptr %.sroa.611.0..sroa_idx.i.i.i.i, align 8, !alias.scope !60505, !noalias !60468
  %.sroa.813.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  store i32 %i.nn, ptr %.sroa.813.0..sroa_idx.i.i.i.i, align 8, !alias.scope !60505, !noalias !60468
  %.sroa.914.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 140
  store i8 %i.nw, ptr %.sroa.914.0..sroa_idx.i.i.i.i, align 4, !alias.scope !60505, !noalias !60468
  %.sroa.1015.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 141
  store i8 %i.ny, ptr %.sroa.1015.0..sroa_idx.i.i.i.i, align 1, !alias.scope !60505, !noalias !60468
  br label %.noexc25.i.i.i

bb.eb:                                            ; preds = %bb.c
  %i.ok = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !60468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60512)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ok)
          to label %.noexc6.i unwind label %bb.fw

.noexc6.i:                                        ; preds = %bb.eb
  %i.ol = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.om = load i32, ptr %i.ol, align 8, !alias.scope !60513, !noundef !38
  %i.on = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.oo = load i64, ptr %i.on, align 8, !alias.scope !60513, !noundef !38
  %i.op = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.oq = load i8, ptr %i.op, align 4, !range !110, !alias.scope !60513, !noundef !38
  %i.or = getelementptr inbounds nuw i8, ptr %.val, i64 45
  %i.os = load i8, ptr %i.or, align 1, !range !146, !alias.scope !60513, !noundef !38
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i32 %i.om, ptr %i.ot, align 8, !alias.scope !60511, !noalias !60468
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.oo, ptr %i.ou, align 8, !alias.scope !60511, !noalias !60468
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  store i8 %i.oq, ptr %i.ov, align 4, !alias.scope !60511, !noalias !60468
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ao, i64 37
  store i8 %i.os, ptr %i.ow, align 1, !alias.scope !60511, !noalias !60468
  %i.ox = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ox, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !60455
  store i64 7, ptr %i.as, align 8, !alias.scope !60453, !noalias !60452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !60468
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.ec:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.075.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60514)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !60515
  %i.oy = getelementptr inbounds nuw i8, ptr %.val, i64 32
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oy)
          to label %.noexc7.i unwind label %bb.fw

.noexc7.i:                                        ; preds = %bb.ec
  %i.oz = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !60515
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60517)
  %i.pa = load i64, ptr %i.oz, align 8, !range !56, !alias.scope !60518, !noundef !38
  %i.pb = trunc nuw i64 %i.pa to i1               ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %.sink.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sink.i.sroa.gep4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  br i1 %i.pb, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %.noexc7.i
  %i.pd = load i64, ptr %i.pc, align 8, !alias.scope !60518, !noundef !38
  br label %bb.ei

bb.ee:                                            ; preds = %.noexc7.i
  %i.pe = getelementptr inbounds nuw i8, ptr %.val, i64 31
  %i.pf = load i8, ptr %i.pe, align 1, !alias.scope !60518, !noundef !38
  %.not.i.i28.i.i.i = icmp slt i8 %i.pf, 0
  %i.pg = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val.i.i37.i.i.i = load ptr, ptr %i.pc, align 8, !alias.scope !60518 ; 4 uses
  %.val21.i.i38.i.i.i = load i64, ptr %i.pg, align 8, !alias.scope !60518 ; 2 uses
  %.not.i.i.i.i39.i.i.i = icmp eq ptr %.val.i.i37.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i28.i.i.i, i1 true, i1 %.not.i.i.i.i39.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ph = getelementptr inbounds i8, ptr %.val.i.i37.i.i.i, i64 -16
  %i.pi = atomicrmw add ptr %i.ph, i64 1 monotonic, align 8, !noalias !60519
  %i.pj = icmp slt i64 %i.pi, 0
  br i1 %i.pj, label %bb.eg, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i, !prof !58

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i37.i.i.i, i64 noundef %.val21.i.i38.i.i.i) #29
          to label %.noexc.i40.i.i.i unwind label %bb.eh, !noalias !60520

.noexc.i40.i.i.i:                                 ; preds = %bb.eg
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i: ; preds = %bb.ee, %bb.ef
  store ptr %.val.i.i37.i.i.i, ptr %.sink.i.sroa.gep4.i.i.i.i, align 8, !alias.scope !60516, !noalias !60515
  br label %bb.ei

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.ek, %bb.ej, %bb.eh
  %.pn.i36.i.i.i = phi { ptr, i32 } [ %i.pk, %bb.eh ], [ %i.pn, %bb.ek ], [ %i.pn, %bb.ej ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #27
          to label %bb.fx unwind label %bb.el, !noalias !60520

bb.eh:                                            ; preds = %bb.eg
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.ei:                                            ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i, %bb.ed
  %.sink.i.sroa.phi.i34.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i ], [ %.sink.i.sroa.gep4.i.i.i.i, %bb.ed ]
  %.sroa.58.0.sink.i.i35.i.i.i = phi i64 [ %.val21.i.i38.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i ], [ %i.pd, %bb.ed ]
  %i.pl = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i ], [ 1, %bb.ed ]
  store i64 %.sroa.58.0.sink.i.i35.i.i.i, ptr %.sink.i.sroa.phi.i34.i.i.i, align 8, !alias.scope !60516, !noalias !60515
  store i64 %i.pl, ptr %i.q, align 8, !alias.scope !60516, !noalias !60515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !60515
  %i.pm = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_yEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pm)
          to label %_RNvXs1N_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_14CreateShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.ej, !noalias !60520

bb.ej:                                            ; preds = %bb.ei
  %i.pn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.q, i64 23
  %i.pp = load i8, ptr %i.po, align 1, !alias.scope !60521, !noalias !60515
  %.not.i.i.i.i.i.i.i.i = icmp slt i8 %i.pp, 0
  %or.cond.i.not.i.i.i.i = select i1 %i.pb, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep4.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.el, !noalias !60520

bb.el:                                            ; preds = %bb.ek, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !60520
  unreachable

_RNvXs1N_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_14CreateShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.ei
  %i.pr = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ps = load i8, ptr %i.pr, align 8, !range !146, !alias.scope !60522, !noundef !38
  %.sroa.075.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.075.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.075.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !60523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.075.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !60523
  %.sroa.075.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.075.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.075.48..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !60523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !60515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !60515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !60515
  %i.pt = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pt, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.075.i.i.i, i64 72, i1 false), !noalias !60455
  %.sroa.676.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  store i8 %i.ps, ptr %.sroa.676.0..sroa_idx.i.i.i, align 8, !alias.scope !60453, !noalias !60452
  store i64 8, ptr %i.as, align 8, !alias.scope !60453, !noalias !60452
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.075.i.i.i)
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.em:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60524)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !60525
  %i.pu = getelementptr inbounds nuw i8, ptr %.val, i64 32
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pu)
          to label %.noexc8.i unwind label %bb.fw

.noexc8.i:                                        ; preds = %bb.em
  %i.pv = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i41.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60527)
  %i.pw = load i64, ptr %i.pv, align 8, !range !56, !alias.scope !60528, !noundef !38
  %i.px = trunc nuw i64 %i.pw to i1
  %i.py = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  br i1 %i.px, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.noexc8.i
  %i.pz = load i64, ptr %i.py, align 8, !alias.scope !60528, !noundef !38
  br label %_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.eo:                                            ; preds = %.noexc8.i
  %i.qa = getelementptr inbounds nuw i8, ptr %.val, i64 31
  %i.qb = load i8, ptr %i.qa, align 1, !alias.scope !60528, !noundef !38
  %.not.i.i42.i.i.i = icmp sgt i8 %i.qb, -1
  %i.qc = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val.i.i53.i.i.i = load ptr, ptr %i.py, align 8, !alias.scope !60528 ; 5 uses
  %.val21.i.i54.i.i.i = load i64, ptr %i.qc, align 8, !alias.scope !60528 ; 2 uses
  br i1 %.not.i.i42.i.i.i, label %bb.ep, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %.not.i.i.i.i55.i.i.i = icmp eq ptr %.val.i.i53.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i55.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qd = getelementptr inbounds i8, ptr %.val.i.i53.i.i.i, i64 -16
  %i.qe = atomicrmw add ptr %i.qd, i64 1 monotonic, align 8, !noalias !60529
  %i.qf = icmp slt i64 %i.qe, 0
  br i1 %i.qf, label %bb.er, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i, !prof !58

bb.er:                                            ; preds = %bb.eq
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i53.i.i.i, i64 noundef %.val21.i.i54.i.i.i) #29
          to label %.noexc.i56.i.i.i unwind label %bb.es, !noalias !60530

.noexc.i56.i.i.i:                                 ; preds = %bb.er
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i: ; preds = %bb.eo, %bb.eq, %bb.ep
  %.sroa.06.0.i.i47.i.i.i = phi ptr [ %.val.i.i53.i.i.i, %bb.eq ], [ inttoptr (i64 16 to ptr), %bb.ep ], [ %.val.i.i53.i.i.i, %bb.eo ]
  %i.qg = ptrtoint ptr %.sroa.06.0.i.i47.i.i.i to i64
  store i64 %i.qg, ptr %.sroa.4.i41.i.i.i, align 8, !alias.scope !60526, !noalias !60525
  br label %_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.es:                                            ; preds = %bb.er
  %i.qh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #27
          to label %bb.fx unwind label %bb.et, !noalias !60530

bb.et:                                            ; preds = %bb.es
  %i.qi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !60530
  unreachable

_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i, %bb.en
  %.sink.i.sroa.phi.i48.i.i.i = phi ptr [ %.sroa.6.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i ], [ %.sroa.4.i41.i.i.i, %bb.en ]
  %.sroa.58.0.sink.i.i49.i.i.i = phi i64 [ %.val21.i.i54.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i ], [ %i.pz, %bb.en ]
  %storemerge.i.i50.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i ], [ 1, %bb.en ]
  store i64 %.sroa.58.0.sink.i.i49.i.i.i, ptr %.sink.i.sroa.phi.i48.i.i.i, align 8, !alias.scope !60526, !noalias !60525
  %.sroa.679.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.679.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !60455
  %.sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.0..sroa.4.i41.i.0..sroa.4.i41.0..sroa.4.i41.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.i41.i.i.i, align 8, !noalias !60525
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !noalias !60525
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i41.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !60525
  %i.qj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %storemerge.i.i50.i.i.i, ptr %i.qj, align 8, !alias.scope !60453, !noalias !60452
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.0..sroa.4.i41.i.0..sroa.4.i41.0..sroa.4.i41.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !60453, !noalias !60452
  %.sroa.578.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i, ptr %.sroa.578.0..sroa_idx.i.i.i, align 8, !alias.scope !60453, !noalias !60452
  store i64 9, ptr %i.as, align 8, !alias.scope !60453, !noalias !60452
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.eu:                                            ; preds = %bb.c
  %i.qk = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60531)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !60532
  %i.ql = getelementptr inbounds nuw i8, ptr %.val, i64 112
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ql)
          to label %.noexc9.i unwind label %bb.fw

.noexc9.i:                                        ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !60532
  %i.qm = getelementptr inbounds nuw i8, ptr %.val, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !60533
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qm)
          to label %.noexc.i60.i.i.i unwind label %bb.ex, !noalias !60534

.noexc.i60.i.i.i:                                 ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !60533
  %i.qn = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qn)
          to label %bb.ey unwind label %bb.ev, !noalias !60535

bb.ev:                                            ; preds = %.noexc.i60.i.i.i
  %i.qo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #27
          to label %.body.i58.i.i.i unwind label %bb.ew, !noalias !60535

bb.ew:                                            ; preds = %bb.ev
  %i.qp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !60535
  unreachable

.body.i58.i.i.i:                                  ; preds = %bb.fb, %bb.ex, %bb.ev
  %.pn.i59.i.i.i = phi { ptr, i32 } [ %i.qv, %bb.fb ], [ %i.qq, %bb.ex ], [ %i.qo, %bb.ev ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #27
          to label %bb.fx unwind label %bb.fd, !noalias !60534

bb.ex:                                            ; preds = %.noexc9.i
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i58.i.i.i

bb.ey:                                            ; preds = %.noexc.i60.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !60536
  %i.qr = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qr, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !60536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !60533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !60533
  %i.qs = load i64, ptr %i.qk, align 8, !range !95, !alias.scope !60537, !noundef !38
  %.not.i61.i.i.i = icmp eq i64 %i.qs, -1
  br i1 %.not.i61.i.i.i, label %bb.fa, label %bb.ez
end_hunk_2
begin_hunk_3_@_RNvXsad_NtCs607s0NAIaWN_7segment5typesNtB6_19PayloadSchemaParamsNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCsPYQCUnoTxQ_10collection9hash_ringNtB5_14HashRingFilterNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1589, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1556, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1588, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1590, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1558)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = load i64, ptr %1, align 8, !range !51, !noundef !38
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !51, !noundef !38
  %.not4 = icmp eq i64 %i.i, -1
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !60659)
  call void @llvm.experimental.noalias.scope.decl(metadata !60660)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !51, !noundef !38
  %.not5 = icmp eq i64 %i.k, -1
  br i1 %.not5, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.l, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #27
          to label %bb.v unwind label %bb.u

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !60660, !noundef !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !60659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.p unwind label %bb.o

bb.l:                                             ; preds = %bb.g
  store i64 -1, ptr %i.d, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !51, !noundef !38
  %.not6 = icmp eq i64 %i.q, -1
  br i1 %.not6, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.s, %bb.o
  %.pn = phi { ptr, i32 } [ %i.v, %bb.s ], [ %i.r, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types9MinShouldEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #27
          to label %bb.h unwind label %bb.u

bb.o:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.t
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.t ], [ -1, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.s:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #27
          to label %bb.n unwind label %bb.u

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.u:                                             ; preds = %bb.s, %bb.n, %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.v:                                             ; preds = %bb.h
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsem_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !56, !noundef !38
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1593, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1510)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1592, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1591)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !56, !noundef !38
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !noundef !38
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.f = load i8, ptr %i.e, align 1, !noundef !38
  %.not = icmp slt i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 4 uses
  %.val21 = load i64, ptr %i.g, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, !prof !58

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val, i64 noundef %.val21) #29
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, %bb.b
  %.sink = phi i64 [ 16, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit ], [ 8, %bb.b ]
  %.sroa.58.0.sink = phi i64 [ %.val21, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit ], [ %i.d, %bb.b ]
  %storemerge = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.b ]
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i64 %.sroa.58.0.sink, ptr %.sroa.412.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCsjRw7JfgqtyF_9indicatif5styleNtB5_13TemplateErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1596, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1451, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1594, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1597, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1595)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsg_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_10ReshardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %.sroa.4 = alloca i64, align 8                  ; 5 uses
  %.sroa.7 = alloca i64, align 8                  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i8, ptr %i.a, align 4, !range !40, !noundef !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !38
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i32, ptr %i.e, align 8, !noundef !38
  %i.g = load i64, ptr %1, align 8, !range !65, !noundef !38 ; 2 uses
  %.not = icmp eq i64 %i.g, 2
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60665)
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !60665, !noundef !38
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !60665, !noundef !38
  %.not.i = icmp sgt i8 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !60665 ; 5 uses
  %.val21.i = load i64, ptr %i.m, align 8, !alias.scope !60665 ; 2 uses
  br i1 %.not.i, label %bb.e, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !60666
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i, !prof !58

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i, i64 noundef %.val21.i) #29, !noalias !60666
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d, %bb.f, %bb.e
  %.sroa.06.0.i = phi ptr [ %.val.i, %bb.f ], [ inttoptr (i64 16 to ptr), %bb.e ], [ %.val.i, %bb.d ]
  %i.q = ptrtoint ptr %.sroa.06.0.i to i64
  store i64 %i.q, ptr %.sroa.4, align 8, !alias.scope !60664
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.c, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  %.sink.i.sroa.phi = phi ptr [ %.sroa.7, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %.sroa.4, %bb.c ]
  %.sroa.58.0.sink.i = phi i64 [ %.val21.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ %i.j, %bb.c ]
  %storemerge.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i ], [ 1, %bb.c ]
  store i64 %.sroa.58.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !60664
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload = load i64, ptr %.sroa.4, align 8
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload = load i64, ptr %.sroa.7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %.sroa.5.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ]
  %.sroa.5.sroa.0.0 = phi i64 [ undef, %bb.a ], [ %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ]
  %.sroa.0.0 = phi i64 [ 2, %bb.a ], [ %storemerge.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %i.b, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.d, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.f, ptr %i.v, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_Cs54nuPOFLmP7_8hashringINtB5_8HashRingINtNtCslmvYCXbQjWR_6common11stable_hash12StableHashedTmmEEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCsllwMOZTb81t_9siphasher3sip11SipHasher24EENtNtB1I_3fmt5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1600, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1601, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1598, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1556, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1599)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCsPYQCUnoTxQ_10collection6shards8transferNtB5_13ShardTransferNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1437, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @1602, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @1436, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @1436, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.g, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @1603, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.h, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @1604, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @1605, ptr %i.u, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1613, i64 noundef 13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @1612, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsl_NtNtCsPYQCUnoTxQ_10collection6shards8transferNtB5_13ShardTransferNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) initializes((0, 134)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load i32, ptr %i.b, align 8, !noundef !38
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load i32, ptr %i.d, align 8, !range !77, !noundef !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load <2 x i64>, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.k = load i8, ptr %i.j, align 4, !range !40, !noundef !38
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.m = load i8, ptr %i.l, align 1, !range !54, !noundef !38
  %i.n = load i64, ptr %1, align 8, !range !49, !noundef !38
  %.not6 = icmp eq i64 %i.n, -2
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_3
