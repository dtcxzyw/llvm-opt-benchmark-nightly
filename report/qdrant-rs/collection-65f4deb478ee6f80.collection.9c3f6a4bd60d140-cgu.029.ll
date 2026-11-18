Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.029?download=true
inline.NumInlined: 1389
inline.NumDeleted: 677
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtBQ_10LocalShard30submit_update_filter_resolving0s_0EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBU_:bb.a
bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsPYQCUnoTxQ_10collection.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard14resolve_submitNtB8_10LocalShard30submit_update_filter_resolving0s_0Bc_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard14segment_holder6locked19LockedSegmentHolderECsPYQCUnoTxQ_10collection.exit.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 304, i64 noundef 8) #24
  ret void

bb.aa:                                            ; preds = %bb.z, %bb.x, %.body13.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.z ], [ %eh.lpad-body14.i, %.body13.i ], [ %.pn4.i, %bb.x ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 304, i64 noundef 8) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBO_16DiskUsageWatcher20get_free_space_bytes00EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBU_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3369)
  %i.a = invoke noundef nonnull align 8 ptr @_RNvNtCs5QaNqjAn6vc_5shard5quota6global()
          to label %bb.c unwind label %bb.b, !noalias !3369

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00EBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #26
          to label %bb.i unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !noalias !3369, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3369, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3369, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3369, !noundef !5
  %i.k = invoke { i64, i64 } @_RNvMNtNtNtCs5QaNqjAn6vc_5shard5quota7manager7measureNtB4_12QuotaManager15available_bytes(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, i64 noundef %i.j)
          to label %bb.d unwind label %bb.b, !noalias !3369

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00EBO_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00EBO_.exit.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtB6_16DiskUsageWatcher20get_free_space_bytes00Bc_.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00EBO_.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtB6_16DiskUsageWatcher20get_free_space_bytes00Bc_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard18disk_usage_watcherNtBI_16DiskUsageWatcher20get_free_space_bytes00EBO_.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 32, i64 noundef 8) #24
  ret { i64, i64 } %i.k

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.l, %bb.e ], [ %i.b, %bb.b ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 32, i64 noundef 8) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvMs1_Cs20yfr1g8LCf_12object_storeNtBR_9GetResult5bytes00EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i = alloca [32 x i8], align 8          ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3378)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3379
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3378, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3378, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3378, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3378, !noundef !5
  invoke void @_RNvNtCs20yfr1g8LCf_12object_store5local10read_range(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j)
          to label %bb.c unwind label %bb.b, !noalias !3377

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs1_Cs20yfr1g8LCf_12object_storeNtBL_9GetResult5bytes00ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1) #26
          to label %bb.l unwind label %bb.j, !noalias !3377

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.a, align 8, !range !3380, !noalias !3379, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !3379
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.513.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.510.0..sroa_idx.i, i64 32, i1 false), !noalias !3378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3379
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.412.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !3378
  store i64 %i.l, ptr %0, align 8, !alias.scope !3377
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3381)
  %.val.i.i = load i32, ptr %i.b, align 8, !range !15, !alias.scope !3382, !noundef !5
  %i.n = tail call noundef i32 @close(i32 noundef %.val.i.i) #24, !noalias !3383 ; 0 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs1_Cs20yfr1g8LCf_12object_storeNtBL_9GetResult5bytes00ECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.e, !noalias !3377

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.l unwind label %bb.f, !noalias !3377

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !3377
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3379
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !3378
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  store i64 -1, ptr %0, align 8, !alias.scope !3377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3384)
  %.val.i17.i = load i32, ptr %i.b, align 8, !range !15, !alias.scope !3385, !noundef !5
  %i.r = tail call noundef i32 @close(i32 noundef %.val.i17.i) #24, !noalias !3386 ; 0 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs1_Cs20yfr1g8LCf_12object_storeNtBL_9GetResult5bytes00ECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.h, !noalias !3377

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.l unwind label %bb.i, !noalias !3377

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !3377
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs1_Cs20yfr1g8LCf_12object_storeNtBL_9GetResult5bytes00ECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.g, %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RNCNCNvMs1_Cs20yfr1g8LCf_12object_storeNtB9_9GetResult5bytes00CsPYQCUnoTxQ_10collection.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !3377
  unreachable

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs1_Cs20yfr1g8LCf_12object_storeNtBL_9GetResult5bytes00ECsPYQCUnoTxQ_10collection.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RNCNCNvMs1_Cs20yfr1g8LCf_12object_storeNtB9_9GetResult5bytes00CsPYQCUnoTxQ_10collection.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs1_Cs20yfr1g8LCf_12object_storeNtBL_9GetResult5bytes00ECsPYQCUnoTxQ_10collection.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 48, i64 noundef 8) #24
  ret void

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.s, %bb.h ], [ %i.o, %bb.e ], [ %i.k, %bb.b ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 48, i64 noundef 8) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtBR_13SegmentHolder24deduplicate_points_tasks00EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [96 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [104 x i8], align 8               ; 15 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3408)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3409
  store i64 0, ptr %i.g, align 8, !noalias !3409
  %i.h = load i64, ptr %1, align 8, !range !11, !alias.scope !3410, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = trunc nuw i64 %i.h to i1                 ; 2 uses
  %.pn.i.i = load ptr, ptr %i.i, align 8, !alias.scope !3410, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 7 uses
  %i.k = cmpxchg weak ptr %.sroa.0.0.i.i, i64 0, i64 8 acquire monotonic, align 8, !noalias !3409
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i.i, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = invoke noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %.sroa.0.0.i.i, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i.i unwind label %bb.y, !noalias !3411 ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = ptrtoint ptr %.sroa.0.0.i.i to i64       ; 4 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.n)
          to label %.noexc1.i unwind label %bb.y, !noalias !3411

.noexc1.i:                                        ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i.i
  %i.o = or disjoint i64 %i.n, 1                  ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.o)
          to label %.noexc2.i unwind label %bb.y, !noalias !3411

.noexc2.i:                                        ; preds = %.noexc1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3409
  store i64 1, ptr %i.f, align 8, !noalias !3409
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.p, align 8, !noalias !3409
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.316.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, i8 0, i64 56, i1 false), !noalias !3409
  store i8 2, ptr %.sroa.316.0..sroa_idx.i.i, align 8, !noalias !3409
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !3410, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !3410, !noundef !5 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.v, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc2.i
  %i.y = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24 ; 2 uses
  %i.z = select i1 %i.j, ptr @_RNvXs_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB6_12ProxySegmentNtNtNtCs607s0NAIaWN_7segment5entry11entry_point16ReadSegmentEntry13point_version, ptr @_RNvXNtNtCs607s0NAIaWN_7segment7segment5entryNtB4_7SegmentNtNtNtB6_5entry11entry_point16ReadSegmentEntry13point_version
  %i.aa = select i1 %i.j, ptr @_RNvXs2_NtNtCs5QaNqjAn6vc_5shard13proxy_segment13segment_entryNtB7_12ProxySegmentNtNtNtCs607s0NAIaWN_7segment5entry11entry_point25NonAppendableSegmentEntry12delete_point, ptr @_RNvXs1_NtNtCs607s0NAIaWN_7segment7segment5entryNtB7_7SegmentNtNtNtB9_5entry11entry_point25NonAppendableSegmentEntry12delete_point
  br label %bb.c

bb.c:                                             ; preds = %bb.n, %.lr.ph.i.i
  %.sroa.03.054.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.ab, %bb.n ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.054.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.054.i.i, i64 24, i1 false), !noalias !3409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.054.i.i, i64 24, i1 false), !noalias !3409
  %i.ac = invoke { i64, i64 } %i.z(ptr noundef nonnull %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3409 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.c, %bb.p
  %lpad.loopexit.split-lp4 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(104) %i.f) #26
          to label %.body.i.i unwind label %bb.x, !noalias !3412

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3409
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.af = extractvalue { i64, i64 } %i.ac, 1
  %2 = load i64, ptr %i.g, align 8, !noalias !3409, !noundef !5
  %i.ag = add i64 %2, 1
  store i64 %i.ag, ptr %i.g, align 8, !noalias !3409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3409
  invoke void %i.aa(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noundef nonnull %i.y, i64 noundef %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %i.f)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3409

bb.f:                                             ; preds = %bb.e
  %i.ah = load i64, ptr %i.d, align 8, !range !28, !noalias !3409, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ah, -1
  br i1 %.not.i.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.422.0.copyload.i.i = load i8, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !3409
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.526.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.523.0..sroa_idx.i.i, i64 87, i1 false), !noalias !3410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3409
  store i64 %i.ah, ptr %0, align 8, !alias.scope !3412
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.422.0.copyload.i.i, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !alias.scope !3412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3409
  invoke void @_RNvXs_NtNtCslmvYCXbQjWR_6common7counter16hardware_counterNtB4_19HardwareCounterCellNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %bb.j unwind label %bb.h, !noalias !3409

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load i8, ptr %.sroa.316.0..sroa_idx.i.i, align 8, !range !8, !alias.scope !3413, !noalias !3409, !noundef !5
  %i.ak = icmp eq i8 %i.aj, 2
  br i1 %i.ak, label %.body.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %.body.i.i unwind label %bb.l, !noalias !3409

bb.j:                                             ; preds = %bb.g
  %i.am = load i8, ptr %.sroa.316.0..sroa_idx.i.i, align 8, !range !8, !alias.scope !3414, !noalias !3409, !noundef !5
  %i.an = icmp eq i8 %i.am, 2
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection.exit.i.i unwind label %bb.o, !noalias !3409

bb.l:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !3409
  unreachable

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3409
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3409
  %i.aq = icmp eq ptr %i.ab, %i.w
  br i1 %i.aq, label %._crit_edge.i.i, label %bb.c

.body.i.i:                                        ; preds = %bb.s, %bb.r, %bb.o, %bb.i, %bb.h, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn41.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp4, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ai, %bb.h ], [ %i.ai, %bb.i ], [ %i.ar, %bb.o ], [ %i.bf, %bb.s ], [ %i.bf, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsPYQCUnoTxQ_10collection(ptr nonnull %.sroa.0.0.i.i) #26
          to label %.body.i unwind label %bb.x, !noalias !3412

bb.o:                                             ; preds = %bb.u, %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3409
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.n)
          to label %.noexc3.i unwind label %bb.y, !noalias !3411

.noexc3.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection.exit.i.i
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.o)
          to label %.noexc4.i unwind label %bb.y, !noalias !3411

.noexc4.i:                                        ; preds = %.noexc3.i
  %i.as = cmpxchg ptr %.sroa.0.0.i.i, i64 8, i64 0 release monotonic, align 8, !noalias !3409
  %i.at = extractvalue { i64, i1 } %i.as, 1
  br i1 %i.at, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsPYQCUnoTxQ_10collection.exit50.sink.split.i.i, !prof !12

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsPYQCUnoTxQ_10collection.exit50.sink.split.i.i: ; preds = %.noexc7.i, %.noexc4.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %.sroa.0.0.i.i, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.y, !noalias !3405

._crit_edge.i.i:                                  ; preds = %bb.n, %.noexc2.i
  %i.au = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3409 ; 2 uses
  %i.av = icmp ult i64 %i.au, 6
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp samesign ugt i64 %i.au, 4
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3409
  store ptr %i.g, ptr %i.c, align 8, !noalias !3409
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !3409
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !noalias !3409
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !3409
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.r, ptr %i.az, align 8, !noalias !3409
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsPYQCUnoTxQ_10collection, ptr %.sroa.438.0..sroa_idx.i.i, align 8, !noalias !3409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3409
  store ptr @30, ptr %i.b, align 8, !noalias !3409
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 21, ptr %i.ba, align 8, !noalias !3409
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @30, ptr %i.bb, align 8, !noalias !3409
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 21, ptr %i.bc, align 8, !noalias !3409
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @29, ptr %i.bd, align 8, !noalias !3409
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsPYQCUnoTxQ_10collection(ptr noundef nonnull @27, ptr noundef nonnull %i.c, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3412

bb.q:                                             ; preds = %bb.w, %._crit_edge.i.i
  %3 = load i64, ptr %i.g, align 8, !noalias !3409, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.be, align 8, !alias.scope !3412
  store i64 -1, ptr %0, align 8, !alias.scope !3412
  invoke void @_RNvXs_NtNtCslmvYCXbQjWR_6common7counter16hardware_counterNtB4_19HardwareCounterCellNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %bb.t unwind label %bb.r, !noalias !3412

bb.r:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load i8, ptr %.sroa.316.0..sroa_idx.i.i, align 8, !range !8, !alias.scope !3415, !noalias !3409, !noundef !5
  %i.bh = icmp eq i8 %i.bg, 2
  br i1 %i.bh, label %.body.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %.body.i.i unwind label %bb.v, !noalias !3412

bb.t:                                             ; preds = %bb.q
  %i.bj = load i8, ptr %.sroa.316.0..sroa_idx.i.i, align 8, !range !8, !alias.scope !3416, !noalias !3409, !noundef !5
  %i.bk = icmp eq i8 %i.bj, 2
  br i1 %i.bk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection.exit49.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection.exit49.i.i unwind label %bb.o, !noalias !3412

bb.v:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !3412
  unreachable

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3409
  br label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection.exit49.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3409
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.n)
          to label %.noexc6.i unwind label %bb.y, !noalias !3405

.noexc6.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection.exit49.i.i
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.o)
          to label %.noexc7.i unwind label %bb.y, !noalias !3405

.noexc7.i:                                        ; preds = %.noexc6.i
  %i.bn = cmpxchg ptr %.sroa.0.0.i.i, i64 8, i64 0 release monotonic, align 8, !noalias !3412
  %i.bo = extractvalue { i64, i1 } %i.bn, 1
  br i1 %i.bo, label %bb.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsPYQCUnoTxQ_10collection.exit50.sink.split.i.i, !prof !12

bb.x:                                             ; preds = %.body.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !3412
  unreachable

bb.y:                                             ; preds = %.noexc6.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection.exit49.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsPYQCUnoTxQ_10collection.exit50.sink.split.i.i, %.noexc3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter16hardware_counter19HardwareCounterCellECsPYQCUnoTxQ_10collection.exit.i.i, %.noexc1.i, %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock14lock_exclusive.exit.i.i, %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.y, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bq, %bb.y ], [ %.pn41.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtBL_13SegmentHolder24deduplicate_points_tasks00ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1) #26
          to label %bb.ac unwind label %bb.aa, !noalias !3405

bb.z:                                             ; preds = %.noexc7.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock16RwLockWriteGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point12SegmentEntryEL_EECsPYQCUnoTxQ_10collection.exit50.sink.split.i.i, %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3409
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtBL_13SegmentHolder24deduplicate_points_tasks00ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RNvYNCNCNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtBc_13SegmentHolder24deduplicate_points_tasks00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsPYQCUnoTxQ_10collection.exit unwind label %bb.ab

bb.aa:                                            ; preds = %.body.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !3405
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_RNvYNCNCNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtBc_13SegmentHolder24deduplicate_points_tasks00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.z
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 48, i64 noundef 8) #24
  ret void

bb.ac:                                            ; preds = %bb.ab, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bs, %bb.ab ], [ %eh.lpad-body.i, %.body.i ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 48, i64 noundef 8) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvMs7_NtCslmvYCXbQjWR_6common7tar_extINtBR_10BuilderExtIBy_DNtBR_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE6finish00EINtNtNtB22_3ops8function6FnOnceuE9call_onceCsPYQCUnoTxQ_10collection(ptr noalias noundef nonnull align 8 captures(address) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = invoke noundef ptr @_RNvMs6_NtCslmvYCXbQjWR_6common7tar_extINtB5_10BuilderExtINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB5_9WriteSeekNtNtCskKLDkoKarTP_4core6marker4SendEL_EE15blocking_finishCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3419
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 32, i64 noundef 8) #24
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 32, i64 noundef 8) #24
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNCNCNvNtNtCsjZG7hsAZr3B_5tokio2fs6rename15rename_blocking00EINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCsPYQCUnoTxQ_10collection(ptr noalias noundef nonnull align 8 captures(address) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3422
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = invoke noundef ptr @_RINvNtCsG258MDvU3F_3std2fs6renameNtNtB4_4path7PathBufBv_ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3422
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 48, i64 noundef 8) #24
  ret ptr %i.d

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 48, i64 noundef 8) #24
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !29, !noalias !3427, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsPYQCUnoTxQ_10collection.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsPYQCUnoTxQ_10collection(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsPYQCUnoTxQ_10collection.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsPYQCUnoTxQ_10collection.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs3WWrd2JY12C_5hyper5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsPYQCUnoTxQ_10collection(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @120, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs3WWrd2JY12C_5hyper5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsPYQCUnoTxQ_10collection(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs3WWrd2JY12C_5hyper5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @121, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsgOCJwUSa4vG_5tonic6status12ConnectErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsPYQCUnoTxQ_10collection(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @120, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsgOCJwUSa4vG_5tonic6status12ConnectErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsPYQCUnoTxQ_10collection(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsgOCJwUSa4vG_5tonic6status12ConnectErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @122, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsgOCJwUSa4vG_5tonic6status6StatusNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsPYQCUnoTxQ_10collection(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @120, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsgOCJwUSa4vG_5tonic6status6StatusNtNtCskKLDkoKarTP_4core5error5Error7provideCsPYQCUnoTxQ_10collection(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsgOCJwUSa4vG_5tonic6status6StatusNtNtCskKLDkoKarTP_4core5error5Error7type_idCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @123, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsgwvynAR9gqy_2h25error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsPYQCUnoTxQ_10collection(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @120, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsgwvynAR9gqy_2h25error5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsPYQCUnoTxQ_10collection(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsgwvynAR9gqy_2h25error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsPYQCUnoTxQ_10collection(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsgwvynAR9gqy_2h25error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @124, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCsgOCJwUSa4vG_5tonic9transport5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsPYQCUnoTxQ_10collection(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @120, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsgOCJwUSa4vG_5tonic9transport5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsPYQCUnoTxQ_10collection(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

end_hunk_0
