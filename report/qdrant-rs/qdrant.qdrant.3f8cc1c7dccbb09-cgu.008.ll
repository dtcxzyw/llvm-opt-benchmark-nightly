Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.008?download=true
inline.NumInlined: 9683
inline.NumDeleted: 3881
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_RNCNvMs_NtNtCsl8OoimOLbh_6qdrant6common6healthNtB6_4Task16unhealthy_shards0Ba_:bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  store ptr %i.eq, ptr %i.er, align 8, !noalias !13221
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.et = load i8, ptr %i.es, align 8, !range !57, !noalias !13221, !noundef !32
  %cond.i.i68 = icmp eq i8 %i.et, 3
  br i1 %cond.i.i68, label %bb.ba, label %bb.bi

bb.ba:                                            ; preds = %bb.az
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ev = load i8, ptr %i.eu, align 8, !range !57, !noalias !13221, !noundef !32
  %cond.i.i.i72 = icmp eq i8 %i.ev, 3
  br i1 %cond.i.i.i72, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ex = load i8, ptr %i.ew, align 8, !range !57, !noalias !13221, !noundef !32
  %cond.i.i.i.i73 = icmp eq i8 %i.ex, 3
  br i1 %cond.i.i.i.i73, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ey)
          to label %bb.bf unwind label %bb.bd, !noalias !13222

bb.bd:                                            ; preds = %bb.bc
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val2.i.i.i.i.i74 = load ptr, ptr %i.fa, align 8, !noalias !13221, !align !31, !noundef !32 ; 2 uses
  %i.fb = icmp eq ptr %.val2.i.i.i.i.i74, null
  br i1 %i.fb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fc = getelementptr i8, ptr %1, i64 272
  %.val3.i.i.i.i.i75 = load ptr, ptr %i.fc, align 8, !noalias !13221
  %i.fd = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i74, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !13222, !nonnull !32, !noundef !32
  invoke void %i.fe(ptr noundef %.val3.i.i.i.i.i75)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.bh, !noalias !13222, !inline_history !3

bb.bf:                                            ; preds = %bb.bc
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val.i.i.i.i.i76 = load ptr, ptr %i.ff, align 8, !noalias !13221, !align !31, !noundef !32 ; 2 uses
  %i.fg = icmp eq ptr %.val.i.i.i.i.i76, null
  br i1 %i.fg, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fh = getelementptr i8, ptr %1, i64 272
  %.val1.i.i.i.i.i77 = load ptr, ptr %i.fh, align 8, !noalias !13221
  %i.fi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i76, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !13222, !nonnull !32, !noundef !32
  invoke void %i.fj(ptr noundef %.val1.i.i.i.i.i77)
          to label %bb.bi unwind label %bb.es, !noalias !13222, !inline_history !9

bb.bh:                                            ; preds = %bb.be
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13222
  unreachable

bb.bi:                                            ; preds = %bb.bg, %bb.bf, %bb.bb, %bb.ba, %bb.az
  %.val49.i = load ptr, ptr %i.er, align 8, !noalias !13221, !noundef !32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val49.i, i64 32 ; 7 uses
  %i.fm = load atomic i64, ptr %i.fl monotonic, align 8, !noalias !13222 ; 4 uses
  %i.fn = and i64 %i.fm, 8
  %i.fo = icmp ne i64 %i.fn, 0
  %i.fp = icmp ugt i64 %i.fm, -17
  %or.cond.i.i.i.i = or i1 %i.fp, %i.fo
  br i1 %or.cond.i.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, !prof !94

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i: ; preds = %bb.bi
  %i.fq = add nuw i64 %i.fm, 16
  %i.fr = cmpxchg weak ptr %i.fl, i64 %i.fm, i64 %i.fq acquire monotonic, align 8, !noalias !13222
  %i.fs = extractvalue { i64, i1 } %i.fr, 1
  br i1 %i.fs, label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, !prof !95

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, %bb.bi
  %i.ft = invoke noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.fl, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i unwind label %bb.bj, !noalias !13222 ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i
  %i.fu = ptrtoint ptr %i.fl to i64               ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.fu)
          to label %.noexc63.i unwind label %bb.bj, !noalias !13222

.noexc63.i:                                       ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i
  %i.fv = or disjoint i64 %i.fu, 1                ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.fv)
          to label %bb.bk unwind label %bb.bj, !noalias !13222

bb.bj:                                            ; preds = %.noexc63.i, %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i

bb.bk:                                            ; preds = %.noexc63.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.val49.i, i64 40
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fx)
          to label %_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i unwind label %bb.bl, !noalias !13222

bb.bl:                                            ; preds = %bb.bk
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEECsl8OoimOLbh_6qdrant(ptr nonnull %i.fl) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i unwind label %bb.cd, !noalias !13222

_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.bk
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 225
  store i8 1, ptr %i.ga, align 1, !noalias !13221
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.fu)
          to label %.noexc66.i unwind label %bb.bn, !noalias !13222

.noexc66.i:                                       ; preds = %_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.fv)
          to label %.noexc67.i unwind label %bb.bn, !noalias !13222

.noexc67.i:                                       ; preds = %.noexc66.i
  %i.gb = atomicrmw add ptr %i.fl, i64 -16 release, align 8, !noalias !13222
  %i.gc = and i64 %i.gb, -14
  %i.gd = icmp eq i64 %i.gc, 18
  br i1 %i.gd, label %bb.bm, label %bb.bo, !prof !53

bb.bm:                                            ; preds = %.noexc67.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.fl)
          to label %bb.bo unwind label %bb.bn, !noalias !13222

bb.bn:                                            ; preds = %bb.bm, %.noexc66.i, %_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bo:                                            ; preds = %bb.bm, %.noexc67.i
  %.val48.i = load ptr, ptr %i.er, align 8, !noalias !13221, !noundef !32 ; 10 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val48.i, i64 128 ; 7 uses
  %i.gg = load atomic i64, ptr %i.gf monotonic, align 8, !noalias !13222 ; 4 uses
  %i.gh = and i64 %i.gg, 8
  %i.gi = icmp ne i64 %i.gh, 0
  %i.gj = icmp ugt i64 %i.gg, -17
  %or.cond.i.i.i69.i = or i1 %i.gj, %i.gi
  br i1 %or.cond.i.i.i69.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i71.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i70.i, !prof !94

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i70.i: ; preds = %bb.bo
  %i.gk = add nuw i64 %i.gg, 16
  %i.gl = cmpxchg weak ptr %i.gf, i64 %i.gg, i64 %i.gk acquire monotonic, align 8, !noalias !13222
  %i.gm = extractvalue { i64, i1 } %i.gl, 1
  br i1 %i.gm, label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i72.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i71.i, !prof !95

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i71.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i70.i, %bb.bo
  %i.gn = invoke noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.gf, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i72.i unwind label %bb.bp, !noalias !13222 ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i72.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i71.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i70.i
  %i.go = ptrtoint ptr %i.gf to i64               ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.go)
          to label %.noexc74.i unwind label %bb.bp, !noalias !13222

.noexc74.i:                                       ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i72.i
  %i.gp = or disjoint i64 %i.go, 1                ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.gp)
          to label %bb.bq unwind label %bb.bp, !noalias !13222

bb.bp:                                            ; preds = %.noexc74.i, %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i72.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i71.i
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bq:                                            ; preds = %.noexc74.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.val48.i, i64 136
  call void @llvm.experimental.noalias.scope.decl(metadata !13223)
  call void @llvm.experimental.noalias.scope.decl(metadata !13224)
  %i.gs = load i64, ptr %i.gr, align 8, !range !36, !alias.scope !13224, !noalias !13222, !noundef !32 ; 3 uses
  %.not.i.i = icmp eq i64 %i.gs, -1
  br i1 %.not.i.i, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !13225)
  %i.gt = getelementptr inbounds nuw i8, ptr %.val48.i, i64 176
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !13226, !noalias !13222, !noundef !32
  %i.gv = getelementptr inbounds nuw i8, ptr %.val48.i, i64 184
  %i.gw = load i32, ptr %i.gv, align 8, !alias.scope !13226, !noalias !13222, !noundef !32
  %.not.i.i.i69 = icmp eq i64 %i.gs, 2
  br i1 %.not.i.i.i69, label %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !13227)
  call void @llvm.experimental.noalias.scope.decl(metadata !13228)
  %i.gx = trunc nuw i64 %i.gs to i1
  %i.gy = getelementptr inbounds nuw i8, ptr %.val48.i, i64 144 ; 2 uses
  br i1 %i.gx, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !13229, !noalias !13222, !noundef !32
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.ha = getelementptr inbounds nuw i8, ptr %.val48.i, i64 159
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !13229, !noalias !13222, !noundef !32
  %.not.i.i.i.i = icmp slt i8 %i.hb, 0
  %i.hc = getelementptr inbounds nuw i8, ptr %.val48.i, i64 152
  %.val.i.i.i.i = load ptr, ptr %i.gy, align 8, !alias.scope !13229, !noalias !13222 ; 4 uses
  %.val21.i.i.i.i = load i64, ptr %i.hc, align 8, !alias.scope !13229, !noalias !13222 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hd = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.he = atomicrmw add ptr %i.hd, i64 1 monotonic, align 8, !noalias !13230
  %i.hf = icmp slt i64 %i.he, 0
  br i1 %i.hf, label %bb.bw, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, !prof !53

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val21.i.i.i.i) #26
          to label %.noexc76.i unwind label %bb.by, !noalias !13230

.noexc76.i:                                       ; preds = %bb.bw
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.bu, %bb.bv
  %i.hg = ptrtoint ptr %.val.i.i.i.i to i64
  store i64 %i.hg, ptr %.sroa.4.i.i.i, align 8, !alias.scope !13227, !noalias !13231
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.bt
  %.sink.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.4.i.i.i, %bb.bt ]
  %.sroa.58.0.sink.i.i.i.i = phi i64 [ %.val21.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %i.gz, %bb.bt ]
  %storemerge.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ 1, %bb.bt ]
  store i64 %.sroa.58.0.sink.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i, align 8, !alias.scope !13227, !noalias !13231
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i = load i64, ptr %.sroa.4.i.i.i, align 8, !noalias !13231
  %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i = load i64, ptr %.sroa.7.i.i.i, align 8, !noalias !13231
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %bb.br
  %.sroa.5.sroa.4.0.i.i.i = phi i64 [ undef, %bb.br ], [ %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.5.sroa.0.0.i.i.i = phi i64 [ undef, %bb.br ], [ %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.0.0.i.i.i = phi i64 [ 2, %bb.br ], [ %storemerge.i.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.val48.i, i64 160
  %i.hi = getelementptr inbounds nuw i8, ptr %.val48.i, i64 188
  %i.hj = load i8, ptr %i.hi, align 4, !range !58, !alias.scope !13226, !noalias !13222, !noundef !32
  %i.hk = getelementptr inbounds nuw i8, ptr %.val48.i, i64 189
  %i.hl = load i8, ptr %i.hk, align 1, !range !46, !alias.scope !13226, !noalias !13222, !noundef !32
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.hh, i64 16, i1 false), !alias.scope !13232, !noalias !13222
  store i64 %.sroa.0.0.i.i.i, ptr %i.el, align 8, !alias.scope !13223, !noalias !13221
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 %.sroa.5.sroa.0.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !13223, !noalias !13221
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 %.sroa.5.sroa.4.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !13223, !noalias !13221
  %.sroa.7.0..sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 %i.gu, ptr %.sroa.7.0..sroa_idx.i.i70, align 8, !alias.scope !13223, !noalias !13221
  %.sroa.8.0..sroa_idx.i.i71 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 %i.gw, ptr %.sroa.8.0..sroa_idx.i.i71, align 8, !alias.scope !13223, !noalias !13221
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 284
  store i8 %i.hj, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !13223, !noalias !13221
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 285
  store i8 %i.hl, ptr %.sroa.10.0..sroa_idx.i.i, align 1, !alias.scope !13223, !noalias !13221
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i

bb.bx:                                            ; preds = %bb.bq
  store i64 -1, ptr %i.el, align 8, !alias.scope !13223, !noalias !13221
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i

bb.by:                                            ; preds = %bb.bw
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant(ptr nonnull %i.gf) #24
          to label %bb.ce unwind label %bb.cd, !noalias !13222

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.bx, %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 1, ptr %i.hn, align 8, !noalias !13221
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.go)
          to label %.noexc77.i unwind label %bb.ca, !noalias !13222

.noexc77.i:                                       ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.gp)
          to label %.noexc78.i unwind label %bb.ca, !noalias !13222

.noexc78.i:                                       ; preds = %.noexc77.i
  %i.ho = atomicrmw add ptr %i.gf, i64 -16 release, align 8, !noalias !13222
  %i.hp = and i64 %i.ho, -14
  %i.hq = icmp eq i64 %i.hp, 18
  br i1 %i.hq, label %bb.bz, label %bb.cb, !prof !53

bb.bz:                                            ; preds = %.noexc78.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.gf)
          to label %bb.cb unwind label %bb.ca, !noalias !13222

bb.ca:                                            ; preds = %bb.bz, %.noexc77.i, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz, %.noexc78.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !13221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13221
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !13221, !nonnull !32, !align !31, !noundef !32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 368
  %.val50.i = load ptr, ptr %i.hu, align 8, !noalias !13222, !nonnull !32, !noundef !32
  %i.hv = getelementptr inbounds nuw i8, ptr %.val50.i, i64 16
  store ptr %i.hv, ptr %i.es, align 8, !noalias !13221
  %.sroa.8133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i8 0, ptr %.sroa.8133.0..sroa_idx.i, align 8, !noalias !13221
  br label %bb.cg

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.er, %.body97.i, %bb.co, %bb.cn, %bb.ch
  %.pn39.i = phi { ptr, i32 } [ %.pn34.pn.pn.pn.i, %.body97.i ], [ %i.it, %bb.ch ], [ %i.jd, %bb.cn ], [ %i.si, %bb.er ], [ %i.jd, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13221
  br label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit.i, %bb.ca
  %i.hw = phi ptr [ %i.ip, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit.i ], [ %i.ej, %bb.ca ] ; 2 uses
  %i.hx = phi ptr [ %i.iq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit.i ], [ %i.ek, %bb.ca ] ; 2 uses
  %.pn39.pn.i = phi { ptr, i32 } [ %.pn39.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit.i ], [ %i.hr, %bb.ca ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.hz = load i8, ptr %i.hy, align 8, !range !58, !noalias !13221, !noundef !32
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.ez, label %bb.ce

bb.cd:                                            ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ev, %bb.eu, %bb.et, %bb.ep, %.body97.i, %bb.ch, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i, %bb.by, %bb.bl, %bb.ax
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13222
  unreachable

bb.ce:                                            ; preds = %bb.ez, %bb.cc, %bb.by, %bb.bp
  %i.ic = phi ptr [ %i.hw, %bb.ez ], [ %i.hw, %bb.cc ], [ %i.ej, %bb.by ], [ %i.ej, %bb.bp ]
  %i.id = phi ptr [ %i.hx, %bb.ez ], [ %i.hx, %bb.cc ], [ %i.ek, %bb.by ], [ %i.ek, %bb.bp ]
  %.pn39.pn.pn.i = phi { ptr, i32 } [ %.pn39.pn.i, %bb.ez ], [ %.pn39.pn.i, %bb.cc ], [ %i.hm, %bb.by ], [ %i.gq, %bb.bp ]
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 0, ptr %i.ie, align 8, !noalias !13221
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bn
  %i.if = phi ptr [ %i.ic, %bb.ce ], [ %i.ej, %bb.bn ] ; 2 uses
  %i.ig = phi ptr [ %i.id, %bb.ce ], [ %i.ek, %bb.bn ] ; 2 uses
  %.pn39.pn.pn.pn.i = phi { ptr, i32 } [ %.pn39.pn.pn.i, %bb.ce ], [ %i.ge, %bb.bn ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.ii = load i8, ptr %i.ih, align 1, !range !58, !noalias !13221, !noundef !32
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.fa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i: ; preds = %bb.fa, %bb.cf, %bb.bl, %bb.bj
  %i.ik = phi ptr [ %i.ej, %bb.bj ], [ %i.if, %bb.cf ], [ %i.ej, %bb.bl ], [ %i.if, %bb.fa ]
  %i.il = phi ptr [ %i.ek, %bb.bj ], [ %i.ig, %bb.cf ], [ %i.ek, %bb.bl ], [ %i.ig, %bb.fa ] ; 2 uses
  %.pn39.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.fw, %bb.bj ], [ %.pn39.pn.pn.pn.i, %bb.cf ], [ %i.fz, %bb.bl ], [ %.pn39.pn.pn.pn.i, %bb.fa ]
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 225
  store i8 0, ptr %i.im, align 1, !noalias !13221
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.il)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.cd, !noalias !13222

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.es, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i, %bb.be, %bb.bd, %bb.ax
  %i.in = phi ptr [ %i.sj, %bb.es ], [ %i.ik, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i ], [ %i.ej, %bb.bd ], [ %i.ej, %bb.ax ], [ %i.ej, %bb.be ]
  %i.io = phi ptr [ %i.sk, %bb.es ], [ %i.il, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i ], [ %i.ek, %bb.bd ], [ %i.ek, %bb.ax ], [ %i.ek, %bb.be ]
  %.pn45.i = phi { ptr, i32 } [ %i.sl, %bb.es ], [ %.pn39.pn.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i ], [ %i.ez, %bb.bd ], [ %i.en, %bb.ax ], [ %i.ez, %bb.be ]
  store i8 2, ptr %i.in, align 2, !noalias !13221
  br label %.body80

bb.cg:                                            ; preds = %bb.cb, %bb.as
  %i.ip = phi ptr [ %i.ej, %bb.cb ], [ %i.dz, %bb.as ] ; 4 uses
  %i.iq = phi ptr [ %i.ek, %bb.cb ], [ %i.dy, %bb.as ] ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.is = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ir, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ci unwind label %bb.ch, !noalias !13222 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.it = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ir) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.cd, !noalias !13222

bb.ci:                                            ; preds = %bb.cg
  %i.iu = extractvalue { ptr, ptr } %i.is, 0      ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13221
  br label %.thread138

bb.ck:                                            ; preds = %bb.ci
  %i.iw = extractvalue { ptr, ptr } %i.is, 1
  store ptr %i.iu, ptr %i.p, align 8, !noalias !13221
  %i.ix = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.iw, ptr %i.ix, align 8, !noalias !13221
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.iz = load i8, ptr %i.iy, align 8, !range !57, !noalias !13221, !noundef !32
  %cond.i81.i = icmp eq i8 %i.iz, 3
  br i1 %cond.i81.i, label %bb.cl, label %bb.cs

bb.cl:                                            ; preds = %bb.ck
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.jb = load i8, ptr %i.ja, align 8, !range !57, !noalias !13221, !noundef !32
  %cond.i.i82.i = icmp eq i8 %i.jb, 3
  br i1 %cond.i.i82.i, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 352
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.jc)
          to label %bb.cp unwind label %bb.cn, !noalias !13222

bb.cn:                                            ; preds = %bb.cm
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val2.i.i.i.i = load ptr, ptr %i.je, align 8, !noalias !13221, !align !31, !noundef !32 ; 2 uses
  %i.jf = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.jf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEECsl8OoimOLbh_6qdrant.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jg = getelementptr i8, ptr %1, i64 368
  %.val3.i.i.i.i = load ptr, ptr %i.jg, align 8, !noalias !13221
  %i.jh = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !13222, !nonnull !32, !noundef !32
  invoke void %i.ji(ptr noundef %.val3.i.i.i.i)
end_hunk_0
