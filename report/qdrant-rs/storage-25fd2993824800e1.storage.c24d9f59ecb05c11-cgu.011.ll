Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.011?download=true
inline.NumInlined: 3897
inline.NumDeleted: 1573
begin_hunk_0_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4_11ShardHolder11load_shards0CsgGgPqgSfnMH_7storage:bb.a
  %i.vs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.val30.i.i.i.i, i64 8
  %i.vu = load i64, ptr %i.vt, align 8, !range !17, !invariant.load !16, !noalias !7173 ; 2 uses
  %i.vv = icmp eq i64 %i.vu, 0
  br i1 %i.vv, label %.body57.i.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.vw = getelementptr inbounds nuw i8, ptr %.val30.i.i.i.i, i64 16
  %i.vx = load i64, ptr %i.vw, align 8, !range !18, !invariant.load !16, !noalias !7173
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i53.i.i, i64 noundef range(i64 1, 0) %i.vu, i64 noundef range(i64 1, 536870913) %i.vx) #22, !noalias !7173
  br label %.body57.i.i.i.i

bb.gb:                                            ; preds = %bb.ea
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsgGgPqgSfnMH_7storage.exit59.i.i.i.i: ; preds = %bb.fy, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7206
  br label %bb.ef

bb.gc:                                            ; preds = %bb.ef
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(720) %i.rj)
          to label %bb.gi unwind label %bb.ge, !noalias !7173

bb.gd:                                            ; preds = %bb.gf, %bb.ge, %bb.eu
  %i.vz = phi ptr [ %i.rb, %bb.ge ], [ %i.so, %bb.gf ], [ %i.so, %bb.eu ]
  %i.wa = phi ptr [ %i.rc, %bb.ge ], [ %i.sp, %bb.gf ], [ %i.sp, %bb.eu ]
  %i.wb = phi ptr [ %i.rd, %bb.ge ], [ %i.sq, %bb.gf ], [ %i.sq, %bb.eu ]
  %i.wc = phi ptr [ %i.re, %bb.ge ], [ %i.sr, %bb.gf ], [ %i.sr, %bb.eu ]
  %i.wd = phi ptr [ %i.rf, %bb.ge ], [ %i.ss, %bb.gf ], [ %i.ss, %bb.eu ]
  %i.we = phi ptr [ %i.rg, %bb.ge ], [ %i.st, %bb.gf ], [ %i.st, %bb.eu ]
  %i.wf = phi ptr [ %i.rh, %bb.ge ], [ %i.su, %bb.gf ], [ %i.su, %bb.eu ]
  %i.wg = phi ptr [ %i.ri, %bb.ge ], [ %i.sv, %bb.gf ], [ %i.sv, %bb.eu ]
  %.pn28.i.i.i.i = phi { ptr, i32 } [ %i.wh, %bb.ge ], [ %.pn23.pn.i.i.i.i, %bb.gf ], [ %.pn23.pn.i.i.i.i, %bb.eu ]
  store i8 2, ptr %i.wf, align 8, !noalias !7206
  br label %.body29.i.i.i

bb.ge:                                            ; preds = %bb.gc
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.gf:                                            ; preds = %bb.eu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(720) %i.sw) #23
          to label %bb.gd unwind label %bb.et, !noalias !7173

bb.gg:                                            ; preds = %bb.eh, %bb.eg
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i.i.i

.body29.i.i.i:                                    ; preds = %bb.gg, %bb.gd
  %i.wj = phi ptr [ %i.fk, %bb.gg ], [ %i.vz, %bb.gd ]
  %i.wk = phi ptr [ %i.fj, %bb.gg ], [ %i.wa, %bb.gd ]
  %i.wl = phi ptr [ %.phi.trans.insert.i, %bb.gg ], [ %i.wb, %bb.gd ]
  %i.wm = phi ptr [ %i.gc, %bb.gg ], [ %i.wc, %bb.gd ]
  %i.wn = phi ptr [ %.phi.trans.insert138.i.i, %bb.gg ], [ %i.wd, %bb.gd ]
  %i.wo = phi ptr [ %i.ka, %bb.gg ], [ %i.we, %bb.gd ]
  %i.wp = phi ptr [ %i.ok, %bb.gg ], [ %i.wg, %bb.gd ]
  %eh.lpad-body30.i.i.i = phi { ptr, i32 } [ %i.wi, %bb.gg ], [ %.pn28.i.i.i.i, %bb.gd ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard15stop_gracefully0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.wp) #23
          to label %bb.do unwind label %bb.dp, !noalias !7173

bb.gh:                                            ; preds = %bb.fu, %bb.fj, %bb.ey, %bb.el
  %i.wq = phi ptr [ %i.sz, %bb.ey ], [ %i.tz, %bb.fj ], [ %i.uz, %bb.fu ], [ %i.rn, %bb.el ]
  %i.wr = phi ptr [ %i.tb, %bb.ey ], [ %i.ub, %bb.fj ], [ %i.vb, %bb.fu ], [ %i.rp, %bb.el ]
  %i.ws = phi ptr [ %i.td, %bb.ey ], [ %i.ud, %bb.fj ], [ %i.vd, %bb.fu ], [ %i.rr, %bb.el ]
  %i.wt = phi ptr [ %i.tf, %bb.ey ], [ %i.uf, %bb.fj ], [ %i.vf, %bb.fu ], [ %i.rt, %bb.el ]
  %.sink.i.ph.i.i.i = phi i8 [ 4, %bb.ey ], [ 5, %bb.fj ], [ 6, %bb.fu ], [ 3, %bb.el ]
  store i8 %.sink.i.ph.i.i.i, ptr %i.wt, align 8, !noalias !7206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750.i.i.i)
  br label %.thread.i

bb.gi:                                            ; preds = %bb.gc, %bb.ef
  store i8 1, ptr %i.rh, align 8, !noalias !7206
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard15stop_gracefully0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ri)
          to label %bb.gk unwind label %bb.gj, !noalias !7173

bb.gj:                                            ; preds = %bb.gi
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750.i.i.i)
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 7168
  br label %.invoke.i.i.i

bb.gl:                                            ; preds = %bb.cp, %bb.co
  %i.ww = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i.i

.body57.i.i:                                      ; preds = %bb.gl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit.i.i.i
  %i.wx = phi ptr [ %i.fk, %bb.gl ], [ %i.kk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  %i.wy = phi ptr [ %i.fj, %bb.gl ], [ %i.kl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  %i.wz = phi ptr [ %.phi.trans.insert.i, %bb.gl ], [ %i.km, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  %i.xa = phi ptr [ %i.gc, %bb.gl ], [ %i.kn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  %i.xb = phi ptr [ %i.ka, %bb.gl ], [ %i.kp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  %eh.lpad-body58.i.i = phi { ptr, i32 } [ %i.ww, %bb.gl ], [ %.pn13.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsgGgPqgSfnMH_7storage.exit.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet15stop_gracefully0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.xb) #23
          to label %bb.gn unwind label %bb.ho, !noalias !7173

.thread.i:                                        ; preds = %bb.gh, %bb.dm
  %i.xc = phi ptr [ %i.ls, %bb.dm ], [ %i.wq, %bb.gh ]
  %i.xd = phi ptr [ %i.lu, %bb.dm ], [ %i.wr, %bb.gh ]
  %i.xe = phi ptr [ %i.lw, %bb.dm ], [ %i.ws, %bb.gh ]
  %.sink.i.ph.i.i = phi i8 [ 3, %bb.dm ], [ 4, %bb.gh ]
  store i8 %.sink.i.ph.i.i, ptr %i.xe, align 8, !noalias !7196
  store i8 3, ptr %i.xd, align 4, !noalias !7172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !7170
  br label %bb.ie

bb.gm:                                            ; preds = %.invoke.i.i.i
  store i8 1, ptr %i.nx, align 8, !noalias !7196
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet15stop_gracefully0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ny)
          to label %bb.gq unwind label %bb.gp, !noalias !7173

bb.gn:                                            ; preds = %bb.gp, %.body57.i.i
  %i.xf = phi ptr [ %i.nt, %bb.gp ], [ %i.wx, %.body57.i.i ] ; 2 uses
  %i.xg = phi ptr [ %i.nu, %bb.gp ], [ %i.wy, %.body57.i.i ] ; 2 uses
  %i.xh = phi ptr [ %i.nv, %bb.gp ], [ %i.wz, %.body57.i.i ] ; 2 uses
  %i.xi = phi ptr [ %i.nw, %bb.gp ], [ %i.xa, %.body57.i.i ] ; 2 uses
  %.pn19.i.i = phi { ptr, i32 } [ %i.xn, %bb.gp ], [ %eh.lpad-body58.i.i, %.body57.i.i ] ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 7152 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7208)
  call void @llvm.experimental.noalias.scope.decl(metadata !7209)
  %i.xk = load ptr, ptr %i.xj, align 8, !alias.scope !7210, !noalias !7172, !nonnull !16, !noundef !16
  %i.xl = atomicrmw add ptr %i.xk, i64 -1 release, align 8, !noalias !7211
  %i.xm = icmp eq i64 %i.xl, 1
  br i1 %i.xm, label %bb.go, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit.i.i

bb.go:                                            ; preds = %bb.gn
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.xj) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit.i.i unwind label %bb.ho, !noalias !7173

bb.gp:                                            ; preds = %bb.gm
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gq:                                            ; preds = %bb.gm
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 7152 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7212)
  call void @llvm.experimental.noalias.scope.decl(metadata !7213)
  %i.xp = load ptr, ptr %i.xo, align 8, !alias.scope !7214, !noalias !7172, !nonnull !16, !noundef !16
  %i.xq = atomicrmw add ptr %i.xp, i64 -1 release, align 8, !noalias !7215
  %i.xr = icmp eq i64 %i.xq, 1
  br i1 %i.xr, label %bb.gr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit63.i.i

bb.gr:                                            ; preds = %bb.gq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.xo) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit63.i.i unwind label %bb.hl, !noalias !7173

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit.i.i: ; preds = %bb.hl, %bb.hg, %bb.hc, %bb.go, %bb.gn
  %i.xs = phi ptr [ %i.xx, %bb.hc ], [ %i.xf, %bb.gn ], [ %i.xf, %bb.go ], [ %i.zy, %bb.hl ], [ %i.iw, %bb.hg ]
  %i.xt = phi ptr [ %i.xy, %bb.hc ], [ %i.xg, %bb.gn ], [ %i.xg, %bb.go ], [ %i.zz, %bb.hl ], [ %i.ix, %bb.hg ]
  %i.xu = phi ptr [ %i.xz, %bb.hc ], [ %i.xh, %bb.gn ], [ %i.xh, %bb.go ], [ %i.aaa, %bb.hl ], [ %i.iy, %bb.hg ]
  %i.xv = phi ptr [ %i.ya, %bb.hc ], [ %i.xi, %bb.gn ], [ %i.xi, %bb.go ], [ %i.aab, %bb.hl ], [ %i.iz, %bb.hg ]
  %.pn22.pn.i.i = phi { ptr, i32 } [ %.pn22.i.i, %bb.hc ], [ %.pn19.i.i, %bb.gn ], [ %.pn19.i.i, %bb.go ], [ %i.aac, %bb.hl ], [ %i.zk, %bb.hg ]
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 5632
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.xw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit.i.i unwind label %bb.ho, !noalias !7173

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit63.i.i: ; preds = %bb.hn, %bb.gr, %bb.gq
  %i.xx = phi ptr [ %i.iw, %bb.hn ], [ %i.nt, %bb.gr ], [ %i.nt, %bb.gq ] ; 2 uses
  %i.xy = phi ptr [ %i.ix, %bb.hn ], [ %i.nu, %bb.gr ], [ %i.nu, %bb.gq ] ; 2 uses
  %.sink.i65.sroa.gep116.i69.i = phi ptr [ %.sink.i65.sroa.gep116.i68.i, %bb.hn ], [ %.sink.i65.sroa.gep116.i70.i, %bb.gr ], [ %.sink.i65.sroa.gep116.i70.i, %bb.gq ] ; 3 uses
  %.sink.i65.sroa.gep.i55.i = phi ptr [ %.sink.i65.sroa.gep.i54.i, %bb.hn ], [ %.sink.i65.sroa.gep.i56.i, %bb.gr ], [ %.sink.i65.sroa.gep.i56.i, %bb.gq ] ; 2 uses
  %i.xz = phi ptr [ %i.iy, %bb.hn ], [ %i.nv, %bb.gr ], [ %i.nv, %bb.gq ] ; 2 uses
  %i.ya = phi ptr [ %i.iz, %bb.hn ], [ %i.nw, %bb.gr ], [ %i.nw, %bb.gq ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 5608
  %i.yc = load i64, ptr %i.yb, align 8, !range !27, !noalias !7172, !noundef !16 ; 2 uses
  %.not21.i.i = icmp eq i64 %i.yc, 2
  br i1 %.not21.i.i, label %bb.gx, label %bb.gs

bb.gs:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit63.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !7172
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 5576
  %i.ye = load ptr, ptr %i.yd, align 8, !noalias !7172, !nonnull !16, !align !15, !noundef !16
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 8664
  %i.yg = load i32, ptr %i.yf, align 8, !noalias !7172, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !7172
  call void @llvm.experimental.noalias.scope.decl(metadata !7216)
  call void @llvm.experimental.noalias.scope.decl(metadata !7217)
  %i.yh = trunc nuw i64 %i.yc to i1
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 5616 ; 2 uses
  br i1 %i.yh, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !7217, !noalias !7172, !noundef !16
  br label %bb.gz

bb.gu:                                            ; preds = %bb.gs
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 5631
  %i.yl = load i8, ptr %i.yk, align 1, !alias.scope !7217, !noalias !7172, !noundef !16
  %.not.i64.i.i = icmp sgt i8 %i.yl, -1
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 5624
  %.val.i.i.i110 = load ptr, ptr %i.yi, align 8, !alias.scope !7217, !noalias !7172 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.ym, align 8, !alias.scope !7217, !noalias !7172 ; 2 uses
  br i1 %.not.i64.i.i, label %2, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i.i

2:                                                ; preds = %bb.gu
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i110, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %2
  %i.yn = getelementptr inbounds i8, ptr %.val.i.i.i110, i64 -16
  %i.yo = atomicrmw add ptr %i.yn, i64 1 monotonic, align 8, !noalias !7218
  %i.yp = icmp slt i64 %i.yo, 0
  br i1 %i.yp, label %bb.gw, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i.i, !prof !35

bb.gw:                                            ; preds = %bb.gv
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsgGgPqgSfnMH_7storage(ptr noundef nonnull %.val.i.i.i110, i64 noundef %.val21.i.i.i) #25
          to label %.noexc66.i.i unwind label %bb.gy, !noalias !7173

.noexc66.i.i:                                     ; preds = %bb.gw
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i.i: ; preds = %bb.gu, %bb.gv, %2
  %.sroa.06.0.i.i.i = phi ptr [ %.val.i.i.i110, %bb.gv ], [ inttoptr (i64 16 to ptr), %2 ], [ %.val.i.i.i110, %bb.gu ]
  store ptr %.sroa.06.0.i.i.i, ptr %.sink.i65.sroa.gep116.i69.i, align 8, !alias.scope !7216, !noalias !7172
  br label %bb.gz

bb.gx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit71.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit63.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 5656
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !7195, !noalias !7172
  %.phi.trans.insert134.i.i = getelementptr inbounds nuw i8, ptr %0, i64 5640
  %.pre135.i.i = load ptr, ptr %.phi.trans.insert134.i.i, align 8, !alias.scope !7195, !noalias !7172
  br label %bb.cf

bb.gy:                                            ; preds = %bb.gz, %bb.gw
  %i.yq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7172
  br label %bb.hc

bb.gz:                                            ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i.i, %bb.gt
  %.sink.i65.sroa.phi.i.i = phi ptr [ %.sink.i65.sroa.gep.i55.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i.i ], [ %.sink.i65.sroa.gep116.i69.i, %bb.gt ]
  %.sroa.58.0.sink.i.i.i = phi i64 [ %.val21.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i.i ], [ %i.yj, %bb.gt ]
  %storemerge.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i.i ], [ 1, %bb.gt ]
  store i64 %.sroa.58.0.sink.i.i.i, ptr %.sink.i65.sroa.phi.i.i, align 8, !alias.scope !7216, !noalias !7172
  store i64 %storemerge.i.i.i, ptr %i.ab, align 8, !alias.scope !7216, !noalias !7172
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ye, i64 352
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE6insertCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.yr, i32 noundef %i.yg, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab)
          to label %_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsgGgPqgSfnMH_7storage.exit.i.i unwind label %bb.gy, !noalias !7173

_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsgGgPqgSfnMH_7storage.exit.i.i: ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7172
  %i.ys = load i64, ptr %i.ac, align 8, !range !27, !alias.scope !7219, !noalias !7172, !noundef !16 ; 2 uses
  %i.yt = icmp eq i64 %i.ys, 2
  br i1 %i.yt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit71.i.i, label %bb.ha

bb.ha:                                            ; preds = %_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsgGgPqgSfnMH_7storage.exit.i.i
  %i.yu = icmp eq i64 %i.ys, 0
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ac, i64 23
  %i.yw = load i8, ptr %i.yv, align 1, !alias.scope !7220, !noalias !7172
  %.not.i.i.i.i.i68.i.i = icmp sgt i8 %i.yw, -1
  %or.cond.i.i69.i.i = select i1 %i.yu, i1 %.not.i.i.i.i.i68.i.i, i1 false
  br i1 %or.cond.i.i69.i.i, label %bb.hb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit71.i.i

bb.hb:                                            ; preds = %bb.ha
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.yx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit71.i.i unwind label %bb.hd, !noalias !7173

bb.hc:                                            ; preds = %bb.hd, %bb.gy
  %.pn22.i.i = phi { ptr, i32 } [ %i.yy, %bb.hd ], [ %i.yq, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7172
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit.i.i

bb.hd:                                            ; preds = %bb.hb
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit71.i.i: ; preds = %bb.hb, %bb.ha, %_RNvMs3_NtCsyIGusAaLFh_5ahash8hash_mapINtB5_8AHashMapmNtNtCs607s0NAIaWN_7segment5types8ShardKeyE6insertCsgGgPqgSfnMH_7storage.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7172
  br label %bb.gx

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit.i.i: ; preds = %bb.cf
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 5640
  %i.za = getelementptr inbounds nuw i8, ptr %i.ja, i64 1488
  store ptr %i.za, ptr %i.yz, align 8, !alias.scope !7195, !noalias !7172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1488) %i.jd, ptr noundef nonnull align 8 dereferenceable(1488) %i.ja, i64 1488, i1 false), !noalias !7221
  %.phi.trans.insert136.i.i = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 2 uses
  %.pre137.i.i = load i64, ptr %.phi.trans.insert136.i.i, align 8, !range !27, !noalias !7172
  %i.zb = icmp eq i64 %.pre137.i.i, 2
  br i1 %i.zb, label %bb.hi, label %bb.he

bb.he:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit.i.i
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 8664
  %i.zd = load i32, ptr %i.jd, align 8, !noalias !7172, !noundef !16 ; 2 uses
  store i32 %i.zd, ptr %i.zc, align 8, !noalias !7172
  %i.ze = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1480) %i.ze, ptr noundef nonnull align 8 dereferenceable(1480) %.phi.trans.insert136.i.i, i64 1480, i1 false), !noalias !7172
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 5576
  %i.zg = load ptr, ptr %i.zf, align 8, !noalias !7172, !nonnull !16, !align !15, !noundef !16
  store i64 1, ptr %i.q, align 8, !noalias !7222
  %i.zh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.zh, align 8, !noalias !7222
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !7223
  %i.zi = call noundef align 8 dereferenceable_or_null(1496) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 12337) 1496, i64 noundef 8) #22, !noalias !7223 ; 3 uses
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %bb.hf, label %bb.hm, !prof !35

bb.hf:                                            ; preds = %bb.he
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1496) #25
          to label %.noexc.i73.i.i unwind label %bb.hg, !noalias !7224

.noexc.i73.i.i:                                   ; preds = %bb.hf
  unreachable

bb.hg:                                            ; preds = %bb.hf
  %i.zk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(1480) %i.ze)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit.i.i unwind label %bb.hh, !noalias !7224

bb.hh:                                            ; preds = %bb.hg
  %i.zl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !7224
  unreachable

bb.hi:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit.i.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit.thread.i.i
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.jc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i, !noalias !7173

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.hi, %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterE14or_insert_withNvMB2o_B2m_6singleE0CsgGgPqgSfnMH_7storage.exit.i.i.i.i, %bb.bp
  %i.zm = phi ptr [ %i.gd, %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterE14or_insert_withNvMB2o_B2m_6singleE0CsgGgPqgSfnMH_7storage.exit.i.i.i.i ], [ %i.gd, %bb.bp ], [ %i.iw, %bb.hi ]
  %i.zn = phi ptr [ %i.ge, %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterE14or_insert_withNvMB2o_B2m_6singleE0CsgGgPqgSfnMH_7storage.exit.i.i.i.i ], [ %i.ge, %bb.bp ], [ %i.ix, %bb.hi ]
  %i.zo = phi ptr [ %i.gg, %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterE14or_insert_withNvMB2o_B2m_6singleE0CsgGgPqgSfnMH_7storage.exit.i.i.i.i ], [ %i.gg, %bb.bp ], [ %i.iy, %bb.hi ]
  %i.zp = phi ptr [ %i.gh, %_RNCINvMs18_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB9_5EntryINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyENtNtCsPYQCUnoTxQ_10collection9hash_ring14HashRingRouterE14or_insert_withNvMB2o_B2m_6singleE0CsgGgPqgSfnMH_7storage.exit.i.i.i.i ], [ %i.gh, %bb.bp ], [ %i.iz, %bb.hi ]
  %lpad.loopexit.split-lp20.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit77.i.i: ; preds = %bb.hi
  store i64 -1, ptr %i.aa, align 8, !noalias !7172
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 5608
  %i.zr = load i64, ptr %i.zq, align 8, !range !27, !alias.scope !7225, !noalias !7172, !noundef !16 ; 2 uses
  %i.zs = icmp eq i64 %i.zr, 2
  br i1 %i.zs, label %.thread362, label %bb.hj

bb.hj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit77.i.i
  %i.zt = icmp eq i64 %i.zr, 0
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 5631
  %i.zv = load i8, ptr %i.zu, align 1, !alias.scope !7226, !noalias !7172
  %.not.i.i.i.i.i78.i.i = icmp sgt i8 %i.zv, -1
  %or.cond.i.i79.i.i = select i1 %i.zt, i1 %.not.i.i.i.i.i78.i.i, i1 false
  br i1 %or.cond.i.i79.i.i, label %bb.hk, label %.thread362

bb.hk:                                            ; preds = %bb.hj
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 5616
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.zw)
          to label %.thread362 unwind label %bb.cg, !noalias !7173

.thread362:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEEECsgGgPqgSfnMH_7storage.exit77.i.i, %bb.hj, %bb.hk
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 8669
  store i8 0, ptr %i.zx, align 1, !noalias !7172
  %.sroa.9278.0..sroa_idx279364 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9278, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9278.0..sroa_idx279364, i64 40, i1 false), !noalias !7227
  store i8 1, ptr %i.iy, align 4, !noalias !7172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !7170
  br label %bb.hv

bb.hl:                                            ; preds = %bb.hm, %bb.gr
  %i.zy = phi ptr [ %i.iw, %bb.hm ], [ %i.nt, %bb.gr ]
  %i.zz = phi ptr [ %i.ix, %bb.hm ], [ %i.nu, %bb.gr ]
  %i.aaa = phi ptr [ %i.iy, %bb.hm ], [ %i.nv, %bb.gr ]
  %i.aab = phi ptr [ %i.iz, %bb.hm ], [ %i.nw, %bb.gr ]
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit.i.i

bb.hm:                                            ; preds = %bb.he
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1496) %i.zi, ptr noundef nonnull align 8 dereferenceable(1496) %i.q, i64 1496, i1 false), !noalias !7224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7222
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zg, i64 424
  %i.aae = invoke noundef ptr @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapmINtNtBb_4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEE6insertCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aad, i32 noundef %i.zd, ptr noundef nonnull %i.zi)
          to label %bb.hn unwind label %bb.hl, !noalias !7173 ; 3 uses

bb.hn:                                            ; preds = %bb.hm
  %.not14.i.i = icmp eq ptr %i.aae, null
  br i1 %.not14.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit63.i.i, label %.thread164.i.i

.thread164.i.i:                                   ; preds = %bb.hn
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 7152
  store ptr %i.aae, ptr %i.aaf, align 8, !noalias !7172
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 16 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 7160 ; 2 uses
  store ptr %i.aag, ptr %i.aah, align 8, !noalias !7172
  %.sroa.8114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 7192 ; 2 uses
  store i8 0, ptr %.sroa.8114.0..sroa_idx.i.i, align 8, !noalias !7172
  br label %.thread.i.i.i

bb.ho:                                            ; preds = %bb.hr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsgGgPqgSfnMH_7storage.exit.i.i, %bb.go, %.body57.i.i, %bb.bv
  %i.aai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body213

.body213:                                         ; preds = %bb.hq, %bb.ho
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !7173
  unreachable

bb.hp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit45.i.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 5584 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aaj)
          to label %bb.hr unwind label %bb.hq, !noalias !7173

bb.hq:                                            ; preds = %bb.hp
  %i.aak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTmNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aaj)
          to label %.body213 unwind label %bb.hs, !noalias !7173
end_hunk_0
