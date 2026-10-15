Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot_demo?download=true
inline.NumInlined: 397
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6ImPlot20Demo_FilledLinePlotsEv:bb.a
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE3ys3, i64 %indvars.iv
  store double %i.u, ptr %i.v, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 101
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !81

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.w = load i32, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10shade_mode, align 4, !tbaa !13
  %i.x = icmp eq i32 %i.w, 0
  %i.y = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.51, i1 noundef zeroext %i.x) #20
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10shade_mode, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.z = load i32, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10shade_mode, align 4, !tbaa !13
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.52, i1 noundef zeroext %i.aa) #20
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10shade_mode, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #20
  %i.ac = load i32, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10shade_mode, align 4, !tbaa !13
  %i.ad = icmp eq i32 %i.ac, 2
  %i.ae = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.53, i1 noundef zeroext %i.ad) #20
  br i1 %i.ae, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store i32 2, ptr @_ZZN6ImPlot20Demo_FilledLinePlotsEvE10shade_mode, align 4, !tbaa !13
  br label %bb.j

bb.i:                                             ; preds = %bb.h
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
  %1 = tail call float @sinf(float noundef %i.ah) #20
  %2 = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys3, i64 %indvars.iv
  %i.ai = tail call float @cosf(float noundef %i.ah) #20
  %3 = insertelement <2 x float> poison, float %1, i64 0
  %4 = insertelement <2 x float> %3, float %i.ai, i64 1
  %5 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> <float 2.000000e-01, float 1.000000e-01>, <2 x float> splat (float 7.500000e-01)) ; 2 uses
  %6 = extractelement <2 x float> %5, i64 0
  store float %6, ptr %2, align 4, !tbaa !31
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6ImPlot16Demo_ShadedPlotsEvE3ys4, i64 %indvars.iv
  %7 = extractelement <2 x float> %5, i64 1
  store float %7, ptr %i.aj, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1001
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !82

bb.d:                                             ; preds = %bb.b
  %i.ak = load float, ptr @_ZZN6ImPlot16Demo_ShadedPlotsEvE5alpha, align 4, !tbaa !31
  call void @_ZN6ImPlot12PushStyleVarEif(i32 noundef 4, float noundef %i.ak) #20
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
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = extractvalue { <2 x float>, <2 x float> } %i.u, 1
  store <2 x float> %i.x, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.y = call { <2 x float>, <2 x float> } @_ZN6ImPlot16GetColormapColorEii(i32 noundef 1, i32 noundef -1) #20 ; 2 uses
  %i.z = extractvalue { <2 x float>, <2 x float> } %i.y, 0
  store <2 x float> %i.z, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = extractvalue { <2 x float>, <2 x float> } %i.y, 1
  store <2 x float> %i.ab, ptr %i.aa, align 8
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
end_hunk_0
