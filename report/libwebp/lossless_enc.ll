Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/lossless_enc?download=true
inline.NumInlined: 50
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@VP8LCollectColorRedTransforms_C:bb.a
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.0912, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13   ; 2 uses
  %i.h = lshr i32 %i.g, 16
  %i.i = shl i32 %i.g, 16
  %i.j = ashr i32 %i.i, 24
  %i.k = mul nsw i32 %i.j, %i.c
  %i.l = lshr i32 %i.k, 5
  %i.m = sub nsw i32 %i.h, %i.l
  %i.n = and i32 %i.m, 255
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !13
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !13
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.0912, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13   ; 2 uses
  %i.v = lshr i32 %i.u, 16
  %i.w = shl i32 %i.u, 16
  %i.x = ashr i32 %i.w, 24
  %i.y = mul nsw i32 %i.x, %i.c
  %i.z = lshr i32 %i.y, 5
  %i.aa = sub nsw i32 %i.v, %i.z
  %i.ab = and i32 %i.aa, 255
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !33

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0912, i64 %indvars.iv.epil.init
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13 ; 2 uses
  %i.ai = lshr i32 %i.ah, 16
  %i.aj = shl i32 %i.ah, 16
  %i.ak = ashr i32 %i.aj, 24
  %i.al = mul nsw i32 %i.ak, %i.c
  %i.am = lshr i32 %i.al, 5
  %i.an = sub nsw i32 %i.ai, %i.am
  %i.ao = and i32 %i.an, 255
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !13
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.at = add nsw i32 %.in, -1
  %i.au = getelementptr inbounds [4 x i8], ptr %.0912, i64 %i.d
  %i.av = icmp sgt i32 %.in, 1
  br i1 %i.av, label %.preheader, label %._crit_edge13.split, !llvm.loop !34

._crit_edge13.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LCollectColorBlueTransforms_C(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge17.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  %sext = shl i32 %4, 24
  %i.c = ashr exact i32 %sext, 24
  %sext12 = shl i32 %5, 24
  %i.d = ashr exact i32 %sext12, 24
  %i.e = sext i32 %1 to i64
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge17.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.in = phi i32 [ %i.w, %._crit_edge ], [ %3, %.preheader.preheader ] ; 2 uses
  %.01016 = phi ptr [ %i.x, %._crit_edge ], [ %0, %.preheader.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.01016, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13   ; 3 uses
  %i.h = shl i32 %i.g, 16
  %i.i = ashr i32 %i.h, 24
  %i.j = mul nsw i32 %i.i, %i.c
  %i.k = lshr i32 %i.j, 5
  %i.l = shl i32 %i.g, 8
  %i.m = ashr i32 %i.l, 24
  %i.n = mul nsw i32 %i.m, %i.d
  %i.o = lshr i32 %i.n, 5
  %i.p = add nuw nsw i32 %i.k, %i.o
  %i.q = sub i32 %i.g, %i.p
  %i.r = and i32 %i.q, 255
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.b
  %i.w = add nsw i32 %.in, -1
  %i.x = getelementptr inbounds [4 x i8], ptr %.01016, i64 %i.e
  %i.y = icmp sgt i32 %.in, 1
  br i1 %i.y, label %.preheader, label %._crit_edge17.split, !llvm.loop !36

._crit_edge17.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LBundleColorMap_C(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %wide.load = load <4 x i8>, ptr %i.c, align 1, !tbaa !40
  %wide.load42 = load <4 x i8>, ptr %i.d, align 1, !tbaa !40
  %i.e = zext <4 x i8> %wide.load to <4 x i32>
  %i.f = zext <4 x i8> %wide.load42 to <4 x i32>
  %i.g = shl nuw nsw <4 x i32> %i.e, splat (i32 8)
  %i.h = shl nuw nsw <4 x i32> %i.f, splat (i32 8)
  %i.i = or disjoint <4 x i32> %i.g, splat (i32 -16777216)
  %i.j = or disjoint <4 x i32> %i.h, splat (i32 -16777216)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %i.i, ptr %i.k, align 4, !tbaa !13
  store <4 x i32> %i.j, ptr %i.l, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.n = sub nsw i32 3, %2                        ; 3 uses
  %notmask = shl nsw i32 -1, %2
  %i.o = xor i32 %notmask, -1                     ; 3 uses
  %i.p = icmp sgt i32 %1, 0
  br i1 %i.p, label %.lr.ph31.preheader, label %.loopexit

.lr.ph31.preheader:                               ; preds = %bb.b
  %wide.trip.count37 = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count37, 1
  %i.q = icmp eq i32 %1, 1
  br i1 %i.q, label %.lr.ph31.epil.preheader, label %.lr.ph31.preheader.new

.lr.ph31.preheader.new:                           ; preds = %.lr.ph31.preheader
  %unroll_iter = and i64 %wide.trip.count37, 2147483646
  br label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph31, %.lr.ph31.preheader.new
  %indvars.iv34 = phi i64 [ 0, %.lr.ph31.preheader.new ], [ %indvars.iv.next35.1, %.lr.ph31 ] ; 4 uses
  %.030 = phi i32 [ -16777216, %.lr.ph31.preheader.new ], [ %i.an, %.lr.ph31 ]
  %niter = phi i64 [ 0, %.lr.ph31.preheader.new ], [ %niter.next.1, %.lr.ph31 ]
  %i.r = trunc nuw nsw i64 %indvars.iv34 to i32   ; 2 uses
  %i.s = and i32 %i.r, %i.o                       ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  %spec.select = select i1 %i.t, i32 -16777216, i32 %.030
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv34
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.s, %i.n
  %i.y = add nuw nsw i32 %i.x, 8
  %i.z = shl i32 %i.w, %i.y
  %i.aa = or i32 %i.z, %spec.select               ; 2 uses
  %i.ab = lshr i32 %i.r, %2
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ac
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !13
  %indvars.iv.next35 = or disjoint i64 %indvars.iv34, 1 ; 2 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv.next35 to i32 ; 2 uses
  %i.af = and i32 %i.ae, %i.o                     ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select.1 = select i1 %i.ag, i32 -16777216, i32 %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next35
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.af, %i.n
  %i.al = add nuw nsw i32 %i.ak, 8
  %i.am = shl i32 %i.aj, %i.al
  %i.an = or i32 %i.am, %spec.select.1            ; 3 uses
  %i.ao = lshr i32 %i.ae, %2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !13
  %indvars.iv.next35.1 = add nuw nsw i64 %indvars.iv34, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph31, !llvm.loop !38

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader43 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !40
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = or disjoint i32 %i.au, -16777216
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !39

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph31
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph31.epil.preheader

.lr.ph31.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph31.preheader
  %indvars.iv34.epil.init = phi i64 [ 0, %.lr.ph31.preheader ], [ %indvars.iv.next35.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.030.epil.init = phi i32 [ -16777216, %.lr.ph31.preheader ], [ %i.an, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.ax = trunc nuw nsw i64 %indvars.iv34.epil.init to i32 ; 2 uses
  %i.ay = and i32 %i.ax, %i.o                     ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  %spec.select.epil = select i1 %i.az, i32 -16777216, i32 %.030.epil.init
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv34.epil.init
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !40
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.ay, %i.n
  %i.be = add nuw nsw i32 %i.bd, 8
  %i.bf = shl i32 %i.bc, %i.be
  %i.bg = or i32 %i.bf, %spec.select.epil
  %i.bh = lshr i32 %i.ax, %2
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bi
  store i32 %i.bg, ptr %i.bj, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph31.epil.preheader, %.loopexit.loopexit.unr-lcssa, %middle.block, %.preheader, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LEncDspInit() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @VP8LEncDspInit_body_lock) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @VP8LEncDspInit_body_last_cpuinfo_used, align 8, !tbaa !18
  %i.c = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !18
  %.not1 = icmp eq ptr %i.b, %i.c
  br i1 %.not1, label %VP8LEncDspInit_body.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @VP8LDspInit() #13
  store ptr @VP8LSubtractGreenFromBlueAndRed_C, ptr @VP8LSubtractGreenFromBlueAndRed, align 8, !tbaa !18
  store ptr @VP8LTransformColor_C, ptr @VP8LTransformColor, align 8, !tbaa !18
  store ptr @VP8LCollectColorBlueTransforms_C, ptr @VP8LCollectColorBlueTransforms, align 8, !tbaa !18
  store ptr @VP8LCollectColorRedTransforms_C, ptr @VP8LCollectColorRedTransforms, align 8, !tbaa !18
  store ptr @FastLog2Slow_C, ptr @VP8LFastLog2Slow, align 8, !tbaa !18
  store ptr @FastSLog2Slow_C, ptr @VP8LFastSLog2Slow, align 8, !tbaa !18
  store ptr @ExtraCost_C, ptr @VP8LExtraCost, align 8, !tbaa !18
  store ptr @CombinedShannonEntropy_C, ptr @VP8LCombinedShannonEntropy, align 8, !tbaa !18
  store ptr @ShannonEntropy_C, ptr @VP8LShannonEntropy, align 8, !tbaa !18
  store ptr @GetEntropyUnrefined_C, ptr @VP8LGetEntropyUnrefined, align 8, !tbaa !18
  store ptr @GetCombinedEntropyUnrefined_C, ptr @VP8LGetCombinedEntropyUnrefined, align 8, !tbaa !18
  store ptr @AddVector_C, ptr @VP8LAddVector, align 8, !tbaa !18
  store ptr @AddVectorEq_C, ptr @VP8LAddVectorEq, align 8, !tbaa !18
  store ptr @VectorMismatch_C, ptr @VP8LVectorMismatch, align 8, !tbaa !18
  store ptr @VP8LBundleColorMap_C, ptr @VP8LBundleColorMap, align 8, !tbaa !18
  store ptr @PredictorSub0_C, ptr @VP8LPredictorsSub, align 16, !tbaa !18
  store ptr @PredictorSub1_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 8), align 8, !tbaa !18
  store ptr @PredictorSub2_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 16), align 16, !tbaa !18
  store ptr @PredictorSub3_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 24), align 8, !tbaa !18
  store ptr @PredictorSub4_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 32), align 16, !tbaa !18
  store ptr @PredictorSub5_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 40), align 8, !tbaa !18
  store ptr @PredictorSub6_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 48), align 16, !tbaa !18
  store ptr @PredictorSub7_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 56), align 8, !tbaa !18
  store ptr @PredictorSub8_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 64), align 16, !tbaa !18
  store ptr @PredictorSub9_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 72), align 8, !tbaa !18
  store ptr @PredictorSub10_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 80), align 16, !tbaa !18
  store ptr @PredictorSub11_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 88), align 8, !tbaa !18
  store ptr @PredictorSub12_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 96), align 16, !tbaa !18
  store ptr @PredictorSub13_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 104), align 8, !tbaa !18
  store ptr @PredictorSub0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 112), align 16, !tbaa !18
  store ptr @PredictorSub0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub, i64 120), align 8, !tbaa !18
  store ptr @PredictorSub0_C, ptr @VP8LPredictorsSub_C, align 16, !tbaa !18
  store ptr @PredictorSub1_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 8), align 8, !tbaa !18
  store ptr @PredictorSub2_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 16), align 16, !tbaa !18
  store ptr @PredictorSub3_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 24), align 8, !tbaa !18
  store ptr @PredictorSub4_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 32), align 16, !tbaa !18
  store ptr @PredictorSub5_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 40), align 8, !tbaa !18
  store ptr @PredictorSub6_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 48), align 16, !tbaa !18
  store ptr @PredictorSub7_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 56), align 8, !tbaa !18
  store ptr @PredictorSub8_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 64), align 16, !tbaa !18
  store ptr @PredictorSub9_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 72), align 8, !tbaa !18
  store ptr @PredictorSub10_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 80), align 16, !tbaa !18
  store ptr @PredictorSub11_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 88), align 8, !tbaa !18
  store ptr @PredictorSub12_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 96), align 16, !tbaa !18
  store ptr @PredictorSub13_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 104), align 8, !tbaa !18
  store ptr @PredictorSub0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 112), align 16, !tbaa !18
  store ptr @PredictorSub0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsSub_C, i64 120), align 8, !tbaa !18
  %i.d = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %VP8LEncDspInit_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %i.d(i32 noundef 0) #13, !inline_history !41
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %VP8LEncDspInit_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @VP8LEncDspInitSSE2() #13
  %i.f = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !18
  %i.g = tail call i32 %i.f(i32 noundef 3) #13, !inline_history !41
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %VP8LEncDspInit_body.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @VP8LEncDspInitSSE41() #13
  %i.h = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !18
  %i.i = tail call i32 %i.h(i32 noundef 5) #13, !inline_history !41
  %.not3.i = icmp eq i32 %i.i, 0
  br i1 %.not3.i, label %VP8LEncDspInit_body.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @VP8LEncDspInitAVX2() #13
  br label %VP8LEncDspInit_body.exit

VP8LEncDspInit_body.exit:                         ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.j = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !18
  store ptr %i.j, ptr @VP8LEncDspInit_body_last_cpuinfo_used, align 8, !tbaa !18
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @VP8LEncDspInit_body_lock) #13 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %VP8LEncDspInit_body.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare void @VP8LDspInit() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal i32 @FastLog2Slow_C(i32 noundef %0) #5 {
bb.a:
  %i.a = icmp ult i32 %0, 65536
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %0, i1 true)
  %i.c = sub nsw i32 24, %i.b                     ; 3 uses
  %i.d = lshr i32 %0, %i.c
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = shl nsw i32 %i.c, 23
  %i.i = add i32 %i.g, %i.h                       ; 2 uses
  %i.j = icmp samesign ugt i32 %0, 4095
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %notmask = shl nsw i32 -1, %i.c
  %i.k = xor i32 %notmask, -1
  %i.l = and i32 %0, %i.k
  %i.m = zext nneg i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 12102203
  %i.o = zext nneg i32 %0 to i64                  ; 2 uses
  %i.p = lshr i64 %i.o, 1
  %i.q = add nuw nsw i64 %i.n, %i.p
  %i.r = udiv i64 %i.q, %i.o
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = add i32 %i.i, %i.s
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.u = uitofp i32 %0 to double
  %i.v = tail call double @log(double noundef %i.u) #13
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double f0x41671547652B82FE, double 5.000000e-01)
  %i.x = fptoui double %i.w to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.x, %bb.d ], [ %i.t, %bb.c ], [ %i.i, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal i64 @FastSLog2Slow_C(i32 noundef %0) #5 {
bb.a:
  %i.a = icmp ult i32 %0, 65536
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %0, i1 true)
  %i.d = sub nsw i32 24, %i.c                     ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = lshr i32 %0, %i.d
  %notmask = shl nsw i32 -1, %i.d
  %i.g = xor i32 %notmask, -1
  %i.h = and i32 %0, %i.g
  %i.i = zext nneg i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, 12102203
  %i.k = zext nneg i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13
  %i.n = zext i32 %i.m to i64
  %i.o = shl nsw i64 %i.e, 23
  %i.p = add nsw i64 %i.o, %i.n
  %i.q = mul nsw i64 %i.p, %i.b
  %i.r = add nsw i64 %i.q, %i.j
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = uitofp i32 %0 to double                  ; 2 uses
  %i.t = fmul nnan double %i.s, f0x41671547652B82FE
  %i.u = tail call double @log(double noundef %i.s) #13
  %i.v = tail call double @llvm.fmuladd.f64(double %i.t, double %i.u, double 5.000000e-01)
  %i.w = fptoui double %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_0
