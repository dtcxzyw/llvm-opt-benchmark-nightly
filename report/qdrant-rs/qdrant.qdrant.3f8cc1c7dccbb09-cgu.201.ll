Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.201?download=true
inline.NumInlined: 440
inline.NumDeleted: 205
begin_hunk_0_@_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEE12save_data_toRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant:bb.a
  unreachable

bb.j:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEE14write_optionalNCNCNvMNtNtB1C_12shard_holder10reshardingNtB31_11ShardHolder16abort_resharding0s_0ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8 ; 4 uses
  %i.f = and i64 %i.e, 12
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ugt i64 %i.e, -21
  %or.cond.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, !prof !21

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i: ; preds = %bb.a
  %i.i = add nuw i64 %i.e, 20
  %i.j = cmpxchg weak ptr %i.d, i64 %i.e, i64 %i.i acquire monotonic, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.j, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, !prof !22

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20lock_upgradable_slow(ptr noundef nonnull align 8 %i.d, i64 undef, i32 noundef -1) ; 0 uses
  br label %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit

_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i
  %i.l = ptrtoint ptr %i.d to i64                 ; 4 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.l)
  %i.m = or disjoint i64 %i.l, 1                  ; 3 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !23, !alias.scope !24, !noalias !27, !noundef !16
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit
  %i.p = invoke noundef zeroext i1 @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB2_12ReshardState7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  br i1 %i.p, label %_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder10reshardingNtB8_11ShardHolder16abort_resharding0s_0Csl8OoimOLbh_6qdrant.exit, label %bb.d

bb.c:                                             ; preds = %bb.q
  br i1 %.sroa.0.2, label %bb.r, label %.thread44

.thread:                                          ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder10reshardingNtB8_11ShardHolder16abort_resharding0s_0Csl8OoimOLbh_6qdrant.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.r, align 8, !nonnull !16, !noundef !16
  %i.s = getelementptr i8, ptr %1, i64 16
  %.val10 = load i64, ptr %i.s, align 8, !noundef !16
  invoke fastcc void @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEE12save_data_toRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr nonnull %.val, i64 %.val10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c)
          to label %bb.g unwind label %bb.q

bb.d:                                             ; preds = %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit, %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.l)
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.m)
  %i.u = load atomic i64, ptr %i.d monotonic, align 8 ; 3 uses
  %i.v = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.x = add i64 %i.u, -20
  %i.y = cmpxchg weak ptr %i.d, i64 %i.u, i64 %i.x release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.y, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock22unlock_upgradable_slow(ptr noundef nonnull align 8 %i.d, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder10reshardingNtB8_11ShardHolder16abort_resharding0s_0Csl8OoimOLbh_6qdrant.exit
  %i.z = load i64, ptr %i.b, align 8, !range !31, !noundef !16
  %.not5 = icmp eq i64 %i.z, -1
  br i1 %.not5, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvMsL_NtCsbO4BqjCww8C_8lock_api6rwlockINtB5_25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEE7upgradeCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.i unwind label %bb.q       ; 7 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !23, !alias.scope !32, !noundef !16 ; 2 uses
  switch i64 %i.ac, label %bb.j [
    i64 -1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit20
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit20
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 31
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !35
  %.not.i.i.i.i.i.i.i17 = icmp sgt i8 %i.af, -1
  %or.cond.i.i.i.i18 = select i1 %i.ad, i1 %.not.i.i.i.i.i.i.i17, i1 false
  br i1 %or.cond.i.i.i.i18, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit20

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit20 unwind label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit20: ; preds = %bb.j, %bb.i, %bb.i, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = ptrtoint ptr %i.aa to i64               ; 2 uses
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ah)
  %i.ai = or disjoint i64 %i.ah, 1
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ai)
  %i.aj = cmpxchg ptr %i.aa, i64 8, i64 0 release monotonic, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit, label %bb.l, !prof !30

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit20
  call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.aa, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit20
  call fastcc void @_RNvMNtCslmvYCXbQjWR_6common12save_on_diskINtB2_10SaveOnDiskINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEE13notify_changeCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %1)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.al, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit

bb.m:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant(ptr nonnull %i.aa) #16
          to label %.thread44 unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.r, %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.l)
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.m)
  %i.ao = load atomic i64, ptr %i.d monotonic, align 8 ; 3 uses
  %i.ap = and i64 %i.ao, 1
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %bb.p, !prof !30

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit
  %i.ar = add i64 %i.ao, -20
  %i.as = cmpxchg weak ptr %i.d, i64 %i.ao, i64 %i.ar release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i24 = extractvalue { i64, i1 } %i.as, 1
  br i1 %.sroa.18.0.in.i.i.i.i24, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit, label %bb.p, !prof !30

bb.p:                                             ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit
  call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock22unlock_upgradable_slow(ptr noundef nonnull align 8 %i.d, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.p, %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit, %bb.e, %bb.f
  ret void

bb.q:                                             ; preds = %_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder10reshardingNtB8_11ShardHolder16abort_resharding0s_0Csl8OoimOLbh_6qdrant.exit, %bb.h
  %.sroa.0.2 = phi i1 [ false, %bb.h ], [ true, %_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder10reshardingNtB8_11ShardHolder16abort_resharding0s_0Csl8OoimOLbh_6qdrant.exit ]
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #16
          to label %bb.c unwind label %bb.n

bb.r:                                             ; preds = %.thread, %bb.c
  %.pn832 = phi { ptr, i32 } [ %i.q, %.thread ], [ %i.at, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant(ptr nonnull %i.d) #16
          to label %.thread44 unwind label %bb.n

.thread44:                                        ; preds = %bb.m, %bb.r, %bb.c
  %.pn831 = phi { ptr, i32 } [ %.pn832, %bb.r ], [ %i.at, %bb.c ], [ %i.am, %bb.m ]
  resume { ptr, i32 } %.pn831
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEE14write_optionalNCNCNvMNtNtB1C_12shard_holder10reshardingNtB31_11ShardHolder26start_resharding_unchecked00ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i = alloca [8 x i8], align 8           ; 5 uses
  %.sroa.7.i = alloca [8 x i8], align 8           ; 4 uses
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.g = load atomic i64, ptr %i.f monotonic, align 8 ; 4 uses
  %i.h = and i64 %i.g, 12
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp ugt i64 %i.g, -21
  %or.cond.i.i = or i1 %i.j, %i.i
  br i1 %or.cond.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, !prof !21

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i: ; preds = %bb.a
  %i.k = add nuw i64 %i.g, 20
  %i.l = cmpxchg weak ptr %i.f, i64 %i.g, i64 %i.k acquire monotonic, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.l, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, !prof !22

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20lock_upgradable_slow(ptr noundef nonnull align 8 %i.f, i64 undef, i32 noundef -1) ; 0 uses
  br label %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit

_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i
  %i.n = ptrtoint ptr %i.f to i64                 ; 4 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.n)
  %i.o = or disjoint i64 %i.n, 1                  ; 3 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.o)
  %.sroa.032.0.copyload = load ptr, ptr %2, align 8, !nonnull !16, !noundef !16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.032.0.copyload, i64 16, i1 false), !noalias !45
  %i.q = load i8, ptr %.sroa.4.0.copyload, align 1, !range !48, !noalias !45, !noundef !16 ; 3 uses
  %i.r = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !45, !noundef !16 ; 2 uses
  %i.s = load i32, ptr %.sroa.6.0.copyload, align 4, !noalias !45, !noundef !16 ; 2 uses
  %i.t = load i64, ptr %.sroa.7.0.copyload, align 8, !range !49, !noalias !45, !noundef !16 ; 2 uses
  %.not.i = icmp eq i64 %i.t, 2
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !53, !noalias !55, !noundef !16
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 23
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !53, !noalias !55, !noundef !16
  %.not.i.i = icmp sgt i8 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16
  %.val.i.i = load ptr, ptr %i.v, align 8, !alias.scope !53, !noalias !55 ; 5 uses
  %.val21.i.i = load i64, ptr %i.z, align 8, !alias.scope !53, !noalias !55 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !56
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !18

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i, i64 noundef %.val21.i.i) #15
          to label %.noexc unwind label %.thread38

.noexc:                                           ; preds = %bb.g
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.d, %bb.f, %bb.e
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.f ], [ inttoptr (i64 16 to ptr), %bb.e ], [ %.val.i.i, %bb.d ]
  store ptr %.sroa.06.0.i.i, ptr %.sroa.4.i, align 8, !alias.scope !50, !noalias !57
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.c
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.7.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sroa.4.i, %bb.c ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.w, %bb.c ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.c ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !50, !noalias !57
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !45
  %.sroa.7.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i = load i64, ptr %.sroa.7.i, align 8, !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit
  %i.ad = phi i64 [ undef, %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit ], [ %.sroa.7.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 5 uses
  %.sroa.5.sroa.0.0.i = phi i64 [ undef, %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit ], [ %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %i.ae = phi i64 [ 2, %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit ], [ %storemerge.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.r, ptr %i.ag, align 8, !noalias !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.s, ptr %i.ah, align 8, !noalias !45
  store i64 %i.ae, ptr %i.b, align 8, !noalias !45
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store i64 %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !45
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ad, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 8, !noalias !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i8 %i.q, ptr %i.ai, align 4, !noalias !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  store i8 0, ptr %i.aj, align 1, !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = load i64, ptr %i.p, align 8, !range !23, !alias.scope !42, !noalias !58, !noundef !16 ; 3 uses
  %.not4.i = icmp eq i64 %i.ak, -1
  %i.al = lshr i64 %i.ad, 56
  %i.am = inttoptr i64 %.sroa.5.sroa.0.0.i to ptr
  br i1 %.not4.i, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i128, ptr %i.an, align 8, !alias.scope !64, !noalias !65, !noundef !16
  %i.ap = load i128, ptr %i.af, align 8, !alias.scope !62, !noalias !66, !noundef !16
  %i.aq = icmp eq i128 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !42, !noalias !58
  %i.at = icmp eq i64 %i.as, %i.r
  %or.cond.i = select i1 %i.aq, i1 %i.at, i1 false
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.av = load i32, ptr %i.au, align 8, !alias.scope !42, !noalias !58
  %i.aw = icmp eq i32 %i.av, %i.s
  %or.cond15.i = select i1 %or.cond.i, i1 %i.aw, i1 false
  br i1 %or.cond15.i, label %bb.j, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.j:                                             ; preds = %bb.i
  %.not.i5.i = icmp eq i64 %i.ak, 2
  br i1 %.not.i5.i, label %.split4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = icmp eq i64 %i.ak, %i.ae
  br i1 %i.ax, label %bb.m, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split4.i.i:                                      ; preds = %bb.j
  %i.ay = icmp eq i64 %i.ae, 2
  br i1 %i.ay, label %.thread, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !67, !noalias !72, !noundef !16 ; 2 uses
  %.not.i.i27 = icmp sgt i8 %i.ba, -1             ; 2 uses
  %i.bb = and i8 %i.ba, 127
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !67, !noalias !72
  %.sroa.3.0.i.i = select i1 %.not.i.i27, i64 %i.be, i64 %i.bc ; 2 uses
  %.not.i1.i = icmp sgt i64 %i.ad, -1             ; 2 uses
  %i.bf = and i64 %i.al, 127
  %.sroa.3.0.i2.i = select i1 %.not.i1.i, i64 %i.ad, i64 %i.bf
  %i.bg = icmp eq i64 %.sroa.3.0.i.i, %.sroa.3.0.i2.i
  br i1 %i.bg, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l
  %.sroa.0.0.i3.i = select i1 %.not.i1.i, ptr %i.am, ptr %.sroa.5.0..sroa_idx2.i
  %i.bh = load ptr, ptr %i.bk, align 8, !alias.scope !67, !noalias !72, !nonnull !16
  %.sroa.0.0.i.i = select i1 %.not.i.i27, ptr %i.bh, ptr %i.bk
  %bcmp.i = call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i, ptr nonnull %.sroa.0.0.i3.i, i64 %.sroa.3.0.i.i), !noalias !58
  %i.bi = icmp eq i32 %bcmp.i, 0
  br i1 %i.bi, label %bb.n, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.bj = trunc nuw i64 %i.ae to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  br i1 %i.bj, label %.split.i.i, label %bb.l

.split.i.i:                                       ; preds = %bb.m
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !64, !noalias !65, !noundef !16
  %i.bm = icmp eq i64 %i.bl, %.sroa.5.sroa.0.0.i
  br i1 %i.bm, label %bb.n, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %.split.i.i, %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bo = load i8, ptr %i.bn, align 4, !range !48, !alias.scope !64, !noalias !65, !noundef !16
  %i.bp = icmp eq i8 %i.bo, %i.q
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.br = load i8, ptr %i.bq, align 1, !range !74, !alias.scope !42, !noalias !58
  %i.bs = icmp eq i8 %i.br, 0
  %or.cond18.i = select i1 %i.bp, i1 %i.bs, i1 false
  br i1 %or.cond18.i, label %bb.o, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.thread:                                          ; preds = %.split4.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bu = load i8, ptr %i.bt, align 4, !range !48, !alias.scope !64, !noalias !65, !noundef !16
  %i.bv = icmp eq i8 %i.bu, %i.q
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.bx = load i8, ptr %i.bw, align 1, !range !74, !alias.scope !42, !noalias !58
  %i.by = icmp eq i8 %i.bx, 0
  %or.cond18.i36 = select i1 %i.bv, i1 %i.by, i1 false
  br i1 %or.cond18.i36, label %.thread37, label %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bz = icmp eq i64 %i.ae, 0
  %.not.i.i.i.i.i.i6.i = icmp sgt i64 %i.ad, -1
  %or.cond.i.i.i7.i = select i1 %i.bz, i1 %.not.i.i.i.i.i.i6.i, i1 false
  br i1 %or.cond.i.i.i7.i, label %bb.p, label %.thread37

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i)
          to label %.thread37 unwind label %.thread38

bb.q:                                             ; preds = %bb.ag
  br i1 %.sroa.0.2, label %bb.ah, label %.thread56

.thread38:                                        ; preds = %bb.g, %bb.p, %bb.w
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.l, %.thread, %bb.n, %.split.i.i, %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %.split4.i.i, %bb.k, %bb.i, %bb.h
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx2.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  store i64 %i.ae, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cb = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.cb, align 8, !nonnull !16, !noundef !16
  %i.cc = getelementptr i8, ptr %1, i64 16
  %.val10 = load i64, ptr %i.cc, align 8, !noundef !16
  invoke fastcc void @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEE12save_data_toRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr nonnull %.val, i64 %.val10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e)
          to label %bb.t unwind label %bb.ag

.thread37:                                        ; preds = %.thread, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cd, align 8
  store i64 -1, ptr %0, align 8
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.n)
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.o)
  %i.ce = load atomic i64, ptr %i.f monotonic, align 8 ; 3 uses
  %i.cf = and i64 %i.ce, 1
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.r, label %bb.s, !prof !30

bb.r:                                             ; preds = %.thread37
  %i.ch = add i64 %i.ce, -20
  %i.ci = cmpxchg weak ptr %i.f, i64 %i.ce, i64 %i.ch release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.ci, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit, label %bb.s, !prof !30

bb.s:                                             ; preds = %bb.r, %.thread37
  call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock22unlock_upgradable_slow(ptr noundef nonnull align 8 %i.f, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit

bb.t:                                             ; preds = %_RNvXs4_NtCs9zPlAsQS9gd_4ecow6stringNtB5_9EcoStringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread
  %i.cj = load i64, ptr %i.d, align 8, !range !31, !noundef !16
  %.not5 = icmp eq i64 %i.cj, -1
  br i1 %.not5, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %cond = icmp eq i64 %i.ae, 2
  br i1 %cond, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp eq i64 %i.ae, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 23
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !75
  %.not.i.i.i.i.i.i.i = icmp sgt i8 %i.cm, -1
  %or.cond.i.i.i.i = select i1 %i.ck, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEECsl8OoimOLbh_6qdrant.exit unwind label %.thread38

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_0
begin_hunk_1_@_RNvMNtCslmvYCXbQjWR_6common12save_on_diskINtB2_10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaE13notify_changeCsl8OoimOLbh_6qdrant:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCslmvYCXbQjWR_6common12save_on_diskINtB2_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE13notify_changeCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.a, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEECsl8OoimOLbh_6qdrant(ptr nonnull %i.a) #16
          to label %bb.i unwind label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.e, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef i64 @_RNvMs_NtCs27TyLBeV75a_11parking_lot7condvarNtB4_7Condvar15notify_all_slow(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull %i.h)
          to label %bb.f unwind label %bb.c       ; 0 uses

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.f)
  %i.k = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEECsl8OoimOLbh_6qdrant.exit, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCslmvYCXbQjWR_6common12save_on_diskINtB2_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingE13notify_changeCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.b = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.a, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEECsl8OoimOLbh_6qdrant(ptr nonnull %i.a) #16
          to label %bb.i unwind label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.e, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef i64 @_RNvMs_NtCs27TyLBeV75a_11parking_lot7condvarNtB4_7Condvar15notify_all_slow(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull %i.h)
          to label %bb.f unwind label %bb.c       ; 0 uses

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.f)
  %i.k = cmpxchg ptr %i.a, i8 1, i8 0 release monotonic, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEECsl8OoimOLbh_6qdrant.exit, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.i:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsl8OoimOLbh_6qdrant6common4auth6claimsNtB2_12KeyValuePair12to_condition(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([376 x i8]) align 8 captures(none) dereferenceable(376) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !473
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !473
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit unwind label %bb.b, !noalias !477

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #16
          to label %common.resume unwind label %bb.c, !noalias !477

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !477
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.r, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !478
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !473
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !479, !noundef !16 ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %i.l = add i64 %i.j, -9223372036854775807
  %i.m = select i1 %i.k, i64 %i.l, i64 0
  switch i64 %i.m, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.d:                                             ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  unreachable

bb.e:                                             ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i64, ptr %i.n, align 8, !noundef !16 ; 2 uses
  %.sroa.6.sroa.0.0.extract.trunc8 = trunc i64 %i.o to i8
  %.sroa.6.sroa.6.0.extract.shift9 = and i64 %i.o, -256
  br label %bb.j

bb.g:                                             ; preds = %_RNvXs5_NtCs607s0NAIaWN_7segment9json_pathNtB5_8JsonPathNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load i8, ptr %i.p, align 8, !range !48, !noundef !16
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.d) #16
          to label %common.resume unwind label %bb.k

bb.i:                                             ; preds = %bb.e
  %.sroa.02.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.sroa.0.0.extract.trunc = trunc i64 %.sroa.6.0.copyload to i8
  %.sroa.6.sroa.6.0.extract.shift = and i64 %.sroa.6.0.copyload, -256
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.f
  %.sroa.8.sroa.0.0 = phi i64 [ %.sroa.8.0.copyload, %bb.i ], [ undef, %bb.f ], [ undef, %bb.g ]
  %.sroa.6.sroa.6.sroa.0.0 = phi i64 [ %.sroa.6.sroa.6.0.extract.shift, %bb.i ], [ %.sroa.6.sroa.6.0.extract.shift9, %bb.f ], [ 0, %bb.g ]
  %.sroa.6.sroa.0.0 = phi i8 [ %.sroa.6.sroa.0.0.extract.trunc, %bb.i ], [ %.sroa.6.sroa.0.0.extract.trunc8, %bb.f ], [ %i.q, %bb.g ]
  %.sroa.02.0 = phi i64 [ %.sroa.02.0.copyload, %bb.i ], [ -9223372036854775808, %bb.f ], [ -9223372036854775807, %bb.g ]
  %.sroa.6.sroa.0.0.insert.ext = zext i8 %.sroa.6.sroa.0.0 to i64
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.sroa.6.sroa.0.0, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 0, ptr %0, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 2, ptr %.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %.sroa.02.0, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %.sroa.6.sroa.0.0.insert.insert, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.sroa.8.sroa.0.0, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 -1, ptr %.sroa.0.sroa.13.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 2, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 369
  store i8 2, ptr %.sroa.11.0..sroa_idx, align 1
  ret void

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMNtNtNtCsl8OoimOLbh_6qdrant6common9inference16infer_processingNtB2_18BatchAccumInferred10get_vector(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !480, !noalias !483, !noundef !16
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataEB1M_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !491, !noalias !492, !noundef !16 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !491, !noalias !492, !nonnull !16, !noundef !16 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.i      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !495 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [256 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -256
  %i.w = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataINtB2_10EquivalentBq_E10equivalentBy_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.v), !noalias !498
  br i1 %i.w, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1W_E0EBY_.exit.i, label %bb.d, !prof !30

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1W_E0EBY_.exit.i, !prof !18

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aa = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ac = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1W_E0EBY_.exit.i: ; preds = %._crit_edge.i.i, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.u, %.lr.ph.i.i ], [ null, %._crit_edge.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -48
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.af
  br label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBW_.exit

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EBW_.exit: ; preds = %bb.a, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1W_E0EBY_.exit.i
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDataNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1W_E0EBY_.exit.i ], [ null, %bb.a ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsl8OoimOLbh_6qdrant6common9inference16infer_processingNtB2_18BatchAccumInferred3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @34) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @36, i64 32, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.c, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCsl8OoimOLbh_6qdrant6common4auth6claimsNtB4_11ValueExists9to_filter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !16
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterNtNtNtNtCsl8OoimOLbh_6qdrant6common4auth6claims12KeyValuePairENCNvMs_B3v_NtB3v_11ValueExists9to_filter0EE9from_iterB3B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e)
  store i64 -1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -1, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsl8OoimOLbh_6qdrant5actix3apiNtB2_20StrictCollectionPathNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [96 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !506
  call void @_RNvMs0_NtCs1cB7FFWPEsq_9validator5typesNtB5_16ValidationErrors3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k), !noalias !506
  %i.l = invoke noundef zeroext i1 @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtCs1cB7FFWPEsq_9validator10validation6length14ValidateLengthyE15validate_lengthCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 1, i64 1, i64 noundef 1, i64 255, i64 noundef 0, i64 undef)
          to label %bb.d unwind label %bb.c, !noalias !501

bb.b:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.g, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.w ], [ %i.ae, %bb.r ], [ %i.m, %bb.c ], [ %lpad.thr_comm.i, %bb.m ], [ %lpad.thr_comm.split-lp.i, %bb.g ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.n, !noalias !501

bb.c:                                             ; preds = %bb.l, %bb.e, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !506
  invoke void @_RNvMNtCs1cB7FFWPEsq_9validator5typesNtB2_15ValidationError3new(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 6)
          to label %bb.f unwind label %bb.c, !noalias !501

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !506
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @50, ptr %i.n, align 8, !noalias !506
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 3, ptr %i.o, align 8, !noalias !506
  store i64 -1, ptr %i.i, align 8, !noalias !506
  invoke void @_RINvMNtCs1cB7FFWPEsq_9validator5typesNtB3_15ValidationError9add_paramlECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @51)
          to label %bb.h unwind label %bb.m, !noalias !501

bb.g:                                             ; preds = %bb.j
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !506
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @52, ptr %i.p, align 8, !noalias !506
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %i.q, align 8, !noalias !506
  store i64 -1, ptr %i.h, align 8, !noalias !506
  invoke void @_RINvMNtCs1cB7FFWPEsq_9validator5typesNtB3_15ValidationError9add_paramlECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @53)
          to label %bb.i unwind label %bb.m, !noalias !501

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !506
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @19, ptr %i.r, align 8, !noalias !506
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 5, ptr %i.s, align 8, !noalias !506
  store i64 -1, ptr %i.g, align 8, !noalias !506
  invoke void @_RINvMNtCs1cB7FFWPEsq_9validator5typesNtB3_15ValidationError9add_paramNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.j unwind label %bb.m, !noalias !501

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !506
end_hunk_1
