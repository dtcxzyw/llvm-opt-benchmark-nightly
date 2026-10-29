Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.030?download=true
inline.NumInlined: 3562
inline.NumDeleted: 1643
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_doneINtB5_12TryMaybeDoneNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1n_15ShardReplicaSet19local_memory_report0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant:bb.a

bb.bw:                                            ; preds = %bb.bv
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportNtNtNtB1N_10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %bb.cc unwind label %bb.bx, !noalias !6371

bb.bx:                                            ; preds = %bb.bw
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body75.thread.i.i

bb.by:                                            ; preds = %bb.bt
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6371
  unreachable

.body75.i.i:                                      ; preds = %bb.bq, %bb.bp
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pr209.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !noalias !6361
  %cond.i79.i.i = icmp eq i8 %.pr209.i.i, 3
  br i1 %cond.i79.i.i, label %bb.bz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBG_10LocalShard13memory_report0ECsl8OoimOLbh_6qdrant.exit.i.i

bb.bz:                                            ; preds = %.body75.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dr = load i8, ptr %i.dq, align 8, !range !24, !noalias !6361, !noundef !11
  %cond.i.i80.i.i = icmp eq i8 %i.dr, 3
  br i1 %cond.i.i80.i.i, label %bb.ca, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBG_10LocalShard13memory_report0ECsl8OoimOLbh_6qdrant.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsPYQCUnoTxQ_10collection6common15memory_reporter22CollectionMemoryReportNtNtNtB1N_10operations5types15CollectionErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBG_10LocalShard13memory_report0ECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.w, !noalias !6362

bb.cb:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6369
  store i8 3, ptr %i.dc, align 8, !noalias !6369
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.934.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1036.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1138.i.i.i)
  br label %bb.cg

bb.cc:                                            ; preds = %bb.bw, %bb.bv, %bb.bo
  %i.dt = phi ptr [ %i.cz, %bb.bo ], [ %i.dc, %bb.bv ], [ %i.dc, %bb.bw ]
  %.sroa.831.0.i.i.i = phi i64 [ 0, %bb.bo ], [ %.sroa.831.0.copyload33.i.i.i, %bb.bv ], [ %.sroa.831.0.copyload33.i.i.i, %bb.bw ]
  %.sroa.728.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bo ], [ %.sroa.728.0.copyload30.i.i.i, %bb.bv ], [ %.sroa.728.0.copyload30.i.i.i, %bb.bw ]
  %.sroa.523.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bo ], [ %.sroa.523.0.copyload25.i.i.i, %bb.bv ], [ %.sroa.523.0.copyload25.i.i.i, %bb.bw ]
  %.sroa.3.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bo ], [ %.sroa.3.0.copyload21.i.i.i, %bb.bv ], [ %.sroa.3.0.copyload21.i.i.i, %bb.bw ]
  %.sroa.018.0.i.i.i = phi i64 [ 0, %bb.bo ], [ %i.di, %bb.bv ], [ %i.di, %bb.bw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9122.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false), !noalias !6361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.626.i.i.i, i64 16, i1 false), !noalias !6361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.934.i.i.i, i64 32, i1 false), !noalias !6361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1036.i.i.i, i64 32, i1 false), !noalias !6361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1138.i.i.i, i64 32, i1 false), !noalias !6361
  store i8 1, ptr %i.dt, align 8, !noalias !6369
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.934.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1036.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1138.i.i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBG_10LocalShard13memory_report0ECsl8OoimOLbh_6qdrant.exit37.i.i

bb.cd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBG_10LocalShard13memory_report0ECsl8OoimOLbh_6qdrant.exit37.i.i, %bb.q
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i.i

bb.ce:                                            ; preds = %_RNvMs5_NtCskKLDkoKarTP_4core3pinINtB5_3PinQINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1U_15ShardReplicaSet19local_memory_report0EE3setCsl8OoimOLbh_6qdrant.exit, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.cn

bb.cf:                                            ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #23
  unreachable

bb.cg:                                            ; preds = %bb.cb, %bb.ab, %bb.at, %bb.bj, %bb.j
  %.sink.i.i.ph = phi i8 [ 3, %bb.j ], [ 4, %bb.ab ], [ 5, %bb.at ], [ 6, %bb.bj ], [ 7, %bb.cb ]
  store i8 %.sink.i.i.ph, ptr %i.k, align 8, !noalias !6361
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9122.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i)
  store i64 -2, ptr %0, align 8
  br label %bb.cn

bb.ch:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBG_10LocalShard13memory_report0ECsl8OoimOLbh_6qdrant.exit37.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9122.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.i.i, i64 32, i1 false)
  store i8 1, ptr %i.k, align 8, !noalias !6361
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9122.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i)
  %i.dv = icmp eq i64 %.sroa.0123.0.i.i, -1
  br i1 %i.dv, label %bb.ci, label %bb.ck

.body:                                            ; preds = %bb.ci
  %i.dw = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %1, align 8, !noalias !6372
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #21
          to label %common.resume unwind label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.6128.0.i.i, ptr %i.e, align 8
  %.sroa.3.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3, i64 16, i1 false)
  %.sroa.3.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.8142.0.i.i, ptr %.sroa.3.sroa.4.0..sroa_idx, align 8
  %.sroa.3.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5, i64 16, i1 false)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1Q_15ShardReplicaSet19local_memory_report0EECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %1)
          to label %bb.cl unwind label %.body, !noalias !6372

bb.cj:                                            ; preds = %bb.ck
  %i.dx = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0123.0.i.i, ptr %1, align 8, !noalias !6373
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.6128.0.i.i, ptr %.sroa.539.0..sroa_idx, align 8, !noalias !6373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3, i64 16, i1 false)
  store ptr %.sroa.8142.0.i.i, ptr %i.k, align 8, !noalias !6373
  %.sroa.8.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx47, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5, i64 16, i1 false)
  %.sroa.9.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %.sroa.10156.0.i.i, ptr %.sroa.9.0..sroa_idx49, align 8, !noalias !6373
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %.sroa.11165.0.i.i, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !6373
  %.sroa.1154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1154.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.3, i64 32, i1 false)
  %.sroa.1256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1256.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.4, i64 32, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.5, i64 32, i1 false)
  br label %common.resume

bb.ck:                                            ; preds = %bb.ch
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1Q_15ShardReplicaSet19local_memory_report0EECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %1)
          to label %_RNvMs5_NtCskKLDkoKarTP_4core3pinINtB5_3PinQINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1U_15ShardReplicaSet19local_memory_report0EE3setCsl8OoimOLbh_6qdrant.exit unwind label %bb.cj, !noalias !6373

_RNvMs5_NtCskKLDkoKarTP_4core3pinINtB5_3PinQINtNtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_done12TryMaybeDoneNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1U_15ShardReplicaSet19local_memory_report0EE3setCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ck
  store i64 %.sroa.0123.0.i.i, ptr %1, align 8, !noalias !6373
  %.sroa.539.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.6128.0.i.i, ptr %.sroa.539.0..sroa_idx40, align 8, !noalias !6373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.3, i64 16, i1 false)
  store ptr %.sroa.8142.0.i.i, ptr %i.k, align 8, !noalias !6373
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx48, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5, i64 16, i1 false)
  %.sroa.9.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %.sroa.10156.0.i.i, ptr %.sroa.9.0..sroa_idx50, align 8, !noalias !6373
  %.sroa.10.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %.sroa.11165.0.i.i, ptr %.sroa.10.0..sroa_idx52, align 8, !noalias !6373
  %.sroa.1154.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1154.0..sroa_idx55, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.3, i64 32, i1 false)
  %.sroa.1256.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1256.0..sroa_idx57, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.4, i64 32, i1 false)
  %.sroa.13.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.5, i64 32, i1 false)
  br label %bb.ce

bb.cl:                                            ; preds = %bb.ci
  store i64 -9223372036854775806, ptr %1, align 8, !noalias !6372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.cn

bb.cm:                                            ; preds = %.body
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cn:                                            ; preds = %bb.cg, %bb.cl, %bb.ce
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_doneINtB5_12TryMaybeDoneNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1n_15ShardReplicaSet19local_optimizations0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.017.sroa.0.i.i.sroa.4 = alloca [40 x i8], align 8 ; 6 uses
  %.sroa.6170.i.i = alloca [16 x i8], align 8     ; 5 uses
  %.sroa.025.sroa.4.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [216 x i8], align 8               ; 6 uses
  %i.n = alloca [216 x i8], align 8               ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 4 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 6 uses
  %i.u = load i64, ptr %1, align 8, !range !21, !noundef !11
  switch i64 %i.u, label %default.unreachable69 [
    i64 0, label %bb.b
    i64 1, label %bb.dr
    i64 2, label %bb.ds
  ], !prof !60

default.unreachable69:                            ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017.sroa.0.i.i.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6170.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.025.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6447
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 4 uses
  %i.w = load i8, ptr %i.v, align 8, !range !24, !noalias !6448, !noundef !11
  switch i8 %i.w, label %default.unreachable69 [
    i8 0, label %bb.g
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6448
  br label %bb.w

common.resume:                                    ; preds = %.body, %bb.dv, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.d ], [ %i.ir, %bb.dv ], [ %i.iq, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.dq, %bb.e
  store i8 0, ptr %i.x, align 4, !noalias !6448
  store i8 2, ptr %i.v, align 8, !noalias !6448
  br label %common.resume

bb.e:                                             ; preds = %bb.dp, %bb.t
  store i8 0, ptr %i.bn, align 1, !noalias !6448
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 292 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4, !range !34, !noalias !6448, !noundef !11
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.dq, label %bb.d

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.aw, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6448
  br label %bb.t

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 291
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 290
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 289 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i16 0, ptr %i.af, align 1, !noalias !6448
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !6448, !nonnull !11, !align !12, !noundef !11
  store ptr %i.ai, ptr %i.ag, align 8, !noalias !6448
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload.i.i = load i8, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !6448
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 25
  %.sroa.9.0.copyload.i.i = load i8, ptr %.sroa.9.0..sroa_idx.i.i, align 1, !noalias !6448
  %i.aj = trunc nuw i8 %.sroa.8.0.copyload.i.i to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load <2 x i64>, ptr %i.ab, align 8, !noalias !6448
  store <2 x i64> %i.al, ptr %i.ak, align 8, !noalias !6448
  %i.am = trunc nuw i8 %.sroa.9.0.copyload.i.i to i1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.an, align 8, !alias.scope !6449, !noalias !6448
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8, !alias.scope !6449, !noalias !6448
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.ap, align 8, !alias.scope !6449, !noalias !6448
  store i8 1, ptr %i.ac, align 4, !noalias !6448
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.aq, align 8, !alias.scope !6450, !noalias !6448
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %i.ar, align 8, !alias.scope !6450, !noalias !6448
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %i.as, align 8, !alias.scope !6450, !noalias !6448
  store i8 1, ptr %i.ad, align 1, !noalias !6448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6448
  store i64 0, ptr %i.s, align 8, !alias.scope !6451, !noalias !6448
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.at, align 8, !alias.scope !6451, !noalias !6448
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %i.au, align 8, !alias.scope !6451, !noalias !6448
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6453)
  br i1 %i.am, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %i.av, align 8, !alias.scope !6452, !noalias !6448
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.i, !noalias !6454

bb.i:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i.i unwind label %bb.j, !noalias !6454

bb.j:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6454
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.m unwind label %bb.f, !noalias !6455

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !alias.scope !6456, !noalias !6448
  br label %bb.m

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body90.i.i

.body90.i.i:                                      ; preds = %bb.o, %bb.l
  %eh.lpad-body91.i.i = phi { ptr, i32 } [ %i.ay, %bb.l ], [ %i.bc, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6448
  br label %bb.s

bb.m:                                             ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i.i
  store i8 1, ptr %i.ae, align 2, !noalias !6448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6448
  store i64 0, ptr %i.r, align 8, !alias.scope !6457, !noalias !6448
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8, !alias.scope !6457, !noalias !6448
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %i.ba, align 8, !alias.scope !6457, !noalias !6448
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6458)
  call void @llvm.experimental.noalias.scope.decl(metadata !6459)
  br i1 %i.aj, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 -1, ptr %i.bb, align 8, !alias.scope !6458, !noalias !6448
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.o, !noalias !6460

bb.o:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body90.i.i unwind label %bb.p, !noalias !6460

bb.p:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6460
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.r unwind label %bb.l, !noalias !6455

bb.q:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !6461, !noalias !6448
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i.i
  store i8 1, ptr %i.af, align 1, !noalias !6448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6448
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i8 0, i64 32, i1 false), !noalias !6448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6448
  %i.bf = load ptr, ptr %i.ag, align 8, !noalias !6448, !nonnull !11, !align !12, !noundef !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 432
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.bg, ptr %i.bh, align 8, !noalias !6448
  %.sroa.8.0..sroa_idx143.i.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i8 0, ptr %.sroa.8.0..sroa_idx143.i.i, align 8, !noalias !6448
  br label %bb.w

bb.s:                                             ; preds = %bb.dn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i.i, %.body90.i.i
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_doneINtB5_12TryMaybeDoneNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1n_15ShardReplicaSet19local_optimizations0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant:bb.a
_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i103.i.i: ; preds = %bb.bc, %bb.bb
  %i.ec = ptrtoint ptr %i.dy to i64               ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.ec)
          to label %bb.bd unwind label %bb.bi, !noalias !6455

bb.bd:                                            ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i103.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.val74.i.i, i64 24
  %.val78.i.i = load i64, ptr %i.ed, align 8, !range !28, !noalias !6455, !noundef !11
  %i.ee = icmp eq i64 %.val78.i.i, 0
  br i1 %i.ee, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ec)
          to label %.noexc106.i.i unwind label %bb.bi, !noalias !6455

.noexc106.i.i:                                    ; preds = %bb.be
  %i.ef = cmpxchg ptr %i.dy, i8 1, i8 0 release monotonic, align 1, !noalias !6455
  %i.eg = extractvalue { i8, i1 } %i.ef, 1
  br i1 %i.eg, label %bb.bj, label %bb.bf, !prof !26

bb.bf:                                            ; preds = %.noexc106.i.i
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.dy, i1 noundef zeroext false)
          to label %bb.bj unwind label %bb.bi, !noalias !6455

bb.bg:                                            ; preds = %bb.bd
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.ec)
          to label %.noexc108.i.i unwind label %bb.bi, !noalias !6455

.noexc108.i.i:                                    ; preds = %bb.bg
  %i.eh = cmpxchg ptr %i.dy, i8 1, i8 0 release monotonic, align 1, !noalias !6455
  %i.ei = extractvalue { i8, i1 } %i.eh, 1
  br i1 %i.ei, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker12TrackerStateEECsl8OoimOLbh_6qdrant.exit110.i.i, label %bb.bh, !prof !26

bb.bh:                                            ; preds = %.noexc108.i.i
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.dy, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker12TrackerStateEECsl8OoimOLbh_6qdrant.exit110.i.i unwind label %bb.bi, !noalias !6455

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i103.i.i, %bb.bc
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bj:                                            ; preds = %bb.bf, %.noexc106.i.i
  %.val82.i.i = load i64, ptr %i.dd, align 8, !range !16, !noalias !6448, !noundef !11
  %.not.i.i = icmp eq i64 %.val82.i.i, 0
  br i1 %.not.i.i, label %.backedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6448
  invoke void @_RNvMs0_NtCs5QaNqjAn6vc_5shard7trackerNtB5_7Tracker15to_optimization(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sink6.i.i.i)
          to label %bb.bm unwind label %bb.bl, !noalias !6455

bb.bl:                                            ; preds = %bb.bk
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body111.i.i

.body111.i.i:                                     ; preds = %bb.bo, %bb.bl
  %eh.lpad-body112.i.i = phi { ptr, i32 } [ %i.ek, %bb.bl ], [ %i.eo, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6448
  br label %bb.by

bb.bm:                                            ; preds = %bb.bk
  %i.el = load i64, ptr %i.df, align 8, !alias.scope !6471, !noalias !6448, !noundef !11 ; 3 uses
  %i.em = load i64, ptr %i.de, align 8, !range !13, !alias.scope !6471, !noalias !6448, !noundef !11
  %i.en = icmp eq i64 %i.el, %i.em
  br i1 %i.en, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationE8grow_oneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %bb.bq unwind label %bb.bo, !noalias !6472

bb.bo:                                            ; preds = %bb.bn
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.m) #21
          to label %.body111.i.i unwind label %bb.bp, !noalias !6455

bb.bp:                                            ; preds = %bb.bo
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6455
  unreachable

bb.bq:                                            ; preds = %bb.bn, %bb.bm
  %i.eq = load ptr, ptr %i.dg, align 8, !alias.scope !6471, !noalias !6448, !nonnull !11, !noundef !11
  %i.er = getelementptr inbounds nuw [216 x i8], ptr %i.eq, i64 %i.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.er, ptr noundef nonnull align 8 dereferenceable(216) %i.m, i64 216, i1 false), !noalias !6455
  %i.es = add i64 %i.el, 1
  store i64 %i.es, ptr %i.df, align 8, !alias.scope !6471, !noalias !6448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6448
  br label %.backedge

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker12TrackerStateEECsl8OoimOLbh_6qdrant.exit110.i.i: ; preds = %bb.bh, %.noexc108.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6448
  invoke void @_RNvMs0_NtCs5QaNqjAn6vc_5shard7trackerNtB5_7Tracker15to_optimization(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sink6.i.i.i)
          to label %bb.bs unwind label %bb.br, !noalias !6455

bb.br:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker12TrackerStateEECsl8OoimOLbh_6qdrant.exit110.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body113.i.i

.body113.i.i:                                     ; preds = %bb.bu, %bb.br
  %eh.lpad-body114.i.i = phi { ptr, i32 } [ %i.et, %bb.br ], [ %i.ex, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6448
  br label %bb.by

bb.bs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker12TrackerStateEECsl8OoimOLbh_6qdrant.exit110.i.i
  %i.eu = load i64, ptr %i.di, align 8, !alias.scope !6473, !noalias !6448, !noundef !11 ; 3 uses
  %i.ev = load i64, ptr %i.dh, align 8, !range !13, !alias.scope !6473, !noalias !6448, !noundef !11
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationE8grow_oneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dh)
          to label %bb.bw unwind label %bb.bu, !noalias !6474

bb.bu:                                            ; preds = %bb.bt
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.n) #21
          to label %.body113.i.i unwind label %bb.bv, !noalias !6455

bb.bv:                                            ; preds = %bb.bu
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6455
  unreachable

bb.bw:                                            ; preds = %bb.bt, %bb.bs
  %i.ez = load ptr, ptr %i.dj, align 8, !alias.scope !6473, !noalias !6448, !nonnull !11, !noundef !11
  %i.fa = getelementptr inbounds nuw [216 x i8], ptr %i.ez, i64 %i.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.fa, ptr noundef nonnull align 8 dereferenceable(216) %i.n, i64 216, i1 false), !noalias !6455
  %i.fb = add i64 %i.eu, 1
  store i64 %i.fb, ptr %i.di, align 8, !alias.scope !6473, !noalias !6448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6448
  br label %.backedge

.backedge:                                        ; preds = %bb.bw, %bb.bq, %bb.bj
  br label %bb.as

bb.bx:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dl, %.body134.i.i, %bb.ct, %bb.cs, %bb.cd, %bb.by, %bb.aw, %bb.x
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6455
  unreachable

bb.by:                                            ; preds = %.body113.i.i, %.body111.i.i, %bb.bi, %bb.aq
  %.pn56.pn.i.i = phi { ptr, i32 } [ %i.dc, %bb.aq ], [ %eh.lpad-body114.i.i, %.body113.i.i ], [ %i.ej, %bb.bi ], [ %eh.lpad-body112.i.i, %.body111.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker10TrackerLogEECsl8OoimOLbh_6qdrant(ptr nonnull %i.cv) #21
          to label %bb.av unwind label %bb.bx, !noalias !6455

bb.bz:                                            ; preds = %bb.ba
  %i.fd = load i64, ptr %i.l, align 8, !range !15, !noalias !6448, !noundef !11
  %.not41.i.i = icmp eq i64 %i.fd, -1
  br i1 %.not41.i.i, label %bb.cu, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !6448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6448
  %i.fe = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false), !noalias !6448
  %i.ff = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val83.i.i = load i64, ptr %i.ff, align 8, !noalias !6448, !noundef !11 ; 4 uses
  %i.fg = icmp ult i64 %.val83.i.i, 192153584101141163
  call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !6448, !noundef !11
  %i.fj = add i64 %i.fi, %.val83.i.i
  store i64 %i.fj, ptr %i.fh, align 8, !noalias !6448
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val84.i.i = load ptr, ptr %i.fk, align 8, !noalias !6448, !nonnull !11, !noundef !11 ; 4 uses
  %.idx.i.i = mul nuw nsw i64 %.val83.i.i, 48
  %i.fl = getelementptr inbounds nuw i8, ptr %.val84.i.i, i64 %.idx.i.i ; 2 uses
  %i.fm = icmp eq i64 %.val83.i.i, 0
  br i1 %i.fm, label %._crit_edge.i.i, label %.lr.ph190.i.i

.lr.ph190.i.i:                                    ; preds = %bb.ca
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.promoted191.i.i = load i64, ptr %i.fn, align 8, !noalias !6448
  br label %bb.cq

.loopexit.i.i:                                    ; preds = %bb.cr, %bb.cq
  %i.fp = icmp eq ptr %i.gp, %i.fl
  br i1 %i.fp, label %._crit_edge.i.i, label %bb.cq

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %bb.ca
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.val86.i.i = load i64, ptr %i.fq, align 8, !noalias !6448, !noundef !11 ; 2 uses
  %i.fr = icmp ult i64 %.val86.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !6448, !noundef !11
  %i.fu = add i64 %i.ft, %.val86.i.i
  store i64 %i.fu, ptr %i.fs, align 8, !noalias !6448
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !range !15, !noalias !6448, !noundef !11
  %.not43.i.i = icmp eq i64 %i.fw, -1             ; 3 uses
  br i1 %.not43.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i.i
  %.sroa.0162.0.copyload.i.i = load i64, ptr %i.k, align 8, !noalias !6448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6475
  store ptr %.val84.i.i, ptr %i.f, align 8, !alias.scope !6476, !noalias !6475
  %i.fx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.0162.0.copyload.i.i, ptr %i.fx, align 8, !alias.scope !6476, !noalias !6475
  %i.fy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.val84.i.i, ptr %i.fy, align 8, !alias.scope !6476, !noalias !6475
  %i.fz = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.fl, ptr %i.fz, align 8, !alias.scope !6476, !noalias !6475
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.ce unwind label %bb.cd, !noalias !6455

bb.cc:                                            ; preds = %bb.ce, %._crit_edge.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !range !15, !noalias !6448, !noundef !11
  %.not44.i.i = icmp eq i64 %i.gb, -1
  br i1 %.not44.i.i, label %.critedge.i.i, label %bb.cf

bb.cd:                                            ; preds = %bb.cb
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #21
          to label %.body125.thread.i.i unwind label %bb.bx, !noalias !6455

.body125.thread.i.i:                              ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6448
  br label %.body128.i.i

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6475
  br label %bb.cc

bb.cf:                                            ; preds = %bb.cc
  %.sroa.0165.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !6448
  %.sroa.5166.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5166.0.copyload.i.i = load ptr, ptr %.sroa.5166.0..sroa_idx.i.i, align 8, !noalias !6448, !nonnull !11, !noundef !11 ; 3 uses
  %.sroa.6167.0.copyload.i.i = load i64, ptr %i.fq, align 8, !noalias !6448 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6477
  %i.gd = icmp ult i64 %.sroa.6167.0.copyload.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5166.0.copyload.i.i, i64 %.sroa.6167.0.copyload.i.i
  store ptr %.sroa.5166.0.copyload.i.i, ptr %i.e, align 8, !alias.scope !6478, !noalias !6477
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.0165.0.copyload.i.i, ptr %i.gf, align 8, !alias.scope !6478, !noalias !6477
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5166.0.copyload.i.i, ptr %i.gg, align 8, !alias.scope !6478, !noalias !6477
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ge, ptr %i.gh, align 8, !alias.scope !6478, !noalias !6477
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.cg unwind label %bb.ck, !noalias !6455

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6477
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.ci, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6448
  br i1 %.not43.i.i, label %bb.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i

.critedge.i.i:                                    ; preds = %bb.cc
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ci unwind label %bb.ch, !noalias !6455

bb.ch:                                            ; preds = %.critedge.i.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body125.i.i.a unwind label %bb.cj, !noalias !6455

bb.ci:                                            ; preds = %.critedge.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.ck, !noalias !6455

bb.cj:                                            ; preds = %bb.ch
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6455
  unreachable

.body125.i.i.a:                                   ; preds = %bb.ck, %bb.ch
  %.pn45.pn.pn.i.i = phi { ptr, i32 } [ %i.gk, %bb.ck ], [ %i.gi, %bb.ch ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6448
  br i1 %.not43.i.i, label %bb.cs, label %.body128.i.i

bb.ck:                                            ; preds = %bb.ci, %bb.cf
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body125.i.i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.cn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6448
  br label %bb.cu

bb.cl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEECsl8OoimOLbh_6qdrant.exit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.cn unwind label %bb.cm, !noalias !6455

bb.cm:                                            ; preds = %bb.cl
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body128.i.i unwind label %bb.co, !noalias !6455

bb.cn:                                            ; preds = %bb.cl
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.cp, !noalias !6455

bb.co:                                            ; preds = %bb.cm
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6455
  unreachable

.body128.i.i:                                     ; preds = %bb.cs, %bb.cp, %bb.cm, %.body125.i.i.a, %.body125.thread.i.i
  %.pn45.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn45.pn.pn.i.i, %bb.cs ], [ %.pn45.pn.pn.i.i, %.body125.i.i.a ], [ %i.gn, %bb.cp ], [ %i.gl, %bb.cm ], [ %i.gc, %.body125.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6448
  br label %bb.ct

bb.cp:                                            ; preds = %bb.cn
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body128.i.i

bb.cq:                                            ; preds = %.loopexit.i.i, %.lr.ph190.i.i
  %i.go = phi i64 [ %.promoted191.i.i, %.lr.ph190.i.i ], [ %i.gs, %.loopexit.i.i ]
  %.sroa.0158.0189.i.i = phi ptr [ %.val84.i.i, %.lr.ph190.i.i ], [ %i.gp, %.loopexit.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0158.0189.i.i, i64 48 ; 2 uses
  %i.gq = getelementptr i8, ptr %.sroa.0158.0189.i.i, i64 40 ; 2 uses
  %.val87.i.i = load i64, ptr %i.gq, align 8, !noalias !6455, !noundef !11 ; 2 uses
  %i.gr = icmp ult i64 %.val87.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.gr)
  %i.gs = add i64 %.val87.i.i, %i.go              ; 2 uses
  store i64 %i.gs, ptr %i.fn, align 8, !noalias !6448
  %i.gt = getelementptr i8, ptr %.sroa.0158.0189.i.i, i64 32
  %.val88.i.i = load ptr, ptr %i.gt, align 8, !noalias !6455, !nonnull !11, !noundef !11 ; 2 uses
  %.val89.i.i = load i64, ptr %i.gq, align 8, !noalias !6455, !noundef !11 ; 2 uses
  %.idx192.i.i = mul nuw nsw i64 %.val89.i.i, 24
  %i.gu = getelementptr inbounds nuw i8, ptr %.val88.i.i, i64 %.idx192.i.i
  %i.gv = icmp eq i64 %.val89.i.i, 0
  br i1 %i.gv, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cq
  %.promoted.i.i = load i64, ptr %i.fo, align 8, !noalias !6448
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %.lr.ph.i.i
  %i.gw = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ha, %bb.cr ]
  %.sroa.0160.0188.i.i = phi ptr [ %.val88.i.i, %.lr.ph.i.i ], [ %i.gx, %bb.cr ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0160.0188.i.i, i64 24 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0160.0188.i.i, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !noalias !6455, !noundef !11
  %i.ha = add i64 %i.gz, %i.gw                    ; 2 uses
  store i64 %i.ha, ptr %i.fo, align 8, !noalias !6448
  %i.hb = icmp eq ptr %i.gx, %i.gu
  br i1 %i.hb, label %.loopexit.i.i, label %bb.cr

bb.cs:                                            ; preds = %.body125.i.i.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #21
          to label %.body128.i.i unwind label %bb.bx, !noalias !6455

bb.ct:                                            ; preds = %bb.dm, %.body128.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker10TrackerLogEEECsl8OoimOLbh_6qdrant.exit.i.i, %bb.ak
  %.pn56.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cu, %bb.ak ], [ %eh.lpad-body135.i.i, %bb.dm ], [ %.pn56.pn.pn.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtCs5QaNqjAn6vc_5shard7tracker10TrackerLogEEECsl8OoimOLbh_6qdrant.exit.i.i ], [ %.pn45.pn.pn.pn.i.i, %.body128.i.i ]
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.bx, !noalias !6455

bb.cu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEECsl8OoimOLbh_6qdrant.exit.i.i, %bb.bz, %bb.ai
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.hd = getelementptr i8, ptr %1, i64 72
  %.val70.i.i = load ptr, ptr %i.hd, align 8, !noalias !6448, !nonnull !11, !noundef !11 ; 2 uses
  %i.he = getelementptr i8, ptr %1, i64 80
  %.val71.i.i = load i64, ptr %i.he, align 8, !noalias !6448, !noundef !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6479
  store ptr %i.a, ptr %i.d, align 8, !noalias !6480
  %i.hf = icmp samesign ult i64 %.val71.i.i, 2
  br i1 %i.hf, label %bb.cy, label %bb.cv, !prof !26

bb.cv:                                            ; preds = %bb.cu
  %i.hg = icmp samesign ult i64 %.val71.i.i, 21
  br i1 %i.hg, label %bb.cx, label %bb.cw, !prof !26

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3D_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4P_15ShardReplicaSet19local_optimizations00E0INtNtB2b_3vec3VecBZ_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %.val70.i.i, i64 noundef range(i64 0, 42700796466920259) %.val71.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #22
          to label %bb.cy unwind label %bb.ak, !noalias !6455

bb.cx:                                            ; preds = %bb.cv
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB41_6offset3utc3UtcEEENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB5d_15ShardReplicaSet19local_optimizations00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %.val70.i.i, i64 noundef range(i64 0, 42700796466920259) %.val71.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.cy unwind label %bb.ak, !noalias !6455

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6479
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.hi = load <2 x i64>, ptr %i.hh, align 8, !noalias !6448 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.hk = load <2 x i64>, ptr %i.hj, align 8, !noalias !6448 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6448
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 292
  store i8 0, ptr %i.hl, align 4, !noalias !6448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i64 24, i1 false), !noalias !6448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6448
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 289 ; 2 uses
  store i8 0, ptr %i.hm, align 1, !noalias !6448
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.hn, i64 24, i1 false), !noalias !6448
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hp = load i64, ptr %i.ho, align 8, !range !16, !noalias !6448, !noundef !11
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !6448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6448
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 291
  store i8 0, ptr %i.hs, align 1, !noalias !6448
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i64 24, i1 false), !noalias !6448
  %i.hu = trunc nuw i64 %i.hp to i1
  br i1 %i.hu, label %bb.cz, label %bb.dg

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i64 24, i1 false), !noalias !6448
  call void @llvm.experimental.noalias.scope.decl(metadata !6482)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !alias.scope !6482, !noalias !6481, !nonnull !11, !noundef !11 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.hy = load i64, ptr %i.hx, align 8, !alias.scope !6482, !noalias !6481, !noundef !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6483
  store ptr %i.a, ptr %i.b, align 8, !noalias !6484
  %i.hz = icmp samesign ult i64 %i.hy, 2
  br i1 %i.hz, label %bb.de, label %bb.da, !prof !26

bb.da:                                            ; preds = %bb.cz
  %i.ia = icmp samesign ult i64 %i.hy, 21
  br i1 %i.ia, label %bb.dc, label %bb.db, !prof !26

bb.db:                                            ; preds = %bb.da
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyINtNtB8_3cmp7ReverseINtNtB8_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB3D_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4R_15ShardReplicaSet19local_optimizations0s_00E0INtNtB2b_3vec3VecBZ_EECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.hw, i64 noundef range(i64 0, 42700796466920259) %i.hy, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #22
          to label %bb.de unwind label %bb.dd, !noalias !6485

bb.dc:                                            ; preds = %bb.da
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keyINtNtBa_3cmp7ReverseINtNtBa_6option6OptionINtNtCs3bXQNzrqeHk_6chrono8datetime8DateTimeNtNtNtB41_6offset3utc3UtcEEENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB5f_15ShardReplicaSet19local_optimizations0s_00E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %i.hw, i64 noundef range(i64 0, 42700796466920259) %i.hy, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.de unwind label %bb.dd, !noalias !6485

bb.dd:                                            ; preds = %bb.de, %bb.dc, %bb.db
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #21
          to label %.body134.i.i unwind label %bb.df, !noalias !6486

bb.de:                                            ; preds = %bb.dc, %bb.db, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6483
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationE8truncateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hr)
          to label %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet19local_optimizations0s_0Csl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.dd, !noalias !6486

bb.df:                                            ; preds = %bb.dd
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6486
  unreachable

_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet19local_optimizations0s_0Csl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.de
  %.sroa.0168.0.copyload169.i.i = load i64, ptr %i.c, align 8, !noalias !6487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6170.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false), !noalias !6448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6481
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE3mapINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2x_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i

bb.dg:                                            ; preds = %bb.cy
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.dh, !noalias !6488

bb.dh:                                            ; preds = %bb.dg
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body134.i.i unwind label %bb.di, !noalias !6488

bb.di:                                            ; preds = %bb.dh
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6488
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.dg
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE3mapINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2x_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.dj, !noalias !6455

bb.dj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body134.i.i

.body134.i.i:                                     ; preds = %bb.dj, %bb.dh, %bb.dd
  %eh.lpad-body135.i.i = phi { ptr, i32 } [ %i.if, %bb.dj ], [ %i.ib, %bb.dd ], [ %i.id, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6448
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #21
          to label %bb.dl unwind label %bb.bx, !noalias !6455

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE3mapINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2x_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i.i, %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet19local_optimizations0s_0Csl8OoimOLbh_6qdrant.exit.i.i.i
  %.sroa.0168.0.i.i = phi i64 [ %.sroa.0168.0.copyload169.i.i, %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB6_15ShardReplicaSet19local_optimizations0s_0Csl8OoimOLbh_6qdrant.exit.i.i.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBI_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6448
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 290
  store i8 0, ptr %i.ig, align 2, !noalias !6448
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.025.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ih, i64 24, i1 false), !noalias !6448
  %.sroa.017.sroa.0.i.i.sroa.0.0.copyload = load i64, ptr %i.i, align 8, !noalias !6448 ; 3 uses
  %.sroa.017.sroa.0.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017.sroa.0.i.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017.sroa.0.i.i.sroa.4.0..sroa_idx, i64 16, i1 false), !noalias !6448
  %.sroa.017.sroa.0.i.i.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.017.sroa.0.i.i.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.sroa.0.i.i.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !6448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6448
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_RNvXs0_NtCs3aP4uAeNgCL_12futures_core6futureNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBL_15ShardReplicaSet19local_optimizations0NtB5_9TryFuture8try_pollCsl8OoimOLbh_6qdrant.exit unwind label %bb.dk, !noalias !6455

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.dk, %bb.ct, %bb.ad, %bb.ac, %bb.x
  %.pn56.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn.pn.pn.i.i, %bb.ct ], [ %i.il, %bb.dk ], [ %i.cc, %bb.ac ], [ %i.bs, %bb.x ], [ %i.cc, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6448
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.ij = load i8, ptr %i.ii, align 1, !range !34, !noalias !6448, !noundef !11
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.dn, label %bb.s

bb.dk:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE3mapINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2x_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i, %bb.af
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i.i

bb.dl:                                            ; preds = %.body134.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6448
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #21
          to label %bb.dm unwind label %bb.bx, !noalias !6455

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6448
  br label %bb.ct

bb.dn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization19PendingOptimizationEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.im) #21
          to label %bb.s unwind label %bb.bx, !noalias !6455

bb.do:                                            ; preds = %bb.s
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization23OptimizationSegmentInfoEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.in) #21
          to label %bb.t unwind label %bb.bx, !noalias !6455

bb.dp:                                            ; preds = %bb.t
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.io) #21
          to label %bb.e unwind label %bb.bx, !noalias !6455

bb.dq:                                            ; preds = %bb.e
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ip) #21
          to label %bb.d unwind label %bb.bx, !noalias !6455

_RNvXs0_NtCs3aP4uAeNgCL_12futures_core6futureNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBL_15ShardReplicaSet19local_optimizations0NtB5_9TryFuture8try_pollCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionjE3mapINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs5QaNqjAn6vc_5shard10operations12optimization12OptimizationENCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2x_15ShardReplicaSet19local_optimizations0s_0ECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6448
  store i32 0, ptr %i.hm, align 1, !noalias !6448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.017.sroa.0.i.i.sroa.4, i64 40, i1 false)
end_hunk_1
