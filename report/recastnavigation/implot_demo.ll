Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot_demo?download=true
inline.NumInlined: 396
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6ImPlot16Demo_Histogram2DEv:bb.a
bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot16Demo_Histogram2DEvE5dist2) #20
  %.not2 = icmp eq i32 %i.i, 0
  br i1 %.not2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6ImPlot18NormalDistributionILi100000EEC2Edd(ptr noundef nonnull align 8 dereferenceable(800000) @_ZZN6ImPlot16Demo_Histogram2DEvE5dist2, double noundef 1.000000e+00, double noundef 1.000000e+00)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot16Demo_Histogram2DEvE5dist2) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  tail call void @_ZN6ImPlot12PushColormapEPKc(ptr noundef nonnull @.str.190) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.j = tail call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() #20
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.j, i64 0
  %i.k = fadd float %.sroa.0.0.vec.extract, -1.000000e+02
  %i.l = tail call noundef nonnull align 4 dereferenceable(1232) ptr @_ZN5ImGui8GetStyleEv() #20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.n = load float, ptr %i.m, align 4, !tbaa !93
  %i.o = fsub float %i.k, %i.n
  store float %i.o, ptr %0, align 4, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !38
  %i.q = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.191, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef null, ptr noundef null, i32 noundef 2560, i32 noundef 2560) #20
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef -6.000000e+00, double noundef 6.000000e+00, double noundef -6.000000e+00, double noundef 6.000000e+00, i32 noundef 2) #20
  %i.r = load i32, ptr @_ZZN6ImPlot16Demo_Histogram2DEvE5count, align 4, !tbaa !14
  %i.s = load i32, ptr @_ZZN6ImPlot16Demo_Histogram2DEvE6xybins, align 4, !tbaa !14
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_Histogram2DEvE6xybins, i64 4), align 4, !tbaa !14
  store <2 x double> <double -6.000000e+00, double 6.000000e+00>, ptr %1, align 16, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> <double -6.000000e+00, double 6.000000e+00>, ptr %i.u, align 16, !tbaa !16
  %i.v = load i32, ptr @_ZZN6ImPlot16Demo_Histogram2DEvE10hist_flags, align 4, !tbaa !14
  %i.w = call noundef double @_ZN6ImPlot15PlotHistogram2DIdEEdPKcPKT_S5_iii10ImPlotRecti(ptr noundef nonnull @.str.192, ptr noundef nonnull @_ZZN6ImPlot16Demo_Histogram2DEvE5dist1, ptr noundef nonnull @_ZZN6ImPlot16Demo_Histogram2DEvE5dist2, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.t, ptr noundef nonnull byval(%struct.ImPlotRect) align 8 %1, i32 noundef %i.v) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi double [ %i.w, %bb.h ], [ 0.000000e+00, %bb.g ]
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.x = load i32, ptr @_ZZN6ImPlot16Demo_Histogram2DEvE10hist_flags, align 4, !tbaa !14
  %i.y = and i32 %i.x, 4096
  %.not3 = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not3, ptr @.str.188, ptr @.str.180
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x float> <float 1.000000e+02, float 0.000000e+00>, ptr %2, align 8, !tbaa !32
  call void @_ZN6ImPlot13ColormapScaleEPKcddRK6ImVec2S1_ii(ptr noundef nonnull %i.z, double noundef 0.000000e+00, double noundef %.0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull @.str.170, i32 noundef 0, i32 noundef -1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN6ImPlot11PopColormapEi(i32 noundef 1) #20
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui10SliderInt2EPKcPiiiS1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot18NormalDistributionILi100000EEC2Edd(ptr noundef nonnull align 8 dereferenceable(800000) %0, double noundef %1, double noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %.pre = load i32, ptr @_ZZN6ImPlot11RandomGaussEvE5phase, align 4, !tbaa !14
  br label %bb.c

bb.b:                                             ; preds = %_ZN6ImPlot11RandomGaussEv.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN6ImPlot11RandomGaussEv.exit
  %i.a = phi i32 [ %.pre, %bb.a ], [ %i.ad, %_ZN6ImPlot11RandomGaussEv.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN6ImPlot11RandomGaussEv.exit ] ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %i.c = tail call i32 @rand() #20
  %i.d = tail call i32 @rand() #20
  %i.e = insertelement <2 x i32> poison, i32 %i.c, i64 0
  %i.f = insertelement <2 x i32> %i.e, i32 %i.d, i64 1
  %i.g = sitofp <2 x i32> %i.f to <2 x double>
  %i.h = fdiv <2 x double> %i.g, splat (double f0x41DFFFFFFFC00000)
  %i.i = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> splat (double 2.000000e+00), <2 x double> splat (double -1.000000e+00)) ; 2 uses
  %i.j = extractelement <2 x double> %i.i, i64 1  ; 3 uses
  store double %i.j, ptr @_ZZN6ImPlot11RandomGaussEvE2V2, align 8, !tbaa !16
  %i.k = fmul double %i.j, %i.j
  %i.l = extractelement <2 x double> %i.i, i64 0  ; 3 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.k) ; 5 uses
  store double %i.m, ptr @_ZZN6ImPlot11RandomGaussEvE1S, align 8, !tbaa !16
  %i.n = fcmp oge double %i.m, 1.000000e+00
  %i.o = fcmp oeq double %i.m, 0.000000e+00
  %i.p = or i1 %i.n, %i.o
  br i1 %i.p, label %.preheader.i, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %.preheader.i
  %i.q = tail call ninf double @llvm.log.f64(double %i.m)
  %i.r = fmul double %i.q, -2.000000e+00
  %i.s = fdiv double %i.r, %i.m
  %i.t = tail call double @sqrt(double noundef %i.s) #20
  %i.u = fmul double %i.l, %i.t
  %.pre.i = load i32, ptr @_ZZN6ImPlot11RandomGaussEvE5phase, align 4, !tbaa !14
  br label %_ZN6ImPlot11RandomGaussEv.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load double, ptr @_ZZN6ImPlot11RandomGaussEvE2V2, align 8, !tbaa !16
  %i.w = load double, ptr @_ZZN6ImPlot11RandomGaussEvE1S, align 8, !tbaa !16 ; 2 uses
  %i.x = tail call double @log(double noundef %i.w) #20
  %i.y = fmul double %i.x, -2.000000e+00
  %i.z = fdiv double %i.y, %i.w
  %i.aa = tail call double @sqrt(double noundef %i.z) #20
  %i.ab = fmul double %i.v, %i.aa
  br label %_ZN6ImPlot11RandomGaussEv.exit

_ZN6ImPlot11RandomGaussEv.exit:                   ; preds = %bb.d, %bb.e
  %i.ac = phi i32 [ %.pre.i, %bb.d ], [ %i.a, %bb.e ]
  %.0.i = phi double [ %i.u, %bb.d ], [ %i.ab, %bb.e ]
  %i.ad = sub nuw nsw i32 1, %i.ac                ; 2 uses
  store i32 %i.ad, ptr @_ZZN6ImPlot11RandomGaussEvE5phase, align 4, !tbaa !14
  %i.ae = tail call double @llvm.fmuladd.f64(double %.0.i, double %2, double %1)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store double %i.ae, ptr %i.af, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !94
}

declare void @_ZN6ImPlot12PushColormapEPKc(ptr noundef) local_unnamed_addr #5

declare <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() local_unnamed_addr #5

declare noundef nonnull align 4 dereferenceable(1232) ptr @_ZN5ImGui8GetStyleEv() local_unnamed_addr #5

declare noundef double @_ZN6ImPlot15PlotHistogram2DIdEEdPKcPKT_S5_iii10ImPlotRecti(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ImPlotRect) align 8, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot17Demo_DigitalPlotsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.193) #20
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00) #20
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.194) #20
  tail call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00) #20
  %i.b = load atomic i8, ptr @_ZGVZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital) #20
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.preheader56.preheader

.preheader56.preheader:                           ; preds = %bb.b
  tail call void @_ZN6ImPlot15ScrollingBufferC2Ei(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i32 noundef 2000)
  tail call void @_ZN6ImPlot15ScrollingBufferC2Ei(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 24), i32 noundef 2000)
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor, ptr null, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital) #20
  br label %bb.c

bb.c:                                             ; preds = %.preheader56.preheader, %bb.b, %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog) #20
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.e, label %.preheader55.preheader

.preheader55.preheader:                           ; preds = %bb.d
  tail call void @_ZN6ImPlot15ScrollingBufferC2Ei(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i32 noundef 2000)
  tail call void @_ZN6ImPlot15ScrollingBufferC2Ei(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 24), i32 noundef 2000)
  %i.i = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.195, ptr null, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog) #20
  br label %bb.e

bb.e:                                             ; preds = %.preheader55.preheader, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.196, ptr noundef nonnull @_ZZN6ImPlot17Demo_DigitalPlotsEvE11showDigital) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.197, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11showDigital, i64 1)) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.l = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.198, ptr noundef nonnull @_ZZN6ImPlot17Demo_DigitalPlotsEvE10showAnalog) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.m = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.199, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10showAnalog, i64 1)) #20 ; 0 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load float, ptr %i.o, align 8, !tbaa !39
  %i.q = load float, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE1t, align 4, !tbaa !32
  %i.r = fadd float %i.p, %i.q                    ; 4 uses
  store float %i.r, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE1t, align 4, !tbaa !32
  %i.s = load i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11showDigital, align 1, !tbaa !34, !range !35, !noundef !36
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit

bb.f:                                             ; preds = %bb.e
  %i.u = fmul float %i.r, 2.000000e+00
  %i.v = tail call float @sinf(float noundef %i.u) #20
  %i.w = fpext float %i.v to double
  %i.x = fcmp ogt double %i.w, 4.500000e-01
  %i.y = uitofp i1 %i.x to float                  ; 2 uses
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 8), align 8, !tbaa !42 ; 7 uses
  %i.aa = load i32, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, align 16, !tbaa !44 ; 2 uses
  %i.ab = icmp slt i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 12), align 4, !tbaa !45
  %i.ad = icmp eq i32 %i.z, %i.ac
  br i1 %i.ad, label %bb.h, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i: ; preds = %bb.g
  %.pre.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 16), align 16, !tbaa !46
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.z, 1
  %.not.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = sdiv i32 %i.z, 2
  %i.ag = add nsw i32 %i.af, %i.z
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ah = phi i32 [ %i.ag, %bb.i ], [ 8, %bb.h ]
  %i.ai = tail call noundef i32 @llvm.smax.i32(i32 %i.ah, i32 %i.ae) ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 3
  %i.al = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ak) #20 ; 3 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 16), align 16, !tbaa !46 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not6.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 8), align 8, !tbaa !42
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.al, ptr nonnull align 4 %i.am, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 16), align 16, !tbaa !46
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aq) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  store ptr %i.al, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 16), align 16, !tbaa !46
  store i32 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 12), align 4, !tbaa !45
  %.pre3.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 8), align 8, !tbaa !42
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i:     ; preds = %bb.k, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i
  %i.ar = phi i32 [ %i.z, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.k ]
  %i.as = phi ptr [ %.pre.i.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %i.al, %bb.k ]
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at ; 2 uses
  store float %i.r, ptr %i.au, align 4
  %.sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.y, ptr %.sroa_idx6.i, align 4
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 8), align 8, !tbaa !42
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 8), align 8, !tbaa !42
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit

bb.l:                                             ; preds = %bb.f
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 4), align 4, !tbaa !47 ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 16), align 16, !tbaa !46
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  store float %i.r, ptr %i.ba, align 4, !tbaa !32
  %.sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store float %i.y, ptr %.sroa_idx5.i, align 4, !tbaa !32
  %i.bb = add nsw i32 %i.ax, 1
  %i.bc = srem i32 %i.bb, %i.aa
  store i32 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 4), align 4, !tbaa !47
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit

_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit:     ; preds = %bb.l, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i, %bb.e
  %i.bd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11showDigital, i64 1), align 1, !tbaa !34, !range !35, !noundef !36
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.m, label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit34

bb.m:                                             ; preds = %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit
  %i.bf = load float, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE1t, align 4, !tbaa !32 ; 3 uses
  %i.bg = fmul float %i.bf, 2.000000e+00
  %i.bh = tail call float @sinf(float noundef %i.bg) #20
  %i.bi = fpext float %i.bh to double
  %i.bj = fcmp olt double %i.bi, 4.500000e-01
  %i.bk = uitofp i1 %i.bj to float                ; 2 uses
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 32), align 16, !tbaa !42 ; 7 uses
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 24), align 8, !tbaa !44 ; 2 uses
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 36), align 4, !tbaa !45
  %i.bp = icmp eq i32 %i.bl, %i.bo
  br i1 %i.bp, label %bb.o, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i26

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i26: ; preds = %bb.n
  %.pre.i.i27 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 40), align 8, !tbaa !46
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i28

bb.o:                                             ; preds = %bb.n
  %i.bq = add nsw i32 %i.bl, 1
  %.not.i.i.i30 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i30, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i31, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = sdiv i32 %i.bl, 2
  %i.bs = add nsw i32 %i.br, %i.bl
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i31

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i31: ; preds = %bb.p, %bb.o
  %i.bt = phi i32 [ %i.bs, %bb.p ], [ 8, %bb.o ]
  %i.bu = tail call noundef i32 @llvm.smax.i32(i32 %i.bt, i32 %i.bq) ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 3
  %i.bx = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bw) #20 ; 3 uses
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 40), align 8, !tbaa !46 ; 2 uses
  %.not6.i.i.i32 = icmp eq ptr %i.by, null
  br i1 %.not6.i.i.i32, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i31
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 32), align 16, !tbaa !42
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bx, ptr nonnull align 4 %i.by, i64 %i.cb, i1 false)
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 40), align 8, !tbaa !46
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cc) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i31
  store ptr %i.bx, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 40), align 8, !tbaa !46
  store i32 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 36), align 4, !tbaa !45
  %.pre3.i.i33 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 32), align 16, !tbaa !42
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i28

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i28:   ; preds = %bb.r, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i26
  %i.cd = phi i32 [ %i.bl, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i26 ], [ %.pre3.i.i33, %bb.r ]
  %i.ce = phi ptr [ %.pre.i.i27, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i26 ], [ %i.bx, %bb.r ]
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  store float %i.bf, ptr %i.cg, align 4
  %.sroa_idx6.i29 = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store float %i.bk, ptr %.sroa_idx6.i29, align 4
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 32), align 16, !tbaa !42
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 32), align 16, !tbaa !42
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit34

bb.s:                                             ; preds = %bb.m
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 28), align 4, !tbaa !47 ; 2 uses
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 40), align 8, !tbaa !46
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  store float %i.bf, ptr %i.cm, align 4, !tbaa !32
  %.sroa_idx5.i25 = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store float %i.bk, ptr %.sroa_idx5.i25, align 4, !tbaa !32
  %i.cn = add nsw i32 %i.cj, 1
  %i.co = srem i32 %i.cn, %i.bm
  store i32 %i.co, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 28), align 4, !tbaa !47
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit34

_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit34:   ; preds = %bb.s, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i28, %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit
  %i.cp = load i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10showAnalog, align 1, !tbaa !34, !range !35, !noundef !36
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.t, label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit44

bb.t:                                             ; preds = %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit34
  %i.cr = load float, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE1t, align 4, !tbaa !32 ; 3 uses
  %i.cs = fmul float %i.cr, 2.000000e+00
  %i.ct = tail call float @sinf(float noundef %i.cs) #20 ; 2 uses
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 8), align 8, !tbaa !42 ; 7 uses
  %i.cv = load i32, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, align 16, !tbaa !44 ; 2 uses
  %i.cw = icmp slt i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 12), align 4, !tbaa !45
  %i.cy = icmp eq i32 %i.cu, %i.cx
  br i1 %i.cy, label %bb.v, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i36

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i36: ; preds = %bb.u
  %.pre.i.i37 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 16), align 16, !tbaa !46
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i38

bb.v:                                             ; preds = %bb.u
  %i.cz = add nsw i32 %i.cu, 1
  %.not.i.i.i40 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i40, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i41, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = sdiv i32 %i.cu, 2
  %i.db = add nsw i32 %i.da, %i.cu
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i41

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i41: ; preds = %bb.w, %bb.v
  %i.dc = phi i32 [ %i.db, %bb.w ], [ 8, %bb.v ]
  %i.dd = tail call noundef i32 @llvm.smax.i32(i32 %i.dc, i32 %i.cz) ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = shl nsw i64 %i.de, 3
  %i.dg = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.df) #20 ; 3 uses
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 16), align 16, !tbaa !46 ; 2 uses
  %.not6.i.i.i42 = icmp eq ptr %i.dh, null
  br i1 %.not6.i.i.i42, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i41
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 8), align 8, !tbaa !42
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dg, ptr nonnull align 4 %i.dh, i64 %i.dk, i1 false)
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 16), align 16, !tbaa !46
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.dl) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i41
  store ptr %i.dg, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 16), align 16, !tbaa !46
  store i32 %i.dd, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 12), align 4, !tbaa !45
  %.pre3.i.i43 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 8), align 8, !tbaa !42
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i38

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i38:   ; preds = %bb.y, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i36
  %i.dm = phi i32 [ %i.cu, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i36 ], [ %.pre3.i.i43, %bb.y ]
  %i.dn = phi ptr [ %.pre.i.i37, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i36 ], [ %i.dg, %bb.y ]
  %i.do = sext i32 %i.dm to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  store float %i.cr, ptr %i.dp, align 4
  %.sroa_idx6.i39 = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store float %i.ct, ptr %.sroa_idx6.i39, align 4
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 8), align 8, !tbaa !42
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 8), align 8, !tbaa !42
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit44

bb.z:                                             ; preds = %bb.t
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 4), align 4, !tbaa !47 ; 2 uses
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 16), align 16, !tbaa !46
  %i.du = sext i32 %i.ds to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.du ; 2 uses
  store float %i.cr, ptr %i.dv, align 4, !tbaa !32
  %.sroa_idx5.i35 = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store float %i.ct, ptr %.sroa_idx5.i35, align 4, !tbaa !32
  %i.dw = add nsw i32 %i.ds, 1
  %i.dx = srem i32 %i.dw, %i.cv
  store i32 %i.dx, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 4), align 4, !tbaa !47
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit44

_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit44:   ; preds = %bb.z, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i38, %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit34
  %i.dy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10showAnalog, i64 1), align 1, !tbaa !34, !range !35, !noundef !36
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.aa, label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit54

bb.aa:                                            ; preds = %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit44
  %i.ea = load float, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE1t, align 4, !tbaa !32 ; 3 uses
  %i.eb = fmul float %i.ea, 2.000000e+00
  %i.ec = tail call float @cosf(float noundef %i.eb) #20 ; 2 uses
  %i.ed = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 32), align 16, !tbaa !42 ; 7 uses
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 24), align 8, !tbaa !44 ; 2 uses
  %i.ef = icmp slt i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 36), align 4, !tbaa !45
  %i.eh = icmp eq i32 %i.ed, %i.eg
  br i1 %i.eh, label %bb.ac, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i46

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i46: ; preds = %bb.ab
  %.pre.i.i47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 40), align 8, !tbaa !46
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i48

bb.ac:                                            ; preds = %bb.ab
  %i.ei = add nsw i32 %i.ed, 1
  %.not.i.i.i50 = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i.i50, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i51, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ej = sdiv i32 %i.ed, 2
  %i.ek = add nsw i32 %i.ej, %i.ed
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i51

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i51: ; preds = %bb.ad, %bb.ac
  %i.el = phi i32 [ %i.ek, %bb.ad ], [ 8, %bb.ac ]
  %i.em = tail call noundef i32 @llvm.smax.i32(i32 %i.el, i32 %i.ei) ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = shl nsw i64 %i.en, 3
  %i.ep = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.eo) #20 ; 3 uses
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 40), align 8, !tbaa !46 ; 2 uses
  %.not6.i.i.i52 = icmp eq ptr %i.eq, null
  br i1 %.not6.i.i.i52, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i51
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 32), align 16, !tbaa !42
  %i.es = sext i32 %i.er to i64
  %i.et = shl nsw i64 %i.es, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ep, ptr nonnull align 4 %i.eq, i64 %i.et, i1 false)
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 40), align 8, !tbaa !46
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.eu) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i51
  store ptr %i.ep, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 40), align 8, !tbaa !46
  store i32 %i.em, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 36), align 4, !tbaa !45
  %.pre3.i.i53 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 32), align 16, !tbaa !42
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i48

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i48:   ; preds = %bb.af, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i46
  %i.ev = phi i32 [ %i.ed, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i46 ], [ %.pre3.i.i53, %bb.af ]
  %i.ew = phi ptr [ %.pre.i.i47, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i46 ], [ %i.ep, %bb.af ]
  %i.ex = sext i32 %i.ev to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ex ; 2 uses
  store float %i.ea, ptr %i.ey, align 4
  %.sroa_idx6.i49 = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store float %i.ec, ptr %.sroa_idx6.i49, align 4
  %i.ez = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 32), align 16, !tbaa !42
  %i.fa = add nsw i32 %i.ez, 1
  store i32 %i.fa, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 32), align 16, !tbaa !42
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit54

bb.ag:                                            ; preds = %bb.aa
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 28), align 4, !tbaa !47 ; 2 uses
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 40), align 8, !tbaa !46
  %i.fd = sext i32 %i.fb to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fd ; 2 uses
  store float %i.ea, ptr %i.fe, align 4, !tbaa !32
  %.sroa_idx5.i45 = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store float %i.ec, ptr %.sroa_idx5.i45, align 4, !tbaa !32
  %i.ff = add nsw i32 %i.fb, 1
  %i.fg = srem i32 %i.ff, %i.ee
  store i32 %i.fg, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 28), align 4, !tbaa !47
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit54

_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit54:   ; preds = %bb.ag, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i48, %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !32
  %i.fh = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.200, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.fh, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit54
  %i.fi = load float, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE1t, align 4, !tbaa !32
  %i.fj = fpext float %i.fi to double             ; 2 uses
  %i.fk = fadd double %i.fj, -1.000000e+01
  call void @_ZN6ImPlot15SetupAxisLimitsEiddi(i32 noundef 0, double noundef %i.fk, double noundef %i.fj, i32 noundef 1) #20
  call void @_ZN6ImPlot15SetupAxisLimitsEiddi(i32 noundef 3, double noundef -1.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  %i.fl = load i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11showDigital, align 1, !tbaa !34, !range !35, !noundef !36
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 8), align 8
  %i.fo = icmp sgt i32 %i.fn, 0
  %or.cond = select i1 %i.fm, i1 %i.fo, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.201, i32 noundef 0) #20 ; 0 uses
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 16), align 16, !tbaa !46 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 8), align 8, !tbaa !42
  %i.ft = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 4), align 4, !tbaa !47
  call void @_ZN6ImPlot11PlotDigitalIfEEvPKcPKT_S5_iiii(ptr noundef nonnull %i.a, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.fr, i32 noundef %i.fs, i32 noundef 0, i32 noundef %i.ft, i32 noundef 8) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.fu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11showDigital, i64 1), align 1, !tbaa !34, !range !35, !noundef !36
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 32), align 16
  %i.fx = icmp sgt i32 %i.fw, 0
  %or.cond72 = select i1 %i.fv, i1 %i.fx, i1 false
  br i1 %or.cond72, label %bb.ak, label %.preheader.preheader

bb.ak:                                            ; preds = %bb.aj
  %i.fy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.201, i32 noundef 1) #20 ; 0 uses
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 40), align 8, !tbaa !46 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 32), align 16, !tbaa !42
  %i.gc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 28), align 4, !tbaa !47
  call void @_ZN6ImPlot11PlotDigitalIfEEvPKcPKT_S5_iiii(ptr noundef nonnull %i.a, ptr noundef nonnull %i.fz, ptr noundef nonnull %i.ga, i32 noundef %i.gb, i32 noundef 0, i32 noundef %i.gc, i32 noundef 8) #20
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ak, %bb.aj
  %i.gd = load i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10showAnalog, align 1, !tbaa !34, !range !35, !noundef !36
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.al, label %.preheader.1

bb.al:                                            ; preds = %.preheader.preheader
  %i.gf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.202, i32 noundef 0) #20 ; 0 uses
  %i.gg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 8), align 8, !tbaa !42 ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %bb.am, label %.preheader.1

bb.am:                                            ; preds = %bb.al
  %i.gi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 16), align 16, !tbaa !46 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 4), align 4, !tbaa !47
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull %i.a, ptr noundef nonnull %i.gi, ptr noundef nonnull %i.gj, i32 noundef %i.gg, i32 noundef 0, i32 noundef %i.gk, i32 noundef 8) #20
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.am, %bb.al
  %i.gl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10showAnalog, i64 1), align 1, !tbaa !34, !range !35, !noundef !36
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.preheader.1
  %i.gn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.202, i32 noundef 1) #20 ; 0 uses
  %i.go = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 32), align 16, !tbaa !42 ; 2 uses
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 40), align 8, !tbaa !46 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.gs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 28), align 4, !tbaa !47
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull %i.a, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gr, i32 noundef %i.go, i32 noundef 0, i32 noundef %i.gs, i32 noundef 8) #20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.preheader.1
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot15ScrollingBufferC2Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 %1, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not.i = icmp sgt i32 %1, 0
  br i1 %.not.i, label %bb.b, label %_ZN8ImVectorI6ImVec2E7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.e) #20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %.not6.i = icmp eq ptr %i.h, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.a, align 8, !tbaa !42
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.f, ptr nonnull align 4 %i.h, i64 %i.k, i1 false)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !46
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.l) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.f, ptr %i.g, align 8, !tbaa !46
  store i32 %1, ptr %i.c, align 4, !tbaa !45
  br label %_ZN8ImVectorI6ImVec2E7reserveEi.exit

_ZN8ImVectorI6ImVec2E7reserveEi.exit:             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor(ptr nofree readnone captures(none) %0) #8 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 40), align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN6ImPlot15ScrollingBufferD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.a) #20
  br label %_ZN6ImPlot15ScrollingBufferD2Ev.exit

_ZN6ImPlot15ScrollingBufferD2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE11dataDigital, i64 16), align 16, !tbaa !46 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.b, null
  br i1 %.not.i.i.1, label %_ZN6ImPlot15ScrollingBufferD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN6ImPlot15ScrollingBufferD2Ev.exit
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b) #20
  br label %_ZN6ImPlot15ScrollingBufferD2Ev.exit.1

_ZN6ImPlot15ScrollingBufferD2Ev.exit.1:           ; preds = %bb.c, %_ZN6ImPlot15ScrollingBufferD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot15ScrollingBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8ImVectorI6ImVec2ED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b) #20
  br label %_ZN8ImVectorI6ImVec2ED2Ev.exit

_ZN8ImVectorI6ImVec2ED2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.195(ptr nofree readnone captures(none) %0) #8 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 40), align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN6ImPlot15ScrollingBufferD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.a) #20
  br label %_ZN6ImPlot15ScrollingBufferD2Ev.exit

_ZN6ImPlot15ScrollingBufferD2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot17Demo_DigitalPlotsEvE10dataAnalog, i64 16), align 16, !tbaa !46 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.b, null
  br i1 %.not.i.i.1, label %_ZN6ImPlot15ScrollingBufferD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN6ImPlot15ScrollingBufferD2Ev.exit
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b) #20
  br label %_ZN6ImPlot15ScrollingBufferD2Ev.exit.1

_ZN6ImPlot15ScrollingBufferD2Ev.exit.1:           ; preds = %bb.c, %_ZN6ImPlot15ScrollingBufferD2Ev.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @_ZN6ImPlot11PlotDigitalIfEEvPKcPKT_S5_iiii(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot11Demo_ImagesEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImPlotPoint, align 16       ; 4 uses
  %2 = alloca %struct.ImPlotPoint, align 16       ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.203) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.204) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.205) #20
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.206, ptr noundef nonnull @_ZZN6ImPlot11Demo_ImagesEvE4bmin, float noundef -2.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.207, i32 noundef 0) #20 ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.208, ptr noundef nonnull @_ZZN6ImPlot11Demo_ImagesEvE4bmax, float noundef -2.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.207, i32 noundef 0) #20 ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.209, ptr noundef nonnull @_ZZN6ImPlot11Demo_ImagesEvE3uv0, float noundef -2.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.207, i32 noundef 0) #20 ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.210, ptr noundef nonnull @_ZZN6ImPlot11Demo_ImagesEvE3uv1, float noundef -2.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.207, i32 noundef 0) #20 ; 0 uses
  %i.e = tail call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.211, ptr noundef nonnull @_ZZN6ImPlot11Demo_ImagesEvE4tint, i32 noundef 0) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !32
  %i.f = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.212, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !97
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.k = load <2 x float>, ptr @_ZZN6ImPlot11Demo_ImagesEvE4bmin, align 8, !tbaa !32
  %i.l = fpext <2 x float> %i.k to <2 x double>
  store <2 x double> %i.l, ptr %1, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.m = load <2 x float>, ptr @_ZZN6ImPlot11Demo_ImagesEvE4bmax, align 8, !tbaa !32
  %i.n = fpext <2 x float> %i.m to <2 x double>
  store <2 x double> %i.n, ptr %2, align 16, !tbaa !16
  call void @_ZN6ImPlot9PlotImageEPKc12ImTextureRefRK11ImPlotPointS5_RK6ImVec2S8_RK6ImVec4i(ptr noundef nonnull @.str.213, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(8) @_ZZN6ImPlot11Demo_ImagesEvE3uv0, ptr noundef nonnull align 4 dereferenceable(8) @_ZZN6ImPlot11Demo_ImagesEvE3uv1, ptr noundef nonnull align 4 dereferenceable(16) @_ZZN6ImPlot11Demo_ImagesEvE4tint, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot9PlotImageEPKc12ImTextureRefRK11ImPlotPointS5_RK6ImVec2S8_RK6ImVec4i(ptr noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot18Demo_RealtimePlotsEv() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 16            ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.214) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.215) #20
  %i.a = load atomic i8, ptr @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6sdata1 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6sdata1) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6ImPlot15ScrollingBufferC2Ei(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i32 noundef 2000)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6ImPlot15ScrollingBufferD2Ev, ptr nonnull @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6sdata1) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6sdata2 acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.g, !prof !33

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6sdata2) #20
  %.not5 = icmp eq i32 %i.g, 0
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6ImPlot15ScrollingBufferC2Ei(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i32 noundef 2000)
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6ImPlot15ScrollingBufferD2Ev, ptr nonnull @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6sdata2) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.i = load atomic i8, ptr @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6rdata1 acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.j, !prof !33

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6rdata1) #20
  %.not6 = icmp eq i32 %i.k, 0
  br i1 %.not6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6ImPlot13RollingBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata1)
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6ImPlot13RollingBufferD2Ev, ptr nonnull @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata1, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6rdata1) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.m = load atomic i8, ptr @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6rdata2 acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.k, label %bb.m, !prof !33

bb.k:                                             ; preds = %bb.j
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6rdata2) #20
  %.not7 = icmp eq i32 %i.o, 0
  br i1 %.not7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6ImPlot13RollingBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata2)
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6ImPlot13RollingBufferD2Ev, ptr nonnull @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata2, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot18Demo_RealtimePlotsEvE6rdata2) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.q = tail call <2 x float> @_ZN5ImGui11GetMousePosEv() #20 ; 2 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load float, ptr %i.s, align 8, !tbaa !39
  %i.u = load float, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE1t, align 4, !tbaa !32
  %i.v = fadd float %i.t, %i.u                    ; 5 uses
  store float %i.v, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE1t, align 4, !tbaa !32
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.q, i64 0
  %i.w = fmul float %.sroa.0.0.vec.extract, 5.000000e-04 ; 3 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 8), align 8, !tbaa !42 ; 7 uses
  %i.y = load i32, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, align 8, !tbaa !44 ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 12), align 4, !tbaa !45
  %i.ab = icmp eq i32 %i.x, %i.aa
  br i1 %i.ab, label %bb.o, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i: ; preds = %bb.n
  %.pre.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 16), align 8, !tbaa !46
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ac = add nsw i32 %i.x, 1
  %.not.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = sdiv i32 %i.x, 2
  %i.ae = add nsw i32 %i.ad, %i.x
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i: ; preds = %bb.p, %bb.o
  %i.af = phi i32 [ %i.ae, %bb.p ], [ 8, %bb.o ]
  %i.ag = tail call noundef i32 @llvm.smax.i32(i32 %i.af, i32 %i.ac) ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ai) #20 ; 3 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 16), align 8, !tbaa !46 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not6.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 8), align 8, !tbaa !42
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aj, ptr nonnull align 4 %i.ak, i64 %i.an, i1 false)
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 16), align 8, !tbaa !46
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ao) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i
  store ptr %i.aj, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 16), align 8, !tbaa !46
  store i32 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 12), align 4, !tbaa !45
  %.pre3.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 8), align 8, !tbaa !42
  %.pre.pre = load float, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE1t, align 4, !tbaa !32
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i:     ; preds = %bb.r, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i
  %.pre = phi float [ %i.v, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %.pre.pre, %bb.r ]
  %i.ap = phi i32 [ %i.x, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.r ]
  %i.aq = phi ptr [ %.pre.i.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i ], [ %i.aj, %bb.r ]
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  store float %i.v, ptr %i.as, align 4
  %.sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %i.w, ptr %.sroa_idx6.i, align 4
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 8), align 8, !tbaa !42
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 8), align 8, !tbaa !42
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit

bb.s:                                             ; preds = %bb.m
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 4), align 4, !tbaa !47 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 16), align 8, !tbaa !46
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  store float %i.v, ptr %i.ay, align 4, !tbaa !32
  %.sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store float %i.w, ptr %.sroa_idx5.i, align 4, !tbaa !32
  %i.az = add nsw i32 %i.av, 1
  %i.ba = srem i32 %i.az, %i.y
  store i32 %i.ba, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 4), align 4, !tbaa !47
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit

_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit:     ; preds = %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i, %bb.s
  %i.bb = phi float [ %.pre, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i ], [ %i.v, %bb.s ]
  tail call void @_ZN6ImPlot13RollingBuffer8AddPointEff(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata1, float noundef %i.bb, float noundef %i.w)
  %i.bc = load float, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE1t, align 4, !tbaa !32 ; 4 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.q, i64 1
  %i.bd = fmul float %.sroa.0.4.vec.extract, 5.000000e-04 ; 3 uses
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 8), align 8, !tbaa !42 ; 7 uses
  %i.bf = load i32, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, align 8, !tbaa !44 ; 2 uses
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.t, label %bb.y

bb.t:                                             ; preds = %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 12), align 4, !tbaa !45
  %i.bi = icmp eq i32 %i.be, %i.bh
  br i1 %i.bi, label %bb.u, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i9

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i9: ; preds = %bb.t
  %.pre.i.i10 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 16), align 8, !tbaa !46
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i11

bb.u:                                             ; preds = %bb.t
  %i.bj = add nsw i32 %i.be, 1
  %.not.i.i.i13 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i13, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i14, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = sdiv i32 %i.be, 2
  %i.bl = add nsw i32 %i.bk, %i.be
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i14

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i14: ; preds = %bb.v, %bb.u
  %i.bm = phi i32 [ %i.bl, %bb.v ], [ 8, %bb.u ]
  %i.bn = tail call noundef i32 @llvm.smax.i32(i32 %i.bm, i32 %i.bj) ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 3
  %i.bq = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bp) #20 ; 3 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 16), align 8, !tbaa !46 ; 2 uses
  %.not6.i.i.i15 = icmp eq ptr %i.br, null
  br i1 %.not6.i.i.i15, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i14
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 8), align 8, !tbaa !42
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr nonnull align 4 %i.br, i64 %i.bu, i1 false)
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 16), align 8, !tbaa !46
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bv) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i.i14
  store ptr %i.bq, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 16), align 8, !tbaa !46
  store i32 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 12), align 4, !tbaa !45
  %.pre3.i.i16 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 8), align 8, !tbaa !42
  %.pre18.pre = load float, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE1t, align 4, !tbaa !32
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i11

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i11:   ; preds = %bb.x, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i9
  %.pre18 = phi float [ %i.bc, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i9 ], [ %.pre18.pre, %bb.x ]
  %i.bw = phi i32 [ %i.be, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i9 ], [ %.pre3.i.i16, %bb.x ]
  %i.bx = phi ptr [ %.pre.i.i10, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i.i9 ], [ %i.bq, %bb.x ]
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by ; 2 uses
  store float %i.bc, ptr %i.bz, align 4
  %.sroa_idx6.i12 = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store float %i.bd, ptr %.sroa_idx6.i12, align 4
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 8), align 8, !tbaa !42
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 8), align 8, !tbaa !42
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit17

bb.y:                                             ; preds = %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 4), align 4, !tbaa !47 ; 2 uses
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 16), align 8, !tbaa !46
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  store float %i.bc, ptr %i.cf, align 4, !tbaa !32
  %.sroa_idx5.i8 = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store float %i.bd, ptr %.sroa_idx5.i8, align 4, !tbaa !32
  %i.cg = add nsw i32 %i.cc, 1
  %i.ch = srem i32 %i.cg, %i.bf
  store i32 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 4), align 4, !tbaa !47
  br label %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit17

_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit17:   ; preds = %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i11, %bb.y
  %i.ci = phi float [ %.pre18, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit.i11 ], [ %i.bc, %bb.y ]
  tail call void @_ZN6ImPlot13RollingBuffer8AddPointEff(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata2, float noundef %i.ci, float noundef %i.bd)
  %i.cj = tail call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.216, ptr noundef nonnull @_ZZN6ImPlot18Demo_RealtimePlotsEvE7history, float noundef 1.000000e+00, float noundef 3.000000e+01, ptr noundef nonnull @.str.217, i32 noundef 0) #20 ; 0 uses
  %i.ck = load float, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE7history, align 4, !tbaa !32 ; 2 uses
  store float %i.ck, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata1, align 8, !tbaa !49
  store float %i.ck, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata2, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 1.500000e+02>, ptr %0, align 8, !tbaa !32
  %i.cl = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.218, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit17
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef null, ptr noundef null, i32 noundef 8, i32 noundef 8) #20
  %i.cm = load float, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE1t, align 4, !tbaa !32 ; 2 uses
  %i.cn = load float, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE7history, align 4, !tbaa !32
  %i.co = fsub float %i.cm, %i.cn
  %i.cp = fpext float %i.co to double
  %i.cq = fpext float %i.cm to double
  call void @_ZN6ImPlot15SetupAxisLimitsEiddi(i32 noundef 0, double noundef %i.cp, double noundef %i.cq, i32 noundef 1) #20
  call void @_ZN6ImPlot15SetupAxisLimitsEiddi(i32 noundef 3, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %1, align 16, !tbaa !32
  call void @_ZN6ImPlot16SetNextFillStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef 5.000000e-01) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 16), align 8, !tbaa !46 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 8), align 8, !tbaa !42
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata1, i64 4), align 4, !tbaa !47
  call void @_ZN6ImPlot10PlotShadedIfEEvPKcPKT_S5_idiii(ptr noundef nonnull @.str.219, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cs, i32 noundef %i.ct, double noundef -inf, i32 noundef 0, i32 noundef %i.cu, i32 noundef 8) #20
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 16), align 8, !tbaa !46 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 8), align 8, !tbaa !42
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6sdata2, i64 4), align 4, !tbaa !47
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.220, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, i32 noundef %i.cx, i32 noundef 0, i32 noundef %i.cy, i32 noundef 8) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN6ImPlot15ScrollingBuffer8AddPointEff.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x float> <float -1.000000e+00, float 1.500000e+02>, ptr %2, align 8, !tbaa !32
  %i.cz = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.221, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.cz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef null, ptr noundef null, i32 noundef 8, i32 noundef 8) #20
  %i.da = load float, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE7history, align 4, !tbaa !32
  %i.db = fpext float %i.da to double
  call void @_ZN6ImPlot15SetupAxisLimitsEiddi(i32 noundef 0, double noundef 0.000000e+00, double noundef %i.db, i32 noundef 1) #20
  call void @_ZN6ImPlot15SetupAxisLimitsEiddi(i32 noundef 3, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata1, i64 16), align 8, !tbaa !46 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata1, i64 8), align 8, !tbaa !42
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.219, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dd, i32 noundef %i.de, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata2, i64 16), align 8, !tbaa !46 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_RealtimePlotsEvE6rdata2, i64 8), align 8, !tbaa !42
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.220, ptr noundef nonnull %i.df, ptr noundef nonnull %i.dg, i32 noundef %i.dh, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot13RollingBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+01, ptr %0, align 8, !tbaa !49
  %i.b = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 16000) #20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %_ZN8ImVectorI6ImVec2E7reserveEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !42
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.b, ptr nonnull align 4 %i.d, i64 %i.g, i1 false)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !46
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.h) #20
  br label %_ZN8ImVectorI6ImVec2E7reserveEi.exit

_ZN8ImVectorI6ImVec2E7reserveEi.exit:             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.c, align 8, !tbaa !46
  store i32 2000, ptr %i.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot13RollingBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8ImVectorI6ImVec2ED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b) #20
  br label %_ZN8ImVectorI6ImVec2ED2Ev.exit

_ZN8ImVectorI6ImVec2ED2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

declare <2 x float> @_ZN5ImGui11GetMousePosEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot13RollingBuffer8AddPointEff(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1, float noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 8, !tbaa !49
  %i.b = tail call float @fmodf(float noundef %1, float noundef %i.a) #20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 6 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %thread-pre-split.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load float, ptr %i.j, align 4, !tbaa !37
  %i.l = fcmp olt float %i.b, %i.k
  br i1 %i.l, label %.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45
  %i.o = icmp eq i32 %i.d, %i.n
  br i1 %i.o, label %bb.c, label %.._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i_crit_edge

thread-pre-split.thread:                          ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !45
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %.._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i_crit_edge

.._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i_crit_edge: ; preds = %thread-pre-split.thread, %thread-pre-split
  %.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.pre = load ptr, ptr %.phi.trans.insert.i.phi.trans.insert, align 8, !tbaa !46
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

.thread:                                          ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.c:                                             ; preds = %thread-pre-split
  %i.v = sdiv i32 %i.d, 2
  %i.w = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.x = add nsw i32 %i.w, %i.d
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i:  ; preds = %thread-pre-split.thread, %.thread, %bb.c
  %i.y = phi ptr [ %i.m, %bb.c ], [ %i.s, %.thread ], [ %i.p, %thread-pre-split.thread ]
  %i.z = phi i32 [ %i.x, %bb.c ], [ 8, %.thread ], [ 8, %thread-pre-split.thread ] ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ab) #20 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ae, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.af = load i32, ptr %i.c, align 8, !tbaa !42
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ac, ptr nonnull align 4 %i.ae, i64 %i.ah, i1 false)
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !46
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ai) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !46
  store i32 %i.z, ptr %i.y, align 4, !tbaa !45
  %.pre3.i = load i32, ptr %i.c, align 8, !tbaa !42
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %.thread, %.._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i_crit_edge, %bb.e
  %i.aj = phi i32 [ %.pre3.i, %bb.e ], [ 0, %.thread ], [ %i.d, %.._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i_crit_edge ]
  %i.ak = phi ptr [ %i.ac, %bb.e ], [ %i.g, %.thread ], [ %.pre.i.pre, %.._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i_crit_edge ]
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  store float %i.b, ptr %i.am, align 4
  %.sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store float %2, ptr %.sroa_idx5, align 4
end_hunk_0
begin_hunk_1_@_ZN6ImPlot16Demo_DragAndDropEv:bb.a

bb.au:                                            ; preds = %bb.at
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ef = call noundef nonnull align 4 dereferenceable(515) ptr @_ZN6ImPlot8GetStyleEv() #20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 428
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.eh = phi ptr [ %i.ee, %bb.au ], [ %i.eg, %bb.av ]
  call void @_ZN6ImPlot14PushStyleColorEiRK6ImVec4(i32 noundef 16, ptr noundef nonnull align 4 dereferenceable(16) %i.eh) #20
  %i.ei = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndy, align 8, !tbaa !132 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.el = select i1 %i.ej, ptr @.str.383, ptr %i.ek
  call void @_ZN6ImPlot9SetupAxisEiPKci(i32 noundef 3, ptr noundef nonnull %i.el, i32 noundef 138) #20
  call void @_ZN6ImPlot13PopStyleColorEi(i32 noundef 2) #20
  %i.em = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndx, align 8, !tbaa !132 ; 2 uses
  %i.en = icmp ne ptr %i.em, null
  %i.eo = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndy, align 8 ; 2 uses
  %i.ep = icmp ne ptr %i.eo, null
  %or.cond = select i1 %i.en, i1 %i.ep, i1 false
  br i1 %or.cond, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.es = load <4 x float>, ptr %i.eq, align 8, !tbaa !32
  %i.et = load <4 x float>, ptr %i.er, align 8, !tbaa !32
  %i.eu = fadd <4 x float> %i.es, %i.et
  %i.ev = fmul <4 x float> %i.eu, splat (float 5.000000e-01)
  store <4 x float> %i.ev, ptr %6, align 16, !tbaa !32
  call void @_ZN6ImPlot16SetNextLineStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef -1.000000e+00) #20
  %i.ew = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndx, align 8, !tbaa !132 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !46
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndy, align 8, !tbaa !132
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !46
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.ex, align 8, !tbaa !42
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.385, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fe, i32 noundef %i.ff, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fg = call noundef zeroext i1 @_ZN6ImPlot23BeginDragDropTargetAxisEi(i32 noundef 0) #20
  br i1 %i.fg, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.fh = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.308, i32 noundef 0) #20 ; 2 uses
  %.not56 = icmp eq ptr %i.fh, null
  br i1 %.not56, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !134
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !14
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [64 x i8], ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 %i.fk
  store ptr %i.fl, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndx, align 8, !tbaa !132
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @_ZN6ImPlot17EndDragDropTargetEv() #20
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ay
  %i.fm = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndx, align 8, !tbaa !132
  %.not57 = icmp eq ptr %i.fm, null
  br i1 %.not57, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fn = call noundef zeroext i1 @_ZN6ImPlot23BeginDragDropSourceAxisEii(i32 noundef 0, i32 noundef 0) #20
  br i1 %i.fn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fo = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndx, align 8, !tbaa !132
  %i.fp = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.308, ptr noundef %i.fo, i64 noundef 4, i32 noundef 0) #20 ; 0 uses
  %i.fq = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndx, align 8, !tbaa !132
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  call void @_ZN6ImPlot8ItemIconERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %i.fr) #20
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.fs = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndx, align 8, !tbaa !132
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.ft, ptr noundef null) #20
  call void @_ZN6ImPlot17EndDragDropSourceEv() #20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.fu = call noundef zeroext i1 @_ZN6ImPlot23BeginDragDropTargetAxisEi(i32 noundef 3) #20
  br i1 %i.fu, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.fv = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.308, i32 noundef 0) #20 ; 2 uses
  %.not58 = icmp eq ptr %i.fv, null
  br i1 %.not58, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !134
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !14
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [64 x i8], ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 %i.fy
  store ptr %i.fz, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndy, align 8, !tbaa !132
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @_ZN6ImPlot17EndDragDropTargetEv() #20
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %i.ga = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndy, align 8, !tbaa !132
  %.not59 = icmp eq ptr %i.ga, null
  br i1 %.not59, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gb = call noundef zeroext i1 @_ZN6ImPlot23BeginDragDropSourceAxisEii(i32 noundef 3, i32 noundef 0) #20
  br i1 %i.gb, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gc = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndy, align 8, !tbaa !132
  %i.gd = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.308, ptr noundef %i.gc, i64 noundef 4, i32 noundef 0) #20 ; 0 uses
  %i.ge = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndy, align 8, !tbaa !132
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  call void @_ZN6ImPlot8ItemIconERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %i.gf) #20
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.gg = load ptr, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndy, align 8, !tbaa !132
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.gh, ptr noundef null) #20
  call void @_ZN6ImPlot17EndDragDropSourceEv() #20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.gi = call noundef zeroext i1 @_ZN6ImPlot23BeginDragDropTargetPlotEv() #20
  br i1 %i.gi, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.gj = call noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef nonnull @.str.308, i32 noundef 0) #20 ; 2 uses
  %.not60 = icmp eq ptr %i.gj, null
  br i1 %.not60, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !134
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !14
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [64 x i8], ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 %i.gm ; 2 uses
  store ptr %i.gn, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndy, align 8, !tbaa !132
  store ptr %i.gn, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE4dndx, align 8, !tbaa !132
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.bm
  %i.go = call noundef zeroext i1 @_ZN6ImPlot23BeginDragDropSourcePlotEi(i32 noundef 0) #20
  br i1 %i.go, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.386, ptr noundef null) #20
  call void @_ZN6ImPlot17EndDragDropSourceEv() #20
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.ap
  call void @_ZN5ImGui8EndChildEv() #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemC2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 12), (32, 64)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.c = load i32, ptr @_ZZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemC1EvE1i, align 4, !tbaa !14 ; 2 uses
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemC1EvE1i, align 4, !tbaa !14
  store i32 %i.c, ptr %0, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 16, ptr noundef nonnull @.str.539, i32 noundef %i.d) #20 ; 0 uses
  %i.i = tail call i32 @rand() #20
  %i.j = tail call i32 @rand() #20
  %i.k = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %i.l = insertelement <2 x i32> %i.k, i32 %i.j, i64 1
  %i.m = sitofp <2 x i32> %i.l to <2 x float>
  %i.n = fmul nnan <2 x float> %i.m, splat (float f0x30000000)
  %i.o = fadd <2 x float> %i.n, zeroinitializer
  %i.p = tail call i32 @rand() #20
  %i.q = sitofp i32 %i.p to float
  %i.r = fmul nnan float %i.q, f0x30000000
  %i.s = fadd float %i.r, 0.000000e+00
  %.sroa.4.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.s, i64 0
  store <2 x float> %i.o, ptr %i.b, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %.sroa.4.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45
  %.not.i = icmp slt i32 %i.u, 1001
  br i1 %.not.i, label %bb.b, label %_ZN8ImVectorI6ImVec2E7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.v = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 8008) #20 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46   ; 2 uses
  %.not6.i = icmp eq ptr %i.x, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i32, ptr %i.a, align 8, !tbaa !42
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.v, ptr nonnull align 4 %i.x, i64 %i.aa, i1 false)
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !46
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ab) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.v, ptr %i.w, align 8, !tbaa !46
  store i32 1001, ptr %i.t, align 4, !tbaa !45
  br label %_ZN8ImVectorI6ImVec2E7reserveEi.exit

_ZN8ImVectorI6ImVec2E7reserveEi.exit:             ; preds = %bb.a, %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  ret void

bb.f:                                             ; preds = %_ZN8ImVectorI6ImVec2E7reserveEi.exit, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  %i.ac = phi i32 [ %.pre, %_ZN8ImVectorI6ImVec2E7reserveEi.exit ], [ %i.bg, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit ] ; 6 uses
  %.06 = phi i32 [ 0, %_ZN8ImVectorI6ImVec2E7reserveEi.exit ], [ %i.bh, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit ] ; 2 uses
  %i.ad = uitofp nneg i32 %.06 to float
  %i.ae = fdiv float %i.ad, 9.990000e+02          ; 2 uses
  %i.af = fmul nnan float %i.ae, 6.280000e+00
  %i.ag = load i32, ptr %0, align 8, !tbaa !136
  %i.ah = add nsw i32 %i.ag, 1
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fmul float %i.af, %i.ai
  %i.ak = tail call float @sinf(float noundef %i.aj) #20
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float 5.000000e-01, float 5.000000e-01)
  %i.am = load i32, ptr %i.t, align 4, !tbaa !45
  %i.an = icmp eq i32 %i.ac, %i.am
  br i1 %i.an, label %bb.g, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.f
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = add nsw i32 %i.ac, 1
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = sdiv i32 %i.ac, 2
  %i.aq = add nsw i32 %i.ap, %i.ac
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i:  ; preds = %bb.h, %bb.g
  %i.ar = phi i32 [ %i.aq, %bb.h ], [ 8, %bb.g ]
  %i.as = tail call noundef i32 @llvm.smax.i32(i32 %i.ar, i32 %i.ao) ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 3
  %i.av = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.au) #20 ; 3 uses
  %i.aw = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !46 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aw, null
  br i1 %.not6.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !42
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.av, ptr nonnull align 4 %i.aw, i64 %i.az, i1 false)
  %i.ba = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ba) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.av, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  store i32 %i.as, ptr %i.t, align 4, !tbaa !45
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !42
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.j
  %i.bb = phi i32 [ %i.ac, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.j ]
  %i.bc = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.av, %bb.j ]
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  store float %i.ae, ptr %i.be, align 4
  %.sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store float %i.al, ptr %.sroa_idx5, align 4
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !42
  %i.bg = add nsw i32 %i.bf, 1                    ; 2 uses
  store i32 %i.bg, ptr %i.a, align 8, !tbaa !42
  %i.bh = add nuw nsw i32 %.06, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bh, 1001
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !135
}

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor.378(ptr nofree readnone captures(none) %0) #8 section ".text.startup" {
bb.a:
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 1256), align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit: ; preds = %bb.a, %bb.b
  %.val.1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 1192), align 8, !tbaa !46 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %.val.1, null
  br i1 %.not.i.i.1, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.1) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.1

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.1: ; preds = %bb.c, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit
  %.val.2 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 1128), align 8, !tbaa !46 ; 2 uses
  %.not.i.i.2 = icmp eq ptr %.val.2, null
  br i1 %.not.i.i.2, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.1
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.2) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.2

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.2: ; preds = %bb.d, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.1
  %.val.3 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 1064), align 8, !tbaa !46 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %.val.3, null
  br i1 %.not.i.i.3, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.2
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.3) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.3

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.3: ; preds = %bb.e, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.2
  %.val.4 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 1000), align 8, !tbaa !46 ; 2 uses
  %.not.i.i.4 = icmp eq ptr %.val.4, null
  br i1 %.not.i.i.4, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.4, label %bb.f

bb.f:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.3
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.4) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.4

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.4: ; preds = %bb.f, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.3
  %.val.5 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 936), align 8, !tbaa !46 ; 2 uses
  %.not.i.i.5 = icmp eq ptr %.val.5, null
  br i1 %.not.i.i.5, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.5, label %bb.g

bb.g:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.4
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.5) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.5

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.5: ; preds = %bb.g, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.4
  %.val.6 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 872), align 8, !tbaa !46 ; 2 uses
  %.not.i.i.6 = icmp eq ptr %.val.6, null
  br i1 %.not.i.i.6, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.6, label %bb.h

bb.h:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.5
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.6) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.6

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.6: ; preds = %bb.h, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.5
  %.val.7 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 808), align 8, !tbaa !46 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %.val.7, null
  br i1 %.not.i.i.7, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.7, label %bb.i

bb.i:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.6
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.7) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.7

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.7: ; preds = %bb.i, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.6
  %.val.8 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 744), align 8, !tbaa !46 ; 2 uses
  %.not.i.i.8 = icmp eq ptr %.val.8, null
  br i1 %.not.i.i.8, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.8, label %bb.j

bb.j:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.7
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.8) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.8

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.8: ; preds = %bb.j, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.7
  %.val.9 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 680), align 8, !tbaa !46 ; 2 uses
  %.not.i.i.9 = icmp eq ptr %.val.9, null
  br i1 %.not.i.i.9, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.9, label %bb.k

bb.k:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.8
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.9) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.9

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.9: ; preds = %bb.k, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.8
  %.val.10 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 616), align 8, !tbaa !46 ; 2 uses
  %.not.i.i.10 = icmp eq ptr %.val.10, null
end_hunk_1
begin_hunk_2_@_ZN6ImPlot15MetricFormatterEdPciPv:bb.a
  %i.n = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.l, ptr noundef nonnull @.str.420, double noundef %i.m, ptr noundef nonnull @.str.418, ptr noundef %3) #20
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.preheader
  %.lcssa28 = phi i64 [ 0, %.preheader ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ]
  %.lcssa = phi double [ 1.000000e+09, %.preheader ], [ 1.000000e+06, %bb.c ], [ 1.000000e+03, %bb.d ], [ 1.000000e+00, %bb.e ], [ 1.000000e-03, %bb.f ], [ f0x3EB0C6F7A0B5ED8D, %bb.g ], [ 1.000000e-09, %bb.h ]
  %i.o = sext i32 %2 to i64
  %i.p = fdiv double %0, %.lcssa
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot15MetricFormatterEdPciPvE1p, i64 %.lcssa28
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !140
  %i.s = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.o, ptr noundef nonnull @.str.420, double noundef %i.p, ptr noundef %i.r, ptr noundef %3) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.b
  %.1 = phi i32 [ %i.e, %bb.b ], [ %i.n, %bb.i ], [ %i.s, %bb.j ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot15Demo_TickLabelsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.421, ptr noundef nonnull @_ZZN6ImPlot15Demo_TickLabelsEvE10custom_fmt) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.422, ptr noundef nonnull @_ZZN6ImPlot15Demo_TickLabelsEvE12custom_ticks) #20 ; 0 uses
  %i.e = load i8, ptr @_ZZN6ImPlot15Demo_TickLabelsEvE12custom_ticks, align 1, !tbaa !34, !range !35, !noundef !36
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.423, ptr noundef nonnull @_ZZN6ImPlot15Demo_TickLabelsEvE13custom_labels) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double 3.140000e+00, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 ptrtoint (ptr @.str.424 to i64), ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !32
  %i.h = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.430, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 2.500000e+00, double noundef 5.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+03, i32 noundef 2) #20
  call void @_ZN6ImPlot9SetupAxisEiPKci(i32 noundef 4, ptr noundef null, i32 noundef 258) #20
  call void @_ZN6ImPlot9SetupAxisEiPKci(i32 noundef 5, ptr noundef null, i32 noundef 258) #20
  %i.i = load i8, ptr @_ZZN6ImPlot15Demo_TickLabelsEvE10custom_fmt, align 1, !tbaa !34, !range !35, !noundef !36
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN6ImPlot15SetupAxisFormatEiPKc(i32 noundef 0, ptr noundef nonnull @.str.431) #20
  call void @_ZN6ImPlot15SetupAxisFormatEiPFidPciPvES1_(i32 noundef 3, ptr noundef nonnull @_ZN6ImPlot15MetricFormatterEdPciPv, ptr noundef nonnull @.str.432) #20
  call void @_ZN6ImPlot15SetupAxisFormatEiPKc(i32 noundef 4, ptr noundef nonnull @.str.433) #20
  call void @_ZN6ImPlot15SetupAxisFormatEiPFidPciPvES1_(i32 noundef 5, ptr noundef nonnull @_ZN6ImPlot15MetricFormatterEdPciPv, ptr noundef nonnull @.str.416) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = load i8, ptr @_ZZN6ImPlot15Demo_TickLabelsEvE12custom_ticks, align 1, !tbaa !34, !range !35, !noundef !36
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr @_ZZN6ImPlot15Demo_TickLabelsEvE13custom_labels, align 1, !tbaa !34, !range !35, !noundef !36
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, ptr %i.b, ptr null
  call void @_ZN6ImPlot14SetupAxisTicksEiPKdiPKPKcb(i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %i.o, i1 noundef zeroext true) #20
  %i.p = load i8, ptr @_ZZN6ImPlot15Demo_TickLabelsEvE13custom_labels, align 1, !tbaa !34, !range !35, !noundef !36
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = select i1 %i.q, ptr @_ZZN6ImPlot15Demo_TickLabelsEvE7ylabels, ptr null
  call void @_ZN6ImPlot14SetupAxisTicksEiPKdiPKPKcb(i32 noundef 3, ptr noundef nonnull @_ZZN6ImPlot15Demo_TickLabelsEvE6yticks, i32 noundef 4, ptr noundef %i.r, i1 noundef zeroext false) #20
  %i.s = load i8, ptr @_ZZN6ImPlot15Demo_TickLabelsEvE13custom_labels, align 1, !tbaa !34, !range !35, !noundef !36
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = select i1 %i.t, ptr @_ZZN6ImPlot15Demo_TickLabelsEvE11ylabels_aux, ptr null
  call void @_ZN6ImPlot14SetupAxisTicksEiPKdiPKPKcb(i32 noundef 4, ptr noundef nonnull @_ZZN6ImPlot15Demo_TickLabelsEvE10yticks_aux, i32 noundef 3, ptr noundef %i.u, i1 noundef zeroext false) #20
  %i.v = load i8, ptr @_ZZN6ImPlot15Demo_TickLabelsEvE13custom_labels, align 1, !tbaa !34, !range !35, !noundef !36
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @_ZZN6ImPlot15Demo_TickLabelsEvE11ylabels_aux, ptr null
  call void @_ZN6ImPlot14SetupAxisTicksEiddiPKPKcb(i32 noundef 5, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 6, ptr noundef %i.x, i1 noundef zeroext false) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare void @_ZN6ImPlot15SetupAxisFormatEiPKc(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot15SetupAxisFormatEiPFidPciPvES1_(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot17Demo_CustomStylesEv() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.ImPlotStyle, align 4        ; 4 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca [10 x i32], align 16              ; 4 uses
  %i.b = alloca [10 x i32], align 16              ; 4 uses
  %i.c = alloca [10 x i32], align 16              ; 4 uses
  tail call void @_ZN6ImPlot12PushColormapEi(i32 noundef 0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.d = tail call noundef nonnull align 4 dereferenceable(515) ptr @_ZN6ImPlot8GetStyleEv() #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %0, ptr noundef nonnull align 4 dereferenceable(516) %i.d, i64 516, i1 false), !tbaa.struct !141
  tail call void @_ZN8MyImPlot12StyleSeabornEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %1, align 8, !tbaa !32
  %i.e = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.434, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef nonnull @.str.435, ptr noundef nonnull @.str.436, i32 noundef 0, i32 noundef 0) #20
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef -5.000000e-01, double noundef 9.500000e+00, double noundef 0.000000e+00, double noundef 1.000000e+01, i32 noundef 2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull align 16 dereferenceable(40) @__const._ZN6ImPlot17Demo_CustomStylesEv.lin, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.b, ptr noundef nonnull align 16 dereferenceable(40) @__const._ZN6ImPlot17Demo_CustomStylesEv.bar, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.c, ptr noundef nonnull align 16 dereferenceable(40) @__const._ZN6ImPlot17Demo_CustomStylesEv.dot, i64 40, i1 false)
  call void @_ZN6ImPlot8PlotBarsIjEEvPKcPKT_iddiii(ptr noundef nonnull @.str.437, ptr noundef nonnull %i.b, i32 noundef 10, double noundef 5.000000e-01, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot8PlotLineIjEEvPKcPKT_iddiii(ptr noundef nonnull @.str.126, ptr noundef nonnull %i.a, i32 noundef 10, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  %i.f = call { <2 x float>, <2 x float> } @_ZN6ImPlot17NextColormapColorEv() #20 ; 0 uses
  call void @_ZN6ImPlot11PlotScatterIjEEvPKcPKT_iddiii(ptr noundef nonnull @.str.127, ptr noundef nonnull %i.c, i32 noundef 10, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call noundef nonnull align 4 dereferenceable(515) ptr @_ZN6ImPlot8GetStyleEv() #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(515) %i.g, ptr noundef nonnull align 4 dereferenceable(515) %0, i64 515, i1 false), !tbaa.struct !141
  call void @_ZN6ImPlot11PopColormapEi(i32 noundef 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8MyImPlot12StyleSeabornEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(515) ptr @_ZN6ImPlot8GetStyleEv() #20 ; 33 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.b, align 4, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.c, align 4, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.d, align 4, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.e, align 4, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.f, align 4, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store <4 x float> splat (float 1.000000e+00), ptr %i.g, align 4, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  store <4 x float> <float 9.200000e-01, float 9.200000e-01, float f0x3F733333, float 1.000000e+00>, ptr %i.h, align 4, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 284
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store <4 x float> <float 9.200000e-01, float 9.200000e-01, float f0x3F733333, float 1.000000e+00>, ptr %i.j, align 4, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  store <4 x float> <float 8.000000e-01, float 8.100000e-01, float 8.500000e-01, float 1.000000e+00>, ptr %i.k, align 4, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 332
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.l, align 4, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.m, align 4, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.n, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 380
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.o, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 396
  store <4 x float> splat (float 1.000000e+00), ptr %i.p, align 4, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 444
  store <4 x float> <float 9.200000e-01, float 9.200000e-01, float f0x3F733333, float 1.000000e+00>, ptr %i.q, align 4, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 460
  store <4 x float> <float 9.200000e-01, float 9.200000e-01, float f0x3F733333, float 7.500000e-01>, ptr %i.r, align 4, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 476
  store <4 x float> <float 1.000000e+00, float 6.500000e-01, float 0.000000e+00, float 1.000000e+00>, ptr %i.s, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 492
  store <4 x float> <float 2.300000e-01, float 1.000000e-01, float 6.400000e-01, float 5.000000e-01>, ptr %i.t, align 4, !tbaa !32
  store float 1.500000e+00, ptr %i.a, align 4, !tbaa !142
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.u, align 4, !tbaa !143
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <4 x float> <float 4.000000e+00, float 1.000000e+00, float 1.000000e+00, float 5.000000e+00>, ptr %i.v, align 4, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <4 x float> <float 1.500000e+00, float 8.000000e+00, float 4.000000e+00, float 0.000000e+00>, ptr %i.w, align 4, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float 1.000000e+00, ptr %i.x, align 4, !tbaa !144
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  store <4 x i32> splat (i32 1067030938), ptr %i.z, align 4, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store <4 x i32> <i32 1094713344, i32 1094713344, i32 1084227584, i32 1084227584>, ptr %i.aa, align 4, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 1084227584, ptr %i.ab, align 4, !tbaa !32
  %.sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 1084227584, ptr %.sroa_idx46, align 4, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i32 1084227584, ptr %i.ac, align 4, !tbaa !32
  %.sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 1084227584, ptr %.sroa_idx43, align 4, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  store i32 1133903872, ptr %i.ad, align 4, !tbaa !32
  %.sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i32 1130430464, ptr %.sroa_idx42, align 4, !tbaa !32
  ret void
}

declare void @_ZN6ImPlot8PlotBarsIjEEvPKcPKT_iddiii(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot8PlotLineIjEEvPKcPKT_iddiii(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare { <2 x float>, <2 x float> } @_ZN6ImPlot17NextColormapColorEv() local_unnamed_addr #5

declare void @_ZN6ImPlot11PlotScatterIjEEvPKcPKT_iddiii(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot20Demo_CustomRenderingEv() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImPlotPoint, align 16       ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImPlotPoint, align 16       ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImPlotPoint, align 16       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !32
  %i.a = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.438, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x double> splat (double 5.000000e-01), ptr %2, align 16, !tbaa !16
  %i.b = call <2 x float> @_ZN6ImPlot12PlotToPixelsERK11ImPlotPointii(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef -1, i32 noundef -1) #20
  store <2 x float> %i.b, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store <2 x double> <double 2.500000e-01, double 7.500000e-01>, ptr %4, align 16, !tbaa !16
  %i.c = call <2 x float> @_ZN6ImPlot12PlotToPixelsERK11ImPlotPointii(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef -1, i32 noundef -1) #20
  store <2 x float> %i.c, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <2 x double> <double 7.500000e-01, double 2.500000e-01>, ptr %6, align 16, !tbaa !16
  %i.d = call <2 x float> @_ZN6ImPlot12PlotToPixelsERK11ImPlotPointii(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef -1, i32 noundef -1) #20
  store <2 x float> %i.d, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN6ImPlot16PushPlotClipRectEf(float noundef 0.000000e+00) #20
  %i.e = call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #20
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef 2.000000e+01, i32 noundef -16711681, i32 noundef 20) #20
  %i.f = call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #20
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -65408, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #20
  call void @_ZN6ImPlot15PopPlotClipRectEv() #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare <2 x float> @_ZN6ImPlot12PlotToPixelsERK11ImPlotPointii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot16PushPlotClipRectEf(float noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() local_unnamed_addr #5

declare void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot15PopPlotClipRectEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot17Demo_LegendPopupsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 16            ; 4 uses
  %2 = alloca %struct.ImVec4, align 16            ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.439) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.440) #20
  %i.a = load float, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE9amplitude, align 4, !tbaa !32 ; 2 uses
  %i.b = load float, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE9frequency, align 4, !tbaa !32 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !32
  %i.c = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.441, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.c, label %bb.e, label %bb.p

bb.c:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.d ] ; 5 uses
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = uitofp nneg i32 %i.d to float
  %i.f = fmul float %i.b, %i.e
  %i.g = tail call float @sinf(float noundef %i.f) #20
  %i.h = fmul float %i.a, %i.g
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE4vals, i64 %indvars.iv
  store float %i.h, ptr %i.i, align 8, !tbaa !32
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.j = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.k = uitofp nneg i32 %i.j to float
  %i.l = fmul float %i.b, %i.k
  %i.m = tail call float @sinf(float noundef %i.l) #20
  %i.n = fmul float %i.a, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE4vals, i64 %indvars.iv.next
  store float %i.n, ptr %i.o, align 4, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 0.000000e+00, double noundef 1.000000e+02, double noundef -1.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  %i.p = load float, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE5alpha, align 4, !tbaa !32
  call void @_ZN6ImPlot12PushStyleVarEif(i32 noundef 4, float noundef %i.p) #20
  %i.q = load i8, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE4line, align 1, !tbaa !34, !range !35, !noundef !36
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN6ImPlot16SetNextFillStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) @_ZZN6ImPlot17Demo_LegendPopupsEvE5color, float noundef -1.000000e+00) #20
  call void @_ZN6ImPlot8PlotBarsIfEEvPKcPKT_iddiii(ptr noundef nonnull @.str.442, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE4vals, i32 noundef 101, double noundef 6.700000e-01, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.s = load i8, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE7markers, align 1, !tbaa !34, !range !35, !noundef !36
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %1, align 16, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %2, align 16, !tbaa !32
  call void @_ZN6ImPlot18SetNextMarkerStyleEifRK6ImVec4fS2_(i32 noundef 1, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = load float, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE9thickness, align 4, !tbaa !32
  call void @_ZN6ImPlot16SetNextLineStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) @_ZZN6ImPlot17Demo_LegendPopupsEvE5color, float noundef %i.u) #20
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_iddiii(ptr noundef nonnull @.str.442, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE4vals, i32 noundef 101, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  %i.v = load i8, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE6shaded, align 1, !tbaa !34, !range !35, !noundef !36
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN6ImPlot10PlotShadedIfEEvPKcPKT_idddiii(ptr noundef nonnull @.str.442, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE4vals, i32 noundef 101, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f
  call void @_ZN6ImPlot11PopStyleVarEi(i32 noundef 1) #20
  %i.x = call noundef zeroext i1 @_ZN6ImPlot16BeginLegendPopupEPKci(ptr noundef nonnull @.str.442, i32 noundef 1) #20
  br i1 %i.x, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.y = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.443, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE9frequency, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.444, i32 noundef 0) #20 ; 0 uses
  %i.z = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.445, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE9amplitude, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.444, i32 noundef 0) #20 ; 0 uses
  call void @_ZN5ImGui9SeparatorEv() #20
  %i.aa = call noundef zeroext i1 @_ZN5ImGui10ColorEdit3EPKcPfi(ptr noundef nonnull @.str.446, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE5color, i32 noundef 0) #20 ; 0 uses
  %i.ab = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.447, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE5alpha, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.141, i32 noundef 0) #20 ; 0 uses
  %i.ac = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.448, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE4line) #20 ; 0 uses
  %i.ad = load i8, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE4line, align 1, !tbaa !34, !range !35, !noundef !36
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.449, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE9thickness, float noundef 0.000000e+00, float noundef 5.000000e+00, ptr noundef nonnull @.str.33, i32 noundef 0) #20 ; 0 uses
  %i.ag = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.450, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE7markers) #20 ; 0 uses
  %i.ah = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.451, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE6shaded) #20 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @_ZN6ImPlot14EndLegendPopupEv() #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.b
  ret void
}

declare void @_ZN6ImPlot10PlotShadedIfEEvPKcPKT_idddiii(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6ImPlot16BeginLegendPopupEPKci(ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui10ColorEdit3EPKcPfi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot14EndLegendPopupEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot20Demo_ColormapWidgetsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !32
  %i.a = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !14
  %i.b = call noundef zeroext i1 @_ZN6ImPlot14ColormapButtonEPKcRK6ImVec2i(ptr noundef nonnull @.str.452, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !14
  %i.d = add nsw i32 %i.c, 1
  %i.e = call noundef i32 @_ZN6ImPlot16GetColormapCountEv() #20
  %i.f = srem i32 %i.d, %i.e
  store i32 %i.f, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !32
  %i.g = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.453, ptr noundef nonnull align 4 dereferenceable(16) @_ZZN6ImPlot20Demo_ColormapWidgetsEvE3col, i32 noundef 32, ptr noundef nonnull align 4 dereferenceable(8) %1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.h = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !14
  %i.i = call noundef zeroext i1 @_ZN6ImPlot14ColormapSliderEPKcPfP6ImVec4S1_i(ptr noundef nonnull @.str.454, ptr noundef nonnull @_ZZN6ImPlot20Demo_ColormapWidgetsEvE1t, ptr noundef nonnull @_ZZN6ImPlot20Demo_ColormapWidgetsEvE3col, ptr noundef nonnull @.str.33, i32 noundef %i.h) #20 ; 0 uses
  %i.j = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !14
  call void @_ZN6ImPlot12ColormapIconEi(i32 noundef %i.j) #20
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.455) #20
  %i.k = load <2 x float>, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE5scale, align 8, !tbaa !32
  %i.l = fpext <2 x float> %i.k to <2 x double>   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !32
  %i.m = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE5flags, align 4, !tbaa !14
  %i.n = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !14
  %i.o = extractelement <2 x double> %i.l, i64 0
  %i.p = extractelement <2 x double> %i.l, i64 1
  call void @_ZN6ImPlot13ColormapScaleEPKcddRK6ImVec2S1_ii(ptr noundef nonnull @.str.456, double noundef %i.o, double noundef %i.p, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull @.str.433, i32 noundef %i.m, i32 noundef %i.n) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.q = call noundef zeroext i1 @_ZN5ImGui11InputFloat2EPKcPfS1_i(ptr noundef nonnull @.str.456, ptr noundef nonnull @_ZZN6ImPlot20Demo_ColormapWidgetsEvE5scale, ptr noundef nonnull @.str.33, i32 noundef 0) #20 ; 0 uses
  %i.r = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.457, ptr noundef nonnull @_ZZN6ImPlot20Demo_ColormapWidgetsEvE5flags, i32 noundef 1) #20 ; 0 uses
  %i.s = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.458, ptr noundef nonnull @_ZZN6ImPlot20Demo_ColormapWidgetsEvE5flags, i32 noundef 2) #20 ; 0 uses
  %i.t = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.459, ptr noundef nonnull @_ZZN6ImPlot20Demo_ColormapWidgetsEvE5flags, i32 noundef 4) #20 ; 0 uses
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6ImPlot14ColormapSliderEPKcPfP6ImVec4S1_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot12ColormapIconEi(i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui11InputFloat2EPKcPfS1_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot30Demo_CustomPlottersAndTooltipsEv() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.460) #20
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.461, ptr noundef nonnull @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7tooltip) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.462, ptr noundef nonnull @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7bullCol, i32 noundef 32) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.463, ptr noundef nonnull @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7bearCol, i32 noundef 32) #20 ; 0 uses
  %i.d = tail call noundef nonnull align 4 dereferenceable(515) ptr @_ZN6ImPlot8GetStyleEv() #20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  store i8 0, ptr %i.e, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !32
  %i.f = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.464, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 6144) #20
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef f0x41D70AAB60000000, double noundef f0x41D76C8EC0000000, double noundef 1.250000e+03, double noundef 1.600000e+03, i32 noundef 2) #20
  call void @_ZN6ImPlot14SetupAxisScaleEii(i32 noundef 0, i32 noundef 1) #20
  call void @_ZN6ImPlot26SetupAxisLimitsConstraintsEidd(i32 noundef 0, double noundef f0x41D70AAB60000000, double noundef f0x41D76C8EC0000000) #20
  call void @_ZN6ImPlot24SetupAxisZoomConstraintsEidd(i32 noundef 0, double noundef 1.209600e+06, double noundef 2.566080e+07) #20
  call void @_ZN6ImPlot15SetupAxisFormatEiPKc(i32 noundef 3, ptr noundef nonnull @.str.465) #20
  %i.g = load i8, ptr @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7tooltip, align 1, !tbaa !34, !range !35, !noundef !36
  %i.h = trunc nuw i8 %i.g to i1
  %.sroa.01.0.copyload = load <2 x float>, ptr @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7bullCol, align 8, !tbaa !32
  %.sroa.22.0.copyload = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7bullCol, i64 8), align 8, !tbaa !32
  %.sroa.0.0.copyload = load <2 x float>, ptr @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7bearCol, align 8, !tbaa !32
  %.sroa.2.0.copyload = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7bearCol, i64 8), align 8, !tbaa !32
  call void @_ZN8MyImPlot15PlotCandlestickEPKcPKdS3_S3_S3_S3_ibf6ImVec4S4_(ptr noundef nonnull @.str.466, ptr noundef nonnull @__const._ZN6ImPlot30Demo_CustomPlottersAndTooltipsEv.dates, ptr noundef nonnull @__const._ZN6ImPlot30Demo_CustomPlottersAndTooltipsEv.opens, ptr noundef nonnull @__const._ZN6ImPlot30Demo_CustomPlottersAndTooltipsEv.closes, ptr noundef nonnull @__const._ZN6ImPlot30Demo_CustomPlottersAndTooltipsEv.lows, ptr noundef nonnull @__const._ZN6ImPlot30Demo_CustomPlottersAndTooltipsEv.highs, i32 noundef 218, i1 noundef zeroext %i.h, float noundef 2.500000e-01, <2 x float> %.sroa.01.0.copyload, <2 x float> %.sroa.22.0.copyload, <2 x float> %.sroa.0.0.copyload, <2 x float> %.sroa.2.0.copyload)
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8MyImPlot15PlotCandlestickEPKcPKdS3_S3_S3_S3_ibf6ImVec4S4_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i1 noundef zeroext %7, float noundef %8, <2 x float> %9, <2 x float> %10, <2 x float> %11, <2 x float> %12) local_unnamed_addr #7 {
bb.a:
  %13 = alloca %struct.ImVec4, align 8            ; 3 uses
  %14 = alloca %struct.ImVec4, align 8            ; 3 uses
  %15 = alloca %struct.ImPlotTime, align 8        ; 5 uses
  %16 = alloca %struct.ImVec2, align 4            ; 5 uses
  %17 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %18 = alloca %struct.ImPlotTime, align 8        ; 5 uses
  %19 = alloca %struct.ImVec2, align 8            ; 4 uses
  %20 = alloca %struct.ImVec2, align 8            ; 4 uses
  %21 = alloca %struct.ImVec2, align 8            ; 4 uses
  %22 = alloca %struct.ImVec2, align 8            ; 4 uses
  store <2 x float> %9, ptr %13, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %10, ptr %i.b, align 8
  store <2 x float> %11, ptr %14, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 8
  store <2 x float> %12, ptr %i.c, align 8
  %i.d = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #20 ; 3 uses
  %i.e = icmp sgt i32 %6, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !16
  %i.h = load double, ptr %1, align 8, !tbaa !16
  %i.i = fsub double %i.g, %i.h
  %i.j = fpext float %8 to double
  %i.k = fmul double %i.i, %i.j
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = fpext float %8 to double
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi double [ %i.k, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  %i.n = tail call noundef zeroext i1 @_ZN6ImPlot13IsPlotHoveredEv() #20
  %or.cond = and i1 %7, %i.n
  br i1 %or.cond, label %bb.e, label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = tail call { double, double } @_ZN6ImPlot15GetPlotMousePosEii(i32 noundef -1, i32 noundef -1) #20 ; 2 uses
  %i.p = extractvalue { double, double } %i.o, 0  ; 3 uses
  %i.q = extractvalue { double, double } %i.o, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.r = fptosi double %i.p to i64
  %i.s = tail call double @llvm.floor.f64(double %i.p)
  %i.t = fmul double %i.s, -1.000000e+06
  %i.u = tail call double @llvm.fmuladd.f64(double %i.p, double 1.000000e+06, double %i.t)
  %i.v = fptosi double %i.u to i32                ; 2 uses
  %i.w = sdiv i32 %i.v, 1000000
  %i.x = sext i32 %i.w to i64
  %i.y = add nsw i64 %i.x, %i.r
  %i.z = srem i32 %i.v, 1000000
  store i64 %i.y, ptr %15, align 8
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %i.z, ptr %.sroa.242.0..sroa_idx, align 8
  %i.aa = call { i64, i32 } @_ZN6ImPlot9RoundTimeERK10ImPlotTimei(ptr noundef nonnull align 8 dereferenceable(12) %15, i32 noundef 5) #20 ; 2 uses
  %.fca.0.extract35 = extractvalue { i64, i32 } %i.aa, 0
  %.fca.1.extract36 = extractvalue { i64, i32 } %i.aa, 1
  %i.ab = sitofp i64 %.fca.0.extract35 to double
  %i.ac = sitofp i32 %.fca.1.extract36 to double
  %i.ad = fdiv double %i.ac, 1.000000e+06
  %i.ae = fadd double %i.ad, %i.ab                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.af = fneg double %i.m
  %i.ag = call double @llvm.fmuladd.f64(double %i.af, double 1.500000e+00, double %i.ae)
  %i.ah = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.ag, double noundef %i.q, i32 noundef -1, i32 noundef -1) #20
  %.sroa.033.0.vec.extract = extractelement <2 x float> %i.ah, i64 0
  %i.ai = call double @llvm.fmuladd.f64(double %i.m, double 1.500000e+00, double %i.ae)
  %i.aj = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.ai, double noundef %i.q, i32 noundef -1, i32 noundef -1) #20
  %.sroa.031.0.vec.extract = extractelement <2 x float> %i.aj, i64 0
  %i.ak = call <2 x float> @_ZN6ImPlot10GetPlotPosEv() #20 ; 2 uses
  %.sroa.028.4.vec.extract = extractelement <2 x float> %i.ak, i64 1
  %i.al = call <2 x float> @_ZN6ImPlot11GetPlotSizeEv() #20
  %foldExtExtBinop = fadd <2 x float> %i.ak, %i.al
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 1
  call void @_ZN6ImPlot16PushPlotClipRectEf(float noundef 0.000000e+00) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store float %.sroa.033.0.vec.extract, ptr %16, align 4, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 4
  store float %.sroa.028.4.vec.extract, ptr %i.an, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store float %.sroa.031.0.vec.extract, ptr %17, align 4, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 4
  store float %i.am, ptr %i.ao, align 4, !tbaa !38
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef 1082163328, float noundef 0.000000e+00, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @_ZN6ImPlot15PopPlotClipRectEv() #20
  %.not2832.i = icmp slt i32 %6, 1
  br i1 %.not2832.i, label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ap = add nsw i32 %6, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %tailrecurse.outer.i
  %.tr25.ph34.i = phi i32 [ %.tr2529.i, %tailrecurse.outer.i ], [ %i.ap, %.lr.ph.i.preheader ]
  %.tr24.ph33.i = phi i32 [ %i.az, %tailrecurse.outer.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %tailrecurse.i, %.lr.ph.i
  %.tr2529.i = phi i32 [ %.tr25.ph34.i, %.lr.ph.i ], [ %i.ay, %tailrecurse.i ] ; 3 uses
  %i.aq = sub nsw i32 %.tr2529.i, %.tr24.ph33.i
  %i.ar = lshr i32 %i.aq, 1                       ; 2 uses
  %i.as = add nuw nsw i32 %i.ar, %.tr24.ph33.i    ; 4 uses
  %i.at = zext nneg i32 %i.as to i64              ; 6 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %i.aw = fcmp oeq double %i.av, %i.ae
  br i1 %i.aw, label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = fcmp ogt double %i.av, %i.ae
  br i1 %i.ax, label %tailrecurse.i, label %tailrecurse.outer.i

tailrecurse.i:                                    ; preds = %bb.g
  %i.ay = add nsw i32 %i.as, -1
  %.not.not.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.not.not.i, label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread, label %bb.f

tailrecurse.outer.i:                              ; preds = %bb.g
  %i.az = add nuw nsw i32 %i.as, 1
  %.not28.not.i = icmp sgt i32 %.tr2529.i, %i.as
  br i1 %.not28.not.i, label %.lr.ph.i, label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread

_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit:    ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.at
  %i.bb = call noundef zeroext i1 @_ZN5ImGui12BeginTooltipEv() #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !16 ; 3 uses
  %i.bd = fptosi double %i.bc to i64
  %i.be = call double @llvm.floor.f64(double %i.bc)
  %i.bf = fmul double %i.be, -1.000000e+06
  %i.bg = call double @llvm.fmuladd.f64(double %i.bc, double 1.000000e+06, double %i.bf)
  %i.bh = fptosi double %i.bg to i32              ; 2 uses
  %i.bi = sdiv i32 %i.bh, 1000000
  %i.bj = sext i32 %i.bi to i64
  %i.bk = add nsw i64 %i.bj, %i.bd
  %i.bl = srem i32 %i.bh, 1000000
  store i64 %i.bk, ptr %18, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %i.bl, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bm = call noundef nonnull align 4 dereferenceable(515) ptr @_ZN6ImPlot8GetStyleEv() #20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 513
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !148, !range !35, !noundef !36
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = call noundef i32 @_ZN6ImPlot10FormatDateERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull %i.a, i32 noundef 32, i32 noundef 2, i1 noundef zeroext %i.bp) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.534, ptr noundef nonnull %i.a) #20
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.at
  %i.bs = load double, ptr %i.br, align 8, !tbaa !16
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.535, double noundef %i.bs) #20
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.at
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !16
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.536, double noundef %i.bu) #20
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.at
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !16
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.537, double noundef %i.bw) #20
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.at
  %i.by = load double, ptr %i.bx, align 8, !tbaa !16
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.538, double noundef %i.by) #20
  call void @_ZN5ImGui10EndTooltipEv() #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread

_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread: ; preds = %tailrecurse.outer.i, %tailrecurse.i, %bb.e, %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit, %bb.d
  %i.bz = call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1) #20
  br i1 %i.bz, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread
  %i.ca = call noundef ptr @_ZN6ImPlot14GetCurrentItemEv() #20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 -12566464, ptr %i.cb, align 4, !tbaa !151
  %i.cc = load ptr, ptr @GImPlot, align 8, !tbaa !153
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !195
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2551
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !201, !range !35, !noundef !36
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = icmp sgt i32 %6, 0                      ; 2 uses
  %or.cond119 = and i1 %i.ci, %i.ch
  br i1 %or.cond119, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %.lr.ph
end_hunk_2
