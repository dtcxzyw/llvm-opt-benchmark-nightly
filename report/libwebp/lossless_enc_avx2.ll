Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/lossless_enc_avx2?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@VP8LSubtractGreenFromBlueAndRed = external local_unnamed_addr global ptr, align 8
@VP8LTransformColor = external local_unnamed_addr global ptr, align 8
@VP8LCollectColorBlueTransforms = external local_unnamed_addr global ptr, align 8
@VP8LCollectColorRedTransforms = external local_unnamed_addr global ptr, align 8
@VP8LAddVector = external local_unnamed_addr global ptr, align 8
@VP8LAddVectorEq = external local_unnamed_addr global ptr, align 8
@VP8LCombinedShannonEntropy = external local_unnamed_addr global ptr, align 8
@VP8LVectorMismatch = external local_unnamed_addr global ptr, align 8
@VP8LBundleColorMap = external local_unnamed_addr global ptr, align 8
@VP8LPredictorsSub = external local_unnamed_addr global [16 x ptr], align 16
@VP8LSubtractGreenFromBlueAndRed_SSE = external local_unnamed_addr global ptr, align 8
@VP8LTransformColor_SSE = external local_unnamed_addr global ptr, align 8
@VP8LCollectColorBlueTransforms_SSE = external local_unnamed_addr global ptr, align 8
@VP8LCollectColorRedTransforms_SSE = external local_unnamed_addr global ptr, align 8
@kSLog2Table = external local_unnamed_addr constant [256 x i64], align 16
@VP8LFastSLog2Slow = external local_unnamed_addr global ptr, align 8
@VP8LBundleColorMap_SSE = external local_unnamed_addr global ptr, align 8
@VP8LPredictorsSub_SSE = external local_unnamed_addr global [16 x ptr], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8LEncDspInitAVX2() local_unnamed_addr #0 {
bb.a:
  store ptr @SubtractGreenFromBlueAndRed_AVX2, ptr @VP8LSubtractGreenFromBlueAndRed, align 8, !tbaa !9
  store ptr @TransformColor_AVX2, ptr @VP8LTransformColor, align 8, !tbaa !9
  store ptr @CollectColorBlueTransforms_AVX2, ptr @VP8LCollectColorBlueTransforms, align 8, !tbaa !9
  store ptr @CollectColorRedTransforms_AVX2, ptr @VP8LCollectColorRedTransforms, align 8, !tbaa !9
  store ptr @AddVector_AVX2, ptr @VP8LAddVector, align 8, !tbaa !9
  store ptr @AddVectorEq_AVX2, ptr @VP8LAddVectorEq, align 8, !tbaa !9
  store ptr @CombinedShannonEntropy_AVX2, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !9
  store ptr @VectorMismatch_AVX2, ptr @VP8LVectorMismatch, align 8, !tbaa !9
  store ptr @BundleColorMap_AVX2, ptr @VP8LBundleColorMap, align 8, !tbaa !9
  store ptr @PredictorSub0_AVX2, ptr @VP8LPredictorsSub, align 16, !tbaa !9
  store ptr @PredictorSub1_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 8), align 8, !tbaa !9
  store ptr @PredictorSub2_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 16), align 16, !tbaa !9
  store ptr @PredictorSub3_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 24), align 8, !tbaa !9
  store ptr @PredictorSub4_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 32), align 16, !tbaa !9
  store ptr @PredictorSub5_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 40), align 8, !tbaa !9
  store ptr @PredictorSub6_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 48), align 16, !tbaa !9
  store ptr @PredictorSub7_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 56), align 8, !tbaa !9
  store ptr @PredictorSub8_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 64), align 16, !tbaa !9
  store ptr @PredictorSub9_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 72), align 8, !tbaa !9
  store ptr @PredictorSub10_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 80), align 16, !tbaa !9
  store ptr @PredictorSub11_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 88), align 8, !tbaa !9
  store ptr @PredictorSub12_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 96), align 16, !tbaa !9
  store ptr @PredictorSub13_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 104), align 8, !tbaa !9
  store ptr @PredictorSub0_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 112), align 16, !tbaa !9
  store ptr @PredictorSub0_AVX2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 120), align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SubtractGreenFromBlueAndRed_AVX2(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %.not20 = icmp slt i32 %1, 8
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next23, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv22 ; 2 uses
  %i.c = load <32 x i8>, ptr %i.b, align 1, !tbaa !10 ; 2 uses
  %i.d = shufflevector <32 x i8> %i.c, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 1, i32 32, i32 1, i32 32, i32 5, i32 32, i32 5, i32 32, i32 9, i32 32, i32 9, i32 32, i32 13, i32 32, i32 13, i32 32, i32 17, i32 48, i32 17, i32 48, i32 21, i32 48, i32 21, i32 48, i32 25, i32 48, i32 25, i32 48, i32 29, i32 48, i32 29, i32 48>
  %i.e = sub <32 x i8> %i.c, %i.d
  store <32 x i8> %i.e, ptr %i.b, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !15

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = add nuw i32 %1, 2147483640
  %i.g = and i32 %i.f, 2147483640
  %narrow = add nuw i32 %i.g, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not19 = icmp eq i32 %.0.lcssa, %1
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = load ptr, ptr @VP8LSubtractGreenFromBlueAndRed_SSE, align 8, !tbaa !9
  %i.i = zext nneg i32 %.0.lcssa to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = sub nuw nsw i32 %1, %.0.lcssa
  tail call void %i.h(ptr noundef %i.j, i32 noundef %i.k) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TransformColor_AVX2(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #1 {
bb.a:
  %.not34 = icmp slt i32 %2, 8
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !18
  %i.c = load i8, ptr %0, align 1, !tbaa !19
  %i.d = zext i8 %i.b to i16
  %i.e = zext i8 %i.c to i16
  %i.f = insertelement <2 x i16> poison, i16 %i.d, i64 0
  %i.g = insertelement <2 x i16> %i.f, i16 %i.e, i64 1
  %i.h = shl nuw <2 x i16> %i.g, splat (i16 8)
  %i.i = ashr exact <2 x i16> %i.h, splat (i16 5)
  %i.j = sext <2 x i16> %i.i to <2 x i32>
  %i.k = shl nsw <2 x i32> %i.j, splat (i32 16)   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %i.n = zext i8 %i.m to i16
  %i.o = shl nuw i16 %i.n, 8
  %i.p = ashr exact i16 %i.o, 5
  %i.q = zext i16 %i.p to i32
  %i.r = extractelement <2 x i32> %i.k, i64 1
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %i.u = shufflevector <8 x i32> %i.t, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.v = bitcast <8 x i32> %i.u to <16 x i16>
  %3 = shufflevector <2 x i32> %i.k, <2 x i32> poison, <8 x i32> zeroinitializer
  %4 = bitcast <8 x i32> %3 to <16 x i16>
  %i.w = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv36 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next37, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv36 ; 2 uses
  %i.y = load <4 x i64>, ptr %i.x, align 1, !tbaa !10 ; 2 uses
  %i.z = bitcast <4 x i64> %i.y to <32 x i8>      ; 2 uses
  %i.aa = shufflevector <32 x i8> %i.z, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 1, i32 32, i32 1, i32 32, i32 5, i32 32, i32 5, i32 32, i32 9, i32 32, i32 9, i32 32, i32 13, i32 32, i32 13, i32 48, i32 17, i32 48, i32 17, i32 48, i32 21, i32 48, i32 21, i32 48, i32 25, i32 48, i32 25, i32 48, i32 29, i32 48, i32 29>
  %i.ab = bitcast <32 x i8> %i.aa to <16 x i16>
  %i.ac = tail call <16 x i16> @llvm.smulh.v16i16(<16 x i16> %i.ab, <16 x i16> %i.v)
  %i.ad = bitcast <4 x i64> %i.y to <16 x i16>
  %i.ae = shl <16 x i16> %i.ad, splat (i16 8)
  %i.af = tail call <16 x i16> @llvm.smulh.v16i16(<16 x i16> %i.ae, <16 x i16> %4)
  %i.ag = bitcast <16 x i16> %i.af to <8 x i32>
  %i.ah = lshr exact <8 x i32> %i.ag, splat (i32 16)
  %i.ai = bitcast <8 x i32> %i.ah to <32 x i8>
  %i.aj = bitcast <16 x i16> %i.ac to <32 x i8>
  %i.ak = add <32 x i8> %i.ai, %i.aj
  %i.al = and <32 x i8> %i.ak, <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>
  %i.am = sub <32 x i8> %i.z, %i.al
  store <32 x i8> %i.am, ptr %i.x, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.w
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 8
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.an = add nuw i32 %2, 2147483640
  %i.ao = and i32 %i.an, 2147483640
  %narrow = add nuw i32 %i.ao, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not33 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ap = load ptr, ptr @VP8LTransformColor_SSE, align 8, !tbaa !9
  %i.aq = zext nneg i32 %.0.lcssa to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq
  %i.as = sub nuw nsw i32 %2, %.0.lcssa
  tail call void %i.ap(ptr noundef nonnull %0, ptr noundef %i.ar, i32 noundef %i.as) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CollectColorBlueTransforms_AVX2(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 7
  %i.b = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph65, label %.loopexit

.lr.ph65:                                         ; preds = %bb.a
  %.tr = trunc i32 %5 to i16
  %i.c = shl i16 %.tr, 8
  %i.d = ashr exact i16 %i.c, 5
  %narrow = add nsw i16 %i.d, 256
  %i.e = sext i16 %narrow to i32
  %i.f = shl nsw i32 %i.e, 16
  %.tr57 = trunc i32 %4 to i16
  %i.g = shl i16 %.tr57, 8
  %i.h = ashr exact i16 %i.g, 5
  %i.i = zext i16 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i
  %i.k = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.l = shufflevector <8 x i32> %i.k, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.m = bitcast <8 x i32> %i.l to <16 x i16>     ; 3 uses
  %.not5860 = icmp samesign ult i32 %2, 16
  br i1 %.not5860, label %.lr.ph65.split.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph65
  %i.n = zext nneg i32 %2 to i64
  %i.o = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph65.split.us.preheader:                      ; preds = %.lr.ph65
  %i.p = sext i32 %1 to i64
  %wide.trip.count85 = zext nneg i32 %3 to i64
  br label %.lr.ph65.split.us

.lr.ph65.split.us:                                ; preds = %.lr.ph65.split.us.preheader, %.lr.ph65.split.us
  %indvars.iv82 = phi i64 [ 0, %.lr.ph65.split.us.preheader ], [ %indvars.iv.next83, %.lr.ph65.split.us ] ; 2 uses
  %i.q = mul nsw i64 %indvars.iv82, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = load <4 x i64>, ptr %i.r, align 1, !tbaa !10 ; 2 uses
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>
  %i.u = shufflevector <32 x i8> %i.t, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 1, i32 32, i32 2, i32 32, i32 5, i32 32, i32 6, i32 32, i32 9, i32 32, i32 10, i32 32, i32 13, i32 32, i32 14, i32 48, i32 17, i32 48, i32 18, i32 48, i32 21, i32 48, i32 22, i32 48, i32 25, i32 48, i32 26, i32 48, i32 29, i32 48, i32 30>
  %i.v = bitcast <32 x i8> %i.u to <16 x i16>
  %i.w = tail call <16 x i16> @llvm.smulh.v16i16(<16 x i16> %i.v, <16 x i16> %i.m)
  %i.x = bitcast <4 x i64> %i.s to <16 x i16>
  %i.y = sub <16 x i16> %i.x, %i.w                ; 2 uses
  %i.z = bitcast <16 x i16> %i.y to <8 x i32>
  %i.aa = lshr <8 x i32> %i.z, splat (i32 16)
  %i.ab = bitcast <8 x i32> %i.aa to <16 x i16>
  %i.ac = add <16 x i16> %i.y, %i.ab
  %i.ad = bitcast <16 x i16> %i.ac to <32 x i8>   ; 8 uses
  %.sroa.0.0.vec.extract93 = extractelement <32 x i8> %i.ad, i64 0
  %i.ae = zext i8 %.sroa.0.0.vec.extract93 to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !12
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !12
  %.sroa.0.4.vec.extract97 = extractelement <32 x i8> %i.ad, i64 4
  %i.ai = zext i8 %.sroa.0.4.vec.extract97 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !12
  %.sroa.0.8.vec.extract101 = extractelement <32 x i8> %i.ad, i64 8
  %i.am = zext i8 %.sroa.0.8.vec.extract101 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !12
  %.sroa.0.12.vec.extract105 = extractelement <32 x i8> %i.ad, i64 12
  %i.aq = zext i8 %.sroa.0.12.vec.extract105 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !12
  %.sroa.0.16.vec.extract109 = extractelement <32 x i8> %i.ad, i64 16
  %i.au = zext i8 %.sroa.0.16.vec.extract109 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !12
  %.sroa.0.20.vec.extract113 = extractelement <32 x i8> %i.ad, i64 20
  %i.ay = zext i8 %.sroa.0.20.vec.extract113 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !12
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !12
  %.sroa.0.24.vec.extract117 = extractelement <32 x i8> %i.ad, i64 24
  %i.bc = zext i8 %.sroa.0.24.vec.extract117 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !12
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !12
  %.sroa.0.28.vec.extract121 = extractelement <32 x i8> %i.ad, i64 28
  %i.bg = zext i8 %.sroa.0.28.vec.extract121 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !12
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %.loopexit, label %.lr.ph65.split.us, !llvm.loop !21

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv76 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next77, %._crit_edge ] ; 2 uses
  %i.bk = mul nsw i64 %indvars.iv76, %i.o
  %i.bl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bk ; 2 uses
  %i.bm = load <4 x i64>, ptr %i.bl, align 1, !tbaa !10 ; 2 uses
  %i.bn = bitcast <4 x i64> %i.bm to <32 x i8>
  %i.bo = shufflevector <32 x i8> %i.bn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 1, i32 32, i32 2, i32 32, i32 5, i32 32, i32 6, i32 32, i32 9, i32 32, i32 10, i32 32, i32 13, i32 32, i32 14, i32 48, i32 17, i32 48, i32 18, i32 48, i32 21, i32 48, i32 22, i32 48, i32 25, i32 48, i32 26, i32 48, i32 29, i32 48, i32 30>
  %i.bp = bitcast <32 x i8> %i.bo to <16 x i16>
  %i.bq = tail call <16 x i16> @llvm.smulh.v16i16(<16 x i16> %i.bp, <16 x i16> %i.m)
  %i.br = bitcast <4 x i64> %i.bm to <16 x i16>
  %i.bs = sub <16 x i16> %i.br, %i.bq             ; 2 uses
  %i.bt = bitcast <16 x i16> %i.bs to <8 x i32>
  %i.bu = lshr <8 x i32> %i.bt, splat (i32 16)
  %i.bv = bitcast <8 x i32> %i.bu to <16 x i16>
  %i.bw = add <16 x i16> %i.bs, %i.bv
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv68 = phi i64 [ 8, %.lr.ph ], [ %indvars.iv.next69, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 16, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %.051.in61 = phi <16 x i16> [ %i.bw, %.lr.ph ], [ %i.dp, %bb.b ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv68
  %i.by = load <4 x i64>, ptr %i.bx, align 1, !tbaa !10 ; 2 uses
  %i.bz = bitcast <16 x i16> %.051.in61 to <32 x i8> ; 8 uses
  %.sroa.0.0.vec.extract = extractelement <32 x i8> %i.bz, i64 0
  %i.ca = zext i8 %.sroa.0.0.vec.extract to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !12
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !12
  %.sroa.0.4.vec.extract = extractelement <32 x i8> %i.bz, i64 4
  %i.ce = zext i8 %.sroa.0.4.vec.extract to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !12
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !12
  %.sroa.0.8.vec.extract = extractelement <32 x i8> %i.bz, i64 8
  %i.ci = zext i8 %.sroa.0.8.vec.extract to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !12
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !12
  %.sroa.0.12.vec.extract = extractelement <32 x i8> %i.bz, i64 12
  %i.cm = zext i8 %.sroa.0.12.vec.extract to i64
end_hunk_0
begin_hunk_1_@CombinedShannonEntropy_AVX2:bb.a
  %.164.lcssa = phi i64 [ %.06377, %bb.b ], [ %i.bj, %VP8LFastSLog2.exit67 ] ; 2 uses
  %.162.lcssa = phi i32 [ %.06178, %bb.b ], [ %i.bb, %VP8LFastSLog2.exit67 ] ; 4 uses
  %.1.lcssa = phi i32 [ %.06079, %bb.b ], [ %.2, %VP8LFastSLog2.exit67 ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.bm = icmp samesign ult i64 %indvars.iv, 224
  br i1 %i.bm, label %bb.b, label %bb.h, !llvm.loop !33

bb.h:                                             ; preds = %._crit_edge
  %i.bn = icmp ult i32 %.162.lcssa, 256
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = zext nneg i32 %.162.lcssa to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !35
  br label %VP8LFastSLog2.exit68

bb.j:                                             ; preds = %bb.h
  %i.br = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !9
  %i.bs = tail call i64 %i.br(i32 noundef %.162.lcssa) #7, !inline_history !31
  br label %VP8LFastSLog2.exit68

VP8LFastSLog2.exit68:                             ; preds = %bb.i, %bb.j
  %i.bt = phi i64 [ %i.bq, %bb.i ], [ %i.bs, %bb.j ]
  %i.bu = icmp ult i32 %.1.lcssa, 256
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %VP8LFastSLog2.exit68
  %i.bv = zext nneg i32 %.1.lcssa to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !35
  br label %VP8LFastSLog2.exit69

bb.l:                                             ; preds = %VP8LFastSLog2.exit68
  %i.by = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !9
  %i.bz = tail call i64 %i.by(i32 noundef %.1.lcssa) #7, !inline_history !31
  br label %VP8LFastSLog2.exit69

VP8LFastSLog2.exit69:                             ; preds = %bb.k, %bb.l
  %i.ca = phi i64 [ %i.bx, %bb.k ], [ %i.bz, %bb.l ]
  %i.cb = sub i64 %i.bt, %.164.lcssa
  %i.cc = add i64 %i.cb, %i.ca
  ret i64 %i.cc
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @VectorMismatch_AVX2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 23
  br i1 %i.a, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a, %bb.b
  %.040 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]     ; 3 uses
  %.038.in = phi ptr [ %i.q, %bb.b ], [ %0, %bb.a ]
  %.036.in = phi ptr [ %i.r, %bb.b ], [ %1, %bb.a ]
  %.03653 = load <8 x i32>, ptr %.036.in, align 1, !tbaa !10
  %.03852 = load <8 x i32>, ptr %.038.in, align 1, !tbaa !10
  %i.b = icmp eq <8 x i32> %.03852, %.03653
  %i.c = sext <8 x i1> %i.b to <8 x i32>
  %i.d = bitcast <8 x i32> %i.c to <32 x i8>
  %i.e = icmp sgt <32 x i8> %i.d, splat (i8 -1)
  %i.f = bitcast <32 x i1> %i.e to i32
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.preheader
  %i.g = add nsw i32 %.040, 8                     ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.h
  %i.j = load <8 x i32>, ptr %i.i, align 1, !tbaa !10
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.h
  %i.l = load <8 x i32>, ptr %i.k, align 1, !tbaa !10
  %i.m = icmp eq <8 x i32> %i.l, %i.j
  %i.n = sext <8 x i1> %i.m to <8 x i32>
  %i.o = add nsw i32 %.040, 16                    ; 2 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %1, i64 %i.p
  %i.s = bitcast <8 x i32> %i.n to <32 x i8>
  %i.t = icmp sgt <32 x i8> %i.s, splat (i8 -1)
  %i.u = bitcast <32 x i1> %i.t to i32
  %.not44 = icmp eq i32 %i.u, 0                   ; 2 uses
  %. = select i1 %.not44, i32 %i.o, i32 %i.g      ; 3 uses
  %i.v = add nsw i32 %., 24
  %i.w = icmp slt i32 %i.v, %2
  %or.cond = select i1 %.not44, i1 %i.w, i1 false
  br i1 %or.cond, label %.preheader, label %.thread, !llvm.loop !36

bb.c:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %2, 7
  br i1 %i.x, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.y = load <8 x i32>, ptr %0, align 1, !tbaa !10
  %i.z = load <8 x i32>, ptr %1, align 1, !tbaa !10
  %i.aa = icmp eq <8 x i32> %i.y, %i.z
  %i.ab = sext <8 x i1> %i.aa to <8 x i32>
  %i.ac = bitcast <8 x i32> %i.ab to <32 x i8>
  %i.ad = icmp sgt <32 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <32 x i1> %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i32 %2, 15
  br i1 %i.ag, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load <8 x i32>, ptr %i.ah, align 1, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load <8 x i32>, ptr %i.aj, align 1, !tbaa !10
  %i.al = icmp eq <8 x i32> %i.ai, %i.ak
  %i.am = sext <8 x i1> %i.al to <8 x i32>
  %i.an = bitcast <8 x i32> %i.am to <32 x i8>
  %i.ao = icmp sgt <32 x i8> %i.an, splat (i8 -1)
  %i.ap = bitcast <32 x i1> %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  %spec.select = select i1 %i.aq, i32 16, i32 8
  br label %.thread

.thread:                                          ; preds = %.preheader, %bb.b, %bb.f, %bb.c, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %spec.select, %bb.f ], [ 8, %bb.e ], [ %.040, %.preheader ], [ %., %bb.b ] ; 3 uses
  %i.ar = icmp slt i32 %.3, %2
  br i1 %i.ar, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.thread
  %i.as = sext i32 %.3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.as, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12
  %i.av = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %bb.g, label %.critedge.loopexit.split.loop.exit59

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !37

.critedge.loopexit.split.loop.exit59:             ; preds = %.lr.ph
  %i.ay = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.loopexit.split.loop.exit59, %.thread
  %.4.lcssa = phi i32 [ %.3, %.thread ], [ %i.ay, %.critedge.loopexit.split.loop.exit59 ], [ %2, %bb.g ]
  ret i32 %.4.lcssa
}

; Function Attrs: nounwind uwtable
define internal void @BundleColorMap_AVX2(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not103127 = icmp slt i32 %1, 32               ; 4 uses
  switch i32 %2, label %.preheader [
    i32 0, label %.preheader105
    i32 1, label %.preheader107
    i32 2, label %.preheader109
  ]

.preheader109:                                    ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader109
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader107:                                    ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %.preheader107
  %i.b = zext nneg i32 %1 to i64
  br label %.lr.ph118

.preheader105:                                    ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.preheader105
  %i.c = zext nneg i32 %1 to i64
  br label %.lr.ph124

.preheader:                                       ; preds = %bb.a
  br i1 %.not103127, label %.loopexit, label %.lr.ph130.preheader

.lr.ph130.preheader:                              ; preds = %.preheader
  %i.d = zext nneg i32 %1 to i64
  br label %.lr.ph130

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.lr.ph124
  %indvars.iv157 = phi i64 [ 0, %.lr.ph124.preheader ], [ %indvars.iv.next158, %.lr.ph124 ] ; 2 uses
  %indvars.iv155 = phi i64 [ 32, %.lr.ph124.preheader ], [ %indvars.iv.next156, %.lr.ph124 ]
  %.0123 = phi ptr [ %3, %.lr.ph124.preheader ], [ %i.ad, %.lr.ph124 ] ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv157
  %i.f = load <32 x i8>, ptr %i.e, align 1, !tbaa !10 ; 2 uses
  %i.g = shufflevector <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i8> %i.f, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.h = bitcast <32 x i8> %i.g to <16 x i16>     ; 2 uses
  %i.i = shufflevector <16 x i16> %i.h, <16 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  %i.j = bitcast <16 x i16> %i.i to <4 x i64>     ; 2 uses
  %i.k = shufflevector <16 x i16> %i.h, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.l = bitcast <16 x i16> %i.k to <4 x i64>     ; 2 uses
  %i.m = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.f, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.n = bitcast <32 x i8> %i.m to <16 x i16>     ; 2 uses
  %i.o = shufflevector <16 x i16> %i.n, <16 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  %i.p = bitcast <16 x i16> %i.o to <4 x i64>     ; 2 uses
  %i.q = shufflevector <16 x i16> %i.n, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.r = bitcast <16 x i16> %i.q to <4 x i64>     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0123, i64 64
  %i.t = shufflevector <4 x i64> %i.j, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.t, ptr %.0123, align 1, !tbaa !10
  %4 = shufflevector <4 x i64> %i.j, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %4, ptr %i.s, align 1, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %.0123, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %.0123, i64 16
  %i.w = shufflevector <4 x i64> %i.l, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.w, ptr %i.v, align 1, !tbaa !10
  %5 = shufflevector <4 x i64> %i.l, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %5, ptr %i.u, align 1, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %.0123, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %.0123, i64 32
  %i.z = shufflevector <4 x i64> %i.p, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.z, ptr %i.y, align 1, !tbaa !10
  %6 = shufflevector <4 x i64> %i.p, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %6, ptr %i.x, align 1, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %.0123, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %.0123, i64 48
  %i.ac = shufflevector <4 x i64> %i.r, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ac, ptr %i.ab, align 1, !tbaa !10
  %7 = shufflevector <4 x i64> %i.r, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %7, ptr %i.aa, align 1, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %.0123, i64 128 ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 32 ; 2 uses
  %.not102 = icmp samesign ugt i64 %indvars.iv.next156, %i.c
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 32
  br i1 %.not102, label %.loopexit.loopexit133, label %.lr.ph124, !llvm.loop !38

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %.lr.ph118
  %indvars.iv150 = phi i64 [ 0, %.lr.ph118.preheader ], [ %indvars.iv.next151, %.lr.ph118 ] ; 2 uses
  %indvars.iv148 = phi i64 [ 32, %.lr.ph118.preheader ], [ %indvars.iv.next149, %.lr.ph118 ]
  %.1117 = phi ptr [ %3, %.lr.ph118.preheader ], [ %i.ar, %.lr.ph118 ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv150
  %i.af = load <16 x i16>, ptr %i.ae, align 1, !tbaa !10
  %i.ag = mul <16 x i16> %i.af, splat (i16 272)
  %i.ah = and <16 x i16> %i.ag, splat (i16 -256)  ; 2 uses
  %i.ai = shufflevector <16 x i16> %i.ah, <16 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  %i.aj = bitcast <16 x i16> %i.ai to <4 x i64>   ; 2 uses
  %i.ak = shufflevector <16 x i16> %i.ah, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.al = bitcast <16 x i16> %i.ak to <4 x i64>   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1117, i64 32
  %i.an = shufflevector <4 x i64> %i.aj, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.an, ptr %.1117, align 1, !tbaa !10
  %8 = shufflevector <4 x i64> %i.aj, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %8, ptr %i.am, align 1, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %.1117, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.1117, i64 16
  %i.aq = shufflevector <4 x i64> %i.al, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.aq, ptr %i.ap, align 1, !tbaa !10
  %9 = shufflevector <4 x i64> %i.al, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %9, ptr %i.ao, align 1, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %.1117, i64 64 ; 2 uses
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 32 ; 2 uses
  %.not101 = icmp samesign ugt i64 %indvars.iv.next149, %i.b
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 32
  br i1 %.not101, label %.loopexit.loopexit134, label %.lr.ph118, !llvm.loop !39

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv143 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next144, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 32, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.2113 = phi ptr [ %3, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv143
  %i.at = load <16 x i16>, ptr %i.as, align 1, !tbaa !10
  %i.au = mul <16 x i16> %i.at, splat (i16 260)
  %.inner = and <16 x i16> %i.au, splat (i16 3840) ; 2 uses
  %i.av = bitcast <16 x i16> %.inner to <8 x i32>
  %i.aw = lshr <8 x i32> %i.av, splat (i32 12)
  %i.ax = bitcast <8 x i32> %i.aw to <4 x i64>
  %i.ay = bitcast <16 x i16> %.inner to <4 x i64>
  %i.az = or <4 x i64> %i.ay, splat (i64 -72057589759737856)
  %i.ba = or disjoint <4 x i64> %i.az, %i.ax
  store <4 x i64> %i.ba, ptr %.2113, align 1, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %.2113, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 32
  br i1 %.not, label %.loopexit.loopexit135, label %.lr.ph, !llvm.loop !40

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %.lr.ph130
  %indvars.iv164 = phi i64 [ 0, %.lr.ph130.preheader ], [ %indvars.iv.next165, %.lr.ph130 ] ; 2 uses
  %indvars.iv162 = phi i64 [ 32, %.lr.ph130.preheader ], [ %indvars.iv.next163, %.lr.ph130 ]
  %.3129 = phi ptr [ %3, %.lr.ph130.preheader ], [ %i.bo, %.lr.ph130 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv164
  %i.bd = load <4 x i64>, ptr %i.bc, align 1, !tbaa !10
  %i.be = shl <4 x i64> %i.bd, splat (i64 7)
  %i.bf = bitcast <4 x i64> %i.be to <32 x i8>
  %i.bg = icmp slt <32 x i8> %i.bf, zeroinitializer
  %i.bh = bitcast <32 x i1> %i.bg to i32
  %i.bi = insertelement <4 x i32> poison, i32 %i.bh, i64 0
  %i.bj = shufflevector <4 x i32> %i.bi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bk = shl <4 x i32> %i.bj, <i32 8, i32 0, i32 0, i32 0>
  %i.bl = lshr <4 x i32> %i.bk, <i32 0, i32 0, i32 8, i32 16>
  %i.bm = and <4 x i32> %i.bl, splat (i32 65280)
  %i.bn = or disjoint <4 x i32> %i.bm, splat (i32 -16777216)
  store <4 x i32> %i.bn, ptr %.3129, align 4, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %.3129, i64 16 ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 32 ; 2 uses
  %.not103 = icmp samesign ugt i64 %indvars.iv.next163, %i.d
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 32
  br i1 %.not103, label %.loopexit.loopexit, label %.lr.ph130, !llvm.loop !41

.loopexit.loopexit:                               ; preds = %.lr.ph130
  %i.bp = add nuw i32 %1, 2147483616
  %i.bq = and i32 %i.bp, 2147483616
  %narrow172 = add nuw i32 %i.bq, 32
  br label %.loopexit

.loopexit.loopexit133:                            ; preds = %.lr.ph124
  %i.br = add nuw i32 %1, 2147483616
  %i.bs = and i32 %i.br, 2147483616
  %narrow171 = add nuw i32 %i.bs, 32
  br label %.loopexit

.loopexit.loopexit134:                            ; preds = %.lr.ph118
  %i.bt = add nuw i32 %1, 2147483616
  %i.bu = and i32 %i.bt, 2147483616
  %narrow170 = add nuw i32 %i.bu, 32
  br label %.loopexit

.loopexit.loopexit135:                            ; preds = %.lr.ph
  %i.bv = add nuw i32 %1, 2147483616
  %i.bw = and i32 %i.bv, 2147483616
  %narrow = add nuw i32 %i.bw, 32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit135, %.loopexit.loopexit134, %.loopexit.loopexit133, %.loopexit.loopexit, %.preheader109, %.preheader107, %.preheader105, %.preheader
  %.495 = phi i32 [ %narrow172, %.loopexit.loopexit ], [ %narrow170, %.loopexit.loopexit134 ], [ %narrow171, %.loopexit.loopexit133 ], [ 0, %.preheader ], [ 0, %.preheader105 ], [ 0, %.preheader107 ], [ 0, %.preheader109 ], [ %narrow, %.loopexit.loopexit135 ] ; 3 uses
  %.4 = phi ptr [ %i.bo, %.loopexit.loopexit ], [ %i.ar, %.loopexit.loopexit134 ], [ %i.ad, %.loopexit.loopexit133 ], [ %3, %.preheader ], [ %3, %.preheader105 ], [ %3, %.preheader107 ], [ %3, %.preheader109 ], [ %i.bb, %.loopexit.loopexit135 ]
  %.not104 = icmp eq i32 %.495, %1
  br i1 %.not104, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.bx = load ptr, ptr @VP8LBundleColorMap_SSE, align 8, !tbaa !9
  %i.by = zext nneg i32 %.495 to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  %i.ca = sub nsw i32 %1, %.495
  tail call void %i.bx(ptr noundef %i.bz, i32 noundef %i.ca, i32 noundef %2, ptr noundef %.4) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub0_AVX2(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not20 = icmp slt i32 %2, 8
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next23, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv22
  %i.c = load <32 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.d = add <32 x i8> %i.c, <i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1>
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv22
  store <32 x i8> %i.d, ptr %i.e, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !42

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = add nuw i32 %2, 2147483640
  %i.g = and i32 %i.f, 2147483640
  %narrow = add nuw i32 %i.g, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not19 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = load ptr, ptr @VP8LPredictorsSub_SSE, align 16, !tbaa !9
  %i.i = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = sub nuw nsw i32 %2, %.0.lcssa
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.i
  tail call void %i.h(ptr noundef %i.j, ptr noundef null, i32 noundef %i.k, ptr noundef %i.l) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub1_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not25 = icmp slt i32 %2, 8
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next28, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv27 ; 2 uses
  %i.c = load <32 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.d = getelementptr i8, ptr %i.b, i64 -4
  %i.e = load <32 x i8>, ptr %i.d, align 1, !tbaa !10
  %i.f = sub <32 x i8> %i.c, %i.e
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv27
  store <32 x i8> %i.f, ptr %i.g, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = add nuw i32 %2, 2147483640
  %i.i = and i32 %i.h, 2147483640
  %narrow = add nuw i32 %i.i, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_SSE, i64 8), align 8, !tbaa !9
  %i.k = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = icmp eq ptr %1, null
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.o = select i1 %i.m, ptr null, ptr %i.n
  %i.p = sub nuw nsw i32 %2, %.0.lcssa
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k
  tail call void %i.j(ptr noundef %i.l, ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub2_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not25 = icmp slt i32 %2, 8
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph
end_hunk_1
begin_hunk_2_@PredictorSub8_AVX2:bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv32
  %i.g = load <32 x i8>, ptr %i.f, align 1, !tbaa !10
  %i.h = bitcast <4 x i64> %i.d to <32 x i8>
  %i.i = bitcast <4 x i64> %i.e to <32 x i8>
  %i.j = tail call <32 x i8> @llvm.x86.avx2.pavg.b(<32 x i8> %i.h, <32 x i8> %i.i)
  %i.k = xor <4 x i64> %i.e, %i.d
  %i.l = bitcast <4 x i64> %i.k to <32 x i8>
  %i.m = and <32 x i8> %i.l, splat (i8 1)
  %.neg = sub <32 x i8> %i.g, %i.j
  %i.n = add <32 x i8> %.neg, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv32
  store <32 x i8> %i.n, ptr %i.o, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !50

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = add nuw i32 %2, 2147483640
  %i.q = and i32 %i.p, 2147483640
  %narrow = add nuw i32 %i.q, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_SSE, i64 64), align 16, !tbaa !9
  %i.s = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s
  %i.v = sub nuw nsw i32 %2, %.0.lcssa
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s
  tail call void %i.r(ptr noundef %i.t, ptr noundef %i.u, i32 noundef %i.v, ptr noundef %i.w) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub9_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not30 = icmp slt i32 %2, 8
  br i1 %.not30, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv32 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next33, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv32 ; 2 uses
  %i.c = load <4 x i64>, ptr %i.b, align 1, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load <4 x i64>, ptr %i.d, align 1, !tbaa !10 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv32
  %i.g = load <32 x i8>, ptr %i.f, align 1, !tbaa !10
  %i.h = bitcast <4 x i64> %i.c to <32 x i8>
  %i.i = bitcast <4 x i64> %i.e to <32 x i8>
  %i.j = tail call <32 x i8> @llvm.x86.avx2.pavg.b(<32 x i8> %i.h, <32 x i8> %i.i)
  %i.k = xor <4 x i64> %i.e, %i.c
  %i.l = bitcast <4 x i64> %i.k to <32 x i8>
  %i.m = and <32 x i8> %i.l, splat (i8 1)
  %.neg = sub <32 x i8> %i.g, %i.j
  %i.n = add <32 x i8> %.neg, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv32
  store <32 x i8> %i.n, ptr %i.o, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = add nuw i32 %2, 2147483640
  %i.q = and i32 %i.p, 2147483640
  %narrow = add nuw i32 %i.q, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_SSE, i64 72), align 8, !tbaa !9
  %i.s = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s
  %i.v = sub nuw nsw i32 %2, %.0.lcssa
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s
  tail call void %i.r(ptr noundef %i.t, ptr noundef %i.u, i32 noundef %i.v, ptr noundef %i.w) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub10_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not44 = icmp slt i32 %2, 8
  br i1 %.not44, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv46 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next47, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = add nsw i64 %indvars.iv46, -1            ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = load <4 x i64>, ptr %i.c, align 1, !tbaa !10 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv46
  %i.f = load <32 x i8>, ptr %i.e, align 1, !tbaa !10
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.h = load <4 x i64>, ptr %i.g, align 1, !tbaa !10 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv46 ; 2 uses
  %i.j = load <4 x i64>, ptr %i.i, align 1, !tbaa !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load <4 x i64>, ptr %i.k, align 1, !tbaa !10 ; 2 uses
  %i.m = bitcast <4 x i64> %i.j to <32 x i8>
  %i.n = bitcast <4 x i64> %i.l to <32 x i8>
  %i.o = tail call <32 x i8> @llvm.x86.avx2.pavg.b(<32 x i8> %i.m, <32 x i8> %i.n)
  %i.p = xor <4 x i64> %i.l, %i.j
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = and <32 x i8> %i.q, splat (i8 1)
  %i.s = sub <32 x i8> %i.o, %i.r                 ; 2 uses
  %i.t = bitcast <4 x i64> %i.d to <32 x i8>
  %i.u = bitcast <4 x i64> %i.h to <32 x i8>
  %i.v = tail call <32 x i8> @llvm.x86.avx2.pavg.b(<32 x i8> %i.t, <32 x i8> %i.u)
  %i.w = xor <4 x i64> %i.h, %i.d
  %i.x = bitcast <4 x i64> %i.w to <32 x i8>
  %i.y = and <32 x i8> %i.x, splat (i8 1)
  %i.z = sub <32 x i8> %i.v, %i.y                 ; 2 uses
  %i.aa = tail call <32 x i8> @llvm.x86.avx2.pavg.b(<32 x i8> %i.s, <32 x i8> %i.z)
  %i.ab = xor <32 x i8> %i.s, %i.z
  %i.ac = and <32 x i8> %i.ab, splat (i8 1)
  %.neg = sub <32 x i8> %i.f, %i.aa
  %i.ad = add <32 x i8> %.neg, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv46
  store <32 x i8> %i.ad, ptr %i.ae, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !52

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.af = add nuw i32 %2, 2147483640
  %i.ag = and i32 %i.af, 2147483640
  %narrow = add nuw i32 %i.ag, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not28 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not28, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_SSE, i64 80), align 16, !tbaa !9
  %i.ai = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ai
  %i.al = sub nuw nsw i32 %2, %.0.lcssa
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai
  tail call void %i.ah(ptr noundef %i.aj, ptr noundef %i.ak, i32 noundef %i.al, ptr noundef %i.am) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub11_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not44 = icmp slt i32 %2, 8
  br i1 %.not44, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv46 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next47, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = add nsw i64 %indvars.iv46, -1            ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = load <8 x i32>, ptr %i.c, align 1, !tbaa !10 ; 5 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv46
  %i.f = load <8 x i32>, ptr %i.e, align 1, !tbaa !10 ; 5 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.h = load <8 x i32>, ptr %i.g, align 1, !tbaa !10 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv46
  %i.j = load <32 x i8>, ptr %i.i, align 1, !tbaa !10
  %i.k = shufflevector <8 x i32> %i.h, <8 x i32> %i.f, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.l = shufflevector <8 x i32> %i.h, <8 x i32> %i.f, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %4 = shufflevector <8 x i32> %i.f, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  %5 = bitcast <8 x i32> %4 to <32 x i8>
  %i.m = bitcast <8 x i32> %i.k to <32 x i8>
  %i.n = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %5, <32 x i8> %i.m)
  %6 = shufflevector <8 x i32> %i.f, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 3, i32 3, i32 6, i32 6, i32 7, i32 7>
  %7 = bitcast <8 x i32> %6 to <32 x i8>
  %i.o = bitcast <8 x i32> %i.l to <32 x i8>
  %i.p = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %7, <32 x i8> %i.o)
  %i.q = bitcast <4 x i64> %i.n to <8 x i32>
  %i.r = bitcast <4 x i64> %i.p to <8 x i32>
  %i.s = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.q, <8 x i32> %i.r)
  %i.t = shufflevector <8 x i32> %i.h, <8 x i32> %i.d, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.u = shufflevector <8 x i32> %i.h, <8 x i32> %i.d, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %8 = shufflevector <8 x i32> %i.d, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5>
  %9 = bitcast <8 x i32> %8 to <32 x i8>
  %i.v = bitcast <8 x i32> %i.t to <32 x i8>
  %i.w = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %9, <32 x i8> %i.v)
  %10 = shufflevector <8 x i32> %i.d, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 3, i32 3, i32 6, i32 6, i32 7, i32 7>
  %11 = bitcast <8 x i32> %10 to <32 x i8>
  %i.x = bitcast <8 x i32> %i.u to <32 x i8>
  %i.y = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %11, <32 x i8> %i.x)
  %i.z = bitcast <4 x i64> %i.w to <8 x i32>
  %i.aa = bitcast <4 x i64> %i.y to <8 x i32>
  %i.ab = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.z, <8 x i32> %i.aa)
  %i.ac = bitcast <16 x i16> %i.ab to <8 x i32>
  %i.ad = bitcast <16 x i16> %i.s to <8 x i32>
  %i.ae = icmp sgt <8 x i32> %i.ac, %i.ad
  %i.af = select <8 x i1> %i.ae, <8 x i32> %i.d, <8 x i32> %i.f
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = sub <32 x i8> %i.j, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv46
  store <32 x i8> %i.ah, ptr %i.ai, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !53

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.aj = add nuw i32 %2, 2147483640
  %i.ak = and i32 %i.aj, 2147483640
  %narrow = add nuw i32 %i.ak, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not31 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_SSE, i64 88), align 8, !tbaa !9
  %i.am = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.ap = sub nuw nsw i32 %2, %.0.lcssa
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.am
  tail call void %i.al(ptr noundef %i.an, ptr noundef %i.ao, i32 noundef %i.ap, ptr noundef %i.aq) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub12_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not51 = icmp slt i32 %2, 8
  br i1 %.not51, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv53 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next54, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv53
  %i.c = load <32 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.d = add nsw i64 %indvars.iv53, -1            ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %0, i64 %i.d
  %i.f = load <32 x i8>, ptr %i.e, align 1, !tbaa !10 ; 2 uses
  %i.g = shufflevector <32 x i8> %i.f, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.h = shufflevector <32 x i8> %i.f, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53
  %i.j = load <32 x i8>, ptr %i.i, align 1, !tbaa !10 ; 2 uses
  %i.k = shufflevector <32 x i8> %i.j, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.l = shufflevector <32 x i8> %i.j, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.n = load <32 x i8>, ptr %i.m, align 1, !tbaa !10 ; 2 uses
  %i.o = shufflevector <32 x i8> %i.n, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.p = shufflevector <32 x i8> %i.n, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.q = bitcast <32 x i8> %i.k to <16 x i16>
  %i.r = bitcast <32 x i8> %i.o to <16 x i16>
  %i.s = bitcast <32 x i8> %i.l to <16 x i16>
  %i.t = bitcast <32 x i8> %i.p to <16 x i16>
  %i.u = bitcast <32 x i8> %i.g to <16 x i16>
  %i.v = add nuw nsw <16 x i16> %i.q, %i.u
  %i.w = sub nsw <16 x i16> %i.v, %i.r
  %i.x = bitcast <32 x i8> %i.h to <16 x i16>
  %i.y = add nuw nsw <16 x i16> %i.s, %i.x
  %i.z = sub nsw <16 x i16> %i.y, %i.t
  %i.aa = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.w, <16 x i16> %i.z)
  %i.ab = sub <32 x i8> %i.c, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv53
  store <32 x i8> %i.ab, ptr %i.ac, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %2, 2147483640
  %i.ae = and i32 %i.ad, 2147483640
  %narrow = add nuw i32 %i.ae, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not49 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not49, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_SSE, i64 96), align 16, !tbaa !9
  %i.ag = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag
  %i.aj = sub nuw nsw i32 %2, %.0.lcssa
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ag
  tail call void %i.af(ptr noundef %i.ah, ptr noundef %i.ai, i32 noundef %i.aj, ptr noundef %i.ak) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub13_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not69 = icmp slt i32 %2, 8
  br i1 %.not69, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv71 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next72, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = add nsw i64 %indvars.iv71, -1            ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = load <32 x i8>, ptr %i.c, align 1, !tbaa !10 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv71
  %i.f = load <32 x i8>, ptr %i.e, align 1, !tbaa !10
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv71
  %i.h = load <32 x i8>, ptr %i.g, align 1, !tbaa !10 ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.j = load <32 x i8>, ptr %i.i, align 1, !tbaa !10 ; 2 uses
  %i.k = shufflevector <32 x i8> %i.d, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.l = shufflevector <32 x i8> %i.h, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.m = shufflevector <32 x i8> %i.j, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.n = bitcast <32 x i8> %i.l to <16 x i16>
  %i.o = bitcast <32 x i8> %i.k to <16 x i16>
  %i.p = add nuw nsw <16 x i16> %i.n, %i.o
  %i.q = lshr <16 x i16> %i.p, splat (i16 1)      ; 3 uses
  %i.r = bitcast <32 x i8> %i.m to <16 x i16>     ; 2 uses
  %i.s = sub nsw <16 x i16> %i.q, %i.r
  %i.t = icmp samesign ult <16 x i16> %i.q, %i.r
  %.neg = zext <16 x i1> %i.t to <16 x i16>
  %i.u = add nsw <16 x i16> %i.s, %.neg
  %i.v = ashr <16 x i16> %i.u, splat (i16 1)
  %i.w = add nsw <16 x i16> %i.v, %i.q
  %i.x = shufflevector <32 x i8> %i.d, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.y = shufflevector <32 x i8> %i.h, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.z = shufflevector <32 x i8> %i.j, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.aa = bitcast <32 x i8> %i.y to <16 x i16>
  %i.ab = bitcast <32 x i8> %i.x to <16 x i16>
  %i.ac = add nuw nsw <16 x i16> %i.aa, %i.ab
  %i.ad = lshr <16 x i16> %i.ac, splat (i16 1)    ; 3 uses
  %i.ae = bitcast <32 x i8> %i.z to <16 x i16>    ; 2 uses
  %i.af = sub nsw <16 x i16> %i.ad, %i.ae
  %i.ag = icmp samesign ult <16 x i16> %i.ad, %i.ae
  %.neg66 = zext <16 x i1> %i.ag to <16 x i16>
  %i.ah = add nsw <16 x i16> %i.af, %.neg66
  %i.ai = ashr <16 x i16> %i.ah, splat (i16 1)
  %i.aj = add nsw <16 x i16> %i.ai, %i.ad
  %i.ak = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.w, <16 x i16> %i.aj)
  %i.al = sub <32 x i8> %i.f, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv71
  store <32 x i8> %i.al, ptr %i.am, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !55

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.an = add nuw i32 %2, 2147483640
  %i.ao = and i32 %i.an, 2147483640
  %narrow = add nuw i32 %i.ao, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not65 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not65, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_SSE, i64 104), align 8, !tbaa !9
  %i.aq = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq
  %i.at = sub nuw nsw i32 %2, %.0.lcssa
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aq
  tail call void %i.ap(ptr noundef %i.ar, ptr noundef %i.as, i32 noundef %i.at, ptr noundef %i.au) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
end_hunk_2
