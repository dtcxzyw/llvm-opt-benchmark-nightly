Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.008?download=true
inline.NumInlined: 9683
inline.NumDeleted: 3881
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet13proxify_local0Csl8OoimOLbh_6qdrant:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 2 uses
  invoke fastcc void @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noundef nonnull align 8 %i.aw, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aw) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit103 unwind label %bb.ap

bb.i:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.af, align 8, !noundef !20
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.ba, %bb.j
  %storemerge = phi i8 [ 1, %bb.ba ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.ah, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.bb = load i8, ptr %i.ba, align 8, !range !46, !noundef !20
  %cond.i = icmp eq i8 %i.bb, 3
  br i1 %cond.i, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.bd = load i8, ptr %i.bc, align 8, !range !46, !noundef !20
  %cond.i.i = icmp eq i8 %i.bd, 3
  br i1 %cond.i.i, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 832
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.be)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 840
  %.val2.i.i.i = load ptr, ptr %i.bg, align 8, !align !19, !noundef !20 ; 2 uses
  %i.bh = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit103, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr i8, ptr %1, i64 848
  %.val3.i.i.i = load ptr, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !20, !noundef !20
  invoke void %i.bk(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit103 unwind label %bb.r, !inline_history !2

bb.p:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 840
  %.val.i.i.i = load ptr, ptr %i.bl, align 8, !align !19, !noundef !20 ; 2 uses
  %i.bm = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bm, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr i8, ptr %1, i64 848
  %.val1.i.i.i = load ptr, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !20, !noundef !20
  invoke void %i.bp(ptr noundef %.val1.i.i.i)
          to label %bb.s unwind label %bb.az, !inline_history !59

bb.r:                                             ; preds = %bb.o
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.k, %bb.l, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %.val93 = load ptr, ptr %i.br, align 8, !noundef !20 ; 5 uses
  %i.bs = load i64, ptr %.val93, align 8, !range !88, !noundef !20 ; 4 uses
  %.not = icmp eq i64 %i.bs, -1
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = icmp ne i64 %i.bs, 4
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nsw i64 %i.bs, -2
  %.inv = icmp samesign ult i64 %i.bs, 2
  %i.bv = select i1 %.inv, i64 2, i64 %i.bu
  switch i64 %i.bv, label %bb.b [
    i64 0, label %bb.ah
    i64 1, label %bb.bg
    i64 2, label %bb.af
    i64 3, label %bb.bs
    i64 4, label %bb.by
  ]

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !20, !align !19, !noundef !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.by = invoke noundef i64 @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2_15ShardReplicaSet12this_peer_id(ptr noundef nonnull align 8 %i.bx)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.y, %bb.w
  %.pn27.pn = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.bz, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1472
  store i64 %i.by, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.ca, ptr %i.k, align 8
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5189.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.cb, align 8
  %.sroa.5191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5191.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @395, ptr noundef nonnull %i.k)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.v

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false), !alias.scope !11603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.v
  %.pn32 = phi { ptr, i32 } [ %i.cd, %bb.ab ], [ %.pn27.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.04.0.copyload = load i64, ptr %i.o, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.cd, %bb.bx, %bb.br, %bb.bl, %bb.ac
  %.sroa.04.0 = phi i64 [ %.sroa.04.0.copyload7, %bb.bl ], [ %.sroa.04.0.copyload, %bb.ac ], [ %.sroa.04.0.copyload8, %bb.br ], [ %.sroa.04.0.copyload9, %bb.bx ], [ %.sroa.04.0.copyload10, %bb.cd ], [ -1, %bb.af ]
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.az

bb.ae:                                            ; preds = %bb.aj, %bb.an, %bb.bc, %bb.cb, %bb.bv, %bb.bp, %bb.bj, %bb.be, %bb.ag, %bb.aa
  %.pn80.pn.pn.pn = phi { ptr, i32 } [ %.pn32, %bb.aa ], [ %i.du, %bb.be ], [ %i.cj, %bb.ag ], [ %.pn65, %bb.bj ], [ %.pn57, %bb.bp ], [ %.pn48, %bb.bv ], [ %.pn40, %bb.cb ], [ %.pn80210, %bb.bc ], [ %i.db, %bb.an ], [ %i.cw, %bb.aj ]
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit103 unwind label %bb.ap

bb.af:                                            ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %.val93, i64 520 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !20
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !20
  %i.ci = icmp eq i64 %i.cf, %i.ch
  br i1 %i.ci, label %bb.ad, label %bb.bm

bb.ag:                                            ; preds = %bb.bd
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11604)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.j, ptr noundef nonnull align 8 dereferenceable(720) %.val93, i64 720, i1 false), !alias.scope !11605
  store i64 -1, ptr %.val93, align 8, !alias.scope !11606
  %i.ck = load i64, ptr %i.j, align 8, !range !88, !noundef !20 ; 2 uses
  switch i64 %i.ck, label %bb.bd [
    i64 -1, label %.thread
    i64 2, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cl = getelementptr inbounds nuw i8, ptr %.val93, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.i, ptr noundef nonnull align 8 dereferenceable(400) %i.cl, i64 400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !20, !align !19, !noundef !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1472
  %i.cp = load i32, ptr %i.co, align 8, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 915 ; 2 uses
  store i8 0, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %i.cr, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 914 ; 2 uses
  store i8 0, ptr %i.cs, align 2
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.ct, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 913 ; 2 uses
  store i8 0, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %i.cv, i64 104, i1 false)
  invoke void @_RNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtB4_17ForwardProxyShard3new(ptr noalias nofree noundef nonnull sret([720 x i8]) align 8 captures(none) dereferenceable(720) %i.a, i32 noundef %i.cp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(400) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.f)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cx = load i64, ptr %i.a, align 8, !range !28, !noundef !20
  %i.cy = icmp eq i64 %i.cx, 2
  br i1 %i.cy, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val95 = load ptr, ptr %i.br, align 8, !noundef !20 ; 4 uses
  %i.cz = load i64, ptr %.val95, align 8, !range !88, !alias.scope !11607, !noundef !20
  %i.da = icmp eq i64 %i.cz, -1
  br i1 %i.da, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val95)
          to label %bb.ao unwind label %bb.an, !noalias !11608

bb.an:                                            ; preds = %bb.am
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %.val95, ptr noundef nonnull align 8 dereferenceable(720) %i.a, i64 720, i1 false)
  br label %bb.ae

bb.ao:                                            ; preds = %bb.am, %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %.val95, ptr noundef nonnull align 8 dereferenceable(720) %i.a, i64 720, i1 false)
  br label %bb.ay

bb.ap:                                            ; preds = %bb.co, %bb.ae, %bb.cq, %bb.cp, %bb.ar, %bb.bb, %bb.h
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.aq:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.dd, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.d, ptr noundef nonnull align 8 dereferenceable(400) %i.de, i64 400, i1 false)
  %i.df = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dg = icmp ult i64 %i.df, 6
  call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp samesign ugt i64 %i.df, 1
  br i1 %i.dh, label %bb.as, label %bb.au

bb.ar:                                            ; preds = %bb.as
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard10LocalShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %i.d) #24
          to label %bb.bb unwind label %bb.ap

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3k_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.5195.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @398, ptr %i.b, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 47, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @398, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 47, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @397, ptr %i.dm, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @396, ptr noundef nonnull %i.c, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  %.val94 = load ptr, ptr %i.br, align 8, !noundef !20 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11609)
  %i.dn = load i64, ptr %.val94, align 8, !range !88, !alias.scope !11610, !noundef !20
  %i.do = icmp eq i64 %i.dn, -1
  br i1 %i.do, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val94)
          to label %bb.ax unwind label %bb.aw, !noalias !11609

bb.aw:                                            ; preds = %bb.av
  %i.dp = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %.val94, align 8, !alias.scope !11611
  %.sroa.6198.0..val94.sroa_idx = getelementptr inbounds nuw i8, ptr %.val94, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.6198.0..val94.sroa_idx, ptr noundef nonnull align 8 dereferenceable(400) %i.de, i64 400, i1 false)
  br label %bb.bb

bb.ax:                                            ; preds = %bb.av, %bb.au
  store i64 2, ptr %.val94, align 8, !alias.scope !11611
  %.sroa.6198.0..val94.sroa_idx199 = getelementptr inbounds nuw i8, ptr %.val94, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.6198.0..val94.sroa_idx199, ptr noundef nonnull align 8 dereferenceable(400) %i.de, i64 400, i1 false)
  %.sroa.017.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.418.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ao, %bb.ax
  %.sroa.04.1 = phi i64 [ %.sroa.017.0.copyload, %bb.ax ], [ -1, %bb.ao ]
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit114 unwind label %bb.az

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit103: ; preds = %bb.h, %bb.n, %bb.o, %bb.ae, %bb.az
  %.pn85 = phi { ptr, i32 } [ %i.dt, %bb.az ], [ %.pn80.pn.pn.pn, %bb.ae ], [ %i.bf, %bb.n ], [ %i.ax, %bb.h ], [ %i.bf, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 913
  %i.dr = load i8, ptr %i.dq, align 1, !range !47, !noundef !20
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.cn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsl8OoimOLbh_6qdrant.exit166

bb.az:                                            ; preds = %bb.q, %bb.ay, %bb.ad
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit103

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit114: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i8 0, ptr %i.cu, align 1
  store i8 0, ptr %i.cs, align 2
  store i8 0, ptr %i.cq, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.cm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit114
  %.sroa.04.2 = phi i64 [ %.sroa.04.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit114 ], [ %.sroa.04.0, %bb.cm ]
  store i64 %.sroa.04.2, ptr %0, align 8
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, i64 40, i1 false)
  br label %common.ret

bb.bb:                                            ; preds = %bb.aw, %bb.ar
  %.pn80210 = phi { ptr, i32 } [ %i.di, %bb.ar ], [ %i.dp, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #24
          to label %bb.bc unwind label %bb.ap

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ae

.thread:                                          ; preds = %bb.ah, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @399) #26
          to label %bb.bf unwind label %bb.be

bb.bd:                                            ; preds = %bb.ah
  %3 = icmp ne i64 %i.ck, 4
  tail call void @llvm.assume(i1 %3)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(720) %i.j)
          to label %.thread unwind label %bb.ag

bb.be:                                            ; preds = %.thread
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.bf:                                            ; preds = %.thread
  unreachable

bb.bg:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !20, !align !19, !noundef !20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.dx, ptr %i.t, align 8
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5181.0..sroa_idx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.dy, ptr %i.dz, align 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5183.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @400, ptr noundef nonnull %i.t)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.u, i64 24, i1 false), !alias.scope !11612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.bl unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bk, %bb.bh
  %.pn65 = phi { ptr, i32 } [ %i.eb, %bb.bk ], [ %i.ea, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ae

bb.bk:                                            ; preds = %bb.bi
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.sroa.04.0.copyload7 = load i64, ptr %i.w, align 8
  %.sroa.9.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx13, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ad

bb.bm:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !20, !align !19, !noundef !20
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ee, ptr %i.ab, align 8
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5171.0..sroa_idx, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.cg, ptr %i.ef, align 8
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5173.0..sroa_idx, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ce, ptr %i.eg, align 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5175.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noundef nonnull @401, ptr noundef nonnull %i.ab)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !alias.scope !11613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.br unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bq, %bb.bn
  %.pn57 = phi { ptr, i32 } [ %i.ei, %bb.bq ], [ %i.eh, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ae

bb.bq:                                            ; preds = %bb.bo
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.br:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.sroa.04.0.copyload8 = load i64, ptr %i.ae, align 8
  %.sroa.9.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx14, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ad

bb.bs:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !20, !align !19, !noundef !20
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.el, ptr %i.x, align 8
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5177.0..sroa_idx, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.em, ptr %i.en, align 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5179.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @402, ptr noundef nonnull %i.x)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.y, i64 24, i1 false), !alias.scope !11614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %bb.bx unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bw, %bb.bt
  %.pn48 = phi { ptr, i32 } [ %i.ep, %bb.bw ], [ %i.eo, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ae

bb.bw:                                            ; preds = %bb.bu
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bx:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.sroa.04.0.copyload9 = load i64, ptr %i.aa, align 8
  %.sroa.9.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx15, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ad

bb.by:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !20, !align !19, !noundef !20
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.es, ptr %i.p, align 8
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5185.0..sroa_idx, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.et, ptr %i.eu, align 8
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5187.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @403, ptr noundef nonnull %i.p)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.q, i64 24, i1 false), !alias.scope !11615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet30queue_proxy_into_forward_proxy0Csl8OoimOLbh_6qdrant:bb.a
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ad) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit51 unwind label %bb.m

bb.p:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %i.o, align 8, !noundef !20
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aj = load i8, ptr %i.ai, align 8, !range !46, !noundef !20
  %cond.i = icmp eq i8 %i.aj, 3
  br i1 %cond.i, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.al = load i8, ptr %i.ak, align 8, !range !46, !noundef !20
  %cond.i.i = icmp eq i8 %i.al, 3
  br i1 %cond.i.i, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.am)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i.i.i = load ptr, ptr %i.ao, align 8, !align !19, !noundef !20 ; 2 uses
  %i.ap = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit51, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = getelementptr i8, ptr %1, i64 80
  %.val3.i.i.i = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !20, !noundef !20
  invoke void %i.as(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit51 unwind label %bb.y, !inline_history !2

bb.w:                                             ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !align !19, !noundef !20 ; 2 uses
  %i.au = icmp eq ptr %.val.i.i.i, null
  br i1 %i.au, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = getelementptr i8, ptr %1, i64 80
  %.val1.i.i.i = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !20, !noundef !20
  invoke void %i.ax(ptr noundef %.val1.i.i.i)
          to label %bb.z unwind label %bb.bj, !inline_history !59

bb.y:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.r, %bb.s, %bb.w
  %i.az = getelementptr i8, ptr %1, i64 24
  %.val45 = load ptr, ptr %i.az, align 8, !noundef !20 ; 2 uses
  %i.ba = load i64, ptr %.val45, align 8, !range !88, !noundef !20 ; 3 uses
  %.not11 = icmp eq i64 %i.ba, -1
  br i1 %.not11, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bb = icmp ne i64 %i.ba, 4
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp eq i64 %i.ba, 5
  br i1 %i.bc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %.val45, i64 8
  store ptr %i.bd, ptr %i.ad, align 8
  %.sroa.992.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8864
  store i8 0, ptr %.sroa.992.0..sroa_idx, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.bp
  %.sroa.0110.1 = phi i64 [ %i.bl, %bb.bp ], [ -1, %bb.aa ], [ -1, %bb.z ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.bj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.az, %bb.ar, %bb.af, %bb.ae, %bb.al, %bb.ao, %bb.bn
  %.pn31.pn = phi { ptr, i32 } [ %i.bt, %bb.al ], [ %i.bh, %bb.ae ], [ %i.dd, %bb.bn ], [ %i.by, %bb.ao ], [ %i.bh, %bb.af ], [ %.pn27.pn, %bb.az ], [ %i.cd, %bb.ar ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit51 unwind label %bb.m

bb.ad:                                            ; preds = %bb.a, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtB4_15QueueProxyShard27transfer_all_missed_updates0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n, ptr noundef nonnull align 8 %i.bg, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8864
  %i.bj = load i8, ptr %i.bi, align 8, !range !46, !noundef !20
  %cond.i52 = icmp eq i8 %i.bj, 3
  br i1 %cond.i52, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit

bb.af:                                            ; preds = %bb.ae
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBI_5Inner27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit unwind label %bb.m

bb.ag:                                            ; preds = %bb.ad
  %i.bl = load i64, ptr %i.n, align 8, !range !66, !noundef !20 ; 3 uses
  %i.bm = icmp eq i64 %i.bl, -2
  br i1 %i.bm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ai:                                            ; preds = %bb.ag
  %.sroa.395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.395, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.395.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8864
  %i.bo = load i8, ptr %i.bn, align 8, !range !46, !noundef !20
  %cond.i54 = icmp eq i8 %i.bo, 3
  br i1 %cond.i54, label %bb.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit56

bb.aj:                                            ; preds = %bb.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBI_5Inner27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit56 unwind label %bb.bn

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit56: ; preds = %bb.ai, %bb.aj
  %.not.i57 = icmp eq i64 %i.bl, -1
  br i1 %.not.i57, label %bb.ak, label %bb.bp

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit56
  %i.bq = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 6
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = icmp samesign ugt i64 %i.bq, 4
  br i1 %i.bs, label %bb.am, label %bb.ap

bb.al:                                            ; preds = %bb.am
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @398, ptr %i.m, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 47, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @398, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 47, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @422, ptr %i.bx, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @421, ptr noundef nonnull inttoptr (i64 151 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %bb.an unwind label %bb.al

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.bm
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit

bb.ap:                                            ; preds = %bb.ak, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %.val48 = load ptr, ptr %i.ca, align 8, !noundef !20 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12259)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.l, ptr noundef nonnull align 8 dereferenceable(720) %.val48, i64 720, i1 false), !alias.scope !12260
  store i64 -1, ptr %.val48, align 8, !alias.scope !12261
  %i.cb = load i64, ptr %i.l, align 8, !range !88, !noundef !20 ; 2 uses
  switch i64 %i.cb, label %bb.bm [
    i64 -1, label %.thread
    i64 5, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.cc = getelementptr inbounds nuw i8, ptr %.val48, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %i.h, ptr noundef nonnull align 8 dereferenceable(608) %i.cc, i64 608, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtB2_15QueueProxyShard27forget_updates_and_finalize(ptr noalias nofree noundef nonnull sret([536 x i8]) align 8 captures(none) dereferenceable(536) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(608) %i.h)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.k, ptr noundef nonnull align 8 dereferenceable(400) %i.i, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.j, ptr noundef nonnull align 8 dereferenceable(136) %i.ce, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !20, !align !19, !noundef !20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1472
  %i.ci = load i32, ptr %i.ch, align 8, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -3, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 -2, ptr %i.f, align 8
  invoke void @_RNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtB4_17ForwardProxyShard3new(ptr noalias nofree noundef nonnull sret([720 x i8]) align 8 captures(none) dereferenceable(720) %i.a, i32 noundef %i.ci, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(400) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.f)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ck = load i64, ptr %i.a, align 8, !range !28, !noundef !20
  %i.cl = icmp eq i64 %i.ck, 2
  br i1 %i.cl, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val47 = load ptr, ptr %i.ca, align 8, !noundef !20 ; 4 uses
  %i.cm = load i64, ptr %.val47, align 8, !range !88, !alias.scope !12262, !noundef !20
  %i.cn = icmp eq i64 %i.cm, -1
  br i1 %i.cn, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val47)
          to label %bb.ay unwind label %bb.ax, !noalias !12263

bb.ax:                                            ; preds = %bb.aw
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %.val47, ptr noundef nonnull align 8 dereferenceable(720) %i.a, i64 720, i1 false)
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %.val47, ptr noundef nonnull align 8 dereferenceable(720) %i.a, i64 720, i1 false)
  br label %bb.bi

bb.az:                                            ; preds = %bb.bl, %bb.ax, %bb.at
  %.pn27.pn = phi { ptr, i32 } [ %.pn27128, %bb.bl ], [ %i.co, %bb.ax ], [ %i.cj, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit

bb.ba:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.cp, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.d, ptr noundef nonnull align 8 dereferenceable(400) %i.cq, i64 400, i1 false)
  %i.cr = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 6
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp samesign ugt i64 %i.cr, 1
  br i1 %i.ct, label %bb.bc, label %bb.be

bb.bb:                                            ; preds = %bb.bc
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard10LocalShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %i.d) #24
          to label %bb.bk unwind label %bb.m

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3k_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.5103.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @398, ptr %i.b, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 47, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @398, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 47, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @424, ptr %i.cy, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @423, ptr noundef nonnull %i.c, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.val46 = load ptr, ptr %i.ca, align 8, !noundef !20 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12264)
  %i.cz = load i64, ptr %.val46, align 8, !range !88, !alias.scope !12265, !noundef !20
  %i.da = icmp eq i64 %i.cz, -1
  br i1 %i.da, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val46)
          to label %bb.bh unwind label %bb.bg, !noalias !12264

bb.bg:                                            ; preds = %bb.bf
  %i.db = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %.val46, align 8, !alias.scope !12266
  %.sroa.6106.0..val46.sroa_idx = getelementptr inbounds nuw i8, ptr %.val46, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.6106.0..val46.sroa_idx, ptr noundef nonnull align 8 dereferenceable(400) %i.cq, i64 400, i1 false)
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf, %bb.be
  store i64 2, ptr %.val46, align 8, !alias.scope !12266
  %.sroa.6106.0..val46.sroa_idx107 = getelementptr inbounds nuw i8, ptr %.val46, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.6106.0..val46.sroa_idx107, ptr noundef nonnull align 8 dereferenceable(400) %i.cq, i64 400, i1 false)
  %.sroa.0114.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6112, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ay, %bb.bh
  %.sroa.0110.2 = phi i64 [ %.sroa.0114.0.copyload, %bb.bh ], [ -1, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.bj

bb.bj:                                            ; preds = %bb.i, %bb.x, %bb.bi, %bb.ac
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit51

bb.bk:                                            ; preds = %bb.bg, %bb.bb
  %.pn27128 = phi { ptr, i32 } [ %i.cu, %bb.bb ], [ %i.db, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #24
          to label %bb.bl unwind label %bb.m

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.az

.thread:                                          ; preds = %bb.ap, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #26
          to label %bb.bo unwind label %bb.bn

bb.bm:                                            ; preds = %bb.ap
  %3 = icmp ne i64 %i.cb, 4
  call void @llvm.assume(i1 %3)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(720) %i.l)
          to label %.thread unwind label %bb.ao

bb.bn:                                            ; preds = %bb.aj, %.thread
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit

bb.bo:                                            ; preds = %.thread
  unreachable

bb.bp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsl8OoimOLbh_6qdrant.exit56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6112, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.395, i64 40, i1 false)
  br label %bb.ac
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB6_15ShardReplicaSet18plunge_local_async0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.9.i.sroa.7 = alloca [24 x i8], align 8   ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.939 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.536.sroa.2 = alloca [24 x i8], align 8   ; 2 uses
  %.sroa.12.sroa.6 = alloca [24 x i8], align 8    ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !range !44, !noundef !20
  switch i8 %i.g, label %default.unreachable52 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.s
  ]

default.unreachable52:                            ; preds = %bb.s, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !nonnull !20, !align !19, !noundef !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.i, ptr %i.j, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit16: ; preds = %bb.bf, %bb.m, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard12plunge_async0ECsl8OoimOLbh_6qdrant.exit, %bb.f
  %.pn12 = phi { ptr, i32 } [ %eh.lpad-body1854, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard12plunge_async0ECsl8OoimOLbh_6qdrant.exit ], [ %i.m, %bb.f ], [ %i.x, %bb.l ], [ %i.cl, %bb.bf ], [ %i.x, %bb.m ]
  store i8 2, ptr %i.f, align 8
  resume { ptr, i32 } %.pn12

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @427) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @427) #25
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.l = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.k) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit16 unwind label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit, %bb.bc, %bb.h
  %.sink = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit ], [ 4, %bb.bc ], [ 3, %bb.h ]
  store i8 %.sink, ptr %i.f, align 8
  ret void

bb.h:                                             ; preds = %bb.g
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.i:                                             ; preds = %bb.g
  %i.p = extractvalue { ptr, ptr } %i.l, 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %1, i64 16         ; 2 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.t = load i8, ptr %i.s, align 8, !range !46, !noundef !20
  %cond.i = icmp eq i8 %i.t, 3
  br i1 %cond.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = load i8, ptr %i.u, align 8, !range !46, !noundef !20
  %cond.i.i = icmp eq i8 %i.v, 3
  br i1 %cond.i.i, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.w)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val2.i.i.i = load ptr, ptr %i.y, align 8, !align !19, !noundef !20 ; 2 uses
  %i.z = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit16, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr i8, ptr %1, i64 64
  %.val3.i.i.i = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !20, !noundef !20
  invoke void %i.ac(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit16 unwind label %bb.p, !inline_history !2

bb.n:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i = load ptr, ptr %i.ad, align 8, !align !19, !noundef !20 ; 2 uses
  %i.ae = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ae, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr i8, ptr %1, i64 64
  %.val1.i.i.i = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !20, !noundef !20
  invoke void %i.ah(ptr noundef %.val1.i.i.i)
          to label %bb.q unwind label %bb.bf, !inline_history !60

bb.p:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.i, %bb.j, %bb.n
  %.val = load ptr, ptr %i.r, align 8, !noundef !20 ; 2 uses
  %i.aj = load i64, ptr %.val, align 8, !range !88, !noundef !20
  %.not = icmp eq i64 %i.aj, -1
  br i1 %.not, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiveruENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE3mapINtNtB5_6option6OptionBI_ENcNtB2G_4Some0ECsl8OoimOLbh_6qdrant.exit, label %.thread

_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultINtNtNtCsjZG7hsAZr3B_5tokio4sync7oneshot8ReceiveruENtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE3mapINtNtB5_6option6OptionBI_ENcNtB2G_4Some0ECsl8OoimOLbh_6qdrant.exit: ; preds = %.thread55, %bb.bd, %bb.be, %bb.q
  %.sroa.738.0 = phi ptr [ undef, %bb.q ], [ %.sroa.9.i.sroa.0.0, %bb.be ], [ %.sroa.7.1.i, %bb.bd ], [ %.sroa.7.1.i.ph, %.thread55 ]
  %.sroa.4.0 = phi i64 [ 0, %bb.q ], [ %i.ck, %bb.be ], [ 1, %bb.bd ], [ 1, %.thread55 ]
  %.sroa.037.0 = phi i64 [ -1, %bb.q ], [ %.sroa.02.1.i, %bb.be ], [ -1, %bb.bd ], [ -1, %.thread55 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.bf

.thread:                                          ; preds = %bb.q
  store ptr %.val, ptr %i.k, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.sroa.7)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard12plunge_async0ECsl8OoimOLbh_6qdrant.exit: ; preds = %.body17.thread, %.body17, %common.ret.sink.split.i
  %eh.lpad-body1854 = phi { ptr, i32 } [ %.pn38.pn.i, %.body17.thread ], [ %i.cf, %.body17 ], [ %i.cf, %common.ret.sink.split.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit16 unwind label %bb.r

bb.r:                                             ; preds = %common.ret.sink.split.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard12plunge_async0ECsl8OoimOLbh_6qdrant.exit, %bb.f
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.s:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !54, !noalias !12273
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.sroa.7)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  switch i8 %.pre, label %default.unreachable52 [
    i8 0, label %bb.u
    i8 1, label %bb.ae
    i8 2, label %bb.af
    i8 3, label %bb.ag
    i8 4, label %bb.am
    i8 5, label %bb.ar
    i8 6, label %bb.aw
  ]

bb.t:                                             ; preds = %bb.u
  unreachable

end_hunk_1
