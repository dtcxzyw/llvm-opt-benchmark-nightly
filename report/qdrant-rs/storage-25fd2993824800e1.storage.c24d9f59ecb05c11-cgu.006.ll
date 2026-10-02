Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.006?download=true
inline.NumInlined: 9815
inline.NumDeleted: 3185
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4_11ShardHolder9add_shard0CsgGgPqgSfnMH_7storage:bb.a
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !14160
  %.not.i.i.i.i.i = icmp sgt i8 %i.ah, -1
  %or.cond.i.i = select i1 %i.af, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit

bb.t:                                             ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit unwind label %bb.q

bb.u:                                             ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit
  store i8 0, ptr %i.aa, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.c, align 4
  resume { ptr, i32 } %.pn7

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(1480) %i.b) #25
          to label %bb.u unwind label %bb.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards15channel_serviceNtB4_14ChannelService11remove_peer0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [376 x i8], align 8               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 329 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !range !35, !noundef !27
  switch i8 %i.e, label %default.unreachable41 [
    i8 0, label %bb.b
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
  ]

default.unreachable41:                            ; preds = %bb.p, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !27, !align !33, !noundef !27 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i64, ptr %i.j, align 8, !noundef !27
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.val = load ptr, ptr %i.l, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 6 uses
  %i.n = cmpxchg weak ptr %i.m, i64 0, i64 8 acquire monotonic, align 8
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.p = invoke noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.m, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i unwind label %bb.d ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i: ; preds = %bb.c, %bb.b
  %i.q = ptrtoint ptr %i.m to i64                 ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.q)
          to label %.noexc18 unwind label %bb.d

.noexc18:                                         ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i
  %i.r = or disjoint i64 %i.q, 1                  ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.r)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.noexc18, %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %.noexc18
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  invoke void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeyECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriE6removeyECsgGgPqgSfnMH_7storage.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriEEECsgGgPqgSfnMH_7storage(ptr nonnull %i.m) #25
          to label %bb.m unwind label %bb.l

_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriE6removeyECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.e
  store i8 1, ptr %i.f, align 8
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.q)
          to label %.noexc21 unwind label %bb.h

.noexc21:                                         ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriE6removeyECsgGgPqgSfnMH_7storage.exit
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.r)
          to label %.noexc22 unwind label %bb.h

.noexc22:                                         ; preds = %.noexc21
  %i.w = cmpxchg ptr %i.m, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.w, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriEEECsgGgPqgSfnMH_7storage.exit, label %bb.g, !prof !31

bb.g:                                             ; preds = %.noexc22
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.m, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc21, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriE6removeyECsgGgPqgSfnMH_7storage.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriEEECsgGgPqgSfnMH_7storage.exit: ; preds = %.noexc22, %bb.g
  %i.y = load i8, ptr %i.u, align 8, !range !52, !noundef !27
  %.not = icmp eq i8 %i.y, -1
  br i1 %.not, label %bb.j, label %.thread

.thread:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriEEECsgGgPqgSfnMH_7storage.exit
  store i8 0, ptr %i.f, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(88) %i.u, i64 88, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.val17 = load ptr, ptr %i.aa, align 8, !nonnull !27, !noundef !27
  %i.ab = getelementptr inbounds nuw i8, ptr %.val17, i64 16
  store ptr %i.ab, ptr %0, align 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %.sroa.738.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.r

bb.i:                                             ; preds = %.body
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ad) #25
          to label %bb.k unwind label %bb.l

common.ret:                                       ; preds = %bb.am, %bb.j
  %storemerge = phi i8 [ 1, %bb.j ], [ 3, %bb.am ]
  %common.ret.op = phi i1 [ false, %bb.j ], [ true, %bb.am ]
  store i8 %storemerge, ptr %i.d, align 1
  ret i1 %common.ret.op

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCs577yCKf7gy3_4http3uri3UriEEECsgGgPqgSfnMH_7storage.exit, %bb.an
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 0, ptr %i.ae, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.ao, %bb.i, %bb.h
  %.pn10 = phi { ptr, i32 } [ %i.bt, %bb.ao ], [ %.pn6, %bb.i ], [ %i.x, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !range !52, !noundef !27
  %.not12 = icmp eq i8 %i.ag, -1
  br i1 %.not12, label %bb.m, label %bb.ap

bb.l:                                             ; preds = %bb.f, %bb.aq, %.body, %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.m:                                             ; preds = %bb.d, %bb.f, %bb.aq, %bb.ap, %bb.k
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %bb.aq ], [ %.pn10, %bb.ap ], [ %.pn10, %bb.k ], [ %i.v, %bb.f ], [ %i.s, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 0, ptr %i.ai, align 8
  store i8 2, ptr %i.d, align 1
  resume { ptr, i32 } %.pn10.pn

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @322) #26
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @322) #26
  unreachable

.body:                                            ; preds = %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i
  %.pn6 = phi { ptr, i32 } [ %.pn10.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i ], [ %i.br, %bb.al ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc22transport_channel_poolNtBJ_20TransportChannelPool9drop_pool0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0) #25
          to label %bb.i unwind label %bb.l

bb.p:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !35, !noalias !14165
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  switch i8 %.pre, label %default.unreachable41 [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14165
  br label %bb.u

bb.r:                                             ; preds = %.thread, %bb.p
  %i.ak = phi ptr [ %i.ac, %.thread ], [ %i.aj, %bb.p ]
  %2 = load ptr, ptr %0, align 8, !noalias !14165, !nonnull !27, !align !33, !noundef !27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !noalias !14165, !nonnull !27, !align !33, !noundef !27
  store ptr %4, ptr %i.al, align 8, !noalias !14165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14165
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 208
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %6, align 8, !noalias !14165
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !14165
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @501) #26
          to label %.noexc24 unwind label %bb.al

.noexc24:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.p
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @501) #26
          to label %.noexc25 unwind label %bb.al

.noexc25:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.am = phi ptr [ %i.ak, %bb.r ], [ %i.aj, %bb.q ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14165
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  invoke fastcc void @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEE5write0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14165
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEE5write0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.an) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.ak

bb.w:                                             ; preds = %bb.u
  %i.ap = load ptr, ptr %i.b, align 8, !noalias !14165, !noundef !27
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.am, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !14165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14165
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.as = load i8, ptr %i.ar, align 8, !range !35, !noalias !14165, !noundef !27
  %cond.i.i = icmp eq i8 %i.as, 3
  br i1 %cond.i.i, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load i8, ptr %i.at, align 8, !range !35, !noalias !14165, !noundef !27
  %cond.i.i.i = icmp eq i8 %i.au, 3
  br i1 %cond.i.i.i, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.av)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i.i.i.i = load ptr, ptr %i.ax, align 8, !noalias !14165, !align !33, !noundef !27 ; 2 uses
  %i.ay = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.ay, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.az = getelementptr i8, ptr %0, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.az, align 8, !noalias !14165
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !27, !noundef !27
  invoke void %i.bb(ptr noundef %.val3.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.ae, !inline_history !1

bb.ac:                                            ; preds = %bb.z
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.bc, align 8, !noalias !14165, !align !33, !noundef !27 ; 2 uses
  %i.bd = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.bd, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = getelementptr i8, ptr %0, i64 56
  %.val1.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !14165
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !27, !noundef !27
  invoke void %i.bg(ptr noundef %.val1.i.i.i.i)
          to label %bb.ag unwind label %bb.af, !inline_history !106

bb.ae:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i

bb.ag:                                            ; preds = %bb.ad, %bb.ac, %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14165
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %i.bj, align 8, !noalias !14165, !noundef !27
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !14165, !nonnull !27, !align !33, !noundef !27
  invoke void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val.i, ptr noundef nonnull align 8 %i.bl)
          to label %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE6removeB13_ECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14165
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.ak

_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE6removeB13_ECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.ag
  %i.bn = load i64, ptr %i.a, align 8, !range !60, !alias.scope !14166, !noalias !14165, !noundef !27
  %i.bo = icmp eq i64 %i.bn, -2
  br i1 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE6removeB13_ECsgGgPqgSfnMH_7storage.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.ah

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.ai, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE6removeB13_ECsgGgPqgSfnMH_7storage.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14165
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.an unwind label %bb.aj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ab, %bb.aa, %bb.v
  %.pn10.i = phi { ptr, i32 } [ %i.bp, %bb.aj ], [ %i.bm, %bb.ah ], [ %i.aw, %bb.aa ], [ %i.ao, %bb.v ], [ %i.bi, %bb.af ], [ %i.aw, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14165
  store i8 2, ptr %i.am, align 8, !noalias !14165
  br label %.body

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i

bb.ak:                                            ; preds = %bb.ah, %bb.v
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.al:                                            ; preds = %bb.t, %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14165
  store i8 3, ptr %i.am, align 8, !noalias !14165
  br label %common.ret

bb.an:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14165
  store i8 1, ptr %i.am, align 8, !noalias !14165
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(88) %i.bs)
          to label %bb.j unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.ap:                                            ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bv = load i8, ptr %i.bu, align 8, !range !32, !noundef !27
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.aq, label %bb.m

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(88) %i.af) #25
          to label %bb.m unwind label %bb.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtB4_5Shard15stop_gracefully0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [608 x i8], align 8               ; 7 uses
  %i.b = alloca [720 x i8], align 8               ; 7 uses
  %i.c = alloca [416 x i8], align 8               ; 7 uses
  %i.d = alloca [400 x i8], align 8               ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !80, !noundef !27
  switch i8 %i.f, label %default.unreachable72 [
    i8 0, label %bb.c
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
  ]

default.unreachable72:                            ; preds = %bb.a
  unreachable

end_hunk_0
begin_hunk_1_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB6_15ShardReplicaSet12update_local0CsgGgPqgSfnMH_7storage:bb.a
bb.bw:                                            ; preds = %bb.bs
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 15 uses
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !35, !noalias !14601
  switch i8 %.pre.i.i.i, label %default.unreachable348 [
    i8 0, label %._crit_edge65.i.i
    i8 1, label %bb.cj
    i8 2, label %bb.ck
    i8 3, label %bb.cl
  ]

._crit_edge65.i.i:                                ; preds = %bb.bw
  %.phi.trans.insert66.i.i = getelementptr inbounds nuw i8, ptr %1, i64 808
  %.pre67.i.i = load ptr, ptr %.phi.trans.insert66.i.i, align 8, !noalias !14601
  %.phi.trans.insert68.i.i = getelementptr inbounds nuw i8, ptr %1, i64 816
  %.pre69.i.i = load ptr, ptr %.phi.trans.insert68.i.i, align 8, !noalias !14601
  %.phi.trans.insert70.i.i = getelementptr inbounds nuw i8, ptr %1, i64 824
  %.pre71.i.i = load ptr, ptr %.phi.trans.insert70.i.i, align 8, !noalias !14601
  br label %bb.by

bb.bx:                                            ; preds = %bb.ca
  unreachable

bb.by:                                            ; preds = %._crit_edge65.i.i, %.thread.i.i.i
  %i.if = phi ptr [ %i.hp, %.thread.i.i.i ], [ %i.gc, %._crit_edge65.i.i ] ; 4 uses
  %i.ig = phi ptr [ %i.hq, %.thread.i.i.i ], [ %i.gb, %._crit_edge65.i.i ] ; 4 uses
  %i.ih = phi ptr [ %i.hr, %.thread.i.i.i ], [ %.phi.trans.insert.i, %._crit_edge65.i.i ] ; 4 uses
  %i.ii = phi ptr [ %i.hs, %.thread.i.i.i ], [ %i.gx, %._crit_edge65.i.i ] ; 4 uses
  %i.ij = phi ptr [ %i.hw, %.thread.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge65.i.i ] ; 4 uses
  %i.ik = phi ptr [ %i.ht, %.thread.i.i.i ], [ %.pre71.i.i, %._crit_edge65.i.i ] ; 2 uses
  %i.il = phi ptr [ %i.hu, %.thread.i.i.i ], [ %.pre69.i.i, %._crit_edge65.i.i ]
  %i.im = phi ptr [ %i.hv, %.thread.i.i.i ], [ %.pre67.i.i, %._crit_edge65.i.i ] ; 2 uses
  %i.in = phi ptr [ %.sroa.10.0..sroa_idx.i.i.i, %.thread.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge65.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !14601
  invoke void @_RNvXNtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtB2_27EstimateOperationEffectArea20estimate_effect_area(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.il)
          to label %bb.ca unwind label %bb.bz, !noalias !14602

.body.thread.i.i.i:                               ; preds = %bb.fi, %.body17.i.i.i.i, %.body.i.i.i.i, %bb.bz
  %i.io = phi ptr [ %i.if, %bb.bz ], [ %i.if, %.body.i.i.i.i ], [ %i.sl, %bb.fi ], [ %i.jm, %.body17.i.i.i.i ]
  %i.ip = phi ptr [ %i.ig, %bb.bz ], [ %i.ig, %.body.i.i.i.i ], [ %i.sm, %bb.fi ], [ %i.jn, %.body17.i.i.i.i ]
  %i.iq = phi ptr [ %i.ih, %bb.bz ], [ %i.ih, %.body.i.i.i.i ], [ %i.sn, %bb.fi ], [ %i.jo, %.body17.i.i.i.i ]
  %i.ir = phi ptr [ %i.ii, %bb.bz ], [ %i.ii, %.body.i.i.i.i ], [ %i.so, %bb.fi ], [ %i.jp, %.body17.i.i.i.i ]
  %i.is = phi ptr [ %i.ij, %bb.bz ], [ %i.ij, %.body.i.i.i.i ], [ %i.sp, %bb.fi ], [ %i.jq, %.body17.i.i.i.i ]
  %i.it = phi ptr [ %i.in, %bb.bz ], [ %i.in, %.body.i.i.i.i ], [ %i.sq, %bb.fi ], [ %i.jr, %.body17.i.i.i.i ]
  %.pn13.i.i.i.i = phi { ptr, i32 } [ %i.iu, %bb.bz ], [ %.pn11.i.i.i.i, %.body.i.i.i.i ], [ %i.su, %bb.fi ], [ %.pn5.i.i.i.i, %.body17.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !14601
  store i8 2, ptr %i.it, align 8, !noalias !14601
  br label %.body.thread.i.i

bb.bz:                                            ; preds = %bb.by
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.iv = load i64, ptr %i.ad, align 8, !range !14603, !noalias !14601, !noundef !27 ; 2 uses
  %i.iw = icmp ne i64 %i.iv, -9223372036854775807
  call void @llvm.assume(i1 %i.iw)
  %i.ix = xor i64 %i.iv, -9223372036854775808     ; 2 uses
  %i.iy = icmp ult i64 %i.ix, 3
  %i.iz = select i1 %i.iy, i64 %i.ix, i64 1       ; 2 uses
  switch i64 %i.iz, label %bb.bx [
    i64 0, label %.thread58.i.i.i
    i64 1, label %bb.cb
    i64 2, label %.thread70.i.i.i.i
  ]

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !14601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !14601
  %i.ja = invoke { ptr, i64 } @_RNvXs2_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CowSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.cd unwind label %bb.cc, !noalias !14602

bb.cc:                                            ; preds = %bb.cb
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #25
          to label %.body.i.i.i.i unwind label %bb.ci, !noalias !14602

bb.cd:                                            ; preds = %bb.cb
  %i.jc = extractvalue { ptr, i64 } %i.ja, 1
  %i.jd = load i64, ptr %i.ac, align 8, !range !43, !alias.scope !14604, !noalias !14601, !noundef !27
  %i.je = icmp eq i64 %i.jd, -1
  br i1 %i.je, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsgGgPqgSfnMH_7storage.exit.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i unwind label %bb.cf, !noalias !14602

bb.cf:                                            ; preds = %bb.ce
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body.i.i.i.i unwind label %bb.cg, !noalias !14602

bb.cg:                                            ; preds = %bb.cf
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !14602
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i: ; preds = %bb.ce
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsgGgPqgSfnMH_7storage.exit.i.i.i.i unwind label %bb.ch, !noalias !14602

.body.i.i.i.i:                                    ; preds = %bb.ch, %bb.cf, %bb.cc
  %.pn11.i.i.i.i = phi { ptr, i32 } [ %i.jb, %bb.cc ], [ %i.jh, %bb.ch ], [ %i.jf, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !14601
  br label %.body.thread.i.i.i

bb.ch:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsgGgPqgSfnMH_7storage.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !14601
  br label %.thread58.i.i.i

bb.ci:                                            ; preds = %.body17.i.i.i.i, %bb.cc
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !14605
  unreachable

.thread70.i.i.i.i:                                ; preds = %bb.ca
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !14601, !nonnull !27, !align !33, !noundef !27 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  store ptr %i.im, ptr %i.jl, align 8, !noalias !14601
  %.sroa.733.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 840
  store ptr %i.ik, ptr %.sroa.733.0..sroa_idx.i.i.i.i, align 8, !noalias !14601
  %.sroa.834.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 848
  store ptr %i.jk, ptr %.sroa.834.0..sroa_idx.i.i.i.i, align 8, !noalias !14601
  %.sroa.935.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  store i8 0, ptr %.sroa.935.0..sroa_idx.i.i.i.i, align 8, !noalias !14601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !14601
  br label %bb.cn

bb.cj:                                            ; preds = %bb.bw
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #26
          to label %.noexc17.i.i.i unwind label %.body.i.i.i, !noalias !14599

.noexc17.i.i.i:                                   ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.bw
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #26
          to label %.noexc18.i.i.i unwind label %.body.i.i.i, !noalias !14599

.noexc18.i.i.i:                                   ; preds = %bb.ck
  unreachable

.body17.i.i.i.i:                                  ; preds = %bb.ff, %.body.i.i.i.i.i
  %i.jm = phi ptr [ %i.ku, %.body.i.i.i.i.i ], [ %i.gc, %bb.ff ]
  %i.jn = phi ptr [ %i.kv, %.body.i.i.i.i.i ], [ %i.gb, %bb.ff ]
  %i.jo = phi ptr [ %i.kw, %.body.i.i.i.i.i ], [ %.phi.trans.insert.i, %bb.ff ]
  %i.jp = phi ptr [ %i.kx, %.body.i.i.i.i.i ], [ %i.gx, %bb.ff ]
  %i.jq = phi ptr [ %i.ky, %.body.i.i.i.i.i ], [ %.phi.trans.insert.i.i, %bb.ff ]
  %i.jr = phi ptr [ %i.kz, %.body.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.ff ]
  %i.js = phi ptr [ %i.lb, %.body.i.i.i.i.i ], [ %i.jt, %bb.ff ]
  %.pn5.i.i.i.i = phi { ptr, i32 } [ %.pn14.pn.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.sf, %bb.ff ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard20estimate_cardinality0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.js) #25
          to label %.body.thread.i.i.i unwind label %bb.ci, !noalias !14605

bb.cl:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !14601
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 12 uses
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !80, !noalias !14606
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !14601
  switch i8 %.pre.i.i.i.i, label %default.unreachable348 [
    i8 0, label %._crit_edge74.i.i.i
    i8 1, label %bb.cr
    i8 2, label %bb.cs
    i8 3, label %bb.ct
    i8 4, label %bb.de
    i8 5, label %bb.dv
    i8 6, label %bb.em
  ]

._crit_edge74.i.i.i:                              ; preds = %bb.cl
  %.phi.trans.insert76.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 848
  %.pre77.i.i.i = load ptr, ptr %.phi.trans.insert76.i.i.i, align 8, !noalias !14606
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 840
  %.pre75.i.i.i = load ptr, ptr %i.jt, align 8, !noalias !14606
  %.pre79.i.i.i = load ptr, ptr %.phi.trans.insert78.i.i.i, align 8, !noalias !14606
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cn
  unreachable

bb.cn:                                            ; preds = %._crit_edge74.i.i.i, %.thread70.i.i.i.i
  %i.ju = phi ptr [ %i.if, %.thread70.i.i.i.i ], [ %i.gc, %._crit_edge74.i.i.i ] ; 6 uses
  %i.jv = phi ptr [ %i.ig, %.thread70.i.i.i.i ], [ %i.gb, %._crit_edge74.i.i.i ] ; 6 uses
  %i.jw = phi ptr [ %i.ih, %.thread70.i.i.i.i ], [ %.phi.trans.insert.i, %._crit_edge74.i.i.i ] ; 6 uses
  %i.jx = phi ptr [ %i.ii, %.thread70.i.i.i.i ], [ %i.gx, %._crit_edge74.i.i.i ] ; 6 uses
  %i.jy = phi ptr [ %i.ij, %.thread70.i.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge74.i.i.i ] ; 6 uses
  %i.jz = phi ptr [ %i.in, %.thread70.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge74.i.i.i ] ; 6 uses
  %i.ka = phi ptr [ %i.ik, %.thread70.i.i.i.i ], [ %.pre79.i.i.i, %._crit_edge74.i.i.i ] ; 7 uses
  %i.kb = phi ptr [ %i.jk, %.thread70.i.i.i.i ], [ %.pre77.i.i.i, %._crit_edge74.i.i.i ] ; 8 uses
  %i.kc = phi ptr [ %i.im, %.thread70.i.i.i.i ], [ %.pre75.i.i.i, %._crit_edge74.i.i.i ] ; 7 uses
  %i.kd = phi ptr [ %.sroa.935.0..sroa_idx.i.i.i.i, %.thread70.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge74.i.i.i ] ; 6 uses
  %i.ke = phi ptr [ %i.jl, %.thread70.i.i.i.i ], [ %i.jt, %._crit_edge74.i.i.i ] ; 6 uses
  %i.kf = load i64, ptr %i.kc, align 8, !range !99, !noalias !14607, !noundef !27 ; 3 uses
  %i.kg = icmp ne i64 %i.kf, 4
  call void @llvm.assume(i1 %i.kg)
  %i.kh = add nsw i64 %i.kf, -2
  %.inv.i.i.i.i.i = icmp samesign ult i64 %i.kf, 2
  %i.ki = select i1 %.inv.i.i.i.i.i, i64 2, i64 %i.kh
  switch i64 %i.ki, label %bb.cm [
    i64 0, label %bb.cp
    i64 1, label %.thread.i.i.i.i.i
    i64 2, label %.thread130.i.i.i.i.i
    i64 3, label %.thread131.i.i.i.i.i
    i64 4, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11dummy_shardNtB2_10DummyShard20estimate_cardinality(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) %i.kb)
          to label %bb.fg unwind label %bb.cq, !noalias !14607

bb.cp:                                            ; preds = %bb.cn
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 864
  store ptr %i.kb, ptr %i.kl, align 8, !noalias !14606
  %.sroa.876.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr %i.kk, ptr %.sroa.876.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14606
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 888
  store ptr %i.ka, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14606
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 898
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 2, !noalias !14606
  br label %bb.ct

.thread.i.i.i.i.i:                                ; preds = %bb.cn
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  store ptr %i.km, ptr %i.kn, align 8, !noalias !14606
  %.sroa.784.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 872
  store ptr %i.ka, ptr %.sroa.784.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14606
  %.sroa.885.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr %i.kb, ptr %.sroa.885.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14606
  %.sroa.1087.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  store i8 0, ptr %.sroa.1087.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !14606
  %3 = insertelement <2 x ptr> poison, ptr %i.km, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.ka, i64 1
  br label %bb.df

.thread130.i.i.i.i.i:                             ; preds = %bb.cn
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  store ptr %i.kc, ptr %i.ko, align 8, !noalias !14606
  %.sroa.796.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 872
  store ptr %i.ka, ptr %.sroa.796.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14606
  %.sroa.897.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr %i.kb, ptr %.sroa.897.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14606
  %.sroa.1099.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  store i8 0, ptr %.sroa.1099.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !14606
  %i.kp = insertelement <2 x ptr> poison, ptr %i.kc, i64 0
  %i.kq = insertelement <2 x ptr> %i.kp, ptr %i.ka, i64 1
  br label %bb.dw

.thread131.i.i.i.i.i:                             ; preds = %bb.cn
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  store ptr %i.kr, ptr %i.ks, align 8, !noalias !14606
  %.sroa.7108.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 872
  store ptr %i.ka, ptr %.sroa.7108.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14606
  %.sroa.8109.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr %i.kb, ptr %.sroa.8109.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14606
  %.sroa.10111.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  store i8 0, ptr %.sroa.10111.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !14606
  br label %bb.en

bb.cq:                                            ; preds = %bb.co
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.body61.i.i.i.i.i, %.body39.i.i.i.i.i, %.body18.i.i.i.i.i, %.body.i.i.i.i.i.i, %bb.cu, %bb.cq
  %i.ku = phi ptr [ %i.ju, %bb.cq ], [ %i.lc, %bb.cu ], [ %i.lz, %.body18.i.i.i.i.i ], [ %i.nx, %.body39.i.i.i.i.i ], [ %i.lc, %.body.i.i.i.i.i.i ], [ %i.pv, %.body61.i.i.i.i.i ]
  %i.kv = phi ptr [ %i.jv, %bb.cq ], [ %i.ld, %bb.cu ], [ %i.ma, %.body18.i.i.i.i.i ], [ %i.ny, %.body39.i.i.i.i.i ], [ %i.ld, %.body.i.i.i.i.i.i ], [ %i.pw, %.body61.i.i.i.i.i ]
  %i.kw = phi ptr [ %i.jw, %bb.cq ], [ %i.le, %bb.cu ], [ %i.mb, %.body18.i.i.i.i.i ], [ %i.nz, %.body39.i.i.i.i.i ], [ %i.le, %.body.i.i.i.i.i.i ], [ %i.px, %.body61.i.i.i.i.i ]
  %i.kx = phi ptr [ %i.jx, %bb.cq ], [ %i.lf, %bb.cu ], [ %i.mc, %.body18.i.i.i.i.i ], [ %i.oa, %.body39.i.i.i.i.i ], [ %i.lf, %.body.i.i.i.i.i.i ], [ %i.py, %.body61.i.i.i.i.i ]
  %i.ky = phi ptr [ %i.jy, %bb.cq ], [ %i.lg, %bb.cu ], [ %i.md, %.body18.i.i.i.i.i ], [ %i.ob, %.body39.i.i.i.i.i ], [ %i.lg, %.body.i.i.i.i.i.i ], [ %i.pz, %.body61.i.i.i.i.i ]
  %i.kz = phi ptr [ %i.jz, %bb.cq ], [ %i.lh, %bb.cu ], [ %i.me, %.body18.i.i.i.i.i ], [ %i.oc, %.body39.i.i.i.i.i ], [ %i.lh, %.body.i.i.i.i.i.i ], [ %i.qa, %.body61.i.i.i.i.i ]
  %i.la = phi ptr [ %i.kd, %bb.cq ], [ %i.li, %bb.cu ], [ %i.mf, %.body18.i.i.i.i.i ], [ %i.od, %.body39.i.i.i.i.i ], [ %i.li, %.body.i.i.i.i.i.i ], [ %i.qb, %.body61.i.i.i.i.i ]
  %i.lb = phi ptr [ %i.ke, %bb.cq ], [ %i.lj, %bb.cu ], [ %i.mg, %.body18.i.i.i.i.i ], [ %i.oe, %.body39.i.i.i.i.i ], [ %i.lj, %.body.i.i.i.i.i.i ], [ %i.qc, %.body61.i.i.i.i.i ]
  %.pn14.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.kt, %bb.cq ], [ %i.ll, %bb.cu ], [ %.pn8.i.i.i.i.i, %.body18.i.i.i.i.i ], [ %.pn4.i.i.i.i.i, %.body39.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i, %.body61.i.i.i.i.i ]
  store i8 2, ptr %i.la, align 8, !noalias !14606
  br label %.body17.i.i.i.i

bb.cr:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #26
          to label %.noexc19.i.i.i.i unwind label %bb.ff, !noalias !14602

.noexc19.i.i.i.i:                                 ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #26
          to label %.noexc20.i.i.i.i unwind label %bb.ff, !noalias !14602

.noexc20.i.i.i.i:                                 ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cp, %bb.cl
  %i.lc = phi ptr [ %i.ju, %bb.cp ], [ %i.gc, %bb.cl ] ; 5 uses
  %i.ld = phi ptr [ %i.jv, %bb.cp ], [ %i.gb, %bb.cl ] ; 4 uses
  %i.le = phi ptr [ %i.jw, %bb.cp ], [ %.phi.trans.insert.i, %bb.cl ] ; 5 uses
  %i.lf = phi ptr [ %i.jx, %bb.cp ], [ %i.gx, %bb.cl ] ; 4 uses
  %i.lg = phi ptr [ %i.jy, %bb.cp ], [ %.phi.trans.insert.i.i, %bb.cl ] ; 5 uses
  %i.lh = phi ptr [ %i.jz, %bb.cp ], [ %.phi.trans.insert.i.i.i, %bb.cl ] ; 5 uses
  %i.li = phi ptr [ %i.kd, %bb.cp ], [ %.phi.trans.insert.i.i.i.i, %bb.cl ] ; 5 uses
  %i.lj = phi ptr [ %i.ke, %bb.cp ], [ %i.jt, %bb.cl ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !14606
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB4_10LocalShard20estimate_cardinality0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.ab, ptr noundef nonnull align 8 %i.lk, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cv unwind label %bb.cu, !noalias !14608

bb.cu:                                            ; preds = %bb.ct
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14606
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBG_10LocalShard20estimate_cardinality0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.lk) #25
          to label %.body.i.i.i.i.i unwind label %bb.dd, !noalias !14608

bb.cv:                                            ; preds = %bb.ct
  %i.lm = load i64, ptr %i.ab, align 8, !range !42, !noalias !14606, !noundef !27
  %i.ln = icmp eq i64 %i.lm, 2
  br i1 %i.ln, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14606
  br label %.thread.i.i.i.i

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i64 56, i1 false), !noalias !14606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14606
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 898
  %i.lp = load i8, ptr %i.lo, align 2, !range !35, !noalias !14606, !noundef !27
  %cond.i.i.i.i.i.i = icmp eq i8 %i.lp, 3
  br i1 %cond.i.i.i.i.i.i, label %bb.cy, label %bb.fg

bb.cy:                                            ; preds = %bb.cx
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 872 ; 3 uses
  invoke void @_RNvXNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB2_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1X_6common15operation_error14OperationErrorEENtNtNtB1k_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lq)
          to label %bb.da unwind label %bb.cz, !noalias !14608

bb.cz:                                            ; preds = %bb.cy
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1N_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lq)
          to label %.body.i.i.i.i.i.i unwind label %bb.db, !noalias !14608

bb.da:                                            ; preds = %bb.cy
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1N_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB2d_6common15operation_error14OperationErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i unwind label %bb.dc, !noalias !14608

bb.db:                                            ; preds = %bb.cz
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !14608
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.dc, %bb.cz
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.lt, %bb.dc ], [ %i.lr, %bb.cz ]
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 896
  store i8 0, ptr %i.lu, align 8, !noalias !14606
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 897
  store i8 0, ptr %i.lv, align 1, !noalias !14606
  br label %.body.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB2d_6common15operation_error14OperationErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i: ; preds = %bb.da
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 896
  store i8 0, ptr %i.lw, align 8, !noalias !14606
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 897
  store i8 0, ptr %i.lx, align 1, !noalias !14606
  br label %bb.fg

bb.dd:                                            ; preds = %.body61.i.i.i.i.i, %.body39.i.i.i.i.i, %.body18.i.i.i.i.i, %bb.cu
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !14608
  unreachable

.body18.i.i.i.i.i:                                ; preds = %bb.ds, %.body.i17.i.i.i.i.i
  %i.lz = phi ptr [ %i.mx, %.body.i17.i.i.i.i.i ], [ %i.gc, %bb.ds ]
  %i.ma = phi ptr [ %i.my, %.body.i17.i.i.i.i.i ], [ %i.gb, %bb.ds ]
  %i.mb = phi ptr [ %i.mz, %.body.i17.i.i.i.i.i ], [ %.phi.trans.insert.i, %bb.ds ]
  %i.mc = phi ptr [ %i.na, %.body.i17.i.i.i.i.i ], [ %i.gx, %bb.ds ]
  %i.md = phi ptr [ %i.nb, %.body.i17.i.i.i.i.i ], [ %.phi.trans.insert.i.i, %bb.ds ]
  %i.me = phi ptr [ %i.nc, %.body.i17.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.ds ]
  %i.mf = phi ptr [ %i.nd, %.body.i17.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %bb.ds ]
  %i.mg = phi ptr [ %i.ne, %.body.i17.i.i.i.i.i ], [ %i.jt, %bb.ds ]
  %i.mh = phi ptr [ %i.ng, %.body.i17.i.i.i.i.i ], [ %i.mi, %bb.ds ]
  %.pn8.i.i.i.i.i = phi { ptr, i32 } [ %.pn4.i.i.i.i.i.i, %.body.i17.i.i.i.i.i ], [ %i.nw, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14606
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11proxy_shardNtBG_10ProxyShard20estimate_cardinality0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.mh) #25
          to label %.body.i.i.i.i.i unwind label %bb.dd, !noalias !14608

bb.de:                                            ; preds = %bb.cl
  %.phi.trans.insert127.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 3 uses
  %.pre128.i.i.i.i.i = load i8, ptr %.phi.trans.insert127.i.i.i.i.i, align 8, !range !35, !noalias !14609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !14606
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14610)
  switch i8 %.pre128.i.i.i.i.i, label %default.unreachable348 [
    i8 0, label %._crit_edge63.i.i.i.i
    i8 1, label %bb.dg
    i8 2, label %bb.dh
    i8 3, label %bb.di
  ]

._crit_edge63.i.i.i.i:                            ; preds = %bb.de
  %.phi.trans.insert65.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 880
  %.pre66.i.i.i.i = load ptr, ptr %.phi.trans.insert65.i.i.i.i, align 8, !noalias !14609
  %i.mj = load <2 x ptr>, ptr %i.mi, align 8, !noalias !14609
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge63.i.i.i.i, %.thread.i.i.i.i.i
  %i.mk = phi ptr [ %i.ju, %.thread.i.i.i.i.i ], [ %i.gc, %._crit_edge63.i.i.i.i ]
  %i.ml = phi ptr [ %i.jv, %.thread.i.i.i.i.i ], [ %i.gb, %._crit_edge63.i.i.i.i ]
  %i.mm = phi ptr [ %i.jw, %.thread.i.i.i.i.i ], [ %.phi.trans.insert.i, %._crit_edge63.i.i.i.i ]
  %i.mn = phi ptr [ %i.jx, %.thread.i.i.i.i.i ], [ %i.gx, %._crit_edge63.i.i.i.i ]
  %i.mo = phi ptr [ %i.jy, %.thread.i.i.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge63.i.i.i.i ]
  %i.mp = phi ptr [ %i.jz, %.thread.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge63.i.i.i.i ]
  %i.mq = phi ptr [ %i.kd, %.thread.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge63.i.i.i.i ]
  %i.mr = phi ptr [ %i.ke, %.thread.i.i.i.i.i ], [ %i.jt, %._crit_edge63.i.i.i.i ]
  %i.ms = phi ptr [ %i.kb, %.thread.i.i.i.i.i ], [ %.pre66.i.i.i.i, %._crit_edge63.i.i.i.i ]
  %i.mt = phi ptr [ %.sroa.1087.0..sroa_idx.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.phi.trans.insert127.i.i.i.i.i, %._crit_edge63.i.i.i.i ]
  %i.mu = phi ptr [ %i.kn, %.thread.i.i.i.i.i ], [ %i.mi, %._crit_edge63.i.i.i.i ]
  %i.mv = phi <2 x ptr> [ %4, %.thread.i.i.i.i.i ], [ %i.mj, %._crit_edge63.i.i.i.i ]
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 888
  store ptr %i.ms, ptr %i.mw, align 8, !noalias !14609
  %.sroa.810.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 904
  store <2 x ptr> %i.mv, ptr %.sroa.810.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14609
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 922
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 2, !noalias !14609
  br label %bb.di

.body.i17.i.i.i.i.i:                              ; preds = %.body.i.i.i.i.i.i.i, %bb.dj
  %.pn4.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.ni, %bb.dj ]
  store i8 2, ptr %i.nf, align 8, !noalias !14609
  br label %.body18.i.i.i.i.i

bb.dg:                                            ; preds = %bb.de
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #26
          to label %.noexc.i.i.i.i.i unwind label %bb.ds, !noalias !14607

.noexc.i.i.i.i.i:                                 ; preds = %bb.dg
  unreachable

bb.dh:                                            ; preds = %bb.de
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #26
          to label %.noexc20.i.i.i.i.i unwind label %bb.ds, !noalias !14607

.noexc20.i.i.i.i.i:                               ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.df, %bb.de
  %i.mx = phi ptr [ %i.mk, %bb.df ], [ %i.gc, %bb.de ] ; 3 uses
  %i.my = phi ptr [ %i.ml, %bb.df ], [ %i.gb, %bb.de ] ; 2 uses
  %i.mz = phi ptr [ %i.mm, %bb.df ], [ %.phi.trans.insert.i, %bb.de ] ; 3 uses
  %i.na = phi ptr [ %i.mn, %bb.df ], [ %i.gx, %bb.de ] ; 2 uses
  %i.nb = phi ptr [ %i.mo, %bb.df ], [ %.phi.trans.insert.i.i, %bb.de ] ; 3 uses
  %i.nc = phi ptr [ %i.mp, %bb.df ], [ %.phi.trans.insert.i.i.i, %bb.de ] ; 3 uses
  %i.nd = phi ptr [ %i.mq, %bb.df ], [ %.phi.trans.insert.i.i.i.i, %bb.de ] ; 3 uses
  %i.ne = phi ptr [ %i.mr, %bb.df ], [ %i.jt, %bb.de ] ; 2 uses
  %i.nf = phi ptr [ %i.mt, %bb.df ], [ %.phi.trans.insert127.i.i.i.i.i, %bb.de ] ; 3 uses
  %i.ng = phi ptr [ %i.mu, %bb.df ], [ %i.mi, %bb.de ]
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB4_10LocalShard20estimate_cardinality0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.aa, ptr noundef nonnull align 8 %i.nh, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dk unwind label %bb.dj, !noalias !14608

bb.dj:                                            ; preds = %bb.di
  %i.ni = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBG_10LocalShard20estimate_cardinality0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.nh) #25
          to label %.body.i17.i.i.i.i.i unwind label %bb.dr, !noalias !14611

bb.dk:                                            ; preds = %bb.di
  %i.nj = load i64, ptr %i.aa, align 8, !range !42, !alias.scope !14610, !noalias !14612, !noundef !27
  %i.nk = icmp eq i64 %i.nj, 2
  br i1 %i.nk, label %bb.dt, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 922
  %i.nm = load i8, ptr %i.nl, align 2, !range !35, !noalias !14609, !noundef !27
  %cond.i.i.i.i.i.i.i = icmp eq i8 %i.nm, 3
  br i1 %cond.i.i.i.i.i.i.i, label %bb.dm, label %bb.du

bb.dm:                                            ; preds = %bb.dl
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 3 uses
  invoke void @_RNvXNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB2_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1X_6common15operation_error14OperationErrorEENtNtNtB1k_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nn)
          to label %bb.do unwind label %bb.dn, !noalias !14611

bb.dn:                                            ; preds = %bb.dm
  %i.no = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1N_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nn)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.dp, !noalias !14611

bb.do:                                            ; preds = %bb.dm
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1N_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB2d_6common15operation_error14OperationErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i unwind label %bb.dq, !noalias !14611

bb.dp:                                            ; preds = %bb.dn
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !14611
  unreachable

bb.dq:                                            ; preds = %bb.do
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.dq, %bb.dn
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.nq, %bb.dq ], [ %i.no, %bb.dn ]
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 920
  store i8 0, ptr %i.nr, align 8, !noalias !14609
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 921
  store i8 0, ptr %i.ns, align 1, !noalias !14609
  br label %.body.i17.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB2d_6common15operation_error14OperationErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i: ; preds = %bb.do
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 920
  store i8 0, ptr %i.nt, align 8, !noalias !14609
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 921
  store i8 0, ptr %i.nu, align 1, !noalias !14609
  br label %bb.du

bb.dr:                                            ; preds = %bb.dj
  %i.nv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !14611
  unreachable

bb.ds:                                            ; preds = %bb.dh, %bb.dg
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i.i.i.i

bb.dt:                                            ; preds = %bb.dk
  store i8 3, ptr %i.nf, align 8, !noalias !14609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14606
  br label %.thread.i.i.i.i

bb.du:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB2d_6common15operation_error14OperationErrorEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i, %bb.dl
  store i8 1, ptr %i.nf, align 8, !noalias !14609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false), !noalias !14606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14606
  br label %bb.fg

.body39.i.i.i.i.i:                                ; preds = %bb.ej, %.body.i28.i.i.i.i.i
  %i.nx = phi ptr [ %i.ov, %.body.i28.i.i.i.i.i ], [ %i.gc, %bb.ej ]
  %i.ny = phi ptr [ %i.ow, %.body.i28.i.i.i.i.i ], [ %i.gb, %bb.ej ]
  %i.nz = phi ptr [ %i.ox, %.body.i28.i.i.i.i.i ], [ %.phi.trans.insert.i, %bb.ej ]
  %i.oa = phi ptr [ %i.oy, %.body.i28.i.i.i.i.i ], [ %i.gx, %bb.ej ]
  %i.ob = phi ptr [ %i.oz, %.body.i28.i.i.i.i.i ], [ %.phi.trans.insert.i.i, %bb.ej ]
  %i.oc = phi ptr [ %i.pa, %.body.i28.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.ej ]
  %i.od = phi ptr [ %i.pb, %.body.i28.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %bb.ej ]
  %i.oe = phi ptr [ %i.pc, %.body.i28.i.i.i.i.i ], [ %i.jt, %bb.ej ]
  %i.of = phi ptr [ %i.pe, %.body.i28.i.i.i.i.i ], [ %i.og, %bb.ej ]
  %.pn4.i.i.i.i.i = phi { ptr, i32 } [ %.pn4.i29.i.i.i.i.i, %.body.i28.i.i.i.i.i ], [ %i.pu, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14606
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtBI_17ForwardProxyShard20estimate_cardinality0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.of) #25
          to label %.body.i.i.i.i.i unwind label %bb.dd, !noalias !14608

bb.dv:                                            ; preds = %bb.cl
  %.phi.trans.insert124.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 3 uses
  %.pre125.i.i.i.i.i = load i8, ptr %.phi.trans.insert124.i.i.i.i.i, align 8, !range !35, !noalias !14613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !14606
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14614)
  switch i8 %.pre125.i.i.i.i.i, label %default.unreachable348 [
    i8 0, label %._crit_edge57.i.i.i.i
    i8 1, label %bb.dx
    i8 2, label %bb.dy
    i8 3, label %bb.dz
  ]

._crit_edge57.i.i.i.i:                            ; preds = %bb.dv
  %.phi.trans.insert59.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 880
  %.pre60.i.i.i.i = load ptr, ptr %.phi.trans.insert59.i.i.i.i, align 8, !noalias !14613
  %i.oh = load <2 x ptr>, ptr %i.og, align 8, !noalias !14613
  br label %bb.dw

bb.dw:                                            ; preds = %._crit_edge57.i.i.i.i, %.thread130.i.i.i.i.i
  %i.oi = phi ptr [ %i.ju, %.thread130.i.i.i.i.i ], [ %i.gc, %._crit_edge57.i.i.i.i ]
  %i.oj = phi ptr [ %i.jv, %.thread130.i.i.i.i.i ], [ %i.gb, %._crit_edge57.i.i.i.i ]
  %i.ok = phi ptr [ %i.jw, %.thread130.i.i.i.i.i ], [ %.phi.trans.insert.i, %._crit_edge57.i.i.i.i ]
  %i.ol = phi ptr [ %i.jx, %.thread130.i.i.i.i.i ], [ %i.gx, %._crit_edge57.i.i.i.i ]
  %i.om = phi ptr [ %i.jy, %.thread130.i.i.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge57.i.i.i.i ]
  %i.on = phi ptr [ %i.jz, %.thread130.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge57.i.i.i.i ]
  %i.oo = phi ptr [ %i.kd, %.thread130.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge57.i.i.i.i ]
  %i.op = phi ptr [ %i.ke, %.thread130.i.i.i.i.i ], [ %i.jt, %._crit_edge57.i.i.i.i ]
  %i.oq = phi ptr [ %i.kb, %.thread130.i.i.i.i.i ], [ %.pre60.i.i.i.i, %._crit_edge57.i.i.i.i ]
  %i.or = phi ptr [ %.sroa.1099.0..sroa_idx.i.i.i.i.i, %.thread130.i.i.i.i.i ], [ %.phi.trans.insert124.i.i.i.i.i, %._crit_edge57.i.i.i.i ]
  %i.os = phi ptr [ %i.ko, %.thread130.i.i.i.i.i ], [ %i.og, %._crit_edge57.i.i.i.i ]
  %i.ot = phi <2 x ptr> [ %i.kq, %.thread130.i.i.i.i.i ], [ %i.oh, %._crit_edge57.i.i.i.i ]
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 888
  store ptr %i.oq, ptr %i.ou, align 8, !noalias !14613
  %.sroa.810.0..sroa_idx.i35.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 904
  store <2 x ptr> %i.ot, ptr %.sroa.810.0..sroa_idx.i35.i.i.i.i.i, align 8, !noalias !14613
  %.sroa.11.0..sroa_idx.i37.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 922
  store i8 0, ptr %.sroa.11.0..sroa_idx.i37.i.i.i.i.i, align 2, !noalias !14613
  br label %bb.dz

.body.i28.i.i.i.i.i:                              ; preds = %.body.i.i32.i.i.i.i.i, %bb.ea
  %.pn4.i29.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i33.i.i.i.i.i, %.body.i.i32.i.i.i.i.i ], [ %i.pg, %bb.ea ]
  store i8 2, ptr %i.pd, align 8, !noalias !14613
  br label %.body39.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dv
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @523) #26
          to label %.noexc41.i.i.i.i.i unwind label %bb.ej, !noalias !14607

.noexc41.i.i.i.i.i:                               ; preds = %bb.dx
  unreachable

bb.dy:                                            ; preds = %bb.dv
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @523) #26
          to label %.noexc42.i.i.i.i.i unwind label %bb.ej, !noalias !14607

.noexc42.i.i.i.i.i:                               ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %bb.dw, %bb.dv
  %i.ov = phi ptr [ %i.oi, %bb.dw ], [ %i.gc, %bb.dv ] ; 3 uses
  %i.ow = phi ptr [ %i.oj, %bb.dw ], [ %i.gb, %bb.dv ] ; 2 uses
  %i.ox = phi ptr [ %i.ok, %bb.dw ], [ %.phi.trans.insert.i, %bb.dv ] ; 3 uses
end_hunk_1
