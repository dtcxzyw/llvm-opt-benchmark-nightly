Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_server_config_fetcher_legacy?download=true
inline.NumInlined: 5231
inline.NumDeleted: 2929
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher17OnResourceChangedEN4absl12lts_202505128StatusOrISt10shared_ptrIKNS_19XdsListenerResourceEEEENS_13RefCountedPtrINS_9XdsClient15ReadDelayHandleEEE:bb.a
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.val62, i64 320
  %i.ra = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.rb = getelementptr inbounds nuw i8, ptr %.val62, i64 336
  %i.rc = getelementptr inbounds nuw i8, ptr %.val62, i64 328 ; 5 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.val62, i64 360 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 15 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 6 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.cy

._crit_edge.i:                                    ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager18RouteConfigWatcherEED2Ev.exit.i, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %.val35.i = phi ptr [ %.promoted147.i, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i ], [ %i.xn, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager18RouteConfigWatcherEED2Ev.exit.i ] ; 6 uses
  %.val34.i = phi ptr [ %.promoted147.i, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i ], [ %i.xm, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager18RouteConfigWatcherEED2Ev.exit.i ] ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.val62, i64 312
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !253
  %.not.i106 = icmp eq i64 %i.rj, 0
  br i1 %.not.i106, label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcherEED2Ev.exit.i, label %bb.eh

bb.cx:                                            ; preds = %bb.es, %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE7reserveEm.exit.i, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE11_M_allocateEm.exit.i.i, %bb.cv
  %.sroa.0.0 = phi ptr [ %0, %bb.cv ], [ %.sroa.0.3, %bb.es ], [ %0, %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE7reserveEm.exit.i ], [ %0, %_ZNSt12_Vector_baseIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE11_M_allocateEm.exit.i.i ]
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.cy:                                            ; preds = %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager18RouteConfigWatcherEED2Ev.exit.i, %.lr.ph.i
  %i.rl = phi ptr [ %.promoted147.i, %.lr.ph.i ], [ %i.xm, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager18RouteConfigWatcherEED2Ev.exit.i ] ; 10 uses
  %.sroa.092.0149.i = phi ptr [ %i.qu, %.lr.ph.i ], [ %i.xt, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager18RouteConfigWatcherEED2Ev.exit.i ] ; 3 uses
  %i.rm = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.xo, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager18RouteConfigWatcherEED2Ev.exit.i ] ; 2 uses
  %i.rn = phi ptr [ %.promoted147.i, %.lr.ph.i ], [ %i.xn, %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager18RouteConfigWatcherEED2Ev.exit.i ] ; 6 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.092.0149.i, i64 32 ; 4 uses
  %i.rp = load i64, ptr %i.qv, align 8, !tbaa !253
  %i.rq = add i64 %i.rp, 1
  store i64 %i.rq, ptr %i.qv, align 8, !tbaa !253
  %i.rr = atomicrmw add ptr %i.qw, i64 1 monotonic, align 8, !noalias !517 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.rs = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #41
          to label %.noexc45.i unwind label %bb.ea ; 13 uses

.noexc45.i:                                       ; preds = %bb.cy
  store ptr %i.qx, ptr %3, align 8, !tbaa !122, !noalias !518
  %i.rt = load ptr, ptr %i.ro, align 8, !tbaa !123, !noalias !518 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.092.0149.i, i64 40 ; 4 uses
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !106, !noalias !518 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38, !noalias !518
  store i64 %i.rv, ptr %i.c, align 8, !tbaa !131, !noalias !518
  %i.rw = icmp ugt i64 %i.rv, 15
  br i1 %i.rw, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc45.i
  %i.rx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i44.i unwind label %bb.dd, !noalias !518 ; 2 uses

.noexc.i44.i:                                     ; preds = %.noexc.i.i.i
  store ptr %i.rx, ptr %3, align 8, !tbaa !123, !noalias !518
  %i.ry = load i64, ptr %i.c, align 8, !tbaa !131, !noalias !518
  store i64 %i.ry, ptr %i.qx, align 8, !tbaa !93, !noalias !518
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i44.i, %.noexc45.i
  %i.rz = phi ptr [ %i.rx, %.noexc.i44.i ], [ %i.qx, %.noexc45.i ] ; 2 uses
  switch i64 %i.rv, label %bb.da [
    i64 1, label %bb.cz
    i64 0, label %bb.db
  ]

bb.cz:                                            ; preds = %._crit_edge.i.i.i.i
  %i.sa = load i8, ptr %i.rt, align 1, !tbaa !93, !noalias !518
  store i8 %i.sa, ptr %i.rz, align 1, !tbaa !93, !noalias !518
  br label %bb.db

bb.da:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rz, ptr align 1 %i.rt, i64 %i.rv, i1 false), !noalias !518
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %._crit_edge.i.i.i.i
  %i.sb = load i64, ptr %i.c, align 8, !tbaa !131, !noalias !518 ; 2 uses
  store i64 %i.sb, ptr %i.qy, align 8, !tbaa !106, !noalias !518
  %i.sc = load ptr, ptr %3, align 8, !tbaa !123, !noalias !518
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.sb
  store i8 0, ptr %i.sd, align 1, !tbaa !93, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38, !noalias !518
  %i.se = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store i64 1, ptr %i.se, align 8, !tbaa !109, !noalias !518
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager18RouteConfigWatcherE, i64 16), ptr %i.rs, align 8, !tbaa !60, !noalias !518
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rs, i64 16 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rs, i64 32 ; 3 uses
  store ptr %i.sg, ptr %i.sf, align 8, !tbaa !122, !noalias !518
  %i.sh = load ptr, ptr %3, align 8, !tbaa !123, !noalias !518 ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.qx
  br i1 %i.si, label %bb.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i104

bb.dc:                                            ; preds = %bb.db
  %i.sj = load i64, ptr %i.qy, align 8, !tbaa !106, !noalias !518 ; 3 uses
  %i.sk = icmp ult i64 %i.sj, 16
  call void @llvm.assume(i1 %i.sk)
  %i.sl = add nuw nsw i64 %i.sj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sg, ptr noundef nonnull align 8 dereferenceable(1) %i.qx, i64 %i.sl, i1 false), !noalias !518
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManagerEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i104: ; preds = %bb.db
  store ptr %i.sh, ptr %i.sf, align 8, !tbaa !123, !noalias !518
  %i.sm = load i64, ptr %i.qx, align 8, !tbaa !93, !noalias !518
  store i64 %i.sm, ptr %i.sg, align 8, !tbaa !93, !noalias !518
  %.pre.i43.i = load i64, ptr %i.qy, align 8, !tbaa !106, !noalias !518
  br label %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManagerEED2Ev.exit.i

bb.dd:                                            ; preds = %.noexc.i.i.i
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.rs, i64 noundef 56) #44, !noalias !518
  br label %.body46.i

_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManagerEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i104, %bb.dc
  %i.so = phi i64 [ %i.sj, %bb.dc ], [ %.pre.i43.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i104 ]
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rs, i64 24
  store i64 %i.so, ptr %i.sp, align 8, !tbaa !106, !noalias !518
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rs, i64 48
  store ptr %.val62, ptr %i.sq, align 8, !tbaa !255, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  store ptr %i.rs, ptr %7, align 8, !tbaa !519
  store i8 0, ptr %i.ra, align 8, !tbaa !263
  %.val.i48.i = load ptr, ptr %i.ro, align 8      ; 2 uses
  %.val10.i49.i = load i64, ptr %i.ru, align 8    ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.rb, align 8, !tbaa !115 ; 2 uses
  %.not2.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not2.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i50.i

.lr.ph.i.i.i.i50.i:                               ; preds = %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManagerEED2Ev.exit.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i
  %.04.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i ], [ %.val.i.i.i.i, %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManagerEED2Ev.exit.i ] ; 4 uses
  %.083.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i ], [ %i.rc, %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManagerEED2Ev.exit.i ]
  %i.sr = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 40
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !106 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val10.i49.i, i64 %i.ss) ; 2 uses
  %i.st = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.st, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i50.i
  %i.su = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 32
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !123
  %i.sw = call i32 @memcmp(ptr noundef %i.sv, ptr noundef readonly %.val.i48.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #38 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.sw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i50.i
  %i.sx = sub i64 %i.ss, %.val10.i49.i
  %spec.select7.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.sx, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.sw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.sy = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0     ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.sy, ptr %.083.i.i.i.i.i, ptr %.04.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.sy, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !135 ; 2 uses
  %.not.i.i.i.i51.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i51.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateESt4lessIS5_ESaISt4pairIKS5_SB_EEE11lower_boundERSF_.exit.i.i, label %.lr.ph.i.i.i.i50.i, !llvm.loop !16

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateESt4lessIS5_ESaISt4pairIKS5_SB_EEE11lower_boundERSF_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i
  %i.sz = icmp eq ptr %.19.i.i.i.i.i, %i.rc
  br i1 %i.sz, label %.critedge.i.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateESt4lessIS5_ESaISt4pairIKS5_SB_EEE11lower_boundERSF_.exit.i.i
  %i.ta = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !106 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.tb, i64 %.val10.i49.i) ; 2 uses
  %i.tc = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.tc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.de
  %i.td = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !123
  %i.tf = call i32 @memcmp(ptr noundef %.val.i48.i, ptr noundef %i.te, i64 noundef %.sroa.speculated.i.i.i.i.i) #38 ; 2 uses
  %.not.i.i.i21.i.i = icmp eq i32 %i.tf, 0
  br i1 %.not.i.i.i21.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.de
  %i.tg = sub i64 %.val10.i49.i, %i.tb
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.tg, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.tf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.th = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.th, label %.critedge.i.i, label %_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateD2Ev.exit.i

.critedge.i.i:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateESt4lessIS5_ESaISt4pairIKS5_SB_EEE11lower_boundERSF_.exit.i.i, %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManagerEED2Ev.exit.i
  %.08.lcssa.i.i.i29.i.i = phi ptr [ %.19.i.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ %.19.i.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateESt4lessIS5_ESaISt4pairIKS5_SB_EEE11lower_boundERSF_.exit.i.i ], [ %i.rc, %_ZN9grpc_core17WeakRefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManagerEED2Ev.exit.i ]
  %i.ti = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #41
          to label %.noexc52.i unwind label %bb.ec ; 8 uses

.noexc52.i:                                       ; preds = %.critedge.i.i
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 32 ; 5 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 48 ; 5 uses
  store ptr %i.tk, ptr %i.tj, align 8, !tbaa !122
  %i.tl = load ptr, ptr %i.ro, align 8, !tbaa !123 ; 2 uses
  %i.tm = load i64, ptr %i.ru, align 8, !tbaa !106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 %i.tm, ptr %i.b, align 8, !tbaa !131
  %i.tn = icmp ugt i64 %i.tm, 15
  br i1 %i.tn, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc52.i
  %i.to = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(72) %i.tj, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.dh ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.to, ptr %i.tj, align 8, !tbaa !123
  %i.tp = load i64, ptr %i.b, align 8, !tbaa !131
  store i64 %i.tp, ptr %i.tk, align 8, !tbaa !93
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc.i.i.i.i.i.i.i, %.noexc52.i
  %i.tq = phi ptr [ %i.to, %.noexc.i.i.i.i.i.i.i ], [ %i.tk, %.noexc52.i ] ; 2 uses
  switch i64 %i.tm, label %bb.dg [
    i64 1, label %bb.df
    i64 0, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE10_Auto_nodeC2IJRS7_SD_EEERSK_DpOT_.exit.i.i.i.i
  ]

bb.df:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.tr = load i8, ptr %i.tl, align 1, !tbaa !93
  store i8 %i.tr, ptr %i.tq, align 1, !tbaa !93
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE10_Auto_nodeC2IJRS7_SD_EEERSK_DpOT_.exit.i.i.i.i

bb.dg:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tq, ptr align 1 %i.tl, i64 %i.tm, i1 false)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE10_Auto_nodeC2IJRS7_SD_EEERSK_DpOT_.exit.i.i.i.i

bb.dh:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.ts = landingpad { ptr, i32 }
          catch ptr null
  %i.tt = extractvalue { ptr, i32 } %i.ts, 0
  %i.tu = call ptr @__cxa_begin_catch(ptr %i.tt) #38 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef 104) #44
  invoke void @__cxa_rethrow() #42
          to label %bb.dk unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.tv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.thread.i unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.tw = landingpad { ptr, i32 }
          catch ptr null
  %i.tx = extractvalue { ptr, i32 } %i.tw, 0
  call void @__clang_call_terminate(ptr %i.tx) #43
  unreachable

bb.dk:                                            ; preds = %bb.dh
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE10_Auto_nodeC2IJRS7_SD_EEERSK_DpOT_.exit.i.i.i.i: ; preds = %bb.dg, %bb.df, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ty = load i64, ptr %i.b, align 8, !tbaa !131 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ti, i64 40 ; 2 uses
  store i64 %i.ty, ptr %i.tz, align 8, !tbaa !106
  %i.ua = load ptr, ptr %i.tj, align 8, !tbaa !123
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.ty
  store i8 0, ptr %i.ub, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ti, i64 64
  store ptr %i.rs, ptr %i.uc, align 8, !tbaa !519
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ti, i64 96
  store i8 0, ptr %i.ud, align 8, !tbaa !263
  %.val7.i.i.i.i = load ptr, ptr %i.tj, align 8   ; 4 uses
  %.val8.i.i.i.i = load i64, ptr %i.tz, align 8   ; 4 uses
  %i.ue = call fastcc { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISE_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.qz, ptr %.08.lcssa.i.i.i29.i.i, ptr %.val7.i.i.i.i, i64 %.val8.i.i.i.i) ; 2 uses
  %i.uf = extractvalue { ptr, ptr } %i.ue, 1      ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i.i, label %_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateD2Ev.exit.i.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE10_Auto_nodeC2IJRS7_SD_EEERSK_DpOT_.exit.i.i.i.i
  %i.ug = extractvalue { ptr, ptr } %i.ue, 0
  %.not.i.i.i.i.i.i107 = icmp ne ptr %i.ug, null
  %i.uh = icmp eq ptr %i.uf, %i.rc
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i107, i1 true, i1 %i.uh
  br i1 %or.cond.i.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 40
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !106 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.uj, i64 %.val8.i.i.i.i) ; 2 uses
  %i.uk = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.uk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.dm
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uf, i64 32
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !123
  %i.un = call i32 @memcmp(ptr noundef %.val7.i.i.i.i, ptr noundef %i.um, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #38 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.un, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.dm
  %i.uo = sub i64 %.val8.i.i.i.i, %i.uj
  %spec.select7.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.uo, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.un, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ]
  %i.up = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i, %bb.dl
  %i.uq = phi i1 [ %i.up, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i ], [ true, %bb.dl ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.uq, ptr noundef nonnull %i.ti, ptr noundef nonnull %i.uf, ptr noundef nonnull align 8 dereferenceable(32) %i.rc) #38
  %i.ur = load i64, ptr %i.rd, align 8, !tbaa !118
  %i.us = add i64 %i.ur, 1
  store i64 %i.us, ptr %i.rd, align 8, !tbaa !118
  br label %_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateD2Ev.exit.i

_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateD2Ev.exit.i.i.i.i: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE10_Auto_nodeC2IJRS7_SD_EEERSK_DpOT_.exit.i.i.i.i
  %22 = icmp eq ptr %.val7.i.i.i.i, %i.tk
  br i1 %22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateD2Ev.exit.i.i.i.i
  %23 = icmp ult i64 %.val8.i.i.i.i, 16
  call void @llvm.assume(i1 %23)
  br label %bb.dn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285.i: ; preds = %_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateD2Ev.exit.i.i.i.i
  %24 = load i64, ptr %i.tk, align 8, !tbaa !93
  %25 = add i64 %24, 1
  call void @_ZdlPvm(ptr noundef %.val7.i.i.i.i, i64 noundef %25) #44
  br label %bb.dn

bb.dn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef 104) #44
  br label %_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateD2Ev.exit.i

_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateD2Ev.exit.i: ; preds = %bb.dn, %.thread.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  store ptr %i.re, ptr %8, align 8, !tbaa !122
  %i.ut = load ptr, ptr %i.ro, align 8, !tbaa !123 ; 2 uses
  %i.uu = load i64, ptr %i.ru, align 8, !tbaa !106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.uu, ptr %i.a, align 8, !tbaa !131
  %i.uv = icmp ugt i64 %i.uu, 15
  br i1 %i.uv, label %.noexc.i56.i, label %._crit_edge.i.i.i

.noexc.i56.i:                                     ; preds = %_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateD2Ev.exit.i
  %i.uw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc57.i unwind label %bb.ed ; 2 uses

.noexc57.i:                                       ; preds = %.noexc.i56.i
  store ptr %i.uw, ptr %8, align 8, !tbaa !123
  %i.ux = load i64, ptr %i.a, align 8, !tbaa !131
  store i64 %i.ux, ptr %i.re, align 8, !tbaa !93
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc57.i, %_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateD2Ev.exit.i
  %i.uy = phi ptr [ %i.uw, %.noexc57.i ], [ %i.re, %_ZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager14RdsUpdateStateD2Ev.exit.i ] ; 2 uses
  switch i64 %i.uu, label %bb.dp [
    i64 1, label %bb.do
    i64 0, label %bb.dq
  ]

bb.do:                                            ; preds = %._crit_edge.i.i.i
  %i.uz = load i8, ptr %i.ut, align 1, !tbaa !93
  store i8 %i.uz, ptr %i.uy, align 1, !tbaa !93
  br label %bb.dq

bb.dp:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uy, ptr align 1 %i.ut, i64 %i.uu, i1 false)
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %._crit_edge.i.i.i
  %i.va = load i64, ptr %i.a, align 8, !tbaa !131 ; 2 uses
  store i64 %i.va, ptr %i.rf, align 8, !tbaa !106
  %i.vb = load ptr, ptr %8, align 8, !tbaa !123
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.va
  store i8 0, ptr %i.vc, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  store ptr %i.rs, ptr %i.rg, align 8, !tbaa !265
  %.not.i.i.i = icmp eq ptr %i.rl, %i.rm
  br i1 %.not.i.i.i, label %bb.dt, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vd = getelementptr inbounds nuw i8, ptr %i.rl, i64 16 ; 3 uses
  store ptr %i.vd, ptr %i.rl, align 8, !tbaa !122
  %i.ve = load ptr, ptr %8, align 8, !tbaa !123   ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.re
  br i1 %i.vf, label %bb.ds, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.ds:                                            ; preds = %bb.dr
  %i.vg = load i64, ptr %i.rf, align 8, !tbaa !106 ; 3 uses
  %i.vh = icmp ult i64 %i.vg, 16
  call void @llvm.assume(i1 %i.vh)
  %i.vi = add nuw nsw i64 %i.vg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vd, ptr noundef nonnull align 8 dereferenceable(1) %i.re, i64 %i.vi, i1 false)
  br label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE9push_backEOS7_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.dr
  store ptr %i.ve, ptr %i.rl, align 8, !tbaa !123
  %i.vj = load i64, ptr %i.re, align 8, !tbaa !93
  store i64 %i.vj, ptr %i.vd, align 8, !tbaa !93
  %.pre.i105 = load i64, ptr %i.rf, align 8, !tbaa !106
  br label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE9push_backEOS7_.exit.thread.i

_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE9push_backEOS7_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.ds
  %i.vk = phi i64 [ %i.vg, %bb.ds ], [ %.pre.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.vl = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store i64 %i.vk, ptr %i.vl, align 8, !tbaa !106
  store ptr %i.re, ptr %8, align 8, !tbaa !123
  store i64 0, ptr %i.rf, align 8, !tbaa !106
  store i8 0, ptr %i.re, align 8, !tbaa !93
  %i.vm = getelementptr inbounds nuw i8, ptr %i.rl, i64 32 ; 2 uses
  store ptr null, ptr %i.vm, align 8, !tbaa !265
  %i.vn = load ptr, ptr %i.rg, align 8, !tbaa !265
  store ptr %i.vn, ptr %i.vm, align 8, !tbaa !265
  store ptr null, ptr %i.rg, align 8, !tbaa !265
  %i.vo = getelementptr inbounds nuw i8, ptr %i.rl, i64 40 ; 2 uses
  store ptr %i.vo, ptr %i.rh, align 8, !tbaa !226
  br label %_ZN9grpc_core13RefCountedPtrINS_12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager18RouteConfigWatcherEED2Ev.exit.i.i

bb.dt:                                            ; preds = %bb.dq
  %i.vp = ptrtoint ptr %i.rl to i64
  %i.vq = ptrtoint ptr %i.rn to i64
  %i.vr = sub i64 %i.vp, %i.vq                    ; 4 uses
  %i.vs = icmp eq i64 %i.vr, 9223372036854775800
  br i1 %i.vs, label %bb.du, label %_ZNKSt6vectorIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #42
          to label %.noexc63.i unwind label %.thread106.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63.i:                                       ; preds = %bb.du
  unreachable

_ZNKSt6vectorIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.dt
  %i.vt = sdiv exact i64 %i.vr, 40                ; 3 uses
  %i.vu = icmp eq ptr %i.rl, %i.rn                ; 2 uses
  %.sroa.speculated.i.i.i.i59.i = select i1 %i.vu, i64 1, i64 %i.vt
  %i.vv = add nsw i64 %.sroa.speculated.i.i.i.i59.i, %i.vt ; 2 uses
  %i.vw = icmp ult i64 %i.vv, %i.vt
  %i.vx = call i64 @llvm.umin.i64(i64 %i.vv, i64 230584300921369395)
  %i.vy = select i1 %i.vw, i64 230584300921369395, i64 %i.vx ; 3 uses
  %.not.i.i.i.i60.i = icmp ne i64 %i.vy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i60.i)
  %i.vz = mul nuw nsw i64 %i.vy, 40
  %i.wa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vz) #41
          to label %.noexc64.i unwind label %.thread106.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc64.i:                                       ; preds = %_ZNKSt6vectorIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.vr ; 5 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 3 uses
  store ptr %i.wc, ptr %i.wb, align 8, !tbaa !122
  %i.wd = load ptr, ptr %8, align 8, !tbaa !123   ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.re
  br i1 %i.we, label %bb.dv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.dv:                                            ; preds = %.noexc64.i
  %i.wf = load i64, ptr %i.rf, align 8, !tbaa !106 ; 3 uses
  %i.wg = icmp ult i64 %i.wf, 16
  call void @llvm.assume(i1 %i.wg)
  %i.wh = add nuw nsw i64 %i.wf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wc, ptr noundef nonnull align 8 dereferenceable(1) %i.re, i64 %i.wh, i1 false)
  br label %_ZZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS_13RefCountedPtrIS2_EEEN14WatcherToStartC2EOS6_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.noexc64.i
  store ptr %i.wd, ptr %i.wb, align 8, !tbaa !123
  %i.wi = load i64, ptr %i.re, align 8, !tbaa !93
  store i64 %i.wi, ptr %i.wc, align 8, !tbaa !93
  %.pre.i.i.i62.i = load i64, ptr %i.rf, align 8, !tbaa !106
  br label %_ZZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS_13RefCountedPtrIS2_EEEN14WatcherToStartC2EOS6_.exit.i.i.i.i

_ZZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS_13RefCountedPtrIS2_EEEN14WatcherToStartC2EOS6_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.dv
  %i.wj = phi i64 [ %i.wf, %bb.dv ], [ %.pre.i.i.i62.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i64 %i.wj, ptr %i.wk, align 8, !tbaa !106
  store ptr %i.re, ptr %8, align 8, !tbaa !123
  store i64 0, ptr %i.rf, align 8, !tbaa !106
  store i8 0, ptr %i.re, align 8, !tbaa !93
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wb, i64 32
  %i.wm = load ptr, ptr %i.rg, align 8, !tbaa !265
  store ptr %i.wm, ptr %i.wl, align 8, !tbaa !265
  store ptr null, ptr %i.rg, align 8, !tbaa !265
  br i1 %i.vu, label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS_13RefCountedPtrIS2_EEEN14WatcherToStartC2EOS6_.exit.i.i.i.i, %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartS7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.xd, %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartS7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i ], [ %i.wa, %_ZZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS_13RefCountedPtrIS2_EEEN14WatcherToStartC2EOS6_.exit.i.i.i.i ] ; 6 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.xc, %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartS7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i ], [ %i.rn, %_ZZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS_13RefCountedPtrIS2_EEEN14WatcherToStartC2EOS6_.exit.i.i.i.i ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.wn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.wn, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !122, !alias.scope !520
  %i.wo = load ptr, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !123, !alias.scope !521 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.wq = icmp eq ptr %i.wo, %i.wp
  br i1 %i.wq, label %bb.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.wr = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !106, !alias.scope !521 ; 3 uses
  %i.wt = icmp ult i64 %i.ws, 16
  call void @llvm.assume(i1 %i.wt)
  %i.wu = add nuw nsw i64 %i.ws, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wn, ptr noundef nonnull align 8 dereferenceable(1) %i.wp, i64 %i.wu, i1 false), !alias.scope !522
  br label %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartS7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  store ptr %i.wo, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !123, !alias.scope !520
  %i.wv = load i64, ptr %i.wp, align 8, !tbaa !93, !alias.scope !521
  store i64 %i.wv, ptr %i.wn, align 8, !tbaa !93, !alias.scope !520
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !106, !alias.scope !521
  br label %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartS7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i

_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartS7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.dw
  %i.ww = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ws, %bb.dw ]
  %i.wx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8
  %i.wy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8
  store i64 %i.ww, ptr %i.wy, align 8, !tbaa !106, !alias.scope !520
  store ptr %i.wp, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !123, !alias.scope !521
  store i64 0, ptr %i.wx, align 8, !tbaa !106, !alias.scope !521
  store i8 0, ptr %i.wp, align 8, !tbaa !93, !alias.scope !521
  %i.wz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 32
  %i.xa = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !265, !alias.scope !521
  store ptr %i.xb, ptr %i.wz, align 8, !tbaa !265, !alias.scope !520
  store ptr null, ptr %i.xa, align 8, !tbaa !265, !alias.scope !521
  %i.xc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.xc, %i.rl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !504

_ZNSt6vectorIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartSaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30.i.i.i.i: ; preds = %_ZSt19__relocate_object_aIZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS0_13RefCountedPtrIS3_EEE14WatcherToStartS7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i.i, %_ZZN9grpc_core12_GLOBAL__N_122XdsServerConfigFetcher15ListenerWatcher23FilterChainMatchManager13StartRdsWatchENS_13RefCountedPtrIS2_EEEN14WatcherToStartC2EOS6_.exit.i.i.i.i
end_hunk_0
