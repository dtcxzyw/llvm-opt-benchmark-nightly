Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.030?download=true
inline.NumInlined: 3562
inline.NumDeleted: 1643
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_doneINtB5_12TryMaybeDoneINtNtNtB7_10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2e_10Collection20do_core_search_batch0s_00EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant:bb.a
bb.og:                                            ; preds = %bb.of
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEEECsl8OoimOLbh_6qdrant.exit108.i.i.i.i.i.i

bb.oh:                                            ; preds = %bb.dx
  %i.aqh = getelementptr inbounds nuw i8, ptr %1, i64 424
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aqh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEEECsl8OoimOLbh_6qdrant.exit108.i.i.i.i.i.i unwind label %bb.cn, !noalias !5415

bb.oi:                                            ; preds = %bb.z, %bb.y
  %i.aqi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.no, %bb.cq, %bb.ck
  %i.aqj = phi ptr [ %i.lz, %bb.ck ], [ %i.apn, %bb.no ], [ %i.mi, %bb.cq ]
  %i.aqk = phi ptr [ %i.ma, %bb.ck ], [ %i.apo, %bb.no ], [ %i.mk, %bb.cq ]
  %.sink.i.ph.i.i.i.i.i = phi i8 [ 3, %bb.ck ], [ 5, %bb.no ], [ 4, %bb.cq ]
  store i8 %.sink.i.ph.i.i.i.i.i, ptr %i.aqk, align 1, !noalias !5410
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6188.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i.i.i.i.i)
  br label %bb.qi

.thread.i.i.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.cl
  %i.aql = phi ptr [ %i.mb, %bb.cl ], [ %i.adn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  %i.aqm = phi ptr [ %i.mc, %bb.cl ], [ %i.ado, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  %.ph.i.i.i.i = phi ptr [ %i.md, %bb.cl ], [ %i.adp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  %.ph119.i.i.i.i = phi ptr [ %i.me, %bb.cl ], [ %i.adq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  %.sroa.12.sroa.0.4.i.i.ph.i.i.i.i = phi i64 [ %.sroa.678.i.sroa.0.0248.i.i.i.i.i.i, %bb.cl ], [ %.sroa.12.sroa.0.2.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  %.sroa.11128.4.i.i.ph.i.i.i.i = phi ptr [ %.sroa.573.0.i249.i.i.i.i.i.i, %bb.cl ], [ %.sroa.11128.2.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  %.sroa.7121.4.i.i.ph.i.i.i.i = phi ptr [ %.sroa.4.0.i250.i.i.i.i.i.i, %bb.cl ], [ %.sroa.7121.2.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  %.sroa.0118.4.i.i.ph.i.i.i.i = phi i64 [ %.sroa.066.0.i251.i.i.i.i.i.i, %bb.cl ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  %i.aqn = getelementptr inbounds nuw i8, ptr %1, i64 444
  store i8 0, ptr %i.aqn, align 4, !noalias !5410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1186.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.7.i.i.i.i.i.i, i64 16, i1 false), !noalias !5519
  store i8 1, ptr %.ph.i.i.i.i, align 1, !noalias !5410
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6188.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i.i.i.i.i)
  br label %bb.ok

bb.oj:                                            ; preds = %bb.of, %bb.dw
  store i8 0, ptr %i.qj, align 1, !noalias !5410
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 444
  store i8 0, ptr %i.aqo, align 4, !noalias !5410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1186.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.7.i.i.i.i.i.i, i64 16, i1 false), !noalias !5519
  store i8 1, ptr %i.qh, align 1, !noalias !5410
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6188.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i.i.i.i.i)
  %i.aqp = icmp eq i64 %.sroa.0118.1.i.i.i.i.i.i, -2
  br i1 %i.aqp, label %bb.qi, label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %.thread.i.i.i.i
  %i.aqq = phi ptr [ %i.aql, %.thread.i.i.i.i ], [ %i.qf, %bb.oj ] ; 4 uses
  %i.aqr = phi ptr [ %i.aqm, %.thread.i.i.i.i ], [ %i.qg, %bb.oj ] ; 4 uses
  %.sroa.0118.4.i.i127.i.i.i.i = phi i64 [ %.sroa.0118.4.i.i.ph.i.i.i.i, %.thread.i.i.i.i ], [ %.sroa.0118.1.i.i.i.i.i.i, %bb.oj ] ; 2 uses
  %.sroa.0116.0.copyload.i.i.i.i = phi ptr [ %.sroa.7121.4.i.i.ph.i.i.i.i, %.thread.i.i.i.i ], [ %.sroa.7121.1.i.i.i.i.i.i, %bb.oj ] ; 4 uses
  %.sroa.4117.0.copyload.i.i.i.i = phi ptr [ %.sroa.11128.4.i.i.ph.i.i.i.i, %.thread.i.i.i.i ], [ %.sroa.11128.1.i.i.i.i.i.i, %bb.oj ] ; 8 uses
  %.sroa.5118.0.copyload.i.i.i.i = phi i64 [ %.sroa.12.sroa.0.4.i.i.ph.i.i.i.i, %.thread.i.i.i.i ], [ %.sroa.12.sroa.0.1.i.i.i.i.i.i, %bb.oj ] ; 6 uses
  %i.aqs = phi ptr [ %.ph119.i.i.i.i, %.thread.i.i.i.i ], [ %i.qi, %bb.oj ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtBJ_15ShardReplicaSet34execute_and_resolve_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB2R_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCNCNvMNtBJ_8read_opsB1U_11core_search00E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aqs)
          to label %bb.om unwind label %bb.ol, !noalias !5409

bb.ol:                                            ; preds = %bb.ok
  %i.aqt = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.om:                                            ; preds = %bb.ok
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aqu)
          to label %bb.oq unwind label %bb.op, !noalias !5409

bb.on:                                            ; preds = %bb.op, %bb.g
  %i.aqv = phi ptr [ %i.aqq, %bb.op ], [ %i.cq, %bb.g ] ; 2 uses
  %i.aqw = phi ptr [ %i.aqr, %bb.op ], [ %i.cr, %bb.g ] ; 2 uses
  %.pn6.i.i.i.i.i = phi { ptr, i32 } [ %i.arb, %bb.op ], [ %.pn4.i.i.i.i.i, %bb.g ] ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5520)
  call void @llvm.experimental.noalias.scope.decl(metadata !5521)
  %i.aqy = load ptr, ptr %i.aqx, align 8, !alias.scope !5522, !noalias !5408, !nonnull !11, !noundef !11
  %i.aqz = atomicrmw sub ptr %i.aqy, i64 1 release, align 8, !noalias !5523
  %i.ara = icmp eq i64 %i.aqz, 1
  br i1 %i.ara, label %bb.oo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.oo:                                            ; preds = %bb.on
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchE9drop_slowCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aqx) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.ot, !noalias !5409

bb.op:                                            ; preds = %bb.om
  %i.arb = landingpad { ptr, i32 }
          cleanup
  br label %bb.on

bb.oq:                                            ; preds = %bb.om
  %i.arc = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5524)
  call void @llvm.experimental.noalias.scope.decl(metadata !5525)
  %i.ard = load ptr, ptr %i.arc, align 8, !alias.scope !5526, !noalias !5408, !nonnull !11, !noundef !11
  %i.are = atomicrmw sub ptr %i.ard, i64 1 release, align 8, !noalias !5527
  %i.arf = icmp eq i64 %i.are, 1
  br i1 %i.arf, label %bb.or, label %bb.ov

bb.or:                                            ; preds = %bb.oq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchE9drop_slowCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.arc) #22
          to label %bb.ov unwind label %bb.os, !noalias !5409

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.os, %bb.oo, %bb.on
  %i.arg = phi ptr [ %i.aqq, %bb.os ], [ %i.aqv, %bb.oo ], [ %i.aqv, %bb.on ]
  %i.arh = phi ptr [ %i.aqr, %bb.os ], [ %i.aqw, %bb.oo ], [ %i.aqw, %bb.on ]
  %.pn8.i.i.i.i.i = phi { ptr, i32 } [ %i.ari, %bb.os ], [ %.pn6.i.i.i.i.i, %bb.oo ], [ %.pn6.i.i.i.i.i, %bb.on ]
  store i8 2, ptr %i.arg, align 1, !noalias !5408
  br label %.body.i.i.i.i

bb.os:                                            ; preds = %bb.or
  %i.ari = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.ot:                                            ; preds = %bb.oo, %.body.i.i.i.i.i, %bb.g
  %i.arj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !5409
  unreachable

bb.ou:                                            ; preds = %bb.i, %bb.h
  %i.ark = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.ov:                                            ; preds = %bb.or, %bb.oq
  store i8 1, ptr %i.aqq, align 1, !noalias !5408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.896.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1186.i.i.i.i, i64 16, i1 false), !noalias !5406
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1186.i.i.i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtBI_15ShardReplicaSet11core_search0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aqr)
          to label %bb.ox unwind label %bb.ow, !noalias !5407

bb.ow:                                            ; preds = %bb.ov
  %i.arl = landingpad { ptr, i32 }
          cleanup
  br label %bb.pr

bb.ox:                                            ; preds = %bb.ov
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0118.4.i.i127.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.oy, label %bb.pt

bb.oy:                                            ; preds = %bb.ox
  store ptr %.sroa.0116.0.copyload.i.i.i.i, ptr %i.aw, align 8, !noalias !5406
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.4117.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !5406
  %.sroa.5106.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.5118.0.copyload.i.i.i.i, ptr %.sroa.5106.0..sroa_idx.i.i.i.i, align 8, !noalias !5406
  %i.arm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %.val23.i.i.i.i = load i64, ptr %i.arm, align 8, !range !21, !noalias !5406, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.val23.i.i.i.i, 2
  br i1 %.not.i.i.i.i, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i, label %bb.pa

_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i: ; preds = %.loopexit.i.i.i.i, %.loopexit.i.us.i.i.i, %bb.pa, %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5406
  %i.arn = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5528)
  call void @llvm.experimental.noalias.scope.decl(metadata !5529)
  %i.aro = load ptr, ptr %i.arn, align 8, !alias.scope !5530, !noalias !5406, !nonnull !11, !noundef !11
  %i.arp = atomicrmw sub ptr %i.aro, i64 1 release, align 8, !noalias !5531
  %i.arq = icmp eq i64 %i.arp, 1
  br i1 %i.arq, label %bb.oz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.oz:                                            ; preds = %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.arn) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.pc, !noalias !5407

bb.pa:                                            ; preds = %bb.oy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4117.0.copyload.i.i.i.i) ]
  %.idx.i.i.i.i = mul nuw nsw i64 %.sroa.5118.0.copyload.i.i.i.i, 24
  %i.arr = getelementptr inbounds nuw i8, ptr %.sroa.4117.0.copyload.i.i.i.i, i64 %.idx.i.i.i.i ; 2 uses
  %i.ars = icmp eq i64 %.sroa.5118.0.copyload.i.i.i.i, 0
  br i1 %i.ars, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i.i

_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i.i: ; preds = %bb.pa
  %i.art = trunc nuw i64 %.val23.i.i.i.i to i1
  %i.aru = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %1, i64 47 ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %i.art, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i.i, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i.i

_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i.i: ; preds = %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i.i, %.loopexit.i.us.i.i.i
  %.sroa.0107.0151.i.us.i.i.i = phi ptr [ %i.arx, %.loopexit.i.us.i.i.i ], [ %.sroa.4117.0.copyload.i.i.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i.i ] ; 3 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %.sroa.0107.0151.i.us.i.i.i, i64 24 ; 2 uses
  %i.ary = getelementptr i8, ptr %.sroa.0107.0151.i.us.i.i.i, i64 8
  %.val26.i.us.i.i.i = load ptr, ptr %i.ary, align 8, !noalias !5407, !nonnull !11, !noundef !11 ; 2 uses
  %i.arz = getelementptr i8, ptr %.sroa.0107.0151.i.us.i.i.i, i64 16
  %.val27.i.us.i.i.i = load i64, ptr %i.arz, align 8, !noalias !5407, !noundef !11 ; 2 uses
  %.idx152.i.us.i.i.i = mul nuw nsw i64 %.val27.i.us.i.i.i, 208
  %i.asa = getelementptr inbounds nuw i8, ptr %.val26.i.us.i.i.i, i64 %.idx152.i.us.i.i.i
  %i.asb = icmp eq i64 %.val27.i.us.i.i.i, 0
  br i1 %i.asb, label %.loopexit.i.us.i.i.i, label %.lr.ph.i.us.us.i.i.i

.lr.ph.i.us.us.i.i.i:                             ; preds = %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i.i, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i.i
  %.sroa.0109.0150.i.us.us.i.i.i = phi ptr [ %i.asc, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i.i ], [ %.val26.i.us.i.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i.i ] ; 7 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.us.us.i.i.i, i64 208 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5532)
  call void @llvm.experimental.noalias.scope.decl(metadata !5533)
  %i.asd = load i64, ptr %.sroa.0109.0150.i.us.us.i.i.i, align 8, !range !21, !alias.scope !5532, !noalias !5534, !noundef !11 ; 2 uses
  %.not.i38.i.us.us.i.i.i = icmp eq i64 %i.asd, 2
  br i1 %.not.i38.i.us.us.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i, label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.us.us.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.us.us.i.i.i: ; preds = %.lr.ph.i.us.us.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5535)
  call void @llvm.experimental.noalias.scope.decl(metadata !5536)
  call void @llvm.experimental.noalias.scope.decl(metadata !5537)
  %i.ase = load i64, ptr %i.aru, align 8, !alias.scope !5538, !noalias !5539, !noundef !11 ; 3 uses
  %i.asf = icmp eq i64 %i.asd, 0
  %i.asg = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.us.us.i.i.i, i64 23
  %i.ash = load i8, ptr %i.asg, align 1, !alias.scope !5540, !noalias !5541
  %.not.i.i.i.i.i.i.i.us.us.i.i.i = icmp sgt i8 %i.ash, -1
  %or.cond.i.i.i.i.us.us.i.i.i = select i1 %i.asf, i1 %.not.i.i.i.i.i.i.i.us.us.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.us.us.i.i.i, label %bb.pb, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i.i

bb.pb:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.us.us.i.i.i
  %i.asi = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.us.us.i.i.i, i64 8 ; 2 uses
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.asi)
          to label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i.i unwind label %.split.us.split.us.i.i.i, !noalias !5541

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i: ; preds = %.lr.ph.i.us.us.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5542)
  %i.asj = load i64, ptr %i.aru, align 8, !alias.scope !5543, !noalias !5544, !noundef !11
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i.i

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i, %bb.pb, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.us.us.i.i.i
  %.sink.i.i.i = phi i64 [ %i.asj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i.i ], [ %i.ase, %bb.pb ], [ %i.ase, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.us.us.i.i.i ]
  store i64 1, ptr %.sroa.0109.0150.i.us.us.i.i.i, align 8, !alias.scope !5532, !noalias !5534
  %.sroa.6.0..sroa_idx4.i.i.us.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.us.us.i.i.i, i64 8
  store i64 %.sink.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.us.us.i.i.i, align 8, !alias.scope !5532, !noalias !5534
  %i.ask = icmp eq ptr %i.asc, %i.asa
  br i1 %i.ask, label %.loopexit.i.us.i.i.i, label %.lr.ph.i.us.us.i.i.i

.loopexit.i.us.i.i.i:                             ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i.i
  %3 = icmp eq ptr %i.arx, %i.arr
  br i1 %3, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i.i

.split.us.split.us.i.i.i:                         ; preds = %bb.pb
  %i.asl = landingpad { ptr, i32 }
          cleanup
  br label %bb.pm

.loopexit.i.i.i.i:                                ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.asm = icmp eq ptr %i.asn, %i.arr
  br i1 %i.asm, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i.i

_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0107.0151.i.i.i.i = phi ptr [ %i.asn, %.loopexit.i.i.i.i ], [ %.sroa.4117.0.copyload.i.i.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i.i ] ; 3 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.sroa.0107.0151.i.i.i.i, i64 24 ; 2 uses
  %i.aso = getelementptr i8, ptr %.sroa.0107.0151.i.i.i.i, i64 8
  %.val26.i.i.i.i = load ptr, ptr %i.aso, align 8, !noalias !5407, !nonnull !11, !noundef !11 ; 2 uses
  %i.asp = getelementptr i8, ptr %.sroa.0107.0151.i.i.i.i, i64 16
  %.val27.i.i.i.i = load i64, ptr %i.asp, align 8, !noalias !5407, !noundef !11 ; 2 uses
  %.idx152.i.i.i.i = mul nuw nsw i64 %.val27.i.i.i.i, 208
  %i.asq = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i, i64 %.idx152.i.i.i.i
  %i.asr = icmp eq i64 %.val27.i.i.i.i, 0
  br i1 %i.asr, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.pc:                                            ; preds = %bb.oz
  %i.ass = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ast = load i64, ptr %i.arm, align 8, !range !21, !alias.scope !5545, !noalias !5406, !noundef !11 ; 2 uses
  %i.asu = icmp eq i64 %i.ast, 2
  br i1 %i.asu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.asv = icmp eq i64 %i.ast, 0
  %i.asw = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.asx = load i8, ptr %i.asw, align 1, !alias.scope !5546, !noalias !5406
  %.not.i.i.i.i.i31.i.i.i.i = icmp sgt i8 %i.asx, -1
  %or.cond.i.i.i.i.i.i = select i1 %i.asv, i1 %.not.i.i.i.i.i31.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.pe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.pe:                                            ; preds = %bb.pd
  %i.asy = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.asy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.c, !noalias !5407

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.oz, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i.i
  %i.asz = load i64, ptr %i.arm, align 8, !range !21, !alias.scope !5547, !noalias !5406, !noundef !11 ; 2 uses
  %i.ata = icmp eq i64 %i.asz, 2
  br i1 %i.ata, label %bb.ql, label %bb.pf

bb.pf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.atb = icmp eq i64 %i.asz, 0
  %i.atc = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.atd = load i8, ptr %i.atc, align 1, !alias.scope !5548, !noalias !5406
  %.not.i.i.i.i.i33.i.i.i.i = icmp sgt i8 %i.atd, -1
  %or.cond.i.i34.i.i.i.i = select i1 %i.atb, i1 %.not.i.i.i.i.i33.i.i.i.i, i1 false
  br i1 %or.cond.i.i34.i.i.i.i, label %bb.pg, label %bb.ql

bb.pg:                                            ; preds = %bb.pf
  %i.ate = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ate)
          to label %bb.ql unwind label %bb.ph, !noalias !5407

common.resume:                                    ; preds = %.body, %bb.qk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn20.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %i.avs, %bb.qk ], [ %i.avr, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.qe, %bb.qd, %bb.qc, %bb.px, %bb.pw, %bb.pv, %bb.ph, %bb.pe, %bb.pd, %bb.pc
  %.pn20.i.i.i.i = phi { ptr, i32 } [ %i.atf, %bb.ph ], [ %i.ass, %bb.pd ], [ %i.auj, %bb.pw ], [ %i.ass, %bb.pe ], [ %i.ass, %bb.pc ], [ %i.auj, %bb.px ], [ %i.auj, %bb.pv ], [ %.pn17.pn.i.i.i.i, %bb.qe ], [ %.pn17.pn.i.i.i.i, %bb.qc ], [ %.pn17.pn.i.i.i.i, %bb.qd ]
  store i8 2, ptr %i.az, align 8, !noalias !5406
  br label %common.resume

bb.ph:                                            ; preds = %bb.pz, %bb.pg
  %i.atf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i.i, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %.sroa.0109.0150.i.i.i.i = phi ptr [ %i.atg, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.val26.i.i.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i.i ] ; 8 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.i.i.i, i64 208 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5532)
  call void @llvm.experimental.noalias.scope.decl(metadata !5533)
  %i.ath = load i64, ptr %.sroa.0109.0150.i.i.i.i, align 8, !range !21, !alias.scope !5532, !noalias !5534, !noundef !11 ; 2 uses
  %.not.i38.i.i.i.i = icmp eq i64 %i.ath, 2
  br i1 %.not.i38.i.i.i.i, label %bb.pn, label %bb.pi

bb.pi:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5535)
  call void @llvm.experimental.noalias.scope.decl(metadata !5536)
  call void @llvm.experimental.noalias.scope.decl(metadata !5537)
  %i.ati = load i8, ptr %i.arv, align 1, !alias.scope !5538, !noalias !5539, !noundef !11
  %.not.i.i.i39.i.i.i.i = icmp sgt i8 %i.ati, -1
  %.val.i.i.i40.i.i.i.i = load ptr, ptr %i.aru, align 8, !alias.scope !5538, !noalias !5539 ; 5 uses
  %.val21.i.i.i.i.i.i.i = load i64, ptr %i.arw, align 8, !alias.scope !5538, !noalias !5539 ; 4 uses
  br i1 %.not.i.i.i39.i.i.i.i, label %bb.pj, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i

bb.pj:                                            ; preds = %bb.pi
  %.not.i.i.i.i.i41.i.i.i.i = icmp eq ptr %.val.i.i.i40.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i41.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.atj = getelementptr inbounds i8, ptr %.val.i.i.i40.i.i.i.i, i64 -16
  %i.atk = atomicrmw add ptr %i.atj, i64 1 monotonic, align 8, !noalias !5549
  %i.atl = icmp slt i64 %i.atk, 0
  br i1 %i.atl, label %.invoke.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, !prof !27

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i: ; preds = %bb.pi, %bb.pk, %bb.pj
  %.sroa.06.0.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i40.i.i.i.i, %bb.pk ], [ inttoptr (i64 16 to ptr), %bb.pj ], [ %.val.i.i.i40.i.i.i.i, %bb.pi ]
  %i.atm = ptrtoint ptr %.sroa.06.0.i.i.i.i.i.i.i to i64 ; 3 uses
  %i.atn = icmp eq i64 %i.ath, 0
  %i.ato = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.i.i.i, i64 23
  %i.atp = load i8, ptr %i.ato, align 1, !alias.scope !5540, !noalias !5541
  %.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.atp, -1
  %or.cond.i.i.i.i.i.i.i = select i1 %i.atn, i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.pl, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.pl:                                            ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i
  %i.atq = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.i.i.i, i64 8 ; 2 uses
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.atq)
          to label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %.split.i.i.i, !noalias !5541

.split.i.i.i:                                     ; preds = %bb.pl
  %i.atr = landingpad { ptr, i32 }
          cleanup
  br label %bb.pm

bb.pm:                                            ; preds = %.split.i.i.i, %.split.us.split.us.i.i.i
  %.sroa.5.i.i.i.0.i.i.i = phi i64 [ %i.ase, %.split.us.split.us.i.i.i ], [ %i.atm, %.split.i.i.i ]
  %.sroa.7.i.i.i.0.i.i.i = phi i64 [ undef, %.split.us.split.us.i.i.i ], [ %.val21.i.i.i.i.i.i.i, %.split.i.i.i ]
  %.us-phi6.i.i.i = phi ptr [ %.sroa.0109.0150.i.us.us.i.i.i, %.split.us.split.us.i.i.i ], [ %.sroa.0109.0150.i.i.i.i, %.split.i.i.i ] ; 2 uses
  %.us-phi7.i.i.i = phi ptr [ %i.asi, %.split.us.split.us.i.i.i ], [ %i.atq, %.split.i.i.i ]
  %.us-phi8.i.i.i = phi i64 [ 1, %.split.us.split.us.i.i.i ], [ 0, %.split.i.i.i ]
  %.us-phi9.i.i.i = phi { ptr, i32 } [ %i.asl, %.split.us.split.us.i.i.i ], [ %i.atr, %.split.i.i.i ]
  store i64 %.us-phi8.i.i.i, ptr %.us-phi6.i.i.i, align 8, !alias.scope !5550, !noalias !5541
  store i64 %.sroa.5.i.i.i.0.i.i.i, ptr %.us-phi7.i.i.i, align 8, !alias.scope !5550, !noalias !5541
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.us-phi6.i.i.i, i64 16
  store i64 %.sroa.7.i.i.i.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !5550, !noalias !5541
  br label %.body46.i.i.i.i

bb.pn:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5542)
  %i.ats = load i8, ptr %i.arv, align 1, !alias.scope !5543, !noalias !5544, !noundef !11
  %.not.i.i.i.i.i.i = icmp sgt i8 %i.ats, -1
  %.val.i.i.i.i.i.i = load ptr, ptr %i.aru, align 8, !alias.scope !5543, !noalias !5544 ; 5 uses
  %.val21.i.i.i.i.i.i = load i64, ptr %i.arw, align 8, !alias.scope !5543, !noalias !5544 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.po, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i

bb.po:                                            ; preds = %bb.pn
  %.not.i.i.i.i44.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i44.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.att = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i, i64 -16
  %i.atu = atomicrmw add ptr %i.att, i64 1 monotonic, align 8, !noalias !5551
  %i.atv = icmp slt i64 %i.atu, 0
  br i1 %i.atv, label %.invoke.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, !prof !27

.invoke.i.i.i.i:                                  ; preds = %bb.pp, %bb.pk
  %i.atw = phi ptr [ %.val.i.i.i40.i.i.i.i, %bb.pk ], [ %.val.i.i.i.i.i.i, %bb.pp ]
  %i.atx = phi i64 [ %.val21.i.i.i.i.i.i.i, %bb.pk ], [ %.val21.i.i.i.i.i.i, %bb.pp ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.atw, i64 noundef %i.atx) #24
          to label %.cont.i.i.i.i unwind label %bb.pq, !noalias !5407

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.pn, %bb.pp, %bb.po
  %.sroa.06.0.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i, %bb.pp ], [ inttoptr (i64 16 to ptr), %bb.po ], [ %.val.i.i.i.i.i.i, %bb.pn ]
  %i.aty = ptrtoint ptr %.sroa.06.0.i.i.i.i.i.i to i64
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i.i

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.pl, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i
  %.sink84.i.i.i = phi i64 [ %i.aty, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %i.atm, %bb.pl ], [ %i.atm, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ]
  %.sroa.58.0.i.i.i.sink.i.i.i = phi i64 [ %.val21.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ], [ %.val21.i.i.i.i.i.i.i, %bb.pl ], [ %.val21.i.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i ]
  store i64 0, ptr %.sroa.0109.0150.i.i.i.i, align 8, !alias.scope !5532, !noalias !5534
  %.sroa.6.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.i.i.i, i64 8
  store i64 %.sink84.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i, align 8, !alias.scope !5532, !noalias !5534
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx4.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.i.i.i, i64 16
  store i64 %.sroa.58.0.i.i.i.sink.i.i.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx4.sroa_idx.i.i.i.i.i, align 8, !alias.scope !5532, !noalias !5534
  %i.atz = icmp eq ptr %i.atg, %i.asq
  br i1 %i.atz, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.pq:                                            ; preds = %.invoke.i.i.i.i
  %i.aua = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i.i.i

.body46.i.i.i.i:                                  ; preds = %bb.pq, %bb.pm
  %.pn13.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.aua, %bb.pq ], [ %.us-phi9.i.i.i, %bb.pm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #21
          to label %bb.pr unwind label %bb.c, !noalias !5407

bb.pr:                                            ; preds = %.body46.i.i.i.i, %bb.ow, %.body.i.i.i.i
  %.pn17.pn.i.i.i.i = phi { ptr, i32 } [ %.pn13.pn.pn.i.i.i.i, %.body46.i.i.i.i ], [ %.pn9.i.i.i.i, %.body.i.i.i.i ], [ %i.arl, %bb.ow ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5406
  %i.aub = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5552)
  call void @llvm.experimental.noalias.scope.decl(metadata !5553)
  %i.auc = load ptr, ptr %i.aub, align 8, !alias.scope !5554, !noalias !5406, !nonnull !11, !noundef !11
  %i.aud = atomicrmw sub ptr %i.auc, i64 1 release, align 8, !noalias !5555
  %i.aue = icmp eq i64 %i.aud, 1
  br i1 %i.aue, label %bb.ps, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit50.i.i.i.i

bb.ps:                                            ; preds = %bb.pr
end_hunk_0
