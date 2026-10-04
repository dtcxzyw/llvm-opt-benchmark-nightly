Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fast_float_curves?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @OptimizeFloatByJoiningCurves(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 15 uses
  %i.b = alloca [3 x float], align 4              ; 10 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !27     ; 5 uses
  %i.d = load i32, ptr %4, align 4, !tbaa !10     ; 4 uses
  %i.e = and i32 %i.d, 4194304
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.g = and i32 %i.f, 4194304
  %.not29 = icmp eq i32 %i.g, 0
  br i1 %.not29, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.d, 7
  %.not30 = icmp eq i32 %i.h, 4
  %i.i = and i32 %i.f, 7
  %.not31 = icmp eq i32 %i.i, 4
  %or.cond = and i1 %.not30, %.not31
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i32 %i.d, 3
  %i.k = and i32 %i.j, 15                         ; 5 uses
  %i.l = lshr i32 %i.f, 3
  %i.m = and i32 %i.l, 15
  %.not32 = icmp eq i32 %i.k, %i.m
  %i.n = and i32 %i.d, 104
  %or.cond.not = icmp eq i32 %i.n, 8
  %or.cond37 = and i1 %or.cond.not, %.not32
  br i1 %or.cond37, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @cmsPipelineGetPtrToFirstStage(ptr noundef %i.c) #6 ; 2 uses
  %.not3345 = icmp eq ptr %i.o, null
  br i1 %.not3345, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.046 = phi ptr [ %i.q, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %i.p = tail call i32 @cmsStageType(ptr noundef nonnull %.046) #6
  %.not36 = icmp eq i32 %i.p, 1668707188
  br i1 %.not36, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.q = tail call ptr @cmsStageNext(ptr noundef nonnull %.046) #6 ; 2 uses
  %.not33 = icmp eq ptr %i.q, null
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.r = tail call ptr @cmsGetPipelineContextID(ptr noundef %i.c) #6
  %i.s = tail call ptr @_cmsMallocZero(ptr noundef %i.r, i32 noundef 393272) #6 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, -16
  %i.v = add i64 %i.u, 16
  %i.w = inttoptr i64 %i.v to ptr                 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 393232
  store ptr %i.s, ptr %i.x, align 16, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 131076 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 262152 ; 2 uses
  switch i32 %i.k, label %.preheader.us28.preheader.i [
    i32 1, label %._crit_edge.us.us.i
    i32 0, label %.preheader.i
  ]

._crit_edge.us.us.i:                              ; preds = %._crit_edge, %._crit_edge.us.us.i
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %._crit_edge.us.us.i ], [ 0, %._crit_edge ] ; 3 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv49.i to i32
  %i.ad = uitofp nneg i32 %i.ac to float
  %i.ae = fmul nnan float %i.ad, f0x38000000
  store float %i.ae, ptr %i.a, align 4, !tbaa !15
  call void @cmsPipelineEvalFloat(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.c) #6
  %i.af = load float, ptr %i.b, align 4, !tbaa !15
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv49.i
  store float %i.af, ptr %i.ag, align 4, !tbaa !15
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 32769
  br i1 %exitcond52.not.i, label %ComputeCompositeCurves.exit, label %._crit_edge.us.us.i, !llvm.loop !23

.preheader.us28.preheader.i:                      ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  %min.iters.check = icmp samesign ult i32 %i.k, 8
  br label %.preheader.us28.i

.preheader.us28.i:                                ; preds = %._crit_edge.us32.i, %.preheader.us28.preheader.i
  %indvars.iv36.i = phi i64 [ 0, %.preheader.us28.preheader.i ], [ %indvars.iv.next37.i, %._crit_edge.us32.i ] ; 5 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv36.i to i32
  %i.ai = uitofp nneg i32 %i.ah to float
  %i.aj = fmul nnan float %i.ai, f0x38000000      ; 9 uses
  br i1 %min.iters.check, label %.epil.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us28.i, %vector.body
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %vector.body ], [ 0, %.preheader.us28.i ] ; 9 uses
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us28.i ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store float %i.aj, ptr %7, align 4, !tbaa !15
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.aj, ptr %9, align 4, !tbaa !15
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %i.aj, ptr %11, align 4, !tbaa !15
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 12
  store float %i.aj, ptr %13, align 4, !tbaa !15
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store float %i.aj, ptr %15, align 4, !tbaa !15
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 20
  store float %i.aj, ptr %17, align 4, !tbaa !15
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store float %i.aj, ptr %19, align 4, !tbaa !15
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %20 = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store float %i.aj, ptr %20, align 4, !tbaa !15
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %index.next = add i64 %index, 8                 ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %index.next, 0
  br i1 %niter.ncmp.7, label %.epil.preheader, label %vector.body, !llvm.loop !24

.epil.preheader:                                  ; preds = %vector.body, %.preheader.us28.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us28.i ], [ %indvars.iv.next.i.7, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %scalar.ph ], [ %indvars.iv.i.epil.init, %.epil.preheader ] ; 2 uses
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.epil
  store float %i.aj, ptr %i.al, align 4, !tbaa !15
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %indvars.iv.next.i = add i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us32.i, label %scalar.ph, !llvm.loop !25

._crit_edge.us32.i:                               ; preds = %scalar.ph
  call void @cmsPipelineEvalFloat(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.c) #6
  %i.am = load float, ptr %i.b, align 4, !tbaa !15
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv36.i
  store float %i.am, ptr %i.an, align 4, !tbaa !15
  %i.ao = load float, ptr %i.y, align 4, !tbaa !15
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv36.i
  store float %i.ao, ptr %i.ap, align 4, !tbaa !15
  %i.aq = load float, ptr %i.aa, align 4, !tbaa !15
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv36.i
  store float %i.aq, ptr %i.ar, align 4, !tbaa !15
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, 32769
  br i1 %exitcond39.not.i, label %ComputeCompositeCurves.exit, label %.preheader.us28.i, !llvm.loop !23

.preheader.i:                                     ; preds = %._crit_edge, %.preheader.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %.preheader.i ], [ 0, %._crit_edge ] ; 4 uses
  call void @cmsPipelineEvalFloat(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.c) #6
  %i.as = load float, ptr %i.b, align 4, !tbaa !15
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv40.i
  store float %i.as, ptr %i.at, align 4, !tbaa !15
  %i.au = load float, ptr %i.y, align 4, !tbaa !15
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv40.i
  store float %i.au, ptr %i.av, align 4, !tbaa !15
  %i.aw = load float, ptr %i.aa, align 4, !tbaa !15
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv40.i
  store float %i.aw, ptr %i.ax, align 4, !tbaa !15
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next41.i, 32769
  br i1 %exitcond43.not.i, label %ComputeCompositeCurves.exit, label %.preheader.i, !llvm.loop !23

ComputeCompositeCurves.exit:                      ; preds = %.preheader.i, %._crit_edge.us.us.i, %._crit_edge.us32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ay = load i32, ptr %6, align 4, !tbaa !10
  %i.az = and i32 %i.ay, -33554497
  %i.ba = or disjoint i32 %i.az, 64
  store i32 %i.ba, ptr %6, align 4, !tbaa !10
  store ptr %i.w, ptr %1, align 8, !tbaa !28
  store ptr @free_aligned, ptr %2, align 8, !tbaa !28
  %i.bb = icmp eq i32 %i.k, 1
  br i1 %i.bb, label %.preheader, label %bb.i

bb.g:                                             ; preds = %.preheader
  %exitcond.not.i40 = icmp eq i64 %indvars.iv.i38, 32768
  br i1 %exitcond.not.i40, label %KCurveIsLinear.exit, label %.preheader.1

.preheader.1:                                     ; preds = %bb.g
  %indvars.iv.next.i39 = or disjoint i64 %indvars.iv.i38, 1 ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i39 to i32
  %i.bd = uitofp nneg i32 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x38000000
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i39
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !15
  %i.bh = fsub float %i.bg, %i.be
  %i.bi = call float @llvm.fabs.f32(float %i.bh)
  %i.bj = fpext float %i.bi to double
  %i.bk = fcmp ogt double %i.bj, 1.000000e-05
  br i1 %i.bk, label %KCurveIsLinear.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.1
  %indvars.iv.next.i39.1 = add nuw nsw i64 %indvars.iv.i38, 2
  br label %.preheader

.preheader:                                       ; preds = %ComputeCompositeCurves.exit, %bb.h
  %indvars.iv.i38 = phi i64 [ %indvars.iv.next.i39.1, %bb.h ], [ 0, %ComputeCompositeCurves.exit ] ; 5 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv.i38 to i32
  %i.bm = uitofp nneg i32 %i.bl to float
  %i.bn = fmul nnan float %i.bm, f0x38000000
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i38
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !15
  %i.bq = fsub float %i.bp, %i.bn
  %i.br = call float @llvm.fabs.f32(float %i.bq)
  %i.bs = fpext float %i.br to double
  %i.bt = fcmp ogt double %i.bs, 1.000000e-05
  br i1 %i.bt, label %KCurveIsLinear.exit, label %bb.g

bb.i:                                             ; preds = %ComputeCompositeCurves.exit
  %i.bu = call fastcc i32 @AllRGBCurvesAreLinear(ptr noundef nonnull %i.w)
  %.not34 = icmp eq i32 %i.bu, 0
  %i.bv = select i1 %.not34, ptr @FastEvaluateFloatRGBCurves, ptr @FastFloatRGBIdentity
  br label %KCurveIsLinear.exit

KCurveIsLinear.exit:                              ; preds = %bb.g, %.preheader, %.preheader.1, %bb.i
  %storemerge = phi ptr [ %i.bv, %bb.i ], [ @FastEvaluateFloatGrayCurves, %.preheader ], [ @FastFloatGrayIdentity, %bb.g ], [ @FastEvaluateFloatGrayCurves, %.preheader.1 ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a, %bb.b, %KCurveIsLinear.exit
  %.027 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ], [ 1, %KCurveIsLinear.exit ], [ 0, %.lr.ph ]
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @cmsPipelineGetPtrToFirstStage(ptr noundef) local_unnamed_addr #2

declare i32 @cmsStageType(ptr noundef) local_unnamed_addr #2

declare ptr @cmsStageNext(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @free_aligned(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 393232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  tail call void @_cmsFree(ptr noundef %0, ptr noundef %i.b) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FastFloatGrayIdentity(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 5 uses
  %i.b = alloca [16 x i32], align 16              ; 5 uses
  %i.c = alloca [16 x i32], align 16              ; 5 uses
  %i.d = alloca [16 x i32], align 16              ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.g = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #6
  %i.h = tail call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !18
  call void @_cmsComputeComponentIncrements(i32 noundef %i.g, i32 noundef %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  call void @_cmsComputeComponentIncrements(i32 noundef %i.h, i32 noundef %i.l, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.m = call i32 @_cmsGetTransformFlags(ptr noundef %0) #6
  %i.n = and i32 %i.m, 67108864
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.f, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not61 = icmp eq i32 %4, 0
  br i1 %.not61, label %._crit_edge58.split, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.c
  %i.o = load i32, ptr %i.a, align 16, !tbaa !10
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.c, align 16, !tbaa !10
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.not62 = icmp eq i32 %3, 0
  %i.w = load i32, ptr %i.b, align 16
  %i.x = zext i32 %i.w to i64                     ; 11 uses
  %i.y = load i32, ptr %i.d, align 16
  %i.z = zext i32 %i.y to i64                     ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ac = load i32, ptr %5, align 4, !tbaa !20
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  br i1 %.not62, label %._crit_edge58.split, label %.lr.ph57.split

.lr.ph57.split:                                   ; preds = %.lr.ph57
  %i.ah = load i32, ptr %i.f, align 4, !tbaa !10
  %.fr = freeze i32 %i.ah
  %.not43 = icmp eq i32 %.fr, 0
  br i1 %.not43, label %.lr.ph.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph57.split
  %xtraiter = and i32 %3, 1
  %i.ai = icmp eq i32 %3, 1
  %unroll_iter = and i32 %3, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod75 = trunc i32 %3 to i1
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph57.split
  %xtraiter77 = and i32 %3, 7                     ; 3 uses
  %i.aj = icmp ult i32 %3, 8
  %unroll_iter80 = and i32 %3, -8
  %lcmp.mod78.not = icmp eq i32 %xtraiter77, 0
  %lcmp.mod79 = icmp ne i32 %xtraiter77, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.055.us = phi i64 [ %i.bo, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %.03354.us = phi i64 [ %i.bn, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %.04251.us = phi i32 [ %i.bp, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %.03354.us ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 %.055.us ; 2 uses
  br i1 %i.aj, label %.epil.preheader76, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.03548.us = phi ptr [ %i.bi, %.lr.ph.us.new ], [ %i.al, %.lr.ph.us ] ; 2 uses
  %.04046.us = phi ptr [ %i.bj, %.lr.ph.us.new ], [ %i.ak, %.lr.ph.us ] ; 2 uses
  %niter81 = phi i32 [ %niter81.next.7, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.am = load float, ptr %.04046.us, align 4, !tbaa !15
  store float %i.am, ptr %.03548.us, align 4, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %.03548.us, i64 %i.z ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04046.us, i64 %i.x ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !15
  store float %i.ap, ptr %i.an, align 4, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.z ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.x ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !15
  store float %i.as, ptr %i.aq, align 4, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.z ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.x ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !15
  store float %i.av, ptr %i.at, align 4, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.z ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.x ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !15
  store float %i.ay, ptr %i.aw, align 4, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.z ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.x ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !15
  store float %i.bb, ptr %i.az, align 4, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.z ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.x ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !15
  store float %i.be, ptr %i.bc, align 4, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.z ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.x ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !15
  store float %i.bh, ptr %i.bf, align 4, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.z ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.x ; 2 uses
  %niter81.next.7 = add nuw i32 %niter81, 8       ; 2 uses
  %niter81.ncmp.7 = icmp eq i32 %niter81.next.7, %unroll_iter80
  br i1 %niter81.ncmp.7, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !29

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod78.not, label %._crit_edge.us, label %.epil.preheader76

.epil.preheader76:                                ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.03548.us.epil.init = phi ptr [ %i.al, %.lr.ph.us ], [ %i.bi, %._crit_edge.us.unr-lcssa ]
  %.04046.us.epil.init = phi ptr [ %i.ak, %.lr.ph.us ], [ %i.bj, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader76
  %.03548.us.epil = phi ptr [ %.03548.us.epil.init, %.epil.preheader76 ], [ %i.bl, %bb.d ] ; 2 uses
  %.04046.us.epil = phi ptr [ %.04046.us.epil.init, %.epil.preheader76 ], [ %i.bm, %bb.d ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader76 ], [ %epil.iter.next, %bb.d ]
  %i.bk = load float, ptr %.04046.us.epil, align 4, !tbaa !15
  store float %i.bk, ptr %.03548.us.epil, align 4, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %.03548.us.epil, i64 %i.z
  %i.bm = getelementptr inbounds nuw i8, ptr %.04046.us.epil, i64 %i.x
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter77
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.d, !llvm.loop !30

._crit_edge.us:                                   ; preds = %bb.d, %._crit_edge.us.unr-lcssa
  %i.bn = add nuw i64 %.03354.us, %i.ad
  %i.bo = add nuw i64 %.055.us, %i.ag
  %i.bp = add nuw i32 %.04251.us, 1               ; 2 uses
  %exitcond66.not = icmp eq i32 %i.bp, %4
  br i1 %exitcond66.not, label %._crit_edge58.split, label %.lr.ph.us, !llvm.loop !31

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.055 = phi i64 [ %i.ct, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.03354 = phi i64 [ %i.cs, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.04251 = phi i32 [ %i.cu, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.03354 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 %.055 ; 2 uses
  %i.bs = load i32, ptr %i.u, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.03354 ; 2 uses
  %i.bw = load i32, ptr %i.v, align 4
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.055 ; 2 uses
  %i.ca = load i32, ptr %i.aa, align 4
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = load i32, ptr %i.ab, align 4
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  br i1 %i.ai, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %bb.h
  %.249 = phi ptr [ %.3.1, %bb.h ], [ %i.bz, %.lr.ph ] ; 3 uses
  %.03548 = phi ptr [ %i.cm, %bb.h ], [ %i.br, %.lr.ph ] ; 2 uses
  %.23847 = phi ptr [ %.339.1, %bb.h ], [ %i.bv, %.lr.ph ] ; 3 uses
  %.04046 = phi ptr [ %i.cl, %bb.h ], [ %i.bq, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %bb.h ], [ 0, %.lr.ph ]
  %i.ce = load float, ptr %.04046, align 4, !tbaa !15
  store float %i.ce, ptr %.03548, align 4, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %.04046, i64 %i.x ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.03548, i64 %i.z ; 2 uses
  %.not44 = icmp eq ptr %.23847, null
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.new
  %i.ch = load float, ptr %.23847, align 4, !tbaa !15
  store float %i.ch, ptr %.249, align 4, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %.23847, i64 %i.cb
  %i.cj = getelementptr inbounds nuw i8, ptr %.249, i64 %i.cd
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.new, %bb.e
  %.339 = phi ptr [ %i.ci, %bb.e ], [ null, %.lr.ph.new ] ; 3 uses
  %.3 = phi ptr [ %i.cj, %bb.e ], [ %.249, %.lr.ph.new ] ; 3 uses
  %i.ck = load float, ptr %i.cf, align 4, !tbaa !15
  store float %i.ck, ptr %i.cg, align 4, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.x ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.z ; 2 uses
  %.not44.1 = icmp eq ptr %.339, null
  br i1 %.not44.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cn = load float, ptr %.339, align 4, !tbaa !15
  store float %i.cn, ptr %.3, align 4, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %.339, i64 %i.cb
  %i.cp = getelementptr inbounds nuw i8, ptr %.3, i64 %i.cd
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.339.1 = phi ptr [ %i.co, %bb.g ], [ null, %bb.f ] ; 2 uses
  %.3.1 = phi ptr [ %i.cp, %bb.g ], [ %.3, %bb.f ] ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !29

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.249.epil.init = phi ptr [ %i.bz, %.lr.ph ], [ %.3.1, %._crit_edge.unr-lcssa ]
  %.03548.epil.init = phi ptr [ %i.br, %.lr.ph ], [ %i.cm, %._crit_edge.unr-lcssa ]
  %.23847.epil.init = phi ptr [ %i.bv, %.lr.ph ], [ %.339.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.04046.epil.init = phi ptr [ %i.bq, %.lr.ph ], [ %i.cl, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod75)
  %i.cq = load float, ptr %.04046.epil.init, align 4, !tbaa !15
  store float %i.cq, ptr %.03548.epil.init, align 4, !tbaa !15
  %.not44.epil = icmp eq ptr %.23847.epil.init, null
  br i1 %.not44.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.cr = load float, ptr %.23847.epil.init, align 4, !tbaa !15
  store float %i.cr, ptr %.249.epil.init, align 4, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.i, %._crit_edge.unr-lcssa
  %i.cs = add nuw i64 %.03354, %i.ad
  %i.ct = add nuw i64 %.055, %i.ag
  %i.cu = add nuw i32 %.04251, 1                  ; 2 uses
  %exitcond64.not = icmp eq i32 %i.cu, %4
  br i1 %exitcond64.not, label %._crit_edge58.split, label %.lr.ph, !llvm.loop !31

._crit_edge58.split:                              ; preds = %._crit_edge, %._crit_edge.us, %.lr.ph57, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FastEvaluateFloatGrayCurves(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 5 uses
  %i.b = alloca [16 x i32], align 16              ; 5 uses
  %i.c = alloca [16 x i32], align 16              ; 5 uses
  %i.d = alloca [16 x i32], align 16              ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.g = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #6
  %i.h = tail call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #6
  %i.i = tail call ptr @_cmsGetTransformUserData(ptr noundef %0) #6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  call void @_cmsComputeComponentIncrements(i32 noundef %i.g, i32 noundef %i.k, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %i.l = load i32, ptr %i.j, align 4, !tbaa !18
  call void @_cmsComputeComponentIncrements(i32 noundef %i.h, i32 noundef %i.l, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.m = call i32 @_cmsGetTransformFlags(ptr noundef %0) #6
  %i.n = and i32 %i.m, 67108864
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.f, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not61 = icmp eq i32 %4, 0
  br i1 %.not61, label %._crit_edge60.split, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.c
  %i.o = load i32, ptr %i.a, align 16, !tbaa !10
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i32, ptr %i.c, align 16, !tbaa !10
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.f, align 4, !tbaa !10
  %.not45 = icmp eq i32 %i.u, 0                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.not62 = icmp eq i32 %3, 0
  %i.x = load i32, ptr %i.b, align 16
  %i.y = zext i32 %i.x to i64
  %i.z = load i32, ptr %i.d, align 16
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ad = load i32, ptr %5, align 4, !tbaa !20
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21
  %i.ah = zext i32 %i.ag to i64
  br i1 %.not62, label %._crit_edge60.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph59, %._crit_edge
  %.057 = phi i64 [ %i.bz, %._crit_edge ], [ 0, %.lr.ph59 ] ; 3 uses
  %.03556 = phi i64 [ %i.by, %._crit_edge ], [ 0, %.lr.ph59 ] ; 3 uses
  %.03655 = phi ptr [ %.3, %._crit_edge ], [ null, %.lr.ph59 ]
  %.03854 = phi ptr [ %.341, %._crit_edge ], [ null, %.lr.ph59 ]
  %.04453 = phi i32 [ %i.ca, %._crit_edge ], [ 0, %.lr.ph59 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %.03556
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 %.057
  %i.ak = load i32, ptr %i.v, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.03556
  %i.ao = load i32, ptr %i.w, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.057
  %.139 = select i1 %.not45, ptr %.03854, ptr %i.an
  %.1 = select i1 %.not45, ptr %.03655, ptr %i.ar
  %i.as = load i32, ptr %i.ab, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = load i32, ptr %i.ac, align 4
  %i.av = zext i32 %i.au to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.251 = phi ptr [ %.1, %.lr.ph ], [ %.3, %bb.i ] ; 3 uses
  %.03750 = phi ptr [ %i.aj, %.lr.ph ], [ %i.bt, %bb.i ] ; 2 uses
  %.24049 = phi ptr [ %.139, %.lr.ph ], [ %.341, %bb.i ] ; 3 uses
  %.04248 = phi ptr [ %i.ai, %.lr.ph ], [ %i.bs, %bb.i ] ; 2 uses
  %.04347 = phi i32 [ 0, %.lr.ph ], [ %i.bx, %bb.i ]
  %i.aw = load float, ptr %.04248, align 4, !tbaa !15 ; 5 uses
  %i.ax = fcmp uno float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ay = load float, ptr %i.i, align 4, !tbaa !15
  br label %flerp.exit

bb.f:                                             ; preds = %bb.d
  %i.az = fcmp uge float %i.aw, f0x3089705F
  %i.ba = fcmp ult float %i.aw, 1.000000e+00
  %or.cond.i = and i1 %i.az, %i.ba
  br i1 %or.cond.i, label %bb.g, label %flerp.exit

bb.g:                                             ; preds = %bb.f
  %i.bb = fmul nnan float %i.aw, 3.276800e+04     ; 3 uses
  %i.bc = fpext float %i.bb to double
  %i.bd = fadd double %i.bc, f0x4238000000000000
  %i.be = bitcast double %i.bd to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.be to i32
  %i.bf = ashr i32 %.sroa.0.0.extract.trunc.i.i, 16 ; 2 uses
  %i.bg = call float @llvm.ceil.f32(float %i.bb)
  %i.bh = fptosi float %i.bg to i32
  %i.bi = sitofp i32 %i.bf to float
  %i.bj = fsub float %i.bb, %i.bi
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !15 ; 2 uses
  %i.bn = zext nneg i32 %i.bh to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !15
  %i.bq = fsub float %i.bp, %i.bm
  %i.br = call float @llvm.fmuladd.f32(float %i.bq, float %i.bj, float %i.bm)
  br label %flerp.exit

flerp.exit:                                       ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi float [ %i.ay, %bb.e ], [ %i.br, %bb.g ], [ %i.aw, %bb.f ]
  store float %.0.i, ptr %.03750, align 4, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %.04248, i64 %i.y
  %i.bt = getelementptr inbounds nuw i8, ptr %.03750, i64 %i.aa
  %.not46 = icmp eq ptr %.24049, null
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %flerp.exit
  %i.bu = load float, ptr %.24049, align 4, !tbaa !15
  store float %i.bu, ptr %.251, align 4, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %.24049, i64 %i.at
  %i.bw = getelementptr inbounds nuw i8, ptr %.251, i64 %i.av
  br label %bb.i

bb.i:                                             ; preds = %flerp.exit, %bb.h
  %.341 = phi ptr [ %i.bv, %bb.h ], [ null, %flerp.exit ] ; 2 uses
  %.3 = phi ptr [ %i.bw, %bb.h ], [ %.251, %flerp.exit ] ; 2 uses
  %i.bx = add nuw i32 %.04347, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.i
  %i.by = add nuw i64 %.03556, %i.ae
  %i.bz = add nuw i64 %.057, %i.ah
  %i.ca = add nuw i32 %.04453, 1                  ; 2 uses
  %exitcond63.not = icmp eq i32 %i.ca, %4
  br i1 %exitcond63.not, label %._crit_edge60.split, label %.lr.ph, !llvm.loop !33

._crit_edge60.split:                              ; preds = %._crit_edge, %.lr.ph59, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @AllRGBCurvesAreLinear(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 131076
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 262152
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32769
  br i1 %exitcond.not, label %bb.f, label %bb.c, !llvm.loop !34

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = uitofp nneg i32 %i.c to float
  %i.e = fmul nnan float %i.d, f0x38000000        ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  %i.h = fsub float %i.g, %i.e
  %i.i = tail call float @llvm.fabs.f32(float %i.h)
  %i.j = fpext float %i.i to double
  %i.k = fcmp ogt double %i.j, 1.000000e-05
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !15
  %i.n = fsub float %i.m, %i.e
  %i.o = tail call float @llvm.fabs.f32(float %i.n)
  %i.p = fpext float %i.o to double
  %i.q = fcmp ogt double %i.p, 1.000000e-05
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.s = load float, ptr %i.r, align 4, !tbaa !15
  %i.t = fsub float %i.s, %i.e
  %i.u = tail call float @llvm.fabs.f32(float %i.t)
  %i.v = fpext float %i.u to double
  %i.w = fcmp ogt double %i.v, 1.000000e-05
  br i1 %i.w, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.012 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %bb.b ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define internal void @FastFloatRGBIdentity(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 7 uses
  %i.b = alloca [16 x i32], align 16              ; 7 uses
  %i.c = alloca [16 x i32], align 16              ; 7 uses
  %i.d = alloca [16 x i32], align 16              ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.g = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #6
  %i.h = tail call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !18
  call void @_cmsComputeComponentIncrements(i32 noundef %i.g, i32 noundef %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  call void @_cmsComputeComponentIncrements(i32 noundef %i.h, i32 noundef %i.l, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.m = call i32 @_cmsGetTransformFlags(ptr noundef %0) #6
  %i.n = and i32 %i.m, 67108864
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.f, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not86 = icmp eq i32 %4, 0
  br i1 %.not86, label %._crit_edge83.split, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.c
  %i.o = load i32, ptr %i.a, align 16, !tbaa !10
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !10
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.aa = load i32, ptr %i.c, align 16, !tbaa !10
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !10
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !10
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.not87 = icmp eq i32 %3, 0
  %i.am = load i32, ptr %i.b, align 16
  %i.an = zext i32 %i.am to i64                   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = zext i32 %i.ap to i64                   ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = zext i32 %i.as to i64                   ; 4 uses
  %i.au = load i32, ptr %i.d, align 16
  %i.av = zext i32 %i.au to i64                   ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = zext i32 %i.ax to i64                   ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = zext i32 %i.ba to i64                   ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.be = load i32, ptr %5, align 4, !tbaa !20
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  br i1 %.not87, label %._crit_edge83.split, label %.lr.ph82.split

.lr.ph82.split:                                   ; preds = %.lr.ph82
  %i.bj = load i32, ptr %i.f, align 4, !tbaa !10
  %.fr = freeze i32 %i.bj
  %.not63 = icmp eq i32 %.fr, 0
  br i1 %.not63, label %.lr.ph.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph82.split
  %xtraiter = and i32 %3, 1
  %i.bk = icmp eq i32 %3, 1
  %unroll_iter = and i32 %3, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod100 = trunc i32 %3 to i1
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph82.split
  %xtraiter102 = and i32 %3, 1
  %i.bl = icmp eq i32 %3, 1
  %unroll_iter105 = and i32 %3, -2
  %lcmp.mod103.not = icmp eq i32 %xtraiter102, 0
  %lcmp.mod104 = trunc i32 %3 to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.080.us = phi i64 [ %i.co, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %.04979.us = phi i64 [ %i.cn, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %.06276.us = phi i32 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 %.04979.us ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 %.04979.us ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 %.04979.us ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.080.us ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.080.us ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.080.us ; 2 uses
  br i1 %i.bl, label %.epil.preheader101, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.05173.us = phi ptr [ %i.ce, %.lr.ph.us.new ], [ %i.br, %.lr.ph.us ] ; 2 uses
  %.05272.us = phi ptr [ %i.cf, %.lr.ph.us.new ], [ %i.bq, %.lr.ph.us ] ; 2 uses
  %.05371.us = phi ptr [ %i.cg, %.lr.ph.us.new ], [ %i.bp, %.lr.ph.us ] ; 2 uses
  %.05869.us = phi ptr [ %i.ch, %.lr.ph.us.new ], [ %i.bo, %.lr.ph.us ] ; 2 uses
  %.05968.us = phi ptr [ %i.ci, %.lr.ph.us.new ], [ %i.bn, %.lr.ph.us ] ; 2 uses
  %.06067.us = phi ptr [ %i.cj, %.lr.ph.us.new ], [ %i.bm, %.lr.ph.us ] ; 2 uses
  %niter106 = phi i32 [ %niter106.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.bs = load float, ptr %.06067.us, align 4, !tbaa !15
  store float %i.bs, ptr %.05371.us, align 4, !tbaa !15
  %i.bt = load float, ptr %.05968.us, align 4, !tbaa !15
  store float %i.bt, ptr %.05272.us, align 4, !tbaa !15
  %i.bu = load float, ptr %.05869.us, align 4, !tbaa !15
  store float %i.bu, ptr %.05173.us, align 4, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %.05173.us, i64 %i.bb ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05272.us, i64 %i.ay ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05371.us, i64 %i.av ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.05869.us, i64 %i.at ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.05968.us, i64 %i.aq ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.06067.us, i64 %i.an ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !15
  store float %i.cb, ptr %i.bx, align 4, !tbaa !15
  %i.cc = load float, ptr %i.bz, align 4, !tbaa !15
  store float %i.cc, ptr %i.bw, align 4, !tbaa !15
  %i.cd = load float, ptr %i.by, align 4, !tbaa !15
  store float %i.cd, ptr %i.bv, align 4, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bb ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ay ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.av ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.at ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.aq ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.an ; 2 uses
  %niter106.next.1 = add nuw i32 %niter106, 2     ; 2 uses
  %niter106.ncmp.1 = icmp eq i32 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !35

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod103.not, label %._crit_edge.us, label %.epil.preheader101

.epil.preheader101:                               ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.05173.us.epil.init = phi ptr [ %i.br, %.lr.ph.us ], [ %i.ce, %._crit_edge.us.unr-lcssa ]
  %.05272.us.epil.init = phi ptr [ %i.bq, %.lr.ph.us ], [ %i.cf, %._crit_edge.us.unr-lcssa ]
  %.05371.us.epil.init = phi ptr [ %i.bp, %.lr.ph.us ], [ %i.cg, %._crit_edge.us.unr-lcssa ]
  %.05869.us.epil.init = phi ptr [ %i.bo, %.lr.ph.us ], [ %i.ch, %._crit_edge.us.unr-lcssa ]
  %.05968.us.epil.init = phi ptr [ %i.bn, %.lr.ph.us ], [ %i.ci, %._crit_edge.us.unr-lcssa ]
  %.06067.us.epil.init = phi ptr [ %i.bm, %.lr.ph.us ], [ %i.cj, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.ck = load float, ptr %.06067.us.epil.init, align 4, !tbaa !15
  store float %i.ck, ptr %.05371.us.epil.init, align 4, !tbaa !15
  %i.cl = load float, ptr %.05968.us.epil.init, align 4, !tbaa !15
  store float %i.cl, ptr %.05272.us.epil.init, align 4, !tbaa !15
  %i.cm = load float, ptr %.05869.us.epil.init, align 4, !tbaa !15
  store float %i.cm, ptr %.05173.us.epil.init, align 4, !tbaa !15
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader101
  %i.cn = add nuw i64 %.04979.us, %i.bf
  %i.co = add nuw i64 %.080.us, %i.bi
  %i.cp = add nuw i32 %.06276.us, 1               ; 2 uses
  %exitcond91.not = icmp eq i32 %i.cp, %4
  br i1 %exitcond91.not, label %._crit_edge83.split, label %.lr.ph.us, !llvm.loop !36

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.080 = phi i64 [ %i.el, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.04979 = phi i64 [ %i.ek, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.06276 = phi i32 [ %i.em, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.04979 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 %.04979 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 %.04979 ; 2 uses
  %i.ct = load i32, ptr %i.z, align 4
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.04979 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.080 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.080 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.080 ; 2 uses
  %i.da = load i32, ptr %i.al, align 4
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.080 ; 2 uses
  %i.de = load i32, ptr %i.bc, align 4
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = load i32, ptr %i.bd, align 4
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %bb.g
  %.274 = phi ptr [ %.3.1, %bb.g ], [ %i.dd, %.lr.ph ] ; 3 uses
  %.05173 = phi ptr [ %i.ec, %bb.g ], [ %i.cz, %.lr.ph ] ; 2 uses
  %.05272 = phi ptr [ %i.eb, %bb.g ], [ %i.cy, %.lr.ph ] ; 2 uses
  %.05371 = phi ptr [ %i.ea, %bb.g ], [ %i.cx, %.lr.ph ] ; 2 uses
  %.25670 = phi ptr [ %.357.1, %bb.g ], [ %i.cw, %.lr.ph ] ; 3 uses
  %.05869 = phi ptr [ %i.dz, %bb.g ], [ %i.cs, %.lr.ph ] ; 2 uses
  %.05968 = phi ptr [ %i.dy, %bb.g ], [ %i.cr, %.lr.ph ] ; 2 uses
  %.06067 = phi ptr [ %i.dx, %bb.g ], [ %i.cq, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %bb.g ], [ 0, %.lr.ph ]
  %i.di = load float, ptr %.06067, align 4, !tbaa !15
  store float %i.di, ptr %.05371, align 4, !tbaa !15
  %i.dj = load float, ptr %.05968, align 4, !tbaa !15
  store float %i.dj, ptr %.05272, align 4, !tbaa !15
  %i.dk = load float, ptr %.05869, align 4, !tbaa !15
  store float %i.dk, ptr %.05173, align 4, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %.06067, i64 %i.an ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.05968, i64 %i.aq ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.05869, i64 %i.at ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05371, i64 %i.av ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.05272, i64 %i.ay ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.05173, i64 %i.bb ; 2 uses
  %.not65 = icmp eq ptr %.25670, null
  br i1 %.not65, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.new
  %i.dr = load float, ptr %.25670, align 4, !tbaa !15
  store float %i.dr, ptr %.274, align 4, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %.25670, i64 %i.df
  %i.dt = getelementptr inbounds nuw i8, ptr %.274, i64 %i.dh
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.new, %bb.d
  %.357 = phi ptr [ %i.ds, %bb.d ], [ null, %.lr.ph.new ] ; 3 uses
  %.3 = phi ptr [ %i.dt, %bb.d ], [ %.274, %.lr.ph.new ] ; 3 uses
  %i.du = load float, ptr %i.dl, align 4, !tbaa !15
  store float %i.du, ptr %i.do, align 4, !tbaa !15
  %i.dv = load float, ptr %i.dm, align 4, !tbaa !15
  store float %i.dv, ptr %i.dp, align 4, !tbaa !15
  %i.dw = load float, ptr %i.dn, align 4, !tbaa !15
  store float %i.dw, ptr %i.dq, align 4, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.an ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.aq ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.at ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.av ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ay ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.bb ; 2 uses
  %.not65.1 = icmp eq ptr %.357, null
  br i1 %.not65.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ed = load float, ptr %.357, align 4, !tbaa !15
  store float %i.ed, ptr %.3, align 4, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %.357, i64 %i.df
  %i.ef = getelementptr inbounds nuw i8, ptr %.3, i64 %i.dh
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.357.1 = phi ptr [ %i.ee, %bb.f ], [ null, %bb.e ] ; 2 uses
  %.3.1 = phi ptr [ %i.ef, %bb.f ], [ %.3, %bb.e ] ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !35

._crit_edge.unr-lcssa:                            ; preds = %bb.g
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.274.epil.init = phi ptr [ %i.dd, %.lr.ph ], [ %.3.1, %._crit_edge.unr-lcssa ]
  %.05173.epil.init = phi ptr [ %i.cz, %.lr.ph ], [ %i.ec, %._crit_edge.unr-lcssa ]
  %.05272.epil.init = phi ptr [ %i.cy, %.lr.ph ], [ %i.eb, %._crit_edge.unr-lcssa ]
  %.05371.epil.init = phi ptr [ %i.cx, %.lr.ph ], [ %i.ea, %._crit_edge.unr-lcssa ]
  %.25670.epil.init = phi ptr [ %i.cw, %.lr.ph ], [ %.357.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.05869.epil.init = phi ptr [ %i.cs, %.lr.ph ], [ %i.dz, %._crit_edge.unr-lcssa ]
  %.05968.epil.init = phi ptr [ %i.cr, %.lr.ph ], [ %i.dy, %._crit_edge.unr-lcssa ]
  %.06067.epil.init = phi ptr [ %i.cq, %.lr.ph ], [ %i.dx, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod100)
  %i.eg = load float, ptr %.06067.epil.init, align 4, !tbaa !15
  store float %i.eg, ptr %.05371.epil.init, align 4, !tbaa !15
  %i.eh = load float, ptr %.05968.epil.init, align 4, !tbaa !15
  store float %i.eh, ptr %.05272.epil.init, align 4, !tbaa !15
  %i.ei = load float, ptr %.05869.epil.init, align 4, !tbaa !15
  store float %i.ei, ptr %.05173.epil.init, align 4, !tbaa !15
  %.not65.epil = icmp eq ptr %.25670.epil.init, null
  br i1 %.not65.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %i.ej = load float, ptr %.25670.epil.init, align 4, !tbaa !15
  store float %i.ej, ptr %.274.epil.init, align 4, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.h, %._crit_edge.unr-lcssa
  %i.ek = add nuw i64 %.04979, %i.bf
  %i.el = add nuw i64 %.080, %i.bi
  %i.em = add nuw i32 %.06276, 1                  ; 2 uses
  %exitcond89.not = icmp eq i32 %i.em, %4
  br i1 %exitcond89.not, label %._crit_edge83.split, label %.lr.ph, !llvm.loop !36

._crit_edge83.split:                              ; preds = %._crit_edge, %._crit_edge.us, %.lr.ph82, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FastEvaluateFloatRGBCurves(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 7 uses
  %i.b = alloca [16 x i32], align 16              ; 7 uses
  %i.c = alloca [16 x i32], align 16              ; 7 uses
  %i.d = alloca [16 x i32], align 16              ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.g = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #6
  %i.h = tail call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #6
  %i.i = tail call ptr @_cmsGetTransformUserData(ptr noundef %0) #6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  call void @_cmsComputeComponentIncrements(i32 noundef %i.g, i32 noundef %i.k, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  call void @_cmsComputeComponentIncrements(i32 noundef %i.h, i32 noundef %i.m, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.n = call i32 @_cmsGetTransformFlags(ptr noundef %0) #6
  %i.o = and i32 %i.n, 67108864
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.f, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not96 = icmp eq i32 %4, 0
  br i1 %.not96, label %._crit_edge95.split, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.c
  %i.p = load i32, ptr %i.a, align 16, !tbaa !10
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !10
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !10
  %.not67 = icmp eq i32 %i.aa, 0                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ac = load i32, ptr %i.c, align 16, !tbaa !10
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !10
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !10
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.not97 = icmp eq i32 %3, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 131076 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 262152 ; 3 uses
  %i.aq = load i32, ptr %i.b, align 16
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = load i32, ptr %i.d, align 16
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bi = load i32, ptr %5, align 4, !tbaa !20
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !21
  %i.bm = zext i32 %i.bl to i64
  br i1 %.not97, label %._crit_edge95.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph94, %._crit_edge
  %.092 = phi i64 [ %i.fe, %._crit_edge ], [ 0, %.lr.ph94 ] ; 5 uses
  %.05391 = phi i64 [ %i.fd, %._crit_edge ], [ 0, %.lr.ph94 ] ; 5 uses
  %.05490 = phi ptr [ %.3, %._crit_edge ], [ null, %.lr.ph94 ]
  %.05889 = phi ptr [ %.361, %._crit_edge ], [ null, %.lr.ph94 ]
  %.06688 = phi i32 [ %i.ff, %._crit_edge ], [ 0, %.lr.ph94 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 %.05391
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 %.05391
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 %.05391
  %i.bq = load i32, ptr %i.ab, align 4
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.05391
  %.159 = select i1 %.not67, ptr %.05889, ptr %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.092
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.092
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 %.092
  %i.bx = load i32, ptr %i.an, align 4
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.092
  %.1 = select i1 %.not67, ptr %.05490, ptr %i.ca
  %i.cb = load i32, ptr %i.bg, align 4
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load i32, ptr %i.bh, align 4
  %i.ce = zext i32 %i.cd to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %.286 = phi ptr [ %.1, %.lr.ph ], [ %.3, %bb.o ] ; 3 uses
  %.05585 = phi ptr [ %i.bw, %.lr.ph ], [ %i.ey, %bb.o ] ; 2 uses
  %.05684 = phi ptr [ %i.bv, %.lr.ph ], [ %i.ex, %bb.o ] ; 2 uses
  %.05783 = phi ptr [ %i.bu, %.lr.ph ], [ %i.ew, %bb.o ] ; 2 uses
  %.26082 = phi ptr [ %.159, %.lr.ph ], [ %.361, %bb.o ] ; 3 uses
  %.06281 = phi ptr [ %i.bp, %.lr.ph ], [ %i.ev, %bb.o ] ; 2 uses
  %.06380 = phi ptr [ %i.bo, %.lr.ph ], [ %i.eu, %bb.o ] ; 2 uses
  %.06479 = phi ptr [ %i.bn, %.lr.ph ], [ %i.et, %bb.o ] ; 2 uses
  %.06578 = phi i32 [ 0, %.lr.ph ], [ %i.fc, %bb.o ]
  %i.cf = load float, ptr %.06479, align 4, !tbaa !15 ; 5 uses
  %i.cg = fcmp uno float %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ch = load float, ptr %i.i, align 4, !tbaa !15
  br label %flerp.exit

bb.f:                                             ; preds = %bb.d
  %i.ci = fcmp uge float %i.cf, f0x3089705F
  %i.cj = fcmp ult float %i.cf, 1.000000e+00
  %or.cond.i = and i1 %i.ci, %i.cj
  br i1 %or.cond.i, label %bb.g, label %flerp.exit

bb.g:                                             ; preds = %bb.f
  %i.ck = fmul nnan float %i.cf, 3.276800e+04     ; 3 uses
  %i.cl = fpext float %i.ck to double
  %i.cm = fadd double %i.cl, f0x4238000000000000
  %i.cn = bitcast double %i.cm to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.cn to i32
  %i.co = ashr i32 %.sroa.0.0.extract.trunc.i.i, 16 ; 2 uses
  %i.cp = call float @llvm.ceil.f32(float %i.ck)
  %i.cq = fptosi float %i.cp to i32
  %i.cr = sitofp i32 %i.co to float
  %i.cs = fsub float %i.ck, %i.cr
  %i.ct = sext i32 %i.co to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !15 ; 2 uses
  %i.cw = zext nneg i32 %i.cq to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !15
  %i.cz = fsub float %i.cy, %i.cv
  %i.da = call float @llvm.fmuladd.f32(float %i.cz, float %i.cs, float %i.cv)
  br label %flerp.exit

flerp.exit:                                       ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi float [ %i.ch, %bb.e ], [ %i.da, %bb.g ], [ %i.cf, %bb.f ]
  store float %.0.i, ptr %.05783, align 4, !tbaa !15
  %i.db = load float, ptr %.06380, align 4, !tbaa !15 ; 5 uses
  %i.dc = fcmp uno float %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %flerp.exit
  %i.dd = load float, ptr %i.ao, align 4, !tbaa !15
  br label %flerp.exit73

bb.i:                                             ; preds = %flerp.exit
  %i.de = fcmp uge float %i.db, f0x3089705F
  %i.df = fcmp ult float %i.db, 1.000000e+00
  %or.cond.i70 = and i1 %i.de, %i.df
  br i1 %or.cond.i70, label %bb.j, label %flerp.exit73

bb.j:                                             ; preds = %bb.i
  %i.dg = fmul nnan float %i.db, 3.276800e+04     ; 3 uses
  %i.dh = fpext float %i.dg to double
  %i.di = fadd double %i.dh, f0x4238000000000000
  %i.dj = bitcast double %i.di to i64
  %.sroa.0.0.extract.trunc.i.i72 = trunc i64 %i.dj to i32
  %i.dk = ashr i32 %.sroa.0.0.extract.trunc.i.i72, 16 ; 2 uses
  %i.dl = call float @llvm.ceil.f32(float %i.dg)
  %i.dm = fptosi float %i.dl to i32
  %i.dn = sitofp i32 %i.dk to float
  %i.do = fsub float %i.dg, %i.dn
  %i.dp = sext i32 %i.dk to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !15 ; 2 uses
  %i.ds = zext nneg i32 %i.dm to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !15
  %i.dv = fsub float %i.du, %i.dr
  %i.dw = call float @llvm.fmuladd.f32(float %i.dv, float %i.do, float %i.dr)
  br label %flerp.exit73

flerp.exit73:                                     ; preds = %bb.h, %bb.i, %bb.j
  %.0.i71 = phi float [ %i.dd, %bb.h ], [ %i.dw, %bb.j ], [ %i.db, %bb.i ]
  store float %.0.i71, ptr %.05684, align 4, !tbaa !15
  %i.dx = load float, ptr %.06281, align 4, !tbaa !15 ; 5 uses
  %i.dy = fcmp uno float %i.dx, 0.000000e+00
  br i1 %i.dy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %flerp.exit73
  %i.dz = load float, ptr %i.ap, align 4, !tbaa !15
  br label %flerp.exit77

bb.l:                                             ; preds = %flerp.exit73
  %i.ea = fcmp uge float %i.dx, f0x3089705F
  %i.eb = fcmp ult float %i.dx, 1.000000e+00
  %or.cond.i74 = and i1 %i.ea, %i.eb
  br i1 %or.cond.i74, label %bb.m, label %flerp.exit77

bb.m:                                             ; preds = %bb.l
  %i.ec = fmul nnan float %i.dx, 3.276800e+04     ; 3 uses
  %i.ed = fpext float %i.ec to double
  %i.ee = fadd double %i.ed, f0x4238000000000000
  %i.ef = bitcast double %i.ee to i64
  %.sroa.0.0.extract.trunc.i.i76 = trunc i64 %i.ef to i32
  %i.eg = ashr i32 %.sroa.0.0.extract.trunc.i.i76, 16 ; 2 uses
  %i.eh = call float @llvm.ceil.f32(float %i.ec)
  %i.ei = fptosi float %i.eh to i32
  %i.ej = sitofp i32 %i.eg to float
  %i.ek = fsub float %i.ec, %i.ej
  %i.el = sext i32 %i.eg to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !15 ; 2 uses
  %i.eo = zext nneg i32 %i.ei to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !15
  %i.er = fsub float %i.eq, %i.en
  %i.es = call float @llvm.fmuladd.f32(float %i.er, float %i.ek, float %i.en)
  br label %flerp.exit77

flerp.exit77:                                     ; preds = %bb.k, %bb.l, %bb.m
  %.0.i75 = phi float [ %i.dz, %bb.k ], [ %i.es, %bb.m ], [ %i.dx, %bb.l ]
  store float %.0.i75, ptr %.05585, align 4, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %.06479, i64 %i.ar
  %i.eu = getelementptr inbounds nuw i8, ptr %.06380, i64 %i.au
  %i.ev = getelementptr inbounds nuw i8, ptr %.06281, i64 %i.ax
  %i.ew = getelementptr inbounds nuw i8, ptr %.05783, i64 %i.az
  %i.ex = getelementptr inbounds nuw i8, ptr %.05684, i64 %i.bc
  %i.ey = getelementptr inbounds nuw i8, ptr %.05585, i64 %i.bf
  %.not69 = icmp eq ptr %.26082, null
  br i1 %.not69, label %bb.o, label %bb.n

bb.n:                                             ; preds = %flerp.exit77
  %i.ez = load float, ptr %.26082, align 4, !tbaa !15
  store float %i.ez, ptr %.286, align 4, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %.26082, i64 %i.cc
  %i.fb = getelementptr inbounds nuw i8, ptr %.286, i64 %i.ce
  br label %bb.o

bb.o:                                             ; preds = %flerp.exit77, %bb.n
  %.361 = phi ptr [ %i.fa, %bb.n ], [ null, %flerp.exit77 ] ; 2 uses
  %.3 = phi ptr [ %i.fb, %bb.n ], [ %.286, %flerp.exit77 ] ; 2 uses
  %i.fc = add nuw i32 %.06578, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.fc, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.o
  %i.fd = add nuw i64 %.05391, %i.bj
  %i.fe = add nuw i64 %.092, %i.bm
  %i.ff = add nuw i32 %.06688, 1                  ; 2 uses
  %exitcond98.not = icmp eq i32 %i.ff, %4
  br i1 %exitcond98.not, label %._crit_edge95.split, label %.lr.ph, !llvm.loop !38

._crit_edge95.split:                              ; preds = %._crit_edge, %.lr.ph94, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @cmsGetPipelineContextID(ptr noundef) local_unnamed_addr #2

declare void @cmsPipelineEvalFloat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_cmsMallocZero(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_cmsFree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cmsGetTransformInputFormat(ptr noundef) local_unnamed_addr #2

declare i32 @cmsGetTransformOutputFormat(ptr noundef) local_unnamed_addr #2

declare void @_cmsComputeComponentIncrements(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_cmsGetTransformFlags(ptr noundef) local_unnamed_addr #2

declare ptr @_cmsGetTransformUserData(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"", !5, i64 0, !5, i64 131076, !5, i64 262152, !9, i64 393232}
!13 = !{!12, !9, i64 393232}
!14 = !{!"float", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!18 = !{!17, !6, i64 8}
!19 = !{!17, !6, i64 12}
!20 = !{!17, !6, i64 0}
!21 = !{!17, !6, i64 4}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !16}
!26 = !{!"p1 _ZTS19_cmsPipeline_struct", !9, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!9, !9, i64 0}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
end_hunk_0
