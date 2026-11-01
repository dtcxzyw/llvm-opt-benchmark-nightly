Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/trackerSamplerAlgorithm?download=true
inline.NumInlined: 623
inline.NumDeleted: 257
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv14createPFSolverERKNS_3PtrINS_16MinProblemSolver8FunctionEEERKNS_11_InputArrayENS_12TermCriteriaEid:bb.a
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ah, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.w, %bb.i ]
  call void @_ZNSt12__shared_ptrIN2cv8PFSolverELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  br label %common.resume
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv8PFSolverELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !45
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv18TrackingFunctionPF17TrackingHistogramC2ERKNS_3MatEiii(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %7 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %8 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::Mat_", align 8         ; 9 uses
  %14 = alloca %"class.cv::Mat_", align 8         ; 9 uses
  %15 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #27
  %i.a = load i32, ptr %0, align 8, !tbaa !22
  %i.b = and i32 %i.a, -4096
  %i.c = or disjoint i32 %i.b, 6
  store i32 %i.c, ptr %0, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.d) #27
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22
  %i.f = and i32 %i.e, -4096
  %i.g = or disjoint i32 %i.f, 6
  store i32 %i.g, ptr %i.d, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.i, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !53
  store ptr %9, ptr %i.h, align 8, !tbaa !54
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 5, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !73
  store i32 16842752, ptr %11, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %9, ptr %i.l, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 33619968, ptr %12, align 8, !tbaa !53
  store ptr %9, ptr %i.m, align 8, !tbaa !54
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 40, i32 noundef 0, i32 noundef 0)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %2, i32 noundef %3, i32 noundef 6)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %i.o = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #27
  br label %.body

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.q = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %_ZN2cv4Mat_IdEaSEOS1_.exit unwind label %bb.k ; 0 uses

_ZN2cv4Mat_IdEaSEOS1_.exit:                       ; preds = %bb.e
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef 1, i32 noundef %4, i32 noundef 6)
          to label %.noexc71 unwind label %bb.l

.noexc71:                                         ; preds = %_ZN2cv4Mat_IdEaSEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.r = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %.noexc71
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #27
  br label %.body72

bb.g:                                             ; preds = %.noexc71
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.t = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %_ZN2cv4Mat_IdEaSEOS1_.exit76 unwind label %bb.m ; 0 uses

_ZN2cv4Mat_IdEaSEOS1_.exit76:                     ; preds = %bb.g
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !49   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.lr.ph, label %._crit_edge87.split

.preheader.lr.ph:                                 ; preds = %_ZN2cv4Mat_IdEaSEOS1_.exit76
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !68   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp slt i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.ag = add nsw i32 %4, -1
  %i.ah = sitofp i32 %4 to float
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aj = add nsw i32 %2, -1
  %19 = add nsw i32 %3, -1
  %20 = insertelement <2 x i32> poison, i32 %2, i64 0
  %21 = insertelement <2 x i32> %20, i32 %3, i64 1
  %22 = sitofp <2 x i32> %21 to <2 x float>
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  br i1 %i.z, label %.preheader.preheader, label %._crit_edge87.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count92 = zext nneg i32 %i.v to i64
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv89 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next90, %._crit_edge ] ; 2 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.y

bb.i:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.y

bb.j:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #27
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d, %bb.k
  %.pn56 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.ap, %bb.j ], [ %i.p, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.y

bb.l:                                             ; preds = %_ZN2cv4Mat_IdEaSEOS1_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body72

bb.m:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #27
  br label %.body72

.body72:                                          ; preds = %bb.l, %bb.f, %bb.m
  %.pn58 = phi { ptr, i32 } [ %i.as, %bb.m ], [ %i.ar, %bb.l ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.y

._crit_edge:                                      ; preds = %bb.p
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %._crit_edge87.split, label %.preheader, !llvm.loop !188

bb.n:                                             ; preds = %.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.at = load i64, ptr %i.af, align 8
  %i.au = mul i64 %i.at, %indvars.iv89
  %.sink.idx.i = select i1 %i.ac, i64 0, i64 %i.au
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sink.idx.i
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %.sink.i, i64 %indvars.iv ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !86
  %i.ay = fpext float %i.ax to double
  %i.az = fcmp ogt double %i.ay, 1.000000e-01
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !86 ; 2 uses
  %i.bc = fpext float %i.bb to double
  %i.bd = fcmp ogt double %i.bc, 2.000000e-01
  %or.cond = select i1 %i.az, i1 %i.bd, i1 false
  br i1 %or.cond, label %bb.o, label %._crit_edge94

bb.o:                                             ; preds = %bb.n
  %23 = load <2 x float>, ptr %i.av, align 4, !tbaa !86
  %24 = fmul <2 x float> %23, %22                 ; 2 uses
  %25 = extractelement <2 x float> %24, i64 0
  %i.be = fpext float %25 to double
  %i.bf = fdiv double %i.be, 3.600000e+02
  %i.bg = fptosi double %i.bf to i32
  %. = call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.bg)
  %26 = extractelement <2 x float> %24, i64 1
  %i.bh = fptosi float %26 to i32
  %i.bi = call i32 @llvm.smin.i32(i32 %19, i32 %i.bh)
  %i.bj = load i32, ptr %i.ak, align 4, !tbaa !70
  %i.bk = icmp slt i32 %i.bj, 2
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !55
  %i.bm = load i64, ptr %i.am, align 8
  %i.bn = sext i32 %. to i64
  %i.bo = mul i64 %i.bm, %i.bn
  %.sink.idx.i77 = select i1 %i.bk, i64 0, i64 %i.bo
  %.sink.i78 = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sink.idx.i77
  br label %bb.p

._crit_edge94:                                    ; preds = %bb.n
  %i.bp = fmul float %i.bb, %i.ah
  %i.bq = fptosi float %i.bp to i32
  %.68 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bq)
  %i.br = load ptr, ptr %i.ai, align 8, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge94, %bb.o
  %.68.sink = phi i32 [ %.68, %._crit_edge94 ], [ %i.bi, %bb.o ]
  %.sink99 = phi ptr [ %i.br, %._crit_edge94 ], [ %.sink.i78, %bb.o ]
  %i.bs = sext i32 %.68.sink to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %.sink99, i64 %i.bs ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !50
  %i.bv = fadd double %i.bu, 1.000000e+00
  store double %i.bv, ptr %i.bt, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !189

._crit_edge87.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN2cv4Mat_IdEaSEOS1_.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.bw, align 8, !tbaa !72
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 0, ptr %i.bx, align 4, !tbaa !73
  store i32 -2130640890, ptr %16, align 8, !tbaa !53
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %0, ptr %i.by, align 8, !tbaa !54
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %._crit_edge87.split
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.bz, align 8, !tbaa !72
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.ca, align 4, !tbaa !73
  store i32 -2130640890, ptr %18, align 8, !tbaa !53
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.d, ptr %i.cb, align 8, !tbaa !54
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cc = load double, ptr %15, align 8, !tbaa !50, !noalias !192
  %i.cd = load double, ptr %17, align 8, !tbaa !50, !noalias !192
  %i.ce = fadd double %i.cc, %i.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.cg, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !53
  store ptr %0, ptr %i.cf, align 8, !tbaa !54
  %i.ch = fdiv double 1.000000e+00, %i.ce         ; 2 uses
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1, double noundef %i.ch, double noundef 0.000000e+00)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.cj, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !53
  store ptr %i.d, ptr %i.ci, align 8, !tbaa !54
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1, double noundef %i.ch, double noundef 0.000000e+00)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  ret void

bb.u:                                             ; preds = %._crit_edge87.split
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.pn60.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.u ], [ %i.cl, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.y

bb.x:                                             ; preds = %bb.s, %bb.r
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %.body72, %.body, %bb.i, %bb.h
  %.pn66 = phi { ptr, i32 } [ %.pn60.pn.pn, %bb.w ], [ %i.an, %bb.h ], [ %.pn58, %.body72 ], [ %.pn56, %.body ], [ %i.ao, %bb.i ], [ %i.cm, %bb.x ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.d) #27
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #27
  resume { ptr, i32 } %.pn66
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::Scalar_") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden noundef double @_ZNK2cv18TrackingFunctionPF17TrackingHistogram4distERKS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(416) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(416) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader26.lr.ph, label %.preheader

.preheader26.lr.ph:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !68   ; 8 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %.fr = freeze i32 %i.l
  %i.m = icmp slt i32 %.fr, 2                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  br i1 %i.f, label %.preheader26.lr.ph.split.us, label %.preheader

.preheader26.lr.ph.split.us:                      ; preds = %.preheader26.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %.fr50 = freeze i32 %i.s
  %i.t = icmp slt i32 %.fr50, 2
  br i1 %i.t, label %.preheader26.lr.ph.split.us.split.us, label %.preheader26.lr.ph.split.us.split

.preheader26.lr.ph.split.us.split.us:             ; preds = %.preheader26.lr.ph.split.us
  br i1 %i.m, label %.preheader26.us.us.us.preheader, label %.preheader26.us.us.preheader

.preheader26.us.us.preheader:                     ; preds = %.preheader26.lr.ph.split.us.split.us
  %wide.trip.count83 = zext nneg i32 %i.b to i64
  %wide.trip.count78 = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter131 = and i64 %wide.trip.count78, 3    ; 3 uses
  %i.u = icmp ult i32 %i.e, 4
  %unroll_iter136 = and i64 %wide.trip.count78, 2147483644
  %lcmp.mod133.not = icmp eq i64 %xtraiter131, 0
  %lcmp.mod135 = icmp ne i64 %xtraiter131, 0
  br label %.preheader26.us.us

.preheader26.us.us.us.preheader:                  ; preds = %.preheader26.lr.ph.split.us.split.us
  %wide.trip.count88 = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter139 = and i64 %wide.trip.count88, 3    ; 3 uses
  %i.v = icmp ult i32 %i.e, 4
  %unroll_iter144 = and i64 %wide.trip.count88, 2147483644
  %lcmp.mod141.not = icmp eq i64 %xtraiter139, 0
  %lcmp.mod143 = icmp ne i64 %xtraiter139, 0
  br label %.preheader26.us.us.us

.preheader26.us.us.us:                            ; preds = %.preheader26.us.us.us.preheader, %._crit_edge.us.us.us
  %.01830.us.us.us = phi i32 [ %i.bf, %._crit_edge.us.us.us ], [ 0, %.preheader26.us.us.us.preheader ]
  %.01929.us.us.us = phi double [ %.lcssa113, %._crit_edge.us.us.us ], [ 1.000000e+00, %.preheader26.us.us.us.preheader ] ; 2 uses
  br i1 %i.v, label %.epil.preheader138, label %.preheader26.us.us.us.new

.preheader26.us.us.us.new:                        ; preds = %.preheader26.us.us.us, %.preheader26.us.us.us.new
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %.preheader26.us.us.us.new ], [ 0, %.preheader26.us.us.us ] ; 6 uses
  %.127.us.us.us = phi double [ %i.ax, %.preheader26.us.us.us.new ], [ %.01929.us.us.us, %.preheader26.us.us.us ]
  %niter145 = phi i64 [ %niter145.next.3, %.preheader26.us.us.us.new ], [ 0, %.preheader26.us.us.us ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv85
  %i.x = load double, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv85
  %i.z = load double, ptr %i.y, align 8, !tbaa !50
  %i.aa = fmul double %i.x, %i.z
end_hunk_0
