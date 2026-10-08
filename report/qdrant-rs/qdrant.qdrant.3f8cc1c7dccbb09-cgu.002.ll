Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.002?download=true
inline.NumInlined: 25559
inline.NumDeleted: 7874
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptbNCNCNvNvXsg_NtNtBa_3api12snapshot_apiNtB1d_22recover_shard_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register22recover_shard_snapshot00E000Bc_:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit86.i: ; preds = %bb.fs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathEEB1v_.exit.i
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 1112
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.pe)
          to label %bb.gc unwind label %bb.gb, !noalias !40561

bb.fz:                                            ; preds = %bb.gb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit91.i
  %.pn30.i = phi { ptr, i32 } [ %i.pj, %bb.gb ], [ %.pn28.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit91.i ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 1256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40658)
  call void @llvm.experimental.noalias.scope.decl(metadata !40659)
  call void @llvm.experimental.noalias.scope.decl(metadata !40660)
  %i.pg = load ptr, ptr %i.pf, align 8, !alias.scope !40661, !noalias !40560, !nonnull !38, !noundef !38
  %i.ph = atomicrmw sub ptr %i.pg, i64 1 release, align 8, !noalias !40662
  %i.pi = icmp eq i64 %i.ph, 1
  br i1 %i.pi, label %bb.ga, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtNtCsl8OoimOLbh_6qdrant6common11http_client10HttpClientEEB1k_.exit.i

bb.ga:                                            ; preds = %bb.fz
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsl8OoimOLbh_6qdrant6common11http_client10HttpClientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pf) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtNtCsl8OoimOLbh_6qdrant6common11http_client10HttpClientEEB1k_.exit.i unwind label %bb.ae, !noalias !40561

bb.gb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit86.i
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.gc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit86.i
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 1256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40663)
  call void @llvm.experimental.noalias.scope.decl(metadata !40664)
  call void @llvm.experimental.noalias.scope.decl(metadata !40665)
  %i.pl = load ptr, ptr %i.pk, align 8, !alias.scope !40666, !noalias !40560, !nonnull !38, !noundef !38
  %i.pm = atomicrmw sub ptr %i.pl, i64 1 release, align 8, !noalias !40667
  %i.pn = icmp eq i64 %i.pm, 1
  br i1 %i.pn, label %bb.gd, label %bb.gw

bb.gd:                                            ; preds = %bb.gc
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsl8OoimOLbh_6qdrant6common11http_client10HttpClientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pk) #28
          to label %bb.gw unwind label %bb.ex, !noalias !40561

bb.ge:                                            ; preds = %bb.ez
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 976
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops21ShardSnapshotLocationECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(88) %i.po) #26
          to label %.body72.i unwind label %bb.ae, !noalias !40561

bb.gf:                                            ; preds = %.body72.i
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 1064
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pp) #26
          to label %.body76.i unwind label %bb.ae, !noalias !40561

bb.gg:                                            ; preds = %.body76.i
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 1088
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.pq) #26
          to label %.body81.i unwind label %bb.ae, !noalias !40561

bb.gh:                                            ; preds = %.body81.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathEEB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae) #26
          to label %.body87.i unwind label %bb.ae, !noalias !40561

bb.gi:                                            ; preds = %bb.gj, %bb.aj
  store i8 0, ptr %i.cp, align 2, !noalias !40560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !40560
  br label %bb.ak

bb.gj:                                            ; preds = %bb.aj
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y) #26
          to label %bb.gi unwind label %bb.ae, !noalias !40561

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB1i_.exit53.i: ; preds = %bb.al, %bb.ak
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 1884
  %i.ps = load i8, ptr %i.pr, align 4, !range !40, !noalias !40560, !noundef !38
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB1i_.exit53.i
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 1883
  %i.pv = load i8, ptr %i.pu, align 1, !range !40, !noalias !40560, !noundef !38
  %i.pw = trunc nuw i8 %i.pv to i1
  br i1 %i.pw, label %bb.gn, label %bb.gm

bb.gl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB1i_.exit53.i
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 976
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations12snapshot_ops21ShardSnapshotLocationECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(88) %i.px) #26
          to label %bb.gk unwind label %bb.ae, !noalias !40561

bb.gm:                                            ; preds = %bb.gn, %bb.gk
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 1882
  %i.pz = load i8, ptr %i.py, align 2, !range !40, !noalias !40560, !noundef !38
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %bb.gp, label %bb.go

bb.gn:                                            ; preds = %bb.gk
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 1064
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.qb) #26
          to label %bb.gm unwind label %bb.ae, !noalias !40561

bb.go:                                            ; preds = %bb.gp, %bb.gm
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 1885
  %i.qd = load i8, ptr %i.qc, align 1, !range !40, !noalias !40560, !noundef !38
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %bb.gs, label %bb.gq

bb.gp:                                            ; preds = %bb.gm
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 1088
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.qf) #26
          to label %bb.go unwind label %bb.ae, !noalias !40561

bb.gq:                                            ; preds = %bb.gs, %bb.go
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40668)
  call void @llvm.experimental.noalias.scope.decl(metadata !40669)
  call void @llvm.experimental.noalias.scope.decl(metadata !40670)
  %i.qh = load ptr, ptr %i.qg, align 8, !alias.scope !40671, !noalias !40560, !nonnull !38, !noundef !38
  %i.qi = atomicrmw sub ptr %i.qh, i64 1 release, align 8, !noalias !40672
  %i.qj = icmp eq i64 %i.qi, 1
  br i1 %i.qj, label %bb.gr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit97.i

bb.gr:                                            ; preds = %bb.gq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qg) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit97.i unwind label %bb.ae, !noalias !40561

bb.gs:                                            ; preds = %bb.go
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtNtNtCsl8OoimOLbh_6qdrant5actix3api19CollectionShardPathEEB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ae) #26
          to label %bb.gq unwind label %bb.ae, !noalias !40561

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit97.i: ; preds = %bb.gr, %bb.gq
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 1112
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage4rbac4auth4AuthECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.qk) #26
          to label %bb.gt unwind label %bb.ae, !noalias !40561

bb.gt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit97.i
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 1256 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40673)
  call void @llvm.experimental.noalias.scope.decl(metadata !40674)
  call void @llvm.experimental.noalias.scope.decl(metadata !40675)
  %i.qm = load ptr, ptr %i.ql, align 8, !alias.scope !40676, !noalias !40560, !nonnull !38, !noundef !38
  %i.qn = atomicrmw sub ptr %i.qm, i64 1 release, align 8, !noalias !40677
  %i.qo = icmp eq i64 %i.qn, 1
  br i1 %i.qo, label %bb.gu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtNtCsl8OoimOLbh_6qdrant6common11http_client10HttpClientEEB1k_.exit.i

bb.gu:                                            ; preds = %bb.gt
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsl8OoimOLbh_6qdrant6common11http_client10HttpClientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ql) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtNtCsl8OoimOLbh_6qdrant6common11http_client10HttpClientEEB1k_.exit.i unwind label %bb.ae, !noalias !40561

bb.gv:                                            ; preds = %bb.an, %bb.am
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread12:                                        ; preds = %bb.ev, %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(51) %.sroa.6132.i, i64 51, i1 false), !noalias !40678
  store i8 1, ptr %i.af, align 8, !noalias !40560
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6132.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i)
  br label %bb.gy

bb.gw:                                            ; preds = %bb.gc, %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(51) %.sroa.6132.i, i64 51, i1 false), !noalias !40678
  store i8 1, ptr %i.af, align 8, !noalias !40560
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6132.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i)
  %i.qq = icmp eq i32 %.sroa.0128.0.i, -2
  br i1 %i.qq, label %bb.gx, label %bb.gy

common.ret:                                       ; preds = %bb.hb, %bb.gx
  %storemerge = phi i8 [ 1, %bb.hb ], [ 3, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i8 %storemerge, ptr %i.ab, align 8
  ret void

bb.gx:                                            ; preds = %.thread, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  store i32 -2, ptr %0, align 8
  br label %common.ret

bb.gy:                                            ; preds = %.thread12, %bb.gw
  %i.qr = phi i32 [ -1, %.thread12 ], [ %.sroa.0128.0.i, %bb.gw ] ; 2 uses
  %.sroa.4.1.i15 = phi i8 [ 1, %.thread12 ], [ %.sroa.4.0.i, %bb.gw ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(51) %.sroa.9, i64 51, i1 false)
  store i32 %i.qr, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i8 %.sroa.4.1.i15, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvNvXsg_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtBN_22recover_shard_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register22recover_shard_snapshot00EBT_(ptr noundef nonnull align 8 %i.ae)
          to label %bb.ha unwind label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit

bb.ha:                                            ; preds = %bb.gy
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 1889
  %i.qu = load i8, ptr %i.qt, align 1, !range !40, !noundef !38
  %i.qv = trunc nuw i8 %i.qu to i1
  %.not = icmp eq i32 %i.qr, -1
  %or.cond = select i1 %i.qv, i1 true, i1 %.not
  br i1 %or.cond, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.hc, %bb.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false)
  br label %common.ret

bb.hc:                                            ; preds = %bb.ha
  invoke void @_RNvNtNtCsl8OoimOLbh_6qdrant5actix7helpers17log_service_error(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aa)
          to label %bb.hb unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.qw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit unwind label %bb.he

bb.he:                                            ; preds = %bb.hd, %.body
  %i.qx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit: ; preds = %.body, %bb.gz, %bb.hd
  %.pn4 = phi { ptr, i32 } [ %i.qw, %bb.hd ], [ %i.qs, %bb.gz ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i8 2, ptr %i.ab, align 8
  resume { ptr, i32 } %.pn4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCINvNtNtCsl8OoimOLbh_6qdrant5actix7helpers14time_or_acceptbNCNCNvNvXsj_NtNtBa_3api12snapshot_apiNtB1d_21delete_shard_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register21delete_shard_snapshot00E000Bc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.542.i.i.i.i = alloca [39 x i8], align 1  ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.524.i.i.i = alloca [39 x i8], align 1    ; 7 uses
  %.sroa.921.i.i.i = alloca [39 x i8], align 1    ; 9 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [56 x i8], align 8                ; 19 uses
  %.sroa.6275.i.i = alloca [39 x i8], align 1     ; 7 uses
  %.sroa.3270.sroa.3.i.i = alloca [23 x i8], align 1 ; 7 uses
  %.sroa.5271.i.i = alloca [16 x i8], align 8     ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [448 x i8], align 8               ; 7 uses
  %.sroa.3252.i.i = alloca [40 x i8], align 8     ; 9 uses
  %.sroa.8248.i.i = alloca [40 x i8], align 8     ; 10 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.6200.i.i = alloca [40 x i8], align 8     ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 11 uses
  %i.q = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.8.i.i = alloca [28 x i8], align 4        ; 7 uses
  %.sroa.5.i = alloca [51 x i8], align 1          ; 5 uses
  %.sroa.3.sroa.2.i = alloca [51 x i8], align 1   ; 5 uses
  %.sroa.1123.sroa.6.i = alloca [51 x i8], align 1 ; 7 uses
  %.sroa.0.i = alloca [48 x i8], align 8          ; 5 uses
  %i.r = alloca [56 x i8], align 8                ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1264 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !range !39, !noundef !38
  switch i8 %i.t, label %default.unreachable26 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.b
  ]

default.unreachable26:                            ; preds = %bb.bw, %bb.bt, %bb.bp, %bb.y, %bb.m, %bb.f, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(632) %i.u, ptr noundef nonnull align 8 dereferenceable(632) %1, i64 632, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #25
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #25
  unreachable

.body:                                            ; preds = %bb.gs, %bb.gl
  %.pn = phi { ptr, i32 } [ %.pn6.i, %bb.gl ], [ %i.sl, %bb.gs ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvNvXsj_NtNtNtCsl8OoimOLbh_6qdrant5actix3api12snapshot_apiNtBN_21delete_shard_snapshotNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register21delete_shard_snapshot00EBT_(ptr noundef nonnull align 8 %i.v) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ha

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.2.i)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1260 ; 4 uses
  %i.x = load i8, ptr %i.w, align 4, !range !39, !noalias !40802, !noundef !38
  switch i8 %i.x, label %default.unreachable26 [
    i8 0, label %bb.g
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1262 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1261 ; 2 uses
  store i8 1, ptr %i.z, align 1, !noalias !40802
  store i8 1, ptr %i.y, align 2, !noalias !40802
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 808
  %.val.i = load ptr, ptr %i.aa, align 8, !noalias !40802, !nonnull !38, !noundef !38
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val8.i = load ptr, ptr %i.ab, align 8, !noalias !40803, !nonnull !38, !noundef !38 ; 3 uses
  %i.ac = atomicrmw add ptr %.val8.i, i64 1 monotonic, align 8, !noalias !40803
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %.thread55.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

.thread55.i:                                      ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  store i8 0, ptr %i.y, align 2, !noalias !40802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !40802
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.ag = load i32, ptr %i.af, align 8, !noalias !40802, !noundef !38 ; 2 uses
  store i8 0, ptr %i.z, align 1, !noalias !40802
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !40802
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i, i64 48, i1 false), !noalias !40802
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 864
  store ptr %.val8.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !40802
  %.sroa.816.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 872
  store ptr %i.ae, ptr %.sroa.816.0..sroa_idx.i, align 8, !noalias !40802
  %.sroa.1018.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1008
  store i32 %i.ag, ptr %.sroa.1018.0..sroa_idx.i, align 8, !noalias !40802
  %.sroa.1220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 2 uses
  store i8 0, ptr %.sroa.1220.0..sroa_idx.i, align 8, !noalias !40802
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1123.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !40802
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6275.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3270.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5271.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3252.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6200.i.i)
  br label %bb.p

bb.i:                                             ; preds = %bb.gg, %.body.i
  %.pn4.i = phi { ptr, i32 } [ %i.rt, %bb.gg ], [ %.pn2.i, %.body.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40804)
  call void @llvm.experimental.noalias.scope.decl(metadata !40805)
  call void @llvm.experimental.noalias.scope.decl(metadata !40806)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !40807, !noalias !40802, !nonnull !38, !noundef !38
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !40808
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgoPClq0H8JF_9actix_web4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.gn, !noalias !40803

bb.k:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #25
          to label %.noexc unwind label %bb.gs

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #25
          to label %.noexc6 unwind label %bb.gs

.noexc6:                                          ; preds = %bb.l
  unreachable

.body.i:                                          ; preds = %bb.gd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i.i
  %i.an = phi ptr [ %i.qj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.ao, %bb.gd ]
  %.pn2.i = phi { ptr, i32 } [ %.pn63.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.ro, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1123.sroa.6.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsl8OoimOLbh_6qdrant6common9snapshots21delete_shard_snapshot0EBJ_(ptr noundef nonnull align 8 %i.an) #26
          to label %bb.i unwind label %bb.gn, !noalias !40803

bb.m:                                             ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 17 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !99, !noalias !40809
end_hunk_0
