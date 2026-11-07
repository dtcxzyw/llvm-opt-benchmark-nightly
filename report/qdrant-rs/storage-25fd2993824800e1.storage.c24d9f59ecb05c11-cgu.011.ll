Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.011?download=true
inline.NumInlined: 3897
inline.NumDeleted: 1573
begin_hunk_0_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB4_10LocalShard4load0CsgGgPqgSfnMH_7storage:bb.a
  %i.bzn = icmp eq i64 %i.bzm, 1
  br i1 %i.bzn, label %bb.afj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit368

bb.afj:                                           ; preds = %bb.afi
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEE9drop_slowB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bzk) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit368 unwind label %bb.bl

bb.afk:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit368
  %i.bzo = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6938)
  call void @llvm.experimental.noalias.scope.decl(metadata !6939)
  %i.bzp = load ptr, ptr %i.bzo, align 8, !alias.scope !6940, !nonnull !16, !noundef !16
  %i.bzq = atomicrmw add ptr %i.bzp, i64 -1 release, align 8, !noalias !6940
  %i.bzr = icmp eq i64 %i.bzq, 1
  br i1 %i.bzr, label %bb.afl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit370

bb.afl:                                           ; preds = %bb.afk
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bzo) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit370 unwind label %bb.bl

bb.afm:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit370
  %i.bzs = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6941)
  call void @llvm.experimental.noalias.scope.decl(metadata !6942)
  %i.bzt = load ptr, ptr %i.bzs, align 8, !alias.scope !6943, !nonnull !16, !noundef !16
  %i.bzu = atomicrmw add ptr %i.bzt, i64 -1 release, align 8, !noalias !6943
  %i.bzv = icmp eq i64 %i.bzu, 1
  br i1 %i.bzv, label %bb.afn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit372

bb.afn:                                           ; preds = %bb.afm
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEE9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bzs) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit372 unwind label %bb.bl

bb.afo:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit372
  %i.bzw = getelementptr inbounds nuw i8, ptr %1, i64 224
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bzw) #23
          to label %.body355 unwind label %bb.bl
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4_15ShardReplicaSet27calculate_local_shard_stats0CsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [144 x i8], align 8               ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 12 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !range !22, !noundef !16
  switch i8 %i.k, label %default.unreachable68 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.b
    i8 4, label %bb.c
  ]

default.unreachable68:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br label %bb.ah

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.l, align 8
  %i.m = load ptr, ptr %1, align 8, !nonnull !16, !align !15, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.o, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.ae, %bb.o, %bb.n, %.body30, %bb.h
  %.pn16 = phi { ptr, i32 } [ %eh.lpad-body31, %.body30 ], [ %i.r, %bb.h ], [ %i.ab, %bb.n ], [ %i.bg, %bb.ae ], [ %i.ab, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %bb.ag

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #24
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #24
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.q = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.p, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.p) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.af

bb.i:                                             ; preds = %bb.g
  %i.s = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.aq, %bb.ak, %bb.j
  %.sink = phi i8 [ 1, %bb.aq ], [ 4, %bb.ak ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.j, align 1
  ret void

bb.j:                                             ; preds = %bb.i
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %i.u = extractvalue { ptr, ptr } %i.q, 1
  store ptr %i.s, ptr %i.h, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.x = load i8, ptr %i.w, align 8, !range !20, !noundef !16
  %cond.i = icmp eq i8 %i.x, 3
  br i1 %cond.i, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.z = load i8, ptr %i.y, align 8, !range !20, !noundef !16
  %cond.i.i = icmp eq i8 %i.z, 3
  br i1 %cond.i.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.aa)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2.i.i.i = load ptr, ptr %i.ac, align 8, !align !15, !noundef !16 ; 2 uses
  %i.ad = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr i8, ptr %1, i64 48
  %.val3.i.i.i = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !16, !noundef !16
  invoke void %i.ag(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.r, !inline_history !0

bb.p:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !align !15, !noundef !16 ; 2 uses
  %i.ai = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ai, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr i8, ptr %1, i64 48
  %.val1.i.i.i = load ptr, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !16, !noundef !16
  invoke void %i.al(ptr noundef %.val1.i.i.i)
          to label %bb.t unwind label %bb.ae, !inline_history !45

bb.r:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.s:                                             ; preds = %bb.y, %.noexc27, %bb.x, %bb.u
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body30

.body30:                                          ; preds = %bb.v, %bb.s
  %eh.lpad-body31 = phi { ptr, i32 } [ %i.an, %bb.s ], [ %i.as, %bb.v ]
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.af

bb.t:                                             ; preds = %bb.p, %bb.l, %bb.k, %bb.q
  %.val = load ptr, ptr %i.v, align 8, !noundef !16 ; 2 uses
  %i.ao = load i64, ptr %.val, align 8, !range !52, !noundef !16 ; 3 uses
  %.not.i = icmp eq i64 %i.ao, -1
  br i1 %.not.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsgGgPqgSfnMH_7storage.exit.thread, label %3

3:                                                ; preds = %bb.t
  %4 = icmp ne i64 %i.ao, 4
  tail call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.ao, 2
  br i1 %5, label %bb.u, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsgGgPqgSfnMH_7storage.exit.thread

bb.u:                                             ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6951
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder6lockedNtB2_19LockedSegmentHolder4read(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap)
          to label %.noexc26 unwind label %bb.s   ; 5 uses

.noexc26:                                         ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  invoke void @_RNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtB5_13SegmentHolder4iter(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noundef nonnull align 8 %i.ar)
          to label %bb.w unwind label %bb.v, !noalias !6951

bb.v:                                             ; preds = %bb.w, %.noexc26
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsgGgPqgSfnMH_7storage(ptr nonnull %i.aq) #23
          to label %.body30 unwind label %bb.z, !noalias !6951

bb.w:                                             ; preds = %.noexc26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !6951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6951
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2s_INtNtB2w_5chain5ChainINtNtNtNtB8_11collections5btree3map4IterjB13_EB3F_ENCNvMs3_NtB17_14segment_holderNtB4C_13SegmentHolder4iter0ENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB5z_15ShardReplicaSet27calculate_local_shard_stats000EE9from_iterCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(144) %i.c)
          to label %bb.x unwind label %bb.v, !noalias !6951

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6951
  %.sroa.0.0.copyload40 = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx41, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6951
  %i.at = ptrtoint ptr %i.aq to i64               ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.at)
          to label %.noexc27 unwind label %bb.s

.noexc27:                                         ; preds = %bb.x
  %i.au = or disjoint i64 %i.at, 1
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.au)
          to label %.noexc28 unwind label %bb.s

.noexc28:                                         ; preds = %.noexc27
  %i.av = atomicrmw add ptr %i.aq, i64 -16 release, align 8, !noalias !6951
  %i.aw = and i64 %i.av, -14
  %i.ax = icmp eq i64 %i.aw, 18
  br i1 %i.ax, label %bb.y, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsgGgPqgSfnMH_7storage.exit, !prof !35

bb.y:                                             ; preds = %.noexc28
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.aq)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsgGgPqgSfnMH_7storage.exit unwind label %bb.s

bb.z:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !6951
  unreachable

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsgGgPqgSfnMH_7storage.exit: ; preds = %.noexc28, %bb.y
  %.not = icmp eq i64 %.sroa.0.0.copyload40, -1
  br i1 %.not, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsgGgPqgSfnMH_7storage.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsgGgPqgSfnMH_7storage.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 1, ptr %i.az, align 8
  store i64 %.sroa.0.0.copyload40, ptr %i.i, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i64 16, i1 false)
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit33 unwind label %bb.ab

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsgGgPqgSfnMH_7storage.exit.thread: ; preds = %bb.t, %3, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsgGgPqgSfnMH_7storage.exit
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit35 unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %.body37

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit33: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.az, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bb = invoke noundef nonnull ptr @_RINvNtNtCsjZG7hsAZr3B_5tokio4task8blocking14spawn_blockingNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB11_15ShardReplicaSet27calculate_local_shard_stats0s_0TjjjEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit33
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.body37

bb.ad:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.bb, ptr %i.p, align 8
  br label %bb.ah

.body37:                                          ; preds = %bb.am, %bb.ai, %bb.ar, %bb.ac, %bb.ab
  %.pn20.pn = phi { ptr, i32 } [ %i.ba, %bb.ab ], [ %i.bc, %bb.ac ], [ %i.bs, %bb.ar ], [ %i.bk, %bb.ai ], [ %i.bn, %bb.am ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8, !range !26, !noundef !16
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.au, label %bb.at

bb.ae:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsgGgPqgSfnMH_7storage.exit.thread, %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit35: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsgGgPqgSfnMH_7storage.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.bh, align 8
  store i64 -1, ptr %i.e, align 8
  br label %bb.aq

bb.af:                                            ; preds = %.body30, %bb.au, %bb.ai, %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ag:                                            ; preds = %bb.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.at ], [ %.pn16, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit ]
  store i8 2, ptr %i.j, align 1
  resume { ptr, i32 } %.pn20.pn.pn

bb.ah:                                            ; preds = %bb.c, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  invoke void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleTjjjEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(8) %i.bj) #23
          to label %.body37 unwind label %bb.af

bb.aj:                                            ; preds = %bb.ah
  %i.bl = load i64, ptr %i.f, align 8, !range !27, !noundef !16 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 2
  br i1 %i.bm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %common.ret

bb.al:                                            ; preds = %bb.aj
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.658.0.copyload = load i64, ptr %.sroa.658.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB2_17AbortOnDropHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %.body37 unwind label %bb.ao

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.an
  %i.bp = trunc nuw i64 %i.bl to i1
  br i1 %i.bp, label %bb.ap, label %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTjjjENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorENtNtNtB7_3ops9try_trait3Try6branchCsgGgPqgSfnMH_7storage.exit

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsgGgPqgSfnMH_7storage.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6952
  store i64 %.sroa.2.0.copyload, ptr %i.a, align 8, !noalias !6953
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.561.0..sroa_idx, align 8, !noalias !6953
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.658.0.copyload, ptr %.sroa.662.0..sroa_idx, align 8, !noalias !6953
  invoke void @_RNvXsg_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_15CollectionErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.as unwind label %bb.ar

_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTjjjENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorENtNtNtB7_3ops9try_trait3Try6branchCsgGgPqgSfnMH_7storage.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsgGgPqgSfnMH_7storage.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.bq, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.2.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.4.0.copyload, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.658.0.copyload, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %i.e, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit35, %bb.as, %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTjjjENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorENtNtNtB7_3ops9try_trait3Try6branchCsgGgPqgSfnMH_7storage.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  br label %common.ret

bb.ar:                                            ; preds = %bb.an, %bb.ap
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body37

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6952
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.bt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aq

bb.at:                                            ; preds = %bb.au, %.body37
  store i8 0, ptr %i.bd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ag

bb.au:                                            ; preds = %.body37
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #23
          to label %bb.at unwind label %bb.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4_11ShardHolder11load_shards0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.6.i44.i.i = alloca [40 x i8], align 8    ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i136 = alloca [40 x i8], align 8   ; 9 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.4.i.i = alloca [40 x i8], align 8        ; 6 uses
  %.sroa.10102.i.i = alloca [40 x i8], align 8    ; 7 uses
  %.sroa.1086.i.i = alloca [40 x i8], align 8     ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.11100.i = alloca [40 x i8], align 8      ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [64 x i8], align 8                ; 12 uses
  %i.o = alloca [1 x i8], align 1                 ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [1496 x i8], align 8              ; 6 uses
  %i.r = alloca [608 x i8], align 8               ; 7 uses
  %i.s = alloca [720 x i8], align 8               ; 7 uses
  %i.t = alloca [416 x i8], align 8               ; 7 uses
  %i.u = alloca [400 x i8], align 8               ; 7 uses
  %.sroa.750.i.i.i = alloca [712 x i8], align 8   ; 7 uses
  %i.v = alloca [184 x i8], align 8               ; 7 uses
  %i.w = alloca [160 x i8], align 8               ; 4 uses
end_hunk_0
