inline.NumInlined: 1026
inline.NumDeleted: 617
begin_hunk_0_@_ZN5folly14HeapTimekeeper5State6workerEv:bb.a
  %.not.i.i.i.peel.i.i66 = icmp eq ptr %.022.i.i, null
  br i1 %.not.i.i.i.peel.i.i66, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i67, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.preheader.i.i65
  %i.es = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 96 ; 2 uses
  store atomic i32 2, ptr %i.es release, align 4, !noalias !362
  %i.et = invoke noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %i.es, i32 noundef 1, i32 noundef -1)
          to label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i67 unwind label %.loopexit.split-lp204.loopexit ; 0 uses

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i67: ; preds = %bb.aw, %.lr.ph.i.i.preheader.i.i65
  %i.eu = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx.i.i, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc72 unwind label %.loopexit.split-lp204.loopexit ; 0 uses

.noexc72:                                         ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i67
  %i.ev = load atomic i32, ptr %.sroa.6.0..sroa_idx.i.i acquire, align 32, !noalias !362
  %.not.i.i.peel.i.i68 = icmp eq i32 %i.ev, 2
  br i1 %.not.i.i.peel.i.i68, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i69

_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i69: ; preds = %.noexc72, %.noexc73
  %i.ew = invoke noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %.sroa.6.0..sroa_idx.i.i, i32 noundef 5, ptr noundef null, ptr noundef null, i32 noundef -1)
          to label %.noexc73 unwind label %.loopexit203 ; 0 uses

.noexc73:                                         ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i69
  %i.ex = load atomic i32, ptr %.sroa.6.0..sroa_idx.i.i acquire, align 32, !noalias !362
  %.not.i.i.i.i70 = icmp eq i32 %i.ex, 2
  br i1 %.not.i.i.i.i70, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i, label %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i69, !llvm.loop !365

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i: ; preds = %.noexc73, %.noexc72, %bb.av
  %i.ey = load atomic i64, ptr %i.ae monotonic, align 8, !noalias !362
  %i.ez = and i64 %i.ey, -2
  %i.fa = inttoptr i64 %i.ez to ptr
  br label %bb.bb, !llvm.loop !366

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i59: ; preds = %bb.au
  %i.fb = invoke noundef zeroext i1 @_ZN5folly6detail17distributed_mutex4spinINS1_6WaiterISt6atomicEEEEbRT_Rjj(ptr noundef nonnull align 64 dereferenceable(192) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %.017.i.i55)
          to label %.noexc74 unwind label %.loopexit.split-lp204.loopexit

.noexc74:                                         ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i59
  br i1 %i.fb, label %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i60, label %bb.bb, !llvm.loop !366

_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i60: ; preds = %.noexc74, %bb.av
  %i.fc = load i64, ptr %i.ac, align 16, !noalias !362 ; 4 uses
  %i.fd = icmp eq i64 %.0.i.i58, %i.fc            ; 2 uses
  %spec.select.i.i61 = select i1 %i.fd, i64 1, i64 %i.ad
  %i.fe = load i32, ptr %i.a, align 4, !tbaa !7, !noalias !362 ; 4 uses
  %i.ff = icmp eq i32 %i.fe, 7
  %i.fg = icmp eq i32 %i.fe, 10                   ; 2 uses
  %or.cond.i.i62 = or i1 %i.ff, %i.fg
  switch i32 %i.fe, label %bb.bc [
    i32 10, label %bb.ax
    i32 7, label %bb.ax
  ]

bb.ax:                                            ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i60, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i60
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !362
  br i1 %i.fg, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i63, label %"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State6workerEvE3$_1EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit.i.i", !prof !215

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i63: ; preds = %bb.ax
  %i.fh = inttoptr i64 %i.fc to ptr
  store ptr null, ptr %i.ac, align 16, !tbaa !48, !noalias !362
  store ptr %i.fh, ptr %7, align 8, !tbaa !48, !noalias !362
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull %7) #29
          to label %bb.ay unwind label %bb.az, !noalias !362

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i63
  unreachable

bb.az:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i63
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = load ptr, ptr %7, align 8, !tbaa !48, !noalias !362
  %.not.i6.i.i.i.i64 = icmp eq ptr %i.fj, null
  br i1 %.not.i6.i.i.i.i64, label %.body, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #18, !noalias !362
  br label %.body

"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State6workerEvE3$_1EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit.i.i": ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !362
  %i.fk = trunc i64 %i.fc to i1
  br label %bb.bc

bb.bb:                                            ; preds = %.noexc74, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i
  %.227.i.i = phi ptr [ %.022.i.i, %.noexc74 ], [ %i.fa, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread30.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !362
  br label %_ZN5folly6detail17distributed_mutex6WaiterISt6atomicE10initializeEmNS0_17InlineFunctionRefIFvvELm48EEE.exit.i.i54

bb.bc:                                            ; preds = %"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State6workerEvE3$_1EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit.i.i", %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i60
  %.sroa.5.0.i = phi i1 [ undef, %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.thread.i.i60 ], [ %i.fk, %"_ZN5folly6detail17distributed_mutex6detachINS1_6WaiterISt6atomicEEZNS_14HeapTimekeeper5State6workerEvE3$_1EEvRNS1_17RequestWithReturnIT0_EERT_bRNS_4UnitE.exit.i.i" ] ; 2 uses
  %i.fl = and i64 %.0.i.i58, -2
  %i.fm = select i1 %i.fd, i64 0, i64 %i.fl
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = load i64, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !tbaa !31, !noalias !362
  %i.fp = and i64 %i.fo, -2
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = zext i1 %or.cond.i.i62 to i8
  store ptr %i.fn, ptr %9, align 8, !tbaa !245, !alias.scope !362
  store i64 %spec.select.i.i61, ptr %i.af, align 8, !tbaa !248, !alias.scope !362
  store i8 %i.eo, ptr %i.ag, align 8, !tbaa !249, !alias.scope !362
  store i8 %i.fr, ptr %i.ah, align 1, !tbaa !250, !alias.scope !362
  store i64 %i.fc, ptr %i.ai, align 8, !tbaa !256, !alias.scope !362
  store ptr %i.fq, ptr %i.aj, align 8, !tbaa !257, !alias.scope !362
  store ptr %.022.i.i, ptr %i.ak, align 8, !tbaa !251, !alias.scope !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !362
  switch i32 %i.fe, label %bb.bd [
    i32 10, label %bb.bf
    i32 7, label %bb.bf
  ]

bb.bd:                                            ; preds = %bb.bc, %.thread.i
  %i.fs = load ptr, ptr %i.x, align 8, !tbaa !303
  store ptr null, ptr %i.x, align 8, !tbaa !303
  %i.ft = icmp eq ptr %i.fs, null
  invoke void @_ZN5folly6detail17distributed_mutex16DistributedMutexISt6atomicLb1EE6unlockERKNS4_26DistributedMutexStateProxyE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.bg unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #27
  unreachable

bb.bf:                                            ; preds = %bb.bc, %bb.bc
  %i.fw = trunc nuw i8 %i.eo to i1
  br i1 %i.fw, label %.noexc15.i, label %bb.bg, !prof !215

.noexc15.i:                                       ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN5folly10ParkingLotIjE6unparkIPKSt6atomicImEZNS_6detail19atomic_notification22atomic_notify_one_implITtTpTyES3_mJEEEvPKT_IJT0_DpT1_EEEUlRKT_E_EEvSH_OSB_(ptr noundef nonnull align 8 dereferenceable(8) @_ZN5folly6detail19atomic_notification10parkingLotE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc75 unwind label %.loopexit.split-lp204.loopexit.split-lp

.noexc75:                                         ; preds = %.noexc15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br i1 %.sroa.5.0.i, label %bb.bh, label %bb.bj

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %.09.i = phi i1 [ %i.ft, %bb.bd ], [ %.sroa.5.0.i, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br i1 %.09.i, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %.noexc75, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store i64 2000, ptr %18, align 8
  store i8 1, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store i64 9223372036854775807, ptr %14, align 8
  %i.fx = load atomic i32, ptr %16 acquire, align 4
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit, label %bb.bi, !prof !244

bb.bi:                                            ; preds = %bb.bh
  %i.fz = call noundef zeroext i1 @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 4 dereferenceable(4) %16, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(9) %18) #18 ; 0 uses
  br label %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit

_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.bj

.loopexit203:                                     ; preds = %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.i.i69
  %lpad.loopexit205 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp204.loopexit:                   ; preds = %_ZN5folly6detail17distributed_mutex4waitINS1_6WaiterISt6atomicEEEEbPT_jRS7_Rj.exit.i.i59, %_ZN5folly6detail17distributed_mutex11doFutexWakeINS1_6WaiterISt6atomicEEEEvPT_.exit.i.i.peel.i.i67, %bb.aw
  %lpad.loopexit212 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp204.loopexit.split-lp:          ; preds = %.noexc15.i
  %lpad.loopexit.split-lp213 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bj:                                            ; preds = %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit, %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE4waitERKNS_11WaitOptionsE.exit, %bb.bg, %_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE14try_wait_untilINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE.exit.thread, %.noexc75, %bb.aq
  %i.ga = load ptr, ptr %15, align 16, !tbaa !358 ; 2 uses
  %i.gb = load ptr, ptr %i.u, align 8, !tbaa !358 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %.preheader211, label %.lr.ph

.preheader211:                                    ; preds = %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit, %bb.bj
  %i.gd = load ptr, ptr %i.y, align 8, !tbaa !361 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.critedge, label %.lr.ph302

.lr.ph:                                           ; preds = %bb.bj, %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit
  %.sroa.0165.0301 = phi ptr [ %i.hu, %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit ], [ %i.ga, %bb.bj ] ; 4 uses
  %i.gf = load i32, ptr %.sroa.0165.0301, align 8, !tbaa !233
  switch i32 %i.gf, label %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit [
    i32 0, label %bb.bk
    i32 1, label %bb.bn
  ]

bb.bk:                                            ; preds = %.lr.ph
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0165.0301, i64 8 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !20 ; 5 uses
  store ptr null, ptr %i.gg, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i8 0, i64 24, i1 false)
  %i.gi = load ptr, ptr %i.y, align 8, !tbaa !361 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.bl, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.bk
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !75
  br label %.preheader.i

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.gh, ptr %i.y, align 8, !tbaa !367
  store ptr null, ptr %i.gh, align 8, !tbaa !136
  br label %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi i64 [ %23, %.preheader.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.pre.i, %.preheader.preheader.i ] ; 2 uses
  %.030.i.i.a = phi ptr [ %i.gn, %.preheader.i ], [ %i.gi, %.preheader.preheader.i ] ; 3 uses
  %.029.i.i.a = phi ptr [ %.032..0.i.i, %.preheader.i ], [ null, %.preheader.preheader.i ]
  %.0.i.i78.a = phi ptr [ %i.go, %.preheader.i ], [ %i.y, %.preheader.preheader.i ]
  %.0.i.i78 = phi ptr [ %.0..032.i.i, %.preheader.i ], [ %i.gh, %.preheader.preheader.i ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.030.i.i.a, i64 24
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i = load i64, ptr %i.gk, align 8, !tbaa !75 ; 2 uses
  %i.gl = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i2.i.i.i.i.i.i ; 2 uses
  %.032..0.i.i = select i1 %i.gl, ptr %.030.i.i.a, ptr %.0.i.i78, !unpredictable !27 ; 6 uses
  %.0..032.i.i = select i1 %i.gl, ptr %.0.i.i78, ptr %.030.i.i.a, !unpredictable !27 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 16 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !368 ; 2 uses
  store ptr %.032..0.i.i, ptr %.0.i.i78.a, align 8, !tbaa !367
  %i.go = getelementptr inbounds nuw i8, ptr %.032..0.i.i, i64 8 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !369
  store ptr %i.gp, ptr %i.gm, align 8, !tbaa !368
  store ptr %.029.i.i.a, ptr %.032..0.i.i, align 8, !tbaa !136
  %.not.i.i = icmp eq ptr %i.gn, null
  %23 = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i2.i.i.i.i.i.i)
  br i1 %.not.i.i, label %bb.bm, label %.preheader.i, !llvm.loop !370

bb.bm:                                            ; preds = %.preheader.i
  store ptr %.0..032.i.i, ptr %i.go, align 8, !tbaa !367
  store ptr %.032..0.i.i, ptr %.0..032.i.i, align 8, !tbaa !136
  br label %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit

bb.bn:                                            ; preds = %.lr.ph
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0165.0301, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !20 ; 9 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !136 ; 5 uses
  %magicptr = ptrtoint ptr %i.gs to i64
  switch i64 %magicptr, label %bb.bo [
    i64 1, label %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit
    i64 0, label %bb.bp
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !369
  %i.gv = icmp eq ptr %i.gu, %i.gr
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %spec.select.i = select i1 %i.gv, ptr %i.gt, ptr %i.gw
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.0.i79 = phi ptr [ %spec.select.i, %bb.bo ], [ %i.y, %bb.bn ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !369 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !368 ; 3 uses
  %i.hb = icmp eq ptr %i.gy, null                 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, null
  %or.cond.i.i80 = or i1 %i.hb, %i.hc
  br i1 %or.cond.i.i80, label %bb.bq, label %.preheader.preheader.i81

.preheader.preheader.i81:                         ; preds = %bb.bp
  %.phi.trans.insert.i82 = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.pre.i83 = load i64, ptr %.phi.trans.insert.i82, align 8, !tbaa !75
  br label %.preheader.i81

bb.bq:                                            ; preds = %bb.bp
  %i.hd = select i1 %i.hb, ptr %i.ha, ptr %i.gy   ; 3 uses
  store ptr %i.hd, ptr %.0.i79, align 8, !tbaa !367
  %.not38.i.i = icmp eq ptr %i.hd, null
  br i1 %.not38.i.i, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store ptr %i.gs, ptr %i.hd, align 8, !tbaa !136
  br label %bb.bt

.preheader.i81:                                   ; preds = %.preheader.i81, %.preheader.preheader.i81
  %.sroa.0.0.copyload.i.i.i.i.i.i.i85 = phi i64 [ %24, %.preheader.i81 ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.pre.i83, %.preheader.preheader.i81 ] ; 2 uses
  %.030.i.i83 = phi ptr [ %i.hh, %.preheader.i81 ], [ %i.ha, %.preheader.preheader.i81 ] ; 3 uses
  %.029.i.i84 = phi ptr [ %.032..0.i.i88, %.preheader.i81 ], [ %i.gs, %.preheader.preheader.i81 ]
  %.0.i.i85 = phi ptr [ %i.hi, %.preheader.i81 ], [ %.0.i79, %.preheader.preheader.i81 ]
  %.0.i.i89 = phi ptr [ %.0..032.i.i89, %.preheader.i81 ], [ %i.gy, %.preheader.preheader.i81 ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.030.i.i83, i64 24
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i87 = load i64, ptr %i.he, align 8, !tbaa !75 ; 2 uses
  %i.hf = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i85, %.sroa.0.0.copyload.i2.i.i.i.i.i.i87 ; 2 uses
  %.032..0.i.i88 = select i1 %i.hf, ptr %.030.i.i83, ptr %.0.i.i89, !unpredictable !27 ; 6 uses
  %.0..032.i.i89 = select i1 %i.hf, ptr %.0.i.i89, ptr %.030.i.i83, !unpredictable !27 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.032..0.i.i88, i64 16 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !368 ; 2 uses
  store ptr %.032..0.i.i88, ptr %.0.i.i85, align 8, !tbaa !367
  %i.hi = getelementptr inbounds nuw i8, ptr %.032..0.i.i88, i64 8 ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !369
  store ptr %i.hj, ptr %i.hg, align 8, !tbaa !368
  store ptr %.029.i.i84, ptr %.032..0.i.i88, align 8, !tbaa !136
  %.not.i.i90 = icmp eq ptr %i.hh, null
  %24 = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i85, i64 %.sroa.0.0.copyload.i2.i.i.i.i.i.i87)
  br i1 %.not.i.i90, label %bb.bs, label %.preheader.i81, !llvm.loop !370

bb.bs:                                            ; preds = %.preheader.i81
  store ptr %.0..032.i.i89, ptr %i.hi, align 8, !tbaa !367
  store ptr %.032..0.i.i88, ptr %.0..032.i.i89, align 8, !tbaa !136
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  store ptr inttoptr (i64 1 to ptr), ptr %i.gr, align 8, !tbaa !136
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.hl = atomicrmw sub ptr %i.hk, i8 1 acq_rel, align 1
  %.not.i = icmp eq i8 %i.hl, 1
  br i1 %.not.i, label %bb.bu, label %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit

bb.bu:                                            ; preds = %bb.bt
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gr, i64 48 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i91 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i91, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !25, !range !26, !noundef !27
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.hn) #18
  %.pre.i.i.i.i = load ptr, ptr %i.hm, align 8, !tbaa !22
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.hr = phi ptr [ %.pre.i.i.i.i, %bb.bw ], [ %i.hn, %bb.bv ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.hr)
          to label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #27
  unreachable

_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i:     ; preds = %bb.bx, %bb.bu
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.gr, i64 noundef 56) #26
  br label %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit

_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE4pushEPS2_.exit: ; preds = %bb.bn, %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i, %bb.bt, %bb.bm, %bb.bl, %.lr.ph
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0165.0301, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.gb
  br i1 %i.hv, label %.preheader211, label %.lr.ph

.lr.ph302:                                        ; preds = %.preheader211, %_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit114
  %i.hw = phi ptr [ %i.kf, %_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit114 ], [ %i.gd, %.preheader211 ]
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #18
  %.sroa.0.0.copyload.i.i92 = load i64, ptr %i.hx, align 8, !tbaa !75
  %.not198 = icmp sgt i64 %.sroa.0.0.copyload.i.i92, %i.hy
  br i1 %.not198, label %.critedge, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph302
  %i.hz = load ptr, ptr %i.y, align 8, !tbaa !361 ; 11 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !369 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !368 ; 3 uses
  %i.if = icmp eq ptr %i.ic, null                 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, null
  %or.cond.i.i94 = or i1 %i.if, %i.ig
  br i1 %or.cond.i.i94, label %bb.cb, label %.preheader.preheader.i98

.preheader.preheader.i98:                         ; preds = %bb.ca
  %.phi.trans.insert.i99 = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.pre.i100 = load i64, ptr %.phi.trans.insert.i99, align 8, !tbaa !75
  br label %.preheader.i95

bb.cb:                                            ; preds = %bb.ca
  %i.ih = select i1 %i.if, ptr %i.ie, ptr %i.ic   ; 3 uses
  store ptr %i.ih, ptr %i.y, align 8, !tbaa !367
  %.not38.i.i105 = icmp eq ptr %i.ih, null
  br i1 %.not38.i.i105, label %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESA_SA_PSA_.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store ptr null, ptr %i.ih, align 8, !tbaa !136
  br label %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESA_SA_PSA_.exit.i

.preheader.i95:                                   ; preds = %.preheader.i95, %.preheader.preheader.i98
  %.sroa.0.0.copyload.i.i.i.i.i.i.i102 = phi i64 [ %25, %.preheader.i95 ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.pre.i100, %.preheader.preheader.i98 ] ; 2 uses
  %.030.i.i97 = phi ptr [ %i.il, %.preheader.i95 ], [ %i.ie, %.preheader.preheader.i98 ] ; 3 uses
  %.029.i.i98 = phi ptr [ %.032..0.i.i102, %.preheader.i95 ], [ null, %.preheader.preheader.i98 ]
  %.0.i.i99 = phi ptr [ %i.im, %.preheader.i95 ], [ %i.y, %.preheader.preheader.i98 ]
  %.0.i.i106 = phi ptr [ %.0..032.i.i103, %.preheader.i95 ], [ %i.ic, %.preheader.preheader.i98 ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.030.i.i97, i64 24
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i101 = load i64, ptr %i.ii, align 8, !tbaa !75 ; 2 uses
  %i.ij = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i102, %.sroa.0.0.copyload.i2.i.i.i.i.i.i101 ; 2 uses
  %.032..0.i.i102 = select i1 %i.ij, ptr %.030.i.i97, ptr %.0.i.i106, !unpredictable !27 ; 6 uses
  %.0..032.i.i103 = select i1 %i.ij, ptr %.0.i.i106, ptr %.030.i.i97, !unpredictable !27 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.032..0.i.i102, i64 16 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !368 ; 2 uses
  store ptr %.032..0.i.i102, ptr %.0.i.i99, align 8, !tbaa !367
  %i.im = getelementptr inbounds nuw i8, ptr %.032..0.i.i102, i64 8 ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !369
  store ptr %i.in, ptr %i.ik, align 8, !tbaa !368
  store ptr %.029.i.i98, ptr %.032..0.i.i102, align 8, !tbaa !136
  %.not.i.i104 = icmp eq ptr %i.il, null
  %25 = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i102, i64 %.sroa.0.0.copyload.i2.i.i.i.i.i.i101)
  br i1 %.not.i.i104, label %bb.cd, label %.preheader.i95, !llvm.loop !370

bb.cd:                                            ; preds = %.preheader.i95
  store ptr %.0..032.i.i103, ptr %i.im, align 8, !tbaa !367
  store ptr %.032..0.i.i102, ptr %.0..032.i.i103, align 8, !tbaa !136
  br label %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESA_SA_PSA_.exit.i

_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESA_SA_PSA_.exit.i: ; preds = %bb.cd, %bb.cc, %bb.cb
  store ptr inttoptr (i64 1 to ptr), ptr %i.hz, align 8, !tbaa !136
  br label %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit

_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit: ; preds = %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE5mergeEPNS_17IntrusiveHeapNodeIvEESA_SA_PSA_.exit.i, %bb.bz
  store i32 0, ptr %19, align 8, !tbaa !62
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 33
  %i.ip = atomicrmw xchg ptr %i.io, i8 1 monotonic, align 1
  %i.iq = trunc i8 %i.ip to i1
  br i1 %i.iq, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hz, i64 40 ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !45, !range !26, !noundef !27 ; 2 uses
  store i8 0, ptr %i.ir, align 1, !tbaa !45
  store i8 %i.is, ptr %5, align 8, !tbaa !25
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 48 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !46 ; 8 uses
  store ptr null, ptr %i.it, align 8, !tbaa !46
  store ptr %i.iu, ptr %i.al, align 8, !tbaa !22
  %.not.i.i.i.i159 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i159, label %bb.cf, label %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i.i

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN5folly6detail16throw_exception_INS_14PromiseInvalidEJEEEvDpT0_() #9
          to label %.noexc160 unwind label %bb.cr

.noexc160:                                        ; preds = %bb.cf
  unreachable

_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i.i: ; preds = %bb.ce
  %i.iv = call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.iu) #18
  br i1 %i.iv, label %bb.cg, label %_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit.i

bb.cg:                                            ; preds = %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i.i
  invoke void @_ZN5folly6detail16throw_exception_INS_23PromiseAlreadySatisfiedEJEEEvDpT0_() #9
          to label %.noexc161 unwind label %bb.cr

.noexc161:                                        ; preds = %bb.cg
  unreachable

_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit.i: ; preds = %_ZNK5folly7PromiseINS_4UnitEE7getCoreEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store i64 0, ptr %1, align 8, !tbaa !68
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 136
  %i.ix = load i32, ptr %19, align 8, !tbaa !62   ; 2 uses
  store i32 %i.ix, ptr %i.iw, align 8, !tbaa !62
  %cond.i.i.i.i.i = icmp eq i32 %i.ix, 1
  br i1 %cond.i.i.i.i.i, label %bb.ch, label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.i

bb.ch:                                            ; preds = %_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 144
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.iz = load i64, ptr %i.am, align 8, !noalias !371
  store i64 %i.iz, ptr %i.iy, align 8, !alias.scope !371
  store i64 0, ptr %i.am, align 8, !noalias !371
  br label %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.i

_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.i:       ; preds = %bb.ch, %_ZNK5folly7PromiseINS_4UnitEE16throwIfFulfilledEv.exit.i
  invoke void @_ZN5folly7futures6detail8CoreBase10setResult_EONS_17ExecutorKeepAliveINS_8ExecutorEEE(ptr noundef nonnull align 16 dereferenceable(160) %i.iu, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i.i unwind label %bb.ck

_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i.i: ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.i
  %i.ja = load i64, ptr %1, align 8, !tbaa !68    ; 2 uses
  %i.jb = and i64 %i.ja, -4                       ; 2 uses
  %i.jc = inttoptr i64 %i.jb to ptr               ; 2 uses
  %.not.i.i.i2.i = icmp eq i64 %i.jb, 0
  br i1 %.not.i.i.i2.i, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i.i
  store i64 0, ptr %1, align 8, !tbaa !75
  %i.jd = and i64 %i.ja, 3
  %.not3.i.i.i.i = icmp eq i64 %i.jd, 0
  br i1 %.not3.i.i.i.i, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  %i.je = load ptr, ptr %i.jc, align 8, !tbaa !43
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(8) %i.jc) #18, !call_target !77, !inline_history !374
  br label %bb.cn

bb.ck:                                            ; preds = %_ZN5folly3TryINS_4UnitEEC2EOS2_.exit.i.i.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  %i.ji = load i64, ptr %1, align 8, !tbaa !68    ; 2 uses
  %i.jj = and i64 %i.ji, -4                       ; 2 uses
  %i.jk = inttoptr i64 %i.jj to ptr               ; 2 uses
  %.not.i.i3.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i.i3.i.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i64 0, ptr %1, align 8, !tbaa !75
  %i.jl = and i64 %i.ji, 3
  %.not3.i.i4.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not3.i.i4.i.i, label %bb.cm, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !43
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(8) %i.jk) #18, !call_target !77, !inline_history !374
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i.i

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i.i: ; preds = %bb.cm, %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %.body162

bb.cn:                                            ; preds = %_ZN5folly7futures6detail4CoreINS_4UnitEE9setResultEONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EE.exit.i.i, %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.jp = trunc nuw i8 %i.is to i1
  br i1 %i.jp, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.iu) #18
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.iu)
          to label %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #27
  unreachable

bb.cr:                                            ; preds = %bb.cg, %bb.cf
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.body162

.body162:                                         ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i.i, %bb.cr
  %eh.lpad-body163 = phi { ptr, i32 } [ %i.js, %bb.cr ], [ %i.jh, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i.i ] ; 3 uses
  call void @_ZN5folly7PromiseINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.jt = load i32, ptr %19, align 8, !tbaa !62
  %cond.i115 = icmp eq i32 %i.jt, 1
  br i1 %cond.i115, label %bb.cz, label %.body, !prof !228

_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.pr = load i32, ptr %19, align 8, !tbaa !62
  %cond.i = icmp eq i32 %.pr, 1
  br i1 %cond.i, label %bb.cs, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, !prof !375

bb.cs:                                            ; preds = %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit
  %i.ju = load ptr, ptr %i.am, align 8, !tbaa !48
  %.not.i.i.i109 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i109, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #18
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit:     ; preds = %_ZN5folly13IntrusiveHeapINS_14HeapTimekeeper7TimeoutESt4lessIvEvNS_17DerivedNodeTraitsIS2_vEEE3popEv.exit, %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit, %bb.cs, %bb.ct
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.jw = atomicrmw sub ptr %i.jv, i8 1 acq_rel, align 1
  %.not.i110 = icmp eq i8 %i.jw, 1
  br i1 %.not.i110, label %bb.cu, label %_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit114

bb.cu:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hz, i64 48 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i111 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i111, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i113, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.ka = load i8, ptr %i.jz, align 8, !tbaa !25, !range !26, !noundef !27
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.jy) #18
  %.pre.i.i.i.i112 = load ptr, ptr %i.jx, align 8, !tbaa !22
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.kc = phi ptr [ %.pre.i.i.i.i112, %bb.cw ], [ %i.jy, %bb.cv ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.kc)
          to label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i113 unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kd = landingpad { ptr, i32 }
          catch ptr null
  %i.ke = extractvalue { ptr, i32 } %i.kd, 0
  call void @__clang_call_terminate(ptr %i.ke) #27
  unreachable

_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i113:  ; preds = %bb.cx, %bb.cu
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.hz, i64 noundef 56) #26
  br label %_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit114

_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit114: ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit, %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i113
  %i.kf = load ptr, ptr %i.y, align 8, !tbaa !361 ; 2 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %.critedge, label %.lr.ph302, !llvm.loop !376

bb.cz:                                            ; preds = %.body162
  %i.kh = load ptr, ptr %i.am, align 8, !tbaa !48
  %.not.i.i.i116 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i116, label %.body, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #18
  br label %.body

.critedge:                                        ; preds = %.lr.ph302, %_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit114, %.preheader211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.b

.body:                                            ; preds = %.loopexit203, %.loopexit.split-lp204.loopexit.split-lp, %.loopexit.split-lp204.loopexit, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.da, %bb.cz, %.body162, %bb.az, %bb.ba, %bb.ac, %bb.ab
  %.pn36 = phi { ptr, i32 } [ %eh.lpad-body163, %bb.cz ], [ %i.de, %bb.ab ], [ %eh.lpad-body163, %.body162 ], [ %i.fi, %bb.ba ], [ %i.fi, %bb.az ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.de, %bb.ac ], [ %eh.lpad-body163, %bb.da ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit200, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit207, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit215, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit205, %.loopexit203 ], [ %lpad.loopexit212, %.loopexit.split-lp204.loopexit ], [ %lpad.loopexit.split-lp213, %.loopexit.split-lp204.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.dz

.preheader:                                       ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.ki = load ptr, ptr %i.y, align 8, !tbaa !361 ; 2 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %._crit_edge, label %.lr.ph306

.lr.ph306:                                        ; preds = %.preheader
  %i.kk = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph306, %_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit148
  %i.km = phi ptr [ %i.ki, %.lr.ph306 ], [ %i.me, %_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit148 ] ; 10 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !369 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !368 ; 3 uses
  %i.kr = icmp eq ptr %i.ko, null                 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, null
  %or.cond.i.i118 = or i1 %i.kr, %i.ks
  br i1 %or.cond.i.i118, label %bb.dc, label %.preheader.preheader.i125

.preheader.preheader.i125:                        ; preds = %bb.db
  %.phi.trans.insert.i126 = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.pre.i127 = load i64, ptr %.phi.trans.insert.i126, align 8, !tbaa !75
  br label %.preheader.i119

bb.dc:                                            ; preds = %bb.db
  %i.kt = select i1 %i.kr, ptr %i.kq, ptr %i.ko   ; 3 uses
  store ptr %i.kt, ptr %i.y, align 8, !tbaa !367
  %.not38.i.i130 = icmp eq ptr %i.kt, null
  br i1 %.not38.i.i130, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store ptr null, ptr %i.kt, align 8, !tbaa !136
  br label %bb.df

.preheader.i119:                                  ; preds = %.preheader.i119, %.preheader.preheader.i125
  %.sroa.0.0.copyload.i.i.i.i.i.i.i129 = phi i64 [ %26, %.preheader.i119 ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.pre.i127, %.preheader.preheader.i125 ] ; 2 uses
  %.030.i.i121 = phi ptr [ %i.kx, %.preheader.i119 ], [ %i.kq, %.preheader.preheader.i125 ] ; 3 uses
  %.029.i.i122 = phi ptr [ %.032..0.i.i126, %.preheader.i119 ], [ null, %.preheader.preheader.i125 ]
  %.0.i.i123 = phi ptr [ %i.ky, %.preheader.i119 ], [ %i.y, %.preheader.preheader.i125 ]
  %.0.i.i133 = phi ptr [ %.0..032.i.i127, %.preheader.i119 ], [ %i.ko, %.preheader.preheader.i125 ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.030.i.i121, i64 24
  %.sroa.0.0.copyload.i2.i.i.i.i.i.i125 = load i64, ptr %i.ku, align 8, !tbaa !75 ; 2 uses
  %i.kv = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i129, %.sroa.0.0.copyload.i2.i.i.i.i.i.i125 ; 2 uses
  %.032..0.i.i126 = select i1 %i.kv, ptr %.030.i.i121, ptr %.0.i.i133, !unpredictable !27 ; 6 uses
  %.0..032.i.i127 = select i1 %i.kv, ptr %.0.i.i133, ptr %.030.i.i121, !unpredictable !27 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.032..0.i.i126, i64 16 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !368 ; 2 uses
  store ptr %.032..0.i.i126, ptr %.0.i.i123, align 8, !tbaa !367
  %i.ky = getelementptr inbounds nuw i8, ptr %.032..0.i.i126, i64 8 ; 3 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !369
  store ptr %i.kz, ptr %i.kw, align 8, !tbaa !368
  store ptr %.029.i.i122, ptr %.032..0.i.i126, align 8, !tbaa !136
  %.not.i.i128 = icmp eq ptr %i.kx, null
  %26 = call i64 @llvm.smax.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i129, i64 %.sroa.0.0.copyload.i2.i.i.i.i.i.i125)
  br i1 %.not.i.i128, label %bb.de, label %.preheader.i119, !llvm.loop !370

bb.de:                                            ; preds = %.preheader.i119
  store ptr %.0..032.i.i127, ptr %i.ky, align 8, !tbaa !367
  store ptr %.032..0.i.i126, ptr %.0..032.i.i127, align 8, !tbaa !136
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  store ptr inttoptr (i64 1 to ptr), ptr %i.km, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.1)
          to label %bb.dg unwind label %bb.du

bb.dg:                                            ; preds = %bb.df
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly18FutureNoTimekeeperE, i64 16), ptr %22, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %22, ptr %4, align 8, !noalias !377
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeINS_18FutureNoTimekeeperEJOS3_EEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrES9_E3arg, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i32 1, ptr %20, align 8, !tbaa !62
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.la = load i64, ptr %21, align 8, !noalias !380 ; 2 uses
  store i64 %i.la, ptr %i.kk, align 8, !alias.scope !380
  store i64 0, ptr %21, align 8, !noalias !380
  %i.lb = getelementptr inbounds nuw i8, ptr %i.km, i64 33
  %i.lc = atomicrmw xchg ptr %i.lb, i8 1 monotonic, align 1
  %i.ld = trunc i8 %i.lc to i1
  %i.le = inttoptr i64 %i.la to ptr
  br i1 %i.ld, label %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139.thread, label %bb.dh, !prof !74

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.lf = getelementptr inbounds nuw i8, ptr %i.km, i64 40 ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 8, !tbaa !45, !range !26, !noundef !27
  store i8 0, ptr %i.lf, align 8, !tbaa !45
  store i8 %i.lg, ptr %3, align 8, !tbaa !25
  %i.lh = getelementptr inbounds nuw i8, ptr %i.km, i64 48 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !46
  store ptr null, ptr %i.lh, align 8, !tbaa !46
  store ptr %i.li, ptr %i.kl, align 8, !tbaa !22
  invoke void @_ZN5folly7PromiseINS_4UnitEE6setTryEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.di unwind label %.body137

bb.di:                                            ; preds = %bb.dh
  %i.lj = load ptr, ptr %i.kl, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i133 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i133, label %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lk = load i8, ptr %3, align 8, !tbaa !25, !range !26, !noundef !27
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.lj) #18
  %.pre.i.i.i134 = load ptr, ptr %i.kl, align 8, !tbaa !22
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.lm = phi ptr [ %.pre.i.i.i134, %bb.dk ], [ %i.lj, %bb.dj ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.lm)
          to label %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139 unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #27
  unreachable

.body137:                                         ; preds = %bb.dh
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7PromiseINS_4UnitEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.lq = load i32, ptr %20, align 8, !tbaa !62
  %cond.i149 = icmp eq i32 %i.lq, 1
  br i1 %cond.i149, label %bb.dv, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit151, !prof !228

_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139: ; preds = %bb.di, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.pre = load i32, ptr %20, align 8, !tbaa !62
  %i.lr = icmp eq i32 %.pre, 1
  br i1 %i.lr, label %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139.threadthread-pre-split, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit142, !prof !85

_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139.threadthread-pre-split: ; preds = %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139
  %.pr370 = load ptr, ptr %i.kk, align 8, !tbaa !48
  br label %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139.thread

_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139.thread: ; preds = %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139.threadthread-pre-split, %bb.dg
  %i.ls = phi ptr [ %.pr370, %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139.threadthread-pre-split ], [ %i.le, %bb.dg ]
  %.not.i.i.i141 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i141, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit142, label %bb.dn

bb.dn:                                            ; preds = %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139.thread
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kk) #18
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit142

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit142:  ; preds = %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139, %_ZN5folly14HeapTimekeeper7Timeout10tryFulfillENS_3TryINS_4UnitEEE.exit139.thread, %bb.dn
  %i.lt = load ptr, ptr %21, align 8, !tbaa !48
  %.not.i.i143 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i143, label %_ZN5folly17exception_wrapperD2Ev.exit, label %bb.do

bb.do:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit142
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  br label %_ZN5folly17exception_wrapperD2Ev.exit

_ZN5folly17exception_wrapperD2Ev.exit:            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit142, %bb.do
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.lu = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.lv = atomicrmw sub ptr %i.lu, i8 1 acq_rel, align 1
  %.not.i144 = icmp eq i8 %i.lv, 1
  br i1 %.not.i144, label %bb.dp, label %_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit148

bb.dp:                                            ; preds = %_ZN5folly17exception_wrapperD2Ev.exit
  %i.lw = getelementptr inbounds nuw i8, ptr %i.km, i64 48 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i145 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i.i145, label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i147, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ly = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.lz = load i8, ptr %i.ly, align 8, !tbaa !25, !range !26, !noundef !27
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.lx) #18
  %.pre.i.i.i.i146 = load ptr, ptr %i.lw, align 8, !tbaa !22
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.mb = phi ptr [ %.pre.i.i.i.i146, %bb.dr ], [ %i.lx, %bb.dq ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultINS_4UnitEEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.mb)
          to label %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i147 unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.mc = landingpad { ptr, i32 }
          catch ptr null
  %i.md = extractvalue { ptr, i32 } %i.mc, 0
  call void @__clang_call_terminate(ptr %i.md) #27
  unreachable

_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i147:  ; preds = %bb.ds, %bb.dp
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.km, i64 noundef 56) #26
  br label %_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit148

_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit148: ; preds = %_ZN5folly17exception_wrapperD2Ev.exit, %_ZN5folly14HeapTimekeeper7TimeoutD2Ev.exit.i147
  %i.me = load ptr, ptr %i.y, align 8, !tbaa !361 ; 2 uses
  %i.mf = icmp eq ptr %i.me, null
  br i1 %i.mf, label %._crit_edge, label %bb.db, !llvm.loop !383

bb.du:                                            ; preds = %bb.df
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dv:                                            ; preds = %.body137
  %i.mh = load ptr, ptr %i.kk, align 8, !tbaa !48
  %.not.i.i.i150 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i150, label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit151, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kk) #18
  br label %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit151

_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit151:  ; preds = %.body137, %bb.dv, %bb.dw
  %i.mi = load ptr, ptr %21, align 8, !tbaa !48
  %.not.i.i152 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i152, label %_ZN5folly17exception_wrapperD2Ev.exit153, label %bb.dx

bb.dx:                                            ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit151
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  br label %_ZN5folly17exception_wrapperD2Ev.exit153

_ZN5folly17exception_wrapperD2Ev.exit153:         ; preds = %_ZN5folly6detail7TryBaseINS_4UnitEED2Ev.exit151, %bb.dx
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #18
  br label %bb.dy

bb.dy:                                            ; preds = %_ZN5folly17exception_wrapperD2Ev.exit153, %bb.du
  %.pn38 = phi { ptr, i32 } [ %i.lp, %_ZN5folly17exception_wrapperD2Ev.exit153 ], [ %i.mg, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.dz

._crit_edge:                                      ; preds = %_ZN5folly14HeapTimekeeper7Timeout6decRefEv.exit148, %.preheader
  call void @_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  ret void

bb.dz:                                            ; preds = %bb.dy, %.body, %bb.ap
  %.pn38.pn.pn = phi { ptr, i32 } [ %i.ed, %bb.ap ], [ %.pn36, %.body ], [ %.pn38, %bb.dy ]
  call void @_ZNSt6vectorIN5folly14HeapTimekeeper5State2OpESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  resume { ptr, i32 } %.pn38.pn.pn
}

declare noundef zeroext i1 @_ZN5folly13setThreadNameENS_5RangeIPKcEE(ptr, ptr) local_unnamed_addr #12

end_hunk_0
