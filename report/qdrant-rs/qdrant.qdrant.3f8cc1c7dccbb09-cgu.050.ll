Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.050?download=true
inline.NumInlined: 2233
inline.NumDeleted: 990
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtBQ_10LocalShard30submit_update_filter_resolving0s_0EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsl8OoimOLbh_6qdrant:bb.a
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.t)
          to label %.noexc9.i unwind label %bb.c, !noalias !3152

.noexc9.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsl8OoimOLbh_6qdrant.exit.i
  %i.u = or disjoint i64 %i.t, 1
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.u)
          to label %.noexc10.i unwind label %bb.c, !noalias !3152

.noexc10.i:                                       ; preds = %.noexc9.i
  %i.v = atomicrmw sub ptr %i.d, i64 16 release, align 8, !noalias !3152
  %i.w = and i64 %i.v, -14
  %i.x = icmp eq i64 %i.w, 18
  br i1 %i.x, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i, !prof !19

bb.n:                                             ; preds = %.noexc10.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.c, !noalias !3152

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.n, %.noexc10.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3156)
  call void @llvm.experimental.noalias.scope.decl(metadata !3157)
  call void @llvm.experimental.noalias.scope.decl(metadata !3158)
  %i.y = load ptr, ptr %i.c, align 8, !alias.scope !3159, !noalias !3152, !nonnull !6, !noundef !6
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !3160
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEE9drop_slowB2h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.p, !noalias !3152

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3161)
  call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !3163, !noalias !3152, !nonnull !6, !noundef !6
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !3164
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.q, label %.body13.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #24
          to label %.body13.i unwind label %bb.s, !noalias !3152

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3165)
  call void @llvm.experimental.noalias.scope.decl(metadata !3166)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !3167, !noalias !3152, !nonnull !6, !noundef !6
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !3168
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsl8OoimOLbh_6qdrant.exit.i

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.t, !noalias !3152

bb.s:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3152
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body13.i

.body13.i:                                        ; preds = %bb.t, %bb.q, %bb.p
  %eh.lpad-body14.i = phi { ptr, i32 } [ %i.al, %bb.t ], [ %i.ab, %bb.q ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #25
          to label %bb.aa unwind label %bb.u, !noalias !3152

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f)
          to label %_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtB8_10LocalShard30submit_update_filter_resolving0s_0Csl8OoimOLbh_6qdrant.exit unwind label %bb.z

bb.u:                                             ; preds = %bb.y, %bb.x, %bb.v, %.thread.i, %.body13.i, %bb.g, %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3152
  unreachable

.thread.i:                                        ; preds = %bb.v, %bb.j, %bb.i, %bb.g, %bb.e
  %.pn17.i = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.an, %bb.v ], [ %i.g, %bb.e ], [ %i.j, %bb.i ], [ %i.j, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant(ptr nonnull %i.d) #25
          to label %bb.b unwind label %bb.u, !noalias !3152

bb.v:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(256) %i.b) #25
          to label %.thread.i unwind label %bb.u, !noalias !3152

bb.w:                                             ; preds = %bb.b
  br i1 %.sroa.01.0.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ao) #25
          to label %bb.aa unwind label %bb.u, !noalias !3152

bb.y:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %1) #25
          to label %bb.x unwind label %bb.u, !noalias !3152

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsl8OoimOLbh_6qdrant.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtB8_10LocalShard30submit_update_filter_resolving0s_0Csl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsl8OoimOLbh_6qdrant.exit.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 304, i64 noundef 8) #23
  ret void

bb.aa:                                            ; preds = %bb.z, %bb.x, %.body13.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.z ], [ %eh.lpad-body14.i, %.body13.i ], [ %.pn4.i, %bb.x ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 304, i64 noundef 8) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBO_16DiskUsageWatcher20get_free_space_bytes00EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsl8OoimOLbh_6qdrant(ptr noalias noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  %i.a = invoke noundef nonnull align 8 ptr @_RNvNtCs5QaNqjAn6vc_5shard5quota6global()
          to label %bb.c unwind label %bb.b, !noalias !3171

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #25
          to label %bb.i unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !noalias !3171, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3171, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3171, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3171, !noundef !6
  %i.k = invoke { i64, i64 } @_RNvMNtNtNtCs5QaNqjAn6vc_5shard5quota7manager7measureNtB4_12QuotaManager15available_bytes(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, i64 noundef %i.j)
          to label %bb.d unwind label %bb.b, !noalias !3171

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtB6_16DiskUsageWatcher20get_free_space_bytes00Csl8OoimOLbh_6qdrant.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00ECsl8OoimOLbh_6qdrant.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtB6_16DiskUsageWatcher20get_free_space_bytes00Csl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00ECsl8OoimOLbh_6qdrant.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 32, i64 noundef 8) #23
  ret { i64, i64 } %i.k

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.l, %bb.e ], [ %i.b, %bb.b ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 32, i64 noundef 8) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtBQ_10LocalShard14get_size_stats00EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  %.sroa.422.i = alloca [102 x i8], align 2       ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [224 x i8], align 8               ; 7 uses
  %i.f = alloca [144 x i8], align 8               ; 7 uses
  %i.g = alloca [144 x i8], align 8               ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3215)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3215, !noalias !3214, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !range !44, !alias.scope !3215, !noalias !3214, !noundef !6
  %i.n = invoke noundef align 8 ptr @_RNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder6lockedNtB2_19LockedSegmentHolder12try_read_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.k, i32 noundef %i.m)
          to label %bb.d unwind label %bb.c, !noalias !3214 ; 6 uses

bb.b:                                             ; preds = %bb.g, %bb.c
  %.pn33.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.i, %bb.g ], [ %i.o, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtBK_10LocalShard14get_size_stats00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #25
          to label %bb.ap unwind label %bb.ah, !noalias !3214

bb.c:                                             ; preds = %bb.q, %.noexc45.i, %.thread59.i, %bb.f, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.422.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3216
  invoke void @_RINvMsm_NtCskKLDkoKarTP_4core5arrayAuj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENCINvMBN_BK_10wrap_mut_1uNCNvXNtNtCs3Sd3Uuv2szn_7tinyvec5array18const_generic_implAB1r_Bz_NtB2D_5Array7default0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !3214

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3216
  %i.p = load i64, ptr %i.j, align 8, !alias.scope !3215, !noalias !3214, !noundef !6
  %i.q = load i32, ptr %i.l, align 8, !range !44, !alias.scope !3215, !noalias !3214, !noundef !6
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError7timeoutReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, i64 noundef %i.p, i32 noundef %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 14)
          to label %bb.ai unwind label %bb.c, !noalias !3214

bb.g:                                             ; preds = %.body.i, %bb.h
  %.pn33.pn.i = phi { ptr, i32 } [ %.pn33.i, %.body.i ], [ %i.r, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant(ptr nonnull %i.n) #25
          to label %bb.b unwind label %bb.ah, !noalias !3214

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !3216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3216
  %.sroa.422.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.422.i, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(96) %.sroa.422.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !3216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(102) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(102) %.sroa.422.i, i64 102, i1 false), !noalias !3216
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.422.i)
  store i16 0, ptr %i.h, align 8, !noalias !3216
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke void @_RNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtB5_13SegmentHolder4iter(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.g, ptr noundef nonnull align 8 %i.s)
          to label %bb.j unwind label %.loopexit.split-lp76.i, !noalias !3214

.body.i:                                          ; preds = %bb.ae, %bb.y, %bb.v, %.loopexit.split-lp76.i, %.loopexit75.i
  %.pn33.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.y ], [ %i.bk, %bb.v ], [ %i.bt, %bb.ae ], [ %lpad.loopexit77.i, %.loopexit75.i ], [ %lpad.loopexit.split-lp78.i, %.loopexit.split-lp76.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs607s0NAIaWN_7segment10data_types8tiny_map7TinyMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.h) #25
          to label %bb.g unwind label %bb.ah, !noalias !3214

.loopexit75.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit.i.i, %.noexc43.i, %.noexc42.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %bb.o, %bb.l
  %lpad.loopexit77.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp76.i:                           ; preds = %bb.i
  %lpad.loopexit.split-lp78.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false), !noalias !3216
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsl8OoimOLbh_6qdrant.exit.i, %bb.j
  %2 = phi <4 x i64> [ zeroinitializer, %bb.j ], [ %5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  %i.x = load i64, ptr %i.f, align 8, !range !14, !alias.scope !3217, !noalias !3216, !noundef !6
  %.not.i.i = icmp eq i64 %i.x, 2
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc.i unwind label %.loopexit75.i, !noalias !3214 ; 2 uses

.noexc.i:                                         ; preds = %bb.l
  %i.z = extractvalue { ptr, ptr } %i.y, 0
  %.not4.i.i = icmp eq ptr %i.z, null
  br i1 %.not4.i.i, label %bb.m, label %.thread65.i

bb.m:                                             ; preds = %.noexc.i
  store i64 2, ptr %i.f, align 8, !alias.scope !3217, !noalias !3216
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.aa = load i64, ptr %i.t, align 8, !range !14, !alias.scope !3218, !noalias !3219, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.aa, 2
  br i1 %.not.i.i.i, label %.thread59.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t)
          to label %bb.p unwind label %.loopexit75.i, !noalias !3214 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0
  %.not31.i = icmp eq ptr %i.ac, null
  br i1 %.not31.i, label %.thread59.i, label %.thread65.i

.thread65.i:                                      ; preds = %bb.p, %.noexc.i
  %.pn72.i = phi { ptr, ptr } [ %i.ab, %bb.p ], [ %i.y, %.noexc.i ]
  %.pn2.i71.i = extractvalue { ptr, ptr } %.pn72.i, 1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn2.i71.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3216
  %i.ad = load i64, ptr %.pn2.i71.i, align 8, !range !9, !noalias !3214, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn2.i71.i, i64 8
  %i.af = trunc nuw i64 %i.ad to i1
  %.pn.i = load ptr, ptr %i.ae, align 8, !noalias !3214, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.011.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16 ; 7 uses
  %i.ag = load atomic i64, ptr %.sroa.011.0.i monotonic, align 8, !noalias !3214 ; 4 uses
  %i.ah = and i64 %i.ag, 8
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = icmp ugt i64 %i.ag, -17
  %or.cond.i.i.i = or i1 %i.aj, %i.ai
  br i1 %or.cond.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, !prof !42

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i: ; preds = %.thread65.i
  %i.ak = add nuw i64 %i.ag, 16
  %i.al = cmpxchg weak ptr %.sroa.011.0.i, i64 %i.ag, i64 %i.ak acquire monotonic, align 8, !noalias !3214
  %i.am = extractvalue { i64, i1 } %i.al, 1
  br i1 %i.am, label %.noexc42.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, !prof !43

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, %.thread65.i
  %i.an = invoke noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %.sroa.011.0.i, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %.noexc42.i unwind label %.loopexit75.i, !noalias !3214 ; 0 uses

.noexc42.i:                                       ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i
  %i.ao = ptrtoint ptr %.sroa.011.0.i to i64      ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.ao)
          to label %.noexc43.i unwind label %.loopexit75.i, !noalias !3214

.noexc43.i:                                       ; preds = %.noexc42.i
  %i.ap = or disjoint i64 %i.ao, 1                ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.ap)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i unwind label %.loopexit75.i, !noalias !3214

.thread59.i:                                      ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false), !noalias !3215
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i64> %2, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !3214, !noalias !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3216
  %i.aq = ptrtoint ptr %i.n to i64                ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.aq)
          to label %.noexc45.i unwind label %bb.c, !noalias !3214

.noexc45.i:                                       ; preds = %.thread59.i
  %i.ar = or disjoint i64 %i.aq, 1
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ar)
          to label %.noexc46.i unwind label %bb.c, !noalias !3214

.noexc46.i:                                       ; preds = %.noexc45.i
  %i.as = atomicrmw sub ptr %i.n, i64 16 release, align 8, !noalias !3214
  %i.at = and i64 %i.as, -14
  %i.au = icmp eq i64 %i.at, 18
  br i1 %i.au, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i, !prof !19

bb.q:                                             ; preds = %.noexc46.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.c, !noalias !3214

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.q, %.noexc46.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3220)
  call void @llvm.experimental.noalias.scope.decl(metadata !3221)
  call void @llvm.experimental.noalias.scope.decl(metadata !3222)
  call void @llvm.experimental.noalias.scope.decl(metadata !3223)
  %i.av = load ptr, ptr %1, align 8, !alias.scope !3224, !noalias !3214, !nonnull !6, !noundef !6
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !3225
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEE9drop_slowB2h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.s, !noalias !3214

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3226)
  call void @llvm.experimental.noalias.scope.decl(metadata !3227)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !3228, !noalias !3214, !nonnull !6, !noundef !6
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !3229
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.t, label %bb.ap

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #24
          to label %bb.ap unwind label %bb.u, !noalias !3214

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3230)
  call void @llvm.experimental.noalias.scope.decl(metadata !3231)
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !3232, !noalias !3214, !nonnull !6, !noundef !6
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !3233
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %.invoke, label %bb.ao

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3214
  unreachable

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i: ; preds = %.noexc43.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %i.bj = select i1 %i.af, ptr @_RNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB6_12ProxySegmentNtNtNtCs607s0NAIaWN_7segment5entry11entry_point16ReadSegmentEntry9size_info, ptr @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry9size_info
  invoke void %i.bj(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.e, ptr noundef nonnull %i.bi)
          to label %bb.w unwind label %bb.v, !noalias !3214

bb.v:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant(ptr nonnull %.sroa.011.0.i) #25
          to label %.body.i unwind label %bb.ah, !noalias !3214

bb.w:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ao)
          to label %.noexc48.i unwind label %.loopexit.split-lp.i, !noalias !3214

.noexc48.i:                                       ; preds = %bb.w
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ap)
          to label %.noexc49.i unwind label %.loopexit.split-lp.i, !noalias !3214

.noexc49.i:                                       ; preds = %.noexc48.i
  %i.bl = atomicrmw sub ptr %.sroa.011.0.i, i64 16 release, align 8, !noalias !3214
  %i.bm = and i64 %i.bl, -14
  %i.bn = icmp eq i64 %i.bm, 18
  br i1 %i.bn, label %bb.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i, !prof !19

bb.x:                                             ; preds = %.noexc49.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %.sroa.011.0.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i unwind label %.loopexit.split-lp.i, !noalias !3214

.loopexit.i:                                      ; preds = %bb.ac, %bb.aa
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i, %bb.x, %.noexc48.i, %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(224) %i.e) #25
          to label %.body.i unwind label %bb.ah, !noalias !3214

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.x, %.noexc49.i
  %3 = load <6 x i64>, ptr %i.u, align 8, !noalias !3216
  %4 = shufflevector <6 x i64> %3, <6 x i64> poison, <4 x i32> <i32 0, i32 4, i32 5, i32 1>
  %5 = add <4 x i64> %4, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3216
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types14VectorDataInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v)
          to label %bb.z unwind label %.loopexit.split-lp.i, !noalias !3214

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !3216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3216
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %bb.z
  %i.bo = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types14VectorDataInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.ab unwind label %.loopexit.i, !noalias !3214 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 2 uses
  %.not32.i = icmp eq ptr %i.bp, null
  br i1 %.not32.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.br = load i64, ptr %i.bq, align 8, !noalias !3214, !noundef !6
  %i.bs = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs607s0NAIaWN_7segment10data_types8tiny_mapINtB5_7TinyMapNtNtCsexYYUdYSQU6_5alloc6string6StringjE21get_or_insert_defaultB14_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp)
          to label %bb.ag unwind label %.loopexit.i, !noalias !3214 ; 2 uses

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3216
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBT_5types16PayloadIndexInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.ae, !noalias !3214

bb.ae:                                            ; preds = %bb.ad
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types14VectorDataInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %.body.i unwind label %bb.af, !noalias !3214

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.ad
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types14VectorDataInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsl8OoimOLbh_6qdrant.exit.i unwind label %.loopexit75.i, !noalias !3214

bb.af:                                            ; preds = %bb.ae
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3214
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3216
  br label %bb.k

bb.ag:                                            ; preds = %bb.ac
  %i.bv = load i64, ptr %i.bs, align 8, !noalias !3214, !noundef !6
  %i.bw = add i64 %i.bv, %i.br
  store i64 %i.bw, ptr %i.bs, align 8, !noalias !3214
  br label %bb.aa

bb.ah:                                            ; preds = %bb.y, %bb.v, %.body.i, %bb.g, %bb.b
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3214
  unreachable

bb.ai:                                            ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !3215
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2, ptr %i.bz, align 8, !alias.scope !3214, !noalias !3215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3237)
  %i.ca = load ptr, ptr %1, align 8, !alias.scope !3238, !noalias !3214, !nonnull !6, !noundef !6
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !3239
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEE9drop_slowB2h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i unwind label %bb.ak, !noalias !3214

bb.ak:                                            ; preds = %bb.aj
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3241)
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !3242, !noalias !3214, !nonnull !6, !noundef !6
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !noalias !3243
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ce) #24
          to label %bb.ap unwind label %bb.am, !noalias !3214

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i: ; preds = %bb.aj, %bb.ai
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3245)
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !3246, !noalias !3214, !nonnull !6, !noundef !6
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !3247
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %.invoke, label %bb.ao

.invoke:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.cm = phi ptr [ %i.bd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.ci, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i ]
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cm) #24
          to label %bb.ao unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !3214
  unreachable

bb.an:                                            ; preds = %.invoke
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 8) #23
  ret void

bb.ap:                                            ; preds = %bb.an, %bb.al, %bb.ak, %bb.t, %bb.s, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.co, %bb.an ], [ %i.cd, %bb.ak ], [ %i.ay, %bb.s ], [ %i.ay, %bb.t ], [ %i.cd, %bb.al ], [ %.pn33.pn.pn.i, %bb.b ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 8) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtBQ_10LocalShard18get_telemetry_data00EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [376 x i8], align 8               ; 7 uses
  %i.j = alloca [376 x i8], align 8               ; 7 uses
  %.sroa.6.i = alloca [96 x i8], align 8          ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.019.i = alloca [56 x i8], align 8        ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [144 x i8], align 8               ; 4 uses
  %i.o = alloca [144 x i8], align 8               ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3256
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %1, align 8, !alias.scope !3255, !noalias !3254, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !range !44, !alias.scope !3255, !noalias !3254, !noundef !6
  %i.v = invoke noundef align 8 ptr @_RNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder6lockedNtB2_19LockedSegmentHolder12try_read_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, i64 noundef %i.s, i32 noundef %i.u)
          to label %bb.c unwind label %bb.b, !noalias !3254 ; 6 uses

.body57.i:                                        ; preds = %bb.ap, %bb.ak, %.body.i, %bb.f, %bb.b
  %.pn32.pn.i = phi { ptr, i32 } [ %.pn32.i, %.body.i ], [ %i.aa, %bb.f ], [ %i.dm, %bb.ak ], [ %i.w, %bb.b ], [ %i.dv, %bb.ap ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtBK_10LocalShard18get_telemetry_data00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #25
          to label %bb.av unwind label %bb.ah, !noalias !3254

bb.b:                                             ; preds = %.invoke.i, %bb.i, %.noexc.i, %bb.h, %bb.e, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3256
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  invoke void @_RNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtB5_13SegmentHolder4iter(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.n, ptr noundef nonnull align 8 %i.x)
          to label %bb.g unwind label %bb.f, !noalias !3254

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3256
  %i.y = load i64, ptr %1, align 8, !alias.scope !3255, !noalias !3254, !noundef !6
  %i.z = load i32, ptr %i.t, align 8, !range !44, !alias.scope !3255, !noalias !3254, !noundef !6
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError7timeoutReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, i64 noundef %i.y, i32 noundef %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 15)
          to label %bb.as unwind label %bb.b, !noalias !3254

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
end_hunk_0
