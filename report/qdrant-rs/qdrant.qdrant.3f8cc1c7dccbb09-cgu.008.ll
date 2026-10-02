Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.008?download=true
inline.NumInlined: 9683
inline.NumDeleted: 3881
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_RNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer8snapshot17transfer_snapshot0Csl8OoimOLbh_6qdrant:bb.a
  %.sroa.977.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1488
  store i64 %.val30.i.i, ptr %.sroa.977.0..sroa_idx.i.i, align 8, !noalias !15043
  %.sroa.1078.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store ptr %.val31.i.i, ptr %.sroa.1078.0..sroa_idx.i.i, align 8, !noalias !15043
  %.sroa.1179.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1504
  store ptr %i.aef, ptr %.sroa.1179.0..sroa_idx.i.i, align 8, !noalias !15043
  %.sroa.1381.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1513 ; 2 uses
  store i8 0, ptr %.sroa.1381.0..sroa_idx.i.i, align 1, !noalias !15043
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1514
  store i8 %i.aeh, ptr %.sroa.14.0..sroa_idx.i.i, align 2, !noalias !15043
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1515
  store i8 %i.ael, ptr %.sroa.15.0..sroa_idx.i.i, align 1, !noalias !15043
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2182.sroa.5.i.i.i), !noalias !15043
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2156.sroa.13.i.i.i), !noalias !15043
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2132.sroa.13.i.i.i), !noalias !15043
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.sroa.13.i.i.i), !noalias !15043
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.096.i.i.i)
  br label %bb.jn

bb.jj:                                            ; preds = %bb.mi, %bb.ji
  %i.aem = phi ptr [ %i.ant, %bb.mi ], [ %i.acx, %bb.ji ] ; 6 uses
  %i.aen = phi ptr [ %i.anu, %bb.mi ], [ %i.acy, %bb.ji ] ; 6 uses
  %i.aeo = phi ptr [ %i.anv, %bb.mi ], [ %i.acz, %bb.ji ] ; 6 uses
  %i.aep = phi ptr [ %i.anw, %bb.mi ], [ %i.ada, %bb.ji ] ; 6 uses
  %.sroa.03.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0183.1.i.i.i, %bb.mi ], [ 2, %bb.ji ] ; 2 uses
  %i.aeq = phi ptr [ %.pre190.i.i, %bb.mi ], [ %.val31.i.i, %bb.ji ]
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 1422 ; 2 uses
  store i8 0, ptr %i.aer, align 2, !noalias !15043
  %i.aes = getelementptr inbounds nuw i8, ptr %1, i64 1400
  %i.aet = load ptr, ptr %i.aes, align 8, !noalias !15043, !nonnull !20, !align !19, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !15043
  store ptr %i.aet, ptr %i.dp, align 8, !noalias !15043
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.aeq, ptr %i.aeu, align 8, !noalias !15043
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1l_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dp)
          to label %bb.ml unwind label %bb.mj, !noalias !15044

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherIBY_NCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB24_10LocalShard20get_snapshot_creator00B1V_EB1R_EEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.mk, %bb.mj, %bb.mg, %.body37.i.i
  %i.aev = phi ptr [ %i.aem, %bb.mk ], [ %i.aem, %bb.mj ], [ %i.afj, %.body37.i.i ], [ %i.ant, %bb.mg ] ; 2 uses
  %i.aew = phi ptr [ %i.aen, %bb.mk ], [ %i.aen, %bb.mj ], [ %i.afk, %.body37.i.i ], [ %i.anu, %bb.mg ] ; 2 uses
  %i.aex = phi ptr [ %i.aeo, %bb.mk ], [ %i.aeo, %bb.mj ], [ %i.afl, %.body37.i.i ], [ %i.anv, %bb.mg ] ; 2 uses
  %i.aey = phi ptr [ %i.aep, %bb.mk ], [ %i.aep, %bb.mj ], [ %i.afm, %.body37.i.i ], [ %i.anw, %bb.mg ] ; 2 uses
  %.pn16.pn.i.i = phi { ptr, i32 } [ %i.aob, %bb.mk ], [ %i.aob, %bb.mj ], [ %.pn14.i.i, %.body37.i.i ], [ %i.anz, %bb.mg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !15043
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 1422
  %i.afa = load i8, ptr %i.aez, align 2, !range !47, !noalias !15043, !noundef !20
  %i.afb = trunc nuw i8 %i.afa to i1
  br i1 %i.afb, label %bb.nd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit54.i.i

bb.jk:                                            ; preds = %bb.nj, %bb.ni, %bb.ng, %bb.nf, %bb.nd, %bb.mk, %.body37.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit54.i.i, %bb.iw
  %i.afc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !15044
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit54.i.i: ; preds = %bb.nd, %bb.ms, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherIBY_NCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB24_10LocalShard20get_snapshot_creator00B1V_EB1R_EEECsl8OoimOLbh_6qdrant.exit.i.i, %bb.jg, %bb.jc, %bb.jb, %bb.iw
  %i.afd = phi ptr [ %i.ant, %bb.ms ], [ %i.aev, %bb.nd ], [ %i.aev, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherIBY_NCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB24_10LocalShard20get_snapshot_creator00B1V_EB1R_EEECsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.acx, %bb.jb ], [ %i.acx, %bb.iw ], [ %i.acx, %bb.jg ], [ %i.acx, %bb.jc ]
  %i.afe = phi ptr [ %i.anu, %bb.ms ], [ %i.aew, %bb.nd ], [ %i.aew, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherIBY_NCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB24_10LocalShard20get_snapshot_creator00B1V_EB1R_EEECsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.acy, %bb.jb ], [ %i.acy, %bb.iw ], [ %i.acy, %bb.jg ], [ %i.acy, %bb.jc ]
  %i.aff = phi ptr [ %i.anv, %bb.ms ], [ %i.aex, %bb.nd ], [ %i.aex, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherIBY_NCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB24_10LocalShard20get_snapshot_creator00B1V_EB1R_EEECsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.acz, %bb.jb ], [ %i.acz, %bb.iw ], [ %i.acz, %bb.jg ], [ %i.acz, %bb.jc ]
  %i.afg = phi ptr [ %i.anw, %bb.ms ], [ %i.aey, %bb.nd ], [ %i.aey, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherIBY_NCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB24_10LocalShard20get_snapshot_creator00B1V_EB1R_EEECsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.ada, %bb.jb ], [ %i.ada, %bb.iw ], [ %i.ada, %bb.jg ], [ %i.ada, %bb.jc ]
  %.pn19.i.i = phi { ptr, i32 } [ %i.ape, %bb.ms ], [ %.pn16.pn.i.i, %bb.nd ], [ %.pn16.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherIBY_NCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB24_10LocalShard20get_snapshot_creator00B1V_EB1R_EEECsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.adp, %bb.jb ], [ %i.add, %bb.iw ], [ %i.aeb, %bb.jg ], [ %i.adp, %bb.jc ]
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 1422
  store i8 0, ptr %i.afh, align 2, !noalias !15043
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 1376
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.afi) #24
          to label %.body40.i.i unwind label %bb.jk, !noalias !15044

.body37.i.i:                                      ; preds = %bb.md, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEECsl8OoimOLbh_6qdrant.exit95.i.i.i
  %i.afj = phi ptr [ %i.anh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEECsl8OoimOLbh_6qdrant.exit95.i.i.i ], [ %i.qf, %bb.md ]
  %i.afk = phi ptr [ %i.ani, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEECsl8OoimOLbh_6qdrant.exit95.i.i.i ], [ %i.qe, %bb.md ]
  %i.afl = phi ptr [ %i.anj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEECsl8OoimOLbh_6qdrant.exit95.i.i.i ], [ %.phi.trans.insert399.i, %bb.md ]
  %i.afm = phi ptr [ %i.ank, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEECsl8OoimOLbh_6qdrant.exit95.i.i.i ], [ %i.aam, %bb.md ]
  %i.afn = phi ptr [ %i.anm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEECsl8OoimOLbh_6qdrant.exit95.i.i.i ], [ %i.afo, %bb.md ]
  %.pn14.i.i = phi { ptr, i32 } [ %.pn46.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEECsl8OoimOLbh_6qdrant.exit95.i.i.i ], [ %i.anp, %bb.md ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard20get_snapshot_creator0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.afn) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsiHzErX7aQFk_12futures_util6future6either6EitherIBY_NCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB24_10LocalShard20get_snapshot_creator00B1V_EB1R_EEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.jk, !noalias !15044

bb.jl:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !15043
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1513 ; 12 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !range !54, !noalias !15045
  %i.afo = getelementptr inbounds nuw i8, ptr %1, i64 1432 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2182.sroa.5.i.i.i), !noalias !15043
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2156.sroa.13.i.i.i), !noalias !15043
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2132.sroa.13.i.i.i), !noalias !15043
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.sroa.13.i.i.i), !noalias !15043
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.096.i.i.i)
  switch i8 %.pre.i.i, label %default.unreachable1327 [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.jv
    i8 2, label %bb.jw
    i8 3, label %bb.jo
    i8 4, label %bb.kg
    i8 5, label %bb.ku
    i8 6, label %bb.li
  ]

._crit_edge.i:                                    ; preds = %bb.jl
  %.phi.trans.insert401.i = getelementptr inbounds nuw i8, ptr %1, i64 1496
  %.pre402.i = load ptr, ptr %.phi.trans.insert401.i, align 8, !noalias !15045
  %.phi.trans.insert403.i = getelementptr inbounds nuw i8, ptr %1, i64 1480
  %.pre404.i = load ptr, ptr %.phi.trans.insert403.i, align 8, !noalias !15045
  %.phi.trans.insert405.i = getelementptr inbounds nuw i8, ptr %1, i64 1488
  %.pre406.i = load i64, ptr %.phi.trans.insert405.i, align 8, !noalias !15045
  %.phi.trans.insert407.i = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %.pre408.i = load ptr, ptr %.phi.trans.insert407.i, align 8, !noalias !15045
  %.phi.trans.insert409.i = getelementptr inbounds nuw i8, ptr %1, i64 1514
  %.pre410.i = load i8, ptr %.phi.trans.insert409.i, align 2, !range !34, !noalias !15045
  %.phi.trans.insert411.i = getelementptr inbounds nuw i8, ptr %1, i64 1515
  %.pre412.i = load i8, ptr %.phi.trans.insert411.i, align 1, !range !47, !noalias !15045
  br label %bb.jn

bb.jm:                                            ; preds = %bb.jn
  unreachable

bb.jn:                                            ; preds = %._crit_edge.i, %.thread.i.i
  %i.afp = phi ptr [ %i.acx, %.thread.i.i ], [ %i.qf, %._crit_edge.i ] ; 6 uses
  %i.afq = phi ptr [ %i.acy, %.thread.i.i ], [ %i.qe, %._crit_edge.i ] ; 6 uses
  %i.afr = phi ptr [ %i.acz, %.thread.i.i ], [ %.phi.trans.insert399.i, %._crit_edge.i ] ; 6 uses
  %i.afs = phi ptr [ %i.ada, %.thread.i.i ], [ %i.aam, %._crit_edge.i ] ; 6 uses
  %i.aft = phi i8 [ %i.ael, %.thread.i.i ], [ %.pre412.i, %._crit_edge.i ] ; 7 uses
  %i.afu = phi i8 [ %i.aeh, %.thread.i.i ], [ %.pre410.i, %._crit_edge.i ] ; 7 uses
  %i.afv = phi ptr [ %i.aef, %.thread.i.i ], [ %.pre408.i, %._crit_edge.i ] ; 7 uses
  %i.afw = phi i64 [ %.val30.i.i, %.thread.i.i ], [ %.pre406.i, %._crit_edge.i ] ; 7 uses
  %i.afx = phi ptr [ %.val.i190.i, %.thread.i.i ], [ %.pre404.i, %._crit_edge.i ] ; 7 uses
  %i.afy = phi ptr [ %.val31.i.i, %.thread.i.i ], [ %.pre402.i, %._crit_edge.i ] ; 7 uses
  %i.afz = phi ptr [ %.sroa.1381.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i ] ; 6 uses
  %i.aga = phi ptr [ %i.adb, %.thread.i.i ], [ %i.afo, %._crit_edge.i ] ; 11 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 1512 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !15045
  store i8 1, ptr %i.agb, align 8, !noalias !15045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.do, ptr noundef nonnull align 8 dereferenceable(48) %i.aga, i64 48, i1 false), !noalias !15045
  %i.agc = load i64, ptr %i.afy, align 8, !range !78, !noalias !15046, !noundef !20 ; 3 uses
  %i.agd = icmp ne i64 %i.agc, 4
  call void @llvm.assume(i1 %i.agd)
  %i.age = add nsw i64 %i.agc, -2
  %.inv.i.i.i = icmp samesign ult i64 %i.agc, 2
  %i.agf = select i1 %.inv.i.i.i, i64 2, i64 %i.age
  switch i64 %i.agf, label %bb.jm [
    i64 0, label %bb.jq
    i64 1, label %.thread.i.i.i
    i64 2, label %.thread368.i.i.i
    i64 3, label %.thread369.i.i.i
    i64 4, label %bb.jp
  ]

bb.jo:                                            ; preds = %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !15045
  br label %bb.jx

bb.jp:                                            ; preds = %bb.jn
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !15045
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11dummy_shardNtB2_10DummyShard11dummy_error(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 20)
          to label %bb.js unwind label %bb.jr, !noalias !15046

bb.jq:                                            ; preds = %bb.jn
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  store i8 0, ptr %i.agb, align 8, !noalias !15045
  %.sroa.096.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.096.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.096.32..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.aga, i64 48, i1 false), !noalias !15045
  %i.agi = getelementptr inbounds nuw i8, ptr %1, i64 1520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.agi, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.096.i.i.i, i64 160, i1 false), !noalias !15045
  %.sroa.8103.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1680
  store ptr %i.afx, ptr %.sroa.8103.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.9104.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1688
  store i64 %i.afw, ptr %.sroa.9104.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.11106.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2040
  store ptr %i.agh, ptr %.sroa.11106.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.12107.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2048
  store ptr %i.afv, ptr %.sroa.12107.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2058
  store i8 0, ptr %.sroa.14.0..sroa_idx.i.i.i, align 2, !noalias !15045
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2059
  store i8 %i.afu, ptr %.sroa.15.0..sroa_idx.i.i.i, align 1, !noalias !15045
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2060
  store i8 %i.aft, ptr %.sroa.16.0..sroa_idx.i.i.i, align 4, !noalias !15045
  br label %bb.jx

.thread.i.i.i:                                    ; preds = %bb.jn
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afy, i64 8 ; 2 uses
  store i8 0, ptr %i.agb, align 8, !noalias !15045
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.agk, ptr noundef nonnull align 8 dereferenceable(48) %i.aga, i64 48, i1 false), !noalias !15045
  %.sroa.8122.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1568
  store ptr %i.afx, ptr %.sroa.8122.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.9123.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1576
  store i64 %i.afw, ptr %.sroa.9123.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.11125.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2568
  store ptr %i.agj, ptr %.sroa.11125.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.12126.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2576
  store ptr %i.afv, ptr %.sroa.12126.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.13127.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2584 ; 2 uses
  store i8 0, ptr %.sroa.13127.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.14128.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2585
  store i8 %i.afu, ptr %.sroa.14128.0..sroa_idx.i.i.i, align 1, !noalias !15045
  %.sroa.15129.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2586
  store i8 %i.aft, ptr %.sroa.15129.0..sroa_idx.i.i.i, align 2, !noalias !15045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !15045
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %bb.kh

.thread368.i.i.i:                                 ; preds = %bb.jn
  store i8 0, ptr %i.agb, align 8, !noalias !15045
  %i.agl = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.agl, ptr noundef nonnull align 8 dereferenceable(48) %i.aga, i64 48, i1 false), !noalias !15045
  %.sroa.8146.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1568
  store ptr %i.afx, ptr %.sroa.8146.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.9147.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1576
  store i64 %i.afw, ptr %.sroa.9147.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.11149.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2568
  store ptr %i.afy, ptr %.sroa.11149.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.12150.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2576
  store ptr %i.afv, ptr %.sroa.12150.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.13151.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2584 ; 2 uses
  store i8 0, ptr %.sroa.13151.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.14152.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2585
  store i8 %i.afu, ptr %.sroa.14152.0..sroa_idx.i.i.i, align 1, !noalias !15045
  %.sroa.15153.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2586
  store i8 %i.aft, ptr %.sroa.15153.0..sroa_idx.i.i.i, align 2, !noalias !15045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !15045
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i53.i.i.i)
  br label %bb.kv

.thread369.i.i.i:                                 ; preds = %bb.jn
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afy, i64 8 ; 2 uses
  store i8 0, ptr %i.agb, align 8, !noalias !15045
  %i.agn = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.agn, ptr noundef nonnull align 8 dereferenceable(48) %i.aga, i64 48, i1 false), !noalias !15045
  %.sroa.8171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1568
  store ptr %i.afx, ptr %.sroa.8171.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.9172.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1576
  store i64 %i.afw, ptr %.sroa.9172.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.11174.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2568
  store ptr %i.agm, ptr %.sroa.11174.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.12175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2576
  store ptr %i.afv, ptr %.sroa.12175.0..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.14177.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2585 ; 2 uses
  store i8 0, ptr %.sroa.14177.0..sroa_idx.i.i.i, align 1, !noalias !15045
  %.sroa.15178.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2586
  store i8 %i.afu, ptr %.sroa.15178.0..sroa_idx.i.i.i, align 2, !noalias !15045
  %.sroa.16179.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2587
  store i8 %i.aft, ptr %.sroa.16179.0..sroa_idx.i.i.i, align 1, !noalias !15045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !15045
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i73.i.i.i)
  br label %bb.lj

bb.jr:                                            ; preds = %bb.jp
  %i.ago = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !15045
  br label %bb.ju

bb.js:                                            ; preds = %bb.jp
  %.sroa.7184.8.copyload.i.i.i = load i64, ptr %i.dj, align 8, !noalias !15045
  %.sroa.13189.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.13189.sroa.0.0.copyload204.i.i.i = load i64, ptr %.sroa.13189.8..sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.13189.sroa.7.0..sroa.13189.8..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.13189.sroa.7.sroa.0.0.copyload215.i.i.i = load i64, ptr %.sroa.13189.sroa.7.0..sroa.13189.8..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.13189.sroa.7.sroa.7.0..sroa.13189.sroa.7.0..sroa.13189.8..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.sroa.13189.sroa.7.sroa.7.sroa.0.0.copyload225.i.i.i = load i64, ptr %.sroa.13189.sroa.7.sroa.7.0..sroa.13189.sroa.7.0..sroa.13189.8..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.13189.sroa.7.sroa.7.sroa.7.0..sroa.13189.sroa.7.sroa.7.0..sroa.13189.sroa.7.0..sroa.13189.8..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %.sroa.13189.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload235.i.i.i = load i64, ptr %.sroa.13189.sroa.7.sroa.7.sroa.7.0..sroa.13189.sroa.7.sroa.7.0..sroa.13189.sroa.7.0..sroa.13189.8..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045
  %.sroa.13189.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.13189.sroa.7.sroa.7.sroa.7.0..sroa.13189.sroa.7.sroa.7.0..sroa.13189.sroa.7.0..sroa.13189.8..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %.sroa.13189.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload241.i.i.i = load i64, ptr %.sroa.13189.sroa.7.sroa.7.sroa.7.sroa.7.0..sroa.13189.sroa.7.sroa.7.sroa.7.0..sroa.13189.sroa.7.sroa.7.0..sroa.13189.sroa.7.0..sroa.13189.8..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !15045
  br label %bb.jt

bb.jt:                                            ; preds = %bb.lz, %bb.lh, %bb.kt, %bb.kd, %bb.js
  %i.agp = phi ptr [ %i.afp, %bb.js ], [ %i.ahl, %bb.kd ], [ %i.aja, %bb.kt ], [ %i.akn, %bb.lh ], [ %i.amq, %bb.lz ] ; 2 uses
  %i.agq = phi ptr [ %i.afq, %bb.js ], [ %i.ahm, %bb.kd ], [ %i.ajb, %bb.kt ], [ %i.ako, %bb.lh ], [ %i.amr, %bb.lz ] ; 2 uses
  %i.agr = phi ptr [ %i.afr, %bb.js ], [ %i.ahn, %bb.kd ], [ %i.ajc, %bb.kt ], [ %i.akp, %bb.lh ], [ %i.ams, %bb.lz ] ; 2 uses
  %i.ags = phi ptr [ %i.afs, %bb.js ], [ %i.aho, %bb.kd ], [ %i.ajd, %bb.kt ], [ %i.akq, %bb.lh ], [ %i.amt, %bb.lz ] ; 2 uses
  %i.agt = phi ptr [ %i.afz, %bb.js ], [ %i.ahp, %bb.kd ], [ %i.aje, %bb.kt ], [ %i.akr, %bb.lh ], [ %i.amu, %bb.lz ] ; 2 uses
  %i.agu = phi ptr [ %i.aga, %bb.js ], [ %i.ahq, %bb.kd ], [ %i.ajf, %bb.kt ], [ %i.aks, %bb.lh ], [ %i.amv, %bb.lz ] ; 2 uses
  %.sroa.13189.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.13189.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload241.i.i.i, %bb.js ], [ %.sroa.2.sroa.11.0.copyload.i.i.i, %bb.kd ], [ %.sroa.2132.sroa.11.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2156.sroa.11.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2182.sroa.3.sroa.9.0.copyload.i.i.i, %bb.lz ]
  %.sroa.13189.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.13189.sroa.7.sroa.7.sroa.7.sroa.0.0.copyload235.i.i.i, %bb.js ], [ %.sroa.2.sroa.9.0.copyload.i.i.i, %bb.kd ], [ %.sroa.2132.sroa.9.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2156.sroa.9.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2182.sroa.3.sroa.7.0.copyload.i.i.i, %bb.lz ]
  %.sroa.13189.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.13189.sroa.7.sroa.7.sroa.0.0.copyload225.i.i.i, %bb.js ], [ %.sroa.2.sroa.7.0.copyload.i.i.i, %bb.kd ], [ %.sroa.2132.sroa.7.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2156.sroa.7.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2182.sroa.3.sroa.5.0.copyload.i.i.i, %bb.lz ]
  %.sroa.13189.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.13189.sroa.7.sroa.0.0.copyload215.i.i.i, %bb.js ], [ %.sroa.2.sroa.5.0.copyload.i.i.i, %bb.kd ], [ %.sroa.2132.sroa.5.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2156.sroa.5.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2182.sroa.3.sroa.3.0.copyload.i.i.i, %bb.lz ]
  %.sroa.13189.sroa.0.0.i.i.i = phi i64 [ %.sroa.13189.sroa.0.0.copyload204.i.i.i, %bb.js ], [ %.sroa.2.sroa.3.0.copyload.i.i.i, %bb.kd ], [ %.sroa.2132.sroa.3.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2156.sroa.3.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2182.sroa.3.sroa.0.0.copyload.i.i.i, %bb.lz ]
  %.sroa.7184.0.i.i.i = phi i64 [ %.sroa.7184.8.copyload.i.i.i, %bb.js ], [ %.sroa.2.sroa.0.0.copyload.i.i.i, %bb.kd ], [ %.sroa.2132.sroa.0.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2156.sroa.0.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2182.sroa.0.0.copyload.i.i.i, %bb.lz ]
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 1512 ; 2 uses
  %i.agw = load i8, ptr %i.agv, align 8, !range !47, !noalias !15045, !noundef !20
  %i.agx = trunc nuw i8 %i.agw to i1
  %i.agy = load ptr, ptr %i.do, align 8, !noalias !15045
  %i.agz = icmp ne ptr %i.agy, null
  %or.cond.not.i.i.i = select i1 %i.agx, i1 %i.agz, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.ma, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEECsl8OoimOLbh_6qdrant.exit.i.i.i

bb.ju:                                            ; preds = %.body86.i.i.i, %.body65.i.i.i, %.body.i.i.i, %bb.kc, %bb.jy, %bb.jr
  %i.aha = phi ptr [ %i.afp, %bb.jr ], [ %i.ahl, %bb.jy ], [ %i.aif, %.body.i.i.i ], [ %i.ajq, %.body65.i.i.i ], [ %i.ahl, %bb.kc ], [ %i.ald, %.body86.i.i.i ] ; 2 uses
  %i.ahb = phi ptr [ %i.afq, %bb.jr ], [ %i.ahm, %bb.jy ], [ %i.aig, %.body.i.i.i ], [ %i.ajr, %.body65.i.i.i ], [ %i.ahm, %bb.kc ], [ %i.ale, %.body86.i.i.i ] ; 2 uses
  %i.ahc = phi ptr [ %i.afr, %bb.jr ], [ %i.ahn, %bb.jy ], [ %i.aih, %.body.i.i.i ], [ %i.ajs, %.body65.i.i.i ], [ %i.ahn, %bb.kc ], [ %i.alf, %.body86.i.i.i ] ; 2 uses
  %i.ahd = phi ptr [ %i.afs, %bb.jr ], [ %i.aho, %bb.jy ], [ %i.aii, %.body.i.i.i ], [ %i.ajt, %.body65.i.i.i ], [ %i.aho, %bb.kc ], [ %i.alg, %.body86.i.i.i ] ; 2 uses
  %i.ahe = phi ptr [ %i.afz, %bb.jr ], [ %i.ahp, %bb.jy ], [ %i.aij, %.body.i.i.i ], [ %i.aju, %.body65.i.i.i ], [ %i.ahp, %bb.kc ], [ %i.alh, %.body86.i.i.i ] ; 2 uses
  %i.ahf = phi ptr [ %i.aga, %bb.jr ], [ %i.ahq, %bb.jy ], [ %i.aik, %.body.i.i.i ], [ %i.ajv, %.body65.i.i.i ], [ %i.ahq, %bb.kc ], [ %i.ali, %.body86.i.i.i ] ; 2 uses
  %.pn43.pn.i.i.i = phi { ptr, i32 } [ %i.ago, %bb.jr ], [ %i.ahs, %bb.jy ], [ %.pn31.i.i.i, %.body.i.i.i ], [ %.pn23.i.i.i, %.body65.i.i.i ], [ %i.ahv, %bb.kc ], [ %.pn15.i.i.i, %.body86.i.i.i ] ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.ahh = load i8, ptr %i.ahg, align 8, !range !47, !noalias !15045, !noundef !20
  %i.ahi = trunc nuw i8 %i.ahh to i1
  %i.ahj = load ptr, ptr %i.do, align 8, !noalias !15045
  %i.ahk = icmp ne ptr %i.ahj, null
  %or.cond357.not.i.i.i = select i1 %i.ahi, i1 %i.ahk, i1 false
  br i1 %or.cond357.not.i.i.i, label %bb.mc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestEECsl8OoimOLbh_6qdrant.exit95.i.i.i

bb.jv:                                            ; preds = %bb.jl
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #25
          to label %.noexc35.i.i unwind label %bb.md, !noalias !15044

.noexc35.i.i:                                     ; preds = %bb.jv
  unreachable

bb.jw:                                            ; preds = %bb.jl
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368) #25
          to label %.noexc36.i.i unwind label %bb.md, !noalias !15044

.noexc36.i.i:                                     ; preds = %bb.jw
  unreachable

bb.jx:                                            ; preds = %bb.jq, %bb.jo
  %i.ahl = phi ptr [ %i.afp, %bb.jq ], [ %i.qf, %bb.jo ] ; 5 uses
  %i.ahm = phi ptr [ %i.afq, %bb.jq ], [ %i.qe, %bb.jo ] ; 4 uses
  %i.ahn = phi ptr [ %i.afr, %bb.jq ], [ %.phi.trans.insert399.i, %bb.jo ] ; 5 uses
  %i.aho = phi ptr [ %i.afs, %bb.jq ], [ %i.aam, %bb.jo ] ; 4 uses
  %i.ahp = phi ptr [ %i.afz, %bb.jq ], [ %.phi.trans.insert.i.i, %bb.jo ] ; 5 uses
  %i.ahq = phi ptr [ %i.aga, %bb.jq ], [ %i.afo, %bb.jo ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !15045
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB6_10LocalShard20get_snapshot_creator0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(576) %i.dn, ptr noundef nonnull align 8 %i.ahr, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jz unwind label %bb.jy, !noalias !15047

bb.jy:                                            ; preds = %bb.jx
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !15045
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtBI_10LocalShard20get_snapshot_creator0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ahr) #24
          to label %bb.ju unwind label %bb.kf, !noalias !15047

bb.jz:                                            ; preds = %bb.jx
  %i.aht = load i64, ptr %i.dn, align 8, !range !28, !noalias !15045, !noundef !20 ; 2 uses
  %i.ahu = icmp eq i64 %i.aht, 2
  br i1 %i.ahu, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !15045
  br label %bb.me

bb.kb:                                            ; preds = %bb.jz
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.2.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.sroa.2.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %.sroa.2.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %.sroa.2.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.2.sroa.7.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2.sroa.9.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %.sroa.2.sroa.9.0.copyload.i.i.i = load i64, ptr %.sroa.2.sroa.9.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2.sroa.11.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %.sroa.2.sroa.11.0.copyload.i.i.i = load i64, ptr %.sroa.2.sroa.11.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2.sroa.13.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %.sroa.2.sroa.13.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.sroa.2.sroa.13.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i, i64 520, i1 false), !noalias !15045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !15045
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtBI_10LocalShard20get_snapshot_creator0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ahr)
          to label %bb.kd unwind label %bb.kc, !noalias !15047

bb.kc:                                            ; preds = %bb.kb
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.kd:                                            ; preds = %bb.kb
  %i.ahw = trunc nuw i64 %i.aht to i1
  br i1 %i.ahw, label %bb.jt, label %bb.ke

bb.ke:                                            ; preds = %bb.lz, %bb.lh, %bb.kt, %bb.kd
  %i.ahx = phi ptr [ %i.akn, %bb.lh ], [ %i.aja, %bb.kt ], [ %i.amq, %bb.lz ], [ %i.ahl, %bb.kd ]
  %i.ahy = phi ptr [ %i.ako, %bb.lh ], [ %i.ajb, %bb.kt ], [ %i.amr, %bb.lz ], [ %i.ahm, %bb.kd ]
  %i.ahz = phi ptr [ %i.akp, %bb.lh ], [ %i.ajc, %bb.kt ], [ %i.ams, %bb.lz ], [ %i.ahn, %bb.kd ]
  %i.aia = phi ptr [ %i.akq, %bb.lh ], [ %i.ajd, %bb.kt ], [ %i.amt, %bb.lz ], [ %i.aho, %bb.kd ]
  %.sroa.2182.sroa.5.i.sink.i.i = phi ptr [ %.sroa.2156.sroa.13.i.i.i, %bb.lh ], [ %.sroa.2132.sroa.13.i.i.i, %bb.kt ], [ %.sroa.2182.sroa.5.i.i.i, %bb.lz ], [ %.sroa.2.sroa.13.i.i.i, %bb.kd ]
  %i.aib = phi ptr [ %i.akr, %bb.lh ], [ %i.aje, %bb.kt ], [ %i.amu, %bb.lz ], [ %i.ahp, %bb.kd ]
  %i.aic = phi ptr [ %i.aks, %bb.lh ], [ %i.ajf, %bb.kt ], [ %i.amv, %bb.lz ], [ %i.ahq, %bb.kd ]
  %.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.0.i.i.i = phi i64 [ %.sroa.2156.sroa.11.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2132.sroa.11.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2182.sroa.3.sroa.9.0.copyload.i.i.i, %bb.lz ], [ %.sroa.2.sroa.11.0.copyload.i.i.i, %bb.kd ]
  %.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.i.i.i = phi i64 [ %.sroa.2156.sroa.9.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2132.sroa.9.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2182.sroa.3.sroa.7.0.copyload.i.i.i, %bb.lz ], [ %.sroa.2.sroa.9.0.copyload.i.i.i, %bb.kd ]
  %.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.i.i.i = phi i64 [ %.sroa.2156.sroa.7.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2132.sroa.7.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2182.sroa.3.sroa.5.0.copyload.i.i.i, %bb.lz ], [ %.sroa.2.sroa.7.0.copyload.i.i.i, %bb.kd ]
  %.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.i.i.i = phi i64 [ %.sroa.2156.sroa.5.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2132.sroa.5.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2182.sroa.3.sroa.3.0.copyload.i.i.i, %bb.lz ], [ %.sroa.2.sroa.5.0.copyload.i.i.i, %bb.kd ]
  %.sroa.5.sroa.5.sroa.5.sroa.0.0.i.i.i = phi i64 [ %.sroa.2156.sroa.3.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2132.sroa.3.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2182.sroa.3.sroa.0.0.copyload.i.i.i, %bb.lz ], [ %.sroa.2.sroa.3.0.copyload.i.i.i, %bb.kd ]
  %.sroa.5.sroa.5.sroa.0.0.i.i.i = phi i64 [ %.sroa.2156.sroa.0.0.copyload.i.i.i, %bb.lh ], [ %.sroa.2132.sroa.0.0.copyload.i.i.i, %bb.kt ], [ %.sroa.2182.sroa.0.0.copyload.i.i.i, %bb.lz ], [ %.sroa.2.sroa.0.0.copyload.i.i.i, %bb.kd ]
  %.sroa.5.sroa.0.0.i.i.i = phi i64 [ 0, %bb.lh ], [ 1, %bb.kt ], [ 1, %bb.lz ], [ 0, %bb.kd ]
  %.sroa.0.0.i.i.i = phi i64 [ 1, %bb.lh ], [ 0, %bb.kt ], [ 1, %bb.lz ], [ 0, %bb.kd ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %.sroa.5.sroa.5.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.sroa.2182.sroa.5.i.sink.i.i, i64 520, i1 false), !noalias !15043
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 1512
  store i8 0, ptr %i.aid, align 8, !noalias !15045
  br label %bb.mf

bb.kf:                                            ; preds = %bb.mc, %.body86.i.i.i, %.body65.i.i.i, %.body.i.i.i, %bb.jy
  %i.aie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !15047
  unreachable

.body.i.i.i:                                      ; preds = %bb.kr, %bb.ki
  %i.aif = phi ptr [ %i.aja, %bb.ki ], [ %i.qf, %bb.kr ]
  %i.aig = phi ptr [ %i.ajb, %bb.ki ], [ %i.qe, %bb.kr ]
  %i.aih = phi ptr [ %i.ajc, %bb.ki ], [ %.phi.trans.insert399.i, %bb.kr ]
  %i.aii = phi ptr [ %i.ajd, %bb.ki ], [ %i.aam, %bb.kr ]
  %i.aij = phi ptr [ %i.aje, %bb.ki ], [ %.phi.trans.insert.i.i, %bb.kr ]
  %i.aik = phi ptr [ %i.ajf, %bb.ki ], [ %i.afo, %bb.kr ]
  %i.ail = phi ptr [ %i.ajh, %bb.ki ], [ %i.aim, %bb.kr ]
  %.pn31.i.i.i = phi { ptr, i32 } [ %.pn4.i.i.i.i, %bb.ki ], [ %i.ajo, %bb.kr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !15045
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11proxy_shardNtBG_10ProxyShard20get_snapshot_creator0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ail) #24
          to label %bb.ju unwind label %bb.kf, !noalias !15047

bb.kg:                                            ; preds = %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !15045
  %.phi.trans.insert362.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2584 ; 3 uses
  %.pre363.i.i.i = load i8, ptr %.phi.trans.insert362.i.i.i, align 8, !range !46, !noalias !15048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !15045
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15049)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  switch i8 %.pre363.i.i.i, label %default.unreachable1327 [
    i8 0, label %._crit_edge176.i.i
    i8 1, label %bb.kj
    i8 2, label %bb.kk
    i8 3, label %bb.kl
  ]

._crit_edge176.i.i:                               ; preds = %bb.kg
  %.phi.trans.insert177.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2568
  %.pre178.i.i = load ptr, ptr %.phi.trans.insert177.i.i, align 8, !noalias !15048
  %.phi.trans.insert179.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %.pre180.i.i = load ptr, ptr %.phi.trans.insert179.i.i, align 8, !noalias !15048
  %.phi.trans.insert181.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.pre182.i.i = load i64, ptr %.phi.trans.insert181.i.i, align 8, !noalias !15048
  %.phi.trans.insert183.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2576
  %.pre184.i.i = load ptr, ptr %.phi.trans.insert183.i.i, align 8, !noalias !15048
  %.phi.trans.insert185.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2585
  %.pre186.i.i = load i8, ptr %.phi.trans.insert185.i.i, align 1, !range !34, !noalias !15048
  %.phi.trans.insert187.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2586
  %.pre188.i.i = load i8, ptr %.phi.trans.insert187.i.i, align 2, !range !47, !noalias !15048
  br label %bb.kh

bb.kh:                                            ; preds = %._crit_edge176.i.i, %.thread.i.i.i
  %i.ain = phi ptr [ %i.afp, %.thread.i.i.i ], [ %i.qf, %._crit_edge176.i.i ]
  %i.aio = phi ptr [ %i.afq, %.thread.i.i.i ], [ %i.qe, %._crit_edge176.i.i ]
  %i.aip = phi ptr [ %i.afr, %.thread.i.i.i ], [ %.phi.trans.insert399.i, %._crit_edge176.i.i ]
  %i.aiq = phi ptr [ %i.afs, %.thread.i.i.i ], [ %i.aam, %._crit_edge176.i.i ]
  %i.air = phi ptr [ %i.afz, %.thread.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge176.i.i ]
  %i.ais = phi ptr [ %i.aga, %.thread.i.i.i ], [ %i.afo, %._crit_edge176.i.i ]
  %i.ait = phi i8 [ %i.aft, %.thread.i.i.i ], [ %.pre188.i.i, %._crit_edge176.i.i ]
  %i.aiu = phi i8 [ %i.afu, %.thread.i.i.i ], [ %.pre186.i.i, %._crit_edge176.i.i ]
  %3 = phi ptr [ %i.afv, %.thread.i.i.i ], [ %.pre184.i.i, %._crit_edge176.i.i ]
  %i.aiv = phi i64 [ %i.afw, %.thread.i.i.i ], [ %.pre182.i.i, %._crit_edge176.i.i ]
  %i.aiw = phi ptr [ %i.afx, %.thread.i.i.i ], [ %.pre180.i.i, %._crit_edge176.i.i ]
  %i.aix = phi ptr [ %i.agj, %.thread.i.i.i ], [ %.pre178.i.i, %._crit_edge176.i.i ]
  %i.aiy = phi ptr [ %.sroa.13127.0..sroa_idx.i.i.i, %.thread.i.i.i ], [ %.phi.trans.insert362.i.i.i, %._crit_edge176.i.i ]
  %4 = phi ptr [ %i.agk, %.thread.i.i.i ], [ %i.aim, %._crit_edge176.i.i ] ; 2 uses
  %.sroa.0.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !noalias !15048
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 1584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.aiz, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.i.i.i.i, i64 160, i1 false), !noalias !15048
  %.sroa.79.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1744
  store ptr %i.aiw, ptr %.sroa.79.0..sroa_idx.i.i.i.i, align 8, !noalias !15048
  %.sroa.810.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1752
  store i64 %i.aiv, ptr %.sroa.810.0..sroa_idx.i.i.i.i, align 8, !noalias !15048
  %.sroa.1012.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2104
  store ptr %i.aix, ptr %.sroa.1012.0..sroa_idx.i.i.i.i, align 8, !noalias !15048
  %.sroa.1113.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2112
  store ptr %3, ptr %.sroa.1113.0..sroa_idx.i.i.i.i, align 8, !noalias !15048
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2122
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 2, !noalias !15048
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2123
  store i8 %i.aiu, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 1, !noalias !15048
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2124
  store i8 %i.ait, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 4, !noalias !15048
  br label %bb.kl

bb.ki:                                            ; preds = %bb.kp, %bb.km
  %.pn4.i.i.i.i = phi { ptr, i32 } [ %i.ajm, %bb.kp ], [ %i.ajj, %bb.km ]
  store i8 2, ptr %i.ajg, align 8, !noalias !15048
  br label %.body.i.i.i

bb.kj:                                            ; preds = %bb.kg
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @326) #25
          to label %.noexc.i.i.i unwind label %bb.kr, !noalias !15046

.noexc.i.i.i:                                     ; preds = %bb.kj
  unreachable

bb.kk:                                            ; preds = %bb.kg
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @326) #25
          to label %.noexc48.i.i.i unwind label %bb.kr, !noalias !15046

.noexc48.i.i.i:                                   ; preds = %bb.kk
  unreachable

bb.kl:                                            ; preds = %bb.kh, %bb.kg
  %i.aja = phi ptr [ %i.qf, %bb.kg ], [ %i.ain, %bb.kh ] ; 4 uses
  %i.ajb = phi ptr [ %i.qe, %bb.kg ], [ %i.aio, %bb.kh ] ; 3 uses
  %i.ajc = phi ptr [ %.phi.trans.insert399.i, %bb.kg ], [ %i.aip, %bb.kh ] ; 4 uses
  %i.ajd = phi ptr [ %i.aam, %bb.kg ], [ %i.aiq, %bb.kh ] ; 3 uses
  %i.aje = phi ptr [ %.phi.trans.insert.i.i, %bb.kg ], [ %i.air, %bb.kh ] ; 4 uses
  %i.ajf = phi ptr [ %i.afo, %bb.kg ], [ %i.ais, %bb.kh ] ; 3 uses
  %i.ajg = phi ptr [ %.phi.trans.insert362.i.i.i, %bb.kg ], [ %i.aiy, %bb.kh ] ; 3 uses
  %i.ajh = phi ptr [ %i.aim, %bb.kg ], [ %4, %bb.kh ]
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 1584 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB6_10LocalShard20get_snapshot_creator0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(576) %i.dm, ptr noundef nonnull align 8 %i.aji, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.kn unwind label %bb.km, !noalias !15047

bb.km:                                            ; preds = %bb.kl
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtBI_10LocalShard20get_snapshot_creator0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aji) #24
          to label %bb.ki unwind label %bb.kq, !noalias !15050

bb.kn:                                            ; preds = %bb.kl
  %i.ajk = load i64, ptr %i.dm, align 8, !range !28, !alias.scope !15049, !noalias !15051, !noundef !20 ; 2 uses
  %i.ajl = icmp eq i64 %i.ajk, 2
  br i1 %i.ajl, label %bb.ks, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtBI_10LocalShard20get_snapshot_creator0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.aji)
          to label %bb.kt unwind label %bb.kp, !noalias !15050

bb.kp:                                            ; preds = %bb.ko
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

bb.kq:                                            ; preds = %bb.km
  %i.ajn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !15050
  unreachable

bb.kr:                                            ; preds = %bb.kk, %bb.kj
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ks:                                            ; preds = %bb.kn
  store i8 3, ptr %i.ajg, align 8, !noalias !15048
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !15045
  br label %bb.me

bb.kt:                                            ; preds = %bb.ko
  store i8 1, ptr %i.ajg, align 8, !noalias !15048
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %.sroa.2132.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.2132.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.2132.0..sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2132.sroa.3.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.2132.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.2132.sroa.3.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2132.sroa.5.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.sroa.2132.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.2132.sroa.5.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2132.sroa.7.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %.sroa.2132.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.2132.sroa.7.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2132.sroa.9.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %.sroa.2132.sroa.9.0.copyload.i.i.i = load i64, ptr %.sroa.2132.sroa.9.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2132.sroa.11.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %.sroa.2132.sroa.11.0.copyload.i.i.i = load i64, ptr %.sroa.2132.sroa.11.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !15045 ; 2 uses
  %.sroa.2132.sroa.13.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %.sroa.2132.sroa.13.i.i.i, ptr noundef nonnull align 8 dereferenceable(520) %.sroa.2132.sroa.13.0..sroa.2132.0..sroa_idx.sroa_idx.i.i.i, i64 520, i1 false), !noalias !15045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !15045
  %i.ajp = trunc nuw i64 %i.ajk to i1
  br i1 %i.ajp, label %bb.jt, label %bb.ke

.body65.i.i.i:                                    ; preds = %bb.lf, %bb.kw
  %i.ajq = phi ptr [ %i.akn, %bb.kw ], [ %i.qf, %bb.lf ]
  %i.ajr = phi ptr [ %i.ako, %bb.kw ], [ %i.qe, %bb.lf ]
  %i.ajs = phi ptr [ %i.akp, %bb.kw ], [ %.phi.trans.insert399.i, %bb.lf ]
  %i.ajt = phi ptr [ %i.akq, %bb.kw ], [ %i.aam, %bb.lf ]
  %i.aju = phi ptr [ %i.akr, %bb.kw ], [ %.phi.trans.insert.i.i, %bb.lf ]
  %i.ajv = phi ptr [ %i.aks, %bb.kw ], [ %i.afo, %bb.lf ]
  %i.ajw = phi ptr [ %i.aku, %bb.kw ], [ %i.ajx, %bb.lf ]
  %.pn23.i.i.i = phi { ptr, i32 } [ %.pn4.i54.i.i.i, %bb.kw ], [ %i.alb, %bb.lf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !15045
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtBI_17ForwardProxyShard20get_snapshot_creator0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ajw) #24
          to label %bb.ju unwind label %bb.kf, !noalias !15047

bb.ku:                                            ; preds = %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !15045
  %.phi.trans.insert360.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2584 ; 3 uses
  %.pre361.i.i.i = load i8, ptr %.phi.trans.insert360.i.i.i, align 8, !range !46, !noalias !15052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !15045
  %i.ajx = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15053)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i53.i.i.i)
  switch i8 %.pre361.i.i.i, label %default.unreachable1327 [
    i8 0, label %._crit_edge163.i.i
    i8 1, label %bb.kx
    i8 2, label %bb.ky
    i8 3, label %bb.kz
  ]

._crit_edge163.i.i:                               ; preds = %bb.ku
  %.phi.trans.insert164.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2568
  %.pre165.i.i = load ptr, ptr %.phi.trans.insert164.i.i, align 8, !noalias !15052
  %.phi.trans.insert166.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1568
  %.pre167.i.i = load ptr, ptr %.phi.trans.insert166.i.i, align 8, !noalias !15052
  %.phi.trans.insert168.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.pre169.i.i = load i64, ptr %.phi.trans.insert168.i.i, align 8, !noalias !15052
  %.phi.trans.insert170.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2576
  %.pre171.i.i = load ptr, ptr %.phi.trans.insert170.i.i, align 8, !noalias !15052
  %.phi.trans.insert172.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2585
  %.pre173.i.i = load i8, ptr %.phi.trans.insert172.i.i, align 1, !range !34, !noalias !15052
  %.phi.trans.insert174.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2586
  %.pre175.i.i = load i8, ptr %.phi.trans.insert174.i.i, align 2, !range !47, !noalias !15052
  br label %bb.kv

bb.kv:                                            ; preds = %._crit_edge163.i.i, %.thread368.i.i.i
  %i.ajy = phi ptr [ %i.afp, %.thread368.i.i.i ], [ %i.qf, %._crit_edge163.i.i ]
  %i.ajz = phi ptr [ %i.afq, %.thread368.i.i.i ], [ %i.qe, %._crit_edge163.i.i ]
  %i.aka = phi ptr [ %i.afr, %.thread368.i.i.i ], [ %.phi.trans.insert399.i, %._crit_edge163.i.i ]
  %i.akb = phi ptr [ %i.afs, %.thread368.i.i.i ], [ %i.aam, %._crit_edge163.i.i ]
  %i.akc = phi ptr [ %i.afz, %.thread368.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge163.i.i ]
  %i.akd = phi ptr [ %i.aga, %.thread368.i.i.i ], [ %i.afo, %._crit_edge163.i.i ]
  %i.ake = phi i8 [ %i.aft, %.thread368.i.i.i ], [ %.pre175.i.i, %._crit_edge163.i.i ]
  %i.akf = phi i8 [ %i.afu, %.thread368.i.i.i ], [ %.pre173.i.i, %._crit_edge163.i.i ]
  %i.akg = phi ptr [ %i.afv, %.thread368.i.i.i ], [ %.pre171.i.i, %._crit_edge163.i.i ]
  %i.akh = phi i64 [ %i.afw, %.thread368.i.i.i ], [ %.pre169.i.i, %._crit_edge163.i.i ]
  %i.aki = phi ptr [ %i.afx, %.thread368.i.i.i ], [ %.pre167.i.i, %._crit_edge163.i.i ]
  %i.akj = phi ptr [ %i.afy, %.thread368.i.i.i ], [ %.pre165.i.i, %._crit_edge163.i.i ]
  %i.akk = phi ptr [ %.sroa.13151.0..sroa_idx.i.i.i, %.thread368.i.i.i ], [ %.phi.trans.insert360.i.i.i, %._crit_edge163.i.i ]
  %i.akl = phi ptr [ %i.agl, %.thread368.i.i.i ], [ %i.ajx, %._crit_edge163.i.i ] ; 2 uses
  %.sroa.0.32..sroa_idx.i56.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i53.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.32..sroa_idx.i56.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.akl, i64 48, i1 false), !noalias !15052
  %i.akm = getelementptr inbounds nuw i8, ptr %1, i64 1584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.akm, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.i53.i.i.i, i64 160, i1 false), !noalias !15052
  %.sroa.79.0..sroa_idx.i57.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1744
  store ptr %i.aki, ptr %.sroa.79.0..sroa_idx.i57.i.i.i, align 8, !noalias !15052
  %.sroa.810.0..sroa_idx.i58.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1752
  store i64 %i.akh, ptr %.sroa.810.0..sroa_idx.i58.i.i.i, align 8, !noalias !15052
  %.sroa.1012.0..sroa_idx.i59.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2104
  store ptr %i.akj, ptr %.sroa.1012.0..sroa_idx.i59.i.i.i, align 8, !noalias !15052
  %.sroa.1113.0..sroa_idx.i60.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2112
  store ptr %i.akg, ptr %.sroa.1113.0..sroa_idx.i60.i.i.i, align 8, !noalias !15052
  %.sroa.13.0..sroa_idx.i61.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2122
  store i8 0, ptr %.sroa.13.0..sroa_idx.i61.i.i.i, align 2, !noalias !15052
  %.sroa.14.0..sroa_idx.i62.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2123
  store i8 %i.akf, ptr %.sroa.14.0..sroa_idx.i62.i.i.i, align 1, !noalias !15052
  %.sroa.15.0..sroa_idx.i63.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2124
  store i8 %i.ake, ptr %.sroa.15.0..sroa_idx.i63.i.i.i, align 4, !noalias !15052
  br label %bb.kz

bb.kw:                                            ; preds = %bb.ld, %bb.la
  %.pn4.i54.i.i.i = phi { ptr, i32 } [ %i.akz, %bb.ld ], [ %i.akw, %bb.la ]
  store i8 2, ptr %i.akt, align 8, !noalias !15052
  br label %.body65.i.i.i

bb.kx:                                            ; preds = %bb.ku
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #25
          to label %.noexc67.i.i.i unwind label %bb.lf, !noalias !15046

.noexc67.i.i.i:                                   ; preds = %bb.kx
  unreachable

bb.ky:                                            ; preds = %bb.ku
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #25
          to label %.noexc68.i.i.i unwind label %bb.lf, !noalias !15046

.noexc68.i.i.i:                                   ; preds = %bb.ky
  unreachable

bb.kz:                                            ; preds = %bb.kv, %bb.ku
  %i.akn = phi ptr [ %i.qf, %bb.ku ], [ %i.ajy, %bb.kv ] ; 4 uses
  %i.ako = phi ptr [ %i.qe, %bb.ku ], [ %i.ajz, %bb.kv ] ; 3 uses
  %i.akp = phi ptr [ %.phi.trans.insert399.i, %bb.ku ], [ %i.aka, %bb.kv ] ; 4 uses
  %i.akq = phi ptr [ %i.aam, %bb.ku ], [ %i.akb, %bb.kv ] ; 3 uses
  %i.akr = phi ptr [ %.phi.trans.insert.i.i, %bb.ku ], [ %i.akc, %bb.kv ] ; 4 uses
  %i.aks = phi ptr [ %i.afo, %bb.ku ], [ %i.akd, %bb.kv ] ; 3 uses
  %i.akt = phi ptr [ %.phi.trans.insert360.i.i.i, %bb.ku ], [ %i.akk, %bb.kv ] ; 3 uses
  %i.aku = phi ptr [ %i.ajx, %bb.ku ], [ %i.akl, %bb.kv ]
  %i.akv = getelementptr inbounds nuw i8, ptr %1, i64 1584 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtB6_10LocalShard20get_snapshot_creator0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(576) %i.dl, ptr noundef nonnull align 8 %i.akv, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.lb unwind label %bb.la, !noalias !15047

bb.la:                                            ; preds = %bb.kz
  %i.akw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtBI_10LocalShard20get_snapshot_creator0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.akv) #24
          to label %bb.kw unwind label %bb.le, !noalias !15054

bb.lb:                                            ; preds = %bb.kz
  %i.akx = load i64, ptr %i.dl, align 8, !range !28, !alias.scope !15053, !noalias !15055, !noundef !20 ; 2 uses
  %i.aky = icmp eq i64 %i.akx, 2
  br i1 %i.aky, label %bb.lg, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard8snapshotNtBI_10LocalShard20get_snapshot_creator0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.akv)
          to label %bb.lh unwind label %bb.ld, !noalias !15054

bb.ld:                                            ; preds = %bb.lc
  %i.akz = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

bb.le:                                            ; preds = %bb.la
  %i.ala = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !15054
  unreachable

bb.lf:                                            ; preds = %bb.ky, %bb.kx
  %i.alb = landingpad { ptr, i32 }
end_hunk_0
