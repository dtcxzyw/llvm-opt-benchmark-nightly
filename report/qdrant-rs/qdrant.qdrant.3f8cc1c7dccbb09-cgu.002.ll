Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.002?download=true
inline.NumInlined: 25559
inline.NumDeleted: 7874
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet16un_proxify_local0Csl8OoimOLbh_6qdrant:bb.a
  %.pn56 = phi { ptr, i32 } [ %.pn50.pn.pn, %bb.gn ], [ %.pn50.pn.pn, %bb.gm ], [ %.pn32.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsl8OoimOLbh_6qdrant.exit ], [ %i.ce, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.aq
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet24revert_queue_proxy_local0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [608 x i8], align 8               ; 5 uses
  %i.b = alloca [536 x i8], align 8               ; 7 uses
  %i.c = alloca [400 x i8], align 8               ; 7 uses
  %i.d = alloca [720 x i8], align 8               ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !range !39, !noundef !38
  switch i8 %i.i, label %default.unreachable54 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.b
  ]

default.unreachable54:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !nonnull !38, !align !42, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @711) #25
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @711) #25
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke fastcc void @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.m) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit36 unwind label %bb.aj

bb.h:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.f, align 8, !noundef !38
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  br i1 %i.p, label %bb.i, label %bb.j

common.ret:                                       ; preds = %.invoke, %bb.i
  %storemerge = phi i8 [ 3, %bb.i ], [ 1, %.invoke ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 %storemerge, ptr %i.h, align 8
  ret i1 %i.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load i8, ptr %i.q, align 8, !range !39, !noundef !38
  %cond.i = icmp eq i8 %i.r, 3
  br i1 %cond.i, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i8, ptr %i.s, align 8, !range !39, !noundef !38
  %cond.i.i = icmp eq i8 %i.t, 3
  br i1 %cond.i.i, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.u)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i.i = load ptr, ptr %i.w, align 8, !align !42, !noundef !38 ; 2 uses
  %i.x = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit36, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr i8, ptr %0, i64 40
  %.val3.i.i.i = load ptr, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !38, !noundef !38
  invoke void %i.aa(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit36 unwind label %bb.q, !inline_history !2

bb.o:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !align !42, !noundef !38 ; 2 uses
  %i.ac = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ac, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr i8, ptr %0, i64 40
  %.val1.i.i.i = load ptr, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !38, !noundef !38
  invoke void %i.af(ptr noundef %.val1.i.i.i)
          to label %bb.r unwind label %bb.t, !inline_history !48

bb.q:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.j, %bb.k, %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.val29 = load ptr, ptr %i.ah, align 8, !noundef !38 ; 2 uses
  %i.ai = load i64, ptr %.val29, align 8, !range !122, !noundef !38 ; 3 uses
  %.not = icmp eq i64 %i.ai, -1
  br i1 %.not, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = icmp ne i64 %i.ai, 4
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, 5
  br i1 %i.ak, label %bb.u, label %.invoke

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit36: ; preds = %bb.g, %bb.m, %bb.n, %bb.ak, %bb.t
  %.pn22 = phi { ptr, i32 } [ %i.al, %bb.t ], [ %.pn18.pn.pn, %bb.ak ], [ %i.v, %bb.m ], [ %i.n, %bb.g ], [ %i.v, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn22

bb.t:                                             ; preds = %.invoke, %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit36

bb.u:                                             ; preds = %bb.s
  %i.am = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.an = icmp ult i64 %i.am, 6
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ugt i64 %i.am, 3
  br i1 %i.ao, label %bb.w, label %bb.z

bb.v:                                             ; preds = %bb.w
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ak

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @706, ptr %i.e, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 47, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @706, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 47, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @713, ptr %i.at, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @712, ptr noundef nonnull inttoptr (i64 119 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val24.pre = load ptr, ptr %i.ah, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.al
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.z:                                             ; preds = %bb.u, %bb.x
  %.val24 = phi ptr [ %.val29, %bb.u ], [ %.val24.pre, %bb.x ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !49477)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.d, ptr noundef nonnull align 8 dereferenceable(720) %.val24, i64 720, i1 false), !alias.scope !49478
  store i64 -1, ptr %.val24, align 8, !alias.scope !49479
  %i.av = load i64, ptr %i.d, align 8, !range !122, !noundef !38 ; 2 uses
  switch i64 %i.av, label %bb.al [
    i64 -1, label %.thread
    i64 5, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.aw = getelementptr inbounds nuw i8, ptr %.val24, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %i.a, ptr noundef nonnull align 8 dereferenceable(608) %i.aw, i64 608, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtB2_15QueueProxyShard27forget_updates_and_finalize(ptr noalias nofree noundef nonnull sret([536 x i8]) align 8 captures(none) dereferenceable(536) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(608) %i.a)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.c, ptr noundef nonnull align 8 dereferenceable(400) %i.b, i64 400, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(136) %i.ay)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard10LocalShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %i.c) #27
          to label %bb.ai unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.ah, align 8, !noundef !38 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49480)
  %i.ba = load i64, ptr %.val, align 8, !range !122, !alias.scope !49481, !noundef !38
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val)
          to label %bb.ah unwind label %bb.ag, !noalias !49480

bb.ag:                                            ; preds = %bb.af
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %.val, align 8, !alias.scope !49482
  %.sroa.643.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.643.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(400) %i.c, i64 400, i1 false)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ae
  store i64 2, ptr %.val, align 8, !alias.scope !49482
  %.sroa.643.0..val.sroa_idx44 = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.643.0..val.sroa_idx44, ptr noundef nonnull align 8 dereferenceable(400) %i.c, i64 400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.invoke

.invoke:                                          ; preds = %bb.s, %bb.r, %bb.ah
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.ret unwind label %bb.t

bb.ai:                                            ; preds = %bb.ag, %bb.ad
  %.pn1850 = phi { ptr, i32 } [ %i.az, %bb.ad ], [ %i.bc, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ak, %bb.ad, %bb.g
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ab, %bb.v, %bb.am, %bb.y
  %.pn18.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.v ], [ %i.be, %bb.am ], [ %i.au, %bb.y ], [ %.pn1850, %bb.ai ], [ %i.ax, %bb.ab ]
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit36 unwind label %bb.aj

.thread:                                          ; preds = %bb.z, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @714) #29
          to label %bb.an unwind label %bb.am

bb.al:                                            ; preds = %bb.z
  %2 = icmp ne i64 %i.av, 4
  call void @llvm.assume(i1 %2)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(720) %i.d)
          to label %.thread unwind label %bb.y

bb.am:                                            ; preds = %.thread
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.an:                                            ; preds = %.thread
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB6_15ShardReplicaSet12update_local0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 20 uses
  %.sroa.3.sroa.3.i = alloca [31 x i8], align 1   ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [120 x i8], align 8               ; 5 uses
  %.sroa.368.sroa.3.i = alloca [31 x i8], align 1 ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.3190.sroa.3 = alloca [40 x i8], align 8  ; 5 uses
  %.sroa.3188.sroa.3 = alloca [40 x i8], align 8  ; 2 uses
  %i.g = alloca [56 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [288 x i8], align 8               ; 5 uses
  %.sroa.9178.sroa.6 = alloca [40 x i8], align 8  ; 3 uses
  %.sroa.3157.sroa.3 = alloca [40 x i8], align 8  ; 3 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.0144 = alloca [320 x i8], align 8        ; 5 uses
  %i.k = alloca [56 x i8], align 8                ; 13 uses
  %.sroa.3 = alloca [40 x i8], align 8            ; 2 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 730 ; 3 uses
  %i.u = load i8, ptr %i.t, align 2, !range !37, !noundef !38
  switch i8 %i.u, label %default.unreachable256 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.bd
    i8 5, label %bb.b
    i8 6, label %bb.ci
    i8 7, label %bb.ee
  ]

default.unreachable256:                           ; preds = %bb.ci, %bb.a
  unreachable

default.unreachable:                              ; preds = %thread-pre-split
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br label %bb.bw

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 737
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 735
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i32 0, ptr %i.x, align 1
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !38, !align !42, !noundef !38 ; 2 uses
  store ptr %i.aa, ptr %i.y, align 8
  store i8 1, ptr %i.v, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.ab, ptr noundef nonnull align 8 dereferenceable(288) %1, i64 288, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 731
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 729
  %i.ae = load i8, ptr %i.ad, align 1, !range !59, !noundef !38
  store i8 %i.ae, ptr %i.ac, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.aj = load i32, ptr %i.ai, align 8, !range !98, !noundef !38
  store i64 %i.ah, ptr %i.af, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 648
  store i32 %i.aj, ptr %i.ak, align 8
  store i8 1, ptr %i.w, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 732
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.ap = load i8, ptr %i.ao, align 8, !range !40, !noundef !38
  store i8 %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 432
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 744
  store ptr %i.aq, ptr %i.ar, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 832
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @726) #25
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @726) #25
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %i.at = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.as, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.as) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit106 unwind label %bb.au

bb.h:                                             ; preds = %bb.f
  %i.av = extractvalue { ptr, ptr } %i.at, 0      ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.i, label %bb.j

common.ret:                                       ; preds = %bb.eq, %bb.eh, %bb.dy, %bb.bz, %bb.bg, %bb.i
  %.sink = phi i8 [ 1, %bb.eq ], [ 7, %bb.eh ], [ 6, %bb.dy ], [ 5, %bb.bz ], [ 4, %bb.bg ], [ 3, %bb.i ]
  store i8 %.sink, ptr %i.t, align 2
  ret void

bb.i:                                             ; preds = %bb.h
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %i.ax = extractvalue { ptr, ptr } %i.at, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 735
  store i8 1, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 688
  store ptr %i.av, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %1, i64 696       ; 2 uses
  store ptr %i.ax, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.bc = load i8, ptr %i.bb, align 8, !range !39, !noundef !38
  %cond.i = icmp eq i8 %i.bc, 3
  br i1 %cond.i, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.be = load i8, ptr %i.bd, align 8, !range !39, !noundef !38
  %cond.i.i = icmp eq i8 %i.be, 3
  br i1 %cond.i.i, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 760
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.bf)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 768
  %.val2.i.i.i = load ptr, ptr %i.bh, align 8, !align !42, !noundef !38 ; 2 uses
  %i.bi = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit106, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr i8, ptr %1, i64 776
  %.val3.i.i.i = load ptr, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !38, !noundef !38
  invoke void %i.bl(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit106 unwind label %bb.q, !inline_history !2

bb.o:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 768
  %.val.i.i.i = load ptr, ptr %i.bm, align 8, !align !42, !noundef !38 ; 2 uses
  %i.bn = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bn, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr i8, ptr %1, i64 776
  %.val1.i.i.i = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !38, !noundef !38
  invoke void %i.bq(ptr noundef %.val1.i.i.i)
          to label %bb.r unwind label %bb.ep, !inline_history !106

bb.q:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.j, %bb.k, %bb.o
  %.val84 = load ptr, ptr %i.ba, align 8, !noundef !38 ; 2 uses
  %i.bs = load i64, ptr %.val84, align 8, !range !122, !noundef !38
end_hunk_0
