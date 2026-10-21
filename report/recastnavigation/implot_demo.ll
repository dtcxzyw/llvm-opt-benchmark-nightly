Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot_demo?download=true
inline.NumInlined: 397
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6ImPlot20Demo_FilledLinePlotsEv:bb.a
  %.pr = load i32, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10shade_mode, align 4, !tbaa !13
  %i.af = icmp eq i32 %.pr, 2
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread, %bb.i
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  tail call void @_ZN5ImGui16SetNextItemWidthEf(float noundef 1.000000e+02) #20
  %i.ag = tail call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.54, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE8fill_ref, float noundef 1.000000e+00, float noundef -1.000000e+02, float noundef 5.000000e+02, ptr noundef nonnull @.str.33, i32 noundef 0) #20 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.ah = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.55, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.ah, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef 0) #20
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 0.000000e+00, double noundef 1.000000e+02, double noundef 0.000000e+00, double noundef 5.000000e+02, i32 noundef 2) #20
  %i.ai = load i8, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10show_fills, align 1, !tbaa !33, !range !34, !noundef !35
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @_ZN6ImPlot12PushStyleVarEif(i32 noundef 4, float noundef 2.500000e-01) #20
  %i.ak = load i32, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10shade_mode, align 4, !tbaa !13 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = icmp eq i32 %i.ak, 1
  %i.an = load float, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE8fill_ref, align 4
  %i.ao = fpext float %i.an to double
  %i.ap = select i1 %i.am, double +inf, double %i.ao
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.aq = phi double [ %i.ap, %bb.n ], [ -inf, %bb.m ]
  call void @_ZN6ImPlot10PlotShadedIdEEvPKcPKT_S5_idiii(ptr noundef nonnull @.str.58, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3xs1, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3ys1, i32 noundef 101, double noundef %i.aq, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  %i.ar = load i32, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10shade_mode, align 4, !tbaa !13 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = icmp eq i32 %i.ar, 1
  %i.au = load float, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE8fill_ref, align 4
  %i.av = fpext float %i.au to double
  %i.aw = select i1 %i.at, double +inf, double %i.av
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ax = phi double [ %i.aw, %bb.p ], [ -inf, %bb.o ]
  call void @_ZN6ImPlot10PlotShadedIdEEvPKcPKT_S5_idiii(ptr noundef nonnull @.str.59, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3xs1, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3ys2, i32 noundef 101, double noundef %i.ax, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  %i.ay = load i32, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10shade_mode, align 4, !tbaa !13 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = icmp eq i32 %i.ay, 1
  %i.bb = load float, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE8fill_ref, align 4
  %i.bc = fpext float %i.bb to double
  %i.bd = select i1 %i.ba, double +inf, double %i.bc
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.be = phi double [ %i.bd, %bb.r ], [ -inf, %bb.q ]
  call void @_ZN6ImPlot10PlotShadedIdEEvPKcPKT_S5_idiii(ptr noundef nonnull @.str.60, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3xs1, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3ys3, i32 noundef 101, double noundef %i.be, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot11PopStyleVarEi(i32 noundef 1) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.l
  %i.bf = load i8, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10show_lines, align 1, !tbaa !33, !range !34, !noundef !35
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.58, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3xs1, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3ys1, i32 noundef 101, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.59, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3xs1, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3ys2, i32 noundef 101, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.60, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3xs1, ptr noundef nonnull @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3ys3, i32 noundef 101, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  ret void
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui16SetNextItemWidthEf(float noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef, double noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot12PushStyleVarEif(i32 noundef, float noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot10PlotShadedIdEEvPKcPKT_S5_idiii(ptr noundef, ptr noundef, ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot11PopStyleVarEi(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot16Demo_ShadedPlotsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  tail call void @srand(i32 noundef 0) #20
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.61, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE5alpha, float noundef f0x3C23D70A, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.33, i32 noundef 0) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.b = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.62, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 8 uses
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = uitofp nneg i32 %i.c to float
  %i.e = fmul nnan float %i.d, 1.000000e-03       ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot16Demo_ShadedPlotsEvE2xs, i64 %indvars.iv ; 2 uses
  store float %i.e, ptr %i.f, align 4, !tbaa !31
  %i.g = fmul nnan float %i.e, 2.500000e+01
  %i.h = tail call float @sinf(float noundef %i.g) #20
  %i.i = fmul nnan float %i.e, 5.000000e+00
  %i.j = tail call float @sinf(float noundef %i.i) #20
  %i.k = tail call i32 @rand() #20
  %i.l = sitofp i32 %i.k to float
  %i.m = insertelement <2 x float> poison, float %i.h, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.l, i64 1
  %i.o = fmul <2 x float> %i.n, <float 2.500000e-01, float f0x30000000>
  %i.p = insertelement <2 x float> <float poison, float 2.000000e-02>, float %i.j, i64 0
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.p, <2 x float> <float 2.500000e-01, float f0xBC23D70A>) ; 2 uses
  %shift = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.q, %shift
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot16Demo_ShadedPlotsEvE2ys, i64 %indvars.iv ; 2 uses
  store float %i.r, ptr %i.s, align 4, !tbaa !31
  %i.t = tail call i32 @rand() #20
  %i.u = sitofp i32 %i.t to float
  %i.v = fmul nnan float %i.u, f0x30000000
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.v, float f0x3CA3D708, float 1.000000e-01)
  %i.x = fadd float %i.r, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys1, i64 %indvars.iv
  store float %i.x, ptr %i.y, align 4, !tbaa !31
  %i.z = load float, ptr %i.s, align 4, !tbaa !31
  %i.aa = tail call i32 @rand() #20
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = fmul nnan float %i.ab, f0x30000000
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %i.ac, float f0x3CA3D708, float 1.000000e-01)
  %i.ae = fsub float %i.z, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys2, i64 %indvars.iv
  store float %i.ae, ptr %i.af, align 4, !tbaa !31
  %i.ag = load float, ptr %i.f, align 4, !tbaa !31
  %i.ah = fmul float %i.ag, 2.500000e+01          ; 2 uses
  %i.ai = tail call float @sinf(float noundef %i.ah) #20
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys3, i64 %indvars.iv
  %i.ak = tail call float @cosf(float noundef %i.ah) #20
  %i.al = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ak, i64 1
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> <float 2.000000e-01, float 1.000000e-01>, <2 x float> splat (float 7.500000e-01)) ; 2 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  store float %i.ao, ptr %i.aj, align 4, !tbaa !31
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys4, i64 %indvars.iv
  %i.aq = extractelement <2 x float> %i.an, i64 1
  store float %i.aq, ptr %i.ap, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1001
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !82

bb.d:                                             ; preds = %bb.b
  %i.ar = load float, ptr @_ZZN6ImPlot16Demo_ShadedPlotsEvE5alpha, align 4, !tbaa !31
  call void @_ZN6ImPlot12PushStyleVarEif(i32 noundef 4, float noundef %i.ar) #20
  call void @_ZN6ImPlot10PlotShadedIfEEvPKcPKT_S5_S5_iiii(ptr noundef nonnull @.str.63, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys1, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys2, i32 noundef 1001, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.63, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE2ys, i32 noundef 1001, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot10PlotShadedIfEEvPKcPKT_S5_S5_iiii(ptr noundef nonnull @.str.64, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys3, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys4, i32 noundef 1001, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.64, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys3, i32 noundef 1001, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.64, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys4, i32 noundef 1001, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot11PopStyleVarEi(i32 noundef 1) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #4

declare void @_ZN6ImPlot10PlotShadedIfEEvPKcPKT_S5_S5_iiii(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot17Demo_ScatterPlotsEv() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 8             ; 5 uses
  %2 = alloca %struct.ImVec4, align 8             ; 5 uses
  tail call void @srand(i32 noundef 0) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.a = trunc nuw nsw i64 %indvars.iv to i32
  %i.b = uitofp nneg i32 %i.a to float
  %i.c = fmul nnan float %i.b, f0x3C23D70A        ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot17Demo_ScatterPlotsEvE3xs1, i64 %indvars.iv
  store float %i.c, ptr %i.d, align 4, !tbaa !31
  %i.e = tail call i32 @rand() #20
  %i.f = sitofp i32 %i.e to float
  %i.g = fmul nnan float %i.f, f0x30000000
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float 1.000000e-01, float %i.c)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot17Demo_ScatterPlotsEvE3ys1, i64 %indvars.iv
  store float %i.h, ptr %i.i, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !83

bb.c:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.j = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.65, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.j, label %bb.d, label %bb.e

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %.preheader ], [ 0, %bb.b ] ; 3 uses
  %i.k = tail call i32 @rand() #20
  %i.l = sitofp i32 %i.k to float
  %i.m = fmul nnan float %i.l, f0x30000000
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float 2.000000e-01, float 2.500000e-01)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot17Demo_ScatterPlotsEvE3xs2, i64 %indvars.iv14
  store float %i.n, ptr %i.o, align 4, !tbaa !31
  %i.p = tail call i32 @rand() #20
  %i.q = sitofp i32 %i.p to float
  %i.r = fmul nnan float %i.q, f0x30000000
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 2.000000e-01, float 7.500000e-01)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot17Demo_ScatterPlotsEvE3ys2, i64 %indvars.iv14
  store float %i.s, ptr %i.t, align 4, !tbaa !31
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1 ; 2 uses
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 50
  br i1 %exitcond17.not, label %bb.c, label %.preheader, !llvm.loop !84

bb.d:                                             ; preds = %bb.c
  call void @_ZN6ImPlot11PlotScatterIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.66, ptr noundef nonnull @_ZZN6ImPlot17Demo_ScatterPlotsEvE3xs1, ptr noundef nonnull @_ZZN6ImPlot17Demo_ScatterPlotsEvE3ys1, i32 noundef 100, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot12PushStyleVarEif(i32 noundef 4, float noundef 2.500000e-01) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.u = call { <2 x float>, <2 x float> } @_ZN6ImPlot16GetColormapColorEii(i32 noundef 1, i32 noundef -1) #20 ; 2 uses
  %i.v = extractvalue { <2 x float>, <2 x float> } %i.u, 0
  store <2 x float> %i.v, ptr %1, align 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = extractvalue { <2 x float>, <2 x float> } %i.u, 1
  store <2 x float> %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.w = call { <2 x float>, <2 x float> } @_ZN6ImPlot16GetColormapColorEii(i32 noundef 1, i32 noundef -1) #20 ; 2 uses
  %i.x = extractvalue { <2 x float>, <2 x float> } %i.w, 0
  store <2 x float> %i.x, ptr %2, align 8
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = extractvalue { <2 x float>, <2 x float> } %i.w, 1
  store <2 x float> %6, ptr %5, align 8
  call void @_ZN6ImPlot18SetNextMarkerStyleEifRK6ImVec4fS2_(i32 noundef 1, float noundef 6.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @_ZN6ImPlot11PlotScatterIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.67, ptr noundef nonnull @_ZZN6ImPlot17Demo_ScatterPlotsEvE3xs2, ptr noundef nonnull @_ZZN6ImPlot17Demo_ScatterPlotsEvE3ys2, i32 noundef 50, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot11PopStyleVarEi(i32 noundef 1) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN6ImPlot11PlotScatterIfEEvPKcPKT_S5_iiii(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare { <2 x float>, <2 x float> } @_ZN6ImPlot16GetColormapColorEii(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot19Demo_StairstepPlotsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 16            ; 4 uses
  %2 = alloca %struct.ImVec4, align 16            ; 4 uses
  %3 = alloca %struct.ImVec4, align 16            ; 4 uses
  %4 = alloca %struct.ImVec4, align 16            ; 4 uses
  %5 = alloca %struct.ImVec4, align 16            ; 4 uses
  %6 = alloca %struct.ImVec4, align 16            ; 4 uses
  %7 = alloca %struct.ImVec4, align 16            ; 4 uses
  store <4 x float> <float 7.500000e-01, float f0x3F588BED, float f0x3F6B1554, float 9.494990e-01>, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys1, align 16, !tbaa !31
  store <4 x float> <float 2.500000e-01, float f0x3EB117DA, float f0x3ED62AA8, float 4.494990e-01>, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys2, align 16, !tbaa !31
  store <4 x float> <float f0x3F6E8E58, float f0x3F5EA44B, float f0x3F4739B0, float f0x3F2E0A37>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys1, i64 16), align 16, !tbaa !31
  store <4 x float> <float f0x3EDD1CB0, float f0x3EBD4896, float 2.782240e-01, float f0x3E3828DB>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys2, i64 16), align 16, !tbaa !31
  store <4 x float> <float f0x3F194070, float f0x3F0DF351, float f0x3F0EE730, float f0x3F1BE058>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys1, i64 32), align 16, !tbaa !31
  store <4 x float> <float f0x3DCA0381, float f0x3D5F3512, float f0x3D6E72FF, float f0x3DDF02BD>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys2, i64 32), align 16, !tbaa !31
  store <4 x float> <float f0x3F31B1A5, float 7.930240e-01, float f0x3F61A341, float 9.376000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys1, i64 48), align 16, !tbaa !31
  store <4 x float> <float f0x3E46C695, float 2.930240e-01, float f0x3EC34682, float 4.376000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys2, i64 48), align 16, !tbaa !31
  store <4 x float> <float f0x3F72A7B7, float f0x3F68E1EE, float f0x3F5519B8, float f0x3F3C26FB>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys1, i64 64), align 16, !tbaa !31
  store <4 x float> <float f0x3EE54F6F, float f0x3ED1C3DC, float f0x3EAA3370, float f0x3E709BEB>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys2, i64 64), align 16, !tbaa !31
  store float f0x3F242568, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys1, i64 80), align 16, !tbaa !31
  store float f0x3E1095A0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys2, i64 80), align 16, !tbaa !31
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.68, ptr noundef nonnull @_ZZN6ImPlot19Demo_StairstepPlotsEvE5flags, i32 noundef 2048) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.b = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.69, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef 0) #20
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>, ptr %1, align 16, !tbaa !31
  call void @_ZN6ImPlot14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_iddiii(ptr noundef nonnull @.str.70, ptr noundef nonnull @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys1, i32 noundef 21, double noundef f0x3FA99999A0000000, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_iddiii(ptr noundef nonnull @.str.71, ptr noundef nonnull @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys2, i32 noundef 21, double noundef f0x3FA99999A0000000, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot13PopStyleColorEi(i32 noundef 1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %2, align 16, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %3, align 16, !tbaa !31
  call void @_ZN6ImPlot18SetNextMarkerStyleEifRK6ImVec4fS2_(i32 noundef 0, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %4, align 16, !tbaa !31
  call void @_ZN6ImPlot16SetNextFillStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 2.500000e-01) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.c = load i32, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE5flags, align 4, !tbaa !13
  call void @_ZN6ImPlot10PlotStairsIfEEvPKcPKT_iddiii(ptr noundef nonnull @.str.72, ptr noundef nonnull @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys1, i32 noundef 21, double noundef f0x3FA99999A0000000, double noundef 0.000000e+00, i32 noundef %i.c, i32 noundef 0, i32 noundef 4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %5, align 16, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %6, align 16, !tbaa !31
  call void @_ZN6ImPlot18SetNextMarkerStyleEifRK6ImVec4fS2_(i32 noundef 0, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %7, align 16, !tbaa !31
  call void @_ZN6ImPlot16SetNextFillStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef 2.500000e-01) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.d = load i32, ptr @_ZZN6ImPlot19Demo_StairstepPlotsEvE5flags, align 4, !tbaa !13
  %i.e = or i32 %i.d, 1024
  call void @_ZN6ImPlot10PlotStairsIfEEvPKcPKT_iddiii(ptr noundef nonnull @.str.73, ptr noundef nonnull @_ZZN6ImPlot19Demo_StairstepPlotsEvE3ys2, i32 noundef 21, double noundef f0x3FA99999A0000000, double noundef 0.000000e+00, i32 noundef %i.e, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6ImPlot14PushStyleColorEiRK6ImVec4(i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_iddiii(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot13PopStyleColorEi(i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot16SetNextFillStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16), float noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot10PlotStairsIfEEvPKcPKT_iddiii(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot13Demo_BarPlotsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.a = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.74, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot8PlotBarsIaEEvPKcPKT_iddiii(ptr noundef nonnull @.str.75, ptr noundef nonnull @_ZZN6ImPlot13Demo_BarPlotsEvE4data, i32 noundef 10, double noundef f0x3FE6666666666666, double noundef 1.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 1) #20
  call void @_ZN6ImPlot8PlotBarsIaEEvPKcPKT_iddiii(ptr noundef nonnull @.str.76, ptr noundef nonnull @_ZZN6ImPlot13Demo_BarPlotsEvE4data, i32 noundef 10, double noundef 4.000000e-01, double noundef 1.000000e+00, i32 noundef 1024, i32 noundef 0, i32 noundef 1) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6ImPlot8PlotBarsIaEEvPKcPKT_iddiii(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14Demo_BarGroupsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.90, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE5flags, i32 noundef 2048) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.76, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE4horz) #20 ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.91, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE5items, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.92, i32 noundef 0) #20 ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.93, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE4size, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.33, i32 noundef 0) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.e = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.94, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot11SetupLegendEii(i32 noundef 8, i32 noundef 16) #20
  %i.f = load i8, ptr @_ZZN6ImPlot14Demo_BarGroupsEvE4horz, align 1, !tbaa !33, !range !34, !noundef !35
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef 2048, i32 noundef 2048) #20
  call void @_ZN6ImPlot14SetupAxisTicksEiPKdiPKPKcb(i32 noundef 3, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE9positions, i32 noundef 10, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE7glabels, i1 noundef zeroext false) #20
  %i.h = load i32, ptr @_ZZN6ImPlot14Demo_BarGroupsEvE5items, align 4, !tbaa !13
  %i.i = load float, ptr @_ZZN6ImPlot14Demo_BarGroupsEvE4size, align 4, !tbaa !31
  %i.j = fpext float %i.i to double
  %i.k = load i32, ptr @_ZZN6ImPlot14Demo_BarGroupsEvE5flags, align 4, !tbaa !13
  %i.l = or i32 %i.k, 1024
  call void @_ZN6ImPlot13PlotBarGroupsIaEEvPKPKcPKT_iiddi(ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE7ilabels, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE4data, i32 noundef %i.h, i32 noundef 10, double noundef %i.j, double noundef 0.000000e+00, i32 noundef %i.l) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef 2048, i32 noundef 2048) #20
  call void @_ZN6ImPlot14SetupAxisTicksEiPKdiPKPKcb(i32 noundef 0, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE9positions, i32 noundef 10, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE7glabels, i1 noundef zeroext false) #20
  %i.m = load i32, ptr @_ZZN6ImPlot14Demo_BarGroupsEvE5items, align 4, !tbaa !13
  %i.n = load float, ptr @_ZZN6ImPlot14Demo_BarGroupsEvE4size, align 4, !tbaa !31
  %i.o = fpext float %i.n to double
  %i.p = load i32, ptr @_ZZN6ImPlot14Demo_BarGroupsEvE5flags, align 4, !tbaa !13
  call void @_ZN6ImPlot13PlotBarGroupsIaEEvPKPKcPKT_iiddi(ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE7ilabels, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarGroupsEvE4data, i32 noundef %i.m, i32 noundef 10, double noundef %i.o, double noundef 0.000000e+00, i32 noundef %i.p) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot11SetupLegendEii(i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot14SetupAxisTicksEiPKdiPKPKcb(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN6ImPlot13PlotBarGroupsIaEEvPKPKcPKT_iiddi(ptr noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14Demo_BarStacksEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load i32, ptr @_ZZN6ImPlot14Demo_BarStacksEvE5Liars, align 4, !tbaa !13
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN6ImPlot11AddColormapEPKcPKjib(ptr noundef nonnull @.str.97, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarStacksEvE10Liars_Data, i32 noundef 6, i1 noundef zeroext true) #20
  store i32 %i.c, ptr @_ZZN6ImPlot14Demo_BarStacksEvE5Liars, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.98, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarStacksEvE9diverging) #20 ; 0 uses
  %i.e = load i32, ptr @_ZZN6ImPlot14Demo_BarStacksEvE5Liars, align 4, !tbaa !13
  tail call void @_ZN6ImPlot12PushColormapEi(i32 noundef %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 4.000000e+02>, ptr %0, align 8, !tbaa !31
  %i.f = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.123, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @_ZN6ImPlot11SetupLegendEii(i32 noundef 2, i32 noundef 48) #20
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef null, ptr noundef null, i32 noundef 2063, i32 noundef 3072) #20
  call void @_ZN6ImPlot14SetupAxisTicksEiddiPKPKcb(i32 noundef 3, double noundef 0.000000e+00, double noundef 1.900000e+01, i32 noundef 20, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarStacksEvE11politicians, i1 noundef zeroext false) #20
  %i.g = load i8, ptr @_ZZN6ImPlot14Demo_BarStacksEvE9diverging, align 1, !tbaa !33, !range !34, !noundef !35
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN6ImPlot13PlotBarGroupsIiEEvPKPKcPKT_iiddi(ptr noundef nonnull @_ZZN6ImPlot14Demo_BarStacksEvE10labels_div, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarStacksEvE8data_div, i32 noundef 9, i32 noundef 20, double noundef 7.500000e-01, double noundef 0.000000e+00, i32 noundef 3072) #20
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_ZN6ImPlot13PlotBarGroupsIiEEvPKPKcPKT_iiddi(ptr noundef nonnull @_ZZN6ImPlot14Demo_BarStacksEvE10labels_reg, ptr noundef nonnull @_ZZN6ImPlot14Demo_BarStacksEvE8data_reg, i32 noundef 6, i32 noundef 20, double noundef 7.500000e-01, double noundef 0.000000e+00, i32 noundef 3072) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  call void @_ZN6ImPlot11PopColormapEi(i32 noundef 1) #20
  ret void
}

declare noundef i32 @_ZN6ImPlot11AddColormapEPKcPKjib(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN6ImPlot12PushColormapEi(i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot14SetupAxisTicksEiddiPKPKcb(i32 noundef, double noundef, double noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN6ImPlot13PlotBarGroupsIiEEvPKPKcPKT_iiddi(ptr noundef, ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot11PopColormapEi(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14Demo_ErrorBarsEv() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 8             ; 5 uses
  %2 = alloca %struct.ImVec4, align 16            ; 4 uses
  %3 = alloca %struct.ImVec4, align 16            ; 4 uses
  %4 = alloca %struct.ImVec4, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.a = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.124, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 0.000000e+00, double noundef 6.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+01, i32 noundef 2) #20
  call void @_ZN6ImPlot8PlotBarsIfEEvPKcPKT_S5_idiii(ptr noundef nonnull @.str.125, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE3bar, i32 noundef 5, double noundef 5.000000e-01, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot13PlotErrorBarsIfEEvPKcPKT_S5_S5_iiii(ptr noundef nonnull @.str.125, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE3bar, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE4err1, i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.b = call { <2 x float>, <2 x float> } @_ZN6ImPlot16GetColormapColorEii(i32 noundef 1, i32 noundef -1) #20 ; 2 uses
  %i.c = extractvalue { <2 x float>, <2 x float> } %i.b, 0
  store <2 x float> %i.c, ptr %1, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = extractvalue { <2 x float>, <2 x float> } %i.b, 1
  store <2 x float> %6, ptr %5, align 8
  call void @_ZN6ImPlot20SetNextErrorBarStyleERK6ImVec4ff(ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @_ZN6ImPlot13PlotErrorBarsIfEEvPKcPKT_S5_S5_S5_iiii(ptr noundef nonnull @.str.126, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE4lin1, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE4err1, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE4err2, i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %2, align 16, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %3, align 16, !tbaa !31
  call void @_ZN6ImPlot18SetNextMarkerStyleEifRK6ImVec4fS2_(i32 noundef 1, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.126, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE4lin1, i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.d = call { <2 x float>, <2 x float> } @_ZN6ImPlot16GetColormapColorEii(i32 noundef 2, i32 noundef -1) #20 ; 2 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.d, 0
  store <2 x float> %i.e, ptr %4, align 8
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %8 = extractvalue { <2 x float>, <2 x float> } %i.d, 1
  store <2 x float> %8, ptr %7, align 8
  call void @_ZN6ImPlot14PushStyleColorEiRK6ImVec4(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN6ImPlot13PlotErrorBarsIfEEvPKcPKT_S5_S5_iiii(ptr noundef nonnull @.str.127, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE4lin2, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE4err2, i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot13PlotErrorBarsIfEEvPKcPKT_S5_S5_S5_iiii(ptr noundef nonnull @.str.127, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE4lin2, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE4err3, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE4err4, i32 noundef 5, i32 noundef 1024, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot13PopStyleColorEi(i32 noundef 1) #20
  call void @_ZN6ImPlot11PlotScatterIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.127, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot14Demo_ErrorBarsEvE4lin2, i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6ImPlot8PlotBarsIfEEvPKcPKT_S5_idiii(ptr noundef, ptr noundef, ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot13PlotErrorBarsIfEEvPKcPKT_S5_S5_iiii(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot20SetNextErrorBarStyleERK6ImVec4ff(ptr noundef nonnull align 4 dereferenceable(16), float noundef, float noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot13PlotErrorBarsIfEEvPKcPKT_S5_S5_S5_iiii(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14Demo_StemPlotsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 16            ; 4 uses
  %2 = alloca %struct.ImVec4, align 16            ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.a = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.128, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.a, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.b = trunc nuw nsw i64 %indvars.iv to i32
  %i.c = uitofp nneg i32 %i.b to double
  %i.d = fmul nnan double %i.c, 2.000000e-02      ; 5 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot14Demo_StemPlotsEvE2xs, i64 %indvars.iv
  store double %i.d, ptr %i.e, align 8, !tbaa !15
  %i.f = fmul nnan double %i.d, 2.500000e+01
  %i.g = tail call double @sin(double noundef %i.f) #20
  %i.h = fmul nnan double %i.d, 2.000000e+00
  %i.i = tail call double @cos(double noundef %i.h) #20
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot14Demo_StemPlotsEvE3ys1, i64 %indvars.iv
  %i.k = fmul nnan double %i.d, 1.000000e+01
  %i.l = tail call double @sin(double noundef %i.k) #20
  %i.m = tail call double @sin(double noundef %i.d) #20
  %i.n = insertelement <2 x double> poison, double %i.g, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.l, i64 1
  %i.p = fmul <2 x double> %i.o, <double 5.000000e-01, double 2.500000e-01>
  %i.q = insertelement <2 x double> poison, double %i.i, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.m, i64 1
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> <double 1.000000e+00, double 5.000000e-01>) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  store double %i.t, ptr %i.j, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot14Demo_StemPlotsEvE3ys2, i64 %indvars.iv
  %i.v = extractelement <2 x double> %i.s, i64 1
  store double %i.v, ptr %i.u, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 51
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !85

bb.d:                                             ; preds = %bb.b
  call void @_ZN6ImPlot15SetupAxisLimitsEiddi(i32 noundef 0, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  call void @_ZN6ImPlot15SetupAxisLimitsEiddi(i32 noundef 3, double noundef 0.000000e+00, double noundef 1.600000e+00, i32 noundef 2) #20
  call void @_ZN6ImPlot9PlotStemsIdEEvPKcPKT_S5_idiii(ptr noundef nonnull @.str.129, ptr noundef nonnull @_ZZN6ImPlot14Demo_StemPlotsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot14Demo_StemPlotsEvE3ys1, i32 noundef 51, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %1, align 16, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %2, align 16, !tbaa !31
  call void @_ZN6ImPlot18SetNextMarkerStyleEifRK6ImVec4fS2_(i32 noundef 0, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @_ZN6ImPlot9PlotStemsIdEEvPKcPKT_S5_idiii(ptr noundef nonnull @.str.130, ptr noundef nonnull @_ZZN6ImPlot14Demo_StemPlotsEvE2xs, ptr noundef nonnull @_ZZN6ImPlot14Demo_StemPlotsEvE3ys2, i32 noundef 51, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

declare void @_ZN6ImPlot9PlotStemsIdEEvPKcPKT_S5_idiii(ptr noundef, ptr noundef, ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot18Demo_InfiniteLinesEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.a = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.131, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef null, ptr noundef null, i32 noundef 16, i32 noundef 16) #20
  call void @_ZN6ImPlot12PlotInfLinesIdEEvPKcPKT_iiii(ptr noundef nonnull @.str.75, ptr noundef nonnull @_ZZN6ImPlot18Demo_InfiniteLinesEvE4vals, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot12PlotInfLinesIdEEvPKcPKT_iiii(ptr noundef nonnull @.str.76, ptr noundef nonnull @_ZZN6ImPlot18Demo_InfiniteLinesEvE4vals, i32 noundef 3, i32 noundef 1024, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6ImPlot12PlotInfLinesIdEEvPKcPKT_iiii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14Demo_PieChartsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  tail call void @_ZN5ImGui16SetNextItemWidthEf(float noundef 2.500000e+02) #20
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui10DragFloat4EPKcPffffS1_i(ptr noundef nonnull @.str.136, ptr noundef nonnull @_ZZN6ImPlot14Demo_PieChartsEvE5data1, float noundef f0x3C23D70A, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.33, i32 noundef 0) #20 ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.137, ptr noundef nonnull @_ZZN6ImPlot14Demo_PieChartsEvE5flags, i32 noundef 1024) #20 ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.138, ptr noundef nonnull @_ZZN6ImPlot14Demo_PieChartsEvE5flags, i32 noundef 2048) #20 ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.139, ptr noundef nonnull @_ZZN6ImPlot14Demo_PieChartsEvE5flags, i32 noundef 4096) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> splat (float 2.500000e+02), ptr %0, align 8, !tbaa !31
  %i.e = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.140, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 132) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef null, ptr noundef null, i32 noundef 15, i32 noundef 15) #20
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  %i.f = load i32, ptr @_ZZN6ImPlot14Demo_PieChartsEvE5flags, align 4, !tbaa !13
  call void @_ZN6ImPlot12PlotPieChartIfEEvPKPKcPKT_idddS2_di(ptr noundef nonnull @_ZZN6ImPlot14Demo_PieChartsEvE7labels1, ptr noundef nonnull @_ZZN6ImPlot14Demo_PieChartsEvE5data1, i32 noundef 4, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 4.000000e-01, ptr noundef nonnull @.str.141, double noundef 9.000000e+01, i32 noundef %i.f) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  call void @_ZN6ImPlot12PushColormapEi(i32 noundef 2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <2 x float> splat (float 2.500000e+02), ptr %1, align 8, !tbaa !31
  %i.g = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.147, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 132) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef null, ptr noundef null, i32 noundef 15, i32 noundef 15) #20
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  %i.h = load i32, ptr @_ZZN6ImPlot14Demo_PieChartsEvE5flags, align 4, !tbaa !13
  call void @_ZN6ImPlot12PlotPieChartIiEEvPKPKcPKT_idddS2_di(ptr noundef nonnull @_ZZN6ImPlot14Demo_PieChartsEvE7labels2, ptr noundef nonnull @_ZZN6ImPlot14Demo_PieChartsEvE5data2, i32 noundef 5, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 4.000000e-01, ptr noundef nonnull @.str.148, double noundef 1.800000e+02, i32 noundef %i.h) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @_ZN6ImPlot11PopColormapEi(i32 noundef 1) #20
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui10DragFloat4EPKcPffffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot12PlotPieChartIfEEvPKPKcPKT_idddS2_di(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, double noundef, ptr noundef, double noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot12PlotPieChartIiEEvPKPKcPKT_idddS2_di(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, double noundef, ptr noundef, double noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot13Demo_HeatmapsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImPlotPoint, align 8        ; 4 uses
  %3 = alloca %struct.ImPlotPoint, align 16       ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImPlotPoint, align 8        ; 4 uses
  %7 = alloca %struct.ImPlotPoint, align 16       ; 4 uses
  %8 = alloca %struct.ImPlotPoint, align 16       ; 4 uses
  %9 = alloca %struct.ImPlotPoint, align 8        ; 4 uses
  %i.a = load i32, ptr @_ZZN6ImPlot13Demo_HeatmapsEvE3map, align 4, !tbaa !13
  %i.b = tail call noundef ptr @_ZN6ImPlot15GetColormapNameEi(i32 noundef %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float 2.250000e+02, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.c = load i32, ptr @_ZZN6ImPlot13Demo_HeatmapsEvE3map, align 4, !tbaa !13
  %i.d = call noundef zeroext i1 @_ZN6ImPlot14ColormapButtonEPKcRK6ImVec2i(ptr noundef %i.b, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @_ZZN6ImPlot13Demo_HeatmapsEvE3map, align 4, !tbaa !13
  %i.f = add nsw i32 %i.e, 1
  %i.g = call noundef i32 @_ZN6ImPlot16GetColormapCountEv() #20
  %i.h = srem i32 %i.f, %i.g
  store i32 %i.h, ptr @_ZZN6ImPlot13Demo_HeatmapsEvE3map, align 4, !tbaa !13
  call void @_ZN6ImPlot14BustColorCacheEPKc(ptr noundef nonnull @.str.163) #20
  call void @_ZN6ImPlot14BustColorCacheEPKc(ptr noundef nonnull @.str.164) #20
  br label %bb.c

end_hunk_0
begin_hunk_1_@_ZN6ImPlot19Demo_MarkersAndTextEv:bb.a
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %4, align 16, !tbaa !31
  call void @_ZN6ImPlot18SetNextMarkerStyleEifRK6ImVec4fS2_(i32 noundef 9, float noundef %i.ed, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %i.ee, ptr noundef nonnull align 4 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN6ImPlot8PlotLineIaEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.227, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 1) #20
  call void @_ZN5ImGui5PopIDEv() #20
  %i.ef = load i8, ptr %i.b, align 2, !tbaa !50
  %i.eg = add i8 %i.ef, -1
  store i8 %i.eg, ptr %i.b, align 2, !tbaa !50
  %i.eh = load i8, ptr %i.r, align 1, !tbaa !50
  %i.ei = add i8 %i.eh, -1
  store i8 %i.ei, ptr %i.r, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !31
  call void @_ZN6ImPlot8PlotTextEPKcddRK6ImVec2i(ptr noundef nonnull @.str.228, double noundef 2.500000e+00, double noundef 6.000000e+00, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !31
  call void @_ZN6ImPlot8PlotTextEPKcddRK6ImVec2i(ptr noundef nonnull @.str.229, double noundef 7.500000e+00, double noundef 6.000000e+00, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %7, align 16, !tbaa !31
  call void @_ZN6ImPlot14PushStyleColorEiRK6ImVec4(i32 noundef 12, ptr noundef nonnull align 4 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !31
  call void @_ZN6ImPlot8PlotTextEPKcddRK6ImVec2i(ptr noundef nonnull @.str.230, double noundef 5.000000e+00, double noundef 6.000000e+00, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef 1024) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN6ImPlot13PopStyleColorEi(i32 noundef 1) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

declare void @_ZN6ImPlot8PlotLineIaEEvPKcPKT_S5_iiii(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot8PlotTextEPKcddRK6ImVec2i(ptr noundef, double noundef, double noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14Demo_NaNValuesEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x float], align 16             ; 6 uses
  %i.b = alloca [5 x float], align 16             ; 4 uses
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 16            ; 4 uses
  %2 = alloca %struct.ImVec4, align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, ptr noundef nonnull align 16 dereferenceable(20) @__const._ZN6ImPlot14Demo_NaNValuesEv.data2, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, ptr noundef nonnull align 16 dereferenceable(20) @__const._ZN6ImPlot14Demo_NaNValuesEv.data2, i64 20, i1 false)
  %i.c = load i8, ptr @_ZZN6ImPlot14Demo_NaNValuesEvE11include_nan, align 1, !tbaa !33, !range !34, !noundef !35
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float +qnan, ptr %i.e, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.231, ptr noundef nonnull @_ZZN6ImPlot14Demo_NaNValuesEvE11include_nan) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.232, ptr noundef nonnull @_ZZN6ImPlot14Demo_NaNValuesEvE5flags, i32 noundef 4096) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.h = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.233, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %1, align 16, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %2, align 16, !tbaa !31
  call void @_ZN6ImPlot18SetNextMarkerStyleEifRK6ImVec4fS2_(i32 noundef 1, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.i = load i32, ptr @_ZZN6ImPlot14Demo_NaNValuesEvE5flags, align 4, !tbaa !13
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.234, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 5, i32 noundef %i.i, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot8PlotBarsIfEEvPKcPKT_iddiii(ptr noundef nonnull @.str.235, ptr noundef nonnull %i.a, i32 noundef 5, double noundef 6.700000e-01, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare void @_ZN6ImPlot8PlotBarsIfEEvPKcPKT_iddiii(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot13Demo_LogScaleEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.a = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.236, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.a, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %i.b = trunc nuw nsw i64 %indvars.iv to i32
  %i.c = uitofp nneg i32 %i.b to float
  %i.d = fmul nnan float %i.c, 1.000000e-01
  %i.e = fpext float %i.d to double               ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot13Demo_LogScaleEvE2xs, i64 %indvars.iv
  store double %i.e, ptr %i.f, align 8, !tbaa !15
  %i.g = tail call double @sin(double noundef %i.e) #20
  %i.h = fadd double %i.g, 1.000000e+00
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot13Demo_LogScaleEvE3ys1, i64 %indvars.iv
  store double %i.h, ptr %i.i, align 8, !tbaa !15
  %i.j = tail call double @log(double noundef %i.e) #20
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot13Demo_LogScaleEvE3ys2, i64 %indvars.iv
  store double %i.j, ptr %i.k, align 8, !tbaa !15
  %i.l = tail call double @pow(double noundef 1.000000e+01, double noundef %i.e) #20
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot13Demo_LogScaleEvE3ys3, i64 %indvars.iv
  store double %i.l, ptr %i.m, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1001
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !102

bb.d:                                             ; preds = %bb.b
  call void @_ZN6ImPlot14SetupAxisScaleEii(i32 noundef 0, i32 noundef 2) #20
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 1.000000e-01, double noundef 1.000000e+02, double noundef 0.000000e+00, double noundef 1.000000e+01, i32 noundef 2) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.237, ptr noundef nonnull @_ZZN6ImPlot13Demo_LogScaleEvE2xs, ptr noundef nonnull @_ZZN6ImPlot13Demo_LogScaleEvE2xs, i32 noundef 1001, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.238, ptr noundef nonnull @_ZZN6ImPlot13Demo_LogScaleEvE2xs, ptr noundef nonnull @_ZZN6ImPlot13Demo_LogScaleEvE3ys1, i32 noundef 1001, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.239, ptr noundef nonnull @_ZZN6ImPlot13Demo_LogScaleEvE2xs, ptr noundef nonnull @_ZZN6ImPlot13Demo_LogScaleEvE3ys2, i32 noundef 1001, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.240, ptr noundef nonnull @_ZZN6ImPlot13Demo_LogScaleEvE2xs, ptr noundef nonnull @_ZZN6ImPlot13Demo_LogScaleEvE3ys3, i32 noundef 21, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot22Demo_SymmetricLogScaleEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.a = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.241, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.a, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.b = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.c = uitofp nneg i32 %i.b to float
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float 1.000000e-01, float -5.000000e+01)
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot22Demo_SymmetricLogScaleEvE2xs, i64 %indvars.iv
  store double %i.e, ptr %i.f, align 8, !tbaa !15
  %i.g = tail call double @sin(double noundef %i.e) #20
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot22Demo_SymmetricLogScaleEvE3ys1, i64 %indvars.iv
  store double %i.g, ptr %i.h, align 8, !tbaa !15
  %i.i = uitofp nneg i32 %i.b to double
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double 2.000000e-03, double -1.000000e+00)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot22Demo_SymmetricLogScaleEvE3ys2, i64 %indvars.iv
  store double %i.j, ptr %i.k, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1001
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !103

bb.d:                                             ; preds = %bb.b
  call void @_ZN6ImPlot14SetupAxisScaleEii(i32 noundef 0, i32 noundef 3) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.242, ptr noundef nonnull @_ZZN6ImPlot22Demo_SymmetricLogScaleEvE2xs, ptr noundef nonnull @_ZZN6ImPlot22Demo_SymmetricLogScaleEvE3ys2, i32 noundef 1001, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.243, ptr noundef nonnull @_ZZN6ImPlot22Demo_SymmetricLogScaleEvE2xs, ptr noundef nonnull @_ZZN6ImPlot22Demo_SymmetricLogScaleEvE3ys1, i32 noundef 1001, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14Demo_TimeScaleEv() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImPlotRect, align 8         ; 5 uses
  %3 = alloca %struct.ImPlotRect, align 8         ; 4 uses
  %4 = alloca %struct.ImPlotRect, align 8         ; 4 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %5 = alloca %struct.ImVec4, align 8             ; 5 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.244) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.245) #20
  %i.c = tail call noundef nonnull align 4 dereferenceable(515) ptr @_ZN6ImPlot8GetStyleEv() #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.e = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.246, ptr noundef nonnull %i.d) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.f = tail call noundef nonnull align 4 dereferenceable(515) ptr @_ZN6ImPlot8GetStyleEv() #20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 513
  %i.h = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.247, ptr noundef nonnull %i.g) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.i = tail call noundef nonnull align 4 dereferenceable(515) ptr @_ZN6ImPlot8GetStyleEv() #20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 514
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.248, ptr noundef nonnull %i.j) #20 ; 0 uses
  %i.l = load ptr, ptr @_ZZN6ImPlot14Demo_TimeScaleEvE4data, align 8, !tbaa !105
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !31
  %i.n = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.249, ptr noundef nonnull align 4 dereferenceable(8) %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = load atomic i8, ptr @_ZGVZN6ImPlot14Demo_TimeScaleEvE5sdata acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.f, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot14Demo_TimeScaleEvE5sdata) #20
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN6ImPlot12HugeTimeDataC2Ed(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN6ImPlot14Demo_TimeScaleEvE5sdata, double noundef f0x41D7FB9980000000)
  %i.r = call i32 @__cxa_atexit(ptr nonnull @_ZN6ImPlot12HugeTimeDataD2Ev, ptr nonnull @_ZZN6ImPlot14Demo_TimeScaleEvE5sdata, ptr nonnull @__dso_handle) #20 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6ImPlot14Demo_TimeScaleEvE5sdata) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  store ptr @_ZZN6ImPlot14Demo_TimeScaleEvE5sdata, ptr @_ZZN6ImPlot14Demo_TimeScaleEvE4data, align 8, !tbaa !105
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %1, align 8, !tbaa !31
  %i.s = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.250, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %i.s, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN6ImPlot14SetupAxisScaleEii(i32 noundef 0, i32 noundef 1) #20
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef f0x41D7FB9980000000, double noundef f0x41D873E660000000, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  %i.t = load ptr, ptr @_ZZN6ImPlot14Demo_TimeScaleEvE4data, align 8, !tbaa !105
  %.not13 = icmp eq ptr %i.t, null
  br i1 %.not13, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN6ImPlot13GetPlotLimitsEii(ptr dead_on_unwind nonnull writable sret(%struct.ImPlotRect) align 8 %2, i32 noundef -1, i32 noundef -1) #20
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !106
  %i.w = load double, ptr %2, align 8, !tbaa !52
  %i.x = fsub double %i.v, %i.w
  %i.y = fptosi double %i.x to i32
  %i.z = sdiv i32 %i.y, 1000
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN6ImPlot13GetPlotLimitsEii(ptr dead_on_unwind nonnull writable sret(%struct.ImPlotRect) align 8 %3, i32 noundef -1, i32 noundef -1) #20
  %i.ab = load double, ptr %3, align 8, !tbaa !54
  %i.ac = fadd double %i.ab, f0xC1D7FB9980000000
  %i.ad = fptosi double %i.ac to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ae = call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = call i32 @llvm.umin.i32(i32 %i.ae, i32 31622399) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN6ImPlot13GetPlotLimitsEii(ptr dead_on_unwind nonnull writable sret(%struct.ImPlotRect) align 8 %4, i32 noundef -1, i32 noundef -1) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !55
  %i.ai = fadd double %i.ah, f0xC1D7FB9980000000
  %i.aj = fptosi double %i.ai to i32              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ak = icmp slt i32 %i.aj, -1000
  %i.al = call i32 @llvm.smin.i32(i32 %i.aj, i32 31621399)
  %i.am = add nsw i32 %i.al, 1000
  %i.an = select i1 %i.ak, i32 0, i32 %i.am
  %i.ao = sub nsw i32 %i.an, %i.af
  %i.ap = sdiv i32 %i.ao, %i.aa
  %i.aq = load ptr, ptr @_ZZN6ImPlot14Demo_TimeScaleEvE5sdata, align 8, !tbaa !58
  %i.ar = zext nneg i32 %i.af to i64              ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot14Demo_TimeScaleEvE5sdata, i64 8), align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar
  %i.av = shl nsw i32 %i.aa, 3
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.251, ptr noundef %i.as, ptr noundef %i.au, i32 noundef %i.ap, i32 noundef 0, i32 noundef 0, i32 noundef %i.av) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.aw = call i64 @time(ptr noundef null) #20
  %i.ax = sitofp i64 %i.aw to double              ; 3 uses
  store double %i.ax, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ay = fdiv double %i.ax, 8.640000e+04
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ax, i64 1
  %i.bb = fdiv <2 x double> %i.ba, <double 1.200000e+01, double 3.600000e+03> ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0
  %i.bd = call double @sin(double noundef %i.bc) #20
  %i.be = call double @llvm.fmuladd.f64(double %i.bd, double 2.500000e-01, double 5.000000e-01)
  %i.bf = extractelement <2 x double> %i.bb, i64 1
  %i.bg = call double @sin(double noundef %i.bf) #20
  %i.bh = call noundef double @llvm.fmuladd.f64(double %i.bg, double 5.000000e-03, double %i.be)
  store double %i.bh, ptr %i.b, align 8, !tbaa !15
  call void @_ZN6ImPlot11PlotScatterIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.252, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  %i.bi = load double, ptr %i.a, align 8, !tbaa !15
  %i.bj = load double, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bk = call { <2 x float>, <2 x float> } @_ZN6ImPlot16GetLastItemColorEv() #20 ; 2 uses
  %i.bl = extractvalue { <2 x float>, <2 x float> } %i.bk, 0
  store <2 x float> %i.bl, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %8 = extractvalue { <2 x float>, <2 x float> } %i.bk, 1
  store <2 x float> %8, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <2 x float> splat (float 1.000000e+01), ptr %6, align 8, !tbaa !31
  call void (double, double, ptr, ptr, i1, ptr, ...) @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bPKcz(double noundef %i.bi, double noundef %i.bj, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext false, ptr noundef nonnull @.str.252) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot12HugeTimeDataC2Ed(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(252979200) ptr @_Znam(i64 noundef 252979200) #21 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  %i.b = tail call noalias noundef nonnull dereferenceable(252979200) ptr @_Znam(i64 noundef 252979200) #21 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !59
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = uitofp nneg i32 %i.d to double
  %i.f = fadd double %1, %i.e                     ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store double %i.f, ptr %i.g, align 8, !tbaa !15
  %i.h = fdiv double %i.f, 8.640000e+04
  %i.i = insertelement <2 x double> poison, double %i.h, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.k = fdiv <2 x double> %i.j, <double 1.200000e+01, double 3.600000e+03> ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = tail call double @sin(double noundef %i.l) #20
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double 2.500000e-01, double 5.000000e-01)
  %i.o = extractelement <2 x double> %i.k, i64 1
  %i.p = tail call double @sin(double noundef %i.o) #20
  %i.q = tail call noundef double @llvm.fmuladd.f64(double %i.p, double 5.000000e-03, double %i.n)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store double %i.q, ptr %i.r, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31622400
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !107
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ImPlot12HugeTimeDataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN6ImPlot13GetPlotLimitsEii(ptr dead_on_unwind writable sret(%struct.ImPlotRect) align 8, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot11PlotScatterIdEEvPKcPKT_S5_iiii(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bPKcz(double noundef, double noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #5

declare { <2 x float>, <2 x float> } @_ZN6ImPlot16GetLastItemColorEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot16Demo_CustomScaleEv() local_unnamed_addr #0 {
vector.ph:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  store <4 x float> <float 0.000000e+00, float f0x3C23D70A, float 2.000000e-02, float 3.000000e-02>, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, align 16, !tbaa !31
  store <4 x float> <float 4.000000e-02, float f0x3D4CCCCC, float 6.000000e-02, float 7.000000e-02>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 16), align 16, !tbaa !31
  store <4 x float> <float 8.000000e-02, float f0x3DB851EB, float f0x3DCCCCCC, float 1.100000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 32), align 16, !tbaa !31
  store <4 x float> <float 1.200000e-01, float 1.300000e-01, float 1.400000e-01, float f0x3E199999>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 48), align 16, !tbaa !31
  store <4 x float> <float 1.600000e-01, float 1.700000e-01, float f0x3E3851EB, float 1.900000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 64), align 16, !tbaa !31
  store <4 x float> <float f0x3E4CCCCC, float 2.100000e-01, float 2.200000e-01, float f0x3E6B851E>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 80), align 16, !tbaa !31
  store <4 x float> <float 2.400000e-01, float 2.500000e-01, float 2.600000e-01, float f0x3E8A3D70>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 96), align 16, !tbaa !31
  store <4 x float> <float 2.800000e-01, float 2.900000e-01, float f0x3E999999, float 3.100000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 112), align 16, !tbaa !31
  store <4 x float> <float 3.200000e-01, float f0x3EA8F5C2, float 3.400000e-01, float 3.500000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 128), align 16, !tbaa !31
  store <4 x float> <float f0x3EB851EB, float 3.700000e-01, float 3.800000e-01, float 3.900000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 144), align 16, !tbaa !31
  store <4 x float> <float f0x3ECCCCCC, float 4.100000e-01, float 4.200000e-01, float f0x3EDC28F5>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 160), align 16, !tbaa !31
  store <4 x float> <float 4.400000e-01, float 4.500000e-01, float f0x3EEB851E, float 4.700000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 176), align 16, !tbaa !31
  store <4 x float> <float 4.800000e-01, float f0x3EFAE147, float 5.000000e-01, float 5.100000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 192), align 16, !tbaa !31
  store <4 x float> <float 5.200000e-01, float 5.300000e-01, float f0x3F0A3D70, float 5.500000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 208), align 16, !tbaa !31
  store <4 x float> <float 5.600000e-01, float 5.700000e-01, float 5.800000e-01, float 5.900000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 224), align 16, !tbaa !31
  store <4 x float> <float f0x3F199999, float 6.100000e-01, float 6.200000e-01, float 6.300000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 240), align 16, !tbaa !31
  store <4 x float> <float 6.400000e-01, float 6.500000e-01, float f0x3F28F5C2, float f0x3F2B851E>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 256), align 16, !tbaa !31
  store <4 x float> <float 6.800000e-01, float f0x3F30A3D7, float f0x3F333333, float f0x3F35C28F>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 272), align 16, !tbaa !31
  store <4 x float> <float f0x3F3851EB, float f0x3F3AE147, float 7.400000e-01, float 7.500000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 288), align 16, !tbaa !31
  store <4 x float> <float 7.600000e-01, float f0x3F451EB8, float 7.800000e-01, float f0x3F4A3D70>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 304), align 16, !tbaa !31
  store <4 x float> <float f0x3F4CCCCC, float 8.100000e-01, float f0x3F51EB85, float f0x3F547AE1>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 320), align 16, !tbaa !31
  store <4 x float> <float f0x3F570A3D, float f0x3F599999, float f0x3F5C28F5, float 8.700000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 336), align 16, !tbaa !31
  store <4 x float> <float f0x3F6147AE, float f0x3F63D70A, float f0x3F666666, float f0x3F68F5C2>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 352), align 16, !tbaa !31
  store <4 x float> <float f0x3F6B851E, float 9.300000e-01, float f0x3F70A3D7, float f0x3F733333>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 368), align 16, !tbaa !31
  store float f0x3F75C28F, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 384), align 16, !tbaa !31
  store float f0x3F7851EB, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 388), align 4, !tbaa !31
  store float f0x3F7AE147, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 392), align 8, !tbaa !31
  store float f0x3F7D70A3, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i64 396), align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.a = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.174, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.a, label %bb.a, label %bb.b

bb.a:                                             ; preds = %vector.ph
  call void @_ZN6ImPlot9SetupAxisEiPKci(i32 noundef 0, ptr noundef nonnull @.str.253, i32 noundef 0) #20
  call void @_ZN6ImPlot9SetupAxisEiPKci(i32 noundef 3, ptr noundef nonnull @.str.174, i32 noundef 0) #20
  call void @_ZN6ImPlot14SetupAxisScaleEiPFddPvES2_S0_(i32 noundef 3, ptr noundef nonnull @_ZN6ImPlotL21TransformForward_SqrtEdPv, ptr noundef nonnull @_ZN6ImPlotL21TransformInverse_SqrtEdPv, ptr noundef null) #20
  call void @_ZN6ImPlot26SetupAxisLimitsConstraintsEidd(i32 noundef 3, double noundef 0.000000e+00, double noundef +inf) #20
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.254, ptr noundef nonnull @_ZZN6ImPlot16Demo_CustomScaleEvE1v, ptr noundef nonnull @_ZZN6ImPlot16Demo_CustomScaleEvE1v, i32 noundef 100, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %vector.ph
  ret void
}

declare void @_ZN6ImPlot9SetupAxisEiPKci(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot14SetupAxisScaleEiPFddPvES2_S0_(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef double @_ZN6ImPlotL21TransformForward_SqrtEdPv(double noundef %0, ptr nofree readnone captures(none) %1) #11 {
bb.a:
  %i.a = tail call double @sqrt(double noundef %0) #20
  ret double %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @_ZN6ImPlotL21TransformInverse_SqrtEdPv(double noundef %0, ptr nofree readnone captures(none) %1) #12 {
bb.a:
  %i.a = fmul double %0, %0
  ret double %i.a
}

declare void @_ZN6ImPlot26SetupAxisLimitsConstraintsEidd(i32 noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot17Demo_MultipleAxesEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.255, ptr noundef nonnull @_ZZN6ImPlot17Demo_MultipleAxesEvE7x2_axis) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.256, ptr noundef nonnull @_ZZN6ImPlot17Demo_MultipleAxesEvE7y2_axis) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.257, ptr noundef nonnull @_ZZN6ImPlot17Demo_MultipleAxesEvE7y3_axis) #20 ; 0 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.258) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.259) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.d = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.260, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.d, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 7 uses
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = uitofp nneg i32 %i.e to float
  %i.g = fmul nnan float %i.f, 1.000000e-01       ; 5 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot17Demo_MultipleAxesEvE2xs, i64 %indvars.iv
  store float %i.g, ptr %i.h, align 4, !tbaa !31
  %i.i = fadd float %i.g, 1.000000e+01
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot17Demo_MultipleAxesEvE3xs2, i64 %indvars.iv
  store float %i.i, ptr %i.j, align 4, !tbaa !31
  %i.k = tail call float @sinf(float noundef %i.g) #20
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float 3.000000e+00, float 1.000000e+00)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot17Demo_MultipleAxesEvE3ys1, i64 %indvars.iv
  store float %i.l, ptr %i.m, align 4, !tbaa !31
  %i.n = tail call float @cosf(float noundef %i.g) #20
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot17Demo_MultipleAxesEvE3ys2, i64 %indvars.iv
  %i.p = fadd float %i.g, 5.000000e-01
  %i.q = tail call float @sinf(float noundef %i.p) #20
  %i.r = insertelement <2 x float> poison, float %i.n, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> <float 2.000000e-01, float 1.000000e+02>, <2 x float> <float 5.000000e-01, float 2.000000e+02>) ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  store float %i.u, ptr %i.o, align 4, !tbaa !31
end_hunk_1
begin_hunk_2_@_ZN6ImPlot20Demo_AxisConstraintsEv:bb.a
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui10DragFloat2EPKcPffffS1_i(ptr noundef nonnull @.str.272, ptr noundef nonnull @_ZZN6ImPlot20Demo_AxisConstraintsEvE11constraints, float noundef f0x3C23D70A, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.33, i32 noundef 0) #20 ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui10DragFloat2EPKcPffffS1_i(ptr noundef nonnull @.str.273, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_AxisConstraintsEvE11constraints, i64 8), float noundef f0x3C23D70A, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.33, i32 noundef 0) #20 ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.274, ptr noundef nonnull @_ZZN6ImPlot20Demo_AxisConstraintsEvE5flags, i32 noundef 8192) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.d = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.275, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @_ZZN6ImPlot20Demo_AxisConstraintsEvE5flags, align 4, !tbaa !13 ; 2 uses
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.277, i32 noundef %i.e, i32 noundef %i.e) #20
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef -1.000000e+00, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  %i.f = load float, ptr @_ZZN6ImPlot20Demo_AxisConstraintsEvE11constraints, align 16, !tbaa !31
  %i.g = fpext float %i.f to double
  %i.h = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_AxisConstraintsEvE11constraints, i64 4), align 4, !tbaa !31
  %i.i = fpext float %i.h to double
  call void @_ZN6ImPlot26SetupAxisLimitsConstraintsEidd(i32 noundef 0, double noundef %i.g, double noundef %i.i) #20
  %i.j = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_AxisConstraintsEvE11constraints, i64 8), align 8, !tbaa !31
  %i.k = fpext float %i.j to double
  %i.l = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_AxisConstraintsEvE11constraints, i64 12), align 4, !tbaa !31
  %i.m = fpext float %i.l to double
  call void @_ZN6ImPlot24SetupAxisZoomConstraintsEidd(i32 noundef 0, double noundef %i.k, double noundef %i.m) #20
  %i.n = load float, ptr @_ZZN6ImPlot20Demo_AxisConstraintsEvE11constraints, align 16, !tbaa !31
  %i.o = fpext float %i.n to double
  %i.p = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_AxisConstraintsEvE11constraints, i64 4), align 4, !tbaa !31
  %i.q = fpext float %i.p to double
  call void @_ZN6ImPlot26SetupAxisLimitsConstraintsEidd(i32 noundef 3, double noundef %i.o, double noundef %i.q) #20
  %i.r = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_AxisConstraintsEvE11constraints, i64 8), align 8, !tbaa !31
  %i.s = fpext float %i.r to double
  %i.t = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_AxisConstraintsEvE11constraints, i64 12), align 4, !tbaa !31
  %i.u = fpext float %i.t to double
  call void @_ZN6ImPlot24SetupAxisZoomConstraintsEidd(i32 noundef 3, double noundef %i.s, double noundef %i.u) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6ImPlot24SetupAxisZoomConstraintsEidd(i32 noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14Demo_EqualAxesEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x float], align 16             ; 4 uses
  %i.b = alloca [5 x float], align 16             ; 4 uses
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.278) #20
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, ptr noundef nonnull align 16 dereferenceable(20) @__const._ZN6ImPlot14Demo_EqualAxesEv.xs2, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, ptr noundef nonnull align 16 dereferenceable(20) @__const._ZN6ImPlot14Demo_EqualAxesEv.ys2, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.c = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.279, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 128) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.c ] ; 5 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.e = uitofp nneg i32 %i.d to double
  %i.f = fmul nnan double %i.e, f0x400921FB54442D18
  %i.g = fdiv double %i.f, 3.590000e+02           ; 2 uses
  %i.h = tail call double @cos(double noundef %i.g) #20
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot14Demo_EqualAxesEvE3xs1, i64 %indvars.iv
  store double %i.h, ptr %i.i, align 16, !tbaa !15
  %i.j = tail call double @sin(double noundef %i.g) #20
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot14Demo_EqualAxesEvE3ys1, i64 %indvars.iv
  store double %i.j, ptr %i.k, align 16, !tbaa !15
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %indvars.iv.tr.1 = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.l = shl nuw nsw i32 %indvars.iv.tr.1, 1
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = fmul nnan double %i.m, f0x400921FB54442D18
  %i.o = fdiv double %i.n, 3.590000e+02           ; 2 uses
  %i.p = tail call double @cos(double noundef %i.o) #20
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot14Demo_EqualAxesEvE3xs1, i64 %indvars.iv.next
  store double %i.p, ptr %i.q, align 8, !tbaa !15
  %i.r = tail call double @sin(double noundef %i.o) #20
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot14Demo_EqualAxesEvE3ys1, i64 %indvars.iv.next
  store double %i.r, ptr %i.s, align 8, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 360
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !109

bb.d:                                             ; preds = %bb.b
  call void @_ZN6ImPlot9SetupAxisEiPKci(i32 noundef 1, ptr noundef null, i32 noundef 258) #20
  call void @_ZN6ImPlot9SetupAxisEiPKci(i32 noundef 4, ptr noundef null, i32 noundef 258) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.280, ptr noundef nonnull @_ZZN6ImPlot14Demo_EqualAxesEvE3xs1, ptr noundef nonnull @_ZZN6ImPlot14Demo_EqualAxesEvE3ys1, i32 noundef 360, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot7SetAxesEii(i32 noundef 1, i32 noundef 4) #20
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.281, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot20Demo_AutoFittingDataEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.282) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.283) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.284) #20
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.285, ptr noundef null) #20
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.286, ptr noundef nonnull @_ZZN6ImPlot20Demo_AutoFittingDataEvE6xflags, i32 noundef 2048) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.287, ptr noundef nonnull @_ZZN6ImPlot20Demo_AutoFittingDataEvE6xflags, i32 noundef 4096) #20 ; 0 uses
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.288, ptr noundef null) #20
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.289, ptr noundef nonnull @_ZZN6ImPlot20Demo_AutoFittingDataEvE6yflags, i32 noundef 2048) #20 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.290, ptr noundef nonnull @_ZZN6ImPlot20Demo_AutoFittingDataEvE6yflags, i32 noundef 4096) #20 ; 0 uses
  tail call void @srand(i32 noundef 0) #20
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.e = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.291, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.e, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.d ] ; 5 uses
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  %i.g = uitofp nneg i32 %i.f to float
  %i.h = fdiv float %i.g, 1.000000e+01
  %i.i = tail call noundef float @sinf(float noundef %i.h) #20
  %i.j = fadd float %i.i, 1.000000e+00
  %i.k = fpext float %i.j to double
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_AutoFittingDataEvE4data, i64 %indvars.iv
  store double %i.k, ptr %i.l, align 16, !tbaa !15
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.n = uitofp nneg i32 %i.m to float
  %i.o = fdiv float %i.n, 1.000000e+01
  %i.p = tail call noundef float @sinf(float noundef %i.o) #20
  %i.q = fadd float %i.p, 1.000000e+00
  %i.r = fpext float %i.q to double
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_AutoFittingDataEvE4data, i64 %indvars.iv.next
  store double %i.r, ptr %i.s, align 8, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.t = load i32, ptr @_ZZN6ImPlot20Demo_AutoFittingDataEvE6xflags, align 4, !tbaa !13
  %i.u = load i32, ptr @_ZZN6ImPlot20Demo_AutoFittingDataEvE6yflags, align 4, !tbaa !13
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.277, i32 noundef %i.t, i32 noundef %i.u) #20
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_iddiii(ptr noundef nonnull @.str.126, ptr noundef nonnull @_ZZN6ImPlot20Demo_AutoFittingDataEvE4data, i32 noundef 101, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot9PlotStemsIdEEvPKcPKT_idddiii(ptr noundef nonnull @.str.292, ptr noundef nonnull @_ZZN6ImPlot20Demo_AutoFittingDataEvE4data, i32 noundef 101, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

declare void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_iddiii(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot9PlotStemsIdEEvPKcPKT_idddiii(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local { double, double } @_ZN6ImPlot14SinewaveGetterEiPv(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !31
  %i.b = sitofp i32 %0 to double
  %i.c = sitofp i32 %0 to float
  %i.d = fmul float %i.a, %i.c
  %i.e = tail call float @sinf(float noundef %i.d) #20
  %i.f = fpext float %i.e to double
  %.fca.0.insert = insertvalue { double, double } poison, double %i.b, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.f, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot19Demo_SubplotsSizingEv() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.ImVec4, align 16            ; 4 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %3 = alloca %struct.ImVec4, align 8             ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.293, ptr noundef nonnull @_ZZN6ImPlot19Demo_SubplotsSizingEvE5flags, i32 noundef 8) #20 ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.294, ptr noundef nonnull @_ZZN6ImPlot19Demo_SubplotsSizingEvE5flags, i32 noundef 1) #20 ; 0 uses
  %i.e = tail call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.295, ptr noundef nonnull @_ZZN6ImPlot19Demo_SubplotsSizingEvE4rows, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @.str.92, i32 noundef 0) #20 ; 0 uses
  %i.f = tail call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.296, ptr noundef nonnull @_ZZN6ImPlot19Demo_SubplotsSizingEvE4cols, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @.str.92, i32 noundef 0) #20 ; 0 uses
  %i.g = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE4rows, align 4, !tbaa !13 ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  %i.i = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE4cols, align 4
  %i.j = icmp slt i32 %i.i, 1
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %0, align 16, !tbaa !31
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull @.str.297) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui11DragScalarNEPKciPvifPKvS4_S1_i(ptr noundef nonnull @.str.298, i32 noundef 8, ptr noundef nonnull @_ZZN6ImPlot19Demo_SubplotsSizingEvE7rratios, i32 noundef %i.g, float noundef f0x3C23D70A, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  %i.l = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE4cols, align 4, !tbaa !13
  %i.m = tail call noundef zeroext i1 @_ZN5ImGui11DragScalarNEPKciPvifPKvS4_S1_i(ptr noundef nonnull @.str.299, i32 noundef 8, ptr noundef nonnull @_ZZN6ImPlot19Demo_SubplotsSizingEvE7cratios, i32 noundef %i.l, float noundef f0x3C23D70A, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  %i.n = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE4rows, align 4, !tbaa !13
  %i.o = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE4cols, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <2 x float> <float -1.000000e+00, float 4.000000e+02>, ptr %1, align 8, !tbaa !31
  %i.p = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE5flags, align 4, !tbaa !13
  %i.q = call noundef zeroext i1 @_ZN6ImPlot13BeginSubplotsEPKciiRK6ImVec2iPfS5_(ptr noundef nonnull @.str.300, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %i.p, ptr noundef nonnull @_ZZN6ImPlot19Demo_SubplotsSizingEvE7rratios, ptr noundef nonnull @_ZZN6ImPlot19Demo_SubplotsSizingEvE7cratios) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %i.q, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.c
  %i.r = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE4rows, align 4, !tbaa !13
  %i.s = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE4cols, align 4, !tbaa !13
  %i.t = mul nsw i32 %i.s, %i.r
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.h, %.preheader
  call void @_ZN6ImPlot11EndSubplotsEv() #20
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.09 = phi i32 [ 0, %.lr.ph ], [ %.pre-phi, %bb.h ] ; 3 uses
  %.068 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !31
  %i.v = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.301, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef 2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.v, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.d
  %.pre = add nuw nsw i32 %.09, 1
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef null, ptr noundef null, i32 noundef 15, i32 noundef 15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.w = add nuw nsw i32 %.09, 1                  ; 2 uses
  %i.x = uitofp nneg i32 %i.w to float
  %i.y = fmul nnan float %i.x, f0x3C23D70A
  store float %i.y, ptr %i.a, align 4, !tbaa !31
  %i.z = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE4rows, align 4, !tbaa !13
  %i.aa = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE4cols, align 4, !tbaa !13
  %i.ab = mul nsw i32 %i.aa, %i.z                 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ad = uitofp nneg i32 %.09 to float
  %i.ae = add nsw i32 %i.ab, -1
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = fdiv float %i.ad, %i.af
  %i.ah = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.ag, i32 noundef 9) #20 ; 2 uses
  %i.ai = extractvalue { <2 x float>, <2 x float> } %i.ah, 0
  store <2 x float> %i.ai, ptr %3, align 8
  %5 = extractvalue { <2 x float>, <2 x float> } %i.ah, 1
  store <2 x float> %5, ptr %4, align 8
  call void @_ZN6ImPlot16SetNextLineStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef -1.000000e+00) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.aj = add nsw i32 %.068, 1
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 16, ptr noundef nonnull @.str.302, i32 noundef %.068) #20 ; 0 uses
  call void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN6ImPlot14SinewaveGetterEiPv, ptr noundef nonnull %i.a, i32 noundef 1000, i32 noundef 0) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge11, %bb.g
  %.pre-phi = phi i32 [ %.pre, %._crit_edge11 ], [ %i.w, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %.068, %._crit_edge11 ], [ %i.aj, %bb.g ]
  %i.al = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE4rows, align 4, !tbaa !13
  %i.am = load i32, ptr @_ZZN6ImPlot19Demo_SubplotsSizingEvE4cols, align 4, !tbaa !13
  %i.an = mul nsw i32 %i.am, %i.al
  %i.ao = icmp slt i32 %.pre-phi, %i.an
  br i1 %i.ao, label %bb.d, label %._crit_edge, !llvm.loop !110

bb.i:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  ret void
}

declare void @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6ImPlot13BeginSubplotsEPKciiRK6ImVec2iPfS5_(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot16SetNextLineStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16), float noundef) local_unnamed_addr #5

declare { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot11EndSubplotsEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot23Demo_SubplotItemSharingEv() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca [8 x i8], align 1                 ; 36 uses
  %i.c = alloca float, align 4                    ; 24 uses
  %2 = alloca %struct.ImVec4, align 8             ; 25 uses
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.303, ptr noundef nonnull @_ZZN6ImPlot23Demo_SubplotItemSharingEvE5flags, i32 noundef 32) #20 ; 0 uses
  %i.e = tail call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef nonnull @.str.304, ptr noundef nonnull @_ZZN6ImPlot23Demo_SubplotItemSharingEvE5flags, i32 noundef 1024) #20 ; 0 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.305) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 4.000000e+02>, ptr %0, align 8, !tbaa !31
  %i.f = load i32, ptr @_ZZN6ImPlot23Demo_SubplotItemSharingEvE5flags, align 4, !tbaa !13
  %i.g = call noundef zeroext i1 @_ZN6ImPlot13BeginSubplotsEPKciiRK6ImVec2iPfS5_(ptr noundef nonnull @.str.306, i32 noundef 2, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %i.f, ptr noundef null, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.g, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot11SetupLegendEii(i32 noundef 2, i32 noundef 96) #20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.ah
  call void @_ZN6ImPlot11EndSubplotsEv() #20
  br label %bb.ai

bb.d:                                             ; preds = %bb.b, %bb.ah
  %.01013 = phi i32 [ 0, %bb.b ], [ %i.bk, %bb.ah ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %1, align 8, !tbaa !31
  %i.i = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.301, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %i.i, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store float f0x3C23D70A, ptr %i.a, align 4, !tbaa !31
  call void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef nonnull @.str.307, ptr noundef nonnull @_ZN6ImPlot14SinewaveGetterEiPv, ptr noundef nonnull %i.a, i32 noundef 1000, i32 noundef 0) #20
  %i.j = load i32, ptr @_ZZN6ImPlot23Demo_SubplotItemSharingEvE2id, align 16, !tbaa !13
  %i.k = icmp eq i32 %i.j, %.01013
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store float 2.000000e-02, ptr %i.c, align 4, !tbaa !31
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 8, ptr noundef nonnull @.str.302, i32 noundef 0) #20 ; 0 uses
  call void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN6ImPlot14SinewaveGetterEiPv, ptr noundef nonnull %i.c, i32 noundef 1000, i32 noundef 0) #20
  %i.m = call noundef zeroext i1 @_ZN6ImPlot23BeginDragDropSourceItemEPKci(ptr noundef nonnull %i.b, i32 noundef 0) #20
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr @_ZZN6ImPlot23Demo_SubplotItemSharingEvE4curj, align 4, !tbaa !13
  %i.n = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.308, ptr noundef null, i64 noundef 0, i32 noundef 0) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = call { <2 x float>, <2 x float> } @_ZN6ImPlot16GetLastItemColorEv() #20 ; 2 uses
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.o, 0
  store <2 x float> %i.p, ptr %2, align 8
  %i.q = extractvalue { <2 x float>, <2 x float> } %i.o, 1
  store <2 x float> %i.q, ptr %i.h, align 8
  call void @_ZN6ImPlot8ItemIconERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.b, ptr noundef null) #20
  call void @_ZN6ImPlot17EndDragDropSourceEv() #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot23Demo_SubplotItemSharingEvE2id, i64 4), align 4, !tbaa !13
  %i.s = icmp eq i32 %i.r, %.01013
  br i1 %i.s, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store float 3.000000e-02, ptr %i.c, align 4, !tbaa !31
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 8, ptr noundef nonnull @.str.302, i32 noundef 1) #20 ; 0 uses
  call void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN6ImPlot14SinewaveGetterEiPv, ptr noundef nonnull %i.c, i32 noundef 1000, i32 noundef 0) #20
  %i.u = call noundef zeroext i1 @_ZN6ImPlot23BeginDragDropSourceItemEPKci(ptr noundef nonnull %i.b, i32 noundef 0) #20
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr @_ZZN6ImPlot23Demo_SubplotItemSharingEvE4curj, align 4, !tbaa !13
  %i.v = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.308, ptr noundef null, i64 noundef 0, i32 noundef 0) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.w = call { <2 x float>, <2 x float> } @_ZN6ImPlot16GetLastItemColorEv() #20 ; 2 uses
  %i.x = extractvalue { <2 x float>, <2 x float> } %i.w, 0
  store <2 x float> %i.x, ptr %2, align 8
  %i.y = extractvalue { <2 x float>, <2 x float> } %i.w, 1
  store <2 x float> %i.y, ptr %i.h, align 8
  call void @_ZN6ImPlot8ItemIconERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.b, ptr noundef null) #20
  call void @_ZN6ImPlot17EndDragDropSourceEv() #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot23Demo_SubplotItemSharingEvE2id, i64 8), align 8, !tbaa !13
  %i.aa = icmp eq i32 %i.z, %.01013
  br i1 %i.aa, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store float 4.000000e-02, ptr %i.c, align 4, !tbaa !31
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 8, ptr noundef nonnull @.str.302, i32 noundef 2) #20 ; 0 uses
  call void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN6ImPlot14SinewaveGetterEiPv, ptr noundef nonnull %i.c, i32 noundef 1000, i32 noundef 0) #20
  %i.ac = call noundef zeroext i1 @_ZN6ImPlot23BeginDragDropSourceItemEPKci(ptr noundef nonnull %i.b, i32 noundef 0) #20
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr @_ZZN6ImPlot23Demo_SubplotItemSharingEvE4curj, align 4, !tbaa !13
  %i.ad = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.308, ptr noundef null, i64 noundef 0, i32 noundef 0) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ae = call { <2 x float>, <2 x float> } @_ZN6ImPlot16GetLastItemColorEv() #20 ; 2 uses
  %i.af = extractvalue { <2 x float>, <2 x float> } %i.ae, 0
  store <2 x float> %i.af, ptr %2, align 8
  %i.ag = extractvalue { <2 x float>, <2 x float> } %i.ae, 1
  store <2 x float> %i.ag, ptr %i.h, align 8
  call void @_ZN6ImPlot8ItemIconERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.b, ptr noundef null) #20
  call void @_ZN6ImPlot17EndDragDropSourceEv() #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot23Demo_SubplotItemSharingEvE2id, i64 12), align 4, !tbaa !13
  %i.ai = icmp eq i32 %i.ah, %.01013
  br i1 %i.ai, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store float f0x3D4CCCCC, ptr %i.c, align 4, !tbaa !31
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 8, ptr noundef nonnull @.str.302, i32 noundef 3) #20 ; 0 uses
  call void @_ZN6ImPlot9PlotLineGEPKcPF11ImPlotPointiPvES3_ii(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN6ImPlot14SinewaveGetterEiPv, ptr noundef nonnull %i.c, i32 noundef 1000, i32 noundef 0) #20
  %i.ak = call noundef zeroext i1 @_ZN6ImPlot23BeginDragDropSourceItemEPKci(ptr noundef nonnull %i.b, i32 noundef 0) #20
  br i1 %i.ak, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 3, ptr @_ZZN6ImPlot23Demo_SubplotItemSharingEvE4curj, align 4, !tbaa !13
  %i.al = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.308, ptr noundef null, i64 noundef 0, i32 noundef 0) #20 ; 0 uses
end_hunk_2
begin_hunk_3_@_ZN6ImPlot13Demo_QueryingEv:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dy, ptr nonnull align 8 %i.dz, i64 %i.ec, i1 false)
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot13Demo_QueryingEvE5rects, i64 8), align 8, !tbaa !74
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ed) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNK8ImVectorI10ImPlotRectE14_grow_capacityEi.exit.i
  store ptr %i.dy, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot13Demo_QueryingEvE5rects, i64 8), align 8, !tbaa !74
  store i32 %i.dv, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot13Demo_QueryingEvE5rects, i64 4), align 4, !tbaa !128
  %.pre3.i24 = load i32, ptr @_ZZN6ImPlot13Demo_QueryingEvE5rects, align 8, !tbaa !124
  br label %_ZN8ImVectorI10ImPlotRectE9push_backERKS0_.exit

_ZN8ImVectorI10ImPlotRectE9push_backERKS0_.exit:  ; preds = %._ZN8ImVectorI10ImPlotRectE7reserveEi.exit_crit_edge.i, %bb.ah
  %i.ee = phi i32 [ %i.do, %._ZN8ImVectorI10ImPlotRectE7reserveEi.exit_crit_edge.i ], [ %.pre3.i24, %bb.ah ] ; 2 uses
  %i.ef = phi ptr [ %.pre.i21, %._ZN8ImVectorI10ImPlotRectE7reserveEi.exit_crit_edge.i ], [ %i.dy, %bb.ah ]
  %i.eg = sext i32 %i.ee to i64
  %i.eh = getelementptr inbounds [32 x i8], ptr %i.ef, i64 %i.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN6ImPlot13Demo_QueryingEvE6select, i64 32, i1 false)
  %i.ei = add nsw i32 %i.ee, 1
  store i32 %i.ei, ptr @_ZZN6ImPlot13Demo_QueryingEvE5rects, align 8, !tbaa !124
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN8ImVectorI10ImPlotRectE9push_backERKS0_.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.x
  %i.ej = load i32, ptr @_ZZN6ImPlot13Demo_QueryingEvE5rects, align 8, !tbaa !124
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aj
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.ak

._crit_edge:                                      ; preds = %bb.ao, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @_ZN6ImPlot13GetPlotLimitsEii(ptr dead_on_unwind nonnull writable sret(%struct.ImPlotRect) align 8 %10, i32 noundef -1, i32 noundef -1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.ap

bb.ak:                                            ; preds = %.lr.ph, %bb.ao
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ao ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot13Demo_QueryingEvE5rects, i64 8), align 8, !tbaa !74 ; 3 uses
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %indvars.iv ; 4 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !54 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !55 ; 3 uses
  %i.er = fcmp olt double %i.eo, %i.eq            ; 2 uses
  %..i25 = select i1 %i.er, double %i.eo, double %i.eq
  %i.es = select i1 %i.er, double %i.eq, double %i.eo
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eu = load double, ptr %i.et, align 8, !tbaa !65 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !66 ; 3 uses
  %i.ex = fcmp olt double %i.eu, %i.ew            ; 2 uses
  %i.ey = select i1 %i.ex, double %i.eu, double %i.ew
  %i.ez = select i1 %i.ex, double %i.ew, double %i.eu
  %i.fa = load i32, ptr @_ZZN6ImPlot13Demo_QueryingEvE4data, align 8, !tbaa !69 ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i32, label %.critedge73

.lr.ph.i32:                                       ; preds = %bb.ak
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot13Demo_QueryingEvE4data, i64 8), align 8, !tbaa !70
  %i.fd = zext nneg i32 %i.fa to i64
  br label %bb.al

bb.al:                                            ; preds = %_ZNK10ImPlotRect8ContainsEdd.exit.thread.i36, %.lr.ph.i32
  %.046 = phi i32 [ 0, %.lr.ph.i32 ], [ %.1, %_ZNK10ImPlotRect8ContainsEdd.exit.thread.i36 ] ; 2 uses
  %i.fe = phi i32 [ 0, %.lr.ph.i32 ], [ %i.fs, %_ZNK10ImPlotRect8ContainsEdd.exit.thread.i36 ] ; 3 uses
  %indvars.iv.i33 = phi i64 [ 0, %.lr.ph.i32 ], [ %indvars.iv.next.i39, %_ZNK10ImPlotRect8ContainsEdd.exit.thread.i36 ] ; 2 uses
  %i.ff = phi <2 x double> [ zeroinitializer, %.lr.ph.i32 ], [ %i.ft, %_ZNK10ImPlotRect8ContainsEdd.exit.thread.i36 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %indvars.iv.i33
  %i.fh = load <2 x double>, ptr %i.fg, align 8, !tbaa !15 ; 3 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 0 ; 2 uses
  %i.fj = fcmp oge double %i.fi, %..i25
  %i.fk = fcmp ole double %i.fi, %i.es
  %i.fl = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %i.fl, label %_ZNK10ImPlotRect8ContainsEdd.exit.i40, label %_ZNK10ImPlotRect8ContainsEdd.exit.thread.i36

_ZNK10ImPlotRect8ContainsEdd.exit.i40:            ; preds = %bb.al
  %i.fm = extractelement <2 x double> %i.fh, i64 1 ; 2 uses
  %i.fn = fcmp oge double %i.fm, %i.ey
  %i.fo = fcmp ole double %i.fm, %i.ez
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %bb.am, label %_ZNK10ImPlotRect8ContainsEdd.exit.thread.i36

bb.am:                                            ; preds = %_ZNK10ImPlotRect8ContainsEdd.exit.i40
  %i.fq = fadd <2 x double> %i.ff, %i.fh
  %i.fr = add nsw i32 %i.fe, 1                    ; 2 uses
  br label %_ZNK10ImPlotRect8ContainsEdd.exit.thread.i36

_ZNK10ImPlotRect8ContainsEdd.exit.thread.i36:     ; preds = %bb.am, %_ZNK10ImPlotRect8ContainsEdd.exit.i40, %bb.al
  %.1 = phi i32 [ %i.fr, %bb.am ], [ %.046, %_ZNK10ImPlotRect8ContainsEdd.exit.i40 ], [ %.046, %bb.al ] ; 2 uses
  %i.fs = phi i32 [ %i.fr, %bb.am ], [ %i.fe, %_ZNK10ImPlotRect8ContainsEdd.exit.i40 ], [ %i.fe, %bb.al ] ; 3 uses
  %i.ft = phi <2 x double> [ %i.fq, %bb.am ], [ %i.ff, %_ZNK10ImPlotRect8ContainsEdd.exit.i40 ], [ %i.ff, %bb.al ] ; 3 uses
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next.i39, %i.fd
  br i1 %exitcond55.not, label %_ZN6ImPlot12FindCentroidERK8ImVectorI11ImPlotPointERK10ImPlotRectRi.exit42.loopexit, label %bb.al, !llvm.loop !0

_ZN6ImPlot12FindCentroidERK8ImVectorI11ImPlotPointERK10ImPlotRectRi.exit42.loopexit: ; preds = %_ZNK10ImPlotRect8ContainsEdd.exit.thread.i36
  %i.fu = icmp sgt i32 %.1, 0
  %i.fv = icmp sgt i32 %i.fs, 0
  %i.fw = uitofp nneg i32 %i.fs to double
  %i.fx = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = fdiv <2 x double> %i.ft, %i.fy
  %i.ga = insertelement <2 x i1> poison, i1 %i.fv, i64 0
  %i.gb = shufflevector <2 x i1> %i.ga, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.gc = select <2 x i1> %i.gb, <2 x double> %i.fz, <2 x double> %i.ft
  store <2 x double> %i.gc, ptr %6, align 16
  br i1 %i.fu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN6ImPlot12FindCentroidERK8ImVectorI11ImPlotPointERK10ImPlotRectRi.exit42.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %7, align 16, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %8, align 16, !tbaa !31
  call void @_ZN6ImPlot18SetNextMarkerStyleEifRK6ImVec4fS2_(i32 noundef 1, float noundef 6.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN6ImPlot11PlotScatterIdEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.356, ptr noundef nonnull %6, ptr noundef nonnull %i.el, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 8) #20
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot13Demo_QueryingEvE5rects, i64 8), align 8, !tbaa !74
  br label %bb.ao

.critedge73:                                      ; preds = %bb.ak
  store <2 x double> zeroinitializer, ptr %6, align 16
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge73, %bb.an, %_ZN6ImPlot12FindCentroidERK8ImVectorI11ImPlotPointERK10ImPlotRectRi.exit42.loopexit
  %i.gd = phi ptr [ %.pre, %bb.an ], [ %i.em, %_ZN6ImPlot12FindCentroidERK8ImVectorI11ImPlotPointERK10ImPlotRectRi.exit42.loopexit ], [ %i.em, %.critedge73 ]
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %indvars.iv ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %9, align 16, !tbaa !31
  %i.gi = trunc nuw nsw i64 %indvars.iv to i32
  %i.gj = call noundef zeroext i1 @_ZN6ImPlot8DragRectEiPdS0_S0_S0_RK6ImVec4iPbS4_S4_(i32 noundef %i.gi, ptr noundef nonnull %i.ge, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gh, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gk = load i32, ptr @_ZZN6ImPlot13Demo_QueryingEvE5rects, align 8, !tbaa !124
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next, %i.gl
  br i1 %i.gm, label %bb.ak, label %._crit_edge, !llvm.loop !122

bb.ap:                                            ; preds = %._crit_edge, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8ImVectorI11ImPlotPointED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8ImVectorI10ImPlotRectED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN6ImPlot13IsPlotHoveredEv() local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare { double, double } @_ZN6ImPlot15GetPlotMousePosEii(i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6ImPlot14IsPlotSelectedEv() local_unnamed_addr #5

declare void @_ZN6ImPlot16GetPlotSelectionEii(ptr dead_on_unwind writable sret(%struct.ImPlotRect) align 8, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6ImPlot19CancelPlotSelectionEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot16Demo_AnnotationsEv() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 8             ; 9 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec4, align 16            ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca [3 x float], align 4              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 7 uses
  %9 = alloca %struct.ImVec4, align 4             ; 12 uses
  %10 = alloca %struct.ImVec2, align 8            ; 12 uses
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.357, ptr noundef nonnull @_ZZN6ImPlot16Demo_AnnotationsEvE5clamp) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.d = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.358, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 0.000000e+00, double noundef 2.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  call void @_ZN6ImPlot11PlotScatterIfEEvPKcPKT_S5_iiii(ptr noundef nonnull @.str.359, ptr noundef nonnull @_ZZN6ImPlot16Demo_AnnotationsEvE1p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_AnnotationsEvE1p, i64 4), i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.e = call { <2 x float>, <2 x float> } @_ZN6ImPlot16GetLastItemColorEv() #20 ; 2 uses
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.e, 0
  store <2 x float> %i.f, ptr %1, align 8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = extractvalue { <2 x float>, <2 x float> } %i.e, 1
  store <2 x float> %12, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x float> <float -1.500000e+01, float 1.500000e+01>, ptr %2, align 8, !tbaa !31
  %i.g = load i8, ptr @_ZZN6ImPlot16Demo_AnnotationsEvE5clamp, align 1, !tbaa !33, !range !34, !noundef !35
  %i.h = trunc nuw i8 %i.g to i1
  call void (double, double, ptr, ptr, i1, ptr, ...) @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bPKcz(double noundef 2.500000e-01, double noundef 2.500000e-01, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i1 noundef zeroext %i.h, ptr noundef nonnull @.str.360) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store <2 x float> splat (float 1.500000e+01), ptr %3, align 8, !tbaa !31
  %i.i = load i8, ptr @_ZZN6ImPlot16Demo_AnnotationsEvE5clamp, align 1, !tbaa !33, !range !34, !noundef !35
  %i.j = trunc nuw i8 %i.i to i1
  call void (double, double, ptr, ptr, i1, ptr, ...) @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bPKcz(double noundef 7.500000e-01, double noundef 2.500000e-01, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(8) %3, i1 noundef zeroext %i.j, ptr noundef nonnull @.str.361) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store <2 x float> <float 1.500000e+01, float -1.500000e+01>, ptr %4, align 8, !tbaa !31
  %i.k = load i8, ptr @_ZZN6ImPlot16Demo_AnnotationsEvE5clamp, align 1, !tbaa !33, !range !34, !noundef !35
  %i.l = trunc nuw i8 %i.k to i1
  call void (double, double, ptr, ptr, i1, ptr, ...) @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bPKcz(double noundef 7.500000e-01, double noundef 7.500000e-01, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext %i.l, ptr noundef nonnull @.str.362) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store <2 x float> splat (float -1.500000e+01), ptr %5, align 8, !tbaa !31
  %i.m = load i8, ptr @_ZZN6ImPlot16Demo_AnnotationsEvE5clamp, align 1, !tbaa !33, !range !34, !noundef !35
  %i.n = trunc nuw i8 %i.m to i1
  call void (double, double, ptr, ptr, i1, ptr, ...) @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bPKcz(double noundef 2.500000e-01, double noundef 7.500000e-01, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(8) %5, i1 noundef zeroext %i.n, ptr noundef nonnull @.str.363) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !31
  %i.o = load i8, ptr @_ZZN6ImPlot16Demo_AnnotationsEvE5clamp, align 1, !tbaa !33, !range !34, !noundef !35
  %i.p = trunc nuw i8 %i.o to i1
  call void (double, double, ptr, ptr, i1, ptr, ...) @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bPKcz(double noundef 5.000000e-01, double noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext %i.p, ptr noundef nonnull @.str.364) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %7, align 16, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !31
  %i.q = load i8, ptr @_ZZN6ImPlot16Demo_AnnotationsEvE5clamp, align 1, !tbaa !33, !range !34, !noundef !35
  %i.r = trunc nuw i8 %i.q to i1
  call void @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bb(double noundef 1.250000e+00, double noundef 7.500000e-01, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i1 noundef zeroext %i.r, i1 noundef zeroext false) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN6ImPlot16Demo_AnnotationsEv.bx, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN6ImPlot16Demo_AnnotationsEv.by, i64 12, i1 false)
  call void @_ZN6ImPlot8PlotBarsIfEEvPKcPKT_S5_idiii(ptr noundef nonnull @.str.365, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 3, double noundef 2.000000e-01, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  %i.s = load float, ptr %i.a, align 4, !tbaa !31
  %i.t = fpext float %i.s to double
  %i.u = load float, ptr %i.b, align 4, !tbaa !31
  %i.v = fpext float %i.u to double               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store <2 x float> <float 0.000000e+00, float -5.000000e+00>, ptr %10, align 8, !tbaa !31
  %i.w = load i8, ptr @_ZZN6ImPlot16Demo_AnnotationsEvE5clamp, align 1, !tbaa !33, !range !34, !noundef !35
  %i.x = trunc nuw i8 %i.w to i1
  call void (double, double, ptr, ptr, i1, ptr, ...) @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bPKcz(double noundef %i.t, double noundef %i.v, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(8) %10, i1 noundef zeroext %i.x, ptr noundef nonnull @.str.366, i32 noundef 0, double noundef %i.v) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !31
  %i.aa = fpext float %i.z to double
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !31
  %i.ad = fpext float %i.ac to double             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store <2 x float> <float 0.000000e+00, float -5.000000e+00>, ptr %10, align 8, !tbaa !31
  %i.ae = load i8, ptr @_ZZN6ImPlot16Demo_AnnotationsEvE5clamp, align 1, !tbaa !33, !range !34, !noundef !35
  %i.af = trunc nuw i8 %i.ae to i1
  call void (double, double, ptr, ptr, i1, ptr, ...) @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bPKcz(double noundef %i.aa, double noundef %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(8) %10, i1 noundef zeroext %i.af, ptr noundef nonnull @.str.366, i32 noundef 1, double noundef %i.ad) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !31
  %i.ai = fpext float %i.ah to double
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !31
  %i.al = fpext float %i.ak to double             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store <2 x float> <float 0.000000e+00, float -5.000000e+00>, ptr %10, align 8, !tbaa !31
  %i.am = load i8, ptr @_ZZN6ImPlot16Demo_AnnotationsEvE5clamp, align 1, !tbaa !33, !range !34, !noundef !35
  %i.an = trunc nuw i8 %i.am to i1
  call void (double, double, ptr, ptr, i1, ptr, ...) @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bPKcz(double noundef %i.ai, double noundef %i.al, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(8) %10, i1 noundef zeroext %i.an, ptr noundef nonnull @.str.366, i32 noundef 2, double noundef %i.al) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6ImPlot10AnnotationEddRK6ImVec4RK6ImVec2bb(double noundef, double noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot9Demo_TagsEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 16            ; 4 uses
  %2 = alloca %struct.ImVec4, align 16            ; 4 uses
  %3 = alloca %struct.ImVec4, align 16            ; 4 uses
  %4 = alloca %struct.ImVec4, align 16            ; 4 uses
  %5 = alloca %struct.ImVec4, align 16            ; 4 uses
  %6 = alloca %struct.ImVec4, align 16            ; 4 uses
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.367, ptr noundef nonnull @_ZZN6ImPlot9Demo_TagsEvE4show) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.b = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.368, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot9SetupAxisEiPKci(i32 noundef 1, ptr noundef null, i32 noundef 0) #20
  call void @_ZN6ImPlot9SetupAxisEiPKci(i32 noundef 4, ptr noundef null, i32 noundef 0) #20
  %i.c = load i8, ptr @_ZZN6ImPlot9Demo_TagsEvE4show, align 1, !tbaa !33, !range !34, !noundef !35
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %1, align 16, !tbaa !31
  call void @_ZN6ImPlot4TagXEdRK6ImVec4b(double noundef 2.500000e-01, ptr noundef nonnull align 4 dereferenceable(16) %1, i1 noundef zeroext false) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %2, align 16, !tbaa !31
  call void @_ZN6ImPlot4TagYEdRK6ImVec4b(double noundef 7.500000e-01, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext false) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %3, align 16, !tbaa !31
  %i.e = call noundef zeroext i1 @_ZN6ImPlot9DragLineYEiPdRK6ImVec4fiPbS4_S4_(i32 noundef 0, ptr noundef nonnull @_ZZN6ImPlot9Demo_TagsEvE8drag_tag, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef 1.000000e+00, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.f = load double, ptr @_ZZN6ImPlot9Demo_TagsEvE8drag_tag, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %4, align 16, !tbaa !31
  call void (double, ptr, ptr, ...) @_ZN6ImPlot4TagYEdRK6ImVec4PKcz(double noundef %i.f, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull @.str.369) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN6ImPlot7SetAxesEii(i32 noundef 1, i32 noundef 4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %5, align 16, !tbaa !31
  call void (double, ptr, ptr, ...) @_ZN6ImPlot4TagXEdRK6ImVec4PKcz(double noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.370) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %6, align 16, !tbaa !31
  call void (double, ptr, ptr, ...) @_ZN6ImPlot4TagYEdRK6ImVec4PKcz(double noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull @.str.371, i32 noundef 42) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

declare void @_ZN6ImPlot4TagXEdRK6ImVec4b(double noundef, ptr noundef nonnull align 4 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN6ImPlot4TagYEdRK6ImVec4b(double noundef, ptr noundef nonnull align 4 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN6ImPlot4TagYEdRK6ImVec4PKcz(double noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #5

declare void @_ZN6ImPlot4TagXEdRK6ImVec4PKcz(double noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot16Demo_DragAndDropEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec4, align 16            ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.372) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.373) #20
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.374) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.375) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.376) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.377) #20
  tail call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00) #20
  %i.c = load atomic i8, ptr @_ZGVZN6ImPlot16Demo_DragAndDropEvE3dnd acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6ImPlot16Demo_DragAndDropEvE3dnd) #20
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %.preheader62

.preheader62:                                     ; preds = %bb.b, %.preheader62
  %.idx = phi i64 [ %.add, %.preheader62 ], [ 0, %bb.b ] ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 %.idx
end_hunk_3
begin_hunk_4_@__cxx_global_array_dtor.378:bb.a
  br i1 %.not.i.i.1, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.1) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.1

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.1: ; preds = %bb.c, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit
  %.val.2 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 1128), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.2 = icmp eq ptr %.val.2, null
  br i1 %.not.i.i.2, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.1
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.2) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.2

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.2: ; preds = %bb.d, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.1
  %.val.3 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 1064), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %.val.3, null
  br i1 %.not.i.i.3, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.2
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.3) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.3

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.3: ; preds = %bb.e, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.2
  %.val.4 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 1000), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.4 = icmp eq ptr %.val.4, null
  br i1 %.not.i.i.4, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.4, label %bb.f

bb.f:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.3
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.4) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.4

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.4: ; preds = %bb.f, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.3
  %.val.5 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 936), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.5 = icmp eq ptr %.val.5, null
  br i1 %.not.i.i.5, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.5, label %bb.g

bb.g:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.4
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.5) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.5

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.5: ; preds = %bb.g, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.4
  %.val.6 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 872), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.6 = icmp eq ptr %.val.6, null
  br i1 %.not.i.i.6, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.6, label %bb.h

bb.h:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.5
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.6) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.6

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.6: ; preds = %bb.h, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.5
  %.val.7 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 808), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %.val.7, null
  br i1 %.not.i.i.7, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.7, label %bb.i

bb.i:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.6
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.7) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.7

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.7: ; preds = %bb.i, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.6
  %.val.8 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 744), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.8 = icmp eq ptr %.val.8, null
  br i1 %.not.i.i.8, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.8, label %bb.j

bb.j:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.7
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.8) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.8

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.8: ; preds = %bb.j, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.7
  %.val.9 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 680), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.9 = icmp eq ptr %.val.9, null
  br i1 %.not.i.i.9, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.9, label %bb.k

bb.k:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.8
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.9) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.9

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.9: ; preds = %bb.k, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.8
  %.val.10 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 616), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.10 = icmp eq ptr %.val.10, null
  br i1 %.not.i.i.10, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.10, label %bb.l

bb.l:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.9
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.10) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.10

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.10: ; preds = %bb.l, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.9
  %.val.11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 552), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.11 = icmp eq ptr %.val.11, null
  br i1 %.not.i.i.11, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.11, label %bb.m

bb.m:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.10
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.11) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.11

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.11: ; preds = %bb.m, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.10
  %.val.12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 488), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.12 = icmp eq ptr %.val.12, null
  br i1 %.not.i.i.12, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.12, label %bb.n

bb.n:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.11
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.12) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.12

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.12: ; preds = %bb.n, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.11
  %.val.13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 424), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.13 = icmp eq ptr %.val.13, null
  br i1 %.not.i.i.13, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.13, label %bb.o

bb.o:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.12
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.13) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.13

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.13: ; preds = %bb.o, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.12
  %.val.14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 360), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.14 = icmp eq ptr %.val.14, null
  br i1 %.not.i.i.14, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.14, label %bb.p

bb.p:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.13
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.14) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.14

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.14: ; preds = %bb.p, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.13
  %.val.15 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 296), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.15 = icmp eq ptr %.val.15, null
  br i1 %.not.i.i.15, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.15, label %bb.q

bb.q:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.14
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.15) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.15

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.15: ; preds = %bb.q, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.14
  %.val.16 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 232), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.16 = icmp eq ptr %.val.16, null
  br i1 %.not.i.i.16, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.16, label %bb.r

bb.r:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.15
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.16) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.16

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.16: ; preds = %bb.r, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.15
  %.val.17 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 168), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.17 = icmp eq ptr %.val.17, null
  br i1 %.not.i.i.17, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.17, label %bb.s

bb.s:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.16
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.17) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.17

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.17: ; preds = %bb.s, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.16
  %.val.18 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 104), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.18 = icmp eq ptr %.val.18, null
  br i1 %.not.i.i.18, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.18, label %bb.t

bb.t:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.17
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.18) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.18

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.18: ; preds = %bb.t, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.17
  %.val.19 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot16Demo_DragAndDropEvE3dnd, i64 40), align 8, !tbaa !45 ; 2 uses
  %.not.i.i.19 = icmp eq ptr %.val.19, null
  br i1 %.not.i.i.19, label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.19, label %bb.u

bb.u:                                             ; preds = %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.18
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.val.19) #20
  br label %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.19

_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.19: ; preds = %bb.u, %_ZZN6ImPlot16Demo_DragAndDropEvEN9MyDndItemD2Ev.exit.18
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef) local_unnamed_addr #5

declare void @_ZN5ImGui17EndDragDropSourceEv() local_unnamed_addr #5

declare void @_ZN5ImGui8EndChildEv() local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui19BeginDragDropTargetEv() local_unnamed_addr #5

declare void @_ZN5ImGui17EndDragDropTargetEv() local_unnamed_addr #5

declare void @_ZN6ImPlot7SetAxisEi(i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6ImPlot23BeginDragDropTargetAxisEi(i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6ImPlot25BeginDragDropTargetLegendEv() local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6ImPlot23BeginDragDropSourceAxisEii(i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6ImPlot23BeginDragDropSourcePlotEi(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot11Demo_TablesEv() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 8             ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.387) #20
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.388, ptr noundef nonnull @_ZZN6ImPlot11Demo_TablesEvE4anim) #20 ; 0 uses
  %i.b = load i8, ptr @_ZZN6ImPlot11Demo_TablesEvE4anim, align 1, !tbaa !33, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @_ZZN6ImPlot11Demo_TablesEvE6offset, align 4, !tbaa !13
  %i.e = add nsw i32 %i.d, 1
  %i.f = srem i32 %i.e, 100
  store i32 %i.f, ptr @_ZZN6ImPlot11Demo_TablesEvE6offset, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.g = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.389, i32 noundef 3, i32 noundef 1859, ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef 0.000000e+00) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.g, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.390, i32 noundef 16, float noundef 7.500000e+01, i32 noundef 0) #20
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.391, i32 noundef 16, float noundef 7.500000e+01, i32 noundef 0) #20
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.392, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0) #20
  call void @_ZN5ImGui15TableHeadersRowEv() #20
  call void @_ZN6ImPlot12PushColormapEi(i32 noundef 7) #20
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  call void @_ZN6ImPlot11PopColormapEi(i32 noundef 1) #20
  call void @_ZN5ImGui8EndTableEv() #20
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.g
  %.0911 = phi i32 [ 0, %bb.d ], [ %i.s, %bb.g ]  ; 5 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00) #20
  call void @srand(i32 noundef %.0911) #20
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.h = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) #20 ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.393, i32 noundef %.0911) #20
  %i.i = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) #20 ; 0 uses
  %i.j = load i32, ptr @_ZZN6ImPlot11Demo_TablesEvE6offset, align 4, !tbaa !13
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr @_ZZN6ImPlot11Demo_TablesEvE4data, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !31
  %i.n = fpext float %i.m to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.394, double noundef %i.n) #20
  %i.o = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) #20 ; 0 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %.0911) #20
  %i.p = load i32, ptr @_ZZN6ImPlot11Demo_TablesEvE6offset, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.q = call { <2 x float>, <2 x float> } @_ZN6ImPlot16GetColormapColorEii(i32 noundef %.0911, i32 noundef -1) #20 ; 2 uses
  %i.r = extractvalue { <2 x float>, <2 x float> } %i.q, 0
  store <2 x float> %i.r, ptr %1, align 8
  %4 = extractvalue { <2 x float>, <2 x float> } %i.q, 1
  store <2 x float> %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x float> <float -1.000000e+00, float 3.500000e+01>, ptr %2, align 8, !tbaa !31
  call void @_ZN8MyImPlot9SparklineEPKcPKfiffiRK6ImVec4RK6ImVec2(ptr noundef nonnull @.str.395, ptr noundef nonnull @_ZZN6ImPlot11Demo_TablesEvE4data, i32 noundef 100, float noundef 0.000000e+00, float noundef 1.100000e+01, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @_ZN5ImGui5PopIDEv() #20
  %i.s = add nuw nsw i32 %.0911, 1                ; 2 uses
  %exitcond13.not = icmp eq i32 %i.s, 10
  br i1 %exitcond13.not, label %bb.e, label %bb.f, !llvm.loop !137

bb.h:                                             ; preds = %bb.f, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.f ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.t = call i32 @rand() #20
  %i.u = sitofp i32 %i.t to float
  %i.v = fmul nnan float %i.u, f0x30000000
  %i.w = call noundef float @llvm.fmuladd.f32(float %i.v, float 1.000000e+01, float 0.000000e+00)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot11Demo_TablesEvE4data, i64 %indvars.iv
  store float %i.w, ptr %i.x, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !138

bb.i:                                             ; preds = %bb.e, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef) local_unnamed_addr #5

declare void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN5ImGui15TableHeadersRowEv() local_unnamed_addr #5

declare void @_ZN5ImGui12TableNextRowEif(i32 noundef, float noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8MyImPlot9SparklineEPKcPKfiffiRK6ImVec4RK6ImVec2(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(8) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !31
  call void @_ZN6ImPlot12PushStyleVarEiRK6ImVec2(i32 noundef 17, ptr noundef nonnull align 4 dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.a = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef 55) #20
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6ImPlot9SetupAxesEPKcS1_ii(ptr noundef null, ptr noundef null, i32 noundef 15, i32 noundef 15) #20
  %i.b = add nsw i32 %2, -1
  %i.c = sitofp i32 %i.b to double
  %i.d = fpext float %3 to double
  %i.e = fpext float %4 to double
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 0.000000e+00, double noundef %i.c, double noundef %i.d, double noundef %i.e, i32 noundef 1) #20
  call void @_ZN6ImPlot16SetNextLineStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef -1.000000e+00) #20
  call void @_ZN6ImPlot16SetNextFillStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef 2.500000e-01) #20
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_iddiii(ptr noundef %0, ptr noundef %1, i32 noundef %2, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 16384, i32 noundef %5, i32 noundef 4) #20
  call void @_ZN6ImPlot7EndPlotEv() #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN6ImPlot11PopStyleVarEi(i32 noundef 1) #20
  ret void
}

declare void @_ZN5ImGui8EndTableEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot20Demo_OffsetAndStrideEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca [32 x i8], align 16               ; 24 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.b = trunc nuw nsw i64 %indvars.iv to i32
  %i.c = uitofp nneg i32 %i.b to double
  %i.d = fdiv nnan double %i.c, 5.000000e+01
  %i.e = fmul nnan double %i.d, 6.280000e+00      ; 22 uses
  %i.f = mul nuw nsw i64 %indvars.iv, 22          ; 11 uses
  %i.g = tail call double @cos(double noundef %i.e) #20
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 %i.f
  %i.i = tail call double @sin(double noundef %i.e) #20
  %i.j = insertelement <2 x double> poison, double %i.g, i64 0
  %i.k = insertelement <2 x double> %i.j, double %i.i, i64 1
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> splat (double 2.000000e-01), <2 x double> splat (double 5.000000e-01))
  store <2 x double> %i.l, ptr %i.h, align 16, !tbaa !15
  %i.m = tail call double @cos(double noundef %i.e) #20
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = tail call double @sin(double noundef %i.e) #20
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.p, i64 1
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> splat (double 2.200000e-01), <2 x double> splat (double 5.000000e-01))
  store <2 x double> %i.s, ptr %i.o, align 16, !tbaa !15
  %i.t = tail call double @cos(double noundef %i.e) #20
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 %i.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = tail call double @sin(double noundef %i.e) #20
  %i.x = insertelement <2 x double> poison, double %i.t, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> splat (double f0x3FCEB851EB851EB9), <2 x double> splat (double 5.000000e-01))
  store <2 x double> %i.z, ptr %i.v, align 16, !tbaa !15
  %i.aa = tail call double @cos(double noundef %i.e) #20
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 %i.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = tail call double @sin(double noundef %i.e) #20
  %i.ae = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> splat (double 2.600000e-01), <2 x double> splat (double 5.000000e-01))
  store <2 x double> %i.ag, ptr %i.ac, align 16, !tbaa !15
  %i.ah = tail call double @cos(double noundef %i.e) #20
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 %i.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = tail call double @sin(double noundef %i.e) #20
  %i.al = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> splat (double 2.800000e-01), <2 x double> splat (double 5.000000e-01))
  store <2 x double> %i.an, ptr %i.aj, align 16, !tbaa !15
  %i.ao = tail call double @cos(double noundef %i.e) #20
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 %i.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = tail call double @sin(double noundef %i.e) #20
  %i.as = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> splat (double f0x3FD3333333333334), <2 x double> splat (double 5.000000e-01))
  store <2 x double> %i.au, ptr %i.aq, align 16, !tbaa !15
  %i.av = tail call double @cos(double noundef %i.e) #20
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 %i.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.ay = tail call double @sin(double noundef %i.e) #20
  %i.az = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ay, i64 1
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> splat (double 3.200000e-01), <2 x double> splat (double 5.000000e-01))
  store <2 x double> %i.bb, ptr %i.ax, align 16, !tbaa !15
  %i.bc = tail call double @cos(double noundef %i.e) #20
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 %i.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bf = tail call double @sin(double noundef %i.e) #20
  %i.bg = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.bf, i64 1
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> splat (double 3.400000e-01), <2 x double> splat (double 5.000000e-01))
  store <2 x double> %i.bi, ptr %i.be, align 16, !tbaa !15
  %i.bj = tail call double @cos(double noundef %i.e) #20
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 %i.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bm = tail call double @sin(double noundef %i.e) #20
  %i.bn = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bm, i64 1
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> splat (double f0x3FD70A3D70A3D70B), <2 x double> splat (double 5.000000e-01))
  store <2 x double> %i.bp, ptr %i.bl, align 16, !tbaa !15
  %i.bq = tail call double @cos(double noundef %i.e) #20
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 %i.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bt = tail call double @sin(double noundef %i.e) #20
  %i.bu = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bt, i64 1
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> splat (double 3.800000e-01), <2 x double> splat (double 5.000000e-01))
  store <2 x double> %i.bw, ptr %i.bs, align 16, !tbaa !15
  %i.bx = tail call double @cos(double noundef %i.e) #20
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 %i.f
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.ca = tail call double @sin(double noundef %i.e) #20
  %i.cb = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> splat (double 4.000000e-01), <2 x double> splat (double 5.000000e-01))
  store <2 x double> %i.cd, ptr %i.bz, align 16, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !139

bb.b:                                             ; preds = %.preheader
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.396) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.397) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.398) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.399) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.400) #20
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.401) #20
  %i.ce = tail call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.402, ptr noundef nonnull @_ZZN6ImPlot20Demo_OffsetAndStrideEvE6offset, i32 noundef -100, i32 noundef 100, ptr noundef nonnull @.str.92, i32 noundef 0) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
  %i.cf = call noundef zeroext i1 @_ZN6ImPlot9BeginPlotEPKcRK6ImVec2i(ptr noundef nonnull @.str.403, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 128) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.cf, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN6ImPlot12PushColormapEi(i32 noundef 9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.404, i32 noundef 0) #20 ; 0 uses
  %i.ch = load i32, ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE6offset, align 4, !tbaa !13
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull %i.a, ptr noundef nonnull @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 8), i32 noundef 50, i32 noundef 0, i32 noundef %i.ch, i32 noundef 176) #20
  %i.ci = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.404, i32 noundef 1) #20 ; 0 uses
  %i.cj = load i32, ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE6offset, align 4, !tbaa !13
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 24), i32 noundef 50, i32 noundef 0, i32 noundef %i.cj, i32 noundef 176) #20
  %i.ck = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.404, i32 noundef 2) #20 ; 0 uses
  %i.cl = load i32, ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE6offset, align 4, !tbaa !13
  call void @_ZN6ImPlot8PlotLineIdEEvPKcPKT_S5_iiii(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 32), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE16interleaved_data, i64 40), i32 noundef 50, i32 noundef 0, i32 noundef %i.cl, i32 noundef 176) #20
  %i.cm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.404, i32 noundef 3) #20 ; 0 uses
  %i.cn = load i32, ptr @_ZZN6ImPlot20Demo_OffsetAndStrideEvE6offset, align 4, !tbaa !13
end_hunk_4
begin_hunk_5_@_ZN6ImPlot17Demo_LegendPopupsEv:bb.a
  store float %i.h, ptr %i.i, align 8, !tbaa !31
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
  store float %i.n, ptr %i.o, align 4, !tbaa !31
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @_ZN6ImPlot15SetupAxesLimitsEddddi(double noundef 0.000000e+00, double noundef 1.000000e+02, double noundef -1.000000e+00, double noundef 1.000000e+00, i32 noundef 2) #20
  %i.p = load float, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE5alpha, align 4, !tbaa !31
  call void @_ZN6ImPlot12PushStyleVarEif(i32 noundef 4, float noundef %i.p) #20
  %i.q = load i8, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE4line, align 1, !tbaa !33, !range !34, !noundef !35
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN6ImPlot16SetNextFillStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) @_ZZN6ImPlot17Demo_LegendPopupsEvE5color, float noundef -1.000000e+00) #20
  call void @_ZN6ImPlot8PlotBarsIfEEvPKcPKT_iddiii(ptr noundef nonnull @.str.442, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE4vals, i32 noundef 101, double noundef 6.700000e-01, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.s = load i8, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE7markers, align 1, !tbaa !33, !range !34, !noundef !35
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %1, align 16, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %2, align 16, !tbaa !31
  call void @_ZN6ImPlot18SetNextMarkerStyleEifRK6ImVec4fS2_(i32 noundef 1, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef -1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = load float, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE9thickness, align 4, !tbaa !31
  call void @_ZN6ImPlot16SetNextLineStyleERK6ImVec4f(ptr noundef nonnull align 4 dereferenceable(16) @_ZZN6ImPlot17Demo_LegendPopupsEvE5color, float noundef %i.u) #20
  call void @_ZN6ImPlot8PlotLineIfEEvPKcPKT_iddiii(ptr noundef nonnull @.str.442, ptr noundef nonnull @_ZZN6ImPlot17Demo_LegendPopupsEvE4vals, i32 noundef 101, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  %i.v = load i8, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE6shaded, align 1, !tbaa !33, !range !34, !noundef !35
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
  %i.ad = load i8, ptr @_ZZN6ImPlot17Demo_LegendPopupsEvE4line, align 1, !tbaa !33, !range !34, !noundef !35
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
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !31
  %i.a = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !13
  %i.b = call noundef zeroext i1 @_ZN6ImPlot14ColormapButtonEPKcRK6ImVec2i(ptr noundef nonnull @.str.452, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !13
  %i.d = add nsw i32 %i.c, 1
  %i.e = call noundef i32 @_ZN6ImPlot16GetColormapCountEv() #20
  %i.f = srem i32 %i.d, %i.e
  store i32 %i.f, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !31
  %i.g = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.453, ptr noundef nonnull align 4 dereferenceable(16) @_ZZN6ImPlot20Demo_ColormapWidgetsEvE3col, i32 noundef 32, ptr noundef nonnull align 4 dereferenceable(8) %1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.h = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !13
  %i.i = call noundef zeroext i1 @_ZN6ImPlot14ColormapSliderEPKcPfP6ImVec4S1_i(ptr noundef nonnull @.str.454, ptr noundef nonnull @_ZZN6ImPlot20Demo_ColormapWidgetsEvE1t, ptr noundef nonnull @_ZZN6ImPlot20Demo_ColormapWidgetsEvE3col, ptr noundef nonnull @.str.33, i32 noundef %i.h) #20 ; 0 uses
  %i.j = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !13
  call void @_ZN6ImPlot12ColormapIconEi(i32 noundef %i.j) #20
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.455) #20
  %i.k = load <2 x float>, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE5scale, align 8, !tbaa !31
  %i.l = fpext <2 x float> %i.k to <2 x double>   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !31
  %i.m = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE5flags, align 4, !tbaa !13
  %i.n = load i32, ptr @_ZZN6ImPlot20Demo_ColormapWidgetsEvE4cmap, align 4, !tbaa !13
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
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %0, align 8, !tbaa !31
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
  %i.g = load i8, ptr @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7tooltip, align 1, !tbaa !33, !range !34, !noundef !35
  %i.h = trunc nuw i8 %i.g to i1
  %.sroa.01.0.copyload = load <2 x float>, ptr @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7bullCol, align 8, !tbaa !31
  %.sroa.22.0.copyload = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7bullCol, i64 8), align 8, !tbaa !31
  %.sroa.0.0.copyload = load <2 x float>, ptr @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7bearCol, align 8, !tbaa !31
  %.sroa.2.0.copyload = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6ImPlot30Demo_CustomPlottersAndTooltipsEvE7bearCol, i64 8), align 8, !tbaa !31
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
  %23 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %10, ptr %23, align 8
  store <2 x float> %11, ptr %14, align 8
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store <2 x float> %12, ptr %24, align 8
  %i.b = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #20 ; 3 uses
  %i.c = icmp sgt i32 %6, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !15
  %i.f = load double, ptr %1, align 8, !tbaa !15
  %i.g = fsub double %i.e, %i.f
  %i.h = fpext float %8 to double
  %i.i = fmul double %i.g, %i.h
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = fpext float %8 to double
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi double [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 4 uses
  %i.l = tail call noundef zeroext i1 @_ZN6ImPlot13IsPlotHoveredEv() #20
  %or.cond = and i1 %7, %i.l
  br i1 %or.cond, label %bb.e, label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = tail call { double, double } @_ZN6ImPlot15GetPlotMousePosEii(i32 noundef -1, i32 noundef -1) #20 ; 2 uses
  %i.n = extractvalue { double, double } %i.m, 0  ; 3 uses
  %i.o = extractvalue { double, double } %i.m, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.p = fptosi double %i.n to i64
  %i.q = tail call double @llvm.floor.f64(double %i.n)
  %i.r = fmul double %i.q, -1.000000e+06
  %i.s = tail call double @llvm.fmuladd.f64(double %i.n, double 1.000000e+06, double %i.r)
  %i.t = fptosi double %i.s to i32                ; 2 uses
  %i.u = sdiv i32 %i.t, 1000000
  %i.v = sext i32 %i.u to i64
  %i.w = add nsw i64 %i.v, %i.p
  %i.x = srem i32 %i.t, 1000000
  store i64 %i.w, ptr %15, align 8
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %i.x, ptr %.sroa.242.0..sroa_idx, align 8
  %i.y = call { i64, i32 } @_ZN6ImPlot9RoundTimeERK10ImPlotTimei(ptr noundef nonnull align 8 dereferenceable(12) %15, i32 noundef 5) #20 ; 2 uses
  %.fca.0.extract35 = extractvalue { i64, i32 } %i.y, 0
  %.fca.1.extract36 = extractvalue { i64, i32 } %i.y, 1
  %i.z = sitofp i64 %.fca.0.extract35 to double
  %i.aa = sitofp i32 %.fca.1.extract36 to double
  %i.ab = fdiv double %i.aa, 1.000000e+06
  %i.ac = fadd double %i.ab, %i.z                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.ad = fneg double %i.k
  %i.ae = call double @llvm.fmuladd.f64(double %i.ad, double 1.500000e+00, double %i.ac)
  %i.af = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.ae, double noundef %i.o, i32 noundef -1, i32 noundef -1) #20
  %.sroa.033.0.vec.extract = extractelement <2 x float> %i.af, i64 0
  %i.ag = call double @llvm.fmuladd.f64(double %i.k, double 1.500000e+00, double %i.ac)
  %i.ah = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.ag, double noundef %i.o, i32 noundef -1, i32 noundef -1) #20
  %.sroa.031.0.vec.extract = extractelement <2 x float> %i.ah, i64 0
  %i.ai = call <2 x float> @_ZN6ImPlot10GetPlotPosEv() #20 ; 2 uses
  %.sroa.028.4.vec.extract = extractelement <2 x float> %i.ai, i64 1
  %i.aj = call <2 x float> @_ZN6ImPlot11GetPlotSizeEv() #20
  %foldExtExtBinop = fadd <2 x float> %i.ai, %i.aj
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 1
  call void @_ZN6ImPlot16PushPlotClipRectEf(float noundef 0.000000e+00) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store float %.sroa.033.0.vec.extract, ptr %16, align 4, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 4
  store float %.sroa.028.4.vec.extract, ptr %i.al, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store float %.sroa.031.0.vec.extract, ptr %17, align 4, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 4
  store float %i.ak, ptr %i.am, align 4, !tbaa !37
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef 1082163328, float noundef 0.000000e+00, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @_ZN6ImPlot15PopPlotClipRectEv() #20
  %.not2832.i = icmp slt i32 %6, 1
  br i1 %.not2832.i, label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.an = add nsw i32 %6, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %tailrecurse.outer.i
  %.tr25.ph34.i = phi i32 [ %.tr2529.i, %tailrecurse.outer.i ], [ %i.an, %.lr.ph.i.preheader ]
  %.tr24.ph33.i = phi i32 [ %i.ax, %tailrecurse.outer.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %tailrecurse.i, %.lr.ph.i
  %.tr2529.i = phi i32 [ %.tr25.ph34.i, %.lr.ph.i ], [ %i.aw, %tailrecurse.i ] ; 3 uses
  %i.ao = sub nsw i32 %.tr2529.i, %.tr24.ph33.i
  %i.ap = lshr i32 %i.ao, 1                       ; 2 uses
  %i.aq = add nuw nsw i32 %i.ap, %.tr24.ph33.i    ; 4 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 6 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.au = fcmp oeq double %i.at, %i.ac
  br i1 %i.au, label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = fcmp ogt double %i.at, %i.ac
  br i1 %i.av, label %tailrecurse.i, label %tailrecurse.outer.i

tailrecurse.i:                                    ; preds = %bb.g
  %i.aw = add nsw i32 %i.aq, -1
  %.not.not.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.not.not.i, label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread, label %bb.f

tailrecurse.outer.i:                              ; preds = %bb.g
  %i.ax = add nuw nsw i32 %i.aq, 1
  %.not28.not.i = icmp sgt i32 %.tr2529.i, %i.aq
  br i1 %.not28.not.i, label %.lr.ph.i, label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread

_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit:    ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ar
  %i.az = call noundef zeroext i1 @_ZN5ImGui12BeginTooltipEv() #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !15 ; 3 uses
  %i.bb = fptosi double %i.ba to i64
  %i.bc = call double @llvm.floor.f64(double %i.ba)
  %i.bd = fmul double %i.bc, -1.000000e+06
  %i.be = call double @llvm.fmuladd.f64(double %i.ba, double 1.000000e+06, double %i.bd)
  %i.bf = fptosi double %i.be to i32              ; 2 uses
  %i.bg = sdiv i32 %i.bf, 1000000
  %i.bh = sext i32 %i.bg to i64
  %i.bi = add nsw i64 %i.bh, %i.bb
  %i.bj = srem i32 %i.bf, 1000000
  store i64 %i.bi, ptr %18, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %i.bj, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bk = call noundef nonnull align 4 dereferenceable(515) ptr @_ZN6ImPlot8GetStyleEv() #20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 513
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !148, !range !34, !noundef !35
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = call noundef i32 @_ZN6ImPlot10FormatDateERK10ImPlotTimePciib(ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull %i.a, i32 noundef 32, i32 noundef 2, i1 noundef zeroext %i.bn) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.534, ptr noundef nonnull %i.a) #20
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ar
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !15
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.535, double noundef %i.bq) #20
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ar
  %i.bs = load double, ptr %i.br, align 8, !tbaa !15
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.536, double noundef %i.bs) #20
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ar
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !15
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.537, double noundef %i.bu) #20
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ar
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !15
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.538, double noundef %i.bw) #20
  call void @_ZN5ImGui10EndTooltipEv() #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread

_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread: ; preds = %tailrecurse.outer.i, %tailrecurse.i, %bb.e, %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit, %bb.d
  %i.bx = call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1) #20
  br i1 %i.bx, label %bb.h, label %bb.y

bb.h:                                             ; preds = %_ZN8MyImPlot12BinarySearchIdEEiPKT_iiS1_.exit.thread
  %i.by = call noundef ptr @_ZN6ImPlot14GetCurrentItemEv() #20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 -12566464, ptr %i.bz, align 4, !tbaa !151
  %i.ca = load ptr, ptr @GImPlot, align 8, !tbaa !153
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !195
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2551
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !201, !range !34, !noundef !35
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = icmp sgt i32 %6, 0                      ; 2 uses
  %or.cond121 = and i1 %i.cg, %i.cf
  br i1 %or.cond121, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit106
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit106 ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !15 ; 10 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !15 ; 10 uses
  %i.cl = call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #20 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 2448
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !202
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [376 x i8], ptr %i.cm, i64 %i.cp ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 2452
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !203
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [376 x i8], ptr %i.cm, i64 %i.ct ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !207
  %i.cx = and i32 %i.cw, 4096
  %.not16.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not16.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !52
  %i.da = fcmp ult double %i.ck, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
end_hunk_5
