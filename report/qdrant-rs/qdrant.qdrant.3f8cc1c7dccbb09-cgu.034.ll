Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.034?download=true
inline.NumInlined: 3417
inline.NumDeleted: 1659
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6stream15futures_orderedINtB5_12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2o_10Collection20do_core_search_batch0s_00EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant:bb.a
bb.op:                                            ; preds = %bb.oo
  %i.ary = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEEECsl8OoimOLbh_6qdrant.exit108.i.i.i.i.i

bb.oq:                                            ; preds = %bb.eg
  %i.arz = getelementptr inbounds nuw i8, ptr %1, i64 416
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.arz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEEECsl8OoimOLbh_6qdrant.exit108.i.i.i.i.i unwind label %bb.cw, !noalias !5386

bb.or:                                            ; preds = %bb.y, %bb.x
  %i.asa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.nx, %bb.cz, %bb.ct
  %i.asb = phi ptr [ %i.nr, %bb.ct ], [ %i.arf, %bb.nx ], [ %i.oa, %bb.cz ]
  %i.asc = phi ptr [ %i.ns, %bb.ct ], [ %i.arg, %bb.nx ], [ %i.oc, %bb.cz ]
  %.sink.i.ph.i.i.i.i = phi i8 [ 3, %bb.ct ], [ 5, %bb.nx ], [ 4, %bb.cz ]
  store i8 %.sink.i.ph.i.i.i.i, ptr %i.asc, align 1, !noalias !5381
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6188.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i.i.i.i)
  br label %bb.qp

.thread.i.i.i:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.cu
  %i.asd = phi ptr [ %i.nt, %bb.cu ], [ %i.aff, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %i.ase = phi ptr [ %i.nu, %bb.cu ], [ %i.afg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %.ph.i.i.i = phi ptr [ %i.nv, %bb.cu ], [ %i.afh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %.ph119.i.i.i = phi ptr [ %i.nw, %bb.cu ], [ %i.afi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %.sroa.12.sroa.0.4.i.i.ph.i.i.i = phi i64 [ %.sroa.687.i.sroa.0.0248.i.i.i.i.i, %bb.cu ], [ %.sroa.12.sroa.0.2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %.sroa.11128.4.i.i.ph.i.i.i = phi ptr [ %.sroa.582.0.i249.i.i.i.i.i, %bb.cu ], [ %.sroa.11128.2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %.sroa.7121.4.i.i.ph.i.i.i = phi ptr [ %.sroa.4.0.i250.i.i.i.i.i, %bb.cu ], [ %.sroa.7121.2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %.sroa.0118.4.i.i.ph.i.i.i = phi i64 [ %.sroa.075.0.i251.i.i.i.i.i, %bb.cu ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_IBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ]
  %i.asf = getelementptr inbounds nuw i8, ptr %1, i64 436
  store i8 0, ptr %i.asf, align 4, !noalias !5381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1186.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.7.i.i.i.i.i, i64 16, i1 false), !noalias !5493
  store i8 1, ptr %.ph.i.i.i, align 1, !noalias !5381
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6188.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i.i.i.i)
  br label %bb.ot

bb.os:                                            ; preds = %bb.oo, %bb.ef
  store i8 0, ptr %i.sb, align 1, !noalias !5381
  %i.asg = getelementptr inbounds nuw i8, ptr %1, i64 436
  store i8 0, ptr %i.asg, align 4, !noalias !5381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1186.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.sroa.7.i.i.i.i.i, i64 16, i1 false), !noalias !5493
  store i8 1, ptr %i.rz, align 1, !noalias !5381
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6188.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.7.i.i.i.i.i)
  %i.ash = icmp eq i64 %.sroa.0118.1.i.i.i.i.i, -2
  br i1 %i.ash, label %bb.qp, label %bb.ot

bb.ot:                                            ; preds = %bb.os, %.thread.i.i.i
  %i.asi = phi ptr [ %i.asd, %.thread.i.i.i ], [ %i.rx, %bb.os ] ; 4 uses
  %i.asj = phi ptr [ %i.ase, %.thread.i.i.i ], [ %i.ry, %bb.os ] ; 4 uses
  %.sroa.0118.4.i.i127.i.i.i = phi i64 [ %.sroa.0118.4.i.i.ph.i.i.i, %.thread.i.i.i ], [ %.sroa.0118.1.i.i.i.i.i, %bb.os ] ; 4 uses
  %.sroa.0116.0.copyload.i.i.i = phi ptr [ %.sroa.7121.4.i.i.ph.i.i.i, %.thread.i.i.i ], [ %.sroa.7121.1.i.i.i.i.i, %bb.os ] ; 2 uses
  %.sroa.4117.0.copyload.i.i.i = phi ptr [ %.sroa.11128.4.i.i.ph.i.i.i, %.thread.i.i.i ], [ %.sroa.11128.1.i.i.i.i.i, %bb.os ] ; 6 uses
  %.sroa.5118.0.copyload.i.i.i = phi i64 [ %.sroa.12.sroa.0.4.i.i.ph.i.i.i, %.thread.i.i.i ], [ %.sroa.12.sroa.0.1.i.i.i.i.i, %bb.os ] ; 4 uses
  %i.ask = phi ptr [ %.ph119.i.i.i, %.thread.i.i.i ], [ %i.sa, %bb.os ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set22execute_read_operationNtBJ_15ShardReplicaSet34execute_and_resolve_read_operationINtNtCsexYYUdYSQU6_5alloc3vec3VecIB2R_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCNCNvMNtBJ_8read_opsB1U_11core_search00E0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ask)
          to label %bb.ov unwind label %bb.ou, !noalias !5380

bb.ou:                                            ; preds = %bb.ot
  %i.asl = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.ov:                                            ; preds = %bb.ot
  %i.asm = getelementptr inbounds nuw i8, ptr %1, i64 248
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.asm)
          to label %bb.oz unwind label %bb.oy, !noalias !5380

bb.ow:                                            ; preds = %bb.oy, %bb.f
  %i.asn = phi ptr [ %i.asi, %bb.oy ], [ %i.cp, %bb.f ] ; 2 uses
  %i.aso = phi ptr [ %i.asj, %bb.oy ], [ %i.cq, %bb.f ] ; 2 uses
  %.pn6.i.i.i.i = phi { ptr, i32 } [ %i.ast, %bb.oy ], [ %.pn4.i.i.i.i, %bb.f ] ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5494)
  call void @llvm.experimental.noalias.scope.decl(metadata !5495)
  %i.asq = load ptr, ptr %i.asp, align 8, !alias.scope !5496, !noalias !5379, !nonnull !12, !noundef !12
  %i.asr = atomicrmw sub ptr %i.asq, i64 1 release, align 8, !noalias !5497
  %i.ass = icmp eq i64 %i.asr, 1
  br i1 %i.ass, label %bb.ox, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchEECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.ox:                                            ; preds = %bb.ow
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchE9drop_slowCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.asp) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.pc, !noalias !5380

bb.oy:                                            ; preds = %bb.ov
  %i.ast = landingpad { ptr, i32 }
          cleanup
  br label %bb.ow

bb.oz:                                            ; preds = %bb.ov
  %i.asu = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5498)
  call void @llvm.experimental.noalias.scope.decl(metadata !5499)
  %i.asv = load ptr, ptr %i.asu, align 8, !alias.scope !5500, !noalias !5379, !nonnull !12, !noundef !12
  %i.asw = atomicrmw sub ptr %i.asv, i64 1 release, align 8, !noalias !5501
  %i.asx = icmp eq i64 %i.asw, 1
  br i1 %i.asx, label %bb.pa, label %bb.pe

bb.pa:                                            ; preds = %bb.oz
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchE9drop_slowCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.asu) #22
          to label %bb.pe unwind label %bb.pb, !noalias !5380

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.pb, %bb.ox, %bb.ow
  %i.asy = phi ptr [ %i.asi, %bb.pb ], [ %i.asn, %bb.ox ], [ %i.asn, %bb.ow ]
  %i.asz = phi ptr [ %i.asj, %bb.pb ], [ %i.aso, %bb.ox ], [ %i.aso, %bb.ow ]
  %.pn8.i.i.i.i = phi { ptr, i32 } [ %i.ata, %bb.pb ], [ %.pn6.i.i.i.i, %bb.ox ], [ %.pn6.i.i.i.i, %bb.ow ]
  store i8 2, ptr %i.asy, align 1, !noalias !5379
  br label %.body.i.i.i

bb.pb:                                            ; preds = %bb.pa
  %i.ata = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs5QaNqjAn6vc_5shard6search22CoreSearchRequestBatchEECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.pc:                                            ; preds = %bb.ox, %.body.i.i.i.i, %bb.f
  %i.atb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !5380
  unreachable

bb.pd:                                            ; preds = %bb.h, %bb.g
  %i.atc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.pe:                                            ; preds = %bb.pa, %bb.oz
  store i8 1, ptr %i.asi, align 1, !noalias !5379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.896.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1186.i.i.i, i64 16, i1 false), !noalias !5377
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1186.i.i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set8read_opsNtBI_15ShardReplicaSet11core_search0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.asj)
          to label %bb.pg unwind label %bb.pf, !noalias !5378

bb.pf:                                            ; preds = %bb.pe
  %i.atd = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

bb.pg:                                            ; preds = %bb.pe
  %.not.i.i.i.i = icmp eq i64 %.sroa.0118.4.i.i127.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.ph, label %bb.qc

bb.ph:                                            ; preds = %bb.pg
  store ptr %.sroa.0116.0.copyload.i.i.i, ptr %i.aw, align 8, !noalias !5377
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.4117.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !5377
  %.sroa.5106.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.5118.0.copyload.i.i.i, ptr %.sroa.5106.0..sroa_idx.i.i.i, align 8, !noalias !5377
  %i.ate = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.val23.i.i.i = load i64, ptr %i.ate, align 8, !range !22, !noalias !5377, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.val23.i.i.i, 2
  br i1 %.not.i.i.i, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, label %bb.pj

_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i: ; preds = %.loopexit.i.i.i, %.loopexit.i.us.i.i, %bb.pj, %bb.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5377
  %i.atf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5502)
  call void @llvm.experimental.noalias.scope.decl(metadata !5503)
  %i.atg = load ptr, ptr %i.atf, align 8, !alias.scope !5504, !noalias !5377, !nonnull !12, !noundef !12
  %i.ath = atomicrmw sub ptr %i.atg, i64 1 release, align 8, !noalias !5505
  %i.ati = icmp eq i64 %i.ath, 1
  br i1 %i.ati, label %bb.pi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit.i.i.i

bb.pi:                                            ; preds = %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.atf) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.pl, !noalias !5378

bb.pj:                                            ; preds = %bb.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4117.0.copyload.i.i.i) ]
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.5118.0.copyload.i.i.i, 24
  %i.atj = getelementptr inbounds nuw i8, ptr %.sroa.4117.0.copyload.i.i.i, i64 %.idx.i.i.i ; 2 uses
  %i.atk = icmp eq i64 %.sroa.5118.0.copyload.i.i.i, 0
  br i1 %i.atk, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i

_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i: ; preds = %bb.pj
  %i.atl = trunc nuw i64 %.val23.i.i.i to i1
  %i.atm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %1, i64 39 ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.atl, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i

_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i: ; preds = %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i, %.loopexit.i.us.i.i
  %.sroa.0107.0151.i.us.i.i = phi ptr [ %i.atp, %.loopexit.i.us.i.i ], [ %.sroa.4117.0.copyload.i.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i ] ; 3 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %.sroa.0107.0151.i.us.i.i, i64 24 ; 2 uses
  %i.atq = getelementptr i8, ptr %.sroa.0107.0151.i.us.i.i, i64 8
  %.val26.i.us.i.i = load ptr, ptr %i.atq, align 8, !noalias !5378, !nonnull !12, !noundef !12 ; 2 uses
  %i.atr = getelementptr i8, ptr %.sroa.0107.0151.i.us.i.i, i64 16
  %.val27.i.us.i.i = load i64, ptr %i.atr, align 8, !noalias !5378, !noundef !12 ; 2 uses
  %.idx152.i.us.i.i = mul nuw nsw i64 %.val27.i.us.i.i, 208
  %i.ats = getelementptr inbounds nuw i8, ptr %.val26.i.us.i.i, i64 %.idx152.i.us.i.i
  %i.att = icmp eq i64 %.val27.i.us.i.i, 0
  br i1 %i.att, label %.loopexit.i.us.i.i, label %.lr.ph.i.us.us.i.i

.lr.ph.i.us.us.i.i:                               ; preds = %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i
  %.sroa.0109.0150.i.us.us.i.i = phi ptr [ %i.atu, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i ], [ %.val26.i.us.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i ] ; 7 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.us.us.i.i, i64 208 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5506)
  call void @llvm.experimental.noalias.scope.decl(metadata !5507)
  %i.atv = load i64, ptr %.sroa.0109.0150.i.us.us.i.i, align 8, !range !22, !alias.scope !5506, !noalias !5508, !noundef !12 ; 2 uses
  %.not.i38.i.us.us.i.i = icmp eq i64 %i.atv, 2
  br i1 %.not.i38.i.us.us.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i, label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.us.us.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.us.us.i.i: ; preds = %.lr.ph.i.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5509)
  call void @llvm.experimental.noalias.scope.decl(metadata !5510)
  call void @llvm.experimental.noalias.scope.decl(metadata !5511)
  %i.atw = load i64, ptr %i.atm, align 8, !alias.scope !5512, !noalias !5513, !noundef !12 ; 3 uses
  %i.atx = icmp eq i64 %i.atv, 0
  %i.aty = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.us.us.i.i, i64 23
  %i.atz = load i8, ptr %i.aty, align 1, !alias.scope !5514, !noalias !5515
  %.not.i.i.i.i.i.i.i.us.us.i.i = icmp sgt i8 %i.atz, -1
  %or.cond.i.i.i.i.us.us.i.i = select i1 %i.atx, i1 %.not.i.i.i.i.i.i.i.us.us.i.i, i1 false
  br i1 %or.cond.i.i.i.i.us.us.i.i, label %bb.pk, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i

bb.pk:                                            ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.us.us.i.i
  %i.aua = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.us.us.i.i, i64 8 ; 2 uses
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aua)
          to label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i unwind label %.split.us.split.us.i.i, !noalias !5515

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i: ; preds = %.lr.ph.i.us.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5516)
  %i.aub = load i64, ptr %i.atm, align 8, !alias.scope !5517, !noalias !5518, !noundef !12
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i, %bb.pk, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.us.us.i.i
  %.sink.i.i = phi i64 [ %i.aub, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.us.us.i.i ], [ %i.atw, %bb.pk ], [ %i.atw, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.us.us.i.i ]
  store i64 1, ptr %.sroa.0109.0150.i.us.us.i.i, align 8, !alias.scope !5506, !noalias !5508
  %.sroa.6.0..sroa_idx4.i.i.us.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.us.us.i.i, i64 8
  store i64 %.sink.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.us.us.i.i, align 8, !alias.scope !5506, !noalias !5508
  %i.auc = icmp eq ptr %i.atu, %i.ats
  br i1 %i.auc, label %.loopexit.i.us.i.i, label %.lr.ph.i.us.us.i.i

.loopexit.i.us.i.i:                               ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.us.us.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i
  %3 = icmp eq ptr %i.atp, %i.atj
  br i1 %3, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.us.i.i

.split.us.split.us.i.i:                           ; preds = %bb.pk
  %i.aud = landingpad { ptr, i32 }
          cleanup
  br label %bb.pv

.loopexit.i.i.i:                                  ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.aue = icmp eq ptr %i.auf, %i.atj
  br i1 %i.aue, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i, label %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i

_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i, %.loopexit.i.i.i
  %.sroa.0107.0151.i.i.i = phi ptr [ %i.auf, %.loopexit.i.i.i ], [ %.sroa.4117.0.copyload.i.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.lr.ph.i.i.i ] ; 3 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.sroa.0107.0151.i.i.i, i64 24 ; 2 uses
  %i.aug = getelementptr i8, ptr %.sroa.0107.0151.i.i.i, i64 8
  %.val26.i.i.i = load ptr, ptr %i.aug, align 8, !noalias !5378, !nonnull !12, !noundef !12 ; 2 uses
  %i.auh = getelementptr i8, ptr %.sroa.0107.0151.i.i.i, i64 16
  %.val27.i.i.i = load i64, ptr %i.auh, align 8, !noalias !5378, !noundef !12 ; 2 uses
  %.idx152.i.i.i = mul nuw nsw i64 %.val27.i.i.i, 208
  %i.aui = getelementptr inbounds nuw i8, ptr %.val26.i.i.i, i64 %.idx152.i.i.i
  %i.auj = icmp eq i64 %.val27.i.i.i, 0
  br i1 %i.auj, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

bb.pl:                                            ; preds = %bb.pi
  %i.auk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aul = load i64, ptr %i.ate, align 8, !range !22, !alias.scope !5519, !noalias !5377, !noundef !12 ; 2 uses
  %i.aum = icmp eq i64 %i.aul, 2
  br i1 %i.aum, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.aun = icmp eq i64 %i.aul, 0
  %i.auo = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.aup = load i8, ptr %i.auo, align 1, !alias.scope !5520, !noalias !5377
  %.not.i.i.i.i.i31.i.i.i = icmp sgt i8 %i.aup, -1
  %or.cond.i.i.i.i.i = select i1 %i.aun, i1 %.not.i.i.i.i.i31.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.pn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i

bb.pn:                                            ; preds = %bb.pm
  %i.auq = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.auq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.b, !noalias !5378

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.pi, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread.i.i.i
  %i.aur = load i64, ptr %i.ate, align 8, !range !22, !alias.scope !5521, !noalias !5377, !noundef !12 ; 2 uses
  %i.aus = icmp eq i64 %i.aur, 2
  br i1 %i.aus, label %bb.qq, label %bb.po

bb.po:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.aut = icmp eq i64 %i.aur, 0
  %i.auu = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.auv = load i8, ptr %i.auu, align 1, !alias.scope !5522, !noalias !5377
  %.not.i.i.i.i.i33.i.i.i = icmp sgt i8 %i.auv, -1
  %or.cond.i.i34.i.i.i = select i1 %i.aut, i1 %.not.i.i.i.i.i33.i.i.i, i1 false
  br i1 %or.cond.i.i34.i.i.i, label %bb.pp, label %bb.qq

bb.pp:                                            ; preds = %bb.po
  %i.auw = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.auw)
          to label %bb.qq unwind label %bb.pq, !noalias !5378

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.qn, %bb.qm, %bb.ql, %bb.qg, %bb.qf, %bb.qe, %bb.pq, %bb.pn, %bb.pm, %bb.pl
  %.pn20.i.i.i = phi { ptr, i32 } [ %i.aux, %bb.pq ], [ %i.auk, %bb.pm ], [ %i.awb, %bb.qf ], [ %i.auk, %bb.pn ], [ %i.auk, %bb.pl ], [ %i.awb, %bb.qg ], [ %i.awb, %bb.qe ], [ %.pn17.pn.i.i.i, %bb.qn ], [ %.pn17.pn.i.i.i, %bb.ql ], [ %.pn17.pn.i.i.i, %bb.qm ]
  store i8 2, ptr %i.az, align 8, !noalias !5377
  resume { ptr, i32 } %.pn20.i.i.i

bb.pq:                                            ; preds = %bb.qi, %bb.pp
  %i.aux = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsl8OoimOLbh_6qdrant.exit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i
  %.sroa.0109.0150.i.i.i = phi ptr [ %i.auy, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i ], [ %.val26.i.i.i, %_RNvXs2Q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_7IterMutINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.i.i.i ] ; 8 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.i.i, i64 208 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5506)
  call void @llvm.experimental.noalias.scope.decl(metadata !5507)
  %i.auz = load i64, ptr %.sroa.0109.0150.i.i.i, align 8, !range !22, !alias.scope !5506, !noalias !5508, !noundef !12 ; 2 uses
  %.not.i38.i.i.i = icmp eq i64 %i.auz, 2
  br i1 %.not.i38.i.i.i, label %bb.pw, label %bb.pr

bb.pr:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5509)
  call void @llvm.experimental.noalias.scope.decl(metadata !5510)
  call void @llvm.experimental.noalias.scope.decl(metadata !5511)
  %i.ava = load i8, ptr %i.atn, align 1, !alias.scope !5512, !noalias !5513, !noundef !12
  %.not.i.i.i39.i.i.i = icmp sgt i8 %i.ava, -1
  %.val.i.i.i40.i.i.i = load ptr, ptr %i.atm, align 8, !alias.scope !5512, !noalias !5513 ; 5 uses
  %.val21.i.i.i.i.i.i = load i64, ptr %i.ato, align 8, !alias.scope !5512, !noalias !5513 ; 4 uses
  br i1 %.not.i.i.i39.i.i.i, label %bb.ps, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i

bb.ps:                                            ; preds = %bb.pr
  %.not.i.i.i.i.i41.i.i.i = icmp eq ptr %.val.i.i.i40.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i41.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.avb = getelementptr inbounds i8, ptr %.val.i.i.i40.i.i.i, i64 -16
  %i.avc = atomicrmw add ptr %i.avb, i64 1 monotonic, align 8, !noalias !5523
  %i.avd = icmp slt i64 %i.avc, 0
  br i1 %i.avd, label %.invoke.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, !prof !28

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.pr, %bb.pt, %bb.ps
  %.sroa.06.0.i.i.i.i.i.i = phi ptr [ %.val.i.i.i40.i.i.i, %bb.pt ], [ inttoptr (i64 16 to ptr), %bb.ps ], [ %.val.i.i.i40.i.i.i, %bb.pr ]
  %i.ave = ptrtoint ptr %.sroa.06.0.i.i.i.i.i.i to i64 ; 3 uses
  %i.avf = icmp eq i64 %i.auz, 0
  %i.avg = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.i.i, i64 23
  %i.avh = load i8, ptr %i.avg, align 1, !alias.scope !5514, !noalias !5515
  %.not.i.i.i.i.i.i.i.i.i = icmp sgt i8 %i.avh, -1
  %or.cond.i.i.i.i.i.i = select i1 %i.avf, i1 %.not.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.pu, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i

bb.pu:                                            ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  %i.avi = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.i.i, i64 8 ; 2 uses
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.avi)
          to label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %.split.i.i, !noalias !5515

.split.i.i:                                       ; preds = %bb.pu
  %i.avj = landingpad { ptr, i32 }
          cleanup
  br label %bb.pv

bb.pv:                                            ; preds = %.split.i.i, %.split.us.split.us.i.i
  %.sroa.5.i.i.i.0.i.i = phi i64 [ %i.atw, %.split.us.split.us.i.i ], [ %i.ave, %.split.i.i ]
  %.sroa.7.i.i.i.0.i.i = phi i64 [ undef, %.split.us.split.us.i.i ], [ %.val21.i.i.i.i.i.i, %.split.i.i ]
  %.us-phi6.i.i = phi ptr [ %.sroa.0109.0150.i.us.us.i.i, %.split.us.split.us.i.i ], [ %.sroa.0109.0150.i.i.i, %.split.i.i ] ; 2 uses
  %.us-phi7.i.i = phi ptr [ %i.aua, %.split.us.split.us.i.i ], [ %i.avi, %.split.i.i ]
  %.us-phi8.i.i = phi i64 [ 1, %.split.us.split.us.i.i ], [ 0, %.split.i.i ]
  %.us-phi9.i.i = phi { ptr, i32 } [ %i.aud, %.split.us.split.us.i.i ], [ %i.avj, %.split.i.i ]
  store i64 %.us-phi8.i.i, ptr %.us-phi6.i.i, align 8, !alias.scope !5524, !noalias !5515
  store i64 %.sroa.5.i.i.i.0.i.i, ptr %.us-phi7.i.i, align 8, !alias.scope !5524, !noalias !5515
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.us-phi6.i.i, i64 16
  store i64 %.sroa.7.i.i.i.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5524, !noalias !5515
  br label %.body46.i.i.i

bb.pw:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5516)
  %i.avk = load i8, ptr %i.atn, align 1, !alias.scope !5517, !noalias !5518, !noundef !12
  %.not.i.i.i.i.i = icmp sgt i8 %i.avk, -1
  %.val.i.i.i.i.i = load ptr, ptr %i.atm, align 8, !alias.scope !5517, !noalias !5518 ; 5 uses
  %.val21.i.i.i.i.i = load i64, ptr %i.ato, align 8, !alias.scope !5517, !noalias !5518 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.px, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i

bb.px:                                            ; preds = %bb.pw
  %.not.i.i.i.i44.i.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i44.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.avl = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16
  %i.avm = atomicrmw add ptr %i.avl, i64 1 monotonic, align 8, !noalias !5525
  %i.avn = icmp slt i64 %i.avm, 0
  br i1 %i.avn, label %.invoke.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, !prof !28

.invoke.i.i.i:                                    ; preds = %bb.py, %bb.pt
  %i.avo = phi ptr [ %.val.i.i.i40.i.i.i, %bb.pt ], [ %.val.i.i.i.i.i, %bb.py ]
  %i.avp = phi i64 [ %.val21.i.i.i.i.i.i, %bb.pt ], [ %.val21.i.i.i.i.i, %bb.py ]
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.avo, i64 noundef %i.avp) #24
          to label %.cont.i.i.i unwind label %bb.pz, !noalias !5378

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.pw, %bb.py, %bb.px
  %.sroa.06.0.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.py ], [ inttoptr (i64 16 to ptr), %bb.px ], [ %.val.i.i.i.i.i, %bb.pw ]
  %i.avq = ptrtoint ptr %.sroa.06.0.i.i.i.i.i to i64
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtB7_5clone5Clone10clone_fromCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.pu, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  %.sink84.i.i = phi i64 [ %i.avq, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %i.ave, %bb.pu ], [ %i.ave, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  %.sroa.58.0.i.i.i.sink.i.i = phi i64 [ %.val21.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i ], [ %.val21.i.i.i.i.i.i, %bb.pu ], [ %.val21.i.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i ]
  store i64 0, ptr %.sroa.0109.0150.i.i.i, align 8, !alias.scope !5506, !noalias !5508
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.i.i, i64 8
  store i64 %.sink84.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !alias.scope !5506, !noalias !5508
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx4.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0109.0150.i.i.i, i64 16
  store i64 %.sroa.58.0.i.i.i.sink.i.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx4.sroa_idx.i.i.i.i, align 8, !alias.scope !5506, !noalias !5508
  %i.avr = icmp eq ptr %i.auy, %i.aui
  br i1 %i.avr, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

bb.pz:                                            ; preds = %.invoke.i.i.i
  %i.avs = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i.i.i

.body46.i.i.i:                                    ; preds = %bb.pz, %bb.pv
  %.pn13.pn.pn.i.i.i = phi { ptr, i32 } [ %i.avs, %bb.pz ], [ %.us-phi9.i.i, %bb.pv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #21
          to label %bb.qa unwind label %bb.b, !noalias !5378

bb.qa:                                            ; preds = %.body46.i.i.i, %bb.pf, %.body.i.i.i
  %.pn17.pn.i.i.i = phi { ptr, i32 } [ %.pn13.pn.pn.i.i.i, %.body46.i.i.i ], [ %.pn9.i.i.i, %.body.i.i.i ], [ %i.atd, %bb.pf ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !5377
  %i.avt = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5526)
  call void @llvm.experimental.noalias.scope.decl(metadata !5527)
  %i.avu = load ptr, ptr %i.avt, align 8, !alias.scope !5528, !noalias !5377, !nonnull !12, !noundef !12
  %i.avv = atomicrmw sub ptr %i.avu, i64 1 release, align 8, !noalias !5529
  %i.avw = icmp eq i64 %i.avv, 1
  br i1 %i.avw, label %bb.qb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit50.i.i.i

bb.qb:                                            ; preds = %bb.qa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.avt) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit50.i.i.i unwind label %bb.b, !noalias !5378

end_hunk_0
