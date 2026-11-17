Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.201?download=true
inline.NumInlined: 440
inline.NumDeleted: 205
begin_hunk_0_@_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE5writeuNCNCNvMB10_NtB10_15ShardReplicaSet17set_replica_state00ECsl8OoimOLbh_6qdrant:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = invoke noundef i8 @_RNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_stateNtB2_15ReplicaSetState14set_peer_state(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %.val14, i8 noundef %.val15)
          to label %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet17set_replica_state00Csl8OoimOLbh_6qdrant.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet17set_replica_state00Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6
  %i.z = getelementptr i8, ptr %1, i64 16
  %.val9 = load i64, ptr %i.z, align 8, !noundef !6
  invoke fastcc void @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE12save_data_toRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr nonnull %.val, i64 %.val9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet17set_replica_state00Csl8OoimOLbh_6qdrant.exit, %bb.i
  %.sroa.02.2 = phi i1 [ false, %bb.i ], [ true, %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet17set_replica_state00Csl8OoimOLbh_6qdrant.exit ]
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet17set_replica_state00Csl8OoimOLbh_6qdrant.exit
  %i.ab = load i64, ptr %i.b, align 8, !range !13, !noundef !6
  %.not = icmp eq i64 %i.ab, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit unwind label %.thread

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = invoke noundef nonnull align 8 ptr @_RNvMsL_NtCsbO4BqjCww8C_8lock_api6rwlockINtB5_25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE7upgradeCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.j unwind label %bb.f       ; 5 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit16 unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit16: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ae)
  %i.af = or disjoint i64 %i.ae, 1
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.af)
  %i.ag = cmpxchg ptr %i.ac, i64 8, i64 0 release monotonic, align 8
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit, label %bb.k, !prof !12

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit16
  call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ac, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit16
  call fastcc void @_RNvMNtCslmvYCXbQjWR_6common12save_on_diskINtB2_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE13notify_changeCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %1)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.o, %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit
  ret void

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant(ptr nonnull %i.ac) #16
          to label %bb.r unwind label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.q, %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.l)
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.m)
  %i.ak = load atomic i64, ptr %i.d monotonic, align 8 ; 3 uses
  %i.al = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.o, !prof !12

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit
  %i.an = add i64 %i.ak, -20
  %i.ao = cmpxchg weak ptr %i.d, i64 %i.ak, i64 %i.an release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.ao, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit, label %bb.o, !prof !12

bb.o:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit
  call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock22unlock_upgradable_slow(ptr noundef nonnull align 8 %i.d, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit

bb.p:                                             ; preds = %bb.f, %bb.e
  %.pn.pn.ph = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %.sroa.02.1.ph = phi i1 [ true, %bb.e ], [ %.sroa.02.2, %bb.f ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit20 unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit20: ; preds = %bb.p
  br i1 %.sroa.02.1.ph, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit20, %.thread
  %.pn726 = phi { ptr, i32 } [ %i.s, %.thread ], [ %.pn.pn.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit20 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant(ptr nonnull %i.d) #16
          to label %bb.r unwind label %bb.m

bb.r:                                             ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit20, %bb.q
  %.pn725 = phi { ptr, i32 } [ %.pn726, %bb.q ], [ %.pn.pn.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit20 ], [ %i.ai, %bb.l ]
  resume { ptr, i32 } %.pn725
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE5writeuNCNCNvMB10_NtB10_15ShardReplicaSet5build00ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %i.f = alloca [64 x i8], align 8                ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 4 uses
  %i.i = and i64 %i.h, 12
  %i.j = icmp ne i64 %i.i, 0
  %i.k = icmp ugt i64 %i.h, -21
  %or.cond.i.i = or i1 %i.k, %i.j
  br i1 %or.cond.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, !prof !9

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i: ; preds = %bb.a
  %i.l = add nuw i64 %i.h, 20
  %i.m = cmpxchg weak ptr %i.g, i64 %i.h, i64 %i.l acquire monotonic, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.m, 1
  br i1 %.sroa.18.0.in.i.i, label %.noexc, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, !prof !10

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, %bb.a
  %i.n = invoke noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20lock_upgradable_slow(ptr noundef nonnull align 8 %i.g, i64 undef, i32 noundef -1)
          to label %.noexc unwind label %.split.thread ; 0 uses

.noexc:                                           ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i
  %i.o = ptrtoint ptr %i.g to i64                 ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.o)
          to label %.noexc16 unwind label %.split.thread

.noexc16:                                         ; preds = %.noexc
  %i.p = or disjoint i64 %i.o, 1                  ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.p)
          to label %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit unwind label %.split.thread

bb.b:                                             ; preds = %bb.y
  br i1 %.sroa.03.243, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet5build00ECsl8OoimOLbh_6qdrant.exit

.split.thread:                                    ; preds = %.noexc16, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, %.noexc
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit: ; preds = %.noexc16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load i8, ptr %i.r, align 8, !range !14, !alias.scope !293, !noundef !6
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.q)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit, %bb.p
  %.sroa.03.3 = phi i1 [ false, %bb.p ], [ true, %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit ]
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.c:                                             ; preds = %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  store i8 %i.s, ptr %i.u, align 8, !alias.scope !292
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.w = load ptr, ptr %i.e, align 8, !alias.scope !294, !nonnull !6, !align !17, !noundef !6
  %i.x = load i64, ptr %i.w, align 8, !noalias !296, !noundef !6 ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !295
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !294, !nonnull !6, !align !17, !noundef !6
  %i.aa = load i64, ptr %i.z, align 8, !range !297, !noalias !296, !noundef !6
  %.not.i = icmp eq i64 %i.aa, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !294
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i
  %3 = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ad, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !296
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !296
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc19 unwind label %bb.l

.noexc19:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !296
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %i.u, align 8, !alias.scope !295
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !294, !nonnull !6, !noundef !6 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !range !21, !noalias !296, !noundef !6
  %i.af = invoke noundef i8 @_RNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_stateNtB2_15ReplicaSetState14set_peer_state(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, i64 noundef %i.x, i8 noundef %i.ae)
          to label %bb.d unwind label %bb.k, !noalias !294 ; 0 uses

bb.f:                                             ; preds = %bb.i, %.noexc19
  %i.ag = invoke { i64, i64 } @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyuEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.h unwind label %bb.g, !noalias !294 ; 2 uses

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.x unwind label %bb.j, !noalias !294

bb.h:                                             ; preds = %bb.f
  %i.ai = extractvalue { i64, i64 } %i.ag, 0
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIteryEECsl8OoimOLbh_6qdrant.exit6.i

bb.i:                                             ; preds = %bb.h
  %i.ak = extractvalue { i64, i64 } %i.ag, 1
  %i.al = load i8, ptr %3, align 1, !range !21, !noalias !294, !noundef !6
  %i.am = invoke noundef i8 @_RNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_stateNtB2_15ReplicaSetState14set_peer_state(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, i64 noundef %i.ak, i8 noundef %i.al)
          to label %bb.f unwind label %bb.g, !noalias !294 ; 0 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIteryEECsl8OoimOLbh_6qdrant.exit6.i: ; preds = %bb.h
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.m unwind label %bb.l

bb.j:                                             ; preds = %bb.k, %bb.g
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.k:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ao)
          to label %bb.x unwind label %bb.j

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIteryEECsl8OoimOLbh_6qdrant.exit6.i, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIteryEECsl8OoimOLbh_6qdrant.exit6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aq = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.aq, align 8, !nonnull !6, !noundef !6
  %i.ar = getelementptr i8, ptr %1, i64 16
  %.val11 = load i64, ptr %i.ar, align 8, !noundef !6
  invoke fastcc void @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE12save_data_toRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr nonnull %.val, i64 %.val11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.q
  %.sroa.02.2 = phi i1 [ false, %bb.q ], [ true, %bb.m ]
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.at = load i64, ptr %i.d, align 8, !range !13, !noundef !6
  %.not = icmp eq i64 %i.at, -1
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit unwind label %.thread

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.au = invoke noundef nonnull align 8 ptr @_RNvMsL_NtCsbO4BqjCww8C_8lock_api6rwlockINtB5_25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE7upgradeCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3)
          to label %bb.r unwind label %bb.n       ; 5 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit23 unwind label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit23: ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.aw)
  %i.ax = or disjoint i64 %i.aw, 1
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ax)
  %i.ay = cmpxchg ptr %i.au, i64 8, i64 0 release monotonic, align 8
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit, label %bb.s, !prof !12

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit23
  call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.au, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit23
  call fastcc void @_RNvMNtCslmvYCXbQjWR_6common12save_on_diskINtB2_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE13notify_changeCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %1)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.w, %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit
  ret void

bb.t:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant(ptr nonnull %i.au) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet5build00ECsl8OoimOLbh_6qdrant.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.z, %bb.x, %bb.y, %bb.t
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.o)
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.p)
  %i.bc = load atomic i64, ptr %i.g monotonic, align 8 ; 3 uses
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.v, label %bb.w, !prof !12

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit
  %i.bf = add i64 %i.bc, -20
  %i.bg = cmpxchg weak ptr %i.g, i64 %i.bc, i64 %i.bf release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.bg, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit, label %bb.w, !prof !12

bb.w:                                             ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit
  call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock22unlock_upgradable_slow(ptr noundef nonnull align 8 %i.g, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit

bb.x:                                             ; preds = %bb.n, %bb.g, %bb.k, %bb.l
  %.pn.pn.ph = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.ap, %bb.l ], [ %lpad.thr_comm.split-lp.i, %bb.k ], [ %i.ah, %bb.g ] ; 2 uses
  %.sroa.02.1.ph = phi i1 [ %.sroa.02.2, %bb.n ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.g ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit31 unwind label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit31: ; preds = %bb.x
  br i1 %.sroa.02.1.ph, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet5build00ECsl8OoimOLbh_6qdrant.exit

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit31, %.thread
  %.sroa.03.243 = phi i1 [ %.sroa.03.3, %.thread ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit31 ]
  %.pn742 = phi { ptr, i32 } [ %i.t, %.thread ], [ %.pn.pn.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit31 ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant(ptr nonnull %i.g) #16
          to label %bb.b unwind label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet5build00ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit31, %bb.z, %bb.b
  %.pn935 = phi { ptr, i32 } [ %i.ba, %bb.t ], [ %.pn742, %bb.b ], [ %.pn936, %bb.z ], [ %.pn.pn.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateECsl8OoimOLbh_6qdrant.exit31 ]
  resume { ptr, i32 } %.pn935

bb.z:                                             ; preds = %.split.thread, %bb.b
  %.pn936 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn742, %bb.b ]
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet5build00ECsl8OoimOLbh_6qdrant.exit unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE5writeuNCNCNvMB10_NtB10_15ShardReplicaSet9set_local00ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8 ; 4 uses
  %i.f = and i64 %i.e, 12
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ugt i64 %i.e, -21
  %or.cond.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, !prof !9

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i: ; preds = %bb.a
  %i.i = add nuw i64 %i.e, 20
  %i.j = cmpxchg weak ptr %i.d, i64 %i.e, i64 %i.i acquire monotonic, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.j, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, !prof !10

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20lock_upgradable_slow(ptr noundef nonnull align 8 %i.d, i64 undef, i32 noundef -1) ; 0 uses
  br label %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit

_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i
  %i.l = ptrtoint ptr %i.d to i64                 ; 3 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.l)
  %i.m = or disjoint i64 %i.l, 1                  ; 2 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !304, !noundef !6
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit, %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.b:                                             ; preds = %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.p, ptr %i.s, align 8, !alias.scope !303
  %.val14 = load i8, ptr %2, align 1, !range !305, !noundef !6 ; 2 uses
  store i8 1, ptr %i.r, align 8, !alias.scope !306
  %.not.i = icmp eq i8 %.val14, -1
  br i1 %.not.i, label %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet9set_local00Csl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
