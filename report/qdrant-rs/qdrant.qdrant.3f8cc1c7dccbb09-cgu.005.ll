Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.005?download=true
inline.NumInlined: 10893
inline.NumDeleted: 3937
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4_15ShardReplicaSet27calculate_local_shard_stats0Csl8OoimOLbh_6qdrant:bb.a

.noexc24:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !26, !noalias !12966
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  switch i8 %.pre.i, label %default.unreachable85 [
    i8 0, label %._crit_edge
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

._crit_edge:                                      ; preds = %bb.h
  %.pre82 = load ptr, ptr %i.x, align 8, !noalias !12966
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %.thread.i
  %i.y = phi ptr [ %i.t, %.thread.i ], [ %i.s, %._crit_edge ]
  %i.z = phi ptr [ %i.u, %.thread.i ], [ %i.r, %._crit_edge ]
  %i.aa = phi ptr [ %i.v, %.thread.i ], [ %.pre82, %._crit_edge ]
  %i.ab = phi ptr [ %.sroa.822.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ]
  %i.ac = phi ptr [ %i.w, %.thread.i ], [ %i.x, %._crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.aa, ptr %i.ad, align 8, !noalias !12966
  %.sroa.715.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %.sroa.715.0..sroa_idx.i.i, align 8, !noalias !12966
  %i.ae = getelementptr i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !noalias !12966
  %.sroa.917.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 1, ptr %.sroa.917.0..sroa_idx.i.i, align 8, !noalias !12966
  %.sroa.1018.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 1, ptr %.sroa.1018.0..sroa_idx.i.i, align 8, !noalias !12966
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !12966
  br label %bb.l

.body.i.i:                                        ; preds = %bb.u, %bb.q, %bb.p, %bb.m
  %.pn9.i.i = phi { ptr, i32 } [ %i.an, %bb.p ], [ %i.al, %bb.m ], [ %i.az, %bb.u ], [ %i.an, %bb.q ]
  store i8 2, ptr %i.ah, align 8, !noalias !12966
  br label %.body.i

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #25
          to label %.noexc.i unwind label %bb.x, !noalias !12965

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #25
          to label %.noexc11.i unwind label %bb.x, !noalias !12965

.noexc11.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %i.s, %bb.h ], [ %i.y, %bb.i ] ; 3 uses
  %i.ag = phi ptr [ %i.r, %bb.h ], [ %i.z, %bb.i ] ; 2 uses
  %i.ah = phi ptr [ %.phi.trans.insert.i, %bb.h ], [ %i.ab, %bb.i ] ; 3 uses
  %i.ai = phi ptr [ %i.x, %bb.h ], [ %i.ac, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ak = invoke noundef i8 @_RNvXs1_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.m       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aj) #22
          to label %.body.i.i unwind label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.am = icmp eq i8 %i.ak, 2
  br i1 %i.am, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.aj)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !12966, !align !22, !noundef !20 ; 2 uses
  %i.ap = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.ap, label %.body.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr i8, ptr %1, i64 48
  %.val3.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !12966
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !20, !noundef !20
  invoke void %i.as(ptr noundef %.val3.i.i.i)
          to label %.body.i.i unwind label %bb.t, !inline_history !4

bb.r:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !noalias !12966, !align !22, !noundef !20 ; 2 uses
  %i.au = icmp eq ptr %.val.i.i.i, null
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr i8, ptr %1, i64 48
  %.val1.i.i.i = load ptr, ptr %i.av, align 8, !noalias !12966
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !20, !noundef !20
  invoke void %i.ax(ptr noundef %.val1.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.u, !inline_history !61

bb.t:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.s, %bb.r
  %i.ba = trunc nuw i8 %i.ak to i1
  br i1 %i.ba, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #25
          to label %.noexc13.i.i unwind label %bb.u

.noexc13.i.i:                                     ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.x:                                             ; preds = %bb.k, %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.x, %.body.i.i
  %i.bd = phi ptr [ %i.s, %bb.x ], [ %i.af, %.body.i.i ]
  %i.be = phi ptr [ %i.r, %bb.x ], [ %i.ag, %.body.i.i ]
  %i.bf = phi ptr [ %i.x, %bb.x ], [ %i.ai, %.body.i.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bc, %bb.x ], [ %.pn9.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBL_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read00ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bf) #22
          to label %.body17.i unwind label %bb.y

bb.y:                                             ; preds = %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.z:                                             ; preds = %bb.g, %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body17.i, %bb.z
  %i.bi = phi ptr [ %i.r, %bb.z ], [ %i.be, %.body17.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.bh, %bb.z ], [ %eh.lpad-body.i, %.body17.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bi) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ao

common.ret:                                       ; preds = %bb.az, %bb.at, %bb.aa
  %.sink = phi i8 [ 1, %bb.az ], [ 4, %bb.at ], [ 3, %bb.aa ]
  store i8 %.sink, ptr %i.j, align 1
  ret void

bb.aa:                                            ; preds = %bb.n
  store i8 3, ptr %i.ah, align 8, !noalias !12966
  store i8 3, ptr %i.af, align 8, !noalias !12965
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %common.ret

bb.ab:                                            ; preds = %bb.ah, %.noexc35, %bb.ag, %bb.ad
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %bb.ae, %bb.ab
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.bj, %bb.ab ], [ %i.br, %bb.ae ]
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ao

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsl8OoimOLbh_6qdrant.exit.i.i
  %i.bk = load ptr, ptr %i.ai, align 8, !noalias !12966, !nonnull !20, !align !22, !noundef !20 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 2 uses
  store i8 1, ptr %i.ah, align 8, !noalias !12966
  store i8 1, ptr %i.af, align 8, !noalias !12965
  store ptr %i.bk, ptr %i.h, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = load i64, ptr %i.bl, align 8, !range !35, !noundef !20 ; 3 uses
  %.not.i = icmp eq i64 %i.bn, -1
  br i1 %.not.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread, label %3

3:                                                ; preds = %bb.ac
  %4 = icmp ne i64 %i.bn, 4
  tail call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.bn, 2
  br i1 %5, label %bb.ad, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread

bb.ad:                                            ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12967
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 256
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder6lockedNtB2_19LockedSegmentHolder4read(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bo)
          to label %.noexc34 unwind label %bb.ab  ; 5 uses

.noexc34:                                         ; preds = %bb.ad
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  invoke void @_RNvMs3_NtCs5QaNqjAn6vc_5shard14segment_holderNtB5_13SegmentHolder4iter(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noundef nonnull align 8 %i.bq)
          to label %bb.af unwind label %bb.ae, !noalias !12967

bb.ae:                                            ; preds = %bb.af, %.noexc34
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockNtNtCs5QaNqjAn6vc_5shard14segment_holder13SegmentHolderEECsl8OoimOLbh_6qdrant(ptr nonnull %i.bp) #22
          to label %.body38 unwind label %bb.ai, !noalias !12967

bb.af:                                            ; preds = %.noexc34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !12967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12967
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2s_INtNtB2w_5chain5ChainINtNtNtNtB8_11collections5btree3map4IterjB13_EB3F_ENCNvMs3_NtB17_14segment_holderNtB4C_13SegmentHolder4iter0ENCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB5z_15ShardReplicaSet27calculate_local_shard_stats000EE9from_iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(144) %i.c)
          to label %bb.ag unwind label %bb.ae, !noalias !12967

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12967
  %.sroa.0.0.copyload48 = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx49, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12967
  %i.bs = ptrtoint ptr %i.bp to i64               ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.bs)
          to label %.noexc35 unwind label %bb.ab

.noexc35:                                         ; preds = %bb.ag
  %i.bt = or disjoint i64 %i.bs, 1
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.bt)
          to label %.noexc36 unwind label %bb.ab

.noexc36:                                         ; preds = %.noexc35
  %i.bu = atomicrmw add ptr %i.bp, i64 -16 release, align 8, !noalias !12967
  %i.bv = and i64 %i.bu, -14
  %i.bw = icmp eq i64 %i.bv, 18
  br i1 %i.bw, label %bb.ah, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit, !prof !48

bb.ah:                                            ; preds = %.noexc36
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.bp)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit unwind label %bb.ab

bb.ai:                                            ; preds = %bb.ae
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !12967
  unreachable

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit: ; preds = %.noexc36, %bb.ah
  %.not = icmp eq i64 %.sroa.0.0.copyload48, -1
  br i1 %.not, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 1, ptr %i.by, align 8
  store i64 %.sroa.0.0.copyload48, ptr %i.i, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i64 16, i1 false)
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit41 unwind label %bb.ak

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.ac, %3, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit43 unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  br label %.body45

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit41: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.by, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ca = invoke noundef nonnull ptr @_RINvNtNtCsjZG7hsAZr3B_5tokio4task8blocking14spawn_blockingNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB11_15ShardReplicaSet27calculate_local_shard_stats0s_0TjjjEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit41
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.body45

bb.am:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.ca, ptr %i.ag, align 8
  br label %bb.aq

.body45:                                          ; preds = %bb.av, %bb.ar, %bb.ba, %bb.al, %bb.ak
  %.pn20.pn = phi { ptr, i32 } [ %i.bz, %bb.ak ], [ %i.cb, %bb.al ], [ %i.cr, %bb.ba ], [ %i.cj, %bb.ar ], [ %i.cm, %bb.av ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8, !range !57, !noundef !20
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.bd, label %bb.bc

bb.an:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit43: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardE8and_thenINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNvMNtBN_11replica_setNtB3f_15ShardReplicaSet27calculate_local_shard_stats00ECsl8OoimOLbh_6qdrant.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.cg, align 8
  store i64 -1, ptr %i.e, align 8
  br label %bb.az

bb.ao:                                            ; preds = %.body38, %bb.bd, %bb.ar, %.body
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ap:                                            ; preds = %bb.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.bc ], [ %.pn16, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit ]
  store i8 2, ptr %i.j, align 1
  resume { ptr, i32 } %.pn20.pn.pn

bb.aq:                                            ; preds = %bb.b, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  invoke void @_RNvXs1_NtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB5_17AbortOnDropHandleTjjjEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ci) #22
          to label %.body45 unwind label %bb.ao

bb.as:                                            ; preds = %bb.aq
  %i.ck = load i64, ptr %i.f, align 8, !range !19, !noundef !20 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 2
  br i1 %i.cl, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %common.ret

bb.au:                                            ; preds = %bb.as
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.666.0.copyload = load i64, ptr %.sroa.666.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB2_17AbortOnDropHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %.body45 unwind label %bb.ax

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleTjjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.aw
  %i.co = trunc nuw i64 %i.ck to i1
  br i1 %i.co, label %bb.ay, label %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTjjjENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorENtNtNtB7_3ops9try_trait3Try6branchCsl8OoimOLbh_6qdrant.exit

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12968
  store i64 %.sroa.2.0.copyload, ptr %i.a, align 8, !noalias !12969
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.4.0.copyload, ptr %.sroa.569.0..sroa_idx, align 8, !noalias !12969
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.666.0.copyload, ptr %.sroa.670.0..sroa_idx, align 8, !noalias !12969
  invoke void @_RNvXsg_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_15CollectionErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.bb unwind label %bb.ba

_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTjjjENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorENtNtNtB7_3ops9try_trait3Try6branchCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleTjjjEEECsl8OoimOLbh_6qdrant.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.cp, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.2.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.4.0.copyload, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sroa.666.0.copyload, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %i.e, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.cq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.az

bb.az:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit43, %bb.bb, %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultTjjjENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorENtNtNtB7_3ops9try_trait3Try6branchCsl8OoimOLbh_6qdrant.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  br label %common.ret

bb.ba:                                            ; preds = %bb.aw, %bb.ay
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body45

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12968
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.cs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.az

bb.bc:                                            ; preds = %bb.bd, %.body45
  store i8 0, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ap

bb.bd:                                            ; preds = %.body45
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #22
          to label %bb.bc unwind label %bb.ao
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection8grouping7builderINtB4_7GroupByNCNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc9point_opsNtB1b_14TableOfContent5group00NCNvMB1b_B26_18get_collection_opt0E3run0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 5 uses
  %i.b = alloca [192 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 16               ; 5 uses
  %i.d = alloca [24 x i8], align 16               ; 13 uses
  %.sroa.6.i.i165 = alloca [184 x i8], align 8    ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.9133.i = alloca [36 x i8], align 4       ; 4 uses
  %.sroa.9141.i = alloca [80 x i8], align 8       ; 8 uses
  %.sroa.12144.i = alloca [36 x i8], align 4      ; 8 uses
  %.sroa.13145.i = alloca [16 x i8], align 8      ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 11 uses
  %i.k = alloca [48 x i8], align 8                ; 13 uses
  %.sroa.7113.i = alloca [15 x i8], align 1       ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 13 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [64 x i8], align 8                ; 7 uses
  %i.u = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.9.i.i = alloca [36 x i8], align 4        ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [80 x i8], align 8                ; 10 uses
end_hunk_0
