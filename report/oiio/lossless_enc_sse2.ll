inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
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
@VP8LBundleColorMap_SSE = external local_unnamed_addr global ptr, align 8
@VP8LPredictorsSub_SSE = external local_unnamed_addr global [16 x ptr], align 16
@kSLog2Table = external local_unnamed_addr constant [256 x i64], align 16
@VP8LFastSLog2Slow = external local_unnamed_addr global ptr, align 8
@VP8LPredictorsSub_C = external local_unnamed_addr global [16 x ptr], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8LEncDspInitSSE2() local_unnamed_addr #0 {
bb.a:
  store ptr @SubtractGreenFromBlueAndRed_SSE2, ptr @VP8LSubtractGreenFromBlueAndRed, align 8, !tbaa !7
  store ptr @TransformColor_SSE2, ptr @VP8LTransformColor, align 8, !tbaa !7
  store ptr @CollectColorBlueTransforms_SSE2, ptr @VP8LCollectColorBlueTransforms, align 8, !tbaa !7
  store ptr @CollectColorRedTransforms_SSE2, ptr @VP8LCollectColorRedTransforms, align 8, !tbaa !7
  store ptr @AddVector_SSE2, ptr @VP8LAddVector, align 8, !tbaa !7
  store ptr @AddVectorEq_SSE2, ptr @VP8LAddVectorEq, align 8, !tbaa !7
  store ptr @CombinedShannonEntropy_SSE2, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !7
  store ptr @VectorMismatch_SSE2, ptr @VP8LVectorMismatch, align 8, !tbaa !7
  store ptr @BundleColorMap_SSE2, ptr @VP8LBundleColorMap, align 8, !tbaa !7
  store ptr @PredictorSub0_SSE2, ptr @VP8LPredictorsSub, align 16, !tbaa !7
  store ptr @PredictorSub1_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 8), align 8, !tbaa !7
  store ptr @PredictorSub2_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 16), align 16, !tbaa !7
  store ptr @PredictorSub3_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 24), align 8, !tbaa !7
  store ptr @PredictorSub4_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 32), align 16, !tbaa !7
  store ptr @PredictorSub5_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 40), align 8, !tbaa !7
  store ptr @PredictorSub6_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 48), align 16, !tbaa !7
  store ptr @PredictorSub7_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 56), align 8, !tbaa !7
  store ptr @PredictorSub8_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 64), align 16, !tbaa !7
  store ptr @PredictorSub9_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 72), align 8, !tbaa !7
  store ptr @PredictorSub10_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 80), align 16, !tbaa !7
  store ptr @PredictorSub11_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 88), align 8, !tbaa !7
  store ptr @PredictorSub12_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 96), align 16, !tbaa !7
  store ptr @PredictorSub13_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 104), align 8, !tbaa !7
  store ptr @PredictorSub0_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 112), align 16, !tbaa !7
  store ptr @PredictorSub0_SSE2, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 120), align 8, !tbaa !7
  store ptr @SubtractGreenFromBlueAndRed_SSE2, ptr @VP8LSubtractGreenFromBlueAndRed_SSE, align 8, !tbaa !7
  store ptr @TransformColor_SSE2, ptr @VP8LTransformColor_SSE, align 8, !tbaa !7
  store ptr @CollectColorBlueTransforms_SSE2, ptr @VP8LCollectColorBlueTransforms_SSE, align 8, !tbaa !7
  store ptr @CollectColorRedTransforms_SSE2, ptr @VP8LCollectColorRedTransforms_SSE, align 8, !tbaa !7
  store ptr @BundleColorMap_SSE2, ptr @VP8LBundleColorMap_SSE, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @VP8LPredictorsSub_SSE, ptr noundef nonnull align 16 dereferenceable(128) @VP8LPredictorsSub, i64 128, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SubtractGreenFromBlueAndRed_SSE2(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %.not21 = icmp slt i32 %1, 4
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv23 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next24, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv23 ; 2 uses
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !9 ; 2 uses
  %i.d = bitcast <2 x i64> %i.c to <8 x i16>
  %i.e = lshr <8 x i16> %i.d, splat (i16 8)
  %i.f = shufflevector <8 x i16> %i.e, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6>
  %i.g = bitcast <2 x i64> %i.c to <16 x i8>
  %i.h = bitcast <8 x i16> %i.f to <16 x i8>
  %i.i = sub <16 x i8> %i.g, %i.h
  store <16 x i8> %i.i, ptr %i.b, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = and i32 %1, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 3 uses
  %.not20 = icmp eq i32 %.0.lcssa, %1
  br i1 %.not20, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = zext nneg i32 %.0.lcssa to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = sub nsw i32 %1, %.0.lcssa
  tail call void @VP8LSubtractGreenFromBlueAndRed_C(ptr noundef %i.l, i32 noundef %i.m) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TransformColor_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) #1 {
bb.a:
  %.not36 = icmp slt i32 %2, 4
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !12
  %i.c = zext i8 %i.b to i16
  %i.d = shl nuw i16 %i.c, 8
  %i.e = ashr exact i16 %i.d, 5
  %i.f = sext i16 %i.e to i32
  %i.g = shl nsw i32 %i.f, 16
  %i.h = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.j = load i8, ptr %0, align 1, !tbaa !14
  %i.k = zext i8 %i.j to i16
  %i.l = shl nuw i16 %i.k, 8
  %i.m = ashr exact i16 %i.l, 5
  %i.n = sext i16 %i.m to i32
  %i.o = shl nsw i32 %i.n, 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !15
  %i.r = zext i8 %i.q to i16
  %i.s = shl nuw i16 %i.r, 8
  %i.t = ashr exact i16 %i.s, 5
  %i.u = zext i16 %i.t to i32
  %i.v = or disjoint i32 %i.o, %i.u
  %i.w = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.y = bitcast <4 x i32> %i.x to <8 x i16>
  %i.z = bitcast <4 x i32> %i.i to <8 x i16>
  %i.aa = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv38 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next39, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv38 ; 2 uses
  %i.ac = load <2 x i64>, ptr %i.ab, align 1, !tbaa !9 ; 3 uses
  %i.ad = bitcast <2 x i64> %i.ac to <8 x i16>
  %i.ae = bitcast <2 x i64> %i.ac to <8 x i16>
  %i.af = and <8 x i16> %i.ae, <i16 -256, i16 poison, i16 -256, i16 poison, i16 -256, i16 poison, i16 -256, i16 poison>
  %i.ag = shufflevector <8 x i16> %i.af, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6>
  %i.ah = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ag, <8 x i16> %i.y)
  %i.ai = shl <8 x i16> %i.ad, splat (i16 8)
  %i.aj = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ai, <8 x i16> %i.z)
  %i.ak = bitcast <8 x i16> %i.aj to <4 x i32>
  %i.al = lshr exact <4 x i32> %i.ak, splat (i32 16)
  %i.am = bitcast <4 x i32> %i.al to <16 x i8>
  %i.an = bitcast <8 x i16> %i.ah to <16 x i8>
  %i.ao = add <16 x i8> %i.am, %i.an
  %i.ap = bitcast <2 x i64> %i.ac to <16 x i8>
  %i.aq = and <16 x i8> %i.ao, <i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0, i8 -1, i8 0>
  %i.ar = sub <16 x i8> %i.ap, %i.aq
  store <16 x i8> %i.ar, ptr %i.ab, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.aa
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 4
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.as = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.as, %._crit_edge.loopexit ] ; 3 uses
  %.not35 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.at = zext nneg i32 %.0.lcssa to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at
  %i.av = sub nsw i32 %2, %.0.lcssa
  tail call void @VP8LTransformColor_C(ptr noundef nonnull %0, ptr noundef %i.au, i32 noundef %i.av) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CollectColorBlueTransforms_SSE2(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph77, label %._crit_edge78.split

.lr.ph77:                                         ; preds = %bb.a
  %.tr65 = trunc i32 %4 to i16
  %i.b = shl i16 %.tr65, 8
  %i.c = ashr exact i16 %i.b, 5
  %i.d = zext i16 %i.c to i32
  %i.e = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %i.f = shufflevector <4 x i32> %i.e, <4 x i32> poison, <4 x i32> zeroinitializer
  %.tr = trunc i32 %5 to i16
  %i.g = shl i16 %.tr, 8
  %i.h = ashr exact i16 %i.g, 5
  %i.i = sext i16 %i.h to i32
  %i.j = shl nsw i32 %i.i, 16
  %i.k = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.l = shufflevector <4 x i32> %i.k, <4 x i32> poison, <4 x i32> zeroinitializer
  %.not6673 = icmp slt i32 %2, 8
  %i.m = bitcast <4 x i32> %i.l to <8 x i16>      ; 2 uses
  %i.n = bitcast <4 x i32> %i.f to <8 x i16>      ; 2 uses
  br i1 %.not6673, label %._crit_edge78.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph77
  %i.o = zext nneg i32 %2 to i64
  %i.p = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv85 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next86, %._crit_edge ] ; 2 uses
  %i.q = mul nsw i64 %indvars.iv85, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv80 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next81, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv80 ; 2 uses
  %i.t = load <2 x i64>, ptr %i.s, align 1, !tbaa !9 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load <2 x i64>, ptr %i.u, align 1, !tbaa !9 ; 3 uses
  %i.w = bitcast <2 x i64> %i.t to <8 x i16>
  %i.x = shl <8 x i16> %i.w, splat (i16 8)
  %i.y = bitcast <2 x i64> %i.v to <8 x i16>
  %i.z = shl <8 x i16> %i.y, splat (i16 8)
  %i.aa = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.x, <8 x i16> %i.m)
  %i.ab = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.z, <8 x i16> %i.m)
  %i.ac = bitcast <2 x i64> %i.t to <8 x i16>
  %i.ad = and <8 x i16> %i.ac, <i16 -256, i16 0, i16 -256, i16 0, i16 -256, i16 0, i16 -256, i16 0>
  %i.ae = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ad, <8 x i16> %i.n)
  %i.af = bitcast <2 x i64> %i.v to <8 x i16>
  %i.ag = and <8 x i16> %i.af, <i16 -256, i16 0, i16 -256, i16 0, i16 -256, i16 0, i16 -256, i16 0>
  %i.ah = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.ag, <8 x i16> %i.n)
  %i.ai = bitcast <2 x i64> %i.t to <16 x i8>
  %i.aj = bitcast <8 x i16> %i.ae to <16 x i8>
  %i.ak = bitcast <2 x i64> %i.v to <16 x i8>
  %i.al = bitcast <8 x i16> %i.ah to <16 x i8>
  %i.am = bitcast <8 x i16> %i.aa to <4 x i32>
  %i.an = lshr exact <4 x i32> %i.am, splat (i32 16)
  %i.ao = bitcast <8 x i16> %i.ab to <4 x i32>
  %i.ap = lshr exact <4 x i32> %i.ao, splat (i32 16)
  %i.aq = bitcast <4 x i32> %i.an to <16 x i8>
  %i.ar = add <16 x i8> %i.aq, %i.aj
  %i.as = sub <16 x i8> %i.ai, %i.ar
  %i.at = bitcast <4 x i32> %i.ap to <16 x i8>
  %i.au = add <16 x i8> %i.at, %i.al
  %i.av = sub <16 x i8> %i.ak, %i.au
  %i.aw = bitcast <16 x i8> %i.as to <4 x i32>
  %i.ax = and <4 x i32> %i.aw, splat (i32 255)
  %i.ay = bitcast <16 x i8> %i.av to <4 x i32>
  %i.az = and <4 x i32> %i.ay, splat (i32 255)
  %i.ba = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ax, <4 x i32> %i.az) ; 8 uses
  %.sroa.0.0.vec.extract = extractelement <8 x i16> %i.ba, i64 0
  %i.bb = zext i16 %.sroa.0.0.vec.extract to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !3
  %.sroa.0.2.vec.extract = extractelement <8 x i16> %i.ba, i64 1
  %i.bf = zext i16 %.sroa.0.2.vec.extract to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !3
  %.sroa.0.4.vec.extract = extractelement <8 x i16> %i.ba, i64 2
  %i.bj = zext i16 %.sroa.0.4.vec.extract to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !3
  %.sroa.0.6.vec.extract = extractelement <8 x i16> %i.ba, i64 3
  %i.bn = zext i16 %.sroa.0.6.vec.extract to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !3
  %.sroa.0.8.vec.extract = extractelement <8 x i16> %i.ba, i64 4
  %i.br = zext i16 %.sroa.0.8.vec.extract to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !3
  %.sroa.0.10.vec.extract = extractelement <8 x i16> %i.ba, i64 5
  %i.bv = zext i16 %.sroa.0.10.vec.extract to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !3
  %.sroa.0.12.vec.extract = extractelement <8 x i16> %i.ba, i64 6
  %i.bz = zext i16 %.sroa.0.12.vec.extract to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !3
  %.sroa.0.14.vec.extract = extractelement <8 x i16> %i.ba, i64 7
  %i.cd = zext i16 %.sroa.0.14.vec.extract to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not66 = icmp samesign ugt i64 %indvars.iv.next, %i.o
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 8
  br i1 %.not66, label %._crit_edge, label %bb.b, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge78.split, label %.lr.ph, !llvm.loop !18

._crit_edge78.split:                              ; preds = %._crit_edge, %.lr.ph77, %bb.a
  %i.ch = and i32 %2, 7                           ; 3 uses
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge78.split
  %i.ci = sext i32 %2 to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ci
  %i.ck = zext nneg i32 %i.ch to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cl
  tail call void @VP8LCollectColorBlueTransforms_C(ptr noundef nonnull %i.cm, i32 noundef %1, i32 noundef %i.ch, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge78.split
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CollectColorRedTransforms_SSE2(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph59, label %._crit_edge60.split

.lr.ph59:                                         ; preds = %bb.a
  %.tr = trunc i32 %4 to i16
  %i.b = shl i16 %.tr, 8
  %i.c = ashr exact i16 %i.b, 5
  %i.d = zext i16 %i.c to i32
  %i.e = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %i.f = shufflevector <4 x i32> %i.e, <4 x i32> poison, <4 x i32> zeroinitializer
  %.not5355 = icmp slt i32 %2, 8
  %i.g = bitcast <4 x i32> %i.f to <8 x i16>      ; 2 uses
  br i1 %.not5355, label %._crit_edge60.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph59
  %i.h = zext nneg i32 %2 to i64
  %i.i = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv67 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next68, %._crit_edge ] ; 2 uses
  %i.j = mul nsw i64 %indvars.iv67, %i.i
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv62 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next63, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv62 ; 2 uses
  %i.m = load <2 x i64>, ptr %i.l, align 1, !tbaa !9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
end_hunk_0
begin_hunk_1_@VectorMismatch_SSE2:bb.a
  %or.cond = select i1 %.not44, i1 %i.w, i1 false
  br i1 %or.cond, label %.preheader, label %.thread, !llvm.loop !28

bb.c:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %2, 3
  br i1 %i.x, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.y = load <4 x i32>, ptr %0, align 1, !tbaa !9
  %i.z = load <4 x i32>, ptr %1, align 1, !tbaa !9
  %i.aa = icmp eq <4 x i32> %i.y, %i.z
  %i.ab = sext <4 x i1> %i.aa to <4 x i32>
  %i.ac = bitcast <4 x i32> %i.ab to <16 x i8>
  %i.ad = icmp sgt <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i32 %2, 7
  br i1 %i.ag, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load <4 x i32>, ptr %i.ah, align 1, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load <4 x i32>, ptr %i.aj, align 1, !tbaa !9
  %i.al = icmp eq <4 x i32> %i.ai, %i.ak
  %i.am = sext <4 x i1> %i.al to <4 x i32>
  %i.an = bitcast <4 x i32> %i.am to <16 x i8>
  %i.ao = icmp sgt <16 x i8> %i.an, splat (i8 -1)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = icmp eq i16 %i.ap, 0
  %spec.select = select i1 %i.aq, i32 8, i32 4
  br label %.thread

.thread:                                          ; preds = %.preheader, %bb.b, %bb.f, %bb.c, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %spec.select, %bb.f ], [ 4, %bb.e ], [ %.0, %.preheader ], [ %.45, %bb.b ] ; 3 uses
  %i.ar = icmp slt i32 %.3, %2
  br i1 %i.ar, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.thread
  %i.as = sext i32 %.3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.as, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %bb.g, label %.critedge.loopexit.split.loop.exit59

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !29

.critedge.loopexit.split.loop.exit59:             ; preds = %.lr.ph
  %i.ay = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.loopexit.split.loop.exit59, %.thread
  %.4.lcssa = phi i32 [ %.3, %.thread ], [ %i.ay, %.critedge.loopexit.split.loop.exit59 ], [ %2, %bb.g ]
  ret i32 %.4.lcssa
}

; Function Attrs: nounwind uwtable
define internal void @BundleColorMap_SSE2(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not93117 = icmp slt i32 %1, 16                ; 4 uses
  switch i32 %2, label %.preheader [
    i32 0, label %.preheader95
    i32 1, label %.preheader97
    i32 2, label %.preheader99
  ]

.preheader99:                                     ; preds = %bb.a
  br i1 %.not93117, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader99
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader97:                                     ; preds = %bb.a
  br i1 %.not93117, label %.loopexit, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %.preheader97
  %i.b = zext nneg i32 %1 to i64
  br label %.lr.ph108

.preheader95:                                     ; preds = %bb.a
  br i1 %.not93117, label %.loopexit, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %.preheader95
  %i.c = zext nneg i32 %1 to i64
  br label %.lr.ph114

.preheader:                                       ; preds = %bb.a
  br i1 %.not93117, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %.preheader
  %i.d = zext nneg i32 %1 to i64
  br label %.lr.ph120

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.lr.ph114
  %indvars.iv147 = phi i64 [ 0, %.lr.ph114.preheader ], [ %indvars.iv.next148, %.lr.ph114 ] ; 2 uses
  %indvars.iv145 = phi i64 [ 16, %.lr.ph114.preheader ], [ %indvars.iv.next146, %.lr.ph114 ]
  %.0113 = phi ptr [ %3, %.lr.ph114.preheader ], [ %i.r, %.lr.ph114 ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv147
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9 ; 2 uses
  %i.g = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.f, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.h = bitcast <16 x i8> %i.g to <8 x i16>      ; 2 uses
  %i.i = shufflevector <8 x i16> %i.h, <8 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.j = shufflevector <8 x i16> %i.h, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.k = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.f, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.l = bitcast <16 x i8> %i.k to <8 x i16>      ; 2 uses
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.n = shufflevector <8 x i16> %i.l, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.i, ptr %.0113, align 1, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %.0113, i64 16
  store <8 x i16> %i.j, ptr %i.o, align 1, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %.0113, i64 32
  store <8 x i16> %i.m, ptr %i.p, align 1, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %.0113, i64 48
  store <8 x i16> %i.n, ptr %i.q, align 1, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %.0113, i64 64 ; 2 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 16 ; 2 uses
  %.not92 = icmp samesign ugt i64 %indvars.iv.next146, %i.c
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 16
  br i1 %.not92, label %.loopexit.loopexit123, label %.lr.ph114, !llvm.loop !30

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %indvars.iv140 = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next141, %.lr.ph108 ] ; 2 uses
  %indvars.iv138 = phi i64 [ 16, %.lr.ph108.preheader ], [ %indvars.iv.next139, %.lr.ph108 ]
  %.1107 = phi ptr [ %3, %.lr.ph108.preheader ], [ %i.z, %.lr.ph108 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv140
  %i.t = load <8 x i16>, ptr %i.s, align 1, !tbaa !9
  %i.u = mul <8 x i16> %i.t, splat (i16 272)
  %i.v = and <8 x i16> %i.u, splat (i16 -256)     ; 2 uses
  %i.w = shufflevector <8 x i16> %i.v, <8 x i16> <i16 -256, i16 -256, i16 -256, i16 -256, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.x = shufflevector <8 x i16> %i.v, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -256, i16 -256, i16 -256, i16 -256>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.w, ptr %.1107, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %.1107, i64 16
  store <8 x i16> %i.x, ptr %i.y, align 1, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %.1107, i64 32 ; 2 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 16 ; 2 uses
  %.not91 = icmp samesign ugt i64 %indvars.iv.next139, %i.b
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 16
  br i1 %.not91, label %.loopexit.loopexit124, label %.lr.ph108, !llvm.loop !31

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv133 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next134, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 16, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.2103 = phi ptr [ %3, %.lr.ph.preheader ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv133
  %i.ab = load <8 x i16>, ptr %i.aa, align 1, !tbaa !9
  %i.ac = mul <8 x i16> %i.ab, splat (i16 260)
  %.inner = and <8 x i16> %i.ac, splat (i16 3840) ; 2 uses
  %i.ad = bitcast <8 x i16> %.inner to <4 x i32>
  %i.ae = lshr <4 x i32> %i.ad, splat (i32 12)
  %i.af = bitcast <4 x i32> %i.ae to <2 x i64>
  %i.ag = bitcast <8 x i16> %.inner to <2 x i64>
  %i.ah = or <2 x i64> %i.ag, splat (i64 -72057589759737856)
  %i.ai = or disjoint <2 x i64> %i.ah, %i.af
  store <2 x i64> %i.ai, ptr %.2103, align 1, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %.2103, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 16
  br i1 %.not, label %.loopexit.loopexit125, label %.lr.ph, !llvm.loop !32

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %indvars.iv154 = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next155, %.lr.ph120 ] ; 2 uses
  %indvars.iv152 = phi i64 [ 16, %.lr.ph120.preheader ], [ %indvars.iv.next153, %.lr.ph120 ]
  %.3119 = phi ptr [ %3, %.lr.ph120.preheader ], [ %i.ax, %.lr.ph120 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv154
  %i.al = load <2 x i64>, ptr %i.ak, align 1, !tbaa !9
  %i.am = shl <2 x i64> %i.al, splat (i64 7)
  %i.an = bitcast <2 x i64> %i.am to <16 x i8>
  %i.ao = icmp slt <16 x i8> %i.an, zeroinitializer
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = and i32 %i.ar, 65280
  %i.at = or disjoint i32 %i.as, -16777216
  store i32 %i.at, ptr %.3119, align 4, !tbaa !3
  %i.au = and i32 %i.aq, 65280
  %i.av = or disjoint i32 %i.au, -16777216
  %i.aw = getelementptr inbounds nuw i8, ptr %.3119, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %.3119, i64 8 ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 16 ; 2 uses
  %.not93 = icmp samesign ugt i64 %indvars.iv.next153, %i.d
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 16
  br i1 %.not93, label %.loopexit.loopexit, label %.lr.ph120, !llvm.loop !33

.loopexit.loopexit:                               ; preds = %.lr.ph120
  %i.ay = and i32 %1, 2147483632
  br label %.loopexit

.loopexit.loopexit123:                            ; preds = %.lr.ph114
  %i.az = and i32 %1, 2147483632
  br label %.loopexit

.loopexit.loopexit124:                            ; preds = %.lr.ph108
  %i.ba = and i32 %1, 2147483632
  br label %.loopexit

.loopexit.loopexit125:                            ; preds = %.lr.ph
  %i.bb = and i32 %1, 2147483632
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit125, %.loopexit.loopexit124, %.loopexit.loopexit123, %.loopexit.loopexit, %.preheader99, %.preheader97, %.preheader95, %.preheader
  %.485 = phi i32 [ %i.ay, %.loopexit.loopexit ], [ %i.ba, %.loopexit.loopexit124 ], [ %i.az, %.loopexit.loopexit123 ], [ 0, %.preheader ], [ 0, %.preheader95 ], [ 0, %.preheader97 ], [ 0, %.preheader99 ], [ %i.bb, %.loopexit.loopexit125 ] ; 3 uses
  %.4 = phi ptr [ %i.ax, %.loopexit.loopexit ], [ %i.z, %.loopexit.loopexit124 ], [ %i.r, %.loopexit.loopexit123 ], [ %3, %.preheader ], [ %3, %.preheader95 ], [ %3, %.preheader97 ], [ %3, %.preheader99 ], [ %i.aj, %.loopexit.loopexit125 ]
  %.not94 = icmp eq i32 %.485, %1
  br i1 %.not94, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.bc = zext nneg i32 %.485 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.be = sub nsw i32 %1, %.485
  tail call void @VP8LBundleColorMap_C(ptr noundef %i.bd, i32 noundef %i.be, i32 noundef %2, ptr noundef %.4) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub0_SSE2(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not20 = icmp slt i32 %2, 4
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next23, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv22
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = add <16 x i8> %i.c, <i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1>
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv22
  store <16 x i8> %i.d, ptr %i.e, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %._crit_edge.loopexit ] ; 3 uses
  %.not19 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = load ptr, ptr @VP8LPredictorsSub_C, align 16, !tbaa !7
  %i.h = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  %i.j = sub nsw i32 %2, %.0.lcssa
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.h
  tail call void %i.g(ptr noundef %i.i, ptr noundef null, i32 noundef %i.j, ptr noundef %i.k) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub1_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not25 = icmp slt i32 %2, 4
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next28, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv27 ; 2 uses
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = getelementptr i8, ptr %i.b, i64 -4
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !9
  %i.f = sub <16 x i8> %i.c, %i.e
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv27
  store <16 x i8> %i.f, ptr %i.g, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 8), align 8, !tbaa !7
  %i.j = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = icmp eq ptr %1, null
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.n = select i1 %i.l, ptr null, ptr %i.m
  %i.o = sub nsw i32 %2, %.0.lcssa
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.j
  tail call void %i.i(ptr noundef %i.k, ptr noundef %i.n, i32 noundef %i.o, ptr noundef %i.p) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub2_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not25 = icmp slt i32 %2, 4
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next28, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv27
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv27
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !9
  %i.f = sub <16 x i8> %i.c, %i.e
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv27
  store <16 x i8> %i.f, ptr %i.g, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.h, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 16), align 16, !tbaa !7
  %i.j = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = icmp eq ptr %1, null
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.n = select i1 %i.l, ptr null, ptr %i.m
  %i.o = sub nsw i32 %2, %.0.lcssa
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.j
  tail call void %i.i(ptr noundef %i.k, ptr noundef %i.n, i32 noundef %i.o, ptr noundef %i.p) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub3_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not25 = icmp slt i32 %2, 4
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next28, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv27
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9
  %i.g = sub <16 x i8> %i.c, %i.f
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv27
  store <16 x i8> %i.g, ptr %i.h, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !37

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.i = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 24), align 8, !tbaa !7
  %i.k = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = icmp eq ptr %1, null
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.o = select i1 %i.m, ptr null, ptr %i.n
  %i.p = sub nsw i32 %2, %.0.lcssa
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k
  tail call void %i.j(ptr noundef %i.l, ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub4_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not25 = icmp slt i32 %2, 4
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next28, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv27
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = getelementptr [4 x i8], ptr %1, i64 %indvars.iv27
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9
  %i.g = sub <16 x i8> %i.c, %i.f
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv27
  store <16 x i8> %i.g, ptr %i.h, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !38

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.i = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 32), align 16, !tbaa !7
  %i.k = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = icmp eq ptr %1, null
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.o = select i1 %i.m, ptr null, ptr %i.n
  %i.p = sub nsw i32 %2, %.0.lcssa
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k
  tail call void %i.j(ptr noundef %i.l, ptr noundef %i.o, i32 noundef %i.p, ptr noundef %i.q) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub5_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not39 = icmp slt i32 %2, 4
  br i1 %.not39, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv41 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next42, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr [4 x i8], ptr %0, i64 %indvars.iv41 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -4
  %i.d = load <2 x i64>, ptr %i.c, align 1, !tbaa !9 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv41 ; 2 uses
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load <2 x i64>, ptr %i.g, align 1, !tbaa !9 ; 2 uses
  %i.i = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.j = bitcast <2 x i64> %i.d to <16 x i8>
  %i.k = bitcast <2 x i64> %i.h to <16 x i8>
  %i.l = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.j, <16 x i8> %i.k)
  %i.m = xor <2 x i64> %i.h, %i.d
  %i.n = bitcast <2 x i64> %i.m to <16 x i8>
  %i.o = and <16 x i8> %i.n, splat (i8 1)
  %i.p = sub <16 x i8> %i.l, %i.o                 ; 2 uses
  %i.q = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.p, <16 x i8> %i.f)
  %i.r = xor <16 x i8> %i.p, %i.f
  %i.s = and <16 x i8> %i.r, splat (i8 1)
  %.neg = sub <16 x i8> %i.i, %i.q
  %i.t = add <16 x i8> %.neg, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv41
  store <16 x i8> %i.t, ptr %i.u, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !39

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.v = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.v, %._crit_edge.loopexit ] ; 3 uses
  %.not26 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not26, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 40), align 8, !tbaa !7
  %i.x = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x
  %i.aa = sub nsw i32 %2, %.0.lcssa
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.x
  tail call void %i.w(ptr noundef %i.y, ptr noundef %i.z, i32 noundef %i.aa, ptr noundef %i.ab) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub6_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not31 = icmp slt i32 %2, 4
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv33 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next34, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = add nsw i64 %indvars.iv33, -1            ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = load <2 x i64>, ptr %i.c, align 1, !tbaa !9 ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.f = load <2 x i64>, ptr %i.e, align 1, !tbaa !9 ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv33
  %i.h = load <16 x i8>, ptr %i.g, align 1, !tbaa !9
  %i.i = bitcast <2 x i64> %i.d to <16 x i8>
  %i.j = bitcast <2 x i64> %i.f to <16 x i8>
  %i.k = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.i, <16 x i8> %i.j)
  %i.l = xor <2 x i64> %i.f, %i.d
  %i.m = bitcast <2 x i64> %i.l to <16 x i8>
  %i.n = and <16 x i8> %i.m, splat (i8 1)
  %.neg = sub <16 x i8> %i.h, %i.k
  %i.o = add <16 x i8> %.neg, %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv33
  store <16 x i8> %i.o, ptr %i.p, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !40

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.q = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 48), align 16, !tbaa !7
  %i.s = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s
  %i.v = sub nsw i32 %2, %.0.lcssa
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s
  tail call void %i.r(ptr noundef %i.t, ptr noundef %i.u, i32 noundef %i.v, ptr noundef %i.w) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub7_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not31 = icmp slt i32 %2, 4
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv33 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next34, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr [4 x i8], ptr %0, i64 %indvars.iv33 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -4
  %i.d = load <2 x i64>, ptr %i.c, align 1, !tbaa !9 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv33
  %i.f = load <2 x i64>, ptr %i.e, align 1, !tbaa !9 ; 2 uses
  %i.g = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.h = bitcast <2 x i64> %i.d to <16 x i8>
  %i.i = bitcast <2 x i64> %i.f to <16 x i8>
  %i.j = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.h, <16 x i8> %i.i)
  %i.k = xor <2 x i64> %i.f, %i.d
  %i.l = bitcast <2 x i64> %i.k to <16 x i8>
  %i.m = and <16 x i8> %i.l, splat (i8 1)
  %.neg = sub <16 x i8> %i.g, %i.j
  %i.n = add <16 x i8> %.neg, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv33
  store <16 x i8> %i.n, ptr %i.o, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 56), align 8, !tbaa !7
  %i.r = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r
  %i.u = sub nsw i32 %2, %.0.lcssa
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r
  tail call void %i.q(ptr noundef %i.s, ptr noundef %i.t, i32 noundef %i.u, ptr noundef %i.v) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub8_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not31 = icmp slt i32 %2, 4
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv33 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next34, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr [4 x i8], ptr %1, i64 %indvars.iv33 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -4
  %i.d = load <2 x i64>, ptr %i.c, align 1, !tbaa !9 ; 2 uses
  %i.e = load <2 x i64>, ptr %i.b, align 1, !tbaa !9 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv33
  %i.g = load <16 x i8>, ptr %i.f, align 1, !tbaa !9
  %i.h = bitcast <2 x i64> %i.d to <16 x i8>
  %i.i = bitcast <2 x i64> %i.e to <16 x i8>
  %i.j = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.h, <16 x i8> %i.i)
  %i.k = xor <2 x i64> %i.e, %i.d
  %i.l = bitcast <2 x i64> %i.k to <16 x i8>
  %i.m = and <16 x i8> %i.l, splat (i8 1)
  %.neg = sub <16 x i8> %i.g, %i.j
  %i.n = add <16 x i8> %.neg, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv33
  store <16 x i8> %i.n, ptr %i.o, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !42

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 64), align 16, !tbaa !7
  %i.r = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r
  %i.u = sub nsw i32 %2, %.0.lcssa
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r
  tail call void %i.q(ptr noundef %i.s, ptr noundef %i.t, i32 noundef %i.u, ptr noundef %i.v) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub9_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not31 = icmp slt i32 %2, 4
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv33 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next34, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv33 ; 2 uses
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !9 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv33
  %i.g = load <16 x i8>, ptr %i.f, align 1, !tbaa !9
  %i.h = bitcast <2 x i64> %i.c to <16 x i8>
  %i.i = bitcast <2 x i64> %i.e to <16 x i8>
  %i.j = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.h, <16 x i8> %i.i)
  %i.k = xor <2 x i64> %i.e, %i.c
  %i.l = bitcast <2 x i64> %i.k to <16 x i8>
  %i.m = and <16 x i8> %i.l, splat (i8 1)
  %.neg = sub <16 x i8> %i.g, %i.j
  %i.n = add <16 x i8> %.neg, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv33
  store <16 x i8> %i.n, ptr %i.o, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %._crit_edge.loopexit ] ; 3 uses
  %.not24 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 72), align 8, !tbaa !7
  %i.r = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r
  %i.u = sub nsw i32 %2, %.0.lcssa
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r
  tail call void %i.q(ptr noundef %i.s, ptr noundef %i.t, i32 noundef %i.u, ptr noundef %i.v) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub10_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not47 = icmp slt i32 %2, 4
  br i1 %.not47, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv49 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next50, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = add nsw i64 %indvars.iv49, -1            ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = load <2 x i64>, ptr %i.c, align 1, !tbaa !9 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv49
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.h = load <2 x i64>, ptr %i.g, align 1, !tbaa !9 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv49 ; 2 uses
  %i.j = load <2 x i64>, ptr %i.i, align 1, !tbaa !9 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load <2 x i64>, ptr %i.k, align 1, !tbaa !9 ; 2 uses
  %i.m = bitcast <2 x i64> %i.j to <16 x i8>
  %i.n = bitcast <2 x i64> %i.l to <16 x i8>
  %i.o = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.m, <16 x i8> %i.n)
  %i.p = xor <2 x i64> %i.l, %i.j
  %i.q = bitcast <2 x i64> %i.p to <16 x i8>
  %i.r = and <16 x i8> %i.q, splat (i8 1)
  %i.s = sub <16 x i8> %i.o, %i.r                 ; 2 uses
  %i.t = bitcast <2 x i64> %i.d to <16 x i8>
  %i.u = bitcast <2 x i64> %i.h to <16 x i8>
  %i.v = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.t, <16 x i8> %i.u)
  %i.w = xor <2 x i64> %i.h, %i.d
  %i.x = bitcast <2 x i64> %i.w to <16 x i8>
  %i.y = and <16 x i8> %i.x, splat (i8 1)
  %i.z = sub <16 x i8> %i.v, %i.y                 ; 2 uses
  %i.aa = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.s, <16 x i8> %i.z)
  %i.ab = xor <16 x i8> %i.s, %i.z
  %i.ac = and <16 x i8> %i.ab, splat (i8 1)
  %.neg = sub <16 x i8> %i.f, %i.aa
  %i.ad = add <16 x i8> %.neg, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv49
  store <16 x i8> %i.ad, ptr %i.ae, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !44

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.af = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.af, %._crit_edge.loopexit ] ; 3 uses
  %.not28 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not28, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 80), align 16, !tbaa !7
  %i.ah = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.ak = sub nsw i32 %2, %.0.lcssa
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ah
  tail call void %i.ag(ptr noundef %i.ai, ptr noundef %i.aj, i32 noundef %i.ak, ptr noundef %i.al) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub11_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not46 = icmp slt i32 %2, 4
  br i1 %.not46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv48 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next49, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = add nsw i64 %indvars.iv48, -1            ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = load <4 x i32>, ptr %i.c, align 1, !tbaa !9 ; 5 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv48
  %i.f = load <4 x i32>, ptr %i.e, align 1, !tbaa !9 ; 5 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.h = load <4 x i32>, ptr %i.g, align 1, !tbaa !9 ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv48
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !9
  %i.k = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.l = shufflevector <4 x i32> %i.h, <4 x i32> %i.f, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.m = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.n = shufflevector <4 x i32> %i.h, <4 x i32> %i.f, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.o = bitcast <4 x i32> %i.k to <16 x i8>
  %i.p = bitcast <4 x i32> %i.l to <16 x i8>
  %i.q = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.o, <16 x i8> %i.p)
  %i.r = bitcast <4 x i32> %i.m to <16 x i8>
  %i.s = bitcast <4 x i32> %i.n to <16 x i8>
  %i.t = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.r, <16 x i8> %i.s)
  %i.u = bitcast <2 x i64> %i.q to <4 x i32>
  %i.v = bitcast <2 x i64> %i.t to <4 x i32>
  %i.w = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.u, <4 x i32> %i.v)
  %i.x = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.y = shufflevector <4 x i32> %i.h, <4 x i32> %i.d, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.z = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.aa = shufflevector <4 x i32> %i.h, <4 x i32> %i.d, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ab = bitcast <4 x i32> %i.x to <16 x i8>
  %i.ac = bitcast <4 x i32> %i.y to <16 x i8>
  %i.ad = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ab, <16 x i8> %i.ac)
  %i.ae = bitcast <4 x i32> %i.z to <16 x i8>
  %i.af = bitcast <4 x i32> %i.aa to <16 x i8>
  %i.ag = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ae, <16 x i8> %i.af)
  %i.ah = bitcast <2 x i64> %i.ad to <4 x i32>
  %i.ai = bitcast <2 x i64> %i.ag to <4 x i32>
  %i.aj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ah, <4 x i32> %i.ai)
  %i.ak = bitcast <8 x i16> %i.aj to <4 x i32>
  %i.al = bitcast <8 x i16> %i.w to <4 x i32>
  %i.am = icmp sgt <4 x i32> %i.ak, %i.al
  %i.an = select <4 x i1> %i.am, <4 x i32> %i.d, <4 x i32> %i.f
  %i.ao = bitcast <4 x i32> %i.an to <16 x i8>
  %i.ap = sub <16 x i8> %i.j, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv48
  store <16 x i8> %i.ap, ptr %i.aq, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !45

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ar = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ar, %._crit_edge.loopexit ] ; 3 uses
  %.not31 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 88), align 8, !tbaa !7
  %i.at = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at
  %i.aw = sub nsw i32 %2, %.0.lcssa
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.at
  tail call void %i.as(ptr noundef %i.au, ptr noundef %i.av, i32 noundef %i.aw, ptr noundef %i.ax) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub12_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not51 = icmp slt i32 %2, 4
  br i1 %.not51, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv53 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next54, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv53
  %i.c = load <16 x i8>, ptr %i.b, align 1, !tbaa !9
  %i.d = add nsw i64 %indvars.iv53, -1            ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %0, i64 %i.d
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9 ; 2 uses
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.h = shufflevector <16 x i8> %i.f, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !9 ; 2 uses
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.l = shufflevector <16 x i8> %i.j, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.n = load <16 x i8>, ptr %i.m, align 1, !tbaa !9 ; 2 uses
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.p = shufflevector <16 x i8> %i.n, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.q = bitcast <16 x i8> %i.k to <8 x i16>
  %i.r = bitcast <16 x i8> %i.o to <8 x i16>
  %i.s = bitcast <16 x i8> %i.l to <8 x i16>
  %i.t = bitcast <16 x i8> %i.p to <8 x i16>
  %i.u = bitcast <16 x i8> %i.g to <8 x i16>
  %i.v = add nuw nsw <8 x i16> %i.q, %i.u
  %i.w = sub nsw <8 x i16> %i.v, %i.r
  %i.x = bitcast <16 x i8> %i.h to <8 x i16>
  %i.y = add nuw nsw <8 x i16> %i.s, %i.x
  %i.z = sub nsw <8 x i16> %i.y, %i.t
  %i.aa = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.w, <8 x i16> %i.z)
  %i.ab = sub <16 x i8> %i.c, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv53
  store <16 x i8> %i.ab, ptr %i.ac, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ad = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ad, %._crit_edge.loopexit ] ; 3 uses
  %.not49 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not49, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 96), align 16, !tbaa !7
  %i.af = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.af
  %i.ai = sub nsw i32 %2, %.0.lcssa
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.af
  tail call void %i.ae(ptr noundef %i.ag, ptr noundef %i.ah, i32 noundef %i.ai, ptr noundef %i.aj) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PredictorSub13_SSE2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noalias noundef %3) #1 {
bb.a:
  %.not69 = icmp slt i32 %2, 4
  br i1 %.not69, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv71 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next72, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = add nsw i64 %indvars.iv71, -1            ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.d = load <16 x i8>, ptr %i.c, align 1, !tbaa !9 ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv71
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv71
  %i.h = load <16 x i8>, ptr %i.g, align 1, !tbaa !9 ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !9 ; 2 uses
  %i.k = shufflevector <16 x i8> %i.d, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.l = shufflevector <16 x i8> %i.h, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.m = shufflevector <16 x i8> %i.j, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.n = bitcast <16 x i8> %i.l to <8 x i16>
  %i.o = bitcast <16 x i8> %i.k to <8 x i16>
  %i.p = add nuw nsw <8 x i16> %i.n, %i.o
  %i.q = lshr <8 x i16> %i.p, splat (i16 1)       ; 3 uses
  %i.r = bitcast <16 x i8> %i.m to <8 x i16>      ; 2 uses
  %i.s = sub nsw <8 x i16> %i.q, %i.r
  %i.t = icmp samesign ult <8 x i16> %i.q, %i.r
  %.neg = zext <8 x i1> %i.t to <8 x i16>
  %i.u = add nsw <8 x i16> %i.s, %.neg
  %i.v = ashr <8 x i16> %i.u, splat (i16 1)
  %i.w = add nsw <8 x i16> %i.v, %i.q
  %i.x = shufflevector <16 x i8> %i.d, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.y = shufflevector <16 x i8> %i.h, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.z = shufflevector <16 x i8> %i.j, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aa = bitcast <16 x i8> %i.y to <8 x i16>
  %i.ab = bitcast <16 x i8> %i.x to <8 x i16>
  %i.ac = add nuw nsw <8 x i16> %i.aa, %i.ab
  %i.ad = lshr <8 x i16> %i.ac, splat (i16 1)     ; 3 uses
  %i.ae = bitcast <16 x i8> %i.z to <8 x i16>     ; 2 uses
  %i.af = sub nsw <8 x i16> %i.ad, %i.ae
  %i.ag = icmp samesign ult <8 x i16> %i.ad, %i.ae
  %.neg66 = zext <8 x i1> %i.ag to <8 x i16>
  %i.ah = add nsw <8 x i16> %i.af, %.neg66
  %i.ai = ashr <8 x i16> %i.ah, splat (i16 1)
  %i.aj = add nsw <8 x i16> %i.ai, %i.ad
  %i.ak = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.w, <8 x i16> %i.aj)
  %i.al = sub <16 x i8> %i.f, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv71
  store <16 x i8> %i.al, ptr %i.am, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.an = and i32 %2, 2147483644
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.an, %._crit_edge.loopexit ] ; 3 uses
  %.not65 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not65, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 104), align 8, !tbaa !7
  %i.ap = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %i.as = sub nsw i32 %2, %.0.lcssa
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap
  tail call void %i.ao(ptr noundef %i.aq, ptr noundef %i.ar, i32 noundef %i.as, ptr noundef %i.at) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @VP8LSubtractGreenFromBlueAndRed_C(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @VP8LTransformColor_C(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #6

declare void @VP8LCollectColorBlueTransforms_C(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #6

declare void @VP8LCollectColorRedTransforms_C(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

declare void @VP8LBundleColorMap_C(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !5, i64 2}
!13 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2}
!14 = !{!13, !5, i64 0}
!15 = !{!13, !5, i64 1}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = distinct !{null}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
end_hunk_1
