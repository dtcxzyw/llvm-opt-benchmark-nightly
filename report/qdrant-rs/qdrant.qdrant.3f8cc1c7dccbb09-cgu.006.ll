Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.006?download=true
inline.NumInlined: 9333
inline.NumDeleted: 3748
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB6_15ShardReplicaSet6update0Csl8OoimOLbh_6qdrant:bb.a
  %i.nb = invoke noundef zeroext i1 @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2_15ShardReplicaSet28peer_is_write_rate_limitable(ptr noundef nonnull align 8 %i.mz, i64 noundef %i.na)
          to label %bb.cj unwind label %bb.cy, !noalias !13102

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.nb, label %bb.ck, label %bb.cz

bb.ck:                                            ; preds = %bb.cj
  %.val221.i = load ptr, ptr %i.jc, align 8, !noalias !13101, !noundef !17 ; 2 uses
  %i.nc = load i64, ptr %.val221.i, align 8, !range !43, !noalias !13102, !noundef !17
  %.not65.i = icmp eq i64 %i.nc, -1
  br i1 %.not65.i, label %bb.cz, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nd = load ptr, ptr %i.ka, align 8, !noalias !13101, !nonnull !17, !align !16, !noundef !17
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 1296
  store ptr %i.nd, ptr %i.iu, align 8, !noalias !13101
  %.sroa.8538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1840
  store ptr %i.ne, ptr %.sroa.8538.0..sroa_idx.i, align 8, !noalias !13101
  %.sroa.9539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1848
  store ptr %.val221.i, ptr %.sroa.9539.0..sroa_idx.i, align 8, !noalias !13101
  %.sroa.10540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1856
  store ptr %i.mm, ptr %.sroa.10540.0..sroa_idx.i, align 8, !noalias !13101
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2096
  store i8 0, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !13101
  br label %bb.co

.body299.i:                                       ; preds = %bb.cp, %bb.cx, %.body490.i, %bb.cy
  %i.nf = phi ptr [ %i.is, %bb.cy ], [ %i.rn, %.body490.i ], [ %i.oa, %bb.cp ], [ %i.oa, %bb.cx ] ; 2 uses
  %i.ng = phi ptr [ %i.it, %bb.cy ], [ %i.ro, %.body490.i ], [ %i.ob, %bb.cp ], [ %i.ob, %bb.cx ] ; 2 uses
  %.pn200.pn.i = phi { ptr, i32 } [ %i.os, %bb.cy ], [ %.pn198.i, %.body490.i ], [ %i.od, %bb.cp ], [ %i.op, %bb.cx ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %i.ni = load i8, ptr %i.nh, align 8, !range !28, !noalias !13101, !noundef !17
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %bb.nt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit500.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit500.i: ; preds = %bb.nt, %bb.md, %.body299.i, %bb.cd
  %i.nk = phi ptr [ %i.ami, %bb.md ], [ %i.is, %bb.cd ], [ %i.nf, %.body299.i ], [ %i.nf, %bb.nt ]
  %i.nl = phi ptr [ %i.amj, %bb.md ], [ %i.it, %bb.cd ], [ %i.ng, %.body299.i ], [ %i.ng, %bb.nt ]
  %.pn203.i = phi { ptr, i32 } [ %i.amk, %bb.md ], [ %i.mn, %bb.cd ], [ %.pn200.pn.i, %.body299.i ], [ %.pn200.pn.i, %bb.nt ]
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 1816
  store i8 0, ptr %i.nm, align 8, !noalias !13101
  br label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit500.i, %bb.cb, %bb.bw, %bb.bu
  %i.nn = phi ptr [ %i.nk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit500.i ], [ %i.is, %bb.cb ], [ %i.is, %bb.bu ], [ %i.is, %bb.bw ] ; 3 uses
  %i.no = phi ptr [ %i.nl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit500.i ], [ %i.it, %bb.cb ], [ %i.it, %bb.bu ], [ %i.it, %bb.bw ] ; 3 uses
  %.pn203.pn.i = phi { ptr, i32 } [ %.pn203.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit500.i ], [ %i.mj, %bb.cb ], [ %i.lt, %bb.bu ], [ %.pn63.i, %bb.bw ] ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !range !26, !noalias !13101, !noundef !17
  %.not206.i = icmp eq i64 %i.nq, -1
  br i1 %.not206.i, label %bb.cn, label %bb.nu

bb.cn:                                            ; preds = %bb.nv, %bb.nu, %bb.na, %bb.cm
  %i.nr = phi ptr [ %i.anx, %bb.na ], [ %i.nn, %bb.nv ], [ %i.nn, %bb.nu ], [ %i.nn, %bb.cm ]
  %i.ns = phi ptr [ %i.any, %bb.na ], [ %i.no, %bb.nv ], [ %i.no, %bb.nu ], [ %i.no, %bb.cm ]
  %.pn208.i = phi { ptr, i32 } [ %i.anz, %bb.na ], [ %.pn203.pn.i, %bb.nv ], [ %.pn203.pn.i, %bb.nu ], [ %.pn203.pn.i, %bb.cm ]
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 1819
  store i8 0, ptr %i.nt, align 1, !noalias !13101
  br label %bb.bh

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i: ; preds = %bb.nw, %bb.nc, %bb.bh, %bb.bc, %bb.bb, %bb.aw
  %i.nu = phi ptr [ %i.aoe, %bb.nc ], [ %i.ke, %bb.nw ], [ %i.ke, %bb.bh ], [ %i.is, %bb.bb ], [ %i.is, %bb.aw ], [ %i.is, %bb.bc ] ; 2 uses
  %i.nv = phi ptr [ %i.aof, %bb.nc ], [ %i.kf, %bb.nw ], [ %i.kf, %bb.bh ], [ %i.it, %bb.bb ], [ %i.it, %bb.aw ], [ %i.it, %bb.bc ] ; 2 uses
  %.pn211.i = phi { ptr, i32 } [ %i.aog, %bb.nc ], [ %.pn208.pn.i, %bb.nw ], [ %.pn208.pn.i, %bb.bh ], [ %i.ji, %bb.bb ], [ %i.iw, %bb.aw ], [ %i.ji, %bb.bc ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 1820
  store i8 0, ptr %i.nw, align 4, !noalias !13101
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 1821
  %i.ny = load i8, ptr %i.nx, align 1, !range !28, !noalias !13101, !noundef !17
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.nx, label %.body496.i

bb.co:                                            ; preds = %bb.u, %bb.cl
  %i.oa = phi ptr [ %i.fv, %bb.u ], [ %i.is, %bb.cl ] ; 5 uses
  %i.ob = phi ptr [ %i.fu, %bb.u ], [ %i.it, %bb.cl ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !13101
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 1832 ; 2 uses
  invoke fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB6_15ShardReplicaSet34check_operation_write_rate_limiter0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.cs, ptr noundef nonnull align 8 %i.oc, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cq unwind label %bb.cp, !noalias !13102

bb.cp:                                            ; preds = %bb.co
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !13101
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBI_15ShardReplicaSet34check_operation_write_rate_limiter0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.oc) #24
          to label %.body299.i unwind label %bb.at, !noalias !13102

bb.cq:                                            ; preds = %bb.co
  %i.oe = load i64, ptr %i.cs, align 8, !range !61, !noalias !13101, !noundef !17 ; 3 uses
  %i.of = icmp eq i64 %i.oe, -2
  br i1 %i.of, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !13101
  br label %.thread275

bb.cs:                                            ; preds = %bb.cq
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i, i64 40, i1 false), !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !13101
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.oh = load i8, ptr %i.og, align 8, !range !21, !noalias !13101, !noundef !17
  %cond.i297.i = icmp eq i8 %i.oh, 3
  br i1 %cond.i297.i, label %bb.ct, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBI_15ShardReplicaSet34check_operation_write_rate_limiter0ECsl8OoimOLbh_6qdrant.exit.i

bb.ct:                                            ; preds = %bb.cs
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 2089
  %i.oj = load i8, ptr %i.oi, align 1, !range !21, !noalias !13101, !noundef !17
  %cond.i.i298.i = icmp eq i8 %i.oj, 3
  br i1 %cond.i.i298.i, label %bb.cu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBI_15ShardReplicaSet34check_operation_write_rate_limiter0ECsl8OoimOLbh_6qdrant.exit.i

bb.cu:                                            ; preds = %bb.ct
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 2032
  %i.ol = load i8, ptr %i.ok, align 8, !range !21, !noalias !13101, !noundef !17
  %cond.i.i.i.i = icmp eq i8 %i.ol, 3
  br i1 %cond.i.i.i.i, label %bb.cv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBN_15ShardReplicaSet34check_operation_write_rate_limiter000lEECsl8OoimOLbh_6qdrant.exit.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 2024
  %i.on = load i8, ptr %i.om, align 8, !range !21, !noalias !13101, !noundef !17
  %cond.i.i.i.i.i = icmp eq i8 %i.on, 3
  br i1 %cond.i.i.i.i.i, label %bb.cw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBN_15ShardReplicaSet34check_operation_write_rate_limiter000lEECsl8OoimOLbh_6qdrant.exit.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 1920
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard20estimate_cardinality0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.oo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBN_15ShardReplicaSet34check_operation_write_rate_limiter000lEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.cx, !noalias !13102

bb.cx:                                            ; preds = %bb.cw
  %i.op = landingpad { ptr, i32 }
          cleanup
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 2088
  store i8 0, ptr %i.oq, align 8, !noalias !13101
  br label %.body299.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBN_15ShardReplicaSet34check_operation_write_rate_limiter000lEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 2088
  store i8 0, ptr %i.or, align 8, !noalias !13101
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBI_15ShardReplicaSet34check_operation_write_rate_limiter0ECsl8OoimOLbh_6qdrant.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBI_15ShardReplicaSet34check_operation_write_rate_limiter0ECsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBN_15ShardReplicaSet34check_operation_write_rate_limiter000lEECsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.ct, %bb.cs
  %.not.i301.i = icmp eq i64 %i.oe, -1
  br i1 %.not.i301.i, label %bb.cz, label %bb.dn

bb.cy:                                            ; preds = %bb.ci, %bb.ce
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %.body299.i

bb.cz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBI_15ShardReplicaSet34check_operation_write_rate_limiter0ECsl8OoimOLbh_6qdrant.exit.i, %bb.ck, %bb.cj, %bb.ch
  %i.ot = phi ptr [ %i.oa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBI_15ShardReplicaSet34check_operation_write_rate_limiter0ECsl8OoimOLbh_6qdrant.exit.i ], [ %i.is, %bb.ck ], [ %i.is, %bb.cj ], [ %i.is, %bb.ch ] ; 5 uses
  %i.ou = phi ptr [ %i.ob, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBI_15ShardReplicaSet34check_operation_write_rate_limiter0ECsl8OoimOLbh_6qdrant.exit.i ], [ %i.it, %bb.ck ], [ %i.it, %bb.cj ], [ %i.it, %bb.ch ] ; 5 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.ow = load ptr, ptr %i.ov, align 8, !noalias !13101, !nonnull !17, !align !16, !noundef !17
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 296
  %.val241.i = load ptr, ptr %i.ox, align 8, !noalias !13102, !nonnull !17, !noundef !17
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 1744 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.val241.i, i64 248
  %i.pa = load i64, ptr %i.oz, align 8, !noalias !13102, !noundef !17
  store i64 %i.pa, ptr %i.oy, align 8, !noalias !13101
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 1821
  store i8 0, ptr %i.pb, align 1, !noalias !13101
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %.sroa.0553.0.copyload.i = load i64, ptr %i.pc, align 8, !noalias !13101
  %.sroa.5554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1336
  %.sroa.5554.0.copyload.i = load ptr, ptr %.sroa.5554.0..sroa_idx.i, align 8, !noalias !13101, !nonnull !17, !noundef !17 ; 3 uses
  %.sroa.6555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1344
  %.sroa.6555.0.copyload.i = load i64, ptr %.sroa.6555.0..sroa_idx.i, align 8, !noalias !13101 ; 2 uses
  %i.pd = icmp ult i64 %.sroa.6555.0.copyload.i, 67818912035696881
  call void @llvm.assume(i1 %i.pd)
  %i.pe = getelementptr inbounds nuw [136 x i8], ptr %.sroa.5554.0.copyload.i, i64 %.sroa.6555.0.copyload.i
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 1456 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 1296 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 1811
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 1272 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 1752 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !13113
  store ptr %.sroa.5554.0.copyload.i, ptr %i.bg, align 8, !alias.scope !13114, !noalias !13115
  %.sroa.5549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.sroa.5554.0.copyload.i, ptr %.sroa.5549.0..sroa_idx.i, align 8, !alias.scope !13114, !noalias !13115
  %.sroa.6550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.sroa.0553.0.copyload.i, ptr %.sroa.6550.0..sroa_idx.i, align 8, !alias.scope !13114, !noalias !13115
  %.sroa.7551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.pe, ptr %.sroa.7551.0..sroa_idx.i, align 8, !alias.scope !13114, !noalias !13115
  %.sroa.8552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.pf, ptr %.sroa.8552.0..sroa_idx.i, align 8, !alias.scope !13114, !noalias !13115
  %.sroa.8552.sroa.5.0..sroa.8552.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store ptr %i.pg, ptr %.sroa.8552.sroa.5.0..sroa.8552.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !13114, !noalias !13115
  %.sroa.8552.sroa.6.0..sroa.8552.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr %i.ph, ptr %.sroa.8552.sroa.6.0..sroa.8552.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !13114, !noalias !13115
  %.sroa.8552.sroa.7.0..sroa.8552.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store ptr %i.pi, ptr %.sroa.8552.sroa.7.0..sroa.8552.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !13114, !noalias !13115
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB19_15ShardReplicaSet11update_impl0s0_00EINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtB1b_12remote_shard11RemoteShardENCB12_s0_0EE9from_iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.pj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.bg)
          to label %bb.da unwind label %bb.mv, !noalias !13102

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !13113
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 1818 ; 2 uses
  store i8 1, ptr %i.pk, align 2, !noalias !13101
  %i.pl = getelementptr i8, ptr %1, i64 1368      ; 2 uses
  %.val220.i = load ptr, ptr %i.pl, align 8, !noalias !13101, !noundef !17 ; 2 uses
  %i.pm = load i64, ptr %.val220.i, align 8, !range !43, !noalias !13102, !noundef !17
  %.not73.i = icmp eq i64 %i.pm, 2
  br i1 %.not73.i, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 1800
  %i.po = getelementptr inbounds nuw i8, ptr %.val220.i, i64 8 ; 2 uses
  store ptr %i.po, ptr %i.pn, align 8, !noalias !13101
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 1813
  %i.pq = load i8, ptr %i.pp, align 1, !range !28, !noalias !13101, !noundef !17
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !13101
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0564.i)
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 1816
  store i8 0, ptr %i.ps, align 8, !noalias !13101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.0564.i, ptr noundef nonnull align 8 dereferenceable(288) %i.pf, i64 288, i1 false), !noalias !13101
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 1814
  %i.pu = load i8, ptr %i.pt, align 2, !range !32, !noalias !13101, !noundef !17
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 1817
  store i8 0, ptr %i.pv, align 1, !noalias !13101
  %.sroa.0564.288..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0564.i, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0564.288..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.pg, i64 32, i1 false), !noalias !13101
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 1832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.pw, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.0564.i, i64 320, i1 false), !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0564.i)
  %.sroa.8571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2152
  store ptr %i.po, ptr %.sroa.8571.0..sroa_idx.i, align 8, !noalias !13101
  %.sroa.10573.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2504
  store i8 %i.pu, ptr %.sroa.10573.0..sroa_idx.i, align 8, !noalias !13101
  %.sroa.11574.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2505
  store i8 0, ptr %.sroa.11574.0..sroa_idx.i, align 1, !noalias !13101
  br label %bb.dp

bb.dd:                                            ; preds = %bb.db, %bb.da
  %i.px = getelementptr i8, ptr %1, i64 1768      ; 2 uses
  %.val243.i = load i64, ptr %i.px, align 8, !noalias !13101, !noundef !17 ; 3 uses
  %i.py = icmp ult i64 %.val243.i, 18300341342965826
  call void @llvm.assume(i1 %i.py)
  %i.pz = add nuw nsw i64 %.val243.i, 1
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 1832 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !13117
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bf, i64 noundef range(i64 1, 18300341342965827) %i.pz, i1 noundef zeroext false, i64 noundef 8, i64 noundef 512)
          to label %.noexc303.i unwind label %bb.df, !noalias !13102

.noexc303.i:                                      ; preds = %bb.dd
  %i.qb = load i64, ptr %i.bf, align 8, !range !20, !noalias !13117, !noundef !17
  %i.qc = trunc nuw i64 %i.qb to i1
  %i.qd = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.qe = load i64, ptr %i.qd, align 8, !range !67, !noalias !13117, !noundef !17 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  br i1 %i.qc, label %bb.de, label %bb.dg, !prof !40

bb.de:                                            ; preds = %.noexc303.i
  %i.qg = load i64, ptr %i.qf, align 8, !noalias !13117
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.qe, i64 %i.qg) #25
          to label %.noexc304.i unwind label %bb.df, !noalias !13102

.noexc304.i:                                      ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dg:                                            ; preds = %.noexc303.i
  %i.qi = load ptr, ptr %i.qf, align 8, !noalias !13117, !nonnull !17, !noundef !17 ; 10 uses
  %i.qj = icmp ult i64 %.val243.i, %i.qe
  call void @llvm.assume(i1 %i.qj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !13117
  store i64 %i.qe, ptr %i.qa, align 8, !alias.scope !13116, !noalias !13101
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 1840
  store ptr %i.qi, ptr %i.qk, align 8, !alias.scope !13116, !noalias !13101
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 1848 ; 2 uses
  store i64 0, ptr %i.ql, align 8, !alias.scope !13116, !noalias !13101
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 1825 ; 2 uses
  store i8 1, ptr %i.qm, align 1, !noalias !13101
  %.val.i = load ptr, ptr %i.pl, align 8, !noalias !13101, !noundef !17 ; 2 uses
  %i.qn = load i64, ptr %.val.i, align 8, !range !43, !noalias !13102, !noundef !17
  %.not74.i = icmp eq i64 %i.qn, -1
  br i1 %.not74.i, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 1813
  %i.qp = load i8, ptr %i.qo, align 1, !range !28, !noalias !13101, !noundef !17
  %i.qq = trunc nuw i8 %i.qp to i1
  br i1 %i.qq, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7615.i)
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 1816
  store i8 0, ptr %i.qr, align 8, !noalias !13101
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 1817
  store i8 0, ptr %i.qs, align 1, !noalias !13101
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4790.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.4790.i, ptr noundef nonnull align 8 dereferenceable(288) %i.pf, i64 288, i1 false), !noalias !13101
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 1814
  %i.qu = load i8, ptr %i.qt, align 2, !range !32, !noalias !13101, !noundef !17
  %i.qv = load i64, ptr %i.pi, align 8, !noalias !13101
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.qx = load i32, ptr %i.qw, align 8, !range !60, !noalias !13101, !noundef !17
  %.sroa.7615.304..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7615.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7615.304..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.pg, i64 32, i1 false), !noalias !13101
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 1384
  %i.qz = load i64, ptr %i.qy, align 8, !noalias !13101, !noundef !17
  %.sroa.7793.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.7793.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.7615.i, i64 36, i1 false), !noalias !13102
  store i64 0, ptr %i.qi, align 8, !noalias !13102
  %.sroa.4790.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.4790.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.4790.i, i64 288, i1 false), !noalias !13102
  %.sroa.5791.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 296
  store i64 %i.qv, ptr %.sroa.5791.0..sroa_idx.i, align 8, !noalias !13102
  %.sroa.6792.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 304
  store i32 %i.qx, ptr %.sroa.6792.0..sroa_idx.i, align 8, !noalias !13102
  %.sroa.8794.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 344
  store ptr %.val.i, ptr %.sroa.8794.0..sroa_idx.i, align 8, !noalias !13102
  %.sroa.9795.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 352
  store i64 %i.qz, ptr %.sroa.9795.0..sroa_idx.i, align 8, !noalias !13102
  %.sroa.10797.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 376
  store i8 %i.qu, ptr %.sroa.10797.0..sroa_idx.i, align 8, !noalias !13102
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 377
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 1, !noalias !13102
  store i64 1, ptr %i.ql, align 8, !noalias !13118
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4790.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7615.i)
  br label %bb.dk

bb.dj:                                            ; preds = %bb.ho, %bb.dl
  %i.ra = phi ptr [ %i.aac, %bb.ho ], [ %i.ot, %bb.dl ] ; 2 uses
  %i.rb = phi ptr [ %i.aad, %bb.ho ], [ %i.ou, %bb.dl ] ; 2 uses
  %.pn85.pn.i = phi { ptr, i32 } [ %.pn85.i, %bb.ho ], [ %i.rh, %bb.dl ] ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 1825
  %i.rd = load i8, ptr %i.rc, align 1, !range !28, !noalias !13101, !noundef !17
  %i.re = trunc nuw i8 %i.rd to i1
  br i1 %i.re, label %bb.hp, label %bb.dm

bb.dk:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  store i8 0, ptr %i.pk, align 2, !noalias !13101
  %.sroa.0630.0.copyload.i = load i64, ptr %i.pj, align 8, !noalias !13101
  %.sroa.5631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1760
  %.sroa.5631.0.copyload.i = load ptr, ptr %.sroa.5631.0..sroa_idx.i, align 8, !noalias !13101, !nonnull !17, !noundef !17 ; 3 uses
  %.sroa.6632.0.copyload.i = load i64, ptr %i.px, align 8, !noalias !13101 ; 2 uses
  %i.rf = icmp ult i64 %.sroa.6632.0.copyload.i, 18300341342965826
  call void @llvm.assume(i1 %i.rf)
  %i.rg = getelementptr inbounds nuw [504 x i8], ptr %.sroa.5631.0.copyload.i, i64 %.sroa.6632.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !13119
  store ptr %.sroa.5631.0.copyload.i, ptr %i.be, align 8, !alias.scope !13120, !noalias !13101
  %.sroa.5627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.sroa.5631.0.copyload.i, ptr %.sroa.5627.0..sroa_idx.i, align 8, !alias.scope !13120, !noalias !13101
  %.sroa.6628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %.sroa.0630.0.copyload.i, ptr %.sroa.6628.0..sroa_idx.i, align 8, !alias.scope !13120, !noalias !13101
  %.sroa.7629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.rg, ptr %.sroa.7629.0..sroa_idx.i, align 8, !alias.scope !13120, !noalias !13101
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1W_15ShardReplicaSet11update_impl0s3_0NCNCB1P_s0_00EEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterB3v_ENCB1P_s4_0EE11spec_extendCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.qa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.be)
          to label %.thread839.i.a unwind label %bb.dl, !noalias !13102

bb.dl:                                            ; preds = %bb.dk
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

.thread839.i.a:                                   ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !13119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !13101
  store i8 0, ptr %i.qm, align 1, !noalias !13101
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 1856 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ri, ptr noundef nonnull align 8 dereferenceable(24) %i.qa, i64 24, i1 false), !noalias !13101
  %i.rj = load i64, ptr %i.oy, align 8, !noalias !13101, !noundef !17 ; 2 uses
  %.sroa.7638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1880
  store i64 %i.rj, ptr %.sroa.7638.0..sroa_idx.i, align 8, !noalias !13101
  %.sroa.8639.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1888 ; 2 uses
  store i8 0, ptr %.sroa.8639.0..sroa_idx.i, align 8, !noalias !13101
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9643.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5733.i)
  br label %bb.fw

bb.dm:                                            ; preds = %bb.hp, %bb.dj, %bb.df
  %i.rk = phi ptr [ %i.ra, %bb.hp ], [ %i.ra, %bb.dj ], [ %i.ot, %bb.df ]
  %i.rl = phi ptr [ %i.rb, %bb.hp ], [ %i.rb, %bb.dj ], [ %i.ou, %bb.df ]
  %.pn85.pn.pn.i = phi { ptr, i32 } [ %.pn85.pn.i, %bb.hp ], [ %.pn85.pn.i, %bb.dj ], [ %i.qh, %bb.df ]
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 1825
  store i8 0, ptr %i.rm, align 1, !noalias !13101
  br label %bb.hq

.body490.i:                                       ; preds = %bb.ns, %bb.mv, %bb.ms, %bb.hq
  %i.rn = phi ptr [ %i.ub, %bb.ms ], [ %i.aaf, %bb.ns ], [ %i.aaf, %bb.hq ], [ %i.anm, %bb.mv ]
  %i.ro = phi ptr [ %i.uc, %bb.ms ], [ %i.aag, %bb.ns ], [ %i.aag, %bb.hq ], [ %i.ann, %bb.mv ]
  %.pn198.i = phi { ptr, i32 } [ %i.ank, %bb.ms ], [ %.pn194.pn.pn.i, %bb.ns ], [ %.pn194.pn.pn.i, %bb.hq ], [ %i.ano, %bb.mv ]
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 1818
  store i8 0, ptr %i.rp, align 2, !noalias !13101
  br label %.body299.i

bb.dn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBI_15ShardReplicaSet34check_operation_write_rate_limiter0ECsl8OoimOLbh_6qdrant.exit.i
  %.sroa.5543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5543.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.i, i64 40, i1 false), !noalias !13101
  call void @llvm.experimental.noalias.scope.decl(metadata !13121)
  %i.rq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.oe, ptr %i.rq, align 8, !alias.scope !13122, !noalias !13101
  store i64 -1, ptr %i.bj, align 8, !alias.scope !13123, !noalias !13101
  br label %bb.do

bb.do:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1j_15ShardReplicaSet11update_impl0s0_00EECsl8OoimOLbh_6qdrant.exit.i, %bb.dn
  %i.rr = phi ptr [ %i.ub, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1j_15ShardReplicaSet11update_impl0s0_00EECsl8OoimOLbh_6qdrant.exit.i ], [ %i.oa, %bb.dn ] ; 2 uses
  %i.rs = phi ptr [ %i.uc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1j_15ShardReplicaSet11update_impl0s0_00EECsl8OoimOLbh_6qdrant.exit.i ], [ %i.ob, %bb.dn ] ; 2 uses
  %.sroa.0209.0.copyload210406 = phi i64 [ %.sroa.0209.0.copyload210407, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1j_15ShardReplicaSet11update_impl0s0_00EECsl8OoimOLbh_6qdrant.exit.i ], [ -1, %bb.dn ]
  %i.rt = getelementptr inbounds nuw i8, ptr %1, i64 1816 ; 2 uses
  %i.ru = load i8, ptr %i.rt, align 8, !range !28, !noalias !13101, !noundef !17
  %i.rv = trunc nuw i8 %i.ru to i1
  br i1 %i.rv, label %bb.mw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit493.i

bb.dp:                                            ; preds = %bb.dc, %bb.w
  %i.rw = phi ptr [ %i.ot, %bb.dc ], [ %i.fv, %bb.w ] ; 8 uses
  %i.rx = phi ptr [ %i.ou, %bb.dc ], [ %i.fu, %bb.w ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !13101
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 1832 ; 6 uses
  invoke fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9shard_opsNtB6_10LocalShard13submit_update0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.cq, ptr noundef nonnull align 8 %i.ry, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dr unwind label %bb.dq, !noalias !13102

bb.dq:                                            ; preds = %bb.dp
  %i.rz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !13101
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard9shard_opsNtBI_10LocalShard13submit_update0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ry) #24
          to label %bb.eh unwind label %bb.at, !noalias !13102

bb.dr:                                            ; preds = %bb.dp
  %i.sa = load i64, ptr %i.cq, align 8, !range !27, !noalias !13101, !noundef !17 ; 3 uses
  %i.sb = icmp eq i64 %i.sa, -2
  br i1 %i.sb, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !13101
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB6_15ShardReplicaSet6update0Csl8OoimOLbh_6qdrant:bb.a
  store i8 0, ptr %i.rt, align 8, !noalias !13101
  br label %bb.bz

bb.mw:                                            ; preds = %bb.do
  %i.anp = getelementptr inbounds nuw i8, ptr %1, i64 1456
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.anp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit493.i unwind label %bb.md, !noalias !13102

bb.mx:                                            ; preds = %bb.bz
  %i.anq = getelementptr inbounds nuw i8, ptr %1, i64 1819
  %i.anr = load i8, ptr %i.anq, align 1, !range !28, !noalias !13101, !noundef !17
  %i.ans = trunc nuw i8 %i.anr to i1
  br i1 %i.ans, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mz, %bb.mx, %bb.bz
  %i.ant = getelementptr inbounds nuw i8, ptr %1, i64 1819
  store i8 0, ptr %i.ant, align 1, !noalias !13101
  %i.anu = getelementptr inbounds nuw i8, ptr %1, i64 1820 ; 2 uses
  %i.anv = load i8, ptr %i.anu, align 4, !range !28, !noalias !13101, !noundef !17
  %i.anw = trunc nuw i8 %i.anv to i1
  br i1 %i.anw, label %bb.nb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i

bb.mz:                                            ; preds = %bb.mx
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.md)
          to label %bb.my unwind label %bb.na, !noalias !13102

bb.na:                                            ; preds = %bb.bp, %.noexc291.i, %bb.mz
  %i.anx = phi ptr [ %i.is, %bb.bp ], [ %i.is, %.noexc291.i ], [ %i.mb, %bb.mz ]
  %i.any = phi ptr [ %i.it, %bb.bp ], [ %i.it, %.noexc291.i ], [ %i.mc, %bb.mz ]
  %i.anz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.nb, %bb.my
  store i8 0, ptr %i.anu, align 4, !noalias !13101
  %i.aoa = getelementptr inbounds nuw i8, ptr %1, i64 1821 ; 2 uses
  %i.aob = load i8, ptr %i.aoa, align 1, !range !28, !noalias !13101, !noundef !17
  %i.aoc = trunc nuw i8 %i.aob to i1
  br i1 %i.aoc, label %bb.nd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEECsl8OoimOLbh_6qdrant.exit.i

bb.nb:                                            ; preds = %bb.my
  %i.aod = getelementptr inbounds nuw i8, ptr %1, i64 1360
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aod)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.nc, !noalias !13102

bb.nc:                                            ; preds = %bb.nb, %bb.be
  %i.aoe = phi ptr [ %i.mb, %bb.nb ], [ %i.is, %bb.be ]
  %i.aof = phi ptr [ %i.mc, %bb.nb ], [ %i.it, %bb.be ]
  %i.aog = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.nf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i
  store i8 0, ptr %i.aoa, align 1, !noalias !13101
  %i.aoh = getelementptr inbounds nuw i8, ptr %1, i64 1817 ; 2 uses
  %i.aoi = load i8, ptr %i.aoh, align 1, !range !28, !noalias !13101, !noundef !17
  %i.aoj = trunc nuw i8 %i.aoi to i1
  br i1 %i.aoj, label %bb.nj, label %bb.ni

bb.nd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit.i
  %i.aok = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aok)
          to label %bb.nf unwind label %bb.ne, !noalias !13102

bb.ne:                                            ; preds = %bb.nd
  %i.aol = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aok)
          to label %.body496.i unwind label %bb.ng, !noalias !13102

bb.nf:                                            ; preds = %bb.nd
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aok)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.nh, !noalias !13102

bb.ng:                                            ; preds = %bb.ne
  %i.aom = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13102
  unreachable

.body496.i:                                       ; preds = %bb.nx, %bb.nh, %bb.ne, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i
  %i.aon = phi ptr [ %i.nu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i ], [ %i.nu, %bb.nx ], [ %i.mb, %bb.nh ], [ %i.mb, %bb.ne ]
  %i.aoo = phi ptr [ %i.nv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i ], [ %i.nv, %bb.nx ], [ %i.mc, %bb.nh ], [ %i.mc, %bb.ne ]
  %.pn213.i = phi { ptr, i32 } [ %.pn211.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i ], [ %.pn211.i, %bb.nx ], [ %i.aoq, %bb.nh ], [ %i.aol, %bb.ne ]
  %i.aop = getelementptr inbounds nuw i8, ptr %1, i64 1821
  store i8 0, ptr %i.aop, align 1, !noalias !13101
  br label %bb.au

bb.nh:                                            ; preds = %bb.nf
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  br label %.body496.i

bb.ni:                                            ; preds = %bb.nj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEECsl8OoimOLbh_6qdrant.exit.i
  store i8 0, ptr %i.aoh, align 1, !noalias !13101
  %i.aor = getelementptr inbounds nuw i8, ptr %1, i64 1822 ; 2 uses
  %i.aos = load i8, ptr %i.aor, align 2, !range !28, !noalias !13101, !noundef !17
  %i.aot = trunc nuw i8 %i.aos to i1
  br i1 %i.aot, label %bb.nl, label %bb.nk

bb.nj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEECsl8OoimOLbh_6qdrant.exit.i
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 1296
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aou)
          to label %bb.ni unwind label %bb.mh, !noalias !13102

bb.nk:                                            ; preds = %bb.nl, %bb.ni
  store i8 0, ptr %i.aor, align 2, !noalias !13101
  br label %bb.ob

bb.nl:                                            ; preds = %bb.ni
  %i.aov = getelementptr inbounds nuw i8, ptr %1, i64 1016
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.aov)
          to label %bb.nk unwind label %bb.nn, !noalias !13102

bb.nm:                                            ; preds = %bb.nz, %bb.nn, %bb.mg
  %i.aow = phi ptr [ %i.mb, %bb.nn ], [ %i.amn, %bb.nz ], [ %i.amn, %bb.mg ]
  %i.aox = phi ptr [ %i.mc, %bb.nn ], [ %i.amo, %bb.nz ], [ %i.amo, %bb.mg ]
  %.pn218.i = phi { ptr, i32 } [ %i.aoz, %bb.nn ], [ %.pn216.i, %bb.nz ], [ %.pn216.i, %bb.mg ]
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 1822
  store i8 0, ptr %i.aoy, align 2, !noalias !13101
  store i8 2, ptr %i.aow, align 2, !noalias !13101
  br label %.body

bb.nn:                                            ; preds = %bb.nl
  %i.aoz = landingpad { ptr, i32 }
          cleanup
  br label %bb.nm

bb.no:                                            ; preds = %.body437.i
  %i.apa = atomicrmw add ptr %i.aih, i64 -1 release, align 8, !noalias !13184
  %i.apb = icmp eq i64 %i.apa, 1
  br i1 %i.apb, label %bb.np, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEEECsl8OoimOLbh_6qdrant.exit.i

bb.np:                                            ; preds = %bb.no
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEE9drop_slowB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bz) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state15ReplicaSetStateEEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.at, !noalias !13102

bb.nq:                                            ; preds = %.body463.i
  %i.apc = getelementptr inbounds nuw i8, ptr %1, i64 1856
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.apc) #24
          to label %.body486.i unwind label %bb.at, !noalias !13102

bb.nr:                                            ; preds = %.body476.i
  %i.apd = getelementptr inbounds nuw i8, ptr %1, i64 1776
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6result6ResultTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultETyNtB1y_15CollectionErrorEEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.apd) #24
          to label %bb.hq unwind label %bb.at, !noalias !13102

bb.ns:                                            ; preds = %bb.hq
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 1752
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNCNCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB1j_15ShardReplicaSet11update_impl0s0_00EECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ape) #24
          to label %.body490.i unwind label %bb.at, !noalias !13102

bb.nt:                                            ; preds = %.body299.i
  %i.apf = getelementptr inbounds nuw i8, ptr %1, i64 1456
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.apf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit500.i unwind label %bb.at, !noalias !13102

bb.nu:                                            ; preds = %bb.cm
  %i.apg = getelementptr inbounds nuw i8, ptr %1, i64 1819
  %i.aph = load i8, ptr %i.apg, align 1, !range !28, !noalias !13101, !noundef !17
  %i.api = trunc nuw i8 %i.aph to i1
  br i1 %i.api, label %bb.nv, label %bb.cn

bb.nv:                                            ; preds = %bb.nu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.np) #24
          to label %bb.cn unwind label %bb.at, !noalias !13102

bb.nw:                                            ; preds = %bb.bh
  %i.apj = getelementptr inbounds nuw i8, ptr %1, i64 1360
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.apj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i unwind label %bb.at, !noalias !13102

bb.nx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i
  %i.apk = getelementptr inbounds nuw i8, ptr %1, i64 1328
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.apk) #24
          to label %.body496.i unwind label %bb.at, !noalias !13102

bb.ny:                                            ; preds = %bb.au
  %i.apl = getelementptr inbounds nuw i8, ptr %1, i64 1296
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.apl) #24
          to label %bb.mg unwind label %bb.at, !noalias !13102

bb.nz:                                            ; preds = %bb.mg
  %i.apm = getelementptr inbounds nuw i8, ptr %1, i64 1016
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %i.apm) #24
          to label %bb.nm unwind label %bb.at, !noalias !13102

bb.oa:                                            ; preds = %bb.ab, %bb.aa
  %i.apn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.nm, %bb.oa
  %i.apo = phi ptr [ %i.fu, %bb.oa ], [ %i.aox, %bb.nm ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.apn, %bb.oa ], [ %.pn218.i, %bb.nm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15211.sroa.8)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBI_15ShardReplicaSet11update_impl0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.apo) #24
          to label %bb.us unwind label %bb.t

.thread275:                                       ; preds = %bb.af, %bb.cr, %bb.ds, %bb.fq, %bb.hu, %bb.km, %bb.hd, %bb.ax
  %i.app = phi ptr [ %i.is, %bb.ax ], [ %i.gy, %bb.af ], [ %i.oa, %bb.cr ], [ %i.rw, %bb.ds ], [ %i.wg, %bb.fq ], [ %i.yq, %bb.hd ], [ %i.aal, %bb.hu ], [ %i.aiy, %bb.km ]
  %.sink843.i.ph = phi i8 [ 4, %bb.ax ], [ 3, %bb.af ], [ 5, %bb.cr ], [ 6, %bb.ds ], [ 7, %bb.fq ], [ 8, %bb.hd ], [ 9, %bb.hu ], [ 10, %bb.km ]
  store i8 %.sink843.i.ph, ptr %i.app, align 2, !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5697.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3577.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  br label %bb.oc

bb.ob:                                            ; preds = %bb.me, %bb.nk
  %i.apq = phi ptr [ %i.ajz, %bb.me ], [ %i.mb, %bb.nk ]
  %i.apr = phi ptr [ %i.aka, %bb.me ], [ %i.mc, %bb.nk ]
  %.sroa.0209.0.copyload210 = phi i64 [ %.sroa.0209.0.copyload210.pre, %bb.me ], [ %.sroa.0209.0.copyload210405, %bb.nk ] ; 4 uses
  %.sroa.15211.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.15211.sroa.0.0.copyload = load i64, ptr %.sroa.15211.0..sroa_idx212, align 8, !noalias !13183 ; 2 uses
  %.sroa.15211.sroa.6.0..sroa.15211.0..sroa_idx212.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.15211.sroa.6.0.copyload = load ptr, ptr %.sroa.15211.sroa.6.0..sroa.15211.0..sroa_idx212.sroa_idx, align 8, !noalias !13183 ; 2 uses
  %.sroa.15211.sroa.7.0..sroa.15211.0..sroa_idx212.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.15211.sroa.7.0.copyload = load i32, ptr %.sroa.15211.sroa.7.0..sroa.15211.0..sroa_idx212.sroa_idx, align 8, !noalias !13183 ; 2 uses
  %.sroa.15211.sroa.8.0..sroa.15211.0..sroa_idx212.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.15211.sroa.8, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.15211.sroa.8.0..sroa.15211.0..sroa_idx212.sroa_idx, i64 28, i1 false), !noalias !13183
  store i8 1, ptr %i.apq, align 2, !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5697.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3577.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  %i.aps = icmp eq i64 %.sroa.0209.0.copyload210, -2
  br i1 %i.aps, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %.thread275, %bb.ob
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15211.sroa.8)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0196.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0196.sroa.22)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0196.sroa.31.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0196.sroa.31.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0196.sroa.32)
  br label %common.ret

bb.od:                                            ; preds = %bb.ob
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3215.sroa.7, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.15211.sroa.8, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15211.sroa.8)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtBI_15ShardReplicaSet11update_impl0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.apr)
          to label %bb.of unwind label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.apt = landingpad { ptr, i32 }
          cleanup
  br label %bb.us

bb.of:                                            ; preds = %bb.od
  %i.apu = icmp eq i64 %.sroa.0209.0.copyload210, -1
  br i1 %i.apu, label %bb.ut, label %bb.og

bb.og:                                            ; preds = %bb.of
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0196.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0196.sroa.22)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0196.sroa.31.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0196.sroa.31.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0196.sroa.32)
  %.not35 = icmp eq i64 %.sroa.0209.0.copyload210, 2
  br i1 %.not35, label %bb.oi, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.11250, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3215.sroa.7, i64 28, i1 false)
  br label %bb.oj

bb.oi:                                            ; preds = %bb.og
  %i.apv = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.apw = load i8, ptr %i.apv, align 8, !range !28, !noundef !17
  %i.apx = trunc nuw i8 %i.apw to i1
  br i1 %i.apx, label %bb.op, label %.critedge

bb.oj:                                            ; preds = %bb.ut, %bb.oh
  %.sroa.0238.1 = phi i64 [ 2, %bb.ut ], [ %.sroa.0209.0.copyload210, %bb.oh ] ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %1, i64 4376 ; 5 uses
  invoke void @_RNvXs1_NtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9clock_setNtB5_10ClockGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.apy)
          to label %bb.om unwind label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.apz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13185)
  call void @llvm.experimental.noalias.scope.decl(metadata !13186)
  %i.aqa = load ptr, ptr %i.apy, align 8, !alias.scope !13187, !nonnull !17, !noundef !17
  %i.aqb = atomicrmw add ptr %i.aqa, i64 -1 release, align 8, !noalias !13188
  %i.aqc = icmp eq i64 %i.aqb, 1
  br i1 %i.aqc, label %bb.ol, label %.body88

bb.ol:                                            ; preds = %bb.ok
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9clock_set5ClockE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.apy) #22
          to label %.body88 unwind label %bb.oo

bb.om:                                            ; preds = %bb.oj
  call void @llvm.experimental.noalias.scope.decl(metadata !13189)
  call void @llvm.experimental.noalias.scope.decl(metadata !13190)
  %i.aqd = load ptr, ptr %i.apy, align 8, !alias.scope !13191, !nonnull !17, !noundef !17
  %i.aqe = atomicrmw add ptr %i.aqd, i64 -1 release, align 8, !noalias !13192
  %i.aqf = icmp eq i64 %i.aqe, 1
  br i1 %i.aqf, label %bb.on, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9clock_set10ClockGuardECsl8OoimOLbh_6qdrant.exit

bb.on:                                            ; preds = %bb.om
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9clock_set5ClockE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.apy) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9clock_set10ClockGuardECsl8OoimOLbh_6qdrant.exit unwind label %bb.pv

bb.oo:                                            ; preds = %bb.ol
  %i.aqg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

.critedge:                                        ; preds = %bb.pf, %bb.pi, %bb.op, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit, %bb.or, %bb.oi
  %.phi.trans.insert391 = getelementptr inbounds nuw i8, ptr %1, i64 672
  %.pre392 = load i8, ptr %.phi.trans.insert391, align 8, !range !28, !alias.scope !13193
  br label %bb.q

bb.op:                                            ; preds = %bb.oi
  %i.aqh = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aqi = icmp ult i64 %i.aqh, 6
  call void @llvm.assume(i1 %i.aqi)
  %i.aqj = icmp samesign ugt i64 %i.aqh, 1
  br i1 %i.aqj, label %bb.oq, label %.critedge

bb.oq:                                            ; preds = %bb.op
  %i.aqk = invoke noundef zeroext i1 @_RINvNtCs7A8gjpeJ2x1_3log13___private_api7enabledNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 39)
          to label %bb.or unwind label %bb.qd

bb.or:                                            ; preds = %bb.oq
  br i1 %i.aqk, label %bb.os, label %.critedge

bb.os:                                            ; preds = %bb.or
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  %i.aql = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  invoke void @_RNvMNtCs5QaNqjAn6vc_5shard10operationsNtB2_26CollectionUpdateOperations9point_ids(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.aql)
          to label %bb.ou unwind label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.aqm = landingpad { ptr, i32 }
          cleanup
  br label %bb.pe

bb.ou:                                            ; preds = %bb.os
  %i.aqn = load i64, ptr %i.do, align 8, !range !23, !noundef !17
  %.not36 = icmp eq i64 %i.aqn, -1
  br i1 %.not36, label %bb.pf, label %bb.oz

bb.ov:                                            ; preds = %bb.oz, %bb.pc
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %bb.ox unwind label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.aqo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %.body91 unwind label %bb.oy

bb.ox:                                            ; preds = %bb.ov
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit unwind label %bb.pd

bb.oy:                                            ; preds = %bb.ow
  %i.aqp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.oz:                                            ; preds = %bb.ou
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %i.aqq = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aqr = icmp ult i64 %i.aqq, 6
  call void @llvm.assume(i1 %i.aqr)
  %i.aqs = icmp samesign ugt i64 %i.aqq, 1
  br i1 %i.aqs, label %bb.pb, label %bb.ov

bb.pa:                                            ; preds = %bb.pb
  %i.aqt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dn) #24
          to label %.body91 unwind label %bb.t

bb.pb:                                            ; preds = %bb.oz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 680
  store ptr %i.dn, ptr %i.dm, align 8
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.5221.0..sroa_idx, align 8
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.aqu, ptr %i.aqv, align 8
  %.sroa.5223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5223.0..sroa_idx, align 8
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store ptr @157, ptr %i.aqw, align 8
  %.sroa.5225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5225.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
end_hunk_1
