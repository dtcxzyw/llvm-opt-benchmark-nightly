Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.060?download=true
inline.NumInlined: 1411
inline.NumDeleted: 603
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtB1k_10LocalShard30submit_update_filter_resolving0s_0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant:bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 296 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !2908, !noalias !2897, !nonnull !8, !noundef !8
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !2909
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.t, label %.body13.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #15
          to label %.body13.i unwind label %bb.v, !noalias !2897

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 296 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2910)
  call void @llvm.experimental.noalias.scope.decl(metadata !2911)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !2912, !noalias !2897, !nonnull !8, !noundef !8
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !2913
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsl8OoimOLbh_6qdrant.exit.i

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak) #15
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.w, !noalias !2897

bb.v:                                             ; preds = %bb.t
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !2897
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body13.i

.body13.i:                                        ; preds = %bb.w, %bb.t, %bb.s
  %eh.lpad-body14.i = phi { ptr, i32 } [ %i.ap, %bb.w ], [ %i.af, %bb.t ], [ %i.af, %bb.s ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #16
          to label %.body.thread unwind label %bb.x, !noalias !2897

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.d, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.x:                                             ; preds = %bb.ab, %bb.aa, %bb.y, %.thread.i, %.body13.i, %bb.j, %bb.e
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !2897
  unreachable

.thread.i:                                        ; preds = %bb.y, %bb.m, %bb.l, %bb.j, %bb.h
  %.pn17.i = phi { ptr, i32 } [ %i.m, %bb.j ], [ %i.ar, %bb.y ], [ %i.k, %bb.h ], [ %i.n, %bb.l ], [ %i.n, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant(ptr nonnull %i.h) #16
          to label %bb.e unwind label %bb.x, !noalias !2897

bb.y:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(256) %i.b) #16
          to label %.thread.i unwind label %bb.x, !noalias !2897

bb.z:                                             ; preds = %bb.e
  br i1 %.sroa.01.0.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.as) #16
          to label %.body.thread unwind label %bb.x, !noalias !2897

bb.ab:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.c) #16
          to label %bb.aa unwind label %bb.x, !noalias !2897

.body.thread:                                     ; preds = %bb.aa, %.body13.i, %bb.ac
  %eh.lpad-body9 = phi { ptr, i32 } [ %.pn4.i, %bb.aa ], [ %i.at, %bb.ac ], [ %eh.lpad-body14.i, %.body13.i ]
  resume { ptr, i32 } %eh.lpad-body9

bb.ac:                                            ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtBK_10LocalShard30submit_update_filter_resolving0s_0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(304) %i.e) #16
          to label %.body.thread unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtB1i_16DiskUsageWatcher20get_free_space_bytes00ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.01.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  store i64 -1, ptr %0, align 8
  %.not = icmp eq i64 %.sroa.01.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.0.0..sroa_idx, i64 24, i1 false)
  %i.c = invoke { i1, i8 } @_RNvNtNtCsjZG7hsAZr3B_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.k       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  %i.d = invoke noundef nonnull align 8 ptr @_RNvNtCs5QaNqjAn6vc_5shard5quota6global()
          to label %bb.f unwind label %bb.e, !noalias !2916

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #16
          to label %.body.thread unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.d, align 8, !noalias !2916, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2916, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2916, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !2916, !noundef !8
  %i.n = invoke { i64, i64 } @_RNvMNtNtNtCs5QaNqjAn6vc_5shard5quota7manager7measureNtB4_12QuotaManager15available_bytes(ptr noundef nonnull align 8 %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %i.m)
          to label %bb.g unwind label %bb.e, !noalias !2916

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00ECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.n

bb.j:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.body.thread:                                     ; preds = %bb.h, %bb.e, %bb.k
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.r, %bb.k ], [ %i.o, %bb.h ]
  resume { ptr, i32 } %eh.lpad-body9

bb.k:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #16
          to label %.body.thread unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1k_10LocalShard14get_size_stats00ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  %.sroa.422.i = alloca [102 x i8], align 2       ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [224 x i8], align 8               ; 7 uses
  %i.f = alloca [144 x i8], align 8               ; 7 uses
  %i.g = alloca [144 x i8], align 8               ; 4 uses
  %i.h = alloca [104 x i8], align 16              ; 9 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 15 uses
  %.sroa.5 = alloca [48 x i8], align 8            ; 5 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.sroa.4.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.l = load <2 x i32>, ptr %.sroa.4.0..sroa.0.0..sroa_idx, align 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa.0.0..sroa_idx, align 8
  store i32 -1, ptr %.sroa.4.0..sroa.0.0..sroa_idx, align 8
  %.not = icmp eq i32 %.sroa.4.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store <2 x i32> %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = invoke { i1, i8 } @_RNvNtNtCsjZG7hsAZr3B_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.ar      ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2959, !noalias !2960, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !range !28, !alias.scope !2959, !noalias !2960, !noundef !8
  %i.r = invoke noundef align 8 ptr @_RNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder6lockedNtB2_19LockedSegmentHolder12try_read_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, i64 noundef %i.o, i32 noundef %i.q)
          to label %bb.g unwind label %bb.f, !noalias !2960 ; 6 uses

bb.e:                                             ; preds = %bb.j, %bb.f
  %.pn33.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.i, %bb.j ], [ %i.s, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtBK_10LocalShard14get_size_stats00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #16
          to label %.body.thread unwind label %bb.ak, !noalias !2960

bb.f:                                             ; preds = %bb.t, %.noexc45.i, %.thread59.i, %bb.i, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.422.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2961
  invoke void @_RINvMsm_NtCskKLDkoKarTP_4core5arrayAuj3_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENCINvMBN_BK_10wrap_mut_1uNCNvXNtNtCs3Sd3Uuv2szn_7tinyvec5array18const_generic_implAB1r_Bz_NtB2D_5Array7default0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b)
          to label %bb.l unwind label %bb.k, !noalias !2960

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2961
  %i.t = load i64, ptr %i.n, align 8, !alias.scope !2959, !noalias !2960, !noundef !8
  %i.u = load i32, ptr %i.p, align 8, !range !28, !alias.scope !2959, !noalias !2960, !noundef !8
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError7timeoutReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, i64 noundef %i.t, i32 noundef %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 14)
          to label %bb.al unwind label %bb.f, !noalias !2960

bb.j:                                             ; preds = %.body.i, %bb.k
  %.pn33.pn.i = phi { ptr, i32 } [ %.pn33.i, %.body.i ], [ %i.v, %bb.k ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant(ptr nonnull %i.r) #16
          to label %bb.e unwind label %bb.ak, !noalias !2960

bb.k:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !2961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2961
  %.sroa.422.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.422.i, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(96) %.sroa.422.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !2961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(102) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(102) %.sroa.422.i, i64 102, i1 false), !noalias !2961
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.422.i)
  store i16 0, ptr %i.h, align 16, !noalias !2961
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  invoke void @_RNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtB5_13SegmentHolder4iter(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.g, ptr noundef nonnull align 8 %i.w)
          to label %bb.m unwind label %.loopexit.split-lp76.i, !noalias !2960

.body.i:                                          ; preds = %bb.ah, %bb.ab, %bb.y, %.loopexit.split-lp76.i, %.loopexit75.i
  %.pn33.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.ab ], [ %i.bp, %bb.y ], [ %i.by, %bb.ah ], [ %lpad.loopexit77.i, %.loopexit75.i ], [ %lpad.loopexit.split-lp78.i, %.loopexit.split-lp76.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs607s0NAIaWN_7segment10data_types8tiny_map7TinyMapNtNtCsexYYUdYSQU6_5alloc6string6StringjEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(104) %i.h) #16
          to label %bb.j unwind label %bb.ak, !noalias !2960

.loopexit75.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit.i.i, %.noexc43.i, %.noexc42.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %bb.r, %bb.o
  %lpad.loopexit77.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp76.i:                           ; preds = %bb.l
  %lpad.loopexit.split-lp78.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false), !noalias !2961
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsl8OoimOLbh_6qdrant.exit.i, %bb.m
  %3 = phi <4 x i64> [ zeroinitializer, %bb.m ], [ %6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsl8OoimOLbh_6qdrant.exit.i ] ; 3 uses
  %i.ab = load i64, ptr %i.f, align 8, !range !13, !alias.scope !2962, !noalias !2961, !noundef !8
  %.not.i.i = icmp eq i64 %i.ab, 2
  br i1 %.not.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.noexc.i unwind label %.loopexit75.i, !noalias !2960 ; 2 uses

.noexc.i:                                         ; preds = %bb.o
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %.not4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not4.i.i, label %bb.p, label %.thread65.i

bb.p:                                             ; preds = %.noexc.i
  store i64 2, ptr %i.f, align 8, !alias.scope !2962, !noalias !2961
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.ae = load i64, ptr %i.x, align 8, !range !13, !alias.scope !2963, !noalias !2964, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.ae, 2
  br i1 %.not.i.i.i, label %.thread59.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterjNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.x)
          to label %bb.s unwind label %.loopexit75.i, !noalias !2960 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ag = extractvalue { ptr, ptr } %i.af, 0
  %.not31.i = icmp eq ptr %i.ag, null
  br i1 %.not31.i, label %.thread59.i, label %.thread65.i

.thread65.i:                                      ; preds = %bb.s, %.noexc.i
  %.pn72.i = phi { ptr, ptr } [ %i.af, %bb.s ], [ %i.ac, %.noexc.i ]
  %.pn2.i71.i = extractvalue { ptr, ptr } %.pn72.i, 1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn2.i71.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2961
  %i.ah = load i64, ptr %.pn2.i71.i, align 8, !range !7, !noalias !2960, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn2.i71.i, i64 8
  %i.aj = trunc nuw i64 %i.ah to i1
  %.pn.i = load ptr, ptr %i.ai, align 8, !noalias !2960, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.011.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16 ; 7 uses
  %i.ak = load atomic i64, ptr %.sroa.011.0.i monotonic, align 8, !noalias !2960 ; 4 uses
  %i.al = and i64 %i.ak, 8
  %i.am = icmp ne i64 %i.al, 0
  %i.an = icmp ugt i64 %i.ak, -17
  %or.cond.i.i.i = or i1 %i.an, %i.am
  br i1 %or.cond.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, !prof !26

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i: ; preds = %.thread65.i
  %i.ao = add nuw i64 %i.ak, 16
  %i.ap = cmpxchg weak ptr %.sroa.011.0.i, i64 %i.ak, i64 %i.ao acquire monotonic, align 8, !noalias !2960
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %.noexc42.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, !prof !27

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, %.thread65.i
  %i.ar = invoke noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %.sroa.011.0.i, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %.noexc42.i unwind label %.loopexit75.i, !noalias !2960 ; 0 uses

.noexc42.i:                                       ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i
  %i.as = ptrtoint ptr %.sroa.011.0.i to i64      ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.as)
          to label %.noexc43.i unwind label %.loopexit75.i, !noalias !2960

.noexc43.i:                                       ; preds = %.noexc42.i
  %i.at = or disjoint i64 %i.as, 1                ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.at)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i unwind label %.loopexit75.i, !noalias !2960

.thread59.i:                                      ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2961
  %i.au = load <2 x i64>, ptr %i.h, align 16, !noalias !2959 ; 2 uses
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5.0..sroa_idx16, i64 48, i1 false), !noalias !2959
  %.sroa.6.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6.0..sroa_idx17, i64 40, i1 false), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2961
  %i.av = ptrtoint ptr %i.r to i64                ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.av)
          to label %.noexc45.i unwind label %bb.f, !noalias !2960

.noexc45.i:                                       ; preds = %.thread59.i
  %i.aw = or disjoint i64 %i.av, 1
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.aw)
          to label %.noexc46.i unwind label %bb.f, !noalias !2960

.noexc46.i:                                       ; preds = %.noexc45.i
  %i.ax = atomicrmw sub ptr %i.r, i64 16 release, align 8, !noalias !2960
  %i.ay = and i64 %i.ax, -14
  %i.az = icmp eq i64 %i.ay, 18
  br i1 %i.az, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i, !prof !17

bb.t:                                             ; preds = %.noexc46.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.f, !noalias !2960

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.t, %.noexc46.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2965)
  call void @llvm.experimental.noalias.scope.decl(metadata !2966)
  call void @llvm.experimental.noalias.scope.decl(metadata !2967)
  call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  %i.ba = load ptr, ptr %i.j, align 8, !alias.scope !2969, !noalias !2960, !nonnull !8, !noundef !8
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !2970
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEE9drop_slowB2h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #15
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.v, !noalias !2960

bb.v:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  call void @llvm.experimental.noalias.scope.decl(metadata !2972)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !2973, !noalias !2960, !nonnull !8, !noundef !8
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !2974
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.w, label %.body.thread

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be) #15
          to label %.body.thread unwind label %bb.x, !noalias !2960

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2975)
  call void @llvm.experimental.noalias.scope.decl(metadata !2976)
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !2977, !noalias !2960, !nonnull !8, !noundef !8
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !2978
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %.sink.split, label %bb.aq

bb.x:                                             ; preds = %bb.w
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !2960
  unreachable

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i: ; preds = %.noexc43.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %i.bo = select i1 %i.aj, ptr @_RNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB6_12ProxySegmentNtNtNtCs607s0NAIaWN_7segment5entry11entry_point16ReadSegmentEntry9size_info, ptr @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry9size_info
  invoke void %i.bo(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.e, ptr noundef nonnull %i.bn)
          to label %bb.z unwind label %bb.y, !noalias !2960

bb.y:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant(ptr nonnull %.sroa.011.0.i) #16
          to label %.body.i unwind label %bb.ak, !noalias !2960

bb.z:                                             ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.as)
          to label %.noexc48.i unwind label %.loopexit.split-lp.i, !noalias !2960

.noexc48.i:                                       ; preds = %bb.z
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.at)
          to label %.noexc49.i unwind label %.loopexit.split-lp.i, !noalias !2960

.noexc49.i:                                       ; preds = %.noexc48.i
  %i.bq = atomicrmw sub ptr %.sroa.011.0.i, i64 16 release, align 8, !noalias !2960
  %i.br = and i64 %i.bq, -14
  %i.bs = icmp eq i64 %i.br, 18
  br i1 %i.bs, label %bb.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i, !prof !17

bb.aa:                                            ; preds = %.noexc49.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %.sroa.011.0.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i unwind label %.loopexit.split-lp.i, !noalias !2960

.loopexit.i:                                      ; preds = %bb.af, %bb.ad
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp.i:                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i, %bb.aa, %.noexc48.i, %bb.z
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(224) %i.e) #16
          to label %.body.i unwind label %bb.ak, !noalias !2960

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.aa, %.noexc49.i
  %4 = load <6 x i64>, ptr %i.y, align 8, !noalias !2961
  %5 = shufflevector <6 x i64> %4, <6 x i64> poison, <4 x i32> <i32 0, i32 4, i32 5, i32 1>
  %6 = add <4 x i64> %5, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2961
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types14VectorDataInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z)
          to label %bb.ac unwind label %.loopexit.split-lp.i, !noalias !2960

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !2961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2961
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aj, %bb.ac
  %i.bt = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types14VectorDataInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.ae unwind label %.loopexit.i, !noalias !2960 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bu = extractvalue { ptr, ptr } %i.bt, 0      ; 2 uses
  %.not32.i = icmp eq ptr %i.bu, null
  br i1 %.not32.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bv = extractvalue { ptr, ptr } %i.bt, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !2960, !noundef !8
  %i.bx = invoke noundef nonnull align 8 ptr @_RINvMs_NtNtCs607s0NAIaWN_7segment10data_types8tiny_mapINtB5_7TinyMapNtNtCsexYYUdYSQU6_5alloc6string6StringjE21get_or_insert_defaultB14_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu)
          to label %bb.aj unwind label %.loopexit.i, !noalias !2960 ; 2 uses

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2961
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtBT_5types16PayloadIndexInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.ah, !noalias !2960

bb.ah:                                            ; preds = %bb.ag
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types14VectorDataInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %.body.i unwind label %bb.ai, !noalias !2960

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.ag
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment5types14VectorDataInfoEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsl8OoimOLbh_6qdrant.exit.i unwind label %.loopexit75.i, !noalias !2960

bb.ai:                                            ; preds = %bb.ah
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !2960
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11SegmentInfoECsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtB1z_5types16PayloadIndexInfoEECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2961
  br label %bb.n

bb.aj:                                            ; preds = %bb.af
  %i.ca = load i64, ptr %i.bx, align 8, !noalias !2960, !noundef !8
  %i.cb = add i64 %i.ca, %i.bw
  store i64 %i.cb, ptr %i.bx, align 8, !noalias !2960
  br label %bb.ad

bb.ak:                                            ; preds = %bb.ab, %bb.y, %.body.i, %bb.j, %bb.e
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !2960
  unreachable

bb.al:                                            ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !2959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2961
  call void @llvm.experimental.noalias.scope.decl(metadata !2979)
  call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  call void @llvm.experimental.noalias.scope.decl(metadata !2981)
  call void @llvm.experimental.noalias.scope.decl(metadata !2982)
  %i.cd = load ptr, ptr %i.j, align 8, !alias.scope !2983, !noalias !2960, !nonnull !8, !noundef !8
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !2984
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEE9drop_slowB2h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #15
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i unwind label %bb.an, !noalias !2960

bb.an:                                            ; preds = %bb.am
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2985)
  call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !2987, !noalias !2960, !nonnull !8, !noundef !8
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !2988
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.ao, label %.body.thread

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ch) #15
          to label %.body.thread unwind label %bb.ap, !noalias !2960

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i: ; preds = %bb.am, %bb.al
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2989)
  call void @llvm.experimental.noalias.scope.decl(metadata !2990)
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !2991, !noalias !2960, !nonnull !8, !noundef !8
  %i.cn = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !2992
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %.sink.split, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !2960
  unreachable

.sink.split:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i
  %.sink = phi ptr [ %i.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %i.cl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i ]
  %i.cq = phi <2 x i64> [ %i.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ <i64 undef, i64 -2>, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i ]
  %7 = phi <4 x i64> [ %3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i ]
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexuEE9drop_slowCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sink) #15
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.cr = phi <2 x i64> [ %i.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ <i64 undef, i64 -2>, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i ], [ %i.cq, %.sink.split ]
  %8 = phi <4 x i64> [ %3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEEECsl8OoimOLbh_6qdrant.exit.i.i52.i ], [ %7, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store <2 x i64> %i.cr, ptr %0, align 8
  %.sroa.5.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i64> %8, ptr %.sroa.618.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.body.thread:                                     ; preds = %bb.ao, %bb.an, %bb.w, %bb.v, %bb.e, %bb.ar
  %eh.lpad-body21 = phi { ptr, i32 } [ %.pn33.pn.pn.i, %bb.e ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %i.cg, %bb.an ], [ %i.bd, %bb.v ], [ %i.bd, %bb.w ], [ %i.cg, %bb.ao ]
  resume { ptr, i32 } %eh.lpad-body21

bb.ar:                                            ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtBK_10LocalShard14get_size_stats00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #16
          to label %.body.thread unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsjZG7hsAZr3B_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB1k_10LocalShard18get_telemetry_data00ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [48 x i8], align 8            ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [376 x i8], align 8               ; 7 uses
  %i.i = alloca [376 x i8], align 8               ; 7 uses
  %.sroa.6.i = alloca [96 x i8], align 8          ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [144 x i8], align 8               ; 4 uses
  %i.n = alloca [144 x i8], align 8               ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [56 x i8], align 8                ; 14 uses
  %i.r = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.4.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa.0.0..sroa_idx, align 8 ; 2 uses
  store i32 -1, ptr %.sroa.4.0..sroa.0.0..sroa_idx, align 8
  %.not = icmp eq i32 %.sroa.4.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i64 %.sroa.01.0.copyload, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.5.0..sroa.0.0..sroa_idx, i64 44, i1 false)
  %i.s = invoke { i1, i8 } @_RNvNtNtCsjZG7hsAZr3B_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.aw      ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2999)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3000
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i64, ptr %i.q, align 8, !alias.scope !2999, !noalias !3001, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !range !28, !alias.scope !2999, !noalias !3001, !noundef !8
  %i.x = invoke noundef align 8 ptr @_RNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder6lockedNtB2_19LockedSegmentHolder12try_read_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t, i64 noundef %i.u, i32 noundef %i.w)
          to label %bb.f unwind label %bb.e, !noalias !3001 ; 6 uses

.body57.i:                                        ; preds = %bb.as, %bb.an, %.body.i, %bb.i, %bb.e
  %.pn32.pn.i = phi { ptr, i32 } [ %.pn32.i, %.body.i ], [ %i.ac, %bb.i ], [ %i.dm, %bb.an ], [ %i.y, %bb.e ], [ %i.du, %bb.as ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtBK_10LocalShard18get_telemetry_data00ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.q) #16
          to label %.body.thread unwind label %bb.ak, !noalias !3001

bb.e:                                             ; preds = %.invoke.i, %bb.l, %.noexc.i, %bb.k, %bb.h, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3000
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  invoke void @_RNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtB5_13SegmentHolder4iter(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.m, ptr noundef nonnull align 8 %i.z)
          to label %bb.j unwind label %bb.i, !noalias !3001

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3000
  %i.aa = load i64, ptr %i.q, align 8, !alias.scope !2999, !noalias !3001, !noundef !8
  %i.ab = load i32, ptr %i.v, align 8, !range !28, !alias.scope !2999, !noalias !3001, !noundef !8
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError7timeoutReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, i64 noundef %i.aa, i32 noundef %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 15)
          to label %bb.av unwind label %bb.e, !noalias !3001

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant(ptr nonnull %i.x) #16
          to label %.body57.i unwind label %bb.ak, !noalias !3001

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.n, ptr noundef nonnull align 8 dereferenceable(144) %i.m, i64 144, i1 false), !noalias !3000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3000
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2s_INtNtB2w_5chain5ChainINtNtNtNtB8_11collections5btree3map4IterjB13_EB3F_ENCNvMs3_NtB17_14segment_holderNtB4C_13SegmentHolder4iter0ENCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9telemetryNtB5B_10LocalShard18get_telemetry_data000EE9from_iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(144) %i.n)
          to label %bb.k unwind label %bb.i, !noalias !3001

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3000
  %i.ad = ptrtoint ptr %i.x to i64                ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ad)
          to label %.noexc.i unwind label %bb.e, !noalias !3001

.noexc.i:                                         ; preds = %bb.k
  %i.ae = or disjoint i64 %i.ad, 1
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ae)
          to label %.noexc39.i unwind label %bb.e, !noalias !3001

.noexc39.i:                                       ; preds = %.noexc.i
  %i.af = atomicrmw sub ptr %i.x, i64 16 release, align 8, !noalias !3001
  %i.ag = and i64 %i.af, -14
  %i.ah = icmp eq i64 %i.ag, 18
  br i1 %i.ah, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i, !prof !17

bb.l:                                             ; preds = %.noexc39.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.e, !noalias !3001

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.l, %.noexc39.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3000
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !3000, !noundef !8 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 576460752303423488
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3000
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.aj, i1 noundef zeroext false, i64 noundef 8, i64 noundef 376)
          to label %bb.n unwind label %bb.m, !noalias !3001

.body.i:                                          ; preds = %.thread.i, %bb.x, %bb.q, %bb.m
  %.pn32.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.q ], [ %.pn3070.i, %.thread.i ], [ %i.al, %bb.m ], [ %i.cp, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #16
          to label %.body57.i unwind label %bb.ak, !noalias !3001

bb.m:                                             ; preds = %bb.y, %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant.exit.i
  %i.am = load i64, ptr %i.e, align 8, !range !7, !noalias !3000, !noundef !8
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !31, !noalias !3000, !noundef !8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.p, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !3000
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #20
          to label %bb.au unwind label %bb.m, !noalias !3001

bb.p:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !3000, !nonnull !8, !noundef !8
  %i.at = icmp samesign ule i64 %i.aj, %i.ap
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3000
  store i64 %i.ap, ptr %i.l, align 8, !noalias !3000
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %i.as, ptr %i.au, align 8, !noalias !3000
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 0, ptr %i.av, align 8, !noalias !3000
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !3000, !nonnull !8, !noundef !8 ; 2 uses
  %i.ay = load i64, ptr %i.ai, align 8, !noalias !3000, !noundef !8 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ay, 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx.i
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
end_hunk_0
