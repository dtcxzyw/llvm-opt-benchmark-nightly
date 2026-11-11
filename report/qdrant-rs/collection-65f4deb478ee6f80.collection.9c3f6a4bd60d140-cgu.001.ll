Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.001?download=true
inline.NumInlined: 10308
inline.NumDeleted: 5297
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map10IntoValuesjRINtNtB6_4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEENCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB7b_10LocalShard13optimizationss_0EE9from_iterB7f_:bb.a
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.af, %bb.k ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map10IntoValuesjRINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEENCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB52_10LocalShard13optimizationss_0EEB56_.exit unwind label %bb.p

bb.o:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map10IntoValuesjRINtNtB8_4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEENCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB6E_10LocalShard13optimizationss_0EEB6I_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.p:                                             ; preds = %bb.q, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map10IntoValuesjRINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEENCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB52_10LocalShard13optimizationss_0EEB56_.exit: ; preds = %bb.q, %.body
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ak, %bb.q ]
  resume { ptr, i32 } %.pn10

bb.q:                                             ; preds = %bb.f, %bb.e, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTjRINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map10IntoValuesjRINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs607s0NAIaWN_7segment7segment7SegmentEEENCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB52_10LocalShard13optimizationss_0EEB56_.exit unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2E_6filter6FilterINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryNtNtNtB15_11replica_set17replica_set_state12ReplicaStateENCNvMB4G_NtB4G_15ShardReplicaSet18init_remote_shards0ENCB5z_s_0EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [136 x i8], align 8               ; 4 uses
  %i.f = alloca [136 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENCNvMB2e_NtB2e_15ShardReplicaSet18init_remote_shards0ENCB3B_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2i_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %i.f, ptr noalias nofree noundef align 8 dereferenceable(72) %1) #36
  %i.h = load i64, ptr %i.f, align 8, !range !37, !noundef !32
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.c:                                             ; preds = %.loopexit8, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.d:                                             ; preds = %bb.f, %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e) #29
          to label %bb.l unwind label %bb.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 136)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.e
  %i.l = load i64, ptr %i.c, align 8, !range !41, !noundef !32
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !42, !noundef !32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %.noexc
  %i.q = load i64, ptr %i.p, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #30
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.s = icmp ugt i64 %i.o, 3
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.r, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false)
  store i64 %i.o, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13626
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENCNvMB2e_NtB2e_15ShardReplicaSet18init_remote_shards0ENCB3B_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2i_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #36
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.g
  %i.t = load i64, ptr %i.b, align 8, !range !37, !noalias !13626, !noundef !32
  %.not2.i.i = icmp eq i64 %i.t, -1
  br i1 %.not2.i.i, label %.loopexit8, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc6, %.noexc7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false), !noalias !13626
  %i.u = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !13627, !noundef !32 ; 5 uses
  %i.v = icmp ult i64 %i.u, 67818912035696881
  call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.g, align 8, !range !38, !alias.scope !13627, !noundef !32
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardE7reserveBK_.exit.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardE7reserveBK_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i
  %i.y = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13627, !nonnull !32, !noundef !32
  %i.z = getelementptr inbounds nuw [136 x i8], ptr %i.y, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.z, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false)
  %i.aa = add nuw nsw i64 %i.u, 1
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !13627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13626
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENCNvMB2e_NtB2e_15ShardReplicaSet18init_remote_shards0ENCB3B_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2i_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #36
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardE7reserveBK_.exit.i.i
  %i.ab = load i64, ptr %i.b, align 8, !range !37, !noalias !13626, !noundef !32
  %.not.i.i = icmp eq i64 %i.ab, -1
  br i1 %.not.i.i, label %.loopexit8, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #29
          to label %.body unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.u, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 136)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardE7reserveBK_.exit.i.i unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardE7reserveBK_.exit.i.i, %bb.g
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %lpad.loopexit.split-lp10, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #29
          to label %bb.l unwind label %bb.k

.loopexit8:                                       ; preds = %.noexc7, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.c

bb.k:                                             ; preds = %.body, %bb.d
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.l:                                             ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.k, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeEINtB2_18SpecFromIterNestedB11_NtB13_18FieldIndexTypeIterE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add i64 %1, 1                            ; 4 uses
  %i.d = add i64 %i.c, %2
  %i.e = icmp ugt i64 %i.d, 12
  %i.f = icmp ugt i64 %1, 11
  %switch.idx.cast.i.i = trunc nuw nsw i64 %1 to i8
  %i.g = or i1 %i.f, %i.e
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.c, %2                         ; 2 uses
  %i.i = icmp ugt i64 %i.h, 11
  %i.j = sub i64 13, %i.h
  %i.k = tail call range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.j, i64 8)
  %..i = select i1 %i.i, i64 8, i64 %i.k          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.l = load i64, ptr %i.a, align 8, !range !41, !noundef !32
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !42, !noundef !32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #30
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.b
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.s = icmp ule i64 %..i, %i.o
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %switch.idx.cast.i.i, ptr %i.r, align 1
  store i64 %i.o, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.t = add nuw nsw i64 %1, 2                    ; 2 uses
  %i.u = add i64 %i.t, %2
  %i.v = icmp ugt i64 %i.u, 12
  %i.w = icmp samesign ugt i64 %i.c, 11
  %i.x = or i1 %i.w, %i.v
  br i1 %i.x, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeEINtB2_10SpecExtendBR_NtBT_18FieldIndexTypeIterE11spec_extendBX_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit, %.noexc
  %i.y = phi i64 [ %i.aj, %.noexc ], [ 1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit ] ; 5 uses
  %.sink.i12.i.i = phi i64 [ %.sink.i.i.i, %.noexc ], [ %i.t, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit ] ; 4 uses
  %switch.idx.cast.i.i11.in.i.i = phi i64 [ %.sink.i12.i.i, %.noexc ], [ %i.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit ]
  %switch.idx.cast.i.i11.i.i = trunc nuw nsw i64 %switch.idx.cast.i.i11.in.i.i to i8
  %i.z = icmp sgt i64 %i.y, -1
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.b, align 8, !range !38, !alias.scope !13632, !noundef !32
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeE7reserveBK_.exit.i.i, label %.noexc

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeE7reserveBK_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ac = add i64 %.sink.i12.i.i, %2              ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 11
  %i.ae = sub i64 12, %i.ac
  %i.af = call i64 @llvm.uadd.sat.i64(i64 %i.ae, i64 1)
  %i.ag = select i1 %i.ad, i64 1, i64 %i.af
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.y, i64 noundef %i.ag, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeE7reserveBK_.exit.i.i, %.lr.ph.i.i
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13632, !nonnull !32, !noundef !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i8 %switch.idx.cast.i.i11.i.i, ptr %i.ai, align 1
  %i.aj = add nuw i64 %i.y, 1                     ; 2 uses
  store i64 %i.aj, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !13632
  %i.ak = add i64 %.sink.i12.i.i, 1               ; 2 uses
  %i.al = add i64 %i.ak, %2
  %i.am = icmp ugt i64 %i.al, 12                  ; 2 uses
  %i.an = icmp ugt i64 %.sink.i12.i.i, 11
  %.sink.i.i.i = select i1 %i.am, i64 12, i64 %i.ak
  %i.ao = or i1 %i.an, %i.am
  br i1 %i.ao, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeEINtB2_10SpecExtendBR_NtBT_18FieldIndexTypeIterE11spec_extendBX_.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aq, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeEINtB2_10SpecExtendBR_NtBT_18FieldIndexTypeIterE11spec_extendBX_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeE7reserveBK_.exit.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeEEB1e_.exit unwind label %bb.g

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeEINtB2_10SpecExtendBR_NtBT_18FieldIndexTypeIterE11spec_extendBX_.exit: ; preds = %.noexc, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14FieldIndexTypeEEB1e_.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.ar
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14UnindexedFieldEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathIBS_NtNtB4I_5types18PayloadFieldSchemaEENCNvMs0_B13_NtB13_14IssueExtractor11into_issues0EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [232 x i8], align 8               ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [232 x i8], align 8               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [232 x i8], align 8               ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 8 uses
  %i.l = alloca [232 x i8], align 8               ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13669
  store ptr %i.n, ptr %i.j, align 8, !noalias !13670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13670
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBX_5types18PayloadFieldSchemaEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.o = load i64, ptr %i.i, align 8, !range !37, !noalias !13670, !noundef !32
  %.not11.i.i.i = icmp eq i64 %i.o, -1
  br i1 %.not11.i.i.i, label %.loopexit24, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc, %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !13670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13671
  invoke void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs0_NtNtCsPYQCUnoTxQ_10collection8problems15unindexed_fieldNtBW_14IssueExtractor11into_issues0INtB7_5FnMutTTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB2G_5types18PayloadFieldSchemaEEEE8call_mutB10_(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(address) dereferenceable(232) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.g)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4:                                          ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13671
  %i.p = load i64, ptr %i.h, align 8, !range !37, !noalias !13671, !noundef !32 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13670
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBX_5types18PayloadFieldSchemaEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.b
  %i.q = load i64, ptr %i.i, align 8, !range !37, !noalias !13670, !noundef !32
  %.not.i.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.i.i.i, label %.loopexit24, label %.lr.ph.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %.lr.ph.i.i.i, %bb.a
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit24:                                      ; preds = %.noexc5, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13669
  store i64 0, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBX_5types18PayloadFieldSchemaEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.c

bb.c:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14UnindexedFieldEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathIBI_NtNtB4p_5types18PayloadFieldSchemaEENCNvMs0_BT_NtBT_14IssueExtractor11into_issues0EE11spec_extendBX_.exit, %.loopexit24
  ret void

bb.d:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection8problems15unindexed_field14UnindexedFieldEBH_(ptr noalias nofree noundef align 8 dereferenceable(232) %i.l) #29
          to label %.loopexit.split-lp unwind label %bb.o

bb.e:                                             ; preds = %.noexc4
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.6.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.6.0..sroa_idx.i.i.i, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13669
  store i64 %i.p, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 232)
          to label %.noexc6 unwind label %bb.d

.noexc6:                                          ; preds = %bb.e
  %i.u = load i64, ptr %i.f, align 8, !range !41, !noundef !32
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !42, !noundef !32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g, !prof !36

end_hunk_0
