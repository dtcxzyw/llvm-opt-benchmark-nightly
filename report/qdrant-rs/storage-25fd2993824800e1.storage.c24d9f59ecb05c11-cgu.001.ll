Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.001?download=true
inline.NumInlined: 14628
inline.NumDeleted: 4678
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14shard_transferNtB6_10Collection20abort_shard_transfer0CsgGgPqgSfnMH_7storage:bb.a

bb.cn:                                            ; preds = %bb.ci
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @925) #29
          to label %.noexc118 unwind label %bb.em

.noexc118:                                        ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.ci
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !47, !noalias !15046
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 4 uses
  switch i8 %.pre.i, label %default.unreachable280 [
    i8 0, label %._crit_edge
    i8 1, label %bb.cr
    i8 2, label %bb.cs
    i8 3, label %bb.cp
  ]

._crit_edge:                                      ; preds = %bb.co
  %.pre271 = load ptr, ptr %i.hr, align 8, !noalias !15046
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15046
  br label %bb.ct

bb.cq:                                            ; preds = %._crit_edge, %.thread.i
  %i.hs = phi ptr [ %i.hg, %.thread.i ], [ %i.hf, %._crit_edge ]
  %i.ht = phi ptr [ %i.hh, %.thread.i ], [ %i.he, %._crit_edge ]
  %i.hu = phi ptr [ %i.hn, %.thread.i ], [ %.pre271, %._crit_edge ]
  %i.hv = phi ptr [ %.sroa.8.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ]
  %i.hw = phi ptr [ %i.ho, %.thread.i ], [ %i.hr, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15046
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 432
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 392
  store ptr %i.hx, ptr %i.hy, align 8, !noalias !15046
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 480
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !15046
  br label %bb.ct

bb.cr:                                            ; preds = %bb.co
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @659) #29
          to label %.noexc.i unwind label %bb.eb, !noalias !15045

.noexc.i:                                         ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.co
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @659) #29
          to label %.noexc14.i unwind label %bb.eb, !noalias !15045

.noexc14.i:                                       ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cq, %bb.cp
  %i.hz = phi ptr [ %i.hs, %bb.cq ], [ %i.hf, %bb.cp ] ; 3 uses
  %i.ia = phi ptr [ %i.ht, %bb.cq ], [ %i.he, %bb.cp ] ; 2 uses
  %i.ib = phi ptr [ %i.hv, %bb.cq ], [ %.phi.trans.insert.i, %bb.cp ] ; 3 uses
  %i.ic = phi ptr [ %i.hw, %bb.cq ], [ %i.hr, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15046
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  invoke fastcc void @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.id, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cv unwind label %bb.cu, !noalias !15045

bb.cu:                                            ; preds = %bb.ct
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15046
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.id) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i unwind label %bb.dw, !noalias !15045

bb.cv:                                            ; preds = %bb.ct
  %i.if = load ptr, ptr %i.f, align 8, !noalias !15046, !noundef !27
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ec, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !15046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15046
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ii = load i8, ptr %i.ih, align 8, !range !47, !noalias !15046, !noundef !27
  %cond.i.i.i108 = icmp eq i8 %i.ii, 3
  br i1 %cond.i.i.i108, label %bb.cx, label %bb.de

bb.cx:                                            ; preds = %bb.cw
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ik = load i8, ptr %i.ij, align 8, !range !47, !noalias !15046, !noundef !27
  %cond.i.i.i.i109 = icmp eq i8 %i.ik, 3
  br i1 %cond.i.i.i.i109, label %bb.cy, label %bb.de

bb.cy:                                            ; preds = %bb.cx
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.il)
          to label %bb.db unwind label %bb.cz, !noalias !15045

bb.cz:                                            ; preds = %bb.cy
  %i.im = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.val2.i.i.i.i.i110 = load ptr, ptr %i.in, align 8, !noalias !15046, !align !31, !noundef !27 ; 2 uses
  %i.io = icmp eq ptr %.val2.i.i.i.i.i110, null
  br i1 %i.io, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ip = getelementptr i8, ptr %1, i64 424
  %.val3.i.i.i.i.i111 = load ptr, ptr %i.ip, align 8, !noalias !15046
  %i.iq = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i110, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !15045, !nonnull !27, !noundef !27
  invoke void %i.ir(ptr noundef %.val3.i.i.i.i.i111)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i unwind label %bb.dd, !noalias !15045, !inline_history !1

bb.db:                                            ; preds = %bb.cy
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.val.i.i.i.i.i112 = load ptr, ptr %i.is, align 8, !noalias !15046, !align !31, !noundef !27 ; 2 uses
  %i.it = icmp eq ptr %.val.i.i.i.i.i112, null
  br i1 %i.it, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.iu = getelementptr i8, ptr %1, i64 424
  %.val1.i.i.i.i.i113 = load ptr, ptr %i.iu, align 8, !noalias !15046
  %i.iv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i112, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !15045, !nonnull !27, !noundef !27
  invoke void %i.iw(ptr noundef %.val1.i.i.i.i.i113)
          to label %bb.de unwind label %bb.dg, !noalias !15045, !inline_history !83

bb.dd:                                            ; preds = %bb.da
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !15045
  unreachable

bb.de:                                            ; preds = %bb.dc, %bb.db, %bb.cx, %bb.cw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.val29.i.i = load ptr, ptr %i.iy, align 8, !noalias !15046, !noundef !27 ; 2 uses
  %i.iz = load i64, ptr %.val29.i.i, align 8, !range !84, !noalias !15045, !noundef !27 ; 3 uses
  %.not.i.i = icmp eq i64 %i.iz, -1
  br i1 %.not.i.i, label %.invoke.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ja = icmp ne i64 %i.iz, 4
  call void @llvm.assume(i1 %i.ja)
  %i.jb = icmp eq i64 %i.iz, 5
  br i1 %i.jb, label %bb.dh, label %.invoke.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i: ; preds = %bb.dx, %bb.dg, %bb.da, %bb.cz, %bb.cu
  %.pn22.i.i = phi { ptr, i32 } [ %i.jc, %bb.dg ], [ %.pn18.pn.pn.i.i, %bb.dx ], [ %i.im, %bb.cz ], [ %i.ie, %bb.cu ], [ %i.im, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15046
  store i8 2, ptr %i.ib, align 8, !noalias !15046
  br label %.body.i

bb.dg:                                            ; preds = %.invoke.i.i, %bb.dc
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i

bb.dh:                                            ; preds = %bb.df
  %i.jd = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !15046 ; 2 uses
  %i.je = icmp ult i64 %i.jd, 6
  call void @llvm.assume(i1 %i.je)
  %i.jf = icmp samesign ugt i64 %i.jd, 3
  br i1 %i.jf, label %bb.dj, label %bb.dm

bb.di:                                            ; preds = %bb.dj
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15046
  br label %bb.dx

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15046
  store ptr @622, ptr %i.e, align 8, !noalias !15046
  %i.jh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 47, ptr %i.jh, align 8, !noalias !15046
  %i.ji = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @622, ptr %i.ji, align 8, !noalias !15046
  %i.jj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 47, ptr %i.jj, align 8, !noalias !15046
  %i.jk = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @660, ptr %i.jk, align 8, !noalias !15046
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsgGgPqgSfnMH_7storage(ptr noundef nonnull @648, ptr noundef nonnull inttoptr (i64 119 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.dk unwind label %bb.di, !noalias !15045

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15046
  %.val28.pre.i.i = load ptr, ptr %i.iy, align 8, !noalias !15046
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dy
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15046
  br label %bb.dx

bb.dm:                                            ; preds = %bb.dk, %bb.dh
  %.val28.i.i = phi ptr [ %.val29.i.i, %bb.dh ], [ %.val28.pre.i.i, %bb.dk ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15046
  call void @llvm.experimental.noalias.scope.decl(metadata !15047)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.d, ptr noundef nonnull align 8 dereferenceable(720) %.val28.i.i, i64 720, i1 false), !alias.scope !15048, !noalias !15045
  store i64 -1, ptr %.val28.i.i, align 8, !alias.scope !15049, !noalias !15045
  %i.jm = load i64, ptr %i.d, align 8, !range !84, !noalias !15046, !noundef !27 ; 3 uses
  %.not13.i.i = icmp eq i64 %i.jm, -1
  br i1 %.not13.i.i, label %.thread.i.i, label %3

3:                                                ; preds = %bb.dm
  %4 = icmp ne i64 %i.jm, 4
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.jm, 5
  br i1 %5, label %bb.dn, label %bb.dy

bb.dn:                                            ; preds = %3
  %i.jn = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %i.a, ptr noundef nonnull align 8 dereferenceable(608) %i.jn, i64 608, i1 false), !noalias !15045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15046
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtB2_15QueueProxyShard27forget_updates_and_finalize(ptr noalias nofree noundef nonnull sret([536 x i8]) align 8 captures(none) dereferenceable(536) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(608) %i.a)
          to label %bb.dp unwind label %bb.do, !noalias !15045

bb.do:                                            ; preds = %bb.dn
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15046
  br label %bb.dx

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.c, ptr noundef nonnull align 8 dereferenceable(400) %i.b, i64 400, i1 false), !noalias !15046
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(136) %i.jp)
          to label %bb.dr unwind label %bb.dq, !noalias !15045

bb.dq:                                            ; preds = %bb.dp
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15046
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard10LocalShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %i.c) #28
          to label %bb.dv unwind label %bb.dw, !noalias !15045

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15046
  %.val27.i.i = load ptr, ptr %i.iy, align 8, !noalias !15046, !noundef !27 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15050)
  %i.jr = load i64, ptr %.val27.i.i, align 8, !range !84, !alias.scope !15051, !noalias !15045, !noundef !27
  %i.js = icmp eq i64 %i.jr, -1
  br i1 %i.js, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val27.i.i)
          to label %bb.du unwind label %bb.dt, !noalias !15052

bb.dt:                                            ; preds = %bb.ds
  %i.jt = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %.val27.i.i, align 8, !alias.scope !15053, !noalias !15045
  %.sroa.643.0..val27.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.643.0..val27.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(400) %i.c, i64 400, i1 false), !noalias !15045
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds, %bb.dr
  store i64 2, ptr %.val27.i.i, align 8, !alias.scope !15053, !noalias !15045
  %.sroa.643.0..val27.sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %.val27.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.643.0..val27.sroa_idx44.i.i, ptr noundef nonnull align 8 dereferenceable(400) %i.c, i64 400, i1 false), !noalias !15045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15046
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.du, %bb.df, %bb.de
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ed unwind label %bb.dg, !noalias !15045

bb.dv:                                            ; preds = %bb.dt, %bb.dq
  %.pn1850.i.i = phi { ptr, i32 } [ %i.jq, %bb.dq ], [ %i.jt, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15046
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dx, %bb.dq, %bb.cu
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !15045
  unreachable

bb.dx:                                            ; preds = %bb.dz, %bb.dv, %bb.do, %bb.dl, %bb.di
  %.pn18.pn.pn.i.i = phi { ptr, i32 } [ %i.jg, %bb.di ], [ %i.jv, %bb.dz ], [ %i.jl, %bb.dl ], [ %.pn1850.i.i, %bb.dv ], [ %i.jo, %bb.do ]
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit36.i.i unwind label %bb.dw, !noalias !15045

.thread.i.i:                                      ; preds = %bb.dy, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15046
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @661) #24
          to label %bb.ea unwind label %bb.dz, !noalias !15045

bb.dy:                                            ; preds = %3
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(720) %i.d)
          to label %.thread.i.i unwind label %bb.dl, !noalias !15045

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
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtBI_15ShardReplicaSet24revert_queue_proxy_local0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.jz) #28
          to label %bb.cl unwind label %bb.ee, !noalias !15045

bb.ec:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15046
  store i8 3, ptr %i.ib, align 8, !noalias !15046
  br label %bb.en

bb.ed:                                            ; preds = %.invoke.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15046
  store i8 1, ptr %i.ib, align 8, !noalias !15046
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !15044, !nonnull !27, !align !31, !noundef !27
  %.val.i = load ptr, ptr %i.kb, align 8, !noalias !15045, !nonnull !27, !noundef !27
  %i.kc = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  store ptr %i.kc, ptr %i.ic, align 8, !noalias !15044
  %.sroa.936.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i8 0, ptr %.sroa.936.0..sroa_idx.i, align 8, !noalias !15044
  br label %bb.ef

bb.ee:                                            ; preds = %bb.eg, %.body.i
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !15045
  unreachable

bb.ef:                                            ; preds = %bb.ci, %bb.ed
  %i.ke = phi ptr [ %i.hf, %bb.ci ], [ %i.hz, %bb.ed ] ; 5 uses
  %i.kf = phi ptr [ %i.he, %bb.ci ], [ %i.ia, %bb.ed ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15044
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet16un_proxify_local0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.kg, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.eh unwind label %bb.eg, !noalias !15045

bb.eg:                                            ; preds = %bb.ef
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15044
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtBI_15ShardReplicaSet16un_proxify_local0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.kg) #28
          to label %bb.cl unwind label %bb.ee, !noalias !15045

bb.eh:                                            ; preds = %bb.ef
  %i.ki = load i64, ptr %i.h, align 8, !range !100, !noalias !15044, !noundef !27 ; 3 uses
  %i.kj = icmp eq i64 %i.ki, -2
  br i1 %i.kj, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15044
  br label %bb.en

bb.ej:                                            ; preds = %bb.eh
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.sroa.0.0.copyload.i = load i8, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !15044
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.sroa.2.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 39, i1 false), !noalias !15044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15044
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtBI_15ShardReplicaSet16un_proxify_local0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.kg)
          to label %bb.el unwind label %bb.ek, !noalias !15045

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
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer6driver27revert_proxy_shard_to_local0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ko) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardNtNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19transfer_tasks_pool17TransferTasksPoolEECsgGgPqgSfnMH_7storage.exit unwind label %bb.x

bb.en:                                            ; preds = %bb.ec, %bb.ei
  %i.kp = phi ptr [ %i.hz, %bb.ec ], [ %i.ke, %bb.ei ]
  %.sink.i.ph = phi i8 [ 3, %bb.ec ], [ 4, %bb.ei ]
  store i8 %.sink.i.ph, ptr %i.kp, align 4, !noalias !15044
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10223)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.eo:                                            ; preds = %bb.el, %bb.ck
  %i.kq = phi ptr [ %i.ke, %bb.el ], [ %i.hg, %bb.ck ]
  store i8 1, ptr %i.kq, align 4, !noalias !15044
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10223)
  br label %bb.ce

bb.ep:                                            ; preds = %bb.ce
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardNtNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19transfer_tasks_pool17TransferTasksPoolEECsgGgPqgSfnMH_7storage.exit

bb.eq:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !15054)
  %i.ks = load i64, ptr %i.i, align 8, !range !48, !alias.scope !15055, !noundef !27 ; 2 uses
  %.not.i132 = icmp eq i64 %i.ks, -1
  br i1 %.not.i132, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !range !49, !alias.scope !15056, !noundef !27
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
  %.sroa.8234.0.copyload236 = load i8, ptr %.sroa.8234.0..sroa_idx235, align 8, !alias.scope !15057
  %.sroa.9237.0..sroa_idx238 = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10245, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.9237.0..sroa_idx238, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cg

bb.ev:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.10223, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.3.sroa.2.i, i64 39, i1 false)
  store i8 1, ptr %i.ke, align 4, !noalias !15044
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
  %i.d = load i8, ptr %i.c, align 8, !range !47, !noundef !27
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
begin_hunk_1_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet13proxify_local0CsgGgPqgSfnMH_7storage:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 2 uses
  invoke fastcc void @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noundef nonnull align 8 %i.aw, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.aw) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit103 unwind label %bb.ap

bb.i:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.af, align 8, !noundef !27
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.ba, %bb.j
  %storemerge = phi i8 [ 1, %bb.ba ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.ah, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.bb = load i8, ptr %i.ba, align 8, !range !47, !noundef !27
  %cond.i = icmp eq i8 %i.bb, 3
  br i1 %cond.i, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.bd = load i8, ptr %i.bc, align 8, !range !47, !noundef !27
  %cond.i.i = icmp eq i8 %i.bd, 3
  br i1 %cond.i.i, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 832
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.be)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 840
  %.val2.i.i.i = load ptr, ptr %i.bg, align 8, !align !31, !noundef !27 ; 2 uses
  %i.bh = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit103, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr i8, ptr %1, i64 848
  %.val3.i.i.i = load ptr, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !27, !noundef !27
  invoke void %i.bk(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit103 unwind label %bb.r, !inline_history !1

bb.p:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 840
  %.val.i.i.i = load ptr, ptr %i.bl, align 8, !align !31, !noundef !27 ; 2 uses
  %i.bm = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bm, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr i8, ptr %1, i64 848
  %.val1.i.i.i = load ptr, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !27, !noundef !27
  invoke void %i.bp(ptr noundef %.val1.i.i.i)
          to label %bb.s unwind label %bb.az, !inline_history !83

bb.r:                                             ; preds = %bb.o
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.k, %bb.l, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %.val96 = load ptr, ptr %i.br, align 8, !noundef !27 ; 5 uses
  %i.bs = load i64, ptr %.val96, align 8, !range !84, !noundef !27 ; 4 uses
  %.not = icmp eq i64 %i.bs, -1
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = icmp ne i64 %i.bs, 4
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nsw i64 %i.bs, -2
  %.inv = icmp samesign ult i64 %i.bs, 2
  %i.bv = select i1 %.inv, i64 2, i64 %i.bu
  switch i64 %i.bv, label %bb.b [
    i64 0, label %bb.ah
    i64 1, label %bb.bg
    i64 2, label %bb.af
    i64 3, label %bb.bs
    i64 4, label %bb.by
  ]

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !27, !align !31, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.by = invoke noundef i64 @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2_15ShardReplicaSet12this_peer_id(ptr noundef nonnull align 8 %i.bx)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.y, %bb.w
  %.pn27.pn = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.bz, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1472
  store i64 %i.by, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.ca, ptr %i.k, align 8
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5189.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.cb, align 8
  %.sroa.5191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5191.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @619, ptr noundef nonnull %i.k)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.v

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false), !alias.scope !17587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.v
  %.pn32 = phi { ptr, i32 } [ %i.cd, %bb.ab ], [ %.pn27.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.04.0.copyload = load i64, ptr %i.o, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.cd, %bb.bx, %bb.br, %bb.bl, %bb.ac
  %.sroa.04.0 = phi i64 [ %.sroa.04.0.copyload7, %bb.bl ], [ %.sroa.04.0.copyload, %bb.ac ], [ %.sroa.04.0.copyload8, %bb.br ], [ %.sroa.04.0.copyload9, %bb.bx ], [ %.sroa.04.0.copyload10, %bb.cd ], [ -1, %bb.af ]
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.az

bb.ae:                                            ; preds = %bb.aj, %bb.an, %bb.bc, %bb.cb, %bb.bv, %bb.bp, %bb.bj, %bb.be, %bb.ag, %bb.aa
  %.pn80.pn.pn.pn = phi { ptr, i32 } [ %.pn32, %bb.aa ], [ %i.du, %bb.be ], [ %i.cj, %bb.ag ], [ %.pn65, %bb.bj ], [ %.pn57, %bb.bp ], [ %.pn48, %bb.bv ], [ %.pn40, %bb.cb ], [ %.pn80210, %bb.bc ], [ %i.db, %bb.an ], [ %i.cw, %bb.aj ]
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit103 unwind label %bb.ap

bb.af:                                            ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %.val96, i64 520 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !27
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !27
  %i.ci = icmp eq i64 %i.cf, %i.ch
  br i1 %i.ci, label %bb.ad, label %bb.bm

bb.ag:                                            ; preds = %bb.bd
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17588)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.j, ptr noundef nonnull align 8 dereferenceable(720) %.val96, i64 720, i1 false), !alias.scope !17589
  store i64 -1, ptr %.val96, align 8, !alias.scope !17590
  %i.ck = load i64, ptr %i.j, align 8, !range !84, !noundef !27 ; 3 uses
  %.not67 = icmp eq i64 %i.ck, -1
  br i1 %.not67, label %.thread, label %3

3:                                                ; preds = %bb.ah
  %4 = icmp ne i64 %i.ck, 4
  tail call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.ck, 2
  br i1 %5, label %bb.ai, label %bb.bd

bb.ai:                                            ; preds = %3
  %i.cl = getelementptr inbounds nuw i8, ptr %.val96, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.i, ptr noundef nonnull align 8 dereferenceable(400) %i.cl, i64 400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !27, !align !31, !noundef !27
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1472
  %i.cp = load i32, ptr %i.co, align 8, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 915 ; 2 uses
  store i8 0, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %i.cr, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 914 ; 2 uses
  store i8 0, ptr %i.cs, align 2
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull align 8 dereferenceable(160) %i.ct, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 913 ; 2 uses
  store i8 0, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %i.cv, i64 104, i1 false)
  invoke void @_RNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtB4_17ForwardProxyShard3new(ptr noalias nofree noundef nonnull sret([720 x i8]) align 8 captures(none) dereferenceable(720) %i.a, i32 noundef %i.cp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(400) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.f)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cx = load i64, ptr %i.a, align 8, !range !35, !noundef !27
  %i.cy = icmp eq i64 %i.cx, 2
  br i1 %i.cy, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val94 = load ptr, ptr %i.br, align 8, !noundef !27 ; 4 uses
  %i.cz = load i64, ptr %.val94, align 8, !range !84, !alias.scope !17591, !noundef !27
  %i.da = icmp eq i64 %i.cz, -1
  br i1 %i.da, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val94)
          to label %bb.ao unwind label %bb.an, !noalias !17592

bb.an:                                            ; preds = %bb.am
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %.val94, ptr noundef nonnull align 8 dereferenceable(720) %i.a, i64 720, i1 false)
  br label %bb.ae

bb.ao:                                            ; preds = %bb.am, %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %.val94, ptr noundef nonnull align 8 dereferenceable(720) %i.a, i64 720, i1 false)
  br label %bb.ay

bb.ap:                                            ; preds = %bb.co, %bb.ae, %bb.cq, %bb.cp, %bb.ar, %bb.bb, %bb.h
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.aq:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.dd, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.d, ptr noundef nonnull align 8 dereferenceable(400) %i.de, i64 400, i1 false)
  %i.df = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dg = icmp ult i64 %i.df, 6
  call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp samesign ugt i64 %i.df, 1
  br i1 %i.dh, label %bb.as, label %bb.au

bb.ar:                                            ; preds = %bb.as
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard10LocalShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %i.d) #28
          to label %bb.bb unwind label %bb.ap

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3k_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.5195.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @622, ptr %i.b, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 47, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @622, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 47, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @621, ptr %i.dm, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsgGgPqgSfnMH_7storage(ptr noundef nonnull @620, ptr noundef nonnull %i.c, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.at unwind label %bb.ar

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  %.val93 = load ptr, ptr %i.br, align 8, !noundef !27 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17593)
  %i.dn = load i64, ptr %.val93, align 8, !range !84, !alias.scope !17594, !noundef !27
  %i.do = icmp eq i64 %i.dn, -1
  br i1 %i.do, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val93)
          to label %bb.ax unwind label %bb.aw, !noalias !17593

bb.aw:                                            ; preds = %bb.av
  %i.dp = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %.val93, align 8, !alias.scope !17595
  %.sroa.6198.0..val93.sroa_idx = getelementptr inbounds nuw i8, ptr %.val93, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.6198.0..val93.sroa_idx, ptr noundef nonnull align 8 dereferenceable(400) %i.de, i64 400, i1 false)
  br label %bb.bb

bb.ax:                                            ; preds = %bb.av, %bb.au
  store i64 2, ptr %.val93, align 8, !alias.scope !17595
  %.sroa.6198.0..val93.sroa_idx199 = getelementptr inbounds nuw i8, ptr %.val93, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.6198.0..val93.sroa_idx199, ptr noundef nonnull align 8 dereferenceable(400) %i.de, i64 400, i1 false)
  %.sroa.017.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.418.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ao, %bb.ax
  %.sroa.04.1 = phi i64 [ %.sroa.017.0.copyload, %bb.ax ], [ -1, %bb.ao ]
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit114 unwind label %bb.az

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit103: ; preds = %bb.h, %bb.n, %bb.o, %bb.ae, %bb.az
  %.pn85 = phi { ptr, i32 } [ %i.dt, %bb.az ], [ %.pn80.pn.pn.pn, %bb.ae ], [ %i.bf, %bb.n ], [ %i.ax, %bb.h ], [ %i.bf, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 913
  %i.dr = load i8, ptr %i.dq, align 1, !range !53, !noundef !27
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.cn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECsgGgPqgSfnMH_7storage.exit166

bb.az:                                            ; preds = %bb.q, %bb.ay, %bb.ad
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit103

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit114: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i8 0, ptr %i.cu, align 1
  store i8 0, ptr %i.cs, align 2
  store i8 0, ptr %i.cq, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.cm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit114
  %.sroa.04.2 = phi i64 [ %.sroa.04.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit114 ], [ %.sroa.04.0, %bb.cm ]
  store i64 %.sroa.04.2, ptr %0, align 8
  %.sroa.9.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, i64 40, i1 false)
  br label %common.ret

bb.bb:                                            ; preds = %bb.aw, %bb.ar
  %.pn80210 = phi { ptr, i32 } [ %i.di, %bb.ar ], [ %i.dp, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #28
          to label %bb.bc unwind label %bb.ap

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ae

.thread:                                          ; preds = %bb.ah, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @623) #24
          to label %bb.bf unwind label %bb.be

bb.bd:                                            ; preds = %3
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(720) %i.j)
          to label %.thread unwind label %bb.ag

bb.be:                                            ; preds = %.thread
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.bf:                                            ; preds = %.thread
  unreachable

bb.bg:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !27, !align !31, !noundef !27
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.dx, ptr %i.t, align 8
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5181.0..sroa_idx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.dy, ptr %i.dz, align 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5183.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @624, ptr noundef nonnull %i.t)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.u, i64 24, i1 false), !alias.scope !17596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %bb.bl unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bk, %bb.bh
  %.pn65 = phi { ptr, i32 } [ %i.eb, %bb.bk ], [ %i.ea, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ae

bb.bk:                                            ; preds = %bb.bi
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.sroa.04.0.copyload7 = load i64, ptr %i.w, align 8
  %.sroa.9.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx13, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ad

bb.bm:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !27, !align !31, !noundef !27
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ee, ptr %i.ab, align 8
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5171.0..sroa_idx, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.cg, ptr %i.ef, align 8
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5173.0..sroa_idx, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ce, ptr %i.eg, align 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5175.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noundef nonnull @625, ptr noundef nonnull %i.ab)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !alias.scope !17597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ad)
          to label %bb.br unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bq, %bb.bn
  %.pn57 = phi { ptr, i32 } [ %i.ei, %bb.bq ], [ %i.eh, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ae

bb.bq:                                            ; preds = %bb.bo
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.br:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.sroa.04.0.copyload8 = load i64, ptr %i.ae, align 8
  %.sroa.9.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx14, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ad

bb.bs:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !27, !align !31, !noundef !27
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.el, ptr %i.x, align 8
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5177.0..sroa_idx, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.em, ptr %i.en, align 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5179.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @626, ptr noundef nonnull %i.x)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.y, i64 24, i1 false), !alias.scope !17598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %bb.bx unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bw, %bb.bt
  %.pn48 = phi { ptr, i32 } [ %i.ep, %bb.bw ], [ %i.eo, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ae

bb.bw:                                            ; preds = %bb.bu
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bx:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.sroa.04.0.copyload9 = load i64, ptr %i.aa, align 8
  %.sroa.9.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx15, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ad

bb.by:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !27, !align !31, !noundef !27
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.es, ptr %i.p, align 8
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5185.0..sroa_idx, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.et, ptr %i.eu, align 8
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5187.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @627, ptr noundef nonnull %i.p)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.q, i64 24, i1 false), !alias.scope !17599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
end_hunk_1
begin_hunk_2_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set14shard_transferNtB6_15ShardReplicaSet30queue_proxy_into_forward_proxy0CsgGgPqgSfnMH_7storage:bb.a
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ad) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit51 unwind label %bb.m

bb.p:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %i.o, align 8, !noundef !27
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aj = load i8, ptr %i.ai, align 8, !range !47, !noundef !27
  %cond.i = icmp eq i8 %i.aj, 3
  br i1 %cond.i, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.al = load i8, ptr %i.ak, align 8, !range !47, !noundef !27
  %cond.i.i = icmp eq i8 %i.al, 3
  br i1 %cond.i.i, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.am)
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val2.i.i.i = load ptr, ptr %i.ao, align 8, !align !31, !noundef !27 ; 2 uses
  %i.ap = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit51, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = getelementptr i8, ptr %1, i64 80
  %.val3.i.i.i = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !27, !noundef !27
  invoke void %i.as(ptr noundef %.val3.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit51 unwind label %bb.y, !inline_history !1

bb.w:                                             ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i.i = load ptr, ptr %i.at, align 8, !align !31, !noundef !27 ; 2 uses
  %i.au = icmp eq ptr %.val.i.i.i, null
  br i1 %i.au, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = getelementptr i8, ptr %1, i64 80
  %.val1.i.i.i = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !27, !noundef !27
  invoke void %i.ax(ptr noundef %.val1.i.i.i)
          to label %bb.z unwind label %bb.bj, !inline_history !83

bb.y:                                             ; preds = %bb.v
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.z:                                             ; preds = %bb.x, %bb.r, %bb.s, %bb.w
  %i.az = getelementptr i8, ptr %1, i64 24
  %.val48 = load ptr, ptr %i.az, align 8, !noundef !27 ; 2 uses
  %i.ba = load i64, ptr %.val48, align 8, !range !84, !noundef !27 ; 3 uses
  %.not11 = icmp eq i64 %i.ba, -1
  br i1 %.not11, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bb = icmp ne i64 %i.ba, 4
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp eq i64 %i.ba, 5
  br i1 %i.bc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %.val48, i64 8
  store ptr %i.bd, ptr %i.ad, align 8
  %.sroa.992.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8864
  store i8 0, ptr %.sroa.992.0..sroa_idx, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.bp
  %.sroa.0110.1 = phi i64 [ %i.bl, %bb.bp ], [ -1, %bb.aa ], [ -1, %bb.z ]
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.bj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.az, %bb.ar, %bb.af, %bb.ae, %bb.al, %bb.ao, %bb.bn
  %.pn31.pn = phi { ptr, i32 } [ %i.bt, %bb.al ], [ %i.bh, %bb.ae ], [ %i.dd, %bb.bn ], [ %i.by, %bb.ao ], [ %i.bh, %bb.af ], [ %.pn27.pn, %bb.az ], [ %i.cd, %bb.ar ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit51 unwind label %bb.m

bb.ad:                                            ; preds = %bb.a, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtB4_15QueueProxyShard27transfer_all_missed_updates0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n, ptr noundef nonnull align 8 %i.bg, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8864
  %i.bj = load i8, ptr %i.bi, align 8, !range !47, !noundef !27
  %cond.i52 = icmp eq i8 %i.bj, 3
  br i1 %cond.i52, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit

bb.af:                                            ; preds = %bb.ae
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBI_5Inner27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.bk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit unwind label %bb.m

bb.ag:                                            ; preds = %bb.ad
  %i.bl = load i64, ptr %i.n, align 8, !range !100, !noundef !27 ; 3 uses
  %i.bm = icmp eq i64 %i.bl, -2
  br i1 %i.bm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ai:                                            ; preds = %bb.ag
  %.sroa.395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.395, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.395.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8864
  %i.bo = load i8, ptr %i.bn, align 8, !range !47, !noundef !27
  %cond.i54 = icmp eq i8 %i.bo, 3
  br i1 %cond.i54, label %bb.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit56

bb.aj:                                            ; preds = %bb.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBI_5Inner27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.bp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit56 unwind label %bb.bn

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit56: ; preds = %bb.ai, %bb.aj
  %.not.i57 = icmp eq i64 %i.bl, -1
  br i1 %.not.i57, label %bb.ak, label %bb.bp

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit56
  %i.bq = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 6
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = icmp samesign ugt i64 %i.bq, 4
  br i1 %i.bs, label %bb.am, label %bb.ap

bb.al:                                            ; preds = %bb.am
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @622, ptr %i.m, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 47, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @622, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 47, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @664, ptr %i.bx, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsgGgPqgSfnMH_7storage(ptr noundef nonnull @663, ptr noundef nonnull inttoptr (i64 151 to ptr), i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %bb.an unwind label %bb.al

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.bm
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit

bb.ap:                                            ; preds = %bb.ak, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %.val47 = load ptr, ptr %i.ca, align 8, !noundef !27 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18268)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.l, ptr noundef nonnull align 8 dereferenceable(720) %.val47, i64 720, i1 false), !alias.scope !18269
  store i64 -1, ptr %.val47, align 8, !alias.scope !18270
  %i.cb = load i64, ptr %i.l, align 8, !range !84, !noundef !27 ; 3 uses
  %.not17 = icmp eq i64 %i.cb, -1
  br i1 %.not17, label %.thread, label %3

3:                                                ; preds = %bb.ap
  %4 = icmp ne i64 %i.cb, 4
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.cb, 5
  br i1 %5, label %bb.aq, label %bb.bm

bb.aq:                                            ; preds = %3
  %i.cc = getelementptr inbounds nuw i8, ptr %.val47, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %i.h, ptr noundef nonnull align 8 dereferenceable(608) %i.cc, i64 608, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtB2_15QueueProxyShard27forget_updates_and_finalize(ptr noalias nofree noundef nonnull sret([536 x i8]) align 8 captures(none) dereferenceable(536) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(608) %i.h)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.k, ptr noundef nonnull align 8 dereferenceable(400) %i.i, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.j, ptr noundef nonnull align 8 dereferenceable(136) %i.ce, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !27, !align !31, !noundef !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1472
  %i.ci = load i32, ptr %i.ch, align 8, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -3, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 -2, ptr %i.f, align 8
  invoke void @_RNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtB4_17ForwardProxyShard3new(ptr noalias nofree noundef nonnull sret([720 x i8]) align 8 captures(none) dereferenceable(720) %i.a, i32 noundef %i.ci, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(400) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.f)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ck = load i64, ptr %i.a, align 8, !range !35, !noundef !27
  %i.cl = icmp eq i64 %i.ck, 2
  br i1 %i.cl, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val46 = load ptr, ptr %i.ca, align 8, !noundef !27 ; 4 uses
  %i.cm = load i64, ptr %.val46, align 8, !range !84, !alias.scope !18271, !noundef !27
  %i.cn = icmp eq i64 %i.cm, -1
  br i1 %i.cn, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val46)
          to label %bb.ay unwind label %bb.ax, !noalias !18272

bb.ax:                                            ; preds = %bb.aw
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %.val46, ptr noundef nonnull align 8 dereferenceable(720) %i.a, i64 720, i1 false)
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %.val46, ptr noundef nonnull align 8 dereferenceable(720) %i.a, i64 720, i1 false)
  br label %bb.bi

bb.az:                                            ; preds = %bb.bl, %bb.ax, %bb.at
  %.pn27.pn = phi { ptr, i32 } [ %.pn27128, %bb.bl ], [ %i.co, %bb.ax ], [ %i.cj, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit

bb.ba:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.cp, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.d, ptr noundef nonnull align 8 dereferenceable(400) %i.cq, i64 400, i1 false)
  %i.cr = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 6
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp samesign ugt i64 %i.cr, 1
  br i1 %i.ct, label %bb.bc, label %bb.be

bb.bb:                                            ; preds = %bb.bc
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard10LocalShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %i.d) #28
          to label %bb.bk unwind label %bb.m

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs3k_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.5103.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @622, ptr %i.b, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 47, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @622, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 47, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @666, ptr %i.cy, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsgGgPqgSfnMH_7storage(ptr noundef nonnull @665, ptr noundef nonnull %i.c, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.val45 = load ptr, ptr %i.ca, align 8, !noundef !27 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18273)
  %i.cz = load i64, ptr %.val45, align 8, !range !84, !alias.scope !18274, !noundef !27
  %i.da = icmp eq i64 %i.cz, -1
  br i1 %i.da, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val45)
          to label %bb.bh unwind label %bb.bg, !noalias !18273

bb.bg:                                            ; preds = %bb.bf
  %i.db = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %.val45, align 8, !alias.scope !18275
  %.sroa.6106.0..val45.sroa_idx = getelementptr inbounds nuw i8, ptr %.val45, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.6106.0..val45.sroa_idx, ptr noundef nonnull align 8 dereferenceable(400) %i.cq, i64 400, i1 false)
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf, %bb.be
  store i64 2, ptr %.val45, align 8, !alias.scope !18275
  %.sroa.6106.0..val45.sroa_idx107 = getelementptr inbounds nuw i8, ptr %.val45, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.6106.0..val45.sroa_idx107, ptr noundef nonnull align 8 dereferenceable(400) %i.cq, i64 400, i1 false)
  %.sroa.0114.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6112, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ay, %bb.bh
  %.sroa.0110.2 = phi i64 [ %.sroa.0114.0.copyload, %bb.bh ], [ -1, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit unwind label %bb.bj

bb.bj:                                            ; preds = %bb.i, %bb.x, %bb.bi, %bb.ac
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit51

bb.bk:                                            ; preds = %bb.bg, %bb.bb
  %.pn27128 = phi { ptr, i32 } [ %i.cu, %bb.bb ], [ %i.db, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #28
          to label %bb.bl unwind label %bb.m

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.az

.thread:                                          ; preds = %bb.ap, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @667) #24
          to label %bb.bo unwind label %bb.bn

bb.bm:                                            ; preds = %3
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(720) %i.l)
          to label %.thread unwind label %bb.ao

bb.bn:                                            ; preds = %bb.aj, %.thread
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit

bb.bo:                                            ; preds = %.thread
  unreachable

bb.bp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtBG_15QueueProxyShard27transfer_all_missed_updates0ECsgGgPqgSfnMH_7storage.exit56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6112, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.395, i64 40, i1 false)
  br label %bb.ac
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB6_15ShardReplicaSet12update_local0CsgGgPqgSfnMH_7storage(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 20 uses
  %.sroa.3.sroa.3.i = alloca [31 x i8], align 1   ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [120 x i8], align 8               ; 5 uses
  %.sroa.368.sroa.3.i = alloca [31 x i8], align 1 ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 23 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [256 x i8], align 8               ; 5 uses
  %i.n = alloca [288 x i8], align 8               ; 5 uses
  %.sroa.0174.i.i = alloca [320 x i8], align 8    ; 8 uses
  %.sroa.3170.i.i = alloca [248 x i8], align 8    ; 9 uses
  %.sroa.3166.i.i = alloca [24 x i8], align 8     ; 8 uses
  %.sroa.5167.i.i = alloca [224 x i8], align 8    ; 8 uses
  %i.o = alloca [256 x i8], align 8               ; 8 uses
  %i.p = alloca [304 x i8], align 8               ; 11 uses
  %i.q = alloca [16 x i8], align 8                ; 11 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.3141.i.i = alloca [64 x i8], align 8     ; 7 uses
  %i.s = alloca [72 x i8], align 8                ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 14 uses
  %.sroa.3.i.i = alloca [40 x i8], align 8        ; 7 uses
  %i.u = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.694.i = alloca [40 x i8], align 8        ; 8 uses
  %i.v = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.078.i = alloca [320 x i8], align 8       ; 7 uses
  %.sroa.3.i100 = alloca [40 x i8], align 8       ; 6 uses
  %i.w = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.13.sroa.6.i = alloca [40 x i8], align 8  ; 8 uses
  %.sroa.0.i = alloca [320 x i8], align 8         ; 5 uses
  %i.x = alloca [56 x i8], align 8                ; 16 uses
  %i.y = alloca [56 x i8], align 8                ; 8 uses
  %i.z = alloca [56 x i8], align 8                ; 8 uses
  %i.aa = alloca [56 x i8], align 8               ; 8 uses
  %i.ab = alloca [56 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 10 uses
  %i.ae = alloca [40 x i8], align 8               ; 9 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [48 x i8], align 8               ; 12 uses
  %i.ah = alloca [48 x i8], align 8               ; 12 uses
  %.sroa.4.i.i = alloca [40 x i8], align 8        ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.4.i = alloca [40 x i8], align 8          ; 8 uses
  %.sroa.828.i = alloca [40 x i8], align 8        ; 8 uses
  %.sroa.3249.sroa.3 = alloca [40 x i8], align 8  ; 5 uses
  %.sroa.3247.sroa.3 = alloca [40 x i8], align 8  ; 2 uses
  %i.ak = alloca [56 x i8], align 8               ; 8 uses
  %i.al = alloca [32 x i8], align 8               ; 5 uses
  %i.am = alloca [288 x i8], align 8              ; 5 uses
  %.sroa.9237.sroa.6 = alloca [40 x i8], align 8  ; 3 uses
  %.sroa.6211 = alloca [40 x i8], align 8         ; 3 uses
  %.sroa.12206 = alloca [40 x i8], align 8        ; 7 uses
  %.sroa.0192 = alloca [320 x i8], align 8        ; 5 uses
  %i.an = alloca [56 x i8], align 8               ; 13 uses
  %.sroa.3 = alloca [40 x i8], align 8            ; 3 uses
  %.sroa.8183 = alloca [40 x i8], align 8         ; 10 uses
  %i.ao = alloca [40 x i8], align 8               ; 9 uses
  %i.ap = alloca [16 x i8], align 8               ; 6 uses
  %i.aq = alloca [40 x i8], align 8               ; 9 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 730 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 2, !range !66, !noundef !27
  switch i8 %i.aw, label %default.unreachable349 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.bb
    i8 5, label %bb.gv
    i8 6, label %bb.pe
    i8 7, label %bb.ra
  ]

default.unreachable349:                           ; preds = %bb.pe, %bb.id, %bb.ia, %bb.he, %bb.gz, %bb.gv, %bb.eh, %bb.dq, %bb.cz, %bb.cg, %bb.br, %bb.bo, %bb.bj, %bb.bb, %bb.a
  unreachable

default.unreachable:                              ; preds = %thread-pre-split
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 737
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 735
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i32 0, ptr %i.az, align 1
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !27, !align !31, !noundef !27 ; 2 uses
  store ptr %i.bc, ptr %i.ba, align 8
  store i8 1, ptr %i.ax, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.bd, ptr noundef nonnull align 8 dereferenceable(288) %1, i64 288, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 731
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 729
  %i.bg = load i8, ptr %i.bf, align 1, !range !41, !noundef !27
  store i8 %i.bg, ptr %i.be, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.bl = load i32, ptr %i.bk, align 8, !range !125, !noundef !27
  store i64 %i.bj, ptr %i.bh, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 648
  store i32 %i.bl, ptr %i.bm, align 8
  store i8 1, ptr %i.ay, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 732
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.br = load i8, ptr %i.bq, align 8, !range !53, !noundef !27
  store i8 %i.br, ptr %i.bp, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 432
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 744
  store ptr %i.bs, ptr %i.bt, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 832
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @668) #29
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @668) #29
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %i.bv = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.bu, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.bu) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit151 unwind label %bb.at

bb.g:                                             ; preds = %bb.e
  %i.bx = extractvalue { ptr, ptr } %i.bv, 0      ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.h, label %bb.i

common.ret:                                       ; preds = %bb.rm, %bb.rd, %bb.qu, %bb.ov, %bb.gl, %bb.h
  %.sink = phi i8 [ 1, %bb.rm ], [ 7, %bb.rd ], [ 6, %bb.qu ], [ 5, %bb.ov ], [ 4, %bb.gl ], [ 3, %bb.h ]
  store i8 %.sink, ptr %i.av, align 2
  ret void

bb.h:                                             ; preds = %bb.g
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.i:                                             ; preds = %bb.g
  %i.bz = extractvalue { ptr, ptr } %i.bv, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 735
  store i8 1, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 688
  store ptr %i.bx, ptr %i.cb, align 8
  %i.cc = getelementptr i8, ptr %1, i64 696       ; 2 uses
  store ptr %i.bz, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.ce = load i8, ptr %i.cd, align 8, !range !47, !noundef !27
  %cond.i = icmp eq i8 %i.ce, 3
  br i1 %cond.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.cg = load i8, ptr %i.cf, align 8, !range !47, !noundef !27
  %cond.i.i = icmp eq i8 %i.cg, 3
  br i1 %cond.i.i, label %bb.k, label %bb.q

end_hunk_2
