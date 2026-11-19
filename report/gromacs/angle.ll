Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/angle?download=true
inline.NumInlined: 1153
inline.NumDeleted: 634
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gmx15analysismodules12_GLOBAL__N_15Angle12initAnalysisERKNS_26TrajectoryAnalysisSettingsERKNS_19TopologyInformationE:bb.a

bb.dy:                                            ; preds = %_ZNSt10shared_ptrIN3gmx19IAnalysisDataModuleEEC2INS0_22AnalysisDataPlotModuleEvEERKS_IT_E.exit66
  %i.ol = load ptr, ptr %i.og, align 8, !tbaa !78 ; 8 uses
  %.not.i.i67 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i67, label %_ZNSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 4 uses
  %i.on = load atomic i64, ptr %i.om acquire, align 8 ; 2 uses
  %i.oo = icmp eq i64 %i.on, 4294967297
  %i.op = trunc i64 %i.on to i32                  ; 2 uses
  br i1 %i.oo, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  store i32 0, ptr %i.om, align 8, !tbaa !81
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  store i32 0, ptr %i.oq, align 4, !tbaa !82
  %i.or = load ptr, ptr %i.ol, align 8, !tbaa !15
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = load ptr, ptr %i.os, align 8
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(16) %i.ol) #25, !inline_history !234
  %i.ou = load ptr, ptr %i.ol, align 8, !tbaa !15
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(16) %i.ol) #25, !inline_history !234
  br label %_ZNSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

bb.eb:                                            ; preds = %bb.dz
  %i.ox = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i68 = icmp eq i8 %i.ox, 0
  br i1 %.not.i.i.i68, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.oy = add nsw i32 %i.op, -1
  store i32 %i.oy, ptr %i.om, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69

bb.ed:                                            ; preds = %bb.eb
  %i.oz = atomicrmw volatile add ptr %i.om, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69: ; preds = %bb.ed, %bb.ec
  %.0.i.i.i.i70 = phi i32 [ %i.op, %bb.ec ], [ %i.oz, %bb.ed ]
  %i.pa = icmp eq i32 %.0.i.i.i.i70, 1
  br i1 %i.pa, label %bb.ee, label %_ZNSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, !prof !84

bb.ee:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ol) #25
  br label %_ZNSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

_ZNSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71: ; preds = %bb.dy, %bb.ea, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  %i.pb = load ptr, ptr %i.nb, align 8, !tbaa !78 ; 8 uses
  %.not.i.i72 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i72, label %_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8 ; 4 uses
  %i.pd = load atomic i64, ptr %i.pc acquire, align 8 ; 2 uses
  %i.pe = icmp eq i64 %i.pd, 4294967297
  %i.pf = trunc i64 %i.pd to i32                  ; 2 uses
  br i1 %i.pe, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.pc, align 8, !tbaa !81
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 12
  store i32 0, ptr %i.pg, align 4, !tbaa !82
  %i.ph = load ptr, ptr %i.pb, align 8, !tbaa !15
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8
  call void %i.pj(ptr noundef nonnull align 8 dereferenceable(16) %i.pb) #25, !inline_history !235
  %i.pk = load ptr, ptr %i.pb, align 8, !tbaa !15
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.pm = load ptr, ptr %i.pl, align 8
  call void %i.pm(ptr noundef nonnull align 8 dereferenceable(16) %i.pb) #25, !inline_history !235
  br label %_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76

bb.eh:                                            ; preds = %bb.ef
  %i.pn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i73 = icmp eq i8 %i.pn, 0
  br i1 %.not.i.i.i73, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.po = add nsw i32 %i.pf, -1
  store i32 %i.po, ptr %i.pc, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74

bb.ej:                                            ; preds = %bb.eh
  %i.pp = atomicrmw volatile add ptr %i.pc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i75 = phi i32 [ %i.pf, %bb.ei ], [ %i.pp, %bb.ej ]
  %i.pq = icmp eq i32 %.0.i.i.i.i75, 1
  br i1 %i.pq, label %bb.ek, label %_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76, !prof !84

bb.ek:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pb) #25
  br label %_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76

_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76: ; preds = %_ZNSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, %bb.eg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.en

bb.el:                                            ; preds = %_ZNSt10shared_ptrIN3gmx19IAnalysisDataModuleEEC2INS0_22AnalysisDataPlotModuleEvEERKS_IT_E.exit66
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN3gmx19IAnalysisDataModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.el
  %.pn36 = phi { ptr, i32 } [ %i.pr, %bb.el ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #25
  br label %bb.em

bb.em:                                            ; preds = %.loopexit.split-lp, %bb.dt
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %.loopexit.split-lp ], [ %i.nt, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %common.resume

bb.en:                                            ; preds = %_ZNSt12__shared_ptrIN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76, %bb.di
  ret void
}

declare void @_ZN3gmx24TrajectoryAnalysisModule19initAfterFirstFrameERKNS_26TrajectoryAnalysisSettingsERK10t_trxframe(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #3

declare void @_ZN3gmx24TrajectoryAnalysisModule11startFramesERKNS_27AnalysisDataParallelOptionsERKNS_19SelectionCollectionE() unnamed_addr

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmx15analysismodules12_GLOBAL__N_15Angle12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE(ptr noundef nonnull align 8 dereferenceable(304) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %2, ptr noundef %3, ptr noundef nonnull %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.gmx::InconsistentInputError", align 8 ; 6 uses
  %7 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %8 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %9 = alloca %"class.gmx::AnalysisDataHandle", align 8 ; 8 uses
  %10 = alloca %"class.std::vector", align 8      ; 13 uses
  %11 = alloca %"class.std::vector", align 8      ; 15 uses
  %i.a = alloca [3 x float], align 8              ; 12 uses
  %i.b = alloca [3 x float], align 8              ; 15 uses
  %i.c = alloca [3 x float], align 8              ; 8 uses
  %i.d = alloca [3 x float], align 8              ; 9 uses
  %i.e = alloca [4 x [3 x float]], align 16       ; 35 uses
  %i.f = alloca [3 x [3 x float]], align 16       ; 8 uses
  %12 = alloca %"class.gmx::InternalError", align 8 ; 4 uses
  %13 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %14 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %15 = alloca %"class.gmx::InternalError", align 8 ; 4 uses
  %16 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %17 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = tail call ptr @_ZN3gmx28TrajectoryAnalysisModuleData10dataHandleERKNS_12AnalysisDataE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  store ptr %i.h, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN3gmx28TrajectoryAnalysisModuleData18parallelSelectionsERKSt6vectorINS_9SelectionESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZN3gmx28TrajectoryAnalysisModuleData18parallelSelectionsERKSt6vectorINS_9SelectionESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.b unwind label %bb.x

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !125  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !126  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128  ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !91   ; 3 uses
  %.not138.i = icmp eq ptr %i.q, %i.r
  br i1 %.not138.i, label %.loopexit, label %.lr.ph137.i

.lr.ph137.i:                                      ; preds = %bb.b
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %.val28.val.i = load ptr, ptr %10, align 8, !tbaa !94 ; 3 uses
  %.val31.val.i = load ptr, ptr %11, align 8      ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val31.val32.i = load ptr, ptr %i.w, align 8   ; 2 uses
  %.not.i = icmp eq ptr %.val31.val.i, %.val31.val32.i ; 4 uses
  %i.x = icmp slt i32 %i.l, 2
  %wide.trip.count.i.i = zext nneg i32 %i.l to i64
  %i.y = icmp slt i32 %i.n, 2
  %wide.trip.count.i37.i = zext nneg i32 %i.n to i64
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aa = ptrtoint ptr %.val28.val.i to i64
  %i.ab = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.aa
  %i.ae = icmp ugt i64 %i.ad, 8
  %i.af = ptrtoint ptr %.val31.val32.i to i64
  %i.ag = ptrtoint ptr %.val31.val.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.ah, 8
  %.not.i.i = icmp eq ptr %.val28.val.i, %i.ab    ; 5 uses
  %18 = zext i1 %i.ai to i64
  %i.aj = zext i1 %i.ae to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit.i, %.lr.ph137.i
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit.i ], [ 0, %.lr.ph137.i ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit.i ], [ 0, %.lr.ph137.i ] ; 3 uses
  %.022135.i = phi i64 [ %i.dt, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit.i ], [ 0, %.lr.ph137.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val28.val.i, i64 %indvars.iv177
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !131 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 292
  %i.an = load i8, ptr %i.am, align 4, !tbaa !270, !range !271, !noundef !272
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val31.val.i, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !131
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 292
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !270, !range !271, !noundef !272
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.f, label %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.022135.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !83 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 3 uses
  %.not139.i = icmp eq i32 %i.av, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val31.val.i, i64 %indvars.iv ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit80.i, %.lr.ph.i
  %.021131.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dk, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit80.i ]
  %.sroa.30.1129.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.30.2.i, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit80.i ] ; 5 uses
  %.sroa.28.1126.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.28.2.i, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit80.i ] ; 5 uses
  br i1 %i.x, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !273
  %i.bb = sext i32 %.sroa.28.1126.i to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !83
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i.i = phi i64 [ 1, %bb.h ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %gep.i.i = getelementptr [4 x i8], ptr %i.bc, i64 %indvars.iv.i.i
  %i.be = load i32, ptr %gep.i.i, align 4, !tbaa !83
  %i.bf = xor i32 %i.be, %i.bd
  %i.bg = icmp sgt i32 %i.bf, -1                  ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %or.cond.not = select i1 %i.bg, i1 %exitcond.not.i.i, i1 false
  br i1 %or.cond.not, label %bb.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit.i, !llvm.loop !247

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit.i: ; preds = %bb.i, %bb.g
  %.2.i.i = phi i1 [ true, %bb.g ], [ %i.bg, %bb.i ] ; 2 uses
  br i1 %i.y, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit44.i, label %bb.j

bb.j:                                             ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit.i
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !131
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !273
  %i.bk = sext i32 %.sroa.30.1129.i to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !83
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i42.i = add nuw nsw i64 %indvars.iv.i39.i, 1 ; 2 uses
  %exitcond.not.i43.i = icmp eq i64 %indvars.iv.next.i42.i, %wide.trip.count.i37.i
  br i1 %exitcond.not.i43.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit44.i, label %bb.l, !llvm.loop !247

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.i39.i = phi i64 [ 1, %bb.j ], [ %indvars.iv.next.i42.i, %bb.k ] ; 2 uses
  %gep.i40.i = getelementptr [4 x i8], ptr %i.bl, i64 %indvars.iv.i39.i
  %i.bn = load i32, ptr %gep.i40.i, align 4, !tbaa !83
  %i.bo = xor i32 %i.bn, %i.bm
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.k, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit44.i

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit44.i: ; preds = %bb.l, %bb.k, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit.i
  %.2.i41.i = phi i1 [ %.2.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit.i ], [ %.2.i.i, %bb.k ], [ false, %bb.l ] ; 6 uses
  br i1 %.not139.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.thread.i, label %bb.m

bb.m:                                             ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit44.i
  br i1 %.not.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i: ; preds = %bb.m
  %i.bq = load i32, ptr %i.ay, align 8, !tbaa !137
  %i.br = icmp eq i32 %i.bq, %i.l
  br i1 %i.br, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i
  %i.bs = load ptr, ptr %i.ax, align 8, !tbaa !273
  %i.bt = sext i32 %.sroa.28.1126.i to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !83
  %i.bw = icmp sgt i32 %i.bv, -1
  %spec.select.i = and i1 %.2.i41.i, %i.bw
  br label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i, %bb.m
  %.220.i = phi i1 [ %spec.select.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit.i ], [ %.2.i41.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i ], [ %.2.i41.i, %bb.m ] ; 4 uses
  br i1 %.not.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.thread.thread157.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.i

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.thread.thread157.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i
  br i1 %.220.i, label %._crit_edge146.i, label %bb.o

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i
  %i.bx = load ptr, ptr %i.az, align 8, !tbaa !131 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 112
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !137
  %i.ca = icmp eq i32 %i.bz, %i.n                 ; 2 uses
  br i1 %i.ca, label %bb.n, label %.thread226

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.thread.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator29allValuesConsistentlySelectedEv.exit44.i
  br i1 %.not.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i

bb.n:                                             ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !273
  %i.cd = sext i32 %.sroa.30.1129.i to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !83
  %i.cg = icmp sgt i32 %i.cf, -1
  %spec.select25.i = select i1 %i.cg, i1 %.220.i, i1 false ; 2 uses
  br i1 %.not.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit59.i

.thread226:                                       ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.i
  br i1 %.not.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit67.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit59.i

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit59.i: ; preds = %.thread226, %bb.n
  %.3.ph.i228 = phi i1 [ %.220.i, %.thread226 ], [ %spec.select25.i, %bb.n ] ; 2 uses
  %i.ch = load i32, ptr %i.ay, align 8, !tbaa !137
  %i.ci = icmp eq i32 %i.ch, %i.l
  %brmerge = or i1 %i.ca, %i.ci
  br i1 %brmerge, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i.thread233

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.thread.i
  br i1 %.not.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit67.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i.thread233

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i.thread233: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit59.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i
  %.3155162.i235 = phi i1 [ %.2.i41.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i ], [ %.3.ph.i228, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit59.i ]
  %i.cj = load ptr, ptr %i.ax, align 8, !tbaa !273
  %i.ck = sext i32 %.sroa.28.1126.i to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !83
  %i.cn = icmp sgt i32 %i.cm, -1
  br label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit67.i

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit67.i: ; preds = %.thread226, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i.thread233, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i
  %.3155162.i232 = phi i1 [ %.2.i41.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i ], [ %.3155162.i235, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i.thread233 ], [ %.220.i, %.thread226 ]
  %i.co = phi i1 [ true, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i ], [ %i.cn, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.thread.i.thread233 ], [ true, %.thread226 ]
  %i.cp = load ptr, ptr %i.az, align 8, !tbaa !131
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !273
  %i.cs = sext i32 %.sroa.30.1129.i to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !83
  %i.cv = icmp slt i32 %i.cu, 0
  %i.cw = xor i1 %i.co, %i.cv
  %i.cx = select i1 %i.cw, i1 %.3155162.i232, i1 false
  br i1 %i.cx, label %._crit_edge146.i, label %bb.o

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.i: ; preds = %bb.n, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit59.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.thread.i
  %.3156.i = phi i1 [ %.2.i41.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.thread.i ], [ %.3.ph.i228, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit59.i ], [ %spec.select25.i, %bb.n ]
  br i1 %.3156.i, label %._crit_edge146.i, label %bb.o

bb.o:                                             ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit67.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.thread.thread157.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.cy = trunc i64 %.022135.i to i32
  %i.cz = add i32 %i.cy, 1
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.97, i32 noundef %i.cz)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.o
  %i.da = call ptr @__cxa_allocate_exception(i64 24) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.p unwind label %.thread.i

bb.p:                                             ; preds = %.noexc
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.q unwind label %.thread120.i

bb.q:                                             ; preds = %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx22InconsistentInputErrorE, i64 16), ptr %6, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %8, align 8, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @__PRETTY_FUNCTION__._ZNK3gmx15analysismodules12_GLOBAL__N_15Angle15checkSelectionsERKSt6vectorINS_9SelectionESaIS4_EES8_, ptr %i.db, align 8, !tbaa !124
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.79, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !124
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 573, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !83
  invoke void @_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InconsistentInputError") align 8 %i.da, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr %i.da, ptr nonnull @_ZTIN3gmx22InconsistentInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #27
          to label %bb.v unwind label %bb.s

.thread.i:                                        ; preds = %.noexc
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

.thread120.i:                                     ; preds = %bb.p
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #25
  br label %.sink.split.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i = phi i1 [ false, %bb.r ], [ true, %bb.q ]
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #25
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i, label %bb.t, label %bb.u

.sink.split.i:                                    ; preds = %.thread120.i, %.thread.i
  %.pn.pn119.ph.i = phi { ptr, i32 } [ %i.dd, %.thread120.i ], [ %i.dc, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i, %bb.s
  %.pn.pn119.i = phi { ptr, i32 } [ %i.de, %bb.s ], [ %.pn.pn119.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.da) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn.pn118.i = phi { ptr, i32 } [ %.pn.pn119.i, %bb.t ], [ %i.de, %bb.s ]
  %i.df = load ptr, ptr %5, align 8, !tbaa !93    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !23
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

._crit_edge146.i:                                 ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit51.thread.thread157.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit65.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit67.i
  %i.dk = add nuw nsw i32 %.021131.i, 1           ; 2 uses
  br i1 %.not.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i.i: ; preds = %._crit_edge146.i
  %i.dl = load i32, ptr %i.ay, align 8, !tbaa !137
  %i.dm = icmp eq i32 %i.dl, %i.l
  br i1 %i.dm, label %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i.i

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i.i, %._crit_edge146.i
  %i.dn = add nsw i32 %.sroa.28.1126.i, %i.l
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit.i

_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i.i
  %.sroa.28.2.i = phi i32 [ %i.dn, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i.i ], [ %.sroa.28.1126.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i.i ]
  br i1 %.not.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i76.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i74.i

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i74.i: ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit.i
  %i.do = load ptr, ptr %i.az, align 8, !tbaa !131
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 112
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !137
  %i.dr = icmp eq i32 %i.dq, %i.n
  br i1 %i.dr, label %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit80.i, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i76.i

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i76.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i74.i, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit.i
  %i.ds = add nsw i32 %.sroa.30.1129.i, %i.n
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit80.i

_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit80.i: ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i76.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i74.i
  %.sroa.30.2.i = phi i32 [ %i.ds, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.thread.i76.i ], [ %.sroa.30.1129.i, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator14hasSingleValueEv.exit.i74.i ]
  %exitcond.not.i = icmp eq i32 %i.dk, %i.av
  br i1 %exitcond.not.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit.i, label %bb.g, !llvm.loop !248

_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit.i: ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit80.i, %bb.f, %bb.e, %bb.d
  %i.dt = add nuw i64 %.022135.i, 1               ; 2 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, %i.aj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %18
  %exitcond141.not.i = icmp eq i64 %i.dt, %i.v
  br i1 %exitcond141.not.i, label %.loopexit, label %bb.c, !llvm.loop !249

bb.v:                                             ; preds = %bb.r
  unreachable

.loopexit:                                        ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.du = sext i32 %1 to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !277
  invoke void @_ZN3gmx18AnalysisDataHandle10startFrameEmff(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %i.du, float noundef %i.dw, float noundef 0.000000e+00)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %.loopexit
  %i.dx = load i32, ptr %i.k, align 8, !tbaa !125 ; 5 uses
  %i.dy = load i32, ptr %i.m, align 4, !tbaa !126 ; 5 uses
  %i.dz = load ptr, ptr %i.p, align 8, !tbaa !128
  %i.ea = load ptr, ptr %i.o, align 8, !tbaa !91
  %.not175 = icmp eq ptr %i.dz, %i.ea
  br i1 %.not175, label %._crit_edge, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.eh = icmp sgt i32 %i.dx, 0
  %wide.trip.count.i = zext i32 %i.dx to i64      ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.not = icmp eq ptr %3, null                    ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ek = icmp eq i32 %1, 0
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.eo = icmp sgt i32 %i.dy, 0
  %wide.trip.count.i88 = zext i32 %i.dy to i64    ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.et = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.fb = mul nuw nsw i64 %wide.trip.count.i88, 12
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.fb
  %i.fc = mul nuw nsw i64 %wide.trip.count.i, 12
  %scevgep250 = getelementptr i8, ptr %i.e, i64 %i.fc
  %min.iters.check252 = icmp ult i32 %i.dx, 8
  %n.vec258 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n268 = icmp eq i64 %n.vec258, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.dy, 8
  %n.vec = and i64 %wide.trip.count.i88, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i88
  %xtraiter273 = and i64 %wide.trip.count.i88, 3  ; 2 uses
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br label %bb.z

._crit_edge:                                      ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit, %bb.w
  invoke void @_ZN3gmx18AnalysisDataHandle11finishFrameEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bu unwind label %bb.y

bb.x:                                             ; preds = %bb.a
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.y:                                             ; preds = %.loopexit, %bb.o, %._crit_edge
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph174, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit
  %.045173 = phi i64 [ 0, %.lr.ph174 ], [ %i.fz, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit ] ; 6 uses
  %.sroa.12.0172 = phi i32 [ 0, %.lr.ph174 ], [ %.sroa.12.1, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit ] ; 2 uses
  %.sroa.12142.0171 = phi i32 [ 0, %.lr.ph174 ], [ %spec.select163, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store <2 x float> zeroinitializer, ptr %i.b, align 8, !tbaa !139
  store float 0.000000e+00, ptr %i.ec, align 8, !tbaa !139
  store <2 x float> zeroinitializer, ptr %i.d, align 8, !tbaa !139
  store float 0.000000e+00, ptr %i.ed, align 8, !tbaa !139
  %i.ff = load i32, ptr %i.ee, align 4, !tbaa !75
  switch i32 %i.ff, label %bb.ac [
    i32 4, label %bb.aa
    i32 5, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  store float 1.000000e+00, ptr %i.ec, align 8, !tbaa !139
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.fg = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.045173
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !131
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !278 ; 2 uses
  %i.fl = load <2 x float>, ptr %i.fk, align 4, !tbaa !139
  store <2 x float> %i.fl, ptr %i.d, align 8, !tbaa !139
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !139
  store float %i.fn, ptr %i.ed, align 8, !tbaa !139
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.aa
  invoke void @_ZN3gmx18AnalysisDataHandle13selectDataSetEm(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %.045173)
          to label %.preheader unwind label %bb.bs

.preheader:                                       ; preds = %bb.ac
  %i.fo = load ptr, ptr %i.o, align 8, !tbaa !91  ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.045173
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !83
  %i.fr = icmp sgt i32 %i.fq, 0
  %.pre208 = load ptr, ptr %i.ef, align 8, !tbaa !279 ; 2 uses
  %.pre209 = load ptr, ptr %10, align 8, !tbaa !279 ; 2 uses
  br i1 %i.fr, label %.lr.ph, label %.preheader._ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit_crit_edge

.preheader._ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit_crit_edge: ; preds = %.preheader
  %.pre = load ptr, ptr %i.eg, align 8, !tbaa !127
  %.pre210 = load ptr, ptr %11, align 8, !tbaa !94
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit

.lr.ph:                                           ; preds = %.preheader
  %i.fs = zext nneg i32 %.sroa.12142.0171 to i64  ; 3 uses
  %i.ft = zext nneg i32 %.sroa.12.0172 to i64     ; 3 uses
  br label %bb.ad

_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit: ; preds = %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114, %.preheader._ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit_crit_edge
  %i.fu = phi ptr [ %i.fo, %.preheader._ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit_crit_edge ], [ %i.sc, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114 ]
  %i.fv = phi ptr [ %.pre210, %.preheader._ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit_crit_edge ], [ %.val2.val.i.i105, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114 ]
  %i.fw = phi ptr [ %.pre, %.preheader._ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit_crit_edge ], [ %.val2.val3.i.i106, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114 ]
  %i.fx = phi ptr [ %.pre209, %.preheader._ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit_crit_edge ], [ %.val2.val.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114 ]
  %i.fy = phi ptr [ %.pre208, %.preheader._ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextGroupEv.exit_crit_edge ], [ %.val2.val3.i.i99, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.fz = add nuw i64 %.045173, 1                 ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = icmp ugt i64 %i.gc, 8
  %i.ge = zext i1 %i.gd to i32
  %spec.select163 = add nuw nsw i32 %.sroa.12142.0171, %i.ge
  %i.gf = ptrtoint ptr %i.fw to i64
  %i.gg = ptrtoint ptr %i.fv to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = icmp ugt i64 %i.gh, 8
  %i.gj = zext i1 %i.gi to i32
  %.sroa.12.1 = add nuw nsw i32 %.sroa.12.0172, %i.gj
  %i.gk = load ptr, ptr %i.p, align 8, !tbaa !128
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.fu to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 2
  %i.gp = icmp ult i64 %i.fz, %i.go
  br i1 %i.gp, label %bb.z, label %._crit_edge, !llvm.loop !250

bb.ad:                                            ; preds = %.lr.ph, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114
  %i.gq = phi ptr [ %.pre208, %.lr.ph ], [ %.val2.val3.i.i99, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114 ]
  %i.gr = phi ptr [ %.pre209, %.lr.ph ], [ %.val2.val.i.i, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114 ] ; 3 uses
  %indvars.iv182 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next183, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114 ] ; 4 uses
  %.sroa.18146.1168 = phi i32 [ 0, %.lr.ph ], [ %.sroa.18146.2, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114 ] ; 4 uses
  %.sroa.18.1165 = phi i32 [ 0, %.lr.ph ], [ %.sroa.18.2, %_ZN3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator9nextValueEv.exit114 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 0, i64 48, i1 false), !tbaa !139
  %i.gs = icmp eq ptr %i.gr, %i.gq
  br i1 %i.gs, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit.thread, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit: ; preds = %bb.ad
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.fs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !131
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 96
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !273
  %i.gx = sext i32 %.sroa.18146.1168 to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !83
  %i.ha = icmp sgt i32 %i.gz, -1
  br i1 %i.ha, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit.thread, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit79

_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit.thread: ; preds = %bb.ad, %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit
  %i.hb = load ptr, ptr %11, align 8, !tbaa !279  ; 2 uses
  %i.hc = load ptr, ptr %i.eg, align 8, !tbaa !279
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit79, label %bb.ae

bb.ae:                                            ; preds = %_ZNK3gmx15analysismodules12_GLOBAL__N_121AnglePositionIterator21currentValuesSelectedEv.exit.thread
end_hunk_0
