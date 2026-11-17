Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.002?download=true
inline.NumInlined: 25559
inline.NumDeleted: 7874
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection10reshardingNtB6_10Collection16resharding_state0Csl8OoimOLbh_6qdrant:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42552)
  %i.ax = trunc nuw i64 %i.as to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 2 uses
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !42553, !noundef !38
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 159
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !42553, !noundef !38
  %.not.i.i.i = icmp sgt i8 %i.bb, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %.val.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !42553 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !42553 ; 2 uses
  br i1 %.not.i.i.i, label %bb.y, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bd = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.be = atomicrmw add ptr %i.bd, i64 1 monotonic, align 8, !noalias !42554
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.aa, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, !prof !58

bb.aa:                                            ; preds = %bb.z
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val21.i.i.i) #29
          to label %.noexc19 unwind label %bb.ab

.noexc19:                                         ; preds = %bb.aa
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.x, %bb.z, %bb.y
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.z ], [ inttoptr (i64 16 to ptr), %bb.y ], [ %.val.i.i.i, %bb.x ]
  %i.bg = ptrtoint ptr %.sroa.06.0.i.i.i to i64
  store i64 %i.bg, ptr %.sroa.4.i.i, align 8, !alias.scope !42551, !noalias !42555
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.w
  %.sink.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.sroa.4.i.i, %bb.w ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.az, %bb.w ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ 1, %bb.w ]
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i.sroa.phi.i.i, align 8, !alias.scope !42551, !noalias !42555
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !42555
  %.sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i = load i64, ptr %.sroa.7.i.i, align 8, !noalias !42555
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i

_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %bb.u
  %.sroa.5.sroa.4.0.i.i = phi i64 [ undef, %bb.u ], [ %.sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.sroa.0.0.i.i = phi i64 [ undef, %bb.u ], [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.u ], [ %storemerge.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 188
  %i.bj = load i8, ptr %i.bi, align 4, !range !40, !alias.scope !42550, !noundef !38
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 189
  %i.bl = load i8, ptr %i.bk, align 1, !range !59, !alias.scope !42550, !noundef !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !alias.scope !42556
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant(ptr nonnull %i.ag) #27
          to label %bb.ad unwind label %bb.ag

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i, %bb.t
  %.sroa.934.0 = phi i8 [ %i.bl, %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %bb.t ]
  %.sroa.833.0 = phi i8 [ %i.bj, %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %bb.t ]
  %.sroa.732.0 = phi i32 [ %i.aw, %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %bb.t ]
  %.sroa.631.0 = phi i64 [ %i.au, %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %bb.t ]
  %.sroa.4.0 = phi i64 [ %.sroa.5.sroa.4.0.i.i, %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %bb.t ]
  %.sroa.3.0 = phi i64 [ %.sroa.5.sroa.0.0.i.i, %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ undef, %bb.t ]
  %.sroa.029.0 = phi i64 [ %.sroa.0.0.i.i, %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i ], [ -1, %bb.t ]
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ap)
          to label %.noexc20 unwind label %bb.ae

.noexc20:                                         ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.aq)
          to label %.noexc21 unwind label %bb.ae

.noexc21:                                         ; preds = %.noexc20
  %i.bn = atomicrmw add ptr %i.ag, i64 -16 release, align 8
  %i.bo = and i64 %i.bn, -14
  %i.bp = icmp eq i64 %i.bo, 18
  br i1 %i.bp, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit, !prof !58

bb.ac:                                            ; preds = %.noexc21
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.ae
  %.pn9 = phi { ptr, i32 } [ %i.bq, %bb.ae ], [ %i.bm, %bb.ab ]
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ac, %.noexc20, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, %.noexc17, %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit: ; preds = %.noexc21, %bb.ac
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit25 unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit, %bb.q
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit25: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.029.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530, i64 16, i1 false)
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.631.0, ptr %.sroa.631.0..sroa_idx, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.732.0, ptr %.sroa.732.0..sroa_idx, align 8
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %.sroa.833.0, ptr %.sroa.833.0..sroa_idx, align 4
  %.sroa.934.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 %.sroa.934.0, ptr %.sroa.934.0..sroa_idx, align 1
  br label %common.ret

bb.ag:                                            ; preds = %bb.ad, %bb.ab, %bb.g
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB6_10Collection18create_replica_set0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1480) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.3146 = alloca [48 x i8], align 8         ; 3 uses
  %.sroa.4 = alloca [1424 x i8], align 8          ; 2 uses
  %i.d = alloca [1480 x i8], align 8              ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.3 = alloca [48 x i8], align 8            ; 3 uses
  %.sroa.5108 = alloca [48 x i8], align 8         ; 2 uses
  %i.n = alloca [104 x i8], align 8               ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !range !44, !noundef !38
  switch i8 %i.p, label %default.unreachable204 [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.bq
  ]

default.unreachable204:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 69
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  store i8 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !38, !align !42, !noundef !38 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load i32, ptr %i.w, align 8, !noundef !38
  store i32 %i.x, ptr %i.v, align 4
  store i8 1, ptr %i.q, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !38, !align !42, !noundef !38 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !38 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.af = load i8, ptr %i.ae, align 1, !range !146, !noundef !38
  store i8 %i.af, ptr %i.ad, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 504
  %.val62 = load i64, ptr %i.ag, align 8          ; 9 uses
  %i.ah = and i64 %i.ac, 1152921504606846968      ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ah ; 2 uses
  %.not.i.i208 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i208, label %._crit_edge, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i

bb.c:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i210, i64 64
  %i.ak = add nsw i64 %.sroa.5.0.i.i209, -8       ; 2 uses
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %._crit_edge, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.al = shl i64 %i.ac, 3
  %.idx = and i64 %i.al, 56                       ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx
  %.not.not.not.i.not.not.i.not.i211 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.not.i211, label %.loopexit, label %.lr.ph.a

bb.d:                                             ; preds = %.lr.ph.a
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.a = icmp eq ptr %i.am, %3
  br i1 %.not.not.not.i.not.not.i.not.i.a, label %.loopexit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %._crit_edge, %bb.d
  %4 = phi ptr [ %i.am, %bb.d ], [ %i.ai, %._crit_edge ] ; 2 uses
  %.val2.i.i.i.a = load i64, ptr %4, align 8, !alias.scope !42620, !noalias !42621, !noundef !38
  %i.an = icmp eq i64 %.val2.i.i.i.a, %.val62
  br i1 %i.an, label %.loopexit, label %bb.d

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.b, %bb.c
  %.sroa.0.05.i.i210 = phi ptr [ %i.aj, %bb.c ], [ %i.aa, %bb.b ] ; 9 uses
  %.sroa.5.0.i.i209 = phi i64 [ %i.ak, %bb.c ], [ %i.ah, %bb.b ]
  %.val11.i.i.i = load i64, ptr %.sroa.0.05.i.i210, align 8, !alias.scope !42620, !noalias !42622, !noundef !38
  %i.ao = icmp eq i64 %.val11.i.i.i, %.val62
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i210, i64 8
  %.val11.i.1.i.i = load i64, ptr %i.ap, align 8, !alias.scope !42620, !noalias !42622, !noundef !38
  %i.aq = icmp eq i64 %.val11.i.1.i.i, %.val62
  %i.ar = or i1 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i210, i64 16
  %.val11.i.2.i.i = load i64, ptr %i.as, align 8, !alias.scope !42620, !noalias !42622, !noundef !38
  %i.at = icmp eq i64 %.val11.i.2.i.i, %.val62
  %i.au = or i1 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i210, i64 24
  %.val11.i.3.i.i = load i64, ptr %i.av, align 8, !alias.scope !42620, !noalias !42622, !noundef !38
  %i.aw = icmp eq i64 %.val11.i.3.i.i, %.val62
  %i.ax = or i1 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i210, i64 32
  %.val11.i.4.i.i = load i64, ptr %i.ay, align 8, !alias.scope !42620, !noalias !42622, !noundef !38
  %i.az = icmp eq i64 %.val11.i.4.i.i, %.val62
  %i.ba = or i1 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i210, i64 40
  %.val11.i.5.i.i = load i64, ptr %i.bb, align 8, !alias.scope !42620, !noalias !42622, !noundef !38
  %i.bc = icmp eq i64 %.val11.i.5.i.i, %.val62
  %i.bd = or i1 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i210, i64 48
  %.val11.i.6.i.i = load i64, ptr %i.be, align 8, !alias.scope !42620, !noalias !42622, !noundef !38
  %i.bf = icmp eq i64 %.val11.i.6.i.i, %.val62
  %i.bg = or i1 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i210, i64 56
  %.val11.i.7.i.i = load i64, ptr %i.bh, align 8, !alias.scope !42620, !noalias !42622, !noundef !38
  %i.bi = icmp eq i64 %.val11.i.7.i.i, %.val62
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i, %.lr.ph.a, %bb.d, %._crit_edge
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.d ], [ 0, %._crit_edge ], [ 1, %.lr.ph.a ], [ 1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 67
  store i8 %.sroa.0.0.i.i, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !42623
  %i.bm = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @1112)
          to label %.noexc unwind label %bb.bm    ; 2 uses

.noexc:                                           ; preds = %.loopexit
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  %i.bo = extractvalue { i64, i64 } %i.bm, 0
  %i.bp = extractvalue { i64, i64 } %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @26, i64 32, i1 false), !noalias !42623
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.bo, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !42623
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.bp, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !42623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42623
  store ptr %i.aa, ptr %i.b, align 8, !noalias !42624
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bn, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !42624
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.u, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !42624
  invoke void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendyE6extendINtNtNtB1J_8adapters6filter6FilterINtNtB2J_6copied6CopiedINtNtNtB1L_5slice4iter4IteryEENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection13sharding_keysNtB4c_10Collection18create_replica_set00EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.e, !noalias !42623

bb.e:                                             ; preds = %.noexc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.body unwind label %bb.f, !noalias !42623

bb.f:                                             ; preds = %bb.e
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !42623
  unreachable

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !42625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42623
  store i8 1, ptr %i.r, align 4
  %i.bs = load ptr, ptr %i.s, align 8, !nonnull !38, !align !42, !noundef !38
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.bs, ptr %i.bt, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.j

.body:                                            ; preds = %bb.bw, %bb.e, %.body64, %bb.bm
  %.pn38 = phi { ptr, i32 } [ %i.gx, %bb.bm ], [ %i.bq, %bb.e ], [ %.pn35.pn, %.body64 ], [ %.pn35.pn, %bb.bw ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i8 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 69
  %i.bw = load i8, ptr %i.bv, align 1, !range !40, !noundef !38
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.bx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit96

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @427) #25
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @427) #25
  unreachable

bb.j:                                             ; preds = %bb.a, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  invoke fastcc void @_RNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtB4_10Collection27effective_optimizers_config0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(104) %i.n, ptr noundef nonnull align 8 %i.by, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.by) #27
          to label %.body64 unwind label %bb.ax

bb.l:                                             ; preds = %bb.j
  %i.ca = load i64, ptr %i.n, align 8, !range !64, !noundef !38 ; 3 uses
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %bb.m, label %bb.n

common.ret:                                       ; preds = %bb.bt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit90, %bb.m
  %.sink = phi i8 [ 4, %bb.bt ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit90 ], [ 3, %bb.m ]
  store i8 %.sink, ptr %i.o, align 8
  ret void

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 -1, ptr %0, align 8
  br label %common.ret

bb.n:                                             ; preds = %bb.l
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx, i64 48, i1 false)
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5108, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5108.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cd = load i8, ptr %i.cc, align 8, !range !39, !noundef !38
  %cond.i = icmp eq i8 %i.cd, 3
  br i1 %cond.i, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cf = load i8, ptr %i.ce, align 8, !range !39, !noundef !38
  %cond.i.i = icmp eq i8 %i.cf, 3
  br i1 %cond.i.i, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ch = load i8, ptr %i.cg, align 8, !range !39, !noundef !38
  %cond.i.i.i = icmp eq i8 %i.ch, 3
  br i1 %cond.i.i.i, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ci)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val2.i.i.i.i = load ptr, ptr %i.ck, align 8, !align !42, !noundef !38 ; 2 uses
  %i.cl = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.cl, label %.body64, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr i8, ptr %1, i64 144
  %.val3.i.i.i.i = load ptr, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !38, !noundef !38
  invoke void %i.co(ptr noundef %.val3.i.i.i.i)
          to label %.body64 unwind label %bb.v, !inline_history !2

bb.t:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val.i.i.i.i = load ptr, ptr %i.cp, align 8, !align !42, !noundef !38 ; 2 uses
  %i.cq = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.cq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr i8, ptr %1, i64 144
  %.val1.i.i.i.i = load ptr, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !38, !noundef !38
  invoke void %i.ct(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit unwind label %bb.w, !inline_history !105

bb.v:                                             ; preds = %bb.s
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.w:                                             ; preds = %bb.bu, %bb.u
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body64

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.t, %bb.p, %bb.o, %bb.n, %bb.u
  %i.cw = icmp eq i64 %i.ca, 2
  br i1 %i.cw, label %bb.bl, label %bb.aa

bb.x:                                             ; preds = %bb.z
  %i.cx = icmp eq i64 %i.dc, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 23
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !42626
  %.not.i.i.i.i.i = icmp sgt i8 %i.cz, -1
  %or.cond.i.i = select i1 %i.cx, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.da)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ax

bb.z:                                             ; preds = %bb.ab, %bb.aa
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.dc = load i64, ptr %i.m, align 8, !range !65, !alias.scope !42627, !noundef !38 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 2
  br i1 %i.dd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit, label %bb.x

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection27effective_optimizers_config0ECsl8OoimOLbh_6qdrant.exit
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.df = load i32, ptr %i.de, align 4, !noundef !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 69
  store i8 0, ptr %i.dg, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !38, !align !42, !noundef !38 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 200
end_hunk_0
