Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.001?download=true
inline.NumInlined: 14631
inline.NumDeleted: 4678
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet16transfer_indexes0CsgGgPqgSfnMH_7storage:bb.a
  %.sroa.10.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx62, i64 40, i1 false), !noalias !17968
  store i8 1, ptr %i.gw, align 8, !noalias !17954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3112.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.585.i)
  %i.ih = icmp eq i64 %.sroa.060.0.copyload61, -2
  br i1 %i.ih, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.thread, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtBI_17ForwardProxyShard16transfer_indexes0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.gx)
          to label %bb.dx unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.dx:                                            ; preds = %bb.dv
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ij)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.ad
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet16un_proxify_local0CsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.a = alloca [536 x i8], align 8               ; 7 uses
  %i.b = alloca [400 x i8], align 8               ; 6 uses
  %i.c = alloca [608 x i8], align 8               ; 5 uses
  %i.d = alloca [720 x i8], align 8               ; 12 uses
  %i.e = alloca [720 x i8], align 8               ; 13 uses
  %i.f = alloca [400 x i8], align 8               ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 11 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [48 x i8], align 8                ; 11 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [48 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.z = load i8, ptr %i.y, align 8, !range !51, !noundef !27
  switch i8 %i.z, label %default.unreachable168 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.c
  ]

default.unreachable168:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.u
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br label %bb.aw

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %1, align 8, !nonnull !27, !align !31, !noundef !27 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 432
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ac, ptr %i.ad, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @632) #29
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @632) #29
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  invoke fastcc void @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ae) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit105 unwind label %bb.au

bb.i:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.x, align 8, !noundef !27
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.az, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit, %bb.j
  %.sink = phi i8 [ 4, %bb.az ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.y, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ak = load i8, ptr %i.aj, align 8, !range !47, !noundef !27
  %cond.i = icmp eq i8 %i.ak, 3
  br i1 %cond.i, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.am = load i8, ptr %i.al, align 8, !range !47, !noundef !27
  %cond.i.i = icmp eq i8 %i.am, 3
  br i1 %cond.i.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.an)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i.i.i = load ptr, ptr %i.ap, align 8, !align !31, !noundef !27 ; 2 uses
  %i.aq = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit105, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr i8, ptr %1, i64 80
  %.val3.i.i.i = load ptr, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !27, !noundef !27
  invoke void %i.at(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit105 unwind label %bb.r, !inline_history !1

bb.p:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i.i = load ptr, ptr %i.au, align 8, !align !31, !noundef !27 ; 2 uses
  %i.av = icmp eq ptr %.val.i.i.i, null
  br i1 %i.av, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr i8, ptr %1, i64 80
  %.val1.i.i.i = load ptr, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !27, !noundef !27
  invoke void %i.ay(ptr noundef %.val1.i.i.i)
          to label %bb.t unwind label %bb.s, !inline_history !84

bb.r:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit105

bb.t:                                             ; preds = %bb.q, %bb.k, %bb.l, %bb.p
  %i.bb = getelementptr i8, ptr %1, i64 24
  %.val85 = load ptr, ptr %i.bb, align 8, !noundef !27 ; 3 uses
  %i.bc = load i64, ptr %.val85, align 8, !range !85, !noundef !27 ; 4 uses
  %.not = icmp eq i64 %i.bc, -1
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = icmp ne i64 %i.bc, 4
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add nsw i64 %i.bc, -2
  %.inv = icmp samesign ult i64 %i.bc, 2
  %i.bf = select i1 %.inv, i64 2, i64 %i.be       ; 3 uses
  switch i64 %i.bf, label %bb.b [
    i64 0, label %bb.ae
    i64 1, label %switch.lookup
    i64 2, label %bb.af
    i64 3, label %bb.af
    i64 4, label %switch.lookup
  ]

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !27, !align !31, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bi = invoke noundef i64 @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2_15ShardReplicaSet12this_peer_id(ptr noundef nonnull align 8 %i.bh)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.z, %bb.x
  %.pn16.pn = phi { ptr, i32 } [ %i.bm, %bb.z ], [ %i.bj, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1472
  store i64 %i.bi, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.bk, ptr %i.n, align 8
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5135.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.bl, align 8
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5137.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @633, ptr noundef nonnull %i.n)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.w

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.p, i64 24, i1 false), !alias.scope !17997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.ad unwind label %bb.ac

bb.ab:                                            ; preds = %bb.ac, %bb.w
  %.pn21 = phi { ptr, i32 } [ %i.bn, %bb.ac ], [ %.pn16.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.at

bb.ac:                                            ; preds = %bb.aa
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.01.0.copyload = load i64, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.u, %bb.ar, %bb.ad
  %.sroa.01.0 = phi i64 [ %.sroa.01.0.copyload, %bb.ad ], [ %.sroa.01.0.copyload2, %bb.ar ], [ -1, %bb.u ]
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.as

switch.lookup:                                    ; preds = %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !27, !align !31, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %switch.tableidx = add nsw i64 %i.bf, -1        ; 2 uses
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet16un_proxify_local0CsgGgPqgSfnMH_7storage, i64 %switch.tableidx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep169 = getelementptr inbounds [8 x i8], ptr @switch.table._RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet16un_proxify_local0CsgGgPqgSfnMH_7storage.958, i64 %switch.tableidx
  %switch.load170 = load ptr, ptr %switch.gep169, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1472
  store ptr %switch.load170, ptr %i.t, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %switch.ext, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.bq, ptr %i.s, align 8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5131.0..sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.bs, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsgGgPqgSfnMH_7storage, ptr %.sroa.5133.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @636, ptr noundef nonnull %i.s)
          to label %bb.ao unwind label %bb.an

bb.af:                                            ; preds = %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %3 = icmp eq i64 %i.bf, 2
  br i1 %3, label %bb.ag, label %bb.ah, !prof !17998

bb.ag:                                            ; preds = %bb.af
  store i64 -1, ptr %i.m, align 8
  br label %bb.bl

bb.ah:                                            ; preds = %bb.af
  %i.bt = getelementptr inbounds nuw i8, ptr %.val85, i64 8
  %i.bu = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 6
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp samesign ugt i64 %i.bu, 1
  br i1 %i.bw, label %bb.aj, label %bb.al

bb.ai:                                            ; preds = %bb.aj
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsgGgPqgSfnMH_7storage.exit126

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @622, ptr %i.l, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 47, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @622, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 47, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr @635, ptr %i.cb, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsgGgPqgSfnMH_7storage(ptr noundef nonnull @634, ptr noundef nonnull inttoptr (i64 145 to ptr), i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l)
          to label %bb.ak unwind label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bt, ptr %i.ae, align 8
  %.sroa.8146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8864
  store i8 0, ptr %.sroa.8146.0..sroa_idx, align 8
  br label %bb.aw

bb.am:                                            ; preds = %bb.bn
  unreachable

bb.an:                                            ; preds = %switch.lookup
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ap

bb.ao:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.u, i64 24, i1 false), !alias.scope !17999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.ar unwind label %bb.aq

bb.ap:                                            ; preds = %bb.aq, %bb.an
  %.pn65 = phi { ptr, i32 } [ %i.cd, %bb.aq ], [ %i.cc, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.sroa.01.0.copyload2 = load i64, ptr %i.w, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ae

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit105: ; preds = %bb.h, %bb.n, %bb.o, %bb.s, %bb.at, %bb.as
  %.pn68 = phi { ptr, i32 } [ %i.ce, %bb.as ], [ %.pn56.pn, %bb.at ], [ %i.ao, %bb.n ], [ %i.af, %bb.h ], [ %i.ba, %bb.s ], [ %i.ao, %bb.o ]
  store i8 2, ptr %i.y, align 8
  resume { ptr, i32 } %.pn68

bb.as:                                            ; preds = %bb.cn, %bb.ae
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit105

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.cn, %bb.ae
  %.sroa.01.1 = phi i64 [ %.sroa.01.0, %bb.ae ], [ %.sroa.01.0.copyload4, %bb.cn ]
  store i64 %.sroa.01.1, ptr %0, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  br label %common.ret

bb.at:                                            ; preds = %bb.ab, %bb.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsgGgPqgSfnMH_7storage.exit126
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsgGgPqgSfnMH_7storage.exit126 ], [ %.pn65, %bb.ap ], [ %.pn21, %bb.ab ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit105 unwind label %bb.au

bb.au:                                            ; preds = %bb.cp, %bb.by, %bb.bj, %bb.av, %bb.at, %.body113, %bb.cu, %bb.cj, %bb.cf, %bb.bq, %bb.h
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.av:                                            ; preds = %bb.ax
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBI_5Inner27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ch)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsgGgPqgSfnMH_7storage.exit unwind label %bb.au

bb.aw:                                            ; preds = %bb.c, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtB4_15QueueProxyShard27transfer_all_missed_updates0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.j, ptr noundef nonnull align 8 %i.ci, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8864
  %i.cl = load i8, ptr %i.ck, align 8, !range !47, !noundef !27
  %cond.i106 = icmp eq i8 %i.cl, 3
  br i1 %cond.i106, label %bb.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsgGgPqgSfnMH_7storage.exit

bb.ay:                                            ; preds = %bb.aw
  %i.cm = load i64, ptr %i.j, align 8, !range !100, !noundef !27
  %i.cn = icmp eq i64 %i.cm, -2
  br i1 %i.cn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %common.ret

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8864
  %i.cp = load i8, ptr %i.co, align 8, !range !47, !noundef !27
  %cond.i108 = icmp eq i8 %i.cp, 3
  br i1 %cond.i108, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit110

bb.bb:                                            ; preds = %bb.ba
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBI_5Inner27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.cq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit110 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsgGgPqgSfnMH_7storage.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit110: ; preds = %bb.ba, %bb.bb
  %i.cs = load i64, ptr %i.k, align 8, !range !48, !noundef !27
  %.not31 = icmp eq i64 %i.cs, -1
  br i1 %.not31, label %bb.bi, label %bb.be

bb.bd:                                            ; preds = %bb.be, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bi

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %i.ct = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 6
  call void @llvm.assume(i1 %i.cu)
  %.not161 = icmp eq i64 %i.ct, 0
  br i1 %.not161, label %bb.bd, label %bb.bg

bb.bf:                                            ; preds = %bb.bg
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cw = load i64, ptr %i.k, align 8, !range !48, !alias.scope !18000, !noundef !27
  %i.cx = icmp eq i64 %i.cw, -1
  br i1 %i.cx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEECsgGgPqgSfnMH_7storage.exit, label %bb.bj

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorNtB6_7Display3fmtCsgGgPqgSfnMH_7storage, ptr %.sroa.5151.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @622, ptr %i.g, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 47, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @622, ptr %i.cz, align 8
end_hunk_0
