Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fast_float_lab?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ResamplingContainer = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @OptimizeCLUTLabTransform(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %7 = alloca %struct.ResamplingContainer, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.c = load ptr, ptr %3, align 8, !tbaa !23     ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %LabCLUTAlloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !11     ; 2 uses
  %i.f = and i32 %i.e, 4194304
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %LabCLUTAlloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %5, align 4, !tbaa !11     ; 2 uses
  %i.h = and i32 %i.g, 4194304
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %LabCLUTAlloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %i.g, 7
  %.not39 = icmp eq i32 %i.i, 4
  %i.j = and i32 %i.e, 2031623
  %i.k = icmp eq i32 %i.j, 655364
  %or.cond43 = and i1 %i.k, %.not39
  br i1 %or.cond43, label %bb.e, label %LabCLUTAlloc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @cmsGetPipelineContextID(ptr noundef nonnull %i.c) #5 ; 5 uses
  %i.m = load i32, ptr %6, align 4, !tbaa !11     ; 4 uses
  %i.n = and i32 %i.m, 16711680
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = lshr i32 %i.m, 16
  %i.p = and i32 %i.o, 255
  br label %GetGridpoints.exit

bb.g:                                             ; preds = %bb.e
  %i.q = and i32 %i.m, 1024
  %.not5.i = icmp eq i32 %i.q, 0
  br i1 %.not5.i, label %bb.h, label %GetGridpoints.exit

bb.h:                                             ; preds = %bb.g
  %i.r = and i32 %i.m, 2048
  %.not6.i = icmp eq i32 %i.r, 0
  %..i = select i1 %.not6.i, i32 51, i32 33
  br label %GetGridpoints.exit

GetGridpoints.exit:                               ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.p, %bb.f ], [ 66, %bb.g ], [ %..i, %bb.h ]
  %i.s = tail call ptr @cmsGetPipelineContextID(ptr noundef nonnull %i.c) #5
  %i.t = tail call i32 @cmsPipelineOutputChannels(ptr noundef nonnull %i.c) #5
  %i.u = tail call ptr @cmsPipelineAlloc(ptr noundef %i.s, i32 noundef 3, i32 noundef %i.t) #5 ; 4 uses
  %cond = icmp eq ptr %i.u, null
  br i1 %cond, label %LabCLUTAlloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %GetGridpoints.exit
  %i.v = tail call i32 @cmsPipelineOutputChannels(ptr noundef nonnull %i.c) #5
  %i.w = tail call ptr @cmsStageAllocCLutFloat(ptr noundef %i.l, i32 noundef %.0.i, i32 noundef 3, i32 noundef %i.v, ptr noundef null) #5 ; 3 uses
  %i.x = tail call i32 @cmsPipelineInsertStage(ptr noundef nonnull %i.u, i32 noundef 0, ptr noundef %i.w) #5 ; 0 uses
  %i.y = tail call ptr @cmsStageData(ptr noundef %i.w) #5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ab = tail call ptr @_cmsMallocZero(ptr noundef %i.l, i32 noundef 8208) #5 ; 7 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %LabCLUTAlloc.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.l, ptr %i.ab, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store double 2.500000e+00, ptr %i.b, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.ae, i8 0, i64 4096, i1 false)
  %i.af = call ptr @cmsBuildParametricToneCurve(ptr noundef %i.l, i32 noundef 109, ptr noundef nonnull %i.b) #5 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %tabulateSigmoid.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 0, %bb.j ] ; 3 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ah = uitofp nneg i32 %i.ag to float
  %i.ai = fdiv float %i.ah, 1.023000e+03
  %i.aj = call float @cmsEvalToneCurveFloat(ptr noundef nonnull %i.af, float noundef %i.ai) #5 ; 4 uses
  %8 = fcmp olt float %i.aj, f0x3089705F
  %9 = fcmp uno float %i.aj, 0.000000e+00
  %or.cond.i.i.i = or i1 %8, %9
  %i.ak = fcmp ogt float %i.aj, 1.000000e+00
  %i.al = select i1 %i.ak, float 1.000000e+00, float %i.aj
  %i.am = select i1 %or.cond.i.i.i, float 0.000000e+00, float %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i.i
  store float %i.am, ptr %i.an, align 4, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 1024
  br i1 %exitcond.not.i.i, label %bb.k, label %.preheader.i.i, !llvm.loop !22

bb.k:                                             ; preds = %.preheader.i.i
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.af) #5
  br label %tabulateSigmoid.exit.i

tabulateSigmoid.exit.i:                           ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 4112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store double 2.500000e+00, ptr %i.a, align 8, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.ao, i8 0, i64 4096, i1 false)
  %i.ap = call ptr @cmsBuildParametricToneCurve(ptr noundef %i.l, i32 noundef -109, ptr noundef nonnull %i.a) #5 ; 3 uses
  %.not.i13.i = icmp eq ptr %i.ap, null
  br i1 %.not.i13.i, label %bb.m, label %.preheader.i14.i

.preheader.i14.i:                                 ; preds = %tabulateSigmoid.exit.i, %.preheader.i14.i
  %indvars.iv.i15.i = phi i64 [ %indvars.iv.next.i17.i, %.preheader.i14.i ], [ 0, %tabulateSigmoid.exit.i ] ; 3 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv.i15.i to i32
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fdiv float %i.ar, 1.023000e+03
  %i.at = call float @cmsEvalToneCurveFloat(ptr noundef nonnull %i.ap, float noundef %i.as) #5 ; 4 uses
  %10 = fcmp olt float %i.at, f0x3089705F
  %11 = fcmp uno float %i.at, 0.000000e+00
  %or.cond.i.i16.i = or i1 %10, %11
  %i.au = fcmp ogt float %i.at, 1.000000e+00
  %i.av = select i1 %i.au, float 1.000000e+00, float %i.at
  %i.aw = select i1 %or.cond.i.i16.i, float 0.000000e+00, float %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i15.i
  store float %i.aw, ptr %i.ax, align 4, !tbaa !17
  %indvars.iv.next.i17.i = add nuw nsw i64 %indvars.iv.i15.i, 1 ; 2 uses
  %exitcond.not.i18.i = icmp eq i64 %indvars.iv.next.i17.i, 1024
  br i1 %exitcond.not.i18.i, label %bb.l, label %.preheader.i14.i, !llvm.loop !22

bb.l:                                             ; preds = %.preheader.i14.i
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.ap) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %tabulateSigmoid.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  store ptr %i.ab, ptr %7, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.c, ptr %i.ay, align 8, !tbaa !21
  %i.az = call i32 @cmsStageSampleCLutFloat(ptr noundef %i.w, ptr noundef nonnull @XFormSampler, ptr noundef nonnull %7, i32 noundef 0) #5
  %.not41 = icmp eq i32 %i.az, 0
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @cmsPipelineFree(ptr noundef nonnull %i.c) #5
  store ptr %i.u, ptr %3, align 8, !tbaa !23
  store ptr @LabCLUTEval, ptr %0, align 8, !tbaa !29
  store ptr %i.ab, ptr %1, align 8, !tbaa !29
  store ptr @LabCLUTFree, ptr %2, align 8, !tbaa !29
  %i.ba = load i32, ptr %6, align 4, !tbaa !11
  %i.bb = and i32 %i.ba, -33554433
  store i32 %i.bb, ptr %6, align 4, !tbaa !11
  br label %LabCLUTAlloc.exit.thread

bb.o:                                             ; preds = %bb.m
  call void @cmsPipelineFree(ptr noundef nonnull %i.u) #5
  br label %LabCLUTAlloc.exit.thread

LabCLUTAlloc.exit.thread:                         ; preds = %bb.i, %GetGridpoints.exit, %bb.o, %bb.d, %bb.b, %bb.c, %bb.a, %bb.n
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %GetGridpoints.exit ], [ 0, %bb.o ], [ 1, %bb.n ], [ 0, %bb.c ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @cmsGetPipelineContextID(ptr noundef) local_unnamed_addr #2

declare ptr @cmsPipelineAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cmsPipelineOutputChannels(ptr noundef) local_unnamed_addr #2

declare ptr @cmsStageAllocCLutFloat(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cmsPipelineInsertStage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cmsStageData(ptr noundef) local_unnamed_addr #2

declare i32 @cmsStageSampleCLutFloat(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @XFormSampler(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load float, ptr %0, align 4, !tbaa !17
  store float %i.b, ptr %i.a, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !17 ; 3 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !20     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4112 ; 4 uses
  %i.g = fcmp ult float %i.d, 1.000000e+00
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8204
  %i.i = load float, ptr %i.h, align 4, !tbaa !17
  br label %LinLerp1D.exit

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp ugt float %i.d, 0.000000e+00
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load float, ptr %i.f, align 4, !tbaa !17
  br label %LinLerp1D.exit

bb.e:                                             ; preds = %bb.c
  %i.l = fmul float %i.d, 1.023000e+03            ; 2 uses
  %i.m = fpext float %i.l to double
  %i.n = fadd double %i.m, f0x4238000000000000
  %i.o = bitcast double %i.n to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.o to i32
  %i.p = ashr i32 %.sroa.0.0.extract.trunc.i.i, 16 ; 2 uses
  %i.q = sitofp i32 %i.p to float
  %i.r = fsub float %i.l, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !17 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !17
  %i.x = fsub float %i.w, %i.u
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.r, float %i.u)
  br label %LinLerp1D.exit

LinLerp1D.exit:                                   ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi float [ %i.i, %bb.b ], [ %i.k, %bb.d ], [ %i.y, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %.0.i, ptr %i.z, align 4, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !17 ; 3 uses
  %i.ac = fcmp ult float %i.ab, 1.000000e+00
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %LinLerp1D.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8204
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !17
  br label %LinLerp1D.exit10

bb.g:                                             ; preds = %LinLerp1D.exit
  %i.af = fcmp ugt float %i.ab, 0.000000e+00
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load float, ptr %i.f, align 4, !tbaa !17
  br label %LinLerp1D.exit10

bb.i:                                             ; preds = %bb.g
  %i.ah = fmul float %i.ab, 1.023000e+03          ; 2 uses
  %i.ai = fpext float %i.ah to double
  %i.aj = fadd double %i.ai, f0x4238000000000000
  %i.ak = bitcast double %i.aj to i64
  %.sroa.0.0.extract.trunc.i.i9 = trunc i64 %i.ak to i32
  %i.al = ashr i32 %.sroa.0.0.extract.trunc.i.i9, 16 ; 2 uses
  %i.am = sitofp i32 %i.al to float
  %i.an = fsub float %i.ah, %i.am
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ao ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !17 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !17
  %i.at = fsub float %i.as, %i.aq
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.an, float %i.aq)
  br label %LinLerp1D.exit10

LinLerp1D.exit10:                                 ; preds = %bb.f, %bb.h, %bb.i
  %.0.i8 = phi float [ %i.ae, %bb.f ], [ %i.ag, %bb.h ], [ %i.au, %bb.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %.0.i8, ptr %i.av, align 4, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  call void @cmsPipelineEvalFloat(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %i.ax) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 1
}

declare void @cmsPipelineFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @LabCLUTEval(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [16 x ptr], align 16              ; 12 uses
  %i.b = alloca [16 x i32], align 16              ; 7 uses
  %i.c = alloca [16 x i32], align 16              ; 7 uses
  %i.d = alloca [16 x i32], align 16              ; 9 uses
  %i.e = alloca [16 x i32], align 16              ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = tail call ptr @_cmsGetTransformUserData(ptr noundef %0) #5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.o = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #5
  %i.p = tail call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !43
  call void @_cmsComputeComponentIncrements(i32 noundef %i.o, i32 noundef %i.r, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !44
  call void @_cmsComputeComponentIncrements(i32 noundef %i.p, i32 noundef %i.t, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %i.u = call i32 @_cmsGetTransformFlags(ptr noundef %0) #5
  %i.v = and i32 %i.u, 67108864
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not353 = icmp eq i32 %4, 0
  br i1 %.not353, label %._crit_edge334, label %.lr.ph333

.lr.ph333:                                        ; preds = %bb.c
  %i.w = load i32, ptr %i.b, align 16, !tbaa !11
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !11
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !11
  %.fr = freeze i32 %i.ah
  %.not296 = icmp eq i32 %.fr, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.not354 = icmp eq i32 %3, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 4108 ; 2 uses
  %i.al = load i32, ptr %i.c, align 16
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = zext i32 %i.ar to i64
  %.not355 = icmp eq i32 %i.l, 0                  ; 2 uses
  %i.at = zext i32 %i.l to i64                    ; 8 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.at
  %i.ax = load i32, ptr %5, align 4, !tbaa !45
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !46
  %i.bb = zext i32 %i.ba to i64                   ; 3 uses
  br i1 %.not354, label %.lr.ph333.split, label %.lr.ph333.split.us

.lr.ph333.split.us:                               ; preds = %.lr.ph333
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 148
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 140
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.bg = load <3 x i32>, ptr %i.bf, align 8, !tbaa !11
  %i.bh = shufflevector <3 x i32> %i.bg, <3 x i32> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.bi = uitofp <4 x i32> %i.bh to <4 x float>
  %i.bj = load i32, ptr %i.bd, align 4, !tbaa !11 ; 2 uses
  %i.bk = load i32, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %i.bl = load i32, ptr %i.be, align 4, !tbaa !11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge327.us, %.lr.ph333.split.us
  %.0331.us = phi i64 [ 0, %.lr.ph333.split.us ], [ %i.me, %._crit_edge327.us ] ; 2 uses
  %.0280330.us = phi i64 [ 0, %.lr.ph333.split.us ], [ %i.md, %._crit_edge327.us ] ; 5 uses
  %.0281329.us = phi ptr [ null, %.lr.ph333.split.us ], [ %.3.us, %._crit_edge327.us ]
  %.0287328.us = phi i32 [ 0, %.lr.ph333.split.us ], [ %i.mf, %._crit_edge327.us ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0280330.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0280330.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0280330.us
  %i.bp = load i32, ptr %i.ai, align 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.0280330.us
  %.1.us = select i1 %.not296, ptr %.0281329.us, ptr %i.bs ; 2 uses
  %.not297.us = icmp ne ptr %.1.us, null
  %i.bt = zext i1 %.not297.us to i32
  %.0288.us = add i32 %i.l, %i.bt                 ; 3 uses
  %invariant.gep.us = getelementptr i8, ptr %2, i64 %.0331.us ; 3 uses
  %.not358 = icmp eq i32 %.0288.us, 0
  br i1 %.not358, label %.preheader.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.d
  %wide.trip.count = zext i32 %.0288.us to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %.0288.us, 4
  br i1 %min.iters.check, label %.lr.ph.us.preheader446, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %wide.load = load <2 x i32>, ptr %i.bu, align 16, !tbaa !11
  %wide.load412 = load <2 x i32>, ptr %i.bv, align 8, !tbaa !11
  %i.bw = zext <2 x i32> %wide.load to <2 x i64>
  %i.bx = zext <2 x i32> %wide.load412 to <2 x i64>
  %wide.gep = getelementptr i8, ptr %invariant.gep.us, <2 x i64> %i.bw
  %wide.gep413 = getelementptr i8, ptr %invariant.gep.us, <2 x i64> %i.bx
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <2 x ptr> %wide.gep, ptr %i.by, align 16, !tbaa !48
  store <2 x ptr> %wide.gep413, ptr %i.bz, align 16, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader.us, label %.lr.ph.us.preheader446

.lr.ph.us.preheader446:                           ; preds = %.lr.ph.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader446, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us ], [ %indvars.iv.ph, %.lr.ph.us.preheader446 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !11
  %i.cd = zext i32 %i.cc to i64
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.cd
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %gep.us, ptr %i.ce, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.us, label %.lr.ph.us, !llvm.loop !31

.preheader.us:                                    ; preds = %.lr.ph.us, %middle.block, %bb.d
  %i.cf = load i32, ptr %i.av, align 4
  %i.cg = zext i32 %i.cf to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.w
  %.2325.us = phi ptr [ %.1.us, %.preheader.us ], [ %.3.us, %bb.w ] ; 3 uses
  %.0282324.us = phi ptr [ %i.bo, %.preheader.us ], [ %i.el, %bb.w ] ; 2 uses
  %.0283323.us = phi ptr [ %i.bn, %.preheader.us ], [ %i.ek, %bb.w ] ; 2 uses
  %.0284322.us = phi ptr [ %i.bm, %.preheader.us ], [ %i.ej, %bb.w ] ; 2 uses
  %.1286321.us = phi i32 [ 0, %.preheader.us ], [ %i.mc, %bb.w ]
  %i.ch = load float, ptr %.0284322.us, align 4, !tbaa !17 ; 3 uses
  %6 = fcmp olt float %i.ch, f0x3089705F
  %7 = fcmp uno float %i.ch, 0.000000e+00
  %or.cond.i.us = or i1 %6, %7
  %i.ci = load float, ptr %.0283323.us, align 4, !tbaa !17 ; 3 uses
  %8 = fcmp olt float %i.ci, -1.280000e+02
  %9 = fcmp uno float %i.ci, 0.000000e+00
  %or.cond.i311.us = or i1 %8, %9
  %i.cj = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.ci, i64 1 ; 2 uses
  %i.cl = fcmp ogt <2 x float> %i.ck, <float 1.000000e+02, float 1.280000e+02>
  %i.cm = select <2 x i1> %i.cl, <2 x float> <float 1.000000e+02, float 1.280000e+02>, <2 x float> %i.ck
  %i.cn = fadd <2 x float> %i.cm, <float -0.000000e+00, float 1.280000e+02>
  %i.co = fdiv <2 x float> %i.cn, <float 1.000000e+02, float 2.550000e+02> ; 2 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %i.cq = select i1 %or.cond.i.us, float 0.000000e+00, float %i.cp ; 2 uses
  %i.cr = extractelement <2 x float> %i.co, i64 1
  %i.cs = select i1 %or.cond.i311.us, float 0.000000e+00, float %i.cr ; 3 uses
  %i.ct = fcmp ult float %i.cs, 1.000000e+00
  br i1 %i.ct, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cu = load float, ptr %i.ak, align 4, !tbaa !17
  br label %LinLerp1D.exit.us

bb.g:                                             ; preds = %bb.e
  %i.cv = fcmp ugt float %i.cs, 0.000000e+00
  br i1 %i.cv, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = load float, ptr %i.aj, align 8, !tbaa !17
  br label %LinLerp1D.exit.us

bb.i:                                             ; preds = %bb.g
  %i.cx = fmul float %i.cs, 1.023000e+03          ; 2 uses
  %i.cy = fpext float %i.cx to double
  %i.cz = fadd double %i.cy, f0x4238000000000000
  %i.da = bitcast double %i.cz to i64
  %.sroa.0.0.extract.trunc.i.i.us = trunc i64 %i.da to i32
  %i.db = ashr i32 %.sroa.0.0.extract.trunc.i.i.us, 16 ; 2 uses
  %i.dc = sitofp i32 %i.db to float
  %i.dd = fsub float %i.cx, %i.dc
  %i.de = sext i32 %i.db to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.de ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !17 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.df, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !17
  %i.dj = fsub float %i.di, %i.dg
  %i.dk = call float @llvm.fmuladd.f32(float %i.dj, float %i.dd, float %i.dg)
  br label %LinLerp1D.exit.us

LinLerp1D.exit.us:                                ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.us = phi float [ %i.cu, %bb.f ], [ %i.cw, %bb.h ], [ %i.dk, %bb.i ] ; 2 uses
  %i.dl = load float, ptr %.0282324.us, align 4, !tbaa !17 ; 4 uses
  %10 = fcmp olt float %i.dl, -1.280000e+02
  %11 = fcmp uno float %i.dl, 0.000000e+00
  %or.cond.i312.us = or i1 %10, %11
  %i.dm = fcmp ogt float %i.dl, 1.280000e+02
  %i.dn = select i1 %i.dm, float 1.280000e+02, float %i.dl
  %i.do = fadd float %i.dn, 1.280000e+02
  %i.dp = fdiv float %i.do, 2.550000e+02
  %i.dq = select i1 %or.cond.i312.us, float 0.000000e+00, float %i.dp ; 3 uses
  %i.dr = fcmp ult float %i.dq, 1.000000e+00
  br i1 %i.dr, label %bb.k, label %bb.j

bb.j:                                             ; preds = %LinLerp1D.exit.us
  %i.ds = load float, ptr %i.ak, align 4, !tbaa !17
  br label %LinLerp1D.exit315.us

bb.k:                                             ; preds = %LinLerp1D.exit.us
  %i.dt = fcmp ugt float %i.dq, 0.000000e+00
  br i1 %i.dt, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.du = load float, ptr %i.aj, align 8, !tbaa !17
  br label %LinLerp1D.exit315.us

bb.m:                                             ; preds = %bb.k
  %i.dv = fmul float %i.dq, 1.023000e+03          ; 2 uses
  %i.dw = fpext float %i.dv to double
  %i.dx = fadd double %i.dw, f0x4238000000000000
  %i.dy = bitcast double %i.dx to i64
  %.sroa.0.0.extract.trunc.i.i314.us = trunc i64 %i.dy to i32
  %i.dz = ashr i32 %.sroa.0.0.extract.trunc.i.i314.us, 16 ; 2 uses
  %i.ea = sitofp i32 %i.dz to float
  %i.eb = fsub float %i.dv, %i.ea
  %i.ec = sext i32 %i.dz to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ec ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !17 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ed, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !17
  %i.eh = fsub float %i.eg, %i.ee
  %i.ei = call float @llvm.fmuladd.f32(float %i.eh, float %i.eb, float %i.ee)
  br label %LinLerp1D.exit315.us

LinLerp1D.exit315.us:                             ; preds = %bb.m, %bb.l, %bb.j
  %.0.i313.us = phi float [ %i.ds, %bb.j ], [ %i.du, %bb.l ], [ %i.ei, %bb.m ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0284322.us, i64 %i.am
  %i.ek = getelementptr inbounds nuw i8, ptr %.0283323.us, i64 %i.ap
  %i.el = getelementptr inbounds nuw i8, ptr %.0282324.us, i64 %i.as
  %i.em = insertelement <4 x float> poison, float %.0.i.us, i64 0
  %i.en = insertelement <4 x float> %i.em, float %.0.i313.us, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.cq, i64 3
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.eq = fmul <4 x float> %i.ep, %i.bi           ; 2 uses
  %i.er = fpext <4 x float> %i.eq to <4 x double>
  %i.es = fadd <4 x double> %i.er, splat (double f0x4238000000000000)
  %i.et = bitcast <4 x double> %i.es to <4 x i64>
  %i.eu = trunc <4 x i64> %i.et to <4 x i32>
  %i.ev = ashr <4 x i32> %i.eu, splat (i32 16)    ; 4 uses
  %i.ew = sitofp <4 x i32> %i.ev to <4 x float>
  %i.ex = fsub <4 x float> %i.eq, %i.ew           ; 7 uses
  %i.ey = extractelement <4 x float> %i.ex, i64 3 ; 4 uses
  %i.ez = extractelement <4 x float> %i.ex, i64 1 ; 5 uses
  %i.fa = extractelement <4 x float> %i.ex, i64 0 ; 4 uses
  br i1 %.not355, label %._crit_edge.us, label %.lr.ph320.us

.lr.ph320.us:                                     ; preds = %LinLerp1D.exit315.us
  %i.fb = extractelement <4 x i32> %i.ev, i64 1
  %i.fc = mul i32 %i.fb, %i.bl                    ; 5 uses
  %i.fd = fcmp ult float %.0.i313.us, 1.000000e+00
  %i.fe = select i1 %i.fd, i32 %i.bl, i32 0
  %i.ff = add i32 %i.fc, %i.fe                    ; 6 uses
  %i.fg = extractelement <4 x i32> %i.ev, i64 0
  %i.fh = mul i32 %i.fg, %i.bk                    ; 4 uses
  %i.fi = fcmp ult float %.0.i.us, 1.000000e+00
  %i.fj = select i1 %i.fi, i32 %i.bk, i32 0
  %i.fk = add i32 %i.fh, %i.fj                    ; 3 uses
  %i.fl = extractelement <4 x i32> %i.ev, i64 3
  %i.fm = mul i32 %i.fl, %i.bj                    ; 4 uses
  %i.fn = fcmp ult float %i.cq, 1.000000e+00
  %spec.select.us = select i1 %i.fn, i32 %i.bj, i32 0
  %i.fo = add i32 %i.fm, %spec.select.us          ; 3 uses
  %i.fp = add nsw i32 %i.fh, %i.fm                ; 2 uses
  %i.fq = add nsw i32 %i.fp, %i.fc                ; 3 uses
  %i.fr = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.fs = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ft = fcmp ult <4 x float> %i.fr, %i.fs       ; 3 uses
  %i.fu = shufflevector <4 x i1> %i.ft, <4 x i1> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.fv = fcmp ult float %i.fa, %i.ez
  %i.fw = extractelement <4 x i1> %i.ft, i64 3
  %or.cond.us = select i1 %i.fw, i1 true, i1 %i.fv
  %i.fx = add nsw i32 %i.fo, %i.fh                ; 2 uses
  %i.fy = add nsw i32 %i.fx, %i.fc                ; 2 uses
  %i.fz = add nsw i32 %i.fk, %i.fo                ; 2 uses
  %i.ga = add nsw i32 %i.fz, %i.fc                ; 2 uses
  %i.gb = add nsw i32 %i.fz, %i.ff                ; 6 uses
  %i.gc = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.gd = fcmp ult <4 x float> %i.ex, %i.gc
  %i.ge = add nsw i32 %i.ff, %i.fx
  %i.gf = add i32 %i.ff, %i.fo
  %i.gg = add i32 %i.gf, %i.fh
  %i.gh = add nsw i32 %i.ff, %i.fp                ; 2 uses
  %i.gi = add nsw i32 %i.fk, %i.fm                ; 2 uses
  %i.gj = add nsw i32 %i.gi, %i.fc                ; 2 uses
  %i.gk = add nsw i32 %i.gi, %i.ff
  %i.gl = or <4 x i1> %i.gd, %i.fu                ; 4 uses
  %i.gm = add i32 %i.ff, %i.fk
  %i.gn = add i32 %i.gm, %i.fm
  br i1 %or.cond.us, label %.lr.ph320.split.us.us, label %.lr.ph320.split.us335

.lr.ph320.split.us335:                            ; preds = %.lr.ph320.us, %.lr.ph320.split.us335
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %.lr.ph320.split.us335 ], [ 0, %.lr.ph320.us ] ; 4 uses
  %i.go = trunc nuw i64 %indvars.iv364 to i32     ; 4 uses
  %i.gp = add i32 %i.fq, %i.go
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !17 ; 2 uses
  %i.gt = add i32 %i.fy, %i.go
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.gu
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !17 ; 2 uses
  %i.gx = fsub float %i.gw, %i.gs
  %i.gy = add i32 %i.ga, %i.go
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.gz
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !17 ; 2 uses
  %i.hc = fsub float %i.hb, %i.gw
  %i.hd = add i32 %i.gb, %i.go
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.he
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !17
  %i.hh = fsub float %i.hg, %i.hb
  %i.hi = call float @llvm.fmuladd.f32(float %i.gx, float %i.ey, float %i.gs)
  %i.hj = call float @llvm.fmuladd.f32(float %i.hc, float %i.fa, float %i.hi)
  %i.hk = call float @llvm.fmuladd.f32(float %i.hh, float %i.ez, float %i.hj)
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv364 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !48 ; 2 uses
  store float %i.hk, ptr %i.hm, align 4, !tbaa !17
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv364
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !11
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hp
  store ptr %i.hq, ptr %i.hl, align 8, !tbaa !48
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %i.at
  br i1 %exitcond368.not, label %._crit_edge.us, label %.lr.ph320.split.us335, !llvm.loop !32

.lr.ph320.split.us.us:                            ; preds = %.lr.ph320.us
  %i.hr = fcmp ult float %i.ey, %i.ez
  %i.hs = extractelement <4 x i1> %i.ft, i64 1
  %or.cond301.us = select i1 %i.hr, i1 true, i1 %i.hs
  br i1 %or.cond301.us, label %.lr.ph320.split.us.split.us.us.preheader, label %.lr.ph320.split.us.split.us338

.lr.ph320.split.us.split.us.us.preheader:         ; preds = %.lr.ph320.split.us.us
  %i.ht = extractelement <4 x i1> %i.gl, i64 1
  %i.hu = extractelement <4 x i1> %i.gl, i64 3
  %i.hv = extractelement <4 x i1> %i.gl, i64 2
  %i.hw = extractelement <4 x i1> %i.gl, i64 0
  br label %.lr.ph320.split.us.split.us.us

.lr.ph320.split.us.split.us338:                   ; preds = %.lr.ph320.split.us.us, %.lr.ph320.split.us.split.us338
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %.lr.ph320.split.us.split.us338 ], [ 0, %.lr.ph320.split.us.us ] ; 4 uses
  %i.hx = trunc nuw i64 %indvars.iv369 to i32     ; 4 uses
  %i.hy = add i32 %i.fq, %i.hx
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !17 ; 2 uses
  %i.ic = add i32 %i.fy, %i.hx
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !17 ; 2 uses
  %i.ig = fsub float %i.if, %i.ib
  %i.ih = add i32 %i.gb, %i.hx
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ii
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !17
  %i.il = add i32 %i.ge, %i.hx
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !17 ; 2 uses
  %i.ip = fsub float %i.ik, %i.io
  %i.iq = fsub float %i.io, %i.if
  %i.ir = call float @llvm.fmuladd.f32(float %i.ig, float %i.ey, float %i.ib)
  %i.is = call float @llvm.fmuladd.f32(float %i.ip, float %i.fa, float %i.ir)
  %i.it = call float @llvm.fmuladd.f32(float %i.iq, float %i.ez, float %i.is)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv369 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !48 ; 2 uses
  store float %i.it, ptr %i.iv, align 4, !tbaa !17
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv369
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !11
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iy
  store ptr %i.iz, ptr %i.iu, align 8, !tbaa !48
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %i.at
  br i1 %exitcond373.not, label %._crit_edge.us, label %.lr.ph320.split.us.split.us338, !llvm.loop !32

.lr.ph320.split.us.split.us.us:                   ; preds = %.lr.ph320.split.us.split.us.us.preheader, %bb.u
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %bb.u ], [ 0, %.lr.ph320.split.us.split.us.us.preheader ] ; 4 uses
  %i.ja = trunc nuw i64 %indvars.iv374 to i32     ; 13 uses
  %i.jb = add i32 %i.fq, %i.ja
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.jc
  %i.je = load float, ptr %i.jd, align 4, !tbaa !17 ; 5 uses
  br i1 %i.ht, label %bb.o, label %bb.n

end_hunk_0
