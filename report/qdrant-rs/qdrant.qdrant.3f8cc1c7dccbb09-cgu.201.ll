Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.201?download=true
inline.NumInlined: 440
inline.NumDeleted: 205
begin_hunk_0_@_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE8wait_forNCNCNvMB10_NtB10_15ShardReplicaSet20wait_for_local_state00ECsl8OoimOLbh_6qdrant:bb.a
bb.s:                                             ; preds = %bb.t, %.body.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !368
  unreachable

bb.t:                                             ; preds = %bb.k, %.noexc.i, %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtCslmvYCXbQjWR_6common12save_on_diskINtBH_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE8wait_forNCNCNvMB1E_NtB1E_15ShardReplicaSet20wait_for_local_state00E0ECsl8OoimOLbh_6qdrant(ptr nonnull %i.r) #16
          to label %.body unwind label %bb.s, !noalias !368

bb.u:                                             ; preds = %_RNCINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB5_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateE8wait_forNCNCNvMB12_NtB12_15ShardReplicaSet20wait_for_local_state00E0Csl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %i.d, align 8, !nonnull !6, !align !17, !noundef !6 ; 3 uses
  %i.bq = ptrtoint ptr %.val to i64               ; 2 uses
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.bq)
  %i.br = or disjoint i64 %i.bq, 1
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.br)
  %i.bs = atomicrmw add ptr %.val, i64 -16 release, align 8
  %i.bt = and i64 %i.bs, -14
  %i.bu = icmp eq i64 %i.bt, 18
  br i1 %i.bu, label %bb.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit7, !prof !8

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %.val)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit7

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEECsl8OoimOLbh_6qdrant.exit7: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

bb.w:                                             ; preds = %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.x:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingE12save_data_toRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !380
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.16.val, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !380
  %i.e = load i64, ptr %i.a, align 8, !range !5, !noalias !380, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !7, !noalias !380, !noundef !6 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !noalias !380
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #15, !noalias !380
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !noalias !380, !nonnull !6, !noundef !6 ; 2 uses
  %i.l = icmp samesign ule i64 %.16.val, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !380
  %.not.i.i.i = icmp eq i64 %.16.val, 0
  br i1 %.not.i.i.i, label %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path7PathBufINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %.8.val, i64 range(i64 0, -9223372036854775808) %.16.val, i1 false), !noalias !381
  br label %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path7PathBufINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit

_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path7PathBufINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.c
  store i64 %i.h, ptr %i.d, align 8, !alias.scope !382
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !382
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.16.val, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !alias.scope !382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs1_Cs8tedoDvp06o_12atomicwritesNtB6_10AtomicFile3newNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i128 79537652246452167413109620736, ptr %i.b, align 16
  %i.m = invoke { i64, ptr } @_RINvMs1_Cs8tedoDvp06o_12atomicwritesNtB6_10AtomicFile18write_with_optionsuNtNtCs8O45qwFIwQX_10serde_json5error5ErrorNCINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB1W_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingE12save_data_toRNtNtCsG258MDvU3F_3std4path7PathBufE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path7PathBufINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8tedoDvp06o_12atomicwrites10AtomicFileECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #16
          to label %bb.j unwind label %bb.i

bb.e:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path7PathBufINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit
  %i.o = extractvalue { i64, ptr } %i.m, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.o, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = extractvalue { i64, ptr } %i.m, 1
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.56.0..sroa_idx, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8tedoDvp06o_12atomicwrites10AtomicFileECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs8tedoDvp06o_12atomicwrites10AtomicFileECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -1, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.j:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingE14write_optionalNCNCNvMB10_NtB10_11ShardHolder10add_shards00ECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.j = load atomic i64, ptr %i.i monotonic, align 8 ; 4 uses
  %i.k = and i64 %i.j, 12
  %i.l = icmp ne i64 %i.k, 0
  %i.m = icmp ugt i64 %i.j, -21
  %or.cond.i.i = or i1 %i.m, %i.l
  br i1 %or.cond.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, !prof !9

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i: ; preds = %bb.a
  %i.n = add nuw i64 %i.j, 20
  %i.o = cmpxchg weak ptr %i.i, i64 %i.j, i64 %i.n acquire monotonic, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.o, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i, !prof !10

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20lock_upgradable_slow(ptr noundef nonnull align 8 %i.i, i64 undef, i32 noundef -1) ; 0 uses
  br label %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit

_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock24try_lock_upgradable_fast.exit.thread.i
  %i.q = ptrtoint ptr %i.i to i64                 ; 4 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.q)
  %i.r = or disjoint i64 %i.q, 1                  ; 3 uses
  tail call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val10 = load i64, ptr %i.u, align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !393
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmENtNtNtB1y_4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !393
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.v = load i64, ptr %2, align 8, !range !5, !alias.scope !396, !noundef !6
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sink.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.i.sroa.gep12.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !396, !noundef !6
  br label %bb.f

bb.c:                                             ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 23
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !396, !noundef !6
  %.not.i.i = icmp sgt i8 %i.aa, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.i.i = load ptr, ptr %i.x, align 8, !alias.scope !396 ; 5 uses
  %.val21.i.i = load i64, ptr %i.ab, align 8, !alias.scope !396 ; 2 uses
  br i1 %.not.i.i, label %4, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

4:                                                ; preds = %bb.c
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, label %bb.d

bb.d:                                             ; preds = %4
  %i.ac = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !noalias !397
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, !prof !8

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i, i64 noundef %.val21.i.i) #15
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !398

.noexc.i:                                         ; preds = %bb.e
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.c, %bb.d, %4
  %.sroa.06.0.i.i = phi ptr [ %.val.i.i, %bb.d ], [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i.i, %bb.c ]
  store ptr %.sroa.06.0.i.i, ptr %.sink.i.sroa.gep12.i, align 8, !alias.scope !394, !noalias !393
  br label %bb.f

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.j, %bb.f, %bb.e
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.aq, %bb.l ], [ %lpad.loopexit.split-lp53, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.thread unwind label %bb.p, !noalias !398

bb.f:                                             ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i, %bb.b
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %.sink.i.sroa.gep12.i, %bb.b ]
  %.sroa.58.0.sink.i.i = phi i64 [ %.val21.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.y, %bb.b ]
  %storemerge.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %bb.b ]
  store i64 %.sroa.58.0.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !394, !noalias !393
  store i64 %storemerge.i.i, ptr %i.d, align 8, !alias.scope !394, !noalias !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !393
  invoke void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmENtNtNtB1N_4hash6random11RandomStateE11rustc_entryCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !398

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.c, align 8, !range !15, !noalias !393, !noundef !6 ; 4 uses
  %.not.i = icmp eq i64 %i.af, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !393 ; 3 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.516.0.copyload.i = load ptr, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !393 ; 3 uses
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.10.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.0..sroa_idx.i, i64 16, i1 false), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !393
  store i64 %i.af, ptr %i.b, align 8, !noalias !393
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.7.0..sroa_idx3.i, align 8, !noalias !393
  %.sroa.9.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.516.0.copyload.i, ptr %.sroa.9.0..sroa_idx7.i, align 8, !noalias !393
  %i.ai = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @34)
          to label %bb.j unwind label %bb.k, !noalias !400 ; 2 uses

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !393
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.am = load i64, ptr %i.al, align 8, !noalias !399, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !399
  store i64 %i.af, ptr %i.a, align 8, !noalias !393
  %.sroa.7.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ah, ptr %.sroa.7.0..sroa_idx5.i, align 8, !noalias !393
  %.sroa.9.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.516.0.copyload.i, ptr %.sroa.9.0..sroa_idx9.i, align 8, !noalias !393
  %i.an = load ptr, ptr %.sroa.10.0..sroa_idx11.i, align 8, !noalias !399, !nonnull !6, !align !17, !noundef !6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) @36, i64 32, i1 false), !noalias !399
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.aj, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !399
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !399
  %i.ap = invoke noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEE14insert_no_growCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !398

.noexc7.i:                                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !399
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = icmp eq i64 %i.af, 0
  %.not.i.i.i.i.i.i.i.i = icmp sgt ptr %.sroa.516.0.copyload.i, inttoptr (i64 -1 to ptr)
  %or.cond.i.i.i.i.i = select i1 %i.ar, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %.body.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx3.i)
          to label %.body.i unwind label %bb.m, !noalias !400

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !400
  unreachable

bb.n:                                             ; preds = %.noexc7.i, %bb.i
  %.pn.i.i = phi ptr [ %i.ap, %.noexc7.i ], [ %i.ah, %bb.i ]
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.idx.i = mul nuw nsw i64 %.val10, 1488
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.au = icmp eq i64 %.val10, 0
  br i1 %i.au, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.o
  %.sroa.0.026.i = phi i1 [ %i.az, %bb.o ], [ false, %bb.n ]
  %.sroa.02.025.i = phi ptr [ %i.ax, %bb.o ], [ %.val, %bb.n ] ; 2 uses
  %i.av = load i32, ptr %.sroa.02.025.i, align 8, !noalias !393, !noundef !6
  %i.aw = invoke noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.i, i32 noundef %i.av)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !398

._crit_edge.i:                                    ; preds = %bb.o
  br i1 %i.az, label %bb.r, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.025.i, i64 1488 ; 2 uses
  %i.ay = xor i1 %i.aw, true
  %i.az = or i1 %.sroa.0.026.i, %i.ay             ; 2 uses
  %i.ba = icmp eq ptr %i.ax, %i.at
  br i1 %i.ba, label %._crit_edge.i, label %.lr.ph.i

.critedge.i:                                      ; preds = %._crit_edge.i, %bb.n
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %.thread38 unwind label %bb.q

.thread38:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !393
  br label %bb.t

bb.p:                                             ; preds = %.body.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !398
  unreachable

bb.q:                                             ; preds = %bb.x, %.critedge.i, %_RNvXs4_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock16RawRwLockUpgrade15lock_upgradable.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.r:                                             ; preds = %._crit_edge.i
  %.sroa.029.0.copyload30 = load ptr, ptr %i.e, align 8, !noalias !401 ; 2 uses
  %.sroa.8.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx31, i64 40, i1 false), !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !393
  %.not = icmp eq ptr %.sroa.029.0.copyload30, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %.sroa.029.0.copyload30, ptr %i.h, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bd = getelementptr i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.bd, align 8, !nonnull !6, !noundef !6
  %i.be = getelementptr i8, ptr %1, i64 16
  %.val12 = load i64, ptr %i.be, align 8, !noundef !6
  invoke fastcc void @_RINvMNtCslmvYCXbQjWR_6common12save_on_diskINtB3_10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingE12save_data_toRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr nonnull %.val11, i64 %.val12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.w unwind label %bb.af

bb.t:                                             ; preds = %.thread38, %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bf, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.q)
  call void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.r)
  %i.bg = load atomic i64, ptr %i.i monotonic, align 8 ; 3 uses
  %i.bh = and i64 %i.bg, 1
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.u, label %bb.v, !prof !12

bb.u:                                             ; preds = %bb.t
  %i.bj = add i64 %i.bg, -20
  %i.bk = cmpxchg weak ptr %i.i, i64 %i.bg, i64 %i.bj release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.bk, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsl8OoimOLbh_6qdrant.exit, label %bb.v, !prof !12

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock22unlock_upgradable_slow(ptr noundef nonnull align 8 %i.i, i1 noundef zeroext false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsl8OoimOLbh_6qdrant.exit

bb.w:                                             ; preds = %bb.s
  %i.bl = load i64, ptr %i.g, align 8, !range !13, !noundef !6
  %.not5 = icmp eq i64 %i.bl, -1
  br i1 %.not5, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingECsl8OoimOLbh_6qdrant.exit unwind label %bb.q

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bm = invoke noundef nonnull align 8 ptr @_RNvMsL_NtCsbO4BqjCww8C_8lock_api6rwlockINtB5_25RwLockUpgradableReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingE7upgradeCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %bb.z unwind label %bb.af      ; 5 uses

bb.z:                                             ; preds = %bb.y
end_hunk_0
