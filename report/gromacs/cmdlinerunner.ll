Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/cmdlinerunner?download=true
inline.NumInlined: 211
inline.NumDeleted: 131
begin_hunk_0_@_ZN3gmx12_GLOBAL__N_112RunnerModule11initOptionsEPNS_17IOptionsContainerEPNS_33ICommandLineOptionsModuleSettingsE:bb.a
  %.not.i.i26 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrIN3gmx23SelectionOptionBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.cv, align 8, !tbaa !28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !29
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #16, !inline_history !74
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #16, !inline_history !74
  br label %_ZNSt12__shared_ptrIN3gmx23SelectionOptionBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i27 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i27, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !37
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

bb.as:                                            ; preds = %bb.aq
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i29 = phi i32 [ %i.cy, %bb.ar ], [ %i.di, %bb.as ]
  %i.dj = icmp eq i32 %.0.i.i.i.i29, 1
  br i1 %i.dj, label %bb.at, label %_ZNSt12__shared_ptrIN3gmx23SelectionOptionBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !38

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #16
  br label %_ZNSt12__shared_ptrIN3gmx23SelectionOptionBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx23SelectionOptionBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.an, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !32  ; 8 uses
  %.not.i.i30 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i30, label %_ZNSt12__shared_ptrIN3gmx16TimeUnitBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN3gmx23SelectionOptionBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dl, align 8, !tbaa !28
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !29
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #16, !inline_history !75
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !21
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #16, !inline_history !75
  br label %_ZNSt12__shared_ptrIN3gmx16TimeUnitBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i31 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i31, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !37
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32

bb.ay:                                            ; preds = %bb.aw
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i33 = phi i32 [ %i.do, %bb.ax ], [ %i.dy, %bb.ay ]
  %i.dz = icmp eq i32 %.0.i.i.i.i33, 1
  br i1 %i.dz, label %bb.az, label %_ZNSt12__shared_ptrIN3gmx16TimeUnitBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !38

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #16
  br label %_ZNSt12__shared_ptrIN3gmx16TimeUnitBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx16TimeUnitBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN3gmx23SelectionOptionBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i32, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.ba:                                            ; preds = %bb.a
  %i.ea = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #19
  br label %bb.bi

bb.bb:                                            ; preds = %_ZNSt10shared_ptrIN3gmx16TimeUnitBehaviorEEC2IS1_vEEPT_.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bc:                                            ; preds = %bb.h, %bb.g
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 16) #19
  br label %.body

bb.bd:                                            ; preds = %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2INS0_16TimeUnitBehaviorEvEERKS_IT_E.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN3gmx16IOptionsBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.bh

bb.be:                                            ; preds = %_ZNSt10shared_ptrIN3gmx16IOptionsBehaviorEEC2INS0_23SelectionOptionBehaviorEvEERKS_IT_E.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN3gmx16IOptionsBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.bh

bb.bf:                                            ; preds = %_ZNSt12__shared_ptrIN3gmx16IOptionsBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit25
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.be, %bb.bd
  %.pn.pn = phi { ptr, i32 } [ %i.ed, %bb.bd ], [ %i.ee, %bb.be ], [ %i.eg, %bb.bg ], [ %i.ef, %bb.bf ]
  call void @_ZNSt12__shared_ptrIN3gmx23SelectionOptionBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  br label %.body

.body:                                            ; preds = %bb.bb, %bb.k, %bb.bh, %bb.bc
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bh ], [ %i.ec, %bb.bc ], [ %i.eb, %bb.bb ], [ %i.ab, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZNSt12__shared_ptrIN3gmx16TimeUnitBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  br label %bb.bi

bb.bi:                                            ; preds = %.body, %bb.ba
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.ea, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmx12_GLOBAL__N_112RunnerModule15optionsFinishedEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN3gmx30TrajectoryAnalysisRunnerCommon15optionsFinishedEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3gmx12_GLOBAL__N_112RunnerModule3runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.t_pbc, align 4              ; 5 uses
  %2 = alloca %"class.gmx::AnalysisDataParallelOptions", align 8 ; 5 uses
  %3 = alloca %"class.std::unique_ptr.84", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  tail call void @_ZN3gmx30TrajectoryAnalysisRunnerCommon12initTopologyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK3gmx30TrajectoryAnalysisRunnerCommon19topologyInformationEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.b)
  tail call void @_ZN3gmx30TrajectoryAnalysisRunnerCommon14initFirstFrameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  tail call void @_ZN3gmx30TrajectoryAnalysisRunnerCommon19initFrameIndexGroupEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(176) ptr @_ZNK3gmx30TrajectoryAnalysisRunnerCommon5frameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(176) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.n = tail call noundef zeroext i1 @_ZNK3gmx26TrajectoryAnalysisSettings6hasPBCEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %. = select i1 %i.n, ptr %1, ptr null           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN3gmx27AnalysisDataParallelOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.84") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  br i1 %i.n, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.h
  %.018.us = phi i32 [ %i.ae, %bb.h ], [ 0, %bb.a ] ; 3 uses
  invoke void @_ZN3gmx30TrajectoryAnalysisRunnerCommon9initFrameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %.loopexit.split.us

bb.b:                                             ; preds = %.split.us
  %i.u = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNK3gmx30TrajectoryAnalysisRunnerCommon5frameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %.split25.us ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.t, align 4, !tbaa !115
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 116
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %1, i32 noundef %i.v, ptr noundef nonnull %i.w)
          to label %bb.d unwind label %.split25.us

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3gmx19SelectionCollection8evaluateEP10t_trxframeP5t_pbc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.u, ptr noundef %.)
          to label %bb.e unwind label %.split25.us

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !117
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i32 noundef %.018.us, ptr noundef nonnull align 8 dereferenceable(176) %i.u, ptr noundef %., ptr noundef %i.y)
          to label %bb.f unwind label %.split25.us

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !19
  invoke void @_ZN3gmx24TrajectoryAnalysisModule17finishFrameSerialEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i32 noundef %.018.us)
          to label %bb.g unwind label %.split25.us

bb.g:                                             ; preds = %bb.f
  %i.ad = invoke noundef zeroext i1 @_ZN3gmx30TrajectoryAnalysisRunnerCommon13readNextFrameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %.loopexit.split.us

bb.h:                                             ; preds = %bb.g
  %i.ae = add nuw nsw i32 %.018.us, 1             ; 2 uses
  br i1 %i.ad, label %.split.us, label %.split28.us, !llvm.loop !83

.loopexit.split.us:                               ; preds = %bb.g, %.split.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.split25.us:                                      ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.split:                                           ; preds = %bb.a, %bb.n
  %.018 = phi i32 [ %i.ap, %bb.n ], [ 0, %bb.a ]  ; 3 uses
  invoke void @_ZN3gmx30TrajectoryAnalysisRunnerCommon9initFrameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %.loopexit.split

bb.i:                                             ; preds = %.split
  %i.ag = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNK3gmx30TrajectoryAnalysisRunnerCommon5frameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %.split25   ; 2 uses

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN3gmx19SelectionCollection8evaluateEP10t_trxframeP5t_pbc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.ag, ptr noundef %.)
          to label %bb.k unwind label %.split25

.loopexit.split:                                  ; preds = %.split, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split28.us, %bb.p, %_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.s, %bb.v, %bb.w, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.split25:                                         ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !117
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i32 noundef %.018, ptr noundef nonnull align 8 dereferenceable(176) %i.ag, ptr noundef %., ptr noundef %i.aj)
          to label %bb.l unwind label %.split25

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !19
  invoke void @_ZN3gmx24TrajectoryAnalysisModule17finishFrameSerialEi(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i32 noundef %.018)
          to label %bb.m unwind label %.split25

bb.m:                                             ; preds = %bb.l
  %i.ao = invoke noundef zeroext i1 @_ZN3gmx30TrajectoryAnalysisRunnerCommon13readNextFrameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.n unwind label %.loopexit.split

bb.n:                                             ; preds = %bb.m
  %i.ap = add nuw nsw i32 %.018, 1                ; 2 uses
  br i1 %i.ao, label %.split, label %.split28.us, !llvm.loop !83

.split28.us:                                      ; preds = %bb.n, %bb.h
  %.us-phi29 = phi i32 [ %i.ae, %bb.h ], [ %i.ap, %bb.n ] ; 3 uses
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !117
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef %i.ar)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %.split28.us
  %i.av = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %.pr = load ptr, ptr %3, align 8, !tbaa !117    ; 3 uses
  store ptr null, ptr %3, align 8, !tbaa !117
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN3gmx28TrajectoryAnalysisModuleDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN3gmx28TrajectoryAnalysisModuleDataEEclEPS1_.exit.i.i: ; preds = %bb.q
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #16, !inline_history !84
  br label %_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.o, %bb.q, %_ZNKSt14default_deleteIN3gmx28TrajectoryAnalysisModuleDataEEclEPS1_.exit.i.i
  %i.bc = invoke noundef zeroext i1 @_ZNK3gmx30TrajectoryAnalysisRunnerCommon13hasTrajectoryEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !120 ; 2 uses
  br i1 %i.bc, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.be = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNK3gmx30TrajectoryAnalysisRunnerCommon5frameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.t unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !126
  %i.bh = fpext float %i.bg to double
  %i.bi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bd, ptr noundef nonnull @.str, i32 noundef %.us-phi29, double noundef %i.bh) #21 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %fwrite = call i64 @fwrite(ptr nonnull @.str.1, i64 30, i64 1, ptr %i.bd) #22 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  invoke void @_ZN3gmx19SelectionCollection13evaluateFinalEi(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %.us-phi29)
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i32 noundef %.us-phi29)
          to label %bb.x unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bn)
          to label %bb.y unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.br = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx28TrajectoryAnalysisModuleDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx28TrajectoryAnalysisModuleDataEEclEPS1_.exit.i: ; preds = %bb.y
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #16, !inline_history !85
  br label %_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.y, %_ZNKSt14default_deleteIN3gmx28TrajectoryAnalysisModuleDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i32 0

.loopexit:                                        ; preds = %.split25, %.split25.us, %.loopexit.split-lp, %.loopexit.split.us, %.loopexit.split
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %i.ah, %.split25 ], [ %i.af, %.split25.us ]
  %i.bv = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bv, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN3gmx28TrajectoryAnalysisModuleDataEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN3gmx28TrajectoryAnalysisModuleDataEEclEPS1_.exit.i21: ; preds = %.loopexit
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #16, !inline_history !85
  br label %_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN3gmx28TrajectoryAnalysisModuleDataESt14default_deleteIS1_EED2Ev.exit22: ; preds = %.loopexit, %_ZNKSt14default_deleteIN3gmx28TrajectoryAnalysisModuleDataEEclEPS1_.exit.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZN3gmx19SelectionCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare void @_ZN3gmx16TimeUnitBehaviorC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef ptr @_ZN3gmx30TrajectoryAnalysisRunnerCommon16topologyProviderEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN3gmx23SelectionOptionBehaviorC1EPNS_19SelectionCollectionEPNS_17ITopologyProviderE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN3gmx16IOptionsBehaviorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !37
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !38

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN3gmx26TrajectoryAnalysisSettings24setOptionsModuleSettingsEPNS_33ICommandLineOptionsModuleSettingsE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN3gmx30TrajectoryAnalysisRunnerCommon11initOptionsEPNS_17IOptionsContainerEPNS_16TimeUnitBehaviorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
