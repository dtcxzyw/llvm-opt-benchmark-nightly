Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/mathfuncs_core.dispatch?download=true
inline.NumInlined: 116
inline.NumDeleted: 42
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv3hal12cpu_baseline6exp64fEPKdPdi:bb.a

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !25 ; 2 uses
  %i.e = fcmp olt double %i.d, f0xC0A03EE211C0456F
  %.sroa.speculated24 = select i1 %i.e, double f0xC0A03EE211C0456F, double %i.d ; 2 uses
  %i.f = fcmp ogt double %.sroa.speculated24, f0x40A03EE211C0456F
  %.sroa.speculated = select i1 %i.f, double f0x40A03EE211C0456F, double %.sroa.speculated24
  %i.g = fmul double %.sroa.speculated, f0x40571547652B82FE ; 2 uses
  %i.h = insertelement <2 x double> poison, double %i.g, i64 0
  %i.i = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.h) ; 3 uses
  %i.j = sitofp i32 %i.i to double
  %i.k = fsub double %i.g, %i.j
  %i.l = fmul double %i.k, 1.562500e-02           ; 5 uses
  %i.m = ashr i32 %i.i, 6                         ; 2 uses
  %i.n = add nsw i32 %i.m, 1023                   ; 2 uses
  %i.o = icmp ugt i32 %i.n, 2047
  %i.p = icmp slt i32 %i.m, -1023
  %i.q = select i1 %i.p, i32 0, i32 2047
  %i.r = select i1 %i.o, i32 %i.q, i32 %i.n
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 52
  %i.u = bitcast i64 %i.t to double
  %i.v = and i32 %i.i, 63
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !23
  %i.z = fmul double %i.y, %i.u
  %i.aa = call double @llvm.fmuladd.f64(double %i.l, double f0x3FC1B251FAD369CD, double f0x3FEFD3B7B51209EA)
  %i.ab = call double @llvm.fmuladd.f64(double %i.aa, double %i.l, double f0x4016F55AF73548B8)
  %i.ac = call double @llvm.fmuladd.f64(double %i.ab, double %i.l, double f0x4038D76C6C8C38D3)
  %i.ad = call double @llvm.fmuladd.f64(double %i.ac, double %i.l, double f0x4051EB5AB9AE5E70)
  %i.ae = call double @llvm.fmuladd.f64(double %i.ad, double %i.l, double f0x4059DA2747AF5C7E)
  %i.af = fmul double %i.z, %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %i.af, ptr %i.ag, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

bb.b:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.ah

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !21
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #13
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

declare noundef ptr @_ZN2cv7details12getExpTab64fEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3hal12cpu_baseline6log32fEPKfPfi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3hal12cpu_baseline6log32fEPKfPfiE25__cv_trace_location_fn906)
  %i.a = invoke noundef ptr @_ZN2cv7details12getLogTab32fEv()
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !66   ; 3 uses
  %i.e = and i32 %i.d, 32767
  %i.f = or disjoint i32 %i.e, 1065353216
  %i.g = lshr i32 %i.d, 14
  %i.h = and i32 %i.g, 510                        ; 2 uses
  %i.i = lshr i32 %i.d, 23
  %i.j = and i32 %i.i, 255
  %i.k = add nsw i32 %i.j, -127
  %i.l = sitofp i32 %i.k to float
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !14
  %i.p = call float @llvm.fmuladd.f32(float %i.l, float f0x3F317218, float %i.o)
  %i.q = bitcast i32 %i.f to float
  %i.r = fadd float %i.q, -1.000000e+00
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !14
  %i.u = icmp eq i32 %i.h, 510
  %i.v = select i1 %i.u, float f0xBB000000, float 0.000000e+00
  %i.w = call float @llvm.fmuladd.f32(float %i.r, float %i.t, float %i.v) ; 3 uses
  %i.x = call float @llvm.fmuladd.f32(float %i.w, float f0x3EAAAAAB, float -5.000000e-01)
  %i.y = call float @llvm.fmuladd.f32(float %i.x, float %i.w, float 1.000000e+00)
  %i.z = call float @llvm.fmuladd.f32(float %i.y, float %i.w, float %i.p)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.z, ptr %i.aa, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !65

bb.b:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.ab

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !21
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #13
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

declare noundef ptr @_ZN2cv7details12getLogTab32fEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3hal12cpu_baseline6log64fEPKdPdi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3hal12cpu_baseline6log64fEPKdPdiE25__cv_trace_location_fn977)
  %i.a = invoke noundef ptr @_ZN2cv7details12getLogTab64fEv()
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = load i64, ptr %i.c, align 8, !tbaa !69   ; 4 uses
  %i.e = and i64 %i.d, 17592186044415
  %i.f = or disjoint i64 %i.e, 4607182418800017408
  %i.g = lshr i64 %i.d, 43
  %i.h = lshr i64 %i.d, 52
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 2047
  %i.k = add nsw i32 %i.j, -1023
  %i.l = sitofp i32 %i.k to double
  %i.m = and i64 %i.g, 510
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !23
  %i.p = bitcast i64 %i.f to double
  %i.q = fadd double %i.p, -1.000000e+00
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !23
  %i.t = and i64 %i.d, 4486007441326080
  %i.u = icmp eq i64 %i.t, 4486007441326080
  %i.v = select i1 %i.u, double f0xBF60000000000000, double 0.000000e+00
  %i.w = call double @llvm.fmuladd.f64(double %i.q, double %i.s, double %i.v) ; 3 uses
  %i.x = fmul double %i.w, %i.w                   ; 4 uses
  %i.y = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.x, i64 0 ; 2 uses
  %i.z = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> <double f0x3FC2492492492493, double 0.000000e+00>, <2 x double> <double 2.000000e-01, double -1.250000e-01>)
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.aa, <2 x double> <double f0x3FD5555555555555, double f0xBFC5555555555555>)
  %4 = insertelement <2 x double> poison, double %i.x, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %5, <2 x double> <double 1.000000e+00, double -2.500000e-01>) ; 2 uses
  %i.ac = extractelement <2 x double> %6, i64 0
  %7 = fmul double %i.w, %i.ac
  %8 = extractelement <2 x double> %6, i64 1
  %i.ad = call double @llvm.fmuladd.f64(double %8, double %i.x, double -5.000000e-01)
  %i.ae = insertelement <2 x double> poison, double %i.l, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = insertelement <2 x double> <double f0x3FE62E42FEFA39EF, double poison>, double %i.x, i64 1
  %i.ah = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %7, i64 1
  %i.aj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ag, <2 x double> %i.ai)
  %i.ak = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.aj)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %i.ak, ptr %i.al, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

bb.b:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.am

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !21
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #13
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

declare noundef ptr @_ZN2cv7details12getLogTab64fEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_ZN2cv3hal12cpu_baseline9fastAtan2Eff(float noundef %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef float @llvm.fabs.f32(float %1) ; 3 uses
  %i.b = tail call noundef float @llvm.fabs.f32(float %0) ; 3 uses
  %i.c = fcmp ult float %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fadd float %i.a, f0x25800000
  %i.e = fdiv float %i.b, %i.d                    ; 3 uses
  %i.f = fmul float %i.e, %i.e                    ; 3 uses
  %i.g = tail call float @llvm.fmuladd.f32(float %i.f, float f0xC0228AD9, float f0x410E9FBF)
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.f, float f0xC19556EE)
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.f, float f0x4265226F)
  %i.j = fmul float %i.e, %i.i
  br label %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_18atan_f32Eff.exit

bb.c:                                             ; preds = %bb.a
  %i.k = fadd float %i.b, f0x25800000
  %i.l = fdiv float %i.a, %i.k                    ; 3 uses
  %i.m = fmul float %i.l, %i.l                    ; 3 uses
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float f0xC0228AD9, float f0x410E9FBF)
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %i.m, float f0xC19556EE)
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float %i.m, float f0x4265226F)
  %i.q = fneg float %i.p
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %i.l, float 9.000000e+01)
  br label %_ZN2cv3hal12cpu_baseline12_GLOBAL__N_18atan_f32Eff.exit

_ZN2cv3hal12cpu_baseline12_GLOBAL__N_18atan_f32Eff.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi float [ %i.j, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = fcmp olt float %1, 0.000000e+00
  %i.t = fsub float 1.800000e+02, %.0.i
  %.1.i = select i1 %i.s, float %i.t, float %.0.i ; 2 uses
  %i.u = fcmp olt float %0, 0.000000e+00
  %i.v = fsub float 3.600000e+02, %.1.i
  %.2.i = select i1 %i.u, float %i.v, float %.1.i
  ret float %.2.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3hal14cartToPolar32fEPKfS2_PfS3_ib(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3hal14cartToPolar32fEPKfS2_PfS3_ibE24__cv_trace_location_fn14)
  invoke void @_ZN2cv3hal12cpu_baseline14cartToPolar32fEPKfS3_PfS4_ib(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
          to label %.critedge unwind label %bb.d

.critedge:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #13
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.critedge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3hal14cartToPolar64fEPKdS2_PdS3_ib(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3hal14cartToPolar64fEPKdS2_PdS3_ibE24__cv_trace_location_fn24)
  invoke void @_ZN2cv3hal12cpu_baseline14cartToPolar64fEPKdS3_PdS4_ib(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
          to label %.critedge unwind label %bb.d

.critedge:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #13
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.critedge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3hal14polarToCart32fEPKfS2_PfS3_ib(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3hal14polarToCart32fEPKfS2_PfS3_ibE24__cv_trace_location_fn34)
  invoke void @_ZN2cv3hal12cpu_baseline14polarToCart32fEPKfS3_PfS4_ib(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
          to label %.critedge unwind label %bb.d

.critedge:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #13
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.critedge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3hal14polarToCart64fEPKdS2_PdS3_ib(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3hal14polarToCart64fEPKdS2_PdS3_ibE24__cv_trace_location_fn44)
  invoke void @_ZN2cv3hal12cpu_baseline14polarToCart64fEPKdS3_PdS4_ib(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
end_hunk_0
