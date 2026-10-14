Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot_demo?download=true
inline.NumInlined: 396
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6ImPlot18Demo_LegendOptionsEv:bb.a
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.e, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.x = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data1) #20
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store <2 x double> <double 1.000000e-03, double 2.000000e-01>, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE5data1, align 16, !tbaa !16
  store <2 x double> <double 4.000000e+00, double 2.000000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE5data1, i64 16), align 16, !tbaa !16
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data1) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.y = load atomic i8, ptr @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data2 acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.h, !prof !33

bb.f:                                             ; preds = %bb.e
  %i.aa = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data2) #20
  %.not3 = icmp eq i32 %i.aa, 0
  br i1 %.not3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <2 x double> <double 1.000000e-03, double 2.000000e-01>, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE5data2, align 16, !tbaa !16
  store <2 x double> <double 4.000000e+00, double 4.000000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE5data2, i64 16), align 16, !tbaa !16
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data2) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ab = load atomic i8, ptr @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data3 acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.k, !prof !33

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data3) #20
  %.not4 = icmp eq i32 %i.ad, 0
  br i1 %.not4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store <2 x double> <double 1.000000e-03, double 2.000000e-01>, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE5data3, align 16, !tbaa !16
  store <2 x double> <double 4.000000e+00, double 6.000000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE5data3, i64 16), align 16, !tbaa !16
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data3) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ae = load atomic i8, ptr @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data4 acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.n, !prof !33

bb.l:                                             ; preds = %bb.k
  %i.ag = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data4) #20
  %.not5 = icmp eq i32 %i.ag, 0
  br i1 %.not5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store <2 x double> <double 1.000000e-03, double 2.000000e-01>, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE5data4, align 16, !tbaa !16
  store <2 x double> <double 4.000000e+00, double 8.000000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE5data4, i64 16), align 16, !tbaa !16
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data4) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ah = load atomic i8, ptr @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data5 acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.o, label %bb.q, !prof !33

bb.o:                                             ; preds = %bb.n
  %i.aj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data5) #20
  %.not6 = icmp eq i32 %i.aj, 0
  br i1 %.not6, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store <2 x double> <double 1.000000e-03, double 2.000000e-01>, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE5data5, align 16, !tbaa !16
  store <2 x double> <double 4.000000e+00, double 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE5data5, i64 16), align 16, !tbaa !16
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot18Demo_LegendOptionsEvE5data5) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef nonnull @.str.326, ptr noundef nonnull @_ZN8MyImPlot7SawWaveEiPv, ptr noundef nonnull @_ZZN6ImPlot18Demo_LegendOptionsEvE5data1, i32 noundef 1000, i32 noundef 0) #20
  call void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef nonnull @.str.327, ptr noundef nonnull @_ZN8MyImPlot7SawWaveEiPv, ptr noundef nonnull @_ZZN6ImPlot18Demo_LegendOptionsEvE5data2, i32 noundef 1000, i32 noundef 0) #20
  call void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef nonnull @.str.328, ptr noundef nonnull @_ZN8MyImPlot7SawWaveEiPv, ptr noundef nonnull @_ZZN6ImPlot18Demo_LegendOptionsEvE5data3, i32 noundef 1000, i32 noundef 0) #20
  call void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef nonnull @.str.329, ptr noundef nonnull @_ZN8MyImPlot7SawWaveEiPv, ptr noundef nonnull @_ZZN6ImPlot18Demo_LegendOptionsEvE5data4, i32 noundef 1000, i32 noundef 0) #20
  call void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef nonnull @.str.329, ptr noundef nonnull @_ZN8MyImPlot7SawWaveEiPv, ptr noundef nonnull @_ZZN6ImPlot18Demo_LegendOptionsEvE5data5, i32 noundef 1000, i32 noundef 0) #20
  %i.ak = load i32, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE15num_dummy_items, align 4, !tbaa !14
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.q
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.r

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %.07 = phi i32 [ %i.ao, %.lr.ph ], [ 0, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.am = add nuw nsw i32 %.07, 4
  %i.an = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.330, i32 noundef %i.am) #20 ; 0 uses
  call void @_ZN6ImPlot9PlotDummyEPKci(ptr noundef nonnull %i.a, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ao = add nuw nsw i32 %.07, 1                 ; 2 uses
  %i.ap = load i32, ptr @_ZZN6ImPlot18Demo_LegendOptionsEvE15num_dummy_items, align 4, !tbaa !14
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !112

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local { double, double } @_ZN8MyImPlot7SawWaveEiPv(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = sitofp i32 %0 to double
  %i.b = load double, ptr %1, align 8, !tbaa !62
  %i.c = fmul double %i.b, %i.a                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !65
  %i.j = fmul double %i.i, 3.140000e+00
  %i.k = fmul double %i.c, %i.j                   ; 2 uses
  %i.l = tail call double @cos(double noundef %i.k) #20
  %i.m = tail call double @sin(double noundef %i.k) #20
  %i.n = fdiv double %i.l, %i.m
  %i.o = tail call double @atan(double noundef %i.n) #20
  %i.p = fmul double %i.o, f0xBFE461D59AE78A99
  %i.q = tail call double @llvm.fmuladd.f64(double %i.g, double %i.p, double %i.e)
  %.fca.0.insert = insertvalue { double, double } poison, double %i.c, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.q, 1
  ret { double, double } %.fca.1.insert
}

declare void @_ZN6ImPlot9PlotDummyEPKci(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot15Demo_DragPointsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 16            ; 4 uses
  %2 = alloca %struct.ImVec4, align 16            ; 4 uses
  %3 = alloca %struct.ImVec4, align 16            ; 4 uses
  %4 = alloca %struct.ImVec4, align 16            ; 4 uses
  %5 = alloca %struct.ImVec4, align 16            ; 4 uses
  %6 = alloca %struct.ImVec4, align 16            ; 4 uses
  %7 = alloca %struct.ImVec4, align 16            ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.331) #20
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.332, ptr noundef nonnull @_ZZN6ImPlot15Demo_DragPointsEvE5flags, i32 noundef 1) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.e = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.333, ptr noundef nonnull @_ZZN6ImPlot15Demo_DragPointsEvE5flags, i32 noundef 2) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.f = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.334, ptr noundef nonnull @_ZZN6ImPlot15Demo_DragPointsEvE5flags, i32 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !32
  %i.g = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.335, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 55) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.g, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef null, ptr noundef null, i32 noundef 12, i32 noundef 12) #20
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <4 x float> <float 0.000000e+00, float f0x3F666666, float 0.000000e+00, float 1.000000e+00>, ptr %1, align 16, !tbaa !32
  %i.h = load i32, ptr @_ZZN6ImPlot15Demo_DragPointsEvE5flags, align 4, !tbaa !14
  %i.i = call noundef zeroext i1 @_ZN6ImPlot9DragPointEiPdS0_RK6ImVec4fiPbS4_S4_(i32 noundef 0, ptr noundef nonnull @_ZZN6ImPlot15Demo_DragPointsEvE1P, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 8), ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef 4.000000e+00, i32 noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <4 x float> <float 1.000000e+00, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %2, align 16, !tbaa !32
  %i.j = load i32, ptr @_ZZN6ImPlot15Demo_DragPointsEvE5flags, align 4, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.n = call noundef zeroext i1 @_ZN6ImPlot9DragPointEiPdS0_RK6ImVec4fiPbS4_S4_(i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 24), ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef 4.000000e+00, i32 noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store <4 x float> <float 0.000000e+00, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %3, align 16, !tbaa !32
  %i.o = load i32, ptr @_ZZN6ImPlot15Demo_DragPointsEvE5flags, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.s = call noundef zeroext i1 @_ZN6ImPlot9DragPointEiPdS0_RK6ImVec4fiPbS4_S4_(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 32), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 40), ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef 4.000000e+00, i32 noundef %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store <4 x float> <float 0.000000e+00, float f0x3F666666, float 0.000000e+00, float 1.000000e+00>, ptr %4, align 16, !tbaa !32
  %i.t = load i32, ptr @_ZZN6ImPlot15Demo_DragPointsEvE5flags, align 4, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.x = call noundef zeroext i1 @_ZN6ImPlot9DragPointEiPdS0_RK6ImVec4fiPbS4_S4_(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 48), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 56), ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 4.000000e+00, i32 noundef %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.y = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 56), align 8, !tbaa !115
  %8 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 40), align 8
  %9 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 24), align 8
  %10 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 8), align 8
  %11 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 48), align 16
  %12 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 32), align 16
  %13 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 16), align 16
  %14 = load <2 x double>, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, align 16
  %broadcast.splat = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat34 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat36 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat38 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat40 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat42 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat44 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat46 = shufflevector <2 x double> %broadcast.splatinsert45, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.z = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.aa = fdiv <2 x double> %i.z, splat (double 9.900000e+01) ; 7 uses
  %i.ab = fsub <2 x double> splat (double 1.000000e+00), %i.aa ; 5 uses
  %i.ac = fmul <2 x double> %i.ab, %i.ab
  %i.ad = fmul <2 x double> %i.ab, %i.ac          ; 2 uses
  %i.ae = fmul nnan <2 x double> %i.ab, splat (double 3.000000e+00) ; 2 uses
  %i.af = fmul <2 x double> %i.ab, %i.ae
  %i.ag = fmul <2 x double> %i.aa, %i.af          ; 2 uses
  %i.ah = fmul <2 x double> %i.aa, %i.ae
  %i.ai = fmul <2 x double> %i.aa, %i.ah          ; 2 uses
  %i.aj = fmul <2 x double> %i.aa, %i.aa
  %i.ak = fmul <2 x double> %i.aa, %i.aj          ; 2 uses
  %i.al = fmul <2 x double> %i.ag, %broadcast.splat34
  %i.am = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %broadcast.splat, <2 x double> %i.al)
  %i.an = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %broadcast.splat36, <2 x double> %i.am)
  %i.ao = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %broadcast.splat38, <2 x double> %i.an)
  %i.ap = fmul <2 x double> %i.ag, %broadcast.splat42
  %i.aq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %broadcast.splat40, <2 x double> %i.ap)
  %i.ar = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %broadcast.splat44, <2 x double> %i.aq)
  %i.as = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %broadcast.splat46, <2 x double> %i.ar)
  %i.at = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6ImPlot15Demo_DragPointsEvE1B, i64 %index
  %interleaved.vec = shufflevector <2 x double> %i.ao, <2 x double> %i.as, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.at, align 16, !tbaa !16
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.au = icmp eq i64 %index.next, 100
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store <4 x float> <float 1.000000e+00, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %5, align 16, !tbaa !32
  %i.av = load i8, ptr %i.l, align 1, !tbaa !34, !range !35, !noundef !36
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load i8, ptr %i.m, align 1, !range !35
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = select i1 %i.aw, i1 true, i1 %i.ay
  %i.ba = select i1 %i.az, float 2.000000e+00, float 1.000000e+00
  call void @_ZN6ImPlot16SetNextLineStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef %i.ba) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.336, ptr noundef nonnull @_ZZN6ImPlot15Demo_DragPointsEvE1P, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 8), i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <4 x float> <float 0.000000e+00, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %6, align 16, !tbaa !32
  %i.bb = load i8, ptr %i.q, align 2, !tbaa !34, !range !35, !noundef !36
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load i8, ptr %i.r, align 2, !range !35
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = select i1 %i.bc, i1 true, i1 %i.be
  %i.bg = select i1 %i.bf, float 2.000000e+00, float 1.000000e+00
  call void @_ZN6ImPlot16SetNextLineStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef %i.bg) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.337, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 32), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1P, i64 40), i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store <4 x float> <float 0.000000e+00, float f0x3F666666, float 0.000000e+00, float 1.000000e+00>, ptr %7, align 16, !tbaa !32
  %i.bh = load i8, ptr %i.b, align 4, !tbaa !34, !range !35, !noundef !36
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = load i8, ptr %i.c, align 4, !range !35
  %i.bk = trunc nuw i8 %i.bj to i1
  %or.cond = select i1 %i.bi, i1 true, i1 %i.bk
  %i.bl = load i8, ptr %i.v, align 1, !range !35
  %i.bm = trunc nuw i8 %i.bl to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.bm
  %i.bn = load i8, ptr %i.w, align 1, !range !35
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = select i1 %or.cond5, i1 true, i1 %i.bo
  %i.bq = select i1 %i.bp, float 3.000000e+00, float 2.000000e+00
  call void @_ZN6ImPlot16SetNextLineStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.bq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.338, ptr noundef nonnull @_ZZN6ImPlot15Demo_DragPointsEvE1B, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot15Demo_DragPointsEvE1B, i64 8), i32 noundef 100, i32 noundef 0, i32 noundef 0, i32 noundef 16) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.b

bb.b:                                             ; preds = %middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

declare noundef zeroext i1 @_ZN6ImPlot9DragPointEiPdS0_RK6ImVec4fiPbS4_S4_(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), float noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14Demo_DragLinesEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 16            ; 4 uses
  %2 = alloca %struct.ImVec4, align 16            ; 4 uses
  %3 = alloca %struct.ImVec4, align 16            ; 4 uses
  %4 = alloca %struct.ImVec4, align 16            ; 4 uses
  %i.d = alloca [1000 x double], align 16         ; 4 uses
  %i.e = alloca [1000 x double], align 16         ; 4 uses
  %5 = alloca %struct.ImVec4, align 16            ; 4 uses
  %6 = alloca %struct.ImVec4, align 16            ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.339) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i8 0, ptr %i.b, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 0, ptr %i.c, align 1, !tbaa !34
  %i.f = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.332, ptr noundef nonnull @_ZZN6ImPlot14Demo_DragLinesEvE5flags, i32 noundef 1) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.333, ptr noundef nonnull @_ZZN6ImPlot14Demo_DragLinesEvE5flags, i32 noundef 2) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.h = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.334, ptr noundef nonnull @_ZZN6ImPlot14Demo_DragLinesEvE5flags, i32 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !32
  %i.i = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.340, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <4 x float> splat (float 1.000000e+00), ptr %1, align 16, !tbaa !32
  %i.j = load i32, ptr @_ZZN6ImPlot14Demo_DragLinesEvE5flags, align 4, !tbaa !14
  %i.k = call noundef zeroext i1 @_ZN6ImPlot9DragLineXEiPdRK6ImVec4fiPbS4_S4_(i32 noundef 0, ptr noundef nonnull @_ZZN6ImPlot14Demo_DragLinesEvE2x1, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef 1.000000e+00, i32 noundef %i.j, ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !32
  %i.l = load i32, ptr @_ZZN6ImPlot14Demo_DragLinesEvE5flags, align 4, !tbaa !14
  %i.m = call noundef zeroext i1 @_ZN6ImPlot9DragLineXEiPdRK6ImVec4fiPbS4_S4_(i32 noundef 1, ptr noundef nonnull @_ZZN6ImPlot14Demo_DragLinesEvE2x2, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef 1.000000e+00, i32 noundef %i.l, ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store <4 x float> splat (float 1.000000e+00), ptr %3, align 16, !tbaa !32
  %i.n = load i32, ptr @_ZZN6ImPlot14Demo_DragLinesEvE5flags, align 4, !tbaa !14
  %i.o = call noundef zeroext i1 @_ZN6ImPlot9DragLineYEiPdRK6ImVec4fiPbS4_S4_(i32 noundef 2, ptr noundef nonnull @_ZZN6ImPlot14Demo_DragLinesEvE2y1, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef 1.000000e+00, i32 noundef %i.n, ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store <4 x float> splat (float 1.000000e+00), ptr %4, align 16, !tbaa !32
  %i.p = load i32, ptr @_ZZN6ImPlot14Demo_DragLinesEvE5flags, align 4, !tbaa !14
  %i.q = call noundef zeroext i1 @_ZN6ImPlot9DragLineYEiPdRK6ImVec4fiPbS4_S4_(i32 noundef 3, ptr noundef nonnull @_ZZN6ImPlot14Demo_DragLinesEvE2y2, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00, i32 noundef %i.p, ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.r = load double, ptr @_ZZN6ImPlot14Demo_DragLinesEvE2x2, align 8, !tbaa !16 ; 2 uses
  %i.s = load double, ptr @_ZZN6ImPlot14Demo_DragLinesEvE2x1, align 8, !tbaa !16 ; 2 uses
  %i.t = fsub double %i.r, %i.s
  %i.u = load double, ptr @_ZZN6ImPlot14Demo_DragLinesEvE2y1, align 8, !tbaa !16 ; 2 uses
  %i.v = load double, ptr @_ZZN6ImPlot14Demo_DragLinesEvE2y2, align 8, !tbaa !16 ; 2 uses
  %i.w = fsub double %i.v, %i.u
  %i.x = call double @llvm.fabs.f64(double %i.w)
  %i.y = insertelement <2 x double> poison, double %i.r, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.u, i64 1
  %i.aa = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.v, i64 1
  %i.ac = fadd <2 x double> %i.z, %i.ab
  %i.ad = call double @llvm.fabs.f64(double %i.t)
  %i.ae = fmul <2 x double> %i.ac, splat (double 5.000000e-01)
  %i.af = fmul double %i.x, 5.000000e-01
  %i.ag = load double, ptr @_ZZN6ImPlot14Demo_DragLinesEvE1f, align 8, !tbaa !16
  %i.ah = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.af, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store <4 x float> <float 1.000000e+00, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %5, align 16, !tbaa !32
  %i.aj = load i32, ptr @_ZZN6ImPlot14Demo_DragLinesEvE5flags, align 4, !tbaa !14
  %i.ak = call noundef zeroext i1 @_ZN6ImPlot9DragLineYEiPdRK6ImVec4fiPbS4_S4_(i32 noundef 120482, ptr noundef nonnull @_ZZN6ImPlot14Demo_DragLinesEvE1f, ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef 1.000000e+00, i32 noundef %i.aj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %6, align 16, !tbaa !32
  %i.al = load i8, ptr %i.b, align 1, !tbaa !34, !range !35, !noundef !36
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = load i8, ptr %i.c, align 1, !range !35
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = select i1 %i.am, i1 true, i1 %i.ao
  %i.aq = select i1 %i.ap, float 2.000000e+00, float 1.000000e+00
  call void @_ZN6ImPlot16SetNextLineStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef %i.aq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.341, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 1000, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.as = uitofp nneg i32 %i.ar to float
  %i.at = fdiv float %i.as, 1.000000e+03
  %i.au = fadd float %i.at, -5.000000e-01
  %i.av = fpext float %i.au to double
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.ax = uitofp nneg i32 %i.ar to double
  %i.ay = fmul double %i.ag, %i.ax
  %i.az = fdiv double %i.ay, 1.000000e+01
end_hunk_0
