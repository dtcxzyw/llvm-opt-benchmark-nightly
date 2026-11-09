Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.006?download=true
inline.NumInlined: 9815
inline.NumDeleted: 3185
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14shard_transferNtB6_10Collection20abort_shard_transfer0CsgGgPqgSfnMH_7storage:bb.a

bb.cn:                                            ; preds = %bb.ci
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @554) #26
          to label %.noexc118 unwind label %bb.em

.noexc118:                                        ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.ci
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !35, !noalias !11874
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 4 uses
  switch i8 %.pre.i, label %default.unreachable280 [
    i8 0, label %._crit_edge
    i8 1, label %bb.cr
    i8 2, label %bb.cs
    i8 3, label %bb.cp
  ]

._crit_edge:                                      ; preds = %bb.co
  %.pre271 = load ptr, ptr %i.hr, align 8, !noalias !11874
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11874
  br label %bb.ct

bb.cq:                                            ; preds = %._crit_edge, %.thread.i
  %i.hs = phi ptr [ %i.hg, %.thread.i ], [ %i.hf, %._crit_edge ]
  %i.ht = phi ptr [ %i.hh, %.thread.i ], [ %i.he, %._crit_edge ]
  %i.hu = phi ptr [ %i.hn, %.thread.i ], [ %.pre271, %._crit_edge ]
  %i.hv = phi ptr [ %.sroa.8.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ]
  %i.hw = phi ptr [ %i.ho, %.thread.i ], [ %i.hr, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11874
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 432
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 392
  store ptr %i.hx, ptr %i.hy, align 8, !noalias !11874
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 480
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !11874
  br label %bb.ct

bb.cr:                                            ; preds = %bb.co
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @389) #26
          to label %.noexc.i unwind label %bb.eb, !noalias !11873

.noexc.i:                                         ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.co
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @389) #26
          to label %.noexc14.i unwind label %bb.eb, !noalias !11873

.noexc14.i:                                       ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cq, %bb.cp
  %i.hz = phi ptr [ %i.hs, %bb.cq ], [ %i.hf, %bb.cp ] ; 3 uses
  %i.ia = phi ptr [ %i.ht, %bb.cq ], [ %i.he, %bb.cp ] ; 2 uses
  %i.ib = phi ptr [ %i.hv, %bb.cq ], [ %.phi.trans.insert.i, %bb.cp ] ; 3 uses
  %i.ic = phi ptr [ %i.hw, %bb.cq ], [ %i.hr, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11874
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  invoke fastcc void @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.id, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cv unwind label %bb.cu, !noalias !11873

bb.cu:                                            ; preds = %bb.ct
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11874
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.id) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i unwind label %bb.dw, !noalias !11873

bb.cv:                                            ; preds = %bb.ct
  %i.if = load ptr, ptr %i.f, align 8, !noalias !11874, !noundef !27
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ec, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !11874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11874
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ii = load i8, ptr %i.ih, align 8, !range !35, !noalias !11874, !noundef !27
  %cond.i.i.i108 = icmp eq i8 %i.ii, 3
  br i1 %cond.i.i.i108, label %bb.cx, label %bb.de

bb.cx:                                            ; preds = %bb.cw
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ik = load i8, ptr %i.ij, align 8, !range !35, !noalias !11874, !noundef !27
  %cond.i.i.i.i109 = icmp eq i8 %i.ik, 3
  br i1 %cond.i.i.i.i109, label %bb.cy, label %bb.de

bb.cy:                                            ; preds = %bb.cx
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.il)
          to label %bb.db unwind label %bb.cz, !noalias !11873

bb.cz:                                            ; preds = %bb.cy
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.val2.i.i.i.i.i110 = load ptr, ptr %i.in, align 8, !noalias !11874, !align !33, !noundef !27 ; 2 uses
  %i.io = icmp eq ptr %.val2.i.i.i.i.i110, null
  br i1 %i.io, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ip = getelementptr i8, ptr %1, i64 424
  %.val3.i.i.i.i.i111 = load ptr, ptr %i.ip, align 8, !noalias !11874
  %i.iq = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i110, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !11873, !nonnull !27, !noundef !27
  invoke void %i.ir(ptr noundef %.val3.i.i.i.i.i111)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i unwind label %bb.dd, !noalias !11873, !inline_history !1

bb.db:                                            ; preds = %bb.cy
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.val.i.i.i.i.i112 = load ptr, ptr %i.is, align 8, !noalias !11874, !align !33, !noundef !27 ; 2 uses
  %i.it = icmp eq ptr %.val.i.i.i.i.i112, null
  br i1 %i.it, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.iu = getelementptr i8, ptr %1, i64 424
  %.val1.i.i.i.i.i113 = load ptr, ptr %i.iu, align 8, !noalias !11874
  %i.iv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i112, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !11873, !nonnull !27, !noundef !27
  invoke void %i.iw(ptr noundef %.val1.i.i.i.i.i113)
          to label %bb.de unwind label %bb.dg, !noalias !11873, !inline_history !97

bb.dd:                                            ; preds = %bb.da
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !11873
  unreachable

bb.de:                                            ; preds = %bb.dc, %bb.db, %bb.cx, %bb.cw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.val29.i.i = load ptr, ptr %i.iy, align 8, !noalias !11874, !noundef !27 ; 2 uses
  %i.iz = load i64, ptr %.val29.i.i, align 8, !range !98, !noalias !11873, !noundef !27 ; 3 uses
  %.not.i.i = icmp eq i64 %i.iz, -1
  br i1 %.not.i.i, label %.invoke.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ja = icmp ne i64 %i.iz, 4
  call void @llvm.assume(i1 %i.ja)
  %i.jb = icmp eq i64 %i.iz, 5
  br i1 %i.jb, label %bb.dh, label %.invoke.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i: ; preds = %bb.dx, %bb.dg, %bb.da, %bb.cz, %bb.cu
  %.pn22.i.i = phi { ptr, i32 } [ %i.jc, %bb.dg ], [ %.pn18.pn.pn.i.i, %bb.dx ], [ %i.im, %bb.cz ], [ %i.ie, %bb.cu ], [ %i.im, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11874
  store i8 2, ptr %i.ib, align 8, !noalias !11874
  br label %.body.i

bb.dg:                                            ; preds = %.invoke.i.i, %bb.dc
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i

bb.dh:                                            ; preds = %bb.df
  %i.jd = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !11874 ; 2 uses
  %i.je = icmp ult i64 %i.jd, 6
  call void @llvm.assume(i1 %i.je)
  %i.jf = icmp samesign ugt i64 %i.jd, 3
  br i1 %i.jf, label %bb.dj, label %bb.dm

bb.di:                                            ; preds = %bb.dj
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11874
  br label %bb.dx

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11874
  store ptr @377, ptr %i.e, align 8, !noalias !11874
  %i.jh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 47, ptr %i.jh, align 8, !noalias !11874
  %i.ji = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @377, ptr %i.ji, align 8, !noalias !11874
  %i.jj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 47, ptr %i.jj, align 8, !noalias !11874
  %i.jk = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @390, ptr %i.jk, align 8, !noalias !11874
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsgGgPqgSfnMH_7storage(ptr noundef nonnull @387, ptr noundef nonnull inttoptr (i64 119 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.dk unwind label %bb.di, !noalias !11873

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11874
  %.val28.pre.i.i = load ptr, ptr %i.iy, align 8, !noalias !11874
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dy
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11874
  br label %bb.dx

bb.dm:                                            ; preds = %bb.dk, %bb.dh
  %.val28.i.i = phi ptr [ %.val29.i.i, %bb.dh ], [ %.val28.pre.i.i, %bb.dk ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11874
  call void @llvm.experimental.noalias.scope.decl(metadata !11875)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.d, ptr noundef nonnull align 8 dereferenceable(720) %.val28.i.i, i64 720, i1 false), !alias.scope !11876, !noalias !11873
  store i64 -1, ptr %.val28.i.i, align 8, !alias.scope !11877, !noalias !11873
  %i.jm = load i64, ptr %i.d, align 8, !range !98, !noalias !11874, !noundef !27 ; 2 uses
  switch i64 %i.jm, label %bb.dy [
    i64 -1, label %.thread.i.i
    i64 5, label %bb.dn
  ]

bb.dn:                                            ; preds = %bb.dm
  %i.jn = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %i.a, ptr noundef nonnull align 8 dereferenceable(608) %i.jn, i64 608, i1 false), !noalias !11873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11874
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtB2_15QueueProxyShard27forget_updates_and_finalize(ptr noalias nofree noundef nonnull sret([536 x i8]) align 8 captures(none) dereferenceable(536) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(608) %i.a)
          to label %bb.dp unwind label %bb.do, !noalias !11873

bb.do:                                            ; preds = %bb.dn
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11874
  br label %bb.dx

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.c, ptr noundef nonnull align 8 dereferenceable(400) %i.b, i64 400, i1 false), !noalias !11874
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(136) %i.jp)
          to label %bb.dr unwind label %bb.dq, !noalias !11873

bb.dq:                                            ; preds = %bb.dp
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11874
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard10LocalShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %i.c) #25
          to label %bb.dv unwind label %bb.dw, !noalias !11873

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11874
  %.val27.i.i = load ptr, ptr %i.iy, align 8, !noalias !11874, !noundef !27 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11878)
  %i.jr = load i64, ptr %.val27.i.i, align 8, !range !98, !alias.scope !11879, !noalias !11873, !noundef !27
  %i.js = icmp eq i64 %i.jr, -1
  br i1 %i.js, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val27.i.i)
          to label %bb.du unwind label %bb.dt, !noalias !11880

bb.dt:                                            ; preds = %bb.ds
  %i.jt = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %.val27.i.i, align 8, !alias.scope !11881, !noalias !11873
  %.sroa.643.0..val27.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.643.0..val27.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(400) %i.c, i64 400, i1 false), !noalias !11873
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds, %bb.dr
  store i64 2, ptr %.val27.i.i, align 8, !alias.scope !11881, !noalias !11873
  %.sroa.643.0..val27.sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.643.0..val27.sroa_idx44.i.i, ptr noundef nonnull align 8 dereferenceable(400) %i.c, i64 400, i1 false), !noalias !11873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11874
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.du, %bb.df, %bb.de
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ed unwind label %bb.dg, !noalias !11873

bb.dv:                                            ; preds = %bb.dt, %bb.dq
  %.pn1850.i.i = phi { ptr, i32 } [ %i.jq, %bb.dq ], [ %i.jt, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11874
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dx, %bb.dq, %bb.cu
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !11873
  unreachable

bb.dx:                                            ; preds = %bb.dz, %bb.dv, %bb.do, %bb.dl, %bb.di
  %.pn18.pn.pn.i.i = phi { ptr, i32 } [ %i.jg, %bb.di ], [ %i.jv, %bb.dz ], [ %i.jl, %bb.dl ], [ %.pn1850.i.i, %bb.dv ], [ %i.jo, %bb.do ]
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i unwind label %bb.dw, !noalias !11873

.thread.i.i:                                      ; preds = %bb.dy, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11874
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #22
          to label %bb.ea unwind label %bb.dz, !noalias !11873

bb.dy:                                            ; preds = %bb.dm
  %3 = icmp ne i64 %i.jm, 4
  call void @llvm.assume(i1 %3)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(720) %i.d)
          to label %.thread.i.i unwind label %bb.dl, !noalias !11873

bb.dz:                                            ; preds = %.thread.i.i
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.ea:                                            ; preds = %.thread.i.i
  unreachable

bb.eb:                                            ; preds = %bb.cs, %bb.cr
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.eb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i
  %i.jx = phi ptr [ %i.hf, %bb.eb ], [ %i.hz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i ]
  %i.jy = phi ptr [ %i.he, %bb.eb ], [ %i.ia, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i ]
  %i.jz = phi ptr [ %i.hr, %bb.eb ], [ %i.ic, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.jw, %bb.eb ], [ %.pn22.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtBI_15ShardReplicaSet24revert_queue_proxy_local0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.jz) #25
          to label %bb.cl unwind label %bb.ee, !noalias !11873

bb.ec:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11874
  store i8 3, ptr %i.ib, align 8, !noalias !11874
  br label %bb.en

bb.ed:                                            ; preds = %.invoke.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11874
  store i8 1, ptr %i.ib, align 8, !noalias !11874
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !11872, !nonnull !27, !align !33, !noundef !27
  %.val.i = load ptr, ptr %i.kb, align 8, !noalias !11873, !nonnull !27, !noundef !27
  %i.kc = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  store ptr %i.kc, ptr %i.ic, align 8, !noalias !11872
  %.sroa.936.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i8 0, ptr %.sroa.936.0..sroa_idx.i, align 8, !noalias !11872
  br label %bb.ef

bb.ee:                                            ; preds = %bb.eg, %.body.i
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !11873
  unreachable

bb.ef:                                            ; preds = %bb.ci, %bb.ed
  %i.ke = phi ptr [ %i.hf, %bb.ci ], [ %i.hz, %bb.ed ] ; 5 uses
  %i.kf = phi ptr [ %i.he, %bb.ci ], [ %i.ia, %bb.ed ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11872
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet16un_proxify_local0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.kg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.eh unwind label %bb.eg, !noalias !11873

bb.eg:                                            ; preds = %bb.ef
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11872
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtBI_15ShardReplicaSet16un_proxify_local0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.kg) #25
          to label %bb.cl unwind label %bb.ee, !noalias !11873

bb.eh:                                            ; preds = %bb.ef
  %i.ki = load i64, ptr %i.h, align 8, !range !54, !noalias !11872, !noundef !27 ; 3 uses
  %i.kj = icmp eq i64 %i.ki, -2
  br i1 %i.kj, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11872
  br label %bb.en

bb.ej:                                            ; preds = %bb.eh
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.sroa.0.0.copyload.i = load i8, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !11872
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.sroa.2.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 39, i1 false), !noalias !11872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11872
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtBI_15ShardReplicaSet16un_proxify_local0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.kg)
          to label %bb.el unwind label %bb.ek, !noalias !11873

bb.ek:                                            ; preds = %bb.cj, %bb.ej
  %i.kk = phi ptr [ %i.hg, %bb.cj ], [ %i.ke, %bb.ej ]
  %i.kl = phi ptr [ %i.hh, %bb.cj ], [ %i.kf, %bb.ej ]
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.el:                                            ; preds = %bb.ej
  %.not.i24.i = icmp eq i64 %i.ki, -1
  br i1 %.not.i24.i, label %bb.eo, label %bb.ev

bb.em:                                            ; preds = %bb.cn, %bb.cm
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.body115

.body115:                                         ; preds = %bb.cl, %bb.em
  %i.ko = phi ptr [ %i.he, %bb.em ], [ %i.hq, %bb.cl ]
  %eh.lpad-body116 = phi { ptr, i32 } [ %i.kn, %bb.em ], [ %.pn10.pn.i, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10223)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer6driver27revert_proxy_shard_to_local0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ko) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardNtNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19transfer_tasks_pool17TransferTasksPoolEECsgGgPqgSfnMH_7storage.exit unwind label %bb.x

bb.en:                                            ; preds = %bb.ec, %bb.ei
  %i.kp = phi ptr [ %i.hz, %bb.ec ], [ %i.ke, %bb.ei ]
  %.sink.i.ph = phi i8 [ 3, %bb.ec ], [ 4, %bb.ei ]
  store i8 %.sink.i.ph, ptr %i.kp, align 4, !noalias !11872
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10223)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.eo:                                            ; preds = %bb.el, %bb.ck
  %i.kq = phi ptr [ %i.ke, %bb.el ], [ %i.hg, %bb.ck ]
  store i8 1, ptr %i.kq, align 4, !noalias !11872
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10223)
  br label %bb.ce

bb.ep:                                            ; preds = %bb.ce
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardNtNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19transfer_tasks_pool17TransferTasksPoolEECsgGgPqgSfnMH_7storage.exit

bb.eq:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !11882)
  %i.ks = load i64, ptr %i.i, align 8, !range !65, !alias.scope !11883, !noundef !27 ; 2 uses
  %.not.i132 = icmp eq i64 %i.ks, -1
  br i1 %.not.i132, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !range !60, !alias.scope !11884, !noundef !27
  %i.kv = icmp eq i64 %i.ku, -2
  br i1 %i.kv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferECsgGgPqgSfnMH_7storage.exit106, label %bb.es

bb.es:                                            ; preds = %bb.er
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.kt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferECsgGgPqgSfnMH_7storage.exit106 unwind label %bb.et

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferECsgGgPqgSfnMH_7storage.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardNtNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19transfer_tasks_pool17TransferTasksPoolEECsgGgPqgSfnMH_7storage.exit, %bb.g, %bb.et
  %.pn65 = phi { ptr, i32 } [ %i.kw, %bb.et ], [ %.pn62.pn, %bb.g ], [ %.pn62.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardNtNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19transfer_tasks_pool17TransferTasksPoolEECsgGgPqgSfnMH_7storage.exit ]
  store i8 2, ptr %i.p, align 4
  resume { ptr, i32 } %.pn65

bb.et:                                            ; preds = %bb.es, %bb.ch
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferECsgGgPqgSfnMH_7storage.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferECsgGgPqgSfnMH_7storage.exit106: ; preds = %bb.er, %bb.es, %bb.cg, %bb.ch
  %.sroa.6243.1 = phi i8 [ %.sroa.6243.0, %bb.cg ], [ %.sroa.6243.0, %bb.ch ], [ undef, %bb.es ], [ undef, %bb.er ]
  %.sroa.0242.1 = phi i64 [ %.sroa.0242.0, %bb.cg ], [ %.sroa.0242.0, %bb.ch ], [ -1, %bb.es ], [ -1, %bb.er ]
  store i64 %.sroa.0242.1, ptr %0, align 8
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6243.1, ptr %.sroa.6243.0..sroa_idx, align 8
  %.sroa.10245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10245.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10245, i64 39, i1 false)
  br label %common.ret

bb.eu:                                            ; preds = %bb.eq
  %.sroa.8234.0..sroa_idx235 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.8234.0.copyload236 = load i8, ptr %.sroa.8234.0..sroa_idx235, align 8, !alias.scope !11885
  %.sroa.9237.0..sroa_idx238 = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10245, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9237.0..sroa_idx238, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cg

bb.ev:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10223, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.sroa.2.i, i64 39, i1 false)
  store i8 1, ptr %i.ke, align 4, !noalias !11872
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6228, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10223, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10223)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10245, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6228, i64 39, i1 false)
  br label %bb.cg
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14shard_transferNtB6_10Collection22is_prevent_unoptimized0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.2 = alloca [48 x i8], align 8            ; 2 uses
  %i.a = alloca [104 x i8], align 8               ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !35, !noundef !27
  switch i8 %i.d, label %default.unreachable12 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.b
  ]

default.unreachable12:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
end_hunk_0
