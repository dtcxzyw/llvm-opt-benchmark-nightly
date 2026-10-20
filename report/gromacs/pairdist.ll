Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pairdist?download=true
inline.NumInlined: 806
inline.NumDeleted: 488
begin_hunk_0_@_ZN3gmx15analysismodules12_GLOBAL__N_112PairDistance12initAnalysisERKNS_26TrajectoryAnalysisSettingsERKNS_19TopologyInformationE:bb.a
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !91
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

bb.aa:                                            ; preds = %bb.y
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i24 = phi i32 [ %i.cv, %bb.z ], [ %i.df, %bb.aa ]
  %i.dg = icmp eq i32 %.0.i.i.i.i24, 1
  br i1 %i.dg, label %bb.ab, label %_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !104

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #23
  br label %_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i23, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNSt10shared_ptrIN3gmx19IAnalysisDataModuleEEC2INS0_22AnalysisDataPlotModuleEvEERKS_IT_E.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.ac ], [ %lpad.loopexit.split-lp39, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.bh, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !105
  %i.dl = fptrunc double %i.dk to float
  call void @_ZN3gmx20AnalysisNeighborhood9setCutoffEf(ptr noundef nonnull align 8 dereferenceable(8) %i.di, float noundef %i.dl)
  %i.dm = load double, ptr %i.dj, align 8, !tbaa !105 ; 5 uses
  %i.dn = fcmp ugt double %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double 0.000000e+00, ptr %i.dj, align 8, !tbaa !105
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.do = fmul double %i.dm, %i.dm
  %i.dp = fptrunc double %i.do to float
  %i.dq = fmul double %i.dm, %i.dm
  %i.dr = fptrunc double %i.dq to float
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ds = phi float [ %i.dr, %bb.ag ], [ 0.000000e+00, %bb.af ]
  %.sink = phi float [ %i.dp, %bb.ag ], [ f0x7F7FFFFF, %bb.af ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  store float %.sink, ptr %i.dt, align 4, !tbaa !209
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !102
  %i.dw = icmp eq i32 %i.dv, 1
  %spec.store.select = select i1 %i.dw, float 0.000000e+00, float %.sink
  store float %spec.store.select, ptr %i.dt, align 4, !tbaa !209
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %i.ds, ptr %i.dx, align 8, !tbaa !106
  ret void
}

declare void @_ZN3gmx24TrajectoryAnalysisModule19initAfterFirstFrameERKNS_26TrajectoryAnalysisSettingsERK10t_trxframe(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmx15analysismodules12_GLOBAL__N_112PairDistance11startFramesERKNS_27AnalysisDataParallelOptionsERKNS_19SelectionCollectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.37") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.c = load i32, ptr %i.b, align 4, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  invoke void @_ZN3gmx28TrajectoryAnalysisModuleDataC2EPNS_24TrajectoryAnalysisModuleERKNS_27AnalysisDataParallelOptionsERKNS_19SelectionCollectionE(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleDataE, i64 16), ptr %i.a, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %i.j = sext i32 %i.f to i64                     ; 5 uses
  %.not.i = icmp eq i32 %i.f, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false)
  br i1 %.not.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.j)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge23.i unwind label %bb.m

._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge23.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !108
  %.pre24.i = load ptr, ptr %i.h, align 8, !tbaa !109
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge23.i, %.noexc
  %i.k = phi ptr [ %.pre24.i, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge23.i ], [ null, %.noexc ] ; 2 uses
  %i.l = phi ptr [ %.pre.i, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge23.i ], [ null, %.noexc ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.j
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.s = sub nuw nsw i64 %i.j, %i.q
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.s)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i unwind label %bb.m

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.t = icmp ugt i64 %i.q, %i.j
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.e
  store ptr %i.u, ptr %i.m, align 8, !tbaa !108
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.e, %bb.d, %bb.c
  %i.v = sext i32 %i.c to i64                     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !108  ; 2 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !109  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2                 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %i.v
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.ae = sub nuw nsw i64 %i.v, %i.ac
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ae)
          to label %bb.i unwind label %bb.m

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.af = icmp ugt i64 %i.ac, %i.v
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v ; 2 uses
  %.not.i.i14.i = icmp eq ptr %i.x, %i.ag
  br i1 %.not.i.i14.i, label %bb.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i15.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i15.i:    ; preds = %bb.h
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !108
  br label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i15.i, %bb.h, %bb.g, %bb.f
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !103 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 292
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !122, !range !123, !noundef !124
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleDataC2EPNS_24TrajectoryAnalysisModuleERKNS_27AnalysisDataParallelOptionsERKNS_19SelectionCollectionEiRKNS_9SelectionEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !125 ; 4 uses
  %.val10.i = load ptr, ptr %i.w, align 8, !tbaa !125 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %.val.i, %.val10.i
  br i1 %.not5.i.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.j
  %.72.val3.i.i = ptrtoaddr ptr %.val10.i to i64
  %.64.val4.i.i = ptrtoaddr ptr %.val.i to i64
  %reass.sub.i = sub i64 %.72.val3.i.i, %.64.val4.i.i
  %i.al = and i64 %reass.sub.i, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.val.i, i8 0, i64 %i.al, i1 false), !tbaa !91
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i.i

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 112 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !126 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleDataC2EPNS_24TrajectoryAnalysisModuleERKNS_27AnalysisDataParallelOptionsERKNS_19SelectionCollectionEiRKNS_9SelectionEi.exit

.lr.ph.i.i:                                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !127 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i.i, %.lr.ph.i.i
  %i.ar = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %.critedge.i.i ] ; 3 uses
  %.02.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.lcssa.i.i, %.critedge.i.i ] ; 2 uses
  %i.as = zext nneg i32 %.02.i.i to i64           ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !91 ; 2 uses
  %i.av = zext nneg i32 %i.ar to i64              ; 2 uses
  %indvars.iv.next.i.i21 = add nuw nsw i64 %i.as, 1 ; 2 uses
  %i.aw = icmp samesign ult i64 %indvars.iv.next.i.i21, %i.av
  br i1 %i.aw, label %.lr.ph, label %.critedge.i.i

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.next.i.i22, 1 ; 2 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next.i.i, %i.av
  br i1 %i.ax, label %.lr.ph, label %.critedge.i.i, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %indvars.iv.next.i.i22 = phi i64 [ %indvars.iv.next.i.i, %bb.l ], [ %indvars.iv.next.i.i21, %bb.k ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i22
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !91
  %i.ba = icmp eq i32 %i.az, %i.au
  br i1 %i.ba, label %bb.l, label %.critedge.split.loop.exit7.i.i, !llvm.loop !0

.critedge.split.loop.exit7.i.i:                   ; preds = %.lr.ph
  %i.bb = trunc nuw nsw i64 %indvars.iv.next.i.i22 to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.l, %bb.k, %.critedge.split.loop.exit7.i.i
  %.1.lcssa.i.i = phi i32 [ %i.bb, %.critedge.split.loop.exit7.i.i ], [ %i.ar, %bb.k ], [ %i.ar, %bb.l ] ; 3 uses
  %i.bc = sub nsw i32 %.1.lcssa.i.i, %.02.i.i
  %i.bd = sext i32 %i.au to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.bd
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !91
  %i.bf = load i32, ptr %i.am, align 8, !tbaa !126 ; 2 uses
  %i.bg = icmp slt i32 %.1.lcssa.i.i, %i.bf
  br i1 %i.bg, label %bb.k, label %_ZN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleDataC2EPNS_24TrajectoryAnalysisModuleERKNS_27AnalysisDataParallelOptionsERKNS_19SelectionCollectionEiRKNS_9SelectionEi.exit, !llvm.loop !1

bb.m:                                             ; preds = %bb.f, %bb.c, %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !109 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !128
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.n, %bb.m
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !109 ; 3 uses
  %.not.i.i.i18.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i18.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit19.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !128
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit19.i

_ZNSt6vectorIiSaIiEED2Ev.exit19.i:                ; preds = %bb.o, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !129 ; 3 uses
  %.not.i.i.i20.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i20.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit19.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !130
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.p, %_ZNSt6vectorIiSaIiEED2Ev.exit19.i
  tail call void @_ZN3gmx28TrajectoryAnalysisModuleDataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(88) %i.a) #23
  br label %.body

_ZN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleDataC2EPNS_24TrajectoryAnalysisModuleERKNS_27AnalysisDataParallelOptionsERKNS_19SelectionCollectionEiRKNS_9SelectionEi.exit: ; preds = %.critedge.i.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i.i, %bb.i
  store ptr %i.a, ptr %0, align 8, !tbaa !211
  ret void

bb.q:                                             ; preds = %bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.bh, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmx15analysismodules12_GLOBAL__N_112PairDistance12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %2, ptr noundef %3, ptr noundef nonnull %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.gmx::AnalysisDataHandle", align 8 ; 8 uses
  %6 = alloca %"class.gmx::Selection", align 8    ; 6 uses
  %7 = alloca %"class.std::vector", align 8       ; 14 uses
  %8 = alloca %"class.gmx::AnalysisNeighborhoodSearch", align 8 ; 7 uses
  %9 = alloca %"class.gmx::AnalysisNeighborhoodPositions", align 8 ; 5 uses
  %10 = alloca %"class.gmx::AnalysisNeighborhoodPairSearch", align 8 ; 7 uses
  %11 = alloca %"class.gmx::AnalysisNeighborhoodPositions", align 8 ; 5 uses
  %12 = alloca %"class.gmx::AnalysisNeighborhoodPair", align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call ptr @_ZN3gmx28TrajectoryAnalysisModuleData10dataHandleERKNS_12AnalysisDataE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  store ptr %i.b, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = tail call ptr @_ZN3gmx28TrajectoryAnalysisModuleData17parallelSelectionERKNS_9SelectionE(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 4 uses
  store ptr %i.d, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZN3gmx28TrajectoryAnalysisModuleData18parallelSelectionsERKSt6vectorINS_9SelectionESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !105
  %i.j = fcmp ogt double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %_ZN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleData17initRefCountArrayERKNS_9SelectionE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 292
  %i.l = load i8, ptr %i.k, align 4, !tbaa !122, !range !123, !noundef !124
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleData17initRefCountArrayERKNS_9SelectionE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %4, i64 64
  %.val = load ptr, ptr %i.n, align 8, !tbaa !125 ; 4 uses
  %i.o = getelementptr i8, ptr %4, i64 72
  %.val136 = load ptr, ptr %i.o, align 8, !tbaa !125 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.val, %.val136
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %.72.val3.i = ptrtoaddr ptr %.val136 to i64
  %.64.val4.i = ptrtoaddr ptr %.val to i64
  %reass.sub = sub i64 %.72.val3.i, %.64.val4.i
  %i.p = and i64 %reass.sub, -4
  call void @llvm.memset.p0.i64(ptr align 4 %.val, i8 0, i64 %i.p, i1 false), !tbaa !91
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !126  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleData17initRefCountArrayERKNS_9SelectionE.exit

.lr.ph.i:                                         ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph.i
  %i.v = phi i32 [ %i.r, %.lr.ph.i ], [ %i.aj, %.critedge.i ] ; 3 uses
  %.02.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.lcssa.i, %.critedge.i ] ; 2 uses
  %i.w = zext nneg i32 %.02.i to i64              ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !91   ; 2 uses
  %i.z = zext nneg i32 %i.v to i64                ; 2 uses
  %indvars.iv.next.i220 = add nuw nsw i64 %i.w, 1 ; 2 uses
  %i.aa = icmp samesign ult i64 %indvars.iv.next.i220, %i.z
  br i1 %i.aa, label %.lr.ph223, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph223
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i221, 1 ; 2 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next.i, %i.z
  br i1 %i.ab, label %.lr.ph223, label %.critedge.i, !llvm.loop !0

.lr.ph223:                                        ; preds = %bb.d, %bb.e
  %indvars.iv.next.i221 = phi i64 [ %indvars.iv.next.i, %bb.e ], [ %indvars.iv.next.i220, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i221
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !91
  %i.ae = icmp eq i32 %i.ad, %i.y
  br i1 %i.ae, label %bb.e, label %.critedge.split.loop.exit7.i, !llvm.loop !0

.critedge.split.loop.exit7.i:                     ; preds = %.lr.ph223
  %i.af = trunc nuw nsw i64 %indvars.iv.next.i221 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %bb.d, %.critedge.split.loop.exit7.i
  %.1.lcssa.i = phi i32 [ %i.af, %.critedge.split.loop.exit7.i ], [ %i.v, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %i.ag = sub nsw i32 %.1.lcssa.i, %.02.i
  %i.ah = sext i32 %i.y to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ah
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !91
  %i.aj = load i32, ptr %i.q, align 8, !tbaa !126 ; 2 uses
  %i.ak = icmp slt i32 %.1.lcssa.i, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleData17initRefCountArrayERKNS_9SelectionE.exit, !llvm.loop !1

_ZN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleData17initRefCountArrayERKNS_9SelectionE.exit: ; preds = %.critedge.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit.i, %bb.b, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNK3gmx9SelectioncvNS_29AnalysisNeighborhoodPositionsEEv(ptr dead_on_unwind nonnull writable sret(%"class.gmx::AnalysisNeighborhoodPositions") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleData17initRefCountArrayERKNS_9SelectionE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_ZN3gmx20AnalysisNeighborhood10initSearchEPK5t_pbcRKNS_29AnalysisNeighborhoodPositionsE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::AnalysisNeighborhoodSearch") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.an = sext i32 %1 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !226
  invoke void @_ZN3gmx18AnalysisDataHandle10startFrameEmff(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.an, float noundef %i.ap, float noundef 0.000000e+00)
          to label %.preheader168 unwind label %.loopexit.split-lp170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader168:                                    ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !90
  %i.as = load ptr, ptr %7, align 8, !tbaa !26
  %.not = icmp eq ptr %i.ar, %i.as
  br i1 %.not, label %._crit_edge181, label %.lr.ph180

.lr.ph180:                                        ; preds = %.preheader168
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.i

._crit_edge181:                                   ; preds = %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit, %.preheader168
  invoke void @_ZN3gmx18AnalysisDataHandle11finishFrameEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.al unwind label %.loopexit.split-lp170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f, %_ZN3gmx15analysismodules12_GLOBAL__N_122PairDistanceModuleData17initRefCountArrayERKNS_9SelectionE.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.at

bb.i:                                             ; preds = %.lr.ph180, %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit
  %.0120179 = phi i64 [ 0, %.lr.ph180 ], [ %i.fu, %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit ] ; 6 uses
  %i.bb = invoke noundef i64 @_ZNK3gmx20AbstractAnalysisData11columnCountEm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %.0120179)
          to label %bb.j unwind label %.loopexit.split-lp170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !227 ; 6 uses
  %sext = shl i64 %i.bb, 32                       ; 2 uses
  %.idx = ashr exact i64 %sext, 30                ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %.idx
  %i.bf = load float, ptr %i.at, align 4, !tbaa !131 ; 3 uses
  %.not6.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %iter.check

iter.check:                                       ; preds = %bb.j
  %i.bg = add nsw i64 %.idx, -4                   ; 3 uses
  %i.bh = lshr exact i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bg, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check228 = icmp ult i64 %i.bg, 124
  br i1 %min.iters.check228, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %i.bi, 24
  %n.vec = and i64 %i.bi, 9223372036854775776     ; 4 uses
  %i.bk = shl i64 %n.vec, 2
  %i.bl = getelementptr i8, ptr %i.bd, i64 %i.bk
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bf, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bm ; 4 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 32
  %i.bo = getelementptr i8, ptr %next.gep, i64 64
  %i.bp = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !131
  store <8 x float> %broadcast.splat, ptr %i.bn, align 4, !tbaa !131
  store <8 x float> %broadcast.splat, ptr %i.bo, align 4, !tbaa !131
  store <8 x float> %broadcast.splat, ptr %i.bp, align 4, !tbaa !131
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i138.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !230

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec229 = and i64 %i.bi, 9223372036854775800  ; 3 uses
  %i.br = shl i64 %n.vec229, 2
  %i.bs = getelementptr i8, ptr %i.bd, i64 %i.br
  %broadcast.splatinsert230 = insertelement <8 x float> poison, float %i.bf, i64 0
  %broadcast.splat231 = shufflevector <8 x float> %broadcast.splatinsert230, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index232 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next234, %vec.epilog.vector.body ] ; 2 uses
  %i.bt = shl i64 %index232, 2
  %next.gep233 = getelementptr i8, ptr %i.bd, i64 %i.bt
  store <8 x float> %broadcast.splat231, ptr %next.gep233, align 4, !tbaa !131
  %index.next234 = add nuw i64 %index232, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next234, %n.vec229
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !213

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n235 = icmp eq i64 %i.bi, %n.vec229
  br i1 %cmp.n235, label %.lr.ph.i.i.i.i138.preheader, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.i.i.ph = phi ptr [ %i.bd, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store float %i.bf, ptr %.07.i.i.i.i, align 4, !tbaa !131
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bv, %i.be
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i138.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !214

.lr.ph.i.i.i.i138.preheader:                      ; preds = %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !125
  call void @llvm.memset.p0.i64(ptr align 4 %i.bw, i8 0, i64 %.idx, i1 false), !tbaa !91
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i138.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.bx = load ptr, ptr %7, align 8, !tbaa !26
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.0120179
  invoke void @_ZNK3gmx9SelectioncvNS_29AnalysisNeighborhoodPositionsEEv(ptr dead_on_unwind nonnull writable sret(%"class.gmx::AnalysisNeighborhoodPositions") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit
  invoke void @_ZNK3gmx26AnalysisNeighborhoodSearch15startPairSearchERKNS_29AnalysisNeighborhoodPositionsE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::AnalysisNeighborhoodPairSearch") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i32 -1, ptr %12, align 4, !tbaa !232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %bb.l
  %i.bz = invoke noundef zeroext i1 @_ZN3gmx30AnalysisNeighborhoodPairSearch12findNextPairEPNS_24AnalysisNeighborhoodPairE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %12)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.bz, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ca = load i32, ptr %12, align 4, !tbaa !232
  %i.cb = load ptr, ptr %6, align 8, !tbaa !103
  %i.cc = load ptr, ptr %7, align 8, !tbaa !26
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.0120179
  %i.ce = load i32, ptr %i.au, align 4, !tbaa !233
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !103
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !127
  %i.ci = sext i32 %i.ca to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !91
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !127
  %i.cn = sext i32 %i.ce to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !91
  %i.cq = load i32, ptr %i.av, align 4, !tbaa !88
  %i.cr = mul nsw i32 %i.cq, %i.cp
  %i.cs = add nsw i32 %i.cr, %i.ck
  %i.ct = load float, ptr %i.aw, align 4, !tbaa !234 ; 3 uses
  %i.cu = load i32, ptr %i.ax, align 8, !tbaa !102
  %i.cv = icmp eq i32 %i.cu, 0
end_hunk_0
