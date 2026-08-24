Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraBddThresh?download=true
inline.NumInlined: 72
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Extra_ThreshSelectWeights5:bb.a
  br i1 %exitcond.not, label %.thread, label %bb.c, !llvm.loop !54

bb.c:                                             ; preds = %.preheader.us.us.us.us, %bb.b
  %.080.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us ], [ %.1.us.us.us.us, %bb.b ] ; 2 uses
  %.04479.us.us.us.us = phi i32 [ 10000, %.preheader.us.us.us.us ], [ %.145.us.us.us.us, %bb.b ] ; 2 uses
  %.04678.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us ], [ %i.i, %bb.b ] ; 9 uses
  %i.j = lshr i32 %.04678.us.us.us.us, 6
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = and i32 %.04678.us.us.us.us, 63
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.m, %i.p
  %.not61.us.us.us.us = icmp eq i64 %i.q, 0
  br i1 %.not61.us.us.us.us, label %.lr.ph.i66.us.us.us.us.preheader, label %.lr.ph.i.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.preheader:                   ; preds = %bb.c
  br i1 %i.g, label %.lr.ph.i.us.us.us.us.epil.preheader, label %.lr.ph.i.us.us.us.us

.lr.ph.i66.us.us.us.us.preheader:                 ; preds = %bb.c
  br i1 %i.h, label %.lr.ph.i66.us.us.us.us.epil.preheader, label %.lr.ph.i66.us.us.us.us

.lr.ph.i.us.us.us.us:                             ; preds = %.lr.ph.i.us.us.us.us.preheader, %bb.f
  %indvars.iv.i.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.preheader ] ; 4 uses
  %.010.i.us.us.us.us = phi i32 [ %.1.i.us.us.us.us.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.preheader ]
  %i.r = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us to i32
  %i.s = shl nuw i32 1, %i.r
  %i.t = and i32 %i.s, %.04678.us.us.us.us
  %.not.i.us.us.us.us = icmp eq i32 %i.t, 0
  br i1 %.not.i.us.us.us.us, label %.lr.ph.i.us.us.us.us.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.us.us.us.us
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us.us.us.us
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = add nsw i32 %i.v, %.010.i.us.us.us.us
  br label %.lr.ph.i.us.us.us.us.1

.lr.ph.i.us.us.us.us.1:                           ; preds = %bb.d, %.lr.ph.i.us.us.us.us
  %.1.i.us.us.us.us = phi i32 [ %i.w, %bb.d ], [ %.010.i.us.us.us.us, %.lr.ph.i.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us, 1 ; 2 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.next.i.us.us.us.us to i32
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.y, %.04678.us.us.us.us
  %.not.i.us.us.us.us.1 = icmp eq i32 %i.z, 0
  br i1 %.not.i.us.us.us.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.us.us.us.us.1
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.us.us.us.us
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = add nsw i32 %i.ab, %.1.i.us.us.us.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us.us.us.us.1
  %.1.i.us.us.us.us.1 = phi i32 [ %i.ac, %bb.e ], [ %.1.i.us.us.us.us, %.lr.ph.i.us.us.us.us.1 ] ; 3 uses
  %indvars.iv.next.i.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.unr-lcssa, label %.lr.ph.i.us.us.us.us, !llvm.loop !45

.lr.ph.i66.us.us.us.us:                           ; preds = %.lr.ph.i66.us.us.us.us.preheader, %bb.i
  %indvars.iv.i67.us.us.us.us = phi i64 [ %indvars.iv.next.i71.us.us.us.us.1, %bb.i ], [ 0, %.lr.ph.i66.us.us.us.us.preheader ] ; 4 uses
  %.010.i68.us.us.us.us = phi i32 [ %.1.i70.us.us.us.us.1, %bb.i ], [ 0, %.lr.ph.i66.us.us.us.us.preheader ] ; 2 uses
  %niter128 = phi i64 [ %niter128.next.1, %bb.i ], [ 0, %.lr.ph.i66.us.us.us.us.preheader ]
  %i.ad = trunc nuw nsw i64 %indvars.iv.i67.us.us.us.us to i32
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = and i32 %i.ae, %.04678.us.us.us.us
  %.not.i69.us.us.us.us = icmp eq i32 %i.af, 0
  br i1 %.not.i69.us.us.us.us, label %.lr.ph.i66.us.us.us.us.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i66.us.us.us.us
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i67.us.us.us.us
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = add nsw i32 %i.ah, %.010.i68.us.us.us.us
  br label %.lr.ph.i66.us.us.us.us.1

.lr.ph.i66.us.us.us.us.1:                         ; preds = %bb.g, %.lr.ph.i66.us.us.us.us
  %.1.i70.us.us.us.us = phi i32 [ %i.ai, %bb.g ], [ %.010.i68.us.us.us.us, %.lr.ph.i66.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i71.us.us.us.us = or disjoint i64 %indvars.iv.i67.us.us.us.us, 1 ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv.next.i71.us.us.us.us to i32
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = and i32 %i.ak, %.04678.us.us.us.us
  %.not.i69.us.us.us.us.1 = icmp eq i32 %i.al, 0
  br i1 %.not.i69.us.us.us.us.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i66.us.us.us.us.1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i71.us.us.us.us
  %i.an = load i32, ptr %i.am, align 4, !tbaa !8
  %i.ao = add nsw i32 %i.an, %.1.i70.us.us.us.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i66.us.us.us.us.1
  %.1.i70.us.us.us.us.1 = phi i32 [ %i.ao, %bb.h ], [ %.1.i70.us.us.us.us, %.lr.ph.i66.us.us.us.us.1 ] ; 3 uses
  %indvars.iv.next.i71.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i67.us.us.us.us, 2 ; 2 uses
  %niter128.next.1 = add i64 %niter128, 2         ; 2 uses
  %niter128.ncmp.1 = icmp eq i64 %niter128.next.1, %unroll_iter127
  br i1 %niter128.ncmp.1, label %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us.unr-lcssa, label %.lr.ph.i66.us.us.us.us, !llvm.loop !45

bb.j:                                             ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us, %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us
  %.145.us.us.us.us = phi i32 [ %i.be, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us ], [ %.04479.us.us.us.us, %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us ] ; 3 uses
  %.1.us.us.us.us = phi i32 [ %.080.us.us.us.us, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us ], [ %i.ax, %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us ] ; 2 uses
  %.not62.us.us.us.us = icmp slt i32 %.1.us.us.us.us, %.145.us.us.us.us
  br i1 %.not62.us.us.us.us, label %bb.b, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add nuw nsw i32 %storemerge5982.us.us.us.us, 1 ; 2 uses
  store i32 %i.ap, ptr %2, align 4, !tbaa !8
  %.not60.us.us.us.us.not = icmp slt i32 %storemerge5982.us.us.us.us, %1
  br i1 %.not60.us.us.us.us.not, label %.preheader.us.us.us.us, label %bb.l, !llvm.loop !55

bb.l:                                             ; preds = %bb.k
  %i.aq = add nuw nsw i32 %storemerge5783.us.us.us.us, 1 ; 2 uses
  store i32 %i.aq, ptr %i.e, align 4, !tbaa !8
  %.not58.us.us.us.us.not = icmp slt i32 %storemerge5783.us.us.us.us, %1
  br i1 %.not58.us.us.us.us.not, label %.preheader75.us.us.us.us, label %.split85.us.us.us.us, !llvm.loop !56

Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us.unr-lcssa: ; preds = %bb.i
  br i1 %lcmp.mod124.not, label %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us, label %.lr.ph.i66.us.us.us.us.epil.preheader

.lr.ph.i66.us.us.us.us.epil.preheader:            ; preds = %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us.unr-lcssa, %.lr.ph.i66.us.us.us.us.preheader
  %indvars.iv.i67.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i66.us.us.us.us.preheader ], [ %indvars.iv.next.i71.us.us.us.us.1, %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us.unr-lcssa ] ; 2 uses
  %.010.i68.us.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.i66.us.us.us.us.preheader ], [ %.1.i70.us.us.us.us.1, %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.ar = trunc nuw nsw i64 %indvars.iv.i67.us.us.us.us.epil.init to i32
  %i.as = shl nuw i32 1, %i.ar
  %i.at = and i32 %i.as, %.04678.us.us.us.us
  %.not.i69.us.us.us.us.epil = icmp eq i32 %i.at, 0
  br i1 %.not.i69.us.us.us.us.epil, label %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i66.us.us.us.us.epil.preheader
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i67.us.us.us.us.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = add nsw i32 %i.av, %.010.i68.us.us.us.us.epil.init
  br label %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us

Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us: ; preds = %.lr.ph.i66.us.us.us.us.epil.preheader, %bb.m, %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us.unr-lcssa
  %.1.i70.us.us.us.us.lcssa = phi i32 [ %.1.i70.us.us.us.us.1, %Extra_ThreshWeightedSum.exit73.loopexit.us.us.us.us.unr-lcssa ], [ %i.aw, %bb.m ], [ %.010.i68.us.us.us.us.epil.init, %.lr.ph.i66.us.us.us.us.epil.preheader ]
  %i.ax = tail call noundef i32 @llvm.smax.i32(i32 %.080.us.us.us.us, i32 %.1.i70.us.us.us.us.lcssa)
  br label %bb.j

Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.unr-lcssa: ; preds = %bb.f
  br i1 %lcmp.mod.not, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us, label %.lr.ph.i.us.us.us.us.epil.preheader

.lr.ph.i.us.us.us.us.epil.preheader:              ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.unr-lcssa, %.lr.ph.i.us.us.us.us.preheader
  %indvars.iv.i.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.preheader ], [ %indvars.iv.next.i.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.unr-lcssa ] ; 2 uses
  %.010.i.us.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.us.us.preheader ], [ %.1.i.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.ay = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us.epil.init to i32
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = and i32 %i.az, %.04678.us.us.us.us
  %.not.i.us.us.us.us.epil = icmp eq i32 %i.ba, 0
  br i1 %.not.i.us.us.us.us.epil, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.us.us.us.us.epil.preheader
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us.us.us.us.epil.init
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = add nsw i32 %i.bc, %.010.i.us.us.us.us.epil.init
  br label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us

Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us: ; preds = %.lr.ph.i.us.us.us.us.epil.preheader, %bb.n, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.unr-lcssa
  %.1.i.us.us.us.us.lcssa = phi i32 [ %.1.i.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.unr-lcssa ], [ %i.bd, %bb.n ], [ %.010.i.us.us.us.us.epil.init, %.lr.ph.i.us.us.us.us.epil.preheader ]
  %i.be = tail call noundef i32 @llvm.smin.i32(i32 %.04479.us.us.us.us, i32 %.1.i.us.us.us.us.lcssa)
  br label %bb.j

.preheader.us.us.us.us:                           ; preds = %bb.k, %.preheader75.us.us.us.us
  %storemerge5982.us.us.us.us = phi i32 [ %storemerge5783.us.us.us.us, %.preheader75.us.us.us.us ], [ %i.ap, %bb.k ] ; 2 uses
  br label %bb.c

.split85.us.us.us.us:                             ; preds = %bb.l
  %i.bf = add nuw nsw i32 %storemerge5588.us.us.us, 1 ; 2 uses
  store i32 %i.bf, ptr %i.d, align 4, !tbaa !8
  %.not56.us.us.us.not = icmp slt i32 %storemerge5588.us.us.us, %1
  br i1 %.not56.us.us.us.not, label %.split.us.us.us.us, label %.split91.us.us.us, !llvm.loop !57

.split91.us.us.us:                                ; preds = %.split85.us.us.us.us
  %i.bg = add nuw i32 %storemerge5395.us.us, 1    ; 2 uses
  store i32 %i.bg, ptr %i.c, align 4, !tbaa !8
  %exitcond109.not = icmp eq i32 %storemerge5395.us.us, %1
  br i1 %exitcond109.not, label %.split98.us.us, label %.split89.us.us.us, !llvm.loop !58

.split98.us.us:                                   ; preds = %.split91.us.us.us
  %i.bh = add nuw i32 %storemerge106.us, 1        ; 2 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !8
  %exitcond110.not = icmp eq i32 %storemerge106.us, %1
  br i1 %exitcond110.not, label %.thread, label %.split96.us.us, !llvm.loop !59

.lr.ph.split:                                     ; preds = %.lr.ph
  store <4 x i32> splat (i32 1), ptr %2, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.split98.us.us, %bb.b, %bb.a, %.lr.ph.split
  %.047 = phi i32 [ 0, %bb.a ], [ 10000, %.lr.ph.split ], [ %.145.us.us.us.us, %bb.b ], [ 0, %.split98.us.us ]
  ret i32 %.047
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 10001) i32 @Extra_ThreshSelectWeights6(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((20, 24)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nuw i32 1, %1
  %i.b = add i32 %1, 3                            ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %.not302 = icmp slt i32 %1, -2
  br i1 %.not302, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %.not = icmp eq i32 %1, 31
  %wide.trip.count.i = zext i32 %1 to i64         ; 5 uses
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.h = icmp sgt i32 %1, 0
  %smax349 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1) ; 4 uses
  br i1 %i.h, label %.split248.us.us.us.us.preheader, label %.split248.us.us.preheader

.split248.us.us.preheader:                        ; preds = %.lr.ph.split.us
  %i.i = add nsw i32 %1, 4                        ; 6 uses
  br label %.split199.us.us.us305

.split248.us.us.us.us.preheader:                  ; preds = %.lr.ph.split.us
  %smax351 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %i.j = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.k = icmp eq i64 %i.j, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod404 = trunc i32 %1 to i1
  %xtraiter405 = and i64 %wide.trip.count.i, 1
  %i.l = icmp eq i64 %i.j, 0
  %unroll_iter409 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod406.not = icmp eq i64 %xtraiter405, 0
  %lcmp.mod408 = trunc i32 %1 to i1
  br label %.split248.us.us.us.us

.split248.us.us.us.us:                            ; preds = %.split248.us.us.us.us.preheader, %.split268.us.split.us.split.us.us.us.us
  %storemerge303.us.us.us = phi i32 [ %i.bm, %.split268.us.split.us.split.us.us.us.us ], [ 1, %.split248.us.us.us.us.preheader ] ; 4 uses
  store i32 %storemerge303.us.us.us, ptr %i.d, align 4, !tbaa !8
  br label %.split199.us.us.us.us.us.us.us

.split199.us.us.us.us.us.us.us:                   ; preds = %.split217.us.split.us.split.us.us.us.us.us.us.us, %.split248.us.us.us.us
  %storemerge59246.us.us.us.us.us.us = phi i32 [ %storemerge303.us.us.us, %.split248.us.us.us.us ], [ %i.bl, %.split217.us.split.us.split.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge59246.us.us.us.us.us.us, ptr %i.e, align 4, !tbaa !8
  br label %.split158.us.us.us.us.us.us.us.us.us.us

.split158.us.us.us.us.us.us.us.us.us.us:          ; preds = %.split174.us.split.us.split.us.us.us.us.us.us.us.us.us.us, %.split199.us.us.us.us.us.us.us
  %storemerge61197.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge59246.us.us.us.us.us.us, %.split199.us.us.us.us.us.us.us ], [ %i.bk, %.split174.us.split.us.split.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge61197.us.us.us.us.us.us.us.us.us, ptr %i.f, align 4, !tbaa !8
  br label %.split.us.us.us.us.us.us.us.us.us.us.us.us.us

.split.us.us.us.us.us.us.us.us.us.us.us.us.us:    ; preds = %.split139.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split158.us.us.us.us.us.us.us.us.us.us
  %storemerge63156.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge61197.us.us.us.us.us.us.us.us.us, %.split158.us.us.us.us.us.us.us.us.us.us ], [ %i.bj, %.split139.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge63156.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.g, align 4, !tbaa !8
  br label %.preheader83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split115.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge65123.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge63156.us.us.us.us.us.us.us.us.us.us.us.us, %.split.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bi, %.split115.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge65123.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %2, align 4, !tbaa !8
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge67113.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge65123.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bh, %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.089.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.c ] ; 2 uses
  %.04988.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 10000, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.150.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.c ] ; 2 uses
  %.05186.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.u, %bb.c ] ; 9 uses
  %i.m = lshr i32 %.05186.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = and i32 %.05186.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 63
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.p, %i.s
  %.not69.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %i.t, 0
  br i1 %.not69.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader: ; preds = %bb.b
  br i1 %i.k, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader: ; preds = %bb.b
  br i1 %i.l, label %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, label %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

bb.c:                                             ; preds = %bb.j
  %i.u = add nuw nsw i32 %.05186.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond350.not = icmp eq i32 %i.u, %smax349
  br i1 %exitcond350.not, label %.thread, label %bb.b, !llvm.loop !60

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, %bb.f
  %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 4 uses
  %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ]
  %i.v = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, %.05186.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i32 %i.x, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8
  %i.aa = add nsw i32 %i.z, %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1: ; preds = %bb.d, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.aa, %bb.d ], [ %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = and i32 %i.ac, %.05186.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = add nsw i32 %i.af, %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi i32 [ %i.ag, %bb.e ], [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 ] ; 3 uses
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !45

.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, %bb.i
  %indvars.iv.i75.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %indvars.iv.next.i79.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.i ], [ 0, %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 4 uses
  %.010.i76.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.1.i78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.i ], [ 0, %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 2 uses
  %niter410 = phi i64 [ %niter410.next.1, %bb.i ], [ 0, %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ]
  %i.ah = trunc nuw nsw i64 %indvars.iv.i75.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ai, %.05186.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i77.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i32 %i.aj, 0
  br i1 %.not.i77.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i75.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = add nsw i32 %i.al, %.010.i76.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1

.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1: ; preds = %bb.g, %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.1.i78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.am, %bb.g ], [ %.010.i76.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i79.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = or disjoint i64 %indvars.iv.i75.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.next.i79.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = and i32 %i.ao, %.05186.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i77.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i32 %i.ap, 0
  br i1 %.not.i77.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i79.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = add nsw i32 %i.ar, %.1.i78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %.1.i78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi i32 [ %i.as, %bb.h ], [ %.1.i78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 ] ; 3 uses
  %indvars.iv.next.i79.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i75.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %niter410.next.1 = add i64 %niter410, 2         ; 2 uses
  %niter410.ncmp.1 = icmp eq i64 %niter410.next.1, %unroll_iter409
  br i1 %niter410.ncmp.1, label %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !45

bb.j:                                             ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.150.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.bg, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.04988.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.089.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.az, %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.not70.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp slt i32 %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.150.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br i1 %.not70.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.c, label %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.i
  br i1 %lcmp.mod406.not, label %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader

.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader: ; preds = %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader
  %indvars.iv.i75.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %indvars.iv.next.i79.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.010.i76.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %.1.i78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod408)
  %i.at = trunc nuw nsw i64 %indvars.iv.i75.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init to i32
  %i.au = shl nuw i32 1, %i.at
  %i.av = and i32 %i.au, %.05186.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i77.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i32 %i.av, 0
  br i1 %.not.i77.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i75.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8
  %i.ay = add nsw i32 %i.ax, %.010.i76.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  br label %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, %bb.k, %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.1.i78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi i32 [ %.1.i78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit81.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %i.ay, %bb.k ], [ %.010.i76.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.lr.ph.i74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader ]
  %i.az = tail call noundef i32 @llvm.smax.i32(i32 %.089.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i32 %.1.i78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa)
  br label %bb.j

Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.f
  br i1 %lcmp.mod.not, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader: ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader
  %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod404)
  %i.ba = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init to i32
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = and i32 %i.bb, %.05186.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i32 %i.bc, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8
  %i.bf = add nsw i32 %i.be, %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  br label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, %bb.l, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi i32 [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %i.bf, %bb.l ], [ %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader ]
  %i.bg = tail call noundef i32 @llvm.smin.i32(i32 %.04988.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i32 %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa)
  br label %bb.j

.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %bb.j
  %i.bh = add nuw nsw i32 %storemerge67113.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bh, ptr %2, align 4, !tbaa !8
  %.not68.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.not = icmp slt i32 %storemerge67113.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.b
  br i1 %.not68.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.not, label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split115.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !61

.split115.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bi = add nuw nsw i32 %storemerge65123.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bi, ptr %i.g, align 4, !tbaa !8
  %.not66.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.not = icmp slt i32 %storemerge65123.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.b
  br i1 %.not66.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.not, label %.preheader83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split139.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !62

.split139.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split115.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bj = add nuw nsw i32 %storemerge63156.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bj, ptr %i.f, align 4, !tbaa !8
  %.not64.us.us.us.us.us.us.us.us.us.us.us.us.not = icmp slt i32 %storemerge63156.us.us.us.us.us.us.us.us.us.us.us.us, %i.b
  br i1 %.not64.us.us.us.us.us.us.us.us.us.us.us.us.not, label %.split.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split174.us.split.us.split.us.us.us.us.us.us.us.us.us.us, !llvm.loop !63

.split174.us.split.us.split.us.us.us.us.us.us.us.us.us.us: ; preds = %.split139.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bk = add nuw nsw i32 %storemerge61197.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bk, ptr %i.e, align 4, !tbaa !8
  %.not62.us.us.us.us.us.us.us.us.us.not = icmp slt i32 %storemerge61197.us.us.us.us.us.us.us.us.us, %i.b
  br i1 %.not62.us.us.us.us.us.us.us.us.us.not, label %.split158.us.us.us.us.us.us.us.us.us.us, label %.split217.us.split.us.split.us.us.us.us.us.us.us, !llvm.loop !64

.split217.us.split.us.split.us.us.us.us.us.us.us: ; preds = %.split174.us.split.us.split.us.us.us.us.us.us.us.us.us.us
  %i.bl = add nuw nsw i32 %storemerge59246.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bl, ptr %i.d, align 4, !tbaa !8
  %.not60.us.us.us.us.us.us.not = icmp slt i32 %storemerge59246.us.us.us.us.us.us, %i.b
  br i1 %.not60.us.us.us.us.us.us.not, label %.split199.us.us.us.us.us.us.us, label %.split268.us.split.us.split.us.us.us.us, !llvm.loop !65

.split268.us.split.us.split.us.us.us.us:          ; preds = %.split217.us.split.us.split.us.us.us.us.us.us.us
  %i.bm = add nuw i32 %storemerge303.us.us.us, 1  ; 2 uses
  store i32 %i.bm, ptr %i.c, align 4, !tbaa !8
  %exitcond352.not = icmp eq i32 %storemerge303.us.us.us, %smax351
  br i1 %exitcond352.not, label %.thread, label %.split248.us.us.us.us, !llvm.loop !66

.split199.us.us.us305:                            ; preds = %.split248.us.us.preheader, %.split217.us.split.split.us252.us
  %storemerge59246.us.us306 = phi i32 [ 1, %.split248.us.us.preheader ], [ %i.ca, %.split217.us.split.split.us252.us ] ; 3 uses
  br label %.split158.us.us.us249.us

.split158.us.us.us249.us:                         ; preds = %.split174.us.split.split.us203.us.us, %.split199.us.us.us305
  %storemerge61197.us.us250.us = phi i32 [ %storemerge59246.us.us306, %.split199.us.us.us305 ], [ %i.bz, %.split174.us.split.split.us203.us.us ] ; 4 uses
  br label %.split.us.us.us200.us.us

.split.us.us.us200.us.us:                         ; preds = %.split139.us.split.split.us162.us.us.us, %.split158.us.us.us249.us
  %storemerge63156.us.us201.us.us = phi i32 [ %storemerge61197.us.us250.us, %.split158.us.us.us249.us ], [ %i.by, %.split139.us.split.split.us162.us.us.us ] ; 4 uses
  br label %.preheader83.us.us159.us.us.us

.preheader83.us.us159.us.us.us:                   ; preds = %.split115.split.us126.us.us.us.us, %.split.us.us.us200.us.us
  %storemerge65123.us.us160.us.us.us = phi i32 [ %storemerge63156.us.us201.us.us, %.split.us.us.us200.us.us ], [ %i.bx, %.split115.split.us126.us.us.us.us ] ; 4 uses
  br label %.preheader.us127.us.us.us.us

bb.m:                                             ; preds = %bb.n
  %i.bn = add nuw nsw i32 %.05186.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %smax349
  br i1 %exitcond.not, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us, label %bb.n, !llvm.loop !60

bb.n:                                             ; preds = %.preheader.us127.us.us.us.us, %bb.m
  %.05186.us.us.us.us.us = phi i32 [ 0, %.preheader.us127.us.us.us.us ], [ %i.bn, %bb.m ] ; 3 uses
  %i.bo = lshr i32 %.05186.us.us.us.us.us, 6
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.bs = and i32 %.05186.us.us.us.us.us, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = and i64 %i.br, %i.bu
  %.not69.us.us.us.us.us = icmp eq i64 %i.bv, 0
  br i1 %.not69.us.us.us.us.us, label %bb.m, label %.split.split.us.us.us.us.us

.split.split.us.us.us.us.us:                      ; preds = %bb.n
  %i.bw = add nuw nsw i32 %storemerge67113.us128.us.us.us.us, 1 ; 2 uses
  %.not68.us125.us.us.us.us.not = icmp slt i32 %storemerge67113.us128.us.us.us.us, %i.b
  br i1 %.not68.us125.us.us.us.us.not, label %.preheader.us127.us.us.us.us, label %.split115.split.us126.us.us.us.us, !llvm.loop !61

.split115.split.us126.us.us.us.us:                ; preds = %.split.split.us.us.us.us.us
  %i.bx = add nuw nsw i32 %storemerge65123.us.us160.us.us.us, 1 ; 2 uses
  %.not66.us.us161.us.us.us.not = icmp slt i32 %storemerge65123.us.us160.us.us.us, %i.b
  br i1 %.not66.us.us161.us.us.us.not, label %.preheader83.us.us159.us.us.us, label %.split139.us.split.split.us162.us.us.us, !llvm.loop !62

.preheader.us127.us.us.us.us:                     ; preds = %.split.split.us.us.us.us.us, %.preheader83.us.us159.us.us.us
  %storemerge67113.us128.us.us.us.us = phi i32 [ %storemerge65123.us.us160.us.us.us, %.preheader83.us.us159.us.us.us ], [ %i.bw, %.split.split.us.us.us.us.us ] ; 3 uses
  br label %bb.n

.split139.us.split.split.us162.us.us.us:          ; preds = %.split115.split.us126.us.us.us.us
  store i32 %i.bw, ptr %2, align 4, !tbaa !8
  %i.by = add nuw nsw i32 %storemerge63156.us.us201.us.us, 1 ; 2 uses
  %.not64.us.us202.us.us.not = icmp slt i32 %storemerge63156.us.us201.us.us, %i.b
  br i1 %.not64.us.us202.us.us.not, label %.split.us.us.us200.us.us, label %.split174.us.split.split.us203.us.us, !llvm.loop !63

.split174.us.split.split.us203.us.us:             ; preds = %.split139.us.split.split.us162.us.us.us
  store i32 %i.bx, ptr %i.g, align 4, !tbaa !8
  %i.bz = add nuw nsw i32 %storemerge61197.us.us250.us, 1 ; 2 uses
  %.not62.us.us251.us.not = icmp slt i32 %storemerge61197.us.us250.us, %i.b
  br i1 %.not62.us.us251.us.not, label %.split158.us.us.us249.us, label %.split217.us.split.split.us252.us, !llvm.loop !64

.split217.us.split.split.us252.us:                ; preds = %.split174.us.split.split.us203.us.us
  store i32 %i.by, ptr %i.f, align 4, !tbaa !8
  %i.ca = add nuw i32 %storemerge59246.us.us306, 1 ; 2 uses
  %exitcond348.not = icmp eq i32 %i.ca, %i.i
  br i1 %exitcond348.not, label %.split268.us.split.split.us308, label %.split199.us.us.us305, !llvm.loop !65

.split268.us.split.split.us308:                   ; preds = %.split217.us.split.split.us252.us
  store i32 %i.bz, ptr %i.e, align 4, !tbaa !8
  store i32 2, ptr %i.c, align 4, !tbaa !8
  %exitcond348.not.a = icmp eq i32 %i.i, 2
  br i1 %exitcond348.not.a, label %..thread.loopexit84_crit_edge.split.us.split.split, label %.split199.us.us.us305.1

.split199.us.us.us305.1:                          ; preds = %.split268.us.split.split.us308, %.split217.us.split.split.us252.us.1
  %storemerge59246.us.us306.1 = phi i32 [ %i.cn, %.split217.us.split.split.us252.us.1 ], [ 2, %.split268.us.split.split.us308 ] ; 3 uses
  br label %.split158.us.us.us249.us.1

.split158.us.us.us249.us.1:                       ; preds = %.split174.us.split.split.us203.us.us.1, %.split199.us.us.us305.1
  %storemerge61197.us.us250.us.1 = phi i32 [ %storemerge59246.us.us306.1, %.split199.us.us.us305.1 ], [ %i.cm, %.split174.us.split.split.us203.us.us.1 ] ; 4 uses
  br label %.split.us.us.us200.us.us.1

.split.us.us.us200.us.us.1:                       ; preds = %.split139.us.split.split.us162.us.us.us.1, %.split158.us.us.us249.us.1
  %storemerge63156.us.us201.us.us.1 = phi i32 [ %storemerge61197.us.us250.us.1, %.split158.us.us.us249.us.1 ], [ %i.cl, %.split139.us.split.split.us162.us.us.us.1 ] ; 4 uses
  br label %.preheader83.us.us159.us.us.us.1

.preheader83.us.us159.us.us.us.1:                 ; preds = %.split115.split.us126.us.us.us.us.1, %.split.us.us.us200.us.us.1
  %storemerge65123.us.us160.us.us.us.1 = phi i32 [ %storemerge63156.us.us201.us.us.1, %.split.us.us.us200.us.us.1 ], [ %i.ck, %.split115.split.us126.us.us.us.us.1 ] ; 4 uses
  br label %.preheader.us127.us.us.us.us.1

.preheader.us127.us.us.us.us.1:                   ; preds = %.split.split.us.us.us.us.us.1, %.preheader83.us.us159.us.us.us.1
  %storemerge67113.us128.us.us.us.us.1 = phi i32 [ %storemerge65123.us.us160.us.us.us.1, %.preheader83.us.us159.us.us.us.1 ], [ %i.cj, %.split.split.us.us.us.us.us.1 ] ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.preheader.us127.us.us.us.us.1
  %.05186.us.us.us.us.us.1 = phi i32 [ 0, %.preheader.us127.us.us.us.us.1 ], [ %i.co, %bb.p ] ; 3 uses
  %i.cb = lshr i32 %.05186.us.us.us.us.us.1, 6
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11
  %i.cf = and i32 %.05186.us.us.us.us.us.1, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ce, %i.ch
  %.not69.us.us.us.us.us.1 = icmp eq i64 %i.ci, 0
  br i1 %.not69.us.us.us.us.us.1, label %bb.p, label %.split.split.us.us.us.us.us.1

.split.split.us.us.us.us.us.1:                    ; preds = %bb.o
  %i.cj = add nuw nsw i32 %storemerge67113.us128.us.us.us.us.1, 1 ; 2 uses
  %.not68.us125.us.us.us.us.not.1 = icmp slt i32 %storemerge67113.us128.us.us.us.us.1, %i.b
  br i1 %.not68.us125.us.us.us.us.not.1, label %.preheader.us127.us.us.us.us.1, label %.split115.split.us126.us.us.us.us.1, !llvm.loop !61

.split115.split.us126.us.us.us.us.1:              ; preds = %.split.split.us.us.us.us.us.1
  %i.ck = add nuw nsw i32 %storemerge65123.us.us160.us.us.us.1, 1 ; 2 uses
  %.not66.us.us161.us.us.us.not.1 = icmp slt i32 %storemerge65123.us.us160.us.us.us.1, %i.b
  br i1 %.not66.us.us161.us.us.us.not.1, label %.preheader83.us.us159.us.us.us.1, label %.split139.us.split.split.us162.us.us.us.1, !llvm.loop !62

.split139.us.split.split.us162.us.us.us.1:        ; preds = %.split115.split.us126.us.us.us.us.1
  store i32 %i.cj, ptr %2, align 4, !tbaa !8
  %i.cl = add nuw nsw i32 %storemerge63156.us.us201.us.us.1, 1 ; 2 uses
  %.not64.us.us202.us.us.not.1 = icmp slt i32 %storemerge63156.us.us201.us.us.1, %i.b
  br i1 %.not64.us.us202.us.us.not.1, label %.split.us.us.us200.us.us.1, label %.split174.us.split.split.us203.us.us.1, !llvm.loop !63

.split174.us.split.split.us203.us.us.1:           ; preds = %.split139.us.split.split.us162.us.us.us.1
  store i32 %i.ck, ptr %i.g, align 4, !tbaa !8
  %i.cm = add nuw nsw i32 %storemerge61197.us.us250.us.1, 1 ; 2 uses
  %.not62.us.us251.us.not.1 = icmp slt i32 %storemerge61197.us.us250.us.1, %i.b
  br i1 %.not62.us.us251.us.not.1, label %.split158.us.us.us249.us.1, label %.split217.us.split.split.us252.us.1, !llvm.loop !64

.split217.us.split.split.us252.us.1:              ; preds = %.split174.us.split.split.us203.us.us.1
  store i32 %i.cl, ptr %i.f, align 4, !tbaa !8
  %i.cn = add nuw i32 %storemerge59246.us.us306.1, 1 ; 2 uses
  %exitcond348.not.1 = icmp eq i32 %i.cn, %i.i
  br i1 %exitcond348.not.1, label %.split268.us.split.split.us308.1, label %.split199.us.us.us305.1, !llvm.loop !65

.split268.us.split.split.us308.1:                 ; preds = %.split217.us.split.split.us252.us.1
  store i32 %i.cm, ptr %i.e, align 4, !tbaa !8
  store i32 3, ptr %i.c, align 4, !tbaa !8
  %exitcond348.not.1.a = icmp eq i32 %i.i, 3
  br i1 %exitcond348.not.1.a, label %..thread.loopexit84_crit_edge.split.us.split.split, label %.split199.us.us.us305.2

bb.p:                                             ; preds = %bb.o
  %i.co = add nuw nsw i32 %.05186.us.us.us.us.us.1, 1 ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.co, %smax349
  br i1 %exitcond.not.1, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us, label %bb.o, !llvm.loop !60

.split199.us.us.us305.2:                          ; preds = %.split268.us.split.split.us308.1, %.split217.us.split.split.us252.us.2
  %storemerge59246.us.us306.2 = phi i32 [ %i.db, %.split217.us.split.split.us252.us.2 ], [ 3, %.split268.us.split.split.us308.1 ] ; 3 uses
  br label %.split158.us.us.us249.us.2

.split158.us.us.us249.us.2:                       ; preds = %.split174.us.split.split.us203.us.us.2, %.split199.us.us.us305.2
  %storemerge61197.us.us250.us.2 = phi i32 [ %storemerge59246.us.us306.2, %.split199.us.us.us305.2 ], [ %i.da, %.split174.us.split.split.us203.us.us.2 ] ; 4 uses
  br label %.split.us.us.us200.us.us.2

.split.us.us.us200.us.us.2:                       ; preds = %.split139.us.split.split.us162.us.us.us.2, %.split158.us.us.us249.us.2
  %storemerge63156.us.us201.us.us.2 = phi i32 [ %storemerge61197.us.us250.us.2, %.split158.us.us.us249.us.2 ], [ %i.cz, %.split139.us.split.split.us162.us.us.us.2 ] ; 4 uses
  br label %.preheader83.us.us159.us.us.us.2

.preheader83.us.us159.us.us.us.2:                 ; preds = %.split115.split.us126.us.us.us.us.2, %.split.us.us.us200.us.us.2
  %storemerge65123.us.us160.us.us.us.2 = phi i32 [ %storemerge63156.us.us201.us.us.2, %.split.us.us.us200.us.us.2 ], [ %i.cy, %.split115.split.us126.us.us.us.us.2 ] ; 4 uses
  br label %.preheader.us127.us.us.us.us.2

.preheader.us127.us.us.us.us.2:                   ; preds = %.split.split.us.us.us.us.us.2, %.preheader83.us.us159.us.us.us.2
  %storemerge67113.us128.us.us.us.us.2 = phi i32 [ %storemerge65123.us.us160.us.us.us.2, %.preheader83.us.us159.us.us.us.2 ], [ %i.cx, %.split.split.us.us.us.us.us.2 ] ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.preheader.us127.us.us.us.us.2
  %.05186.us.us.us.us.us.2 = phi i32 [ 0, %.preheader.us127.us.us.us.us.2 ], [ %i.dc, %bb.r ] ; 3 uses
  %i.cp = lshr i32 %.05186.us.us.us.us.us.2, 6
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !11
  %i.ct = and i32 %.05186.us.us.us.us.us.2, 63
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cs, %i.cv
  %.not69.us.us.us.us.us.2 = icmp eq i64 %i.cw, 0
  br i1 %.not69.us.us.us.us.us.2, label %bb.r, label %.split.split.us.us.us.us.us.2

.split.split.us.us.us.us.us.2:                    ; preds = %bb.q
  %i.cx = add nuw nsw i32 %storemerge67113.us128.us.us.us.us.2, 1 ; 2 uses
  %.not68.us125.us.us.us.us.not.2 = icmp slt i32 %storemerge67113.us128.us.us.us.us.2, %i.b
  br i1 %.not68.us125.us.us.us.us.not.2, label %.preheader.us127.us.us.us.us.2, label %.split115.split.us126.us.us.us.us.2, !llvm.loop !61

.split115.split.us126.us.us.us.us.2:              ; preds = %.split.split.us.us.us.us.us.2
  %i.cy = add nuw nsw i32 %storemerge65123.us.us160.us.us.us.2, 1 ; 2 uses
  %.not66.us.us161.us.us.us.not.2 = icmp slt i32 %storemerge65123.us.us160.us.us.us.2, %i.b
  br i1 %.not66.us.us161.us.us.us.not.2, label %.preheader83.us.us159.us.us.us.2, label %.split139.us.split.split.us162.us.us.us.2, !llvm.loop !62

.split139.us.split.split.us162.us.us.us.2:        ; preds = %.split115.split.us126.us.us.us.us.2
  store i32 %i.cx, ptr %2, align 4, !tbaa !8
  %i.cz = add nuw nsw i32 %storemerge63156.us.us201.us.us.2, 1 ; 2 uses
  %.not64.us.us202.us.us.not.2 = icmp slt i32 %storemerge63156.us.us201.us.us.2, %i.b
  br i1 %.not64.us.us202.us.us.not.2, label %.split.us.us.us200.us.us.2, label %.split174.us.split.split.us203.us.us.2, !llvm.loop !63

.split174.us.split.split.us203.us.us.2:           ; preds = %.split139.us.split.split.us162.us.us.us.2
  store i32 %i.cy, ptr %i.g, align 4, !tbaa !8
  %i.da = add nuw nsw i32 %storemerge61197.us.us250.us.2, 1 ; 2 uses
  %.not62.us.us251.us.not.2 = icmp slt i32 %storemerge61197.us.us250.us.2, %i.b
  br i1 %.not62.us.us251.us.not.2, label %.split158.us.us.us249.us.2, label %.split217.us.split.split.us252.us.2, !llvm.loop !64

.split217.us.split.split.us252.us.2:              ; preds = %.split174.us.split.split.us203.us.us.2
  store i32 %i.cz, ptr %i.f, align 4, !tbaa !8
  %i.db = add nuw i32 %storemerge59246.us.us306.2, 1 ; 2 uses
  %exitcond348.not.2 = icmp eq i32 %i.db, %i.i
  br i1 %exitcond348.not.2, label %.split268.us.split.split.us308.2, label %.split199.us.us.us305.2, !llvm.loop !65

.split268.us.split.split.us308.2:                 ; preds = %.split217.us.split.split.us252.us.2
  store i32 %i.da, ptr %i.e, align 4, !tbaa !8
  store i32 4, ptr %i.c, align 4, !tbaa !8
  br label %..thread.loopexit84_crit_edge.split.us.split.split

bb.r:                                             ; preds = %bb.q
  %i.dc = add nuw nsw i32 %.05186.us.us.us.us.us.2, 1 ; 2 uses
  %exitcond.not.2 = icmp eq i32 %i.dc, %smax349
  br i1 %exitcond.not.2, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us, label %bb.q, !llvm.loop !60

..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us: ; preds = %bb.r, %bb.p, %bb.m
  %storemerge59246.us.us306.lcssa = phi i32 [ %storemerge59246.us.us306, %bb.m ], [ %storemerge59246.us.us306.1, %bb.p ], [ %storemerge59246.us.us306.2, %bb.r ]
  %storemerge61197.us.us250.us.lcssa = phi i32 [ %storemerge61197.us.us250.us, %bb.m ], [ %storemerge61197.us.us250.us.1, %bb.p ], [ %storemerge61197.us.us250.us.2, %bb.r ]
  %storemerge63156.us.us201.us.us.lcssa = phi i32 [ %storemerge63156.us.us201.us.us, %bb.m ], [ %storemerge63156.us.us201.us.us.1, %bb.p ], [ %storemerge63156.us.us201.us.us.2, %bb.r ]
  %storemerge65123.us.us160.us.us.us.lcssa = phi i32 [ %storemerge65123.us.us160.us.us.us, %bb.m ], [ %storemerge65123.us.us160.us.us.us.1, %bb.p ], [ %storemerge65123.us.us160.us.us.us.2, %bb.r ]
  %storemerge67113.us128.us.us.us.us.lcssa = phi i32 [ %storemerge67113.us128.us.us.us.us, %bb.m ], [ %storemerge67113.us128.us.us.us.us.1, %bb.p ], [ %storemerge67113.us128.us.us.us.us.2, %bb.r ]
  store i32 %storemerge59246.us.us306.lcssa, ptr %i.d, align 4, !tbaa !8
  store i32 %storemerge61197.us.us250.us.lcssa, ptr %i.e, align 4, !tbaa !8
  store i32 %storemerge63156.us.us201.us.us.lcssa, ptr %i.f, align 4, !tbaa !8
  store i32 %storemerge65123.us.us160.us.us.us.lcssa, ptr %i.g, align 4, !tbaa !8
  store i32 %storemerge67113.us128.us.us.us.us.lcssa, ptr %2, align 4, !tbaa !8
  br label %.thread

..thread.loopexit84_crit_edge.split.us.split.split: ; preds = %.split268.us.split.split.us308.2, %.split268.us.split.split.us308.1, %.split268.us.split.split.us308
  store i32 %i.i, ptr %i.d, align 4, !tbaa !8
  br label %.thread

.lr.ph.split:                                     ; preds = %.lr.ph
  store i32 1, ptr %i.d, align 4, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %2, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.split268.us.split.us.split.us.us.us.us, %bb.c, %bb.a, %..thread.loopexit84_crit_edge.split.us.split.split, %.lr.ph.split, %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us
  %.052 = phi i32 [ %.150.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.c ], [ 10000, %.lr.ph.split ], [ 0, %bb.a ], [ 0, %..thread.loopexit84_crit_edge.split.us.split.split ], [ 10000, %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us ], [ 0, %.split268.us.split.us.split.us.us.us.us ]
  ret i32 %.052
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 10001) i32 @Extra_ThreshSelectWeights7(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((24, 28)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nuw i32 1, %1
  %i.b = add i32 %1, 6                            ; 37 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %.not373 = icmp slt i32 %1, -5
  br i1 %.not373, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  %.not = icmp eq i32 %1, 31
  %wide.trip.count.i = zext i32 %1 to i64         ; 5 uses
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = icmp sgt i32 %1, 0
  %smax424 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1) ; 7 uses
  br i1 %i.i, label %.split312.us.us.us.us.preheader, label %.split312.us.us.preheader

.split312.us.us.preheader:                        ; preds = %.lr.ph.split.us
  %i.j = add nsw i32 %1, 7                        ; 12 uses
  br label %.split256.us.us.us376

.split312.us.us.us.us.preheader:                  ; preds = %.lr.ph.split.us
  %smax426 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %i.k = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.l = icmp eq i64 %i.k, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod508 = trunc i32 %1 to i1
  %xtraiter509 = and i64 %wide.trip.count.i, 1
  %i.m = icmp eq i64 %i.k, 0
  %unroll_iter513 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod510.not = icmp eq i64 %xtraiter509, 0
  %lcmp.mod512 = trunc i32 %1 to i1
  br label %.split312.us.us.us.us

.split312.us.us.us.us:                            ; preds = %.split312.us.us.us.us.preheader, %.split334.us.split.us.split.us.us.us.us
  %storemerge374.us.us.us = phi i32 [ %i.bo, %.split334.us.split.us.split.us.us.us.us ], [ 1, %.split312.us.us.us.us.preheader ] ; 4 uses
  store i32 %storemerge374.us.us.us, ptr %i.d, align 4, !tbaa !8
  br label %.split256.us.us.us.us.us.us.us

.split256.us.us.us.us.us.us.us:                   ; preds = %.split276.us.split.us.split.us.us.us.us.us.us.us, %.split312.us.us.us.us
  %storemerge65310.us.us.us.us.us.us = phi i32 [ %storemerge374.us.us.us, %.split312.us.us.us.us ], [ %i.bn, %.split276.us.split.us.split.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge65310.us.us.us.us.us.us, ptr %i.e, align 4, !tbaa !8
  br label %.split207.us.us.us.us.us.us.us.us.us.us

.split207.us.us.us.us.us.us.us.us.us.us:          ; preds = %.split225.us.split.us.split.us.us.us.us.us.us.us.us.us.us, %.split256.us.us.us.us.us.us.us
  %storemerge67254.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge65310.us.us.us.us.us.us, %.split256.us.us.us.us.us.us.us ], [ %i.bm, %.split225.us.split.us.split.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge67254.us.us.us.us.us.us.us.us.us, ptr %i.f, align 4, !tbaa !8
  br label %.split166.us.us.us.us.us.us.us.us.us.us.us.us.us

.split166.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split182.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split207.us.us.us.us.us.us.us.us.us.us
  %storemerge69205.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge67254.us.us.us.us.us.us.us.us.us, %.split207.us.us.us.us.us.us.us.us.us.us ], [ %i.bl, %.split182.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge69205.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.g, align 4, !tbaa !8
  br label %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split147.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split166.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge71164.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge69205.us.us.us.us.us.us.us.us.us.us.us.us, %.split166.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bk, %.split147.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge71164.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.h, align 4, !tbaa !8
  br label %.preheader91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split123.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge73131.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge71164.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bj, %.split123.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge73131.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %2, align 4, !tbaa !8
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge75121.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge73131.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bi, %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.097.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.c ] ; 2 uses
  %.05496.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 10000, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.155.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.c ] ; 2 uses
  %.05694.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.v, %bb.c ] ; 9 uses
  %i.n = lshr i32 %.05694.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 6
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = and i32 %.05694.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = and i64 %i.q, %i.t
  %.not77.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %i.u, 0
  br i1 %.not77.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader: ; preds = %bb.b
  br i1 %i.l, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader: ; preds = %bb.b
  br i1 %i.m, label %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, label %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

bb.c:                                             ; preds = %bb.j
  %i.v = add nuw nsw i32 %.05694.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond425.not = icmp eq i32 %i.v, %smax424
  br i1 %exitcond425.not, label %.thread, label %bb.b, !llvm.loop !67

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, %bb.f
  %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 4 uses
  %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ]
  %i.w = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = and i32 %i.x, %.05694.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i32 %i.y, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  %i.ab = add nsw i32 %i.aa, %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1: ; preds = %bb.d, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.ab, %bb.d ], [ %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = and i32 %i.ad, %.05694.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8
  %i.ah = add nsw i32 %i.ag, %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi i32 [ %i.ah, %bb.e ], [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 ] ; 3 uses
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !45

.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, %bb.i
  %indvars.iv.i83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %indvars.iv.next.i87.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.i ], [ 0, %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 4 uses
  %.010.i84.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.1.i86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.i ], [ 0, %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 2 uses
  %niter514 = phi i64 [ %niter514.next.1, %bb.i ], [ 0, %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ]
  %i.ai = trunc nuw nsw i64 %indvars.iv.i83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = and i32 %i.aj, %.05694.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i85.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i32 %i.ak, 0
  br i1 %.not.i85.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = add nsw i32 %i.am, %.010.i84.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1

.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1: ; preds = %bb.g, %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.1.i86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.an, %bb.g ], [ %.010.i84.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i87.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = or disjoint i64 %indvars.iv.i83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv.next.i87.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = and i32 %i.ap, %.05694.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i85.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i32 %i.aq, 0
  br i1 %.not.i85.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i87.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = add nsw i32 %i.as, %.1.i86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %.1.i86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi i32 [ %i.at, %bb.h ], [ %.1.i86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 ] ; 3 uses
  %indvars.iv.next.i87.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %niter514.next.1 = add i64 %niter514, 2         ; 2 uses
  %niter514.ncmp.1 = icmp eq i64 %niter514.next.1, %unroll_iter513
  br i1 %niter514.ncmp.1, label %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !45

bb.j:                                             ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.155.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.bh, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.05496.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.097.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.ba, %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.not78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp slt i32 %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.155.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br i1 %.not78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.c, label %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.i
  br i1 %lcmp.mod510.not, label %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader

.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader: ; preds = %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader
  %indvars.iv.i83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %indvars.iv.next.i87.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.010.i84.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %.1.i86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod512)
  %i.au = trunc nuw nsw i64 %indvars.iv.i83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init to i32
  %i.av = shl nuw i32 1, %i.au
  %i.aw = and i32 %i.av, %.05694.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i85.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i32 %i.aw, 0
  br i1 %.not.i85.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i83.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = add nsw i32 %i.ay, %.010.i84.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  br label %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, %bb.k, %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.1.i86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi i32 [ %.1.i86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit89.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %i.az, %bb.k ], [ %.010.i84.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.lr.ph.i82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader ]
  %i.ba = tail call noundef i32 @llvm.smax.i32(i32 %.097.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i32 %.1.i86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa)
  br label %bb.j

Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.f
  br i1 %lcmp.mod.not, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader: ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader
  %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod508)
  %i.bb = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init to i32
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = and i32 %i.bc, %.05694.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i32 %i.bd, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = add nsw i32 %i.bf, %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  br label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, %bb.l, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi i32 [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %i.bg, %bb.l ], [ %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader ]
  %i.bh = tail call noundef i32 @llvm.smin.i32(i32 %.05496.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i32 %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa)
  br label %bb.j

.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %bb.j
  %i.bi = add nuw nsw i32 %storemerge75121.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bi, ptr %2, align 4, !tbaa !8
  %.not76.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.not = icmp slt i32 %storemerge75121.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.b
  br i1 %.not76.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.not, label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split123.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !68

.split123.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bj = add nuw nsw i32 %storemerge73131.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bj, ptr %i.h, align 4, !tbaa !8
  %.not74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.not = icmp slt i32 %storemerge73131.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.b
  br i1 %.not74.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.not, label %.preheader91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split147.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !69

.split147.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split123.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bk = add nuw nsw i32 %storemerge71164.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bk, ptr %i.g, align 4, !tbaa !8
  %.not72.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.not = icmp slt i32 %storemerge71164.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.b
  br i1 %.not72.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.not, label %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split182.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !70

.split182.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split147.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bl = add nuw nsw i32 %storemerge69205.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bl, ptr %i.f, align 4, !tbaa !8
  %.not70.us.us.us.us.us.us.us.us.us.us.us.us.not = icmp slt i32 %storemerge69205.us.us.us.us.us.us.us.us.us.us.us.us, %i.b
  br i1 %.not70.us.us.us.us.us.us.us.us.us.us.us.us.not, label %.split166.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split225.us.split.us.split.us.us.us.us.us.us.us.us.us.us, !llvm.loop !71

.split225.us.split.us.split.us.us.us.us.us.us.us.us.us.us: ; preds = %.split182.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bm = add nuw nsw i32 %storemerge67254.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bm, ptr %i.e, align 4, !tbaa !8
  %.not68.us.us.us.us.us.us.us.us.us.not = icmp slt i32 %storemerge67254.us.us.us.us.us.us.us.us.us, %i.b
  br i1 %.not68.us.us.us.us.us.us.us.us.us.not, label %.split207.us.us.us.us.us.us.us.us.us.us, label %.split276.us.split.us.split.us.us.us.us.us.us.us, !llvm.loop !72

.split276.us.split.us.split.us.us.us.us.us.us.us: ; preds = %.split225.us.split.us.split.us.us.us.us.us.us.us.us.us.us
  %i.bn = add nuw nsw i32 %storemerge65310.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bn, ptr %i.d, align 4, !tbaa !8
  %.not66.us.us.us.us.us.us.not = icmp slt i32 %storemerge65310.us.us.us.us.us.us, %i.b
  br i1 %.not66.us.us.us.us.us.us.not, label %.split256.us.us.us.us.us.us.us, label %.split334.us.split.us.split.us.us.us.us, !llvm.loop !73

.split334.us.split.us.split.us.us.us.us:          ; preds = %.split276.us.split.us.split.us.us.us.us.us.us.us
  %i.bo = add nuw i32 %storemerge374.us.us.us, 1  ; 2 uses
  store i32 %i.bo, ptr %i.c, align 4, !tbaa !8
  %exitcond427.not = icmp eq i32 %storemerge374.us.us.us, %smax426
  br i1 %exitcond427.not, label %.thread, label %.split312.us.us.us.us, !llvm.loop !74

.split256.us.us.us376:                            ; preds = %.split312.us.us.preheader, %.split276.us.split.split.us316.us
  %storemerge65310.us.us377 = phi i32 [ 1, %.split312.us.us.preheader ], [ %i.cd, %.split276.us.split.split.us316.us ] ; 3 uses
  br label %.split207.us.us.us313.us

.split207.us.us.us313.us:                         ; preds = %.split225.us.split.split.us260.us.us, %.split256.us.us.us376
  %storemerge67254.us.us314.us = phi i32 [ %storemerge65310.us.us377, %.split256.us.us.us376 ], [ %i.cc, %.split225.us.split.split.us260.us.us ] ; 4 uses
  br label %.split166.us.us.us257.us.us

.split166.us.us.us257.us.us:                      ; preds = %.split182.us.split.split.us211.us.us.us, %.split207.us.us.us313.us
  %storemerge69205.us.us258.us.us = phi i32 [ %storemerge67254.us.us314.us, %.split207.us.us.us313.us ], [ %i.cb, %.split182.us.split.split.us211.us.us.us ] ; 4 uses
  br label %.split.us.us.us208.us.us.us

.split.us.us.us208.us.us.us:                      ; preds = %.split147.us.split.split.us170.us.us.us.us, %.split166.us.us.us257.us.us
  %storemerge71164.us.us209.us.us.us = phi i32 [ %storemerge69205.us.us258.us.us, %.split166.us.us.us257.us.us ], [ %i.ca, %.split147.us.split.split.us170.us.us.us.us ] ; 4 uses
  br label %.preheader91.us.us167.us.us.us.us

.preheader91.us.us167.us.us.us.us:                ; preds = %.split123.split.us134.us.us.us.us.us, %.split.us.us.us208.us.us.us
  %storemerge73131.us.us168.us.us.us.us = phi i32 [ %storemerge71164.us.us209.us.us.us, %.split.us.us.us208.us.us.us ], [ %i.bz, %.split123.split.us134.us.us.us.us.us ] ; 4 uses
  br label %.preheader.us135.us.us.us.us.us

bb.m:                                             ; preds = %bb.n
  %i.bp = add nuw nsw i32 %.05694.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %smax424
  br i1 %exitcond.not, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us, label %bb.n, !llvm.loop !67

bb.n:                                             ; preds = %.preheader.us135.us.us.us.us.us, %bb.m
  %.05694.us.us.us.us.us.us = phi i32 [ 0, %.preheader.us135.us.us.us.us.us ], [ %i.bp, %bb.m ] ; 3 uses
  %i.bq = lshr i32 %.05694.us.us.us.us.us.us, 6
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = and i32 %.05694.us.us.us.us.us.us, 63
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bt, %i.bw
  %.not77.us.us.us.us.us.us = icmp eq i64 %i.bx, 0
  br i1 %.not77.us.us.us.us.us.us, label %bb.m, label %.split.split.us.us.us.us.us.us

.split.split.us.us.us.us.us.us:                   ; preds = %bb.n
  %i.by = add nuw nsw i32 %storemerge75121.us136.us.us.us.us.us, 1 ; 2 uses
  %.not76.us133.us.us.us.us.us.not = icmp slt i32 %storemerge75121.us136.us.us.us.us.us, %i.b
  br i1 %.not76.us133.us.us.us.us.us.not, label %.preheader.us135.us.us.us.us.us, label %.split123.split.us134.us.us.us.us.us, !llvm.loop !68

.split123.split.us134.us.us.us.us.us:             ; preds = %.split.split.us.us.us.us.us.us
  %i.bz = add nuw nsw i32 %storemerge73131.us.us168.us.us.us.us, 1 ; 2 uses
  %.not74.us.us169.us.us.us.us.not = icmp slt i32 %storemerge73131.us.us168.us.us.us.us, %i.b
  br i1 %.not74.us.us169.us.us.us.us.not, label %.preheader91.us.us167.us.us.us.us, label %.split147.us.split.split.us170.us.us.us.us, !llvm.loop !69

.preheader.us135.us.us.us.us.us:                  ; preds = %.split.split.us.us.us.us.us.us, %.preheader91.us.us167.us.us.us.us
  %storemerge75121.us136.us.us.us.us.us = phi i32 [ %storemerge73131.us.us168.us.us.us.us, %.preheader91.us.us167.us.us.us.us ], [ %i.by, %.split.split.us.us.us.us.us.us ] ; 3 uses
  br label %bb.n

.split147.us.split.split.us170.us.us.us.us:       ; preds = %.split123.split.us134.us.us.us.us.us
  store i32 %i.by, ptr %2, align 4, !tbaa !8
  %i.ca = add nuw nsw i32 %storemerge71164.us.us209.us.us.us, 1 ; 2 uses
  %.not72.us.us210.us.us.us.not = icmp slt i32 %storemerge71164.us.us209.us.us.us, %i.b
  br i1 %.not72.us.us210.us.us.us.not, label %.split.us.us.us208.us.us.us, label %.split182.us.split.split.us211.us.us.us, !llvm.loop !70

.split182.us.split.split.us211.us.us.us:          ; preds = %.split147.us.split.split.us170.us.us.us.us
  store i32 %i.bz, ptr %i.h, align 4, !tbaa !8
  %i.cb = add nuw nsw i32 %storemerge69205.us.us258.us.us, 1 ; 2 uses
  %.not70.us.us259.us.us.not = icmp slt i32 %storemerge69205.us.us258.us.us, %i.b
  br i1 %.not70.us.us259.us.us.not, label %.split166.us.us.us257.us.us, label %.split225.us.split.split.us260.us.us, !llvm.loop !71

.split225.us.split.split.us260.us.us:             ; preds = %.split182.us.split.split.us211.us.us.us
  store i32 %i.ca, ptr %i.g, align 4, !tbaa !8
  %i.cc = add nuw nsw i32 %storemerge67254.us.us314.us, 1 ; 2 uses
  %.not68.us.us315.us.not = icmp slt i32 %storemerge67254.us.us314.us, %i.b
  br i1 %.not68.us.us315.us.not, label %.split207.us.us.us313.us, label %.split276.us.split.split.us316.us, !llvm.loop !72

.split276.us.split.split.us316.us:                ; preds = %.split225.us.split.split.us260.us.us
  store i32 %i.cb, ptr %i.f, align 4, !tbaa !8
  %i.cd = add nuw i32 %storemerge65310.us.us377, 1 ; 2 uses
  %exitcond423.not = icmp eq i32 %i.cd, %i.j
  br i1 %exitcond423.not, label %.split334.us.split.split.us379, label %.split256.us.us.us376, !llvm.loop !73

.split334.us.split.split.us379:                   ; preds = %.split276.us.split.split.us316.us
  store i32 %i.cc, ptr %i.e, align 4, !tbaa !8
  store i32 2, ptr %i.c, align 4, !tbaa !8
  %exitcond423.not.a = icmp eq i32 %i.j, 2
  br i1 %exitcond423.not.a, label %..thread.loopexit92_crit_edge.split.us.split.split, label %.split256.us.us.us376.1

.split256.us.us.us376.1:                          ; preds = %.split334.us.split.split.us379, %.split276.us.split.split.us316.us.1
  %storemerge65310.us.us377.1 = phi i32 [ %i.cr, %.split276.us.split.split.us316.us.1 ], [ 2, %.split334.us.split.split.us379 ] ; 3 uses
  br label %.split207.us.us.us313.us.1

.split207.us.us.us313.us.1:                       ; preds = %.split225.us.split.split.us260.us.us.1, %.split256.us.us.us376.1
  %storemerge67254.us.us314.us.1 = phi i32 [ %storemerge65310.us.us377.1, %.split256.us.us.us376.1 ], [ %i.cq, %.split225.us.split.split.us260.us.us.1 ] ; 4 uses
  br label %.split166.us.us.us257.us.us.1

.split166.us.us.us257.us.us.1:                    ; preds = %.split182.us.split.split.us211.us.us.us.1, %.split207.us.us.us313.us.1
  %storemerge69205.us.us258.us.us.1 = phi i32 [ %storemerge67254.us.us314.us.1, %.split207.us.us.us313.us.1 ], [ %i.cp, %.split182.us.split.split.us211.us.us.us.1 ] ; 4 uses
  br label %.split.us.us.us208.us.us.us.1

.split.us.us.us208.us.us.us.1:                    ; preds = %.split147.us.split.split.us170.us.us.us.us.1, %.split166.us.us.us257.us.us.1
  %storemerge71164.us.us209.us.us.us.1 = phi i32 [ %storemerge69205.us.us258.us.us.1, %.split166.us.us.us257.us.us.1 ], [ %i.co, %.split147.us.split.split.us170.us.us.us.us.1 ] ; 4 uses
  br label %.preheader91.us.us167.us.us.us.us.1

.preheader91.us.us167.us.us.us.us.1:              ; preds = %.split123.split.us134.us.us.us.us.us.1, %.split.us.us.us208.us.us.us.1
  %storemerge73131.us.us168.us.us.us.us.1 = phi i32 [ %storemerge71164.us.us209.us.us.us.1, %.split.us.us.us208.us.us.us.1 ], [ %i.cn, %.split123.split.us134.us.us.us.us.us.1 ] ; 4 uses
  br label %.preheader.us135.us.us.us.us.us.1

.preheader.us135.us.us.us.us.us.1:                ; preds = %.split.split.us.us.us.us.us.us.1, %.preheader91.us.us167.us.us.us.us.1
  %storemerge75121.us136.us.us.us.us.us.1 = phi i32 [ %storemerge73131.us.us168.us.us.us.us.1, %.preheader91.us.us167.us.us.us.us.1 ], [ %i.cm, %.split.split.us.us.us.us.us.us.1 ] ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.preheader.us135.us.us.us.us.us.1
  %.05694.us.us.us.us.us.us.1 = phi i32 [ 0, %.preheader.us135.us.us.us.us.us.1 ], [ %i.cs, %bb.p ] ; 3 uses
  %i.ce = lshr i32 %.05694.us.us.us.us.us.us.1, 6
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11
  %i.ci = and i32 %.05694.us.us.us.us.us.us.1, 63
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ch, %i.ck
  %.not77.us.us.us.us.us.us.1 = icmp eq i64 %i.cl, 0
  br i1 %.not77.us.us.us.us.us.us.1, label %bb.p, label %.split.split.us.us.us.us.us.us.1

.split.split.us.us.us.us.us.us.1:                 ; preds = %bb.o
  %i.cm = add nuw nsw i32 %storemerge75121.us136.us.us.us.us.us.1, 1 ; 2 uses
  %.not76.us133.us.us.us.us.us.not.1 = icmp slt i32 %storemerge75121.us136.us.us.us.us.us.1, %i.b
  br i1 %.not76.us133.us.us.us.us.us.not.1, label %.preheader.us135.us.us.us.us.us.1, label %.split123.split.us134.us.us.us.us.us.1, !llvm.loop !68

.split123.split.us134.us.us.us.us.us.1:           ; preds = %.split.split.us.us.us.us.us.us.1
  %i.cn = add nuw nsw i32 %storemerge73131.us.us168.us.us.us.us.1, 1 ; 2 uses
  %.not74.us.us169.us.us.us.us.not.1 = icmp slt i32 %storemerge73131.us.us168.us.us.us.us.1, %i.b
  br i1 %.not74.us.us169.us.us.us.us.not.1, label %.preheader91.us.us167.us.us.us.us.1, label %.split147.us.split.split.us170.us.us.us.us.1, !llvm.loop !69

.split147.us.split.split.us170.us.us.us.us.1:     ; preds = %.split123.split.us134.us.us.us.us.us.1
  store i32 %i.cm, ptr %2, align 4, !tbaa !8
  %i.co = add nuw nsw i32 %storemerge71164.us.us209.us.us.us.1, 1 ; 2 uses
  %.not72.us.us210.us.us.us.not.1 = icmp slt i32 %storemerge71164.us.us209.us.us.us.1, %i.b
  br i1 %.not72.us.us210.us.us.us.not.1, label %.split.us.us.us208.us.us.us.1, label %.split182.us.split.split.us211.us.us.us.1, !llvm.loop !70

.split182.us.split.split.us211.us.us.us.1:        ; preds = %.split147.us.split.split.us170.us.us.us.us.1
  store i32 %i.cn, ptr %i.h, align 4, !tbaa !8
  %i.cp = add nuw nsw i32 %storemerge69205.us.us258.us.us.1, 1 ; 2 uses
  %.not70.us.us259.us.us.not.1 = icmp slt i32 %storemerge69205.us.us258.us.us.1, %i.b
  br i1 %.not70.us.us259.us.us.not.1, label %.split166.us.us.us257.us.us.1, label %.split225.us.split.split.us260.us.us.1, !llvm.loop !71

.split225.us.split.split.us260.us.us.1:           ; preds = %.split182.us.split.split.us211.us.us.us.1
  store i32 %i.co, ptr %i.g, align 4, !tbaa !8
  %i.cq = add nuw nsw i32 %storemerge67254.us.us314.us.1, 1 ; 2 uses
  %.not68.us.us315.us.not.1 = icmp slt i32 %storemerge67254.us.us314.us.1, %i.b
  br i1 %.not68.us.us315.us.not.1, label %.split207.us.us.us313.us.1, label %.split276.us.split.split.us316.us.1, !llvm.loop !72

.split276.us.split.split.us316.us.1:              ; preds = %.split225.us.split.split.us260.us.us.1
  store i32 %i.cp, ptr %i.f, align 4, !tbaa !8
  %i.cr = add nuw i32 %storemerge65310.us.us377.1, 1 ; 2 uses
  %exitcond423.not.1 = icmp eq i32 %i.cr, %i.j
  br i1 %exitcond423.not.1, label %.split334.us.split.split.us379.1, label %.split256.us.us.us376.1, !llvm.loop !73

.split334.us.split.split.us379.1:                 ; preds = %.split276.us.split.split.us316.us.1
  store i32 %i.cq, ptr %i.e, align 4, !tbaa !8
  store i32 3, ptr %i.c, align 4, !tbaa !8
  %exitcond423.not.1.a = icmp eq i32 %i.j, 3
  br i1 %exitcond423.not.1.a, label %..thread.loopexit92_crit_edge.split.us.split.split, label %.split256.us.us.us376.2

bb.p:                                             ; preds = %bb.o
  %i.cs = add nuw nsw i32 %.05694.us.us.us.us.us.us.1, 1 ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cs, %smax424
  br i1 %exitcond.not.1, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us, label %bb.o, !llvm.loop !67

.split256.us.us.us376.2:                          ; preds = %.split334.us.split.split.us379.1, %.split276.us.split.split.us316.us.2
  %storemerge65310.us.us377.2 = phi i32 [ %i.dg, %.split276.us.split.split.us316.us.2 ], [ 3, %.split334.us.split.split.us379.1 ] ; 3 uses
  br label %.split207.us.us.us313.us.2

.split207.us.us.us313.us.2:                       ; preds = %.split225.us.split.split.us260.us.us.2, %.split256.us.us.us376.2
  %storemerge67254.us.us314.us.2 = phi i32 [ %storemerge65310.us.us377.2, %.split256.us.us.us376.2 ], [ %i.df, %.split225.us.split.split.us260.us.us.2 ] ; 4 uses
  br label %.split166.us.us.us257.us.us.2

.split166.us.us.us257.us.us.2:                    ; preds = %.split182.us.split.split.us211.us.us.us.2, %.split207.us.us.us313.us.2
  %storemerge69205.us.us258.us.us.2 = phi i32 [ %storemerge67254.us.us314.us.2, %.split207.us.us.us313.us.2 ], [ %i.de, %.split182.us.split.split.us211.us.us.us.2 ] ; 4 uses
  br label %.split.us.us.us208.us.us.us.2

.split.us.us.us208.us.us.us.2:                    ; preds = %.split147.us.split.split.us170.us.us.us.us.2, %.split166.us.us.us257.us.us.2
  %storemerge71164.us.us209.us.us.us.2 = phi i32 [ %storemerge69205.us.us258.us.us.2, %.split166.us.us.us257.us.us.2 ], [ %i.dd, %.split147.us.split.split.us170.us.us.us.us.2 ] ; 4 uses
  br label %.preheader91.us.us167.us.us.us.us.2

.preheader91.us.us167.us.us.us.us.2:              ; preds = %.split123.split.us134.us.us.us.us.us.2, %.split.us.us.us208.us.us.us.2
  %storemerge73131.us.us168.us.us.us.us.2 = phi i32 [ %storemerge71164.us.us209.us.us.us.2, %.split.us.us.us208.us.us.us.2 ], [ %i.dc, %.split123.split.us134.us.us.us.us.us.2 ] ; 4 uses
  br label %.preheader.us135.us.us.us.us.us.2

.preheader.us135.us.us.us.us.us.2:                ; preds = %.split.split.us.us.us.us.us.us.2, %.preheader91.us.us167.us.us.us.us.2
  %storemerge75121.us136.us.us.us.us.us.2 = phi i32 [ %storemerge73131.us.us168.us.us.us.us.2, %.preheader91.us.us167.us.us.us.us.2 ], [ %i.db, %.split.split.us.us.us.us.us.us.2 ] ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.preheader.us135.us.us.us.us.us.2
  %.05694.us.us.us.us.us.us.2 = phi i32 [ 0, %.preheader.us135.us.us.us.us.us.2 ], [ %i.dh, %bb.r ] ; 3 uses
  %i.ct = lshr i32 %.05694.us.us.us.us.us.us.2, 6
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !11
  %i.cx = and i32 %.05694.us.us.us.us.us.us.2, 63
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = and i64 %i.cw, %i.cz
  %.not77.us.us.us.us.us.us.2 = icmp eq i64 %i.da, 0
  br i1 %.not77.us.us.us.us.us.us.2, label %bb.r, label %.split.split.us.us.us.us.us.us.2

.split.split.us.us.us.us.us.us.2:                 ; preds = %bb.q
  %i.db = add nuw nsw i32 %storemerge75121.us136.us.us.us.us.us.2, 1 ; 2 uses
  %.not76.us133.us.us.us.us.us.not.2 = icmp slt i32 %storemerge75121.us136.us.us.us.us.us.2, %i.b
  br i1 %.not76.us133.us.us.us.us.us.not.2, label %.preheader.us135.us.us.us.us.us.2, label %.split123.split.us134.us.us.us.us.us.2, !llvm.loop !68

.split123.split.us134.us.us.us.us.us.2:           ; preds = %.split.split.us.us.us.us.us.us.2
  %i.dc = add nuw nsw i32 %storemerge73131.us.us168.us.us.us.us.2, 1 ; 2 uses
  %.not74.us.us169.us.us.us.us.not.2 = icmp slt i32 %storemerge73131.us.us168.us.us.us.us.2, %i.b
  br i1 %.not74.us.us169.us.us.us.us.not.2, label %.preheader91.us.us167.us.us.us.us.2, label %.split147.us.split.split.us170.us.us.us.us.2, !llvm.loop !69

.split147.us.split.split.us170.us.us.us.us.2:     ; preds = %.split123.split.us134.us.us.us.us.us.2
  store i32 %i.db, ptr %2, align 4, !tbaa !8
  %i.dd = add nuw nsw i32 %storemerge71164.us.us209.us.us.us.2, 1 ; 2 uses
  %.not72.us.us210.us.us.us.not.2 = icmp slt i32 %storemerge71164.us.us209.us.us.us.2, %i.b
  br i1 %.not72.us.us210.us.us.us.not.2, label %.split.us.us.us208.us.us.us.2, label %.split182.us.split.split.us211.us.us.us.2, !llvm.loop !70

.split182.us.split.split.us211.us.us.us.2:        ; preds = %.split147.us.split.split.us170.us.us.us.us.2
  store i32 %i.dc, ptr %i.h, align 4, !tbaa !8
  %i.de = add nuw nsw i32 %storemerge69205.us.us258.us.us.2, 1 ; 2 uses
  %.not70.us.us259.us.us.not.2 = icmp slt i32 %storemerge69205.us.us258.us.us.2, %i.b
  br i1 %.not70.us.us259.us.us.not.2, label %.split166.us.us.us257.us.us.2, label %.split225.us.split.split.us260.us.us.2, !llvm.loop !71

.split225.us.split.split.us260.us.us.2:           ; preds = %.split182.us.split.split.us211.us.us.us.2
  store i32 %i.dd, ptr %i.g, align 4, !tbaa !8
  %i.df = add nuw nsw i32 %storemerge67254.us.us314.us.2, 1 ; 2 uses
  %.not68.us.us315.us.not.2 = icmp slt i32 %storemerge67254.us.us314.us.2, %i.b
  br i1 %.not68.us.us315.us.not.2, label %.split207.us.us.us313.us.2, label %.split276.us.split.split.us316.us.2, !llvm.loop !72

.split276.us.split.split.us316.us.2:              ; preds = %.split225.us.split.split.us260.us.us.2
  store i32 %i.de, ptr %i.f, align 4, !tbaa !8
  %i.dg = add nuw i32 %storemerge65310.us.us377.2, 1 ; 2 uses
  %exitcond423.not.2 = icmp eq i32 %i.dg, %i.j
  br i1 %exitcond423.not.2, label %.split334.us.split.split.us379.2, label %.split256.us.us.us376.2, !llvm.loop !73

.split334.us.split.split.us379.2:                 ; preds = %.split276.us.split.split.us316.us.2
  store i32 %i.df, ptr %i.e, align 4, !tbaa !8
  store i32 4, ptr %i.c, align 4, !tbaa !8
  %exitcond423.not.2.a = icmp eq i32 %i.j, 4
  br i1 %exitcond423.not.2.a, label %..thread.loopexit92_crit_edge.split.us.split.split, label %.split256.us.us.us376.3

bb.r:                                             ; preds = %bb.q
  %i.dh = add nuw nsw i32 %.05694.us.us.us.us.us.us.2, 1 ; 2 uses
  %exitcond.not.2 = icmp eq i32 %i.dh, %smax424
  br i1 %exitcond.not.2, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us, label %bb.q, !llvm.loop !67

.split256.us.us.us376.3:                          ; preds = %.split334.us.split.split.us379.2, %.split276.us.split.split.us316.us.3
  %storemerge65310.us.us377.3 = phi i32 [ %i.dv, %.split276.us.split.split.us316.us.3 ], [ 4, %.split334.us.split.split.us379.2 ] ; 3 uses
  br label %.split207.us.us.us313.us.3

.split207.us.us.us313.us.3:                       ; preds = %.split225.us.split.split.us260.us.us.3, %.split256.us.us.us376.3
  %storemerge67254.us.us314.us.3 = phi i32 [ %storemerge65310.us.us377.3, %.split256.us.us.us376.3 ], [ %i.du, %.split225.us.split.split.us260.us.us.3 ] ; 4 uses
  br label %.split166.us.us.us257.us.us.3

.split166.us.us.us257.us.us.3:                    ; preds = %.split182.us.split.split.us211.us.us.us.3, %.split207.us.us.us313.us.3
  %storemerge69205.us.us258.us.us.3 = phi i32 [ %storemerge67254.us.us314.us.3, %.split207.us.us.us313.us.3 ], [ %i.dt, %.split182.us.split.split.us211.us.us.us.3 ] ; 4 uses
  br label %.split.us.us.us208.us.us.us.3

.split.us.us.us208.us.us.us.3:                    ; preds = %.split147.us.split.split.us170.us.us.us.us.3, %.split166.us.us.us257.us.us.3
  %storemerge71164.us.us209.us.us.us.3 = phi i32 [ %storemerge69205.us.us258.us.us.3, %.split166.us.us.us257.us.us.3 ], [ %i.ds, %.split147.us.split.split.us170.us.us.us.us.3 ] ; 4 uses
  br label %.preheader91.us.us167.us.us.us.us.3

.preheader91.us.us167.us.us.us.us.3:              ; preds = %.split123.split.us134.us.us.us.us.us.3, %.split.us.us.us208.us.us.us.3
  %storemerge73131.us.us168.us.us.us.us.3 = phi i32 [ %storemerge71164.us.us209.us.us.us.3, %.split.us.us.us208.us.us.us.3 ], [ %i.dr, %.split123.split.us134.us.us.us.us.us.3 ] ; 4 uses
  br label %.preheader.us135.us.us.us.us.us.3

.preheader.us135.us.us.us.us.us.3:                ; preds = %.split.split.us.us.us.us.us.us.3, %.preheader91.us.us167.us.us.us.us.3
  %storemerge75121.us136.us.us.us.us.us.3 = phi i32 [ %storemerge73131.us.us168.us.us.us.us.3, %.preheader91.us.us167.us.us.us.us.3 ], [ %i.dq, %.split.split.us.us.us.us.us.us.3 ] ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.preheader.us135.us.us.us.us.us.3
  %.05694.us.us.us.us.us.us.3 = phi i32 [ 0, %.preheader.us135.us.us.us.us.us.3 ], [ %i.dw, %bb.t ] ; 3 uses
  %i.di = lshr i32 %.05694.us.us.us.us.us.us.3, 6
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !11
  %i.dm = and i32 %.05694.us.us.us.us.us.us.3, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = and i64 %i.dl, %i.do
  %.not77.us.us.us.us.us.us.3 = icmp eq i64 %i.dp, 0
  br i1 %.not77.us.us.us.us.us.us.3, label %bb.t, label %.split.split.us.us.us.us.us.us.3

.split.split.us.us.us.us.us.us.3:                 ; preds = %bb.s
  %i.dq = add nuw nsw i32 %storemerge75121.us136.us.us.us.us.us.3, 1 ; 2 uses
  %.not76.us133.us.us.us.us.us.not.3 = icmp slt i32 %storemerge75121.us136.us.us.us.us.us.3, %i.b
  br i1 %.not76.us133.us.us.us.us.us.not.3, label %.preheader.us135.us.us.us.us.us.3, label %.split123.split.us134.us.us.us.us.us.3, !llvm.loop !68

.split123.split.us134.us.us.us.us.us.3:           ; preds = %.split.split.us.us.us.us.us.us.3
  %i.dr = add nuw nsw i32 %storemerge73131.us.us168.us.us.us.us.3, 1 ; 2 uses
  %.not74.us.us169.us.us.us.us.not.3 = icmp slt i32 %storemerge73131.us.us168.us.us.us.us.3, %i.b
  br i1 %.not74.us.us169.us.us.us.us.not.3, label %.preheader91.us.us167.us.us.us.us.3, label %.split147.us.split.split.us170.us.us.us.us.3, !llvm.loop !69

.split147.us.split.split.us170.us.us.us.us.3:     ; preds = %.split123.split.us134.us.us.us.us.us.3
  store i32 %i.dq, ptr %2, align 4, !tbaa !8
  %i.ds = add nuw nsw i32 %storemerge71164.us.us209.us.us.us.3, 1 ; 2 uses
  %.not72.us.us210.us.us.us.not.3 = icmp slt i32 %storemerge71164.us.us209.us.us.us.3, %i.b
  br i1 %.not72.us.us210.us.us.us.not.3, label %.split.us.us.us208.us.us.us.3, label %.split182.us.split.split.us211.us.us.us.3, !llvm.loop !70

.split182.us.split.split.us211.us.us.us.3:        ; preds = %.split147.us.split.split.us170.us.us.us.us.3
  store i32 %i.dr, ptr %i.h, align 4, !tbaa !8
  %i.dt = add nuw nsw i32 %storemerge69205.us.us258.us.us.3, 1 ; 2 uses
  %.not70.us.us259.us.us.not.3 = icmp slt i32 %storemerge69205.us.us258.us.us.3, %i.b
  br i1 %.not70.us.us259.us.us.not.3, label %.split166.us.us.us257.us.us.3, label %.split225.us.split.split.us260.us.us.3, !llvm.loop !71

.split225.us.split.split.us260.us.us.3:           ; preds = %.split182.us.split.split.us211.us.us.us.3
  store i32 %i.ds, ptr %i.g, align 4, !tbaa !8
  %i.du = add nuw nsw i32 %storemerge67254.us.us314.us.3, 1 ; 2 uses
  %.not68.us.us315.us.not.3 = icmp slt i32 %storemerge67254.us.us314.us.3, %i.b
  br i1 %.not68.us.us315.us.not.3, label %.split207.us.us.us313.us.3, label %.split276.us.split.split.us316.us.3, !llvm.loop !72

.split276.us.split.split.us316.us.3:              ; preds = %.split225.us.split.split.us260.us.us.3
  store i32 %i.dt, ptr %i.f, align 4, !tbaa !8
  %i.dv = add nuw i32 %storemerge65310.us.us377.3, 1 ; 2 uses
  %exitcond423.not.3 = icmp eq i32 %i.dv, %i.j
  br i1 %exitcond423.not.3, label %.split334.us.split.split.us379.3, label %.split256.us.us.us376.3, !llvm.loop !73

.split334.us.split.split.us379.3:                 ; preds = %.split276.us.split.split.us316.us.3
  store i32 %i.du, ptr %i.e, align 4, !tbaa !8
  store i32 5, ptr %i.c, align 4, !tbaa !8
  %exitcond423.not.3.a = icmp eq i32 %i.j, 5
  br i1 %exitcond423.not.3.a, label %..thread.loopexit92_crit_edge.split.us.split.split, label %.split256.us.us.us376.4

bb.t:                                             ; preds = %bb.s
  %i.dw = add nuw nsw i32 %.05694.us.us.us.us.us.us.3, 1 ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.dw, %smax424
  br i1 %exitcond.not.3, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us, label %bb.s, !llvm.loop !67

.split256.us.us.us376.4:                          ; preds = %.split334.us.split.split.us379.3, %.split276.us.split.split.us316.us.4
  %storemerge65310.us.us377.4 = phi i32 [ %i.ek, %.split276.us.split.split.us316.us.4 ], [ 5, %.split334.us.split.split.us379.3 ] ; 3 uses
  br label %.split207.us.us.us313.us.4

.split207.us.us.us313.us.4:                       ; preds = %.split225.us.split.split.us260.us.us.4, %.split256.us.us.us376.4
  %storemerge67254.us.us314.us.4 = phi i32 [ %storemerge65310.us.us377.4, %.split256.us.us.us376.4 ], [ %i.ej, %.split225.us.split.split.us260.us.us.4 ] ; 4 uses
  br label %.split166.us.us.us257.us.us.4

.split166.us.us.us257.us.us.4:                    ; preds = %.split182.us.split.split.us211.us.us.us.4, %.split207.us.us.us313.us.4
  %storemerge69205.us.us258.us.us.4 = phi i32 [ %storemerge67254.us.us314.us.4, %.split207.us.us.us313.us.4 ], [ %i.ei, %.split182.us.split.split.us211.us.us.us.4 ] ; 4 uses
  br label %.split.us.us.us208.us.us.us.4

.split.us.us.us208.us.us.us.4:                    ; preds = %.split147.us.split.split.us170.us.us.us.us.4, %.split166.us.us.us257.us.us.4
  %storemerge71164.us.us209.us.us.us.4 = phi i32 [ %storemerge69205.us.us258.us.us.4, %.split166.us.us.us257.us.us.4 ], [ %i.eh, %.split147.us.split.split.us170.us.us.us.us.4 ] ; 4 uses
  br label %.preheader91.us.us167.us.us.us.us.4

.preheader91.us.us167.us.us.us.us.4:              ; preds = %.split123.split.us134.us.us.us.us.us.4, %.split.us.us.us208.us.us.us.4
  %storemerge73131.us.us168.us.us.us.us.4 = phi i32 [ %storemerge71164.us.us209.us.us.us.4, %.split.us.us.us208.us.us.us.4 ], [ %i.eg, %.split123.split.us134.us.us.us.us.us.4 ] ; 4 uses
  br label %.preheader.us135.us.us.us.us.us.4

.preheader.us135.us.us.us.us.us.4:                ; preds = %.split.split.us.us.us.us.us.us.4, %.preheader91.us.us167.us.us.us.us.4
  %storemerge75121.us136.us.us.us.us.us.4 = phi i32 [ %storemerge73131.us.us168.us.us.us.us.4, %.preheader91.us.us167.us.us.us.us.4 ], [ %i.ef, %.split.split.us.us.us.us.us.us.4 ] ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.preheader.us135.us.us.us.us.us.4
  %.05694.us.us.us.us.us.us.4 = phi i32 [ 0, %.preheader.us135.us.us.us.us.us.4 ], [ %i.el, %bb.v ] ; 3 uses
  %i.dx = lshr i32 %.05694.us.us.us.us.us.us.4, 6
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !11
  %i.eb = and i32 %.05694.us.us.us.us.us.us.4, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.ea, %i.ed
  %.not77.us.us.us.us.us.us.4 = icmp eq i64 %i.ee, 0
  br i1 %.not77.us.us.us.us.us.us.4, label %bb.v, label %.split.split.us.us.us.us.us.us.4

.split.split.us.us.us.us.us.us.4:                 ; preds = %bb.u
  %i.ef = add nuw nsw i32 %storemerge75121.us136.us.us.us.us.us.4, 1 ; 2 uses
  %.not76.us133.us.us.us.us.us.not.4 = icmp slt i32 %storemerge75121.us136.us.us.us.us.us.4, %i.b
  br i1 %.not76.us133.us.us.us.us.us.not.4, label %.preheader.us135.us.us.us.us.us.4, label %.split123.split.us134.us.us.us.us.us.4, !llvm.loop !68

.split123.split.us134.us.us.us.us.us.4:           ; preds = %.split.split.us.us.us.us.us.us.4
  %i.eg = add nuw nsw i32 %storemerge73131.us.us168.us.us.us.us.4, 1 ; 2 uses
  %.not74.us.us169.us.us.us.us.not.4 = icmp slt i32 %storemerge73131.us.us168.us.us.us.us.4, %i.b
  br i1 %.not74.us.us169.us.us.us.us.not.4, label %.preheader91.us.us167.us.us.us.us.4, label %.split147.us.split.split.us170.us.us.us.us.4, !llvm.loop !69

.split147.us.split.split.us170.us.us.us.us.4:     ; preds = %.split123.split.us134.us.us.us.us.us.4
  store i32 %i.ef, ptr %2, align 4, !tbaa !8
  %i.eh = add nuw nsw i32 %storemerge71164.us.us209.us.us.us.4, 1 ; 2 uses
  %.not72.us.us210.us.us.us.not.4 = icmp slt i32 %storemerge71164.us.us209.us.us.us.4, %i.b
  br i1 %.not72.us.us210.us.us.us.not.4, label %.split.us.us.us208.us.us.us.4, label %.split182.us.split.split.us211.us.us.us.4, !llvm.loop !70

.split182.us.split.split.us211.us.us.us.4:        ; preds = %.split147.us.split.split.us170.us.us.us.us.4
  store i32 %i.eg, ptr %i.h, align 4, !tbaa !8
  %i.ei = add nuw nsw i32 %storemerge69205.us.us258.us.us.4, 1 ; 2 uses
  %.not70.us.us259.us.us.not.4 = icmp slt i32 %storemerge69205.us.us258.us.us.4, %i.b
  br i1 %.not70.us.us259.us.us.not.4, label %.split166.us.us.us257.us.us.4, label %.split225.us.split.split.us260.us.us.4, !llvm.loop !71

.split225.us.split.split.us260.us.us.4:           ; preds = %.split182.us.split.split.us211.us.us.us.4
  store i32 %i.eh, ptr %i.g, align 4, !tbaa !8
  %i.ej = add nuw nsw i32 %storemerge67254.us.us314.us.4, 1 ; 2 uses
  %.not68.us.us315.us.not.4 = icmp slt i32 %storemerge67254.us.us314.us.4, %i.b
  br i1 %.not68.us.us315.us.not.4, label %.split207.us.us.us313.us.4, label %.split276.us.split.split.us316.us.4, !llvm.loop !72

.split276.us.split.split.us316.us.4:              ; preds = %.split225.us.split.split.us260.us.us.4
  store i32 %i.ei, ptr %i.f, align 4, !tbaa !8
  %i.ek = add nuw i32 %storemerge65310.us.us377.4, 1 ; 2 uses
  %exitcond423.not.4 = icmp eq i32 %i.ek, %i.j
  br i1 %exitcond423.not.4, label %.split334.us.split.split.us379.4, label %.split256.us.us.us376.4, !llvm.loop !73

.split334.us.split.split.us379.4:                 ; preds = %.split276.us.split.split.us316.us.4
  store i32 %i.ej, ptr %i.e, align 4, !tbaa !8
  store i32 6, ptr %i.c, align 4, !tbaa !8
  %exitcond423.not.4.a = icmp eq i32 %i.j, 6
  br i1 %exitcond423.not.4.a, label %..thread.loopexit92_crit_edge.split.us.split.split, label %.split256.us.us.us376.5

bb.v:                                             ; preds = %bb.u
  %i.el = add nuw nsw i32 %.05694.us.us.us.us.us.us.4, 1 ; 2 uses
  %exitcond.not.4 = icmp eq i32 %i.el, %smax424
  br i1 %exitcond.not.4, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us, label %bb.u, !llvm.loop !67

.split256.us.us.us376.5:                          ; preds = %.split334.us.split.split.us379.4, %.split276.us.split.split.us316.us.5
  %storemerge65310.us.us377.5 = phi i32 [ %i.ez, %.split276.us.split.split.us316.us.5 ], [ 6, %.split334.us.split.split.us379.4 ] ; 3 uses
  br label %.split207.us.us.us313.us.5

.split207.us.us.us313.us.5:                       ; preds = %.split225.us.split.split.us260.us.us.5, %.split256.us.us.us376.5
  %storemerge67254.us.us314.us.5 = phi i32 [ %storemerge65310.us.us377.5, %.split256.us.us.us376.5 ], [ %i.ey, %.split225.us.split.split.us260.us.us.5 ] ; 4 uses
  br label %.split166.us.us.us257.us.us.5

.split166.us.us.us257.us.us.5:                    ; preds = %.split182.us.split.split.us211.us.us.us.5, %.split207.us.us.us313.us.5
  %storemerge69205.us.us258.us.us.5 = phi i32 [ %storemerge67254.us.us314.us.5, %.split207.us.us.us313.us.5 ], [ %i.ex, %.split182.us.split.split.us211.us.us.us.5 ] ; 4 uses
  br label %.split.us.us.us208.us.us.us.5

.split.us.us.us208.us.us.us.5:                    ; preds = %.split147.us.split.split.us170.us.us.us.us.5, %.split166.us.us.us257.us.us.5
  %storemerge71164.us.us209.us.us.us.5 = phi i32 [ %storemerge69205.us.us258.us.us.5, %.split166.us.us.us257.us.us.5 ], [ %i.ew, %.split147.us.split.split.us170.us.us.us.us.5 ] ; 4 uses
  br label %.preheader91.us.us167.us.us.us.us.5

.preheader91.us.us167.us.us.us.us.5:              ; preds = %.split123.split.us134.us.us.us.us.us.5, %.split.us.us.us208.us.us.us.5
  %storemerge73131.us.us168.us.us.us.us.5 = phi i32 [ %storemerge71164.us.us209.us.us.us.5, %.split.us.us.us208.us.us.us.5 ], [ %i.ev, %.split123.split.us134.us.us.us.us.us.5 ] ; 4 uses
  br label %.preheader.us135.us.us.us.us.us.5

.preheader.us135.us.us.us.us.us.5:                ; preds = %.split.split.us.us.us.us.us.us.5, %.preheader91.us.us167.us.us.us.us.5
  %storemerge75121.us136.us.us.us.us.us.5 = phi i32 [ %storemerge73131.us.us168.us.us.us.us.5, %.preheader91.us.us167.us.us.us.us.5 ], [ %i.eu, %.split.split.us.us.us.us.us.us.5 ] ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.preheader.us135.us.us.us.us.us.5
  %.05694.us.us.us.us.us.us.5 = phi i32 [ 0, %.preheader.us135.us.us.us.us.us.5 ], [ %i.fa, %bb.x ] ; 3 uses
  %i.em = lshr i32 %.05694.us.us.us.us.us.us.5, 6
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !11
  %i.eq = and i32 %.05694.us.us.us.us.us.us.5, 63
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = shl nuw i64 1, %i.er
  %i.et = and i64 %i.ep, %i.es
  %.not77.us.us.us.us.us.us.5 = icmp eq i64 %i.et, 0
  br i1 %.not77.us.us.us.us.us.us.5, label %bb.x, label %.split.split.us.us.us.us.us.us.5

.split.split.us.us.us.us.us.us.5:                 ; preds = %bb.w
  %i.eu = add nuw nsw i32 %storemerge75121.us136.us.us.us.us.us.5, 1 ; 2 uses
  %.not76.us133.us.us.us.us.us.not.5 = icmp slt i32 %storemerge75121.us136.us.us.us.us.us.5, %i.b
  br i1 %.not76.us133.us.us.us.us.us.not.5, label %.preheader.us135.us.us.us.us.us.5, label %.split123.split.us134.us.us.us.us.us.5, !llvm.loop !68

.split123.split.us134.us.us.us.us.us.5:           ; preds = %.split.split.us.us.us.us.us.us.5
  %i.ev = add nuw nsw i32 %storemerge73131.us.us168.us.us.us.us.5, 1 ; 2 uses
  %.not74.us.us169.us.us.us.us.not.5 = icmp slt i32 %storemerge73131.us.us168.us.us.us.us.5, %i.b
  br i1 %.not74.us.us169.us.us.us.us.not.5, label %.preheader91.us.us167.us.us.us.us.5, label %.split147.us.split.split.us170.us.us.us.us.5, !llvm.loop !69

.split147.us.split.split.us170.us.us.us.us.5:     ; preds = %.split123.split.us134.us.us.us.us.us.5
  store i32 %i.eu, ptr %2, align 4, !tbaa !8
  %i.ew = add nuw nsw i32 %storemerge71164.us.us209.us.us.us.5, 1 ; 2 uses
  %.not72.us.us210.us.us.us.not.5 = icmp slt i32 %storemerge71164.us.us209.us.us.us.5, %i.b
  br i1 %.not72.us.us210.us.us.us.not.5, label %.split.us.us.us208.us.us.us.5, label %.split182.us.split.split.us211.us.us.us.5, !llvm.loop !70

.split182.us.split.split.us211.us.us.us.5:        ; preds = %.split147.us.split.split.us170.us.us.us.us.5
  store i32 %i.ev, ptr %i.h, align 4, !tbaa !8
  %i.ex = add nuw nsw i32 %storemerge69205.us.us258.us.us.5, 1 ; 2 uses
  %.not70.us.us259.us.us.not.5 = icmp slt i32 %storemerge69205.us.us258.us.us.5, %i.b
  br i1 %.not70.us.us259.us.us.not.5, label %.split166.us.us.us257.us.us.5, label %.split225.us.split.split.us260.us.us.5, !llvm.loop !71

.split225.us.split.split.us260.us.us.5:           ; preds = %.split182.us.split.split.us211.us.us.us.5
  store i32 %i.ew, ptr %i.g, align 4, !tbaa !8
  %i.ey = add nuw nsw i32 %storemerge67254.us.us314.us.5, 1 ; 2 uses
  %.not68.us.us315.us.not.5 = icmp slt i32 %storemerge67254.us.us314.us.5, %i.b
  br i1 %.not68.us.us315.us.not.5, label %.split207.us.us.us313.us.5, label %.split276.us.split.split.us316.us.5, !llvm.loop !72

.split276.us.split.split.us316.us.5:              ; preds = %.split225.us.split.split.us260.us.us.5
  store i32 %i.ex, ptr %i.f, align 4, !tbaa !8
  %i.ez = add nuw i32 %storemerge65310.us.us377.5, 1 ; 2 uses
  %exitcond423.not.5 = icmp eq i32 %i.ez, %i.j
  br i1 %exitcond423.not.5, label %.split334.us.split.split.us379.5, label %.split256.us.us.us376.5, !llvm.loop !73

.split334.us.split.split.us379.5:                 ; preds = %.split276.us.split.split.us316.us.5
  store i32 %i.ey, ptr %i.e, align 4, !tbaa !8
  store i32 7, ptr %i.c, align 4, !tbaa !8
  br label %..thread.loopexit92_crit_edge.split.us.split.split

bb.x:                                             ; preds = %bb.w
  %i.fa = add nuw nsw i32 %.05694.us.us.us.us.us.us.5, 1 ; 2 uses
  %exitcond.not.5 = icmp eq i32 %i.fa, %smax424
  br i1 %exitcond.not.5, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us, label %bb.w, !llvm.loop !67

..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us: ; preds = %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.m
  %storemerge65310.us.us377.lcssa = phi i32 [ %storemerge65310.us.us377.3, %bb.t ], [ %storemerge65310.us.us377.4, %bb.v ], [ %storemerge65310.us.us377, %bb.m ], [ %storemerge65310.us.us377.1, %bb.p ], [ %storemerge65310.us.us377.2, %bb.r ], [ %storemerge65310.us.us377.5, %bb.x ]
  %storemerge67254.us.us314.us.lcssa = phi i32 [ %storemerge67254.us.us314.us.3, %bb.t ], [ %storemerge67254.us.us314.us.4, %bb.v ], [ %storemerge67254.us.us314.us, %bb.m ], [ %storemerge67254.us.us314.us.1, %bb.p ], [ %storemerge67254.us.us314.us.2, %bb.r ], [ %storemerge67254.us.us314.us.5, %bb.x ]
  %storemerge69205.us.us258.us.us.lcssa = phi i32 [ %storemerge69205.us.us258.us.us.3, %bb.t ], [ %storemerge69205.us.us258.us.us.4, %bb.v ], [ %storemerge69205.us.us258.us.us, %bb.m ], [ %storemerge69205.us.us258.us.us.1, %bb.p ], [ %storemerge69205.us.us258.us.us.2, %bb.r ], [ %storemerge69205.us.us258.us.us.5, %bb.x ]
  %storemerge71164.us.us209.us.us.us.lcssa = phi i32 [ %storemerge71164.us.us209.us.us.us.3, %bb.t ], [ %storemerge71164.us.us209.us.us.us.4, %bb.v ], [ %storemerge71164.us.us209.us.us.us, %bb.m ], [ %storemerge71164.us.us209.us.us.us.1, %bb.p ], [ %storemerge71164.us.us209.us.us.us.2, %bb.r ], [ %storemerge71164.us.us209.us.us.us.5, %bb.x ]
  %storemerge73131.us.us168.us.us.us.us.lcssa = phi i32 [ %storemerge73131.us.us168.us.us.us.us.3, %bb.t ], [ %storemerge73131.us.us168.us.us.us.us.4, %bb.v ], [ %storemerge73131.us.us168.us.us.us.us, %bb.m ], [ %storemerge73131.us.us168.us.us.us.us.1, %bb.p ], [ %storemerge73131.us.us168.us.us.us.us.2, %bb.r ], [ %storemerge73131.us.us168.us.us.us.us.5, %bb.x ]
  %storemerge75121.us136.us.us.us.us.us.lcssa = phi i32 [ %storemerge75121.us136.us.us.us.us.us.3, %bb.t ], [ %storemerge75121.us136.us.us.us.us.us.4, %bb.v ], [ %storemerge75121.us136.us.us.us.us.us, %bb.m ], [ %storemerge75121.us136.us.us.us.us.us.1, %bb.p ], [ %storemerge75121.us136.us.us.us.us.us.2, %bb.r ], [ %storemerge75121.us136.us.us.us.us.us.5, %bb.x ]
  store i32 %storemerge65310.us.us377.lcssa, ptr %i.d, align 4, !tbaa !8
  store i32 %storemerge67254.us.us314.us.lcssa, ptr %i.e, align 4, !tbaa !8
  store i32 %storemerge69205.us.us258.us.us.lcssa, ptr %i.f, align 4, !tbaa !8
  store i32 %storemerge71164.us.us209.us.us.us.lcssa, ptr %i.g, align 4, !tbaa !8
  store i32 %storemerge73131.us.us168.us.us.us.us.lcssa, ptr %i.h, align 4, !tbaa !8
  store i32 %storemerge75121.us136.us.us.us.us.us.lcssa, ptr %2, align 4, !tbaa !8
  br label %.thread

..thread.loopexit92_crit_edge.split.us.split.split: ; preds = %.split334.us.split.split.us379.5, %.split334.us.split.split.us379.4, %.split334.us.split.split.us379.3, %.split334.us.split.split.us379.2, %.split334.us.split.split.us379.1, %.split334.us.split.split.us379
  store i32 %i.j, ptr %i.d, align 4, !tbaa !8
  br label %.thread

.lr.ph.split:                                     ; preds = %.lr.ph
  store i32 1, ptr %i.d, align 4, !tbaa !8
  store i32 1, ptr %i.e, align 4, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %2, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.split334.us.split.us.split.us.us.us.us, %bb.c, %bb.a, %..thread.loopexit92_crit_edge.split.us.split.split, %.lr.ph.split, %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us
  %.057 = phi i32 [ %.155.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.c ], [ 10000, %.lr.ph.split ], [ 0, %bb.a ], [ 0, %..thread.loopexit92_crit_edge.split.us.split.split ], [ 10000, %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us ], [ 0, %.split334.us.split.us.split.us.us.us.us ]
  ret i32 %.057
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 10001) i32 @Extra_ThreshSelectWeights8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((28, 32)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nuw i32 1, %1                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  store i32 1, ptr %i.b, align 4, !tbaa !8
  %.not451 = icmp slt i32 %1, 0
  br i1 %.not451, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 5 uses
  switch i32 %1, label %.split383.us.us.us.us.preheader [
    i32 31, label %.lr.ph.split
    i32 0, label %.preheader.us143.us.us.us.us.us.us
  ]

.split383.us.us.us.us.preheader:                  ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %i.i = add nuw i32 %1, 2                        ; 2 uses
  %i.j = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.k = icmp eq i64 %i.j, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod521 = trunc i32 %1 to i1
  %xtraiter522 = and i64 %wide.trip.count.i, 1
  %i.l = icmp eq i64 %i.j, 0
  %unroll_iter526 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod523.not = icmp eq i64 %xtraiter522, 0
  %lcmp.mod525 = trunc i32 %1 to i1
  br label %.split383.us.us.us.us

.split383.us.us.us.us:                            ; preds = %.split383.us.us.us.us.preheader, %.split407.us.split.us.split.us.us.us.us
  %storemerge452.us.us.us = phi i32 [ %i.bo, %.split407.us.split.us.split.us.us.us.us ], [ 1, %.split383.us.us.us.us.preheader ] ; 3 uses
  store i32 %storemerge452.us.us.us, ptr %i.c, align 4, !tbaa !8
  br label %.split320.us.us.us.us.us.us.us

.split320.us.us.us.us.us.us.us:                   ; preds = %.split342.us.split.us.split.us.us.us.us.us.us.us, %.split383.us.us.us.us
  %storemerge71381.us.us.us.us.us.us = phi i32 [ %storemerge452.us.us.us, %.split383.us.us.us.us ], [ %i.bn, %.split342.us.split.us.split.us.us.us.us.us.us.us ] ; 3 uses
  store i32 %storemerge71381.us.us.us.us.us.us, ptr %i.d, align 4, !tbaa !8
  br label %.split264.us.us.us.us.us.us.us.us.us.us

.split264.us.us.us.us.us.us.us.us.us.us:          ; preds = %.split284.us.split.us.split.us.us.us.us.us.us.us.us.us.us, %.split320.us.us.us.us.us.us.us
  %storemerge73318.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge71381.us.us.us.us.us.us, %.split320.us.us.us.us.us.us.us ], [ %i.bm, %.split284.us.split.us.split.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge73318.us.us.us.us.us.us.us.us.us, ptr %i.e, align 4, !tbaa !8
  br label %.split215.us.us.us.us.us.us.us.us.us.us.us.us.us

.split215.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split233.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split264.us.us.us.us.us.us.us.us.us.us
  %storemerge75262.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge73318.us.us.us.us.us.us.us.us.us, %.split264.us.us.us.us.us.us.us.us.us.us ], [ %i.bl, %.split233.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge75262.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.f, align 4, !tbaa !8
  br label %.split174.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.split174.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split190.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split215.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge77213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge75262.us.us.us.us.us.us.us.us.us.us.us.us, %.split215.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bk, %.split190.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge77213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.g, align 4, !tbaa !8
  br label %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split155.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split174.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge79172.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge77213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split174.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bj, %.split155.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge79172.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.h, align 4, !tbaa !8
  br label %.preheader99.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader99.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split131.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge81139.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge79172.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bi, %.split131.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge81139.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %2, align 4, !tbaa !8
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader99.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge83129.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge81139.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader99.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bh, %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0105.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.c ] ; 2 uses
  %.059104.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 10000, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.160.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.c ] ; 2 uses
  %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.u, %bb.c ] ; 9 uses
  %i.m = lshr i32 %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = and i32 %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 63
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.p, %i.s
  %.not85.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %i.t, 0
  br i1 %.not85.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader: ; preds = %bb.b
  br i1 %i.k, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader: ; preds = %bb.b
  br i1 %i.l, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

bb.c:                                             ; preds = %bb.j
  %i.u = add nuw nsw i32 %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %smax
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !75

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, %bb.f
  %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 4 uses
  %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ]
  %i.v = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i32 %i.x, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8
  %i.aa = add nsw i32 %i.z, %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1: ; preds = %bb.d, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.aa, %bb.d ], [ %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = and i32 %i.ac, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = add nsw i32 %i.af, %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi i32 [ %i.ag, %bb.e ], [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 ] ; 3 uses
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !45

.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, %bb.i
  %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.i ], [ 0, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 4 uses
  %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.i ], [ 0, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 2 uses
  %niter527 = phi i64 [ %niter527.next.1, %bb.i ], [ 0, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ]
  %i.ah = trunc nuw nsw i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = and i32 %i.ai, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i32 %i.aj, 0
  br i1 %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = add nsw i32 %i.al, %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1

.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1: ; preds = %bb.g, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.am, %bb.g ], [ %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = or disjoint i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = and i32 %i.ao, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i32 %i.ap, 0
  br i1 %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = add nsw i32 %i.ar, %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi i32 [ %i.as, %bb.h ], [ %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 ] ; 3 uses
  %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %niter527.next.1 = add i64 %niter527, 2         ; 2 uses
  %niter527.ncmp.1 = icmp eq i64 %niter527.next.1, %unroll_iter526
  br i1 %niter527.ncmp.1, label %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !45

bb.j:                                             ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.160.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.bg, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.059104.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.0105.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.az, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.not86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp slt i32 %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.160.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br i1 %.not86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.c, label %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.i
  br i1 %lcmp.mod523.not, label %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader

.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader: ; preds = %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader
  %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod525)
  %i.at = trunc nuw nsw i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init to i32
  %i.au = shl nuw i32 1, %i.at
  %i.av = and i32 %i.au, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i32 %i.av, 0
  br i1 %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8
  %i.ay = add nsw i32 %i.ax, %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  br label %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, %bb.k, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi i32 [ %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %i.ay, %bb.k ], [ %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader ]
  %i.az = tail call noundef i32 @llvm.smax.i32(i32 %.0105.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i32 %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa)
  br label %bb.j

Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.f
  br i1 %lcmp.mod.not, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader: ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader
  %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod521)
  %i.ba = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init to i32
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = and i32 %i.bb, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i32 %i.bc, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8
  %i.bf = add nsw i32 %i.be, %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  br label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, %bb.l, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi i32 [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %i.bf, %bb.l ], [ %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader ]
  %i.bg = tail call noundef i32 @llvm.smin.i32(i32 %.059104.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i32 %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa)
  br label %bb.j

.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %bb.j
  %i.bh = add nuw nsw i32 %storemerge83129.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bh, ptr %2, align 4, !tbaa !8
  %.not84.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge83129.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not84.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split131.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !76

.split131.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bi = add nuw nsw i32 %storemerge81139.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bi, ptr %i.h, align 4, !tbaa !8
  %.not82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge81139.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split155.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader99.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !77

.split155.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split131.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bj = add nuw nsw i32 %storemerge79172.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bj, ptr %i.g, align 4, !tbaa !8
  %.not80.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge79172.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not80.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split190.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !78

.split190.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split155.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bk = add nuw nsw i32 %storemerge77213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bk, ptr %i.f, align 4, !tbaa !8
  %.not78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge77213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split233.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split174.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !79

.split233.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split190.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bl = add nuw nsw i32 %storemerge75262.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bl, ptr %i.e, align 4, !tbaa !8
  %.not76.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge75262.us.us.us.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not76.us.us.us.us.us.us.us.us.us.us.us.us, label %.split284.us.split.us.split.us.us.us.us.us.us.us.us.us.us, label %.split215.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !80

.split284.us.split.us.split.us.us.us.us.us.us.us.us.us.us: ; preds = %.split233.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bm = add nuw nsw i32 %storemerge73318.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bm, ptr %i.d, align 4, !tbaa !8
  %.not74.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge73318.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not74.us.us.us.us.us.us.us.us.us, label %.split342.us.split.us.split.us.us.us.us.us.us.us, label %.split264.us.us.us.us.us.us.us.us.us.us, !llvm.loop !81

.split342.us.split.us.split.us.us.us.us.us.us.us: ; preds = %.split284.us.split.us.split.us.us.us.us.us.us.us.us.us.us
  %i.bn = add nuw i32 %storemerge71381.us.us.us.us.us.us, 1 ; 3 uses
  store i32 %i.bn, ptr %i.c, align 4, !tbaa !8
  %exitcond506 = icmp eq i32 %i.bn, %i.i
  br i1 %exitcond506, label %.split407.us.split.us.split.us.us.us.us, label %.split320.us.us.us.us.us.us.us, !llvm.loop !82

.split407.us.split.us.split.us.us.us.us:          ; preds = %.split342.us.split.us.split.us.us.us.us.us.us.us
  %i.bo = add nuw i32 %storemerge452.us.us.us, 1  ; 3 uses
  store i32 %i.bo, ptr %i.b, align 4, !tbaa !8
  %exitcond506.a = icmp eq i32 %i.bo, %i.i
  br i1 %exitcond506.a, label %.thread, label %.split383.us.us.us.us, !llvm.loop !83

bb.m:                                             ; preds = %.preheader.us143.us.us.us.us.us.us
  %i.bp = add nuw nsw i32 %.061102.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond508.not = icmp eq i32 %i.bp, %i.a
  br i1 %exitcond508.not, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us.split.us, label %.preheader.us143.us.us.us.us.us.us, !llvm.loop !75

.preheader.us143.us.us.us.us.us.us:               ; preds = %.lr.ph, %bb.m
  %.061102.us.us.us.us.us.us.us = phi i32 [ %i.bp, %bb.m ], [ %1, %.lr.ph ] ; 3 uses
  %i.bq = lshr i32 %.061102.us.us.us.us.us.us.us, 6
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = and i32 %.061102.us.us.us.us.us.us.us, 63
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bt, %i.bw
  %.not85.us.us.us.us.us.us.us = icmp eq i64 %i.bx, 0
  br i1 %.not85.us.us.us.us.us.us.us, label %bb.m, label %..thread.loopexit100_crit_edge.split.us.split.split

..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us.split.us: ; preds = %bb.m
  store i32 1, ptr %i.c, align 4, !tbaa !8
  store i32 1, ptr %i.d, align 4, !tbaa !8
  store i32 1, ptr %i.e, align 4, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %2, align 4, !tbaa !8
  br label %.thread

..thread.loopexit100_crit_edge.split.us.split.split: ; preds = %.preheader.us143.us.us.us.us.us.us
  store <4 x i32> splat (i32 2), ptr %2, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.e, align 4, !tbaa !8
  br label %.thread

.lr.ph.split:                                     ; preds = %.lr.ph
  store i32 1, ptr %i.c, align 4, !tbaa !8
  store i32 1, ptr %i.d, align 4, !tbaa !8
  store i32 1, ptr %i.e, align 4, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %2, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.split407.us.split.us.split.us.us.us.us, %bb.c, %bb.a, %..thread.loopexit100_crit_edge.split.us.split.split, %.lr.ph.split, %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us.split.us
  %.062 = phi i32 [ %.160.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.c ], [ 10000, %.lr.ph.split ], [ 0, %bb.a ], [ 0, %..thread.loopexit100_crit_edge.split.us.split.split ], [ 10000, %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us.split.us ], [ 0, %.split407.us.split.us.split.us.us.us.us ]
  ret i32 %.062
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2147483647, -2147483648) i32 @Extra_ThreshSelectWeights(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !11
  %i.c = and i64 %i.b, 15                         ; 2 uses
  %.not = icmp ne i64 %i.c, 6
  %i.d = icmp ne i64 %i.c, 9
  %narrow = and i1 %.not, %i.d
  %i.e = zext i1 %narrow to i32
  br label %Extra_ThreshSelectWeights3.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %1, label %Extra_ThreshSelectWeights3.exit [
    i32 3, label %bb.d
    i32 4, label %bb.an
    i32 5, label %bb.bc
    i32 6, label %bb.bi
    i32 7, label %bb.bj
    i32 8, label %bb.bk
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.pre.pre.pre = load i64, ptr %0, align 8, !tbaa !11 ; 8 uses
  %i.h = and i64 %.pre.pre.pre, 1
  %.not44.us.us.i = icmp eq i64 %i.h, 0           ; 3 uses
  %i.i = and i64 %.pre.pre.pre, 2
  %.not44.us.us.i.1 = icmp eq i64 %i.i, 0         ; 6 uses
  %i.j = and i64 %.pre.pre.pre, 4
  %.not44.us.us.i.2 = icmp eq i64 %i.j, 0         ; 3 uses
  %i.k = and i64 %.pre.pre.pre, 8
  %.not44.us.us.i.3 = icmp eq i64 %i.k, 0         ; 3 uses
  %i.l = and i64 %.pre.pre.pre, 16
  %.not44.us.us.i.4 = icmp eq i64 %i.l, 0         ; 3 uses
  %i.m = and i64 %.pre.pre.pre, 32
  %.not44.us.us.i.5 = icmp eq i64 %i.m, 0         ; 3 uses
  %i.n = and i64 %.pre.pre.pre, 64
  %.not44.us.us.i.6 = icmp eq i64 %i.n, 0         ; 3 uses
  %i.o = and i64 %.pre.pre.pre, 128
  %.not44.us.us.i.7 = icmp eq i64 %i.o, 0         ; 3 uses
  br label %.preheader58.us.us.i

.preheader58.us.us.i:                             ; preds = %.split68.us.us.i, %bb.d
  %i.p = phi i32 [ %i.bm, %.split68.us.us.i ], [ 1, %bb.d ] ; 33 uses
  %invariant.op = shl nuw nsw i32 %i.p, 1
  %3 = shl nuw nsw i32 %i.p, 1
  %4 = shl nuw nsw i32 %i.p, 1
  %reass.add = shl nuw i32 %i.p, 1
  br label %bb.am

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1: ; preds = %bb.am
  %i.q = tail call i32 @llvm.smin.i32(i32 %21, i32 10000)
  %.134.us.us.i.1 = select i1 %.not44.us.us.i.1, i32 10000, i32 %i.q ; 3 uses
  %.1.us.us.i.1 = select i1 %.not44.us.us.i.1, i32 %21, i32 0 ; 3 uses
  %.not45.us.us.i.1 = icmp samesign ult i32 %.1.us.us.i.1, %.134.us.us.i.1
  br i1 %.not45.us.us.i.1, label %5, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

5:                                                ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1
  br i1 %.not44.us.us.i.2, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2:  ; preds = %5
  %6 = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.1, i32 %i.p)
  br label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.a

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2: ; preds = %5
  %7 = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.1, i32 %i.p)
  br label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.a

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.a: ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2
  %.134.us.us.i.2 = phi i32 [ %6, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2 ], [ %.134.us.us.i.1, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2 ] ; 3 uses
  %.1.us.us.i.2 = phi i32 [ %.1.us.us.i.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2 ], [ %7, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2 ] ; 3 uses
  %.not45.us.us.i.2 = icmp slt i32 %.1.us.us.i.2, %.134.us.us.i.2
  br i1 %.not45.us.us.i.2, label %bb.e, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

bb.e:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.a
  br i1 %.not44.us.us.i.3, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3:  ; preds = %bb.e
  %8 = add nuw nsw i32 %i.p, %21
  %i.r = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.2, i32 %8)
  br label %bb.f

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3: ; preds = %bb.e
  %9 = add nuw nsw i32 %i.p, %21
  %i.s = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.2, i32 %9)
  br label %bb.f

bb.f:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3
  %.134.us.us.i.3 = phi i32 [ %i.r, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3 ], [ %.134.us.us.i.2, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3 ] ; 3 uses
  %.1.us.us.i.3 = phi i32 [ %.1.us.us.i.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3 ], [ %i.s, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3 ] ; 3 uses
  %.not45.us.us.i.3 = icmp slt i32 %.1.us.us.i.3, %.134.us.us.i.3
  br i1 %.not45.us.us.i.3, label %bb.g, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not44.us.us.i.4, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4:  ; preds = %bb.g
  %i.t = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.3, i32 %i.p)
  br label %bb.h

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4: ; preds = %bb.g
  %i.u = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.3, i32 %i.p)
  br label %bb.h

bb.h:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4
  %.134.us.us.i.4 = phi i32 [ %i.t, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4 ], [ %.134.us.us.i.3, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4 ] ; 3 uses
  %.1.us.us.i.4 = phi i32 [ %.1.us.us.i.3, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4 ], [ %i.u, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4 ] ; 3 uses
  %.not45.us.us.i.4 = icmp slt i32 %.1.us.us.i.4, %.134.us.us.i.4
  br i1 %.not45.us.us.i.4, label %bb.i, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

bb.i:                                             ; preds = %bb.h
  %i.v = add nuw nsw i32 %i.p, %21                ; 2 uses
  br i1 %.not44.us.us.i.5, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5:  ; preds = %bb.i
  %i.w = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.4, i32 %i.v)
  br label %bb.j

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5: ; preds = %bb.i
  %i.x = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.4, i32 %i.v)
  br label %bb.j

bb.j:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5
  %.134.us.us.i.5 = phi i32 [ %i.w, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5 ], [ %.134.us.us.i.4, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5 ] ; 3 uses
  %.1.us.us.i.5 = phi i32 [ %.1.us.us.i.4, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5 ], [ %i.x, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5 ] ; 3 uses
  %.not45.us.us.i.5 = icmp slt i32 %.1.us.us.i.5, %.134.us.us.i.5
  br i1 %.not45.us.us.i.5, label %bb.k, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

bb.k:                                             ; preds = %bb.j
  br i1 %.not44.us.us.i.6, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6:  ; preds = %bb.k
  %i.y = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.5, i32 %3)
  br label %bb.l

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6: ; preds = %bb.k
  %i.z = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.5, i32 %4)
  br label %bb.l

bb.l:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6
  %.134.us.us.i.6 = phi i32 [ %i.y, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6 ], [ %.134.us.us.i.5, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6 ] ; 3 uses
  %.1.us.us.i.6 = phi i32 [ %.1.us.us.i.5, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6 ], [ %i.z, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6 ] ; 3 uses
  %.not45.us.us.i.6 = icmp slt i32 %.1.us.us.i.6, %.134.us.us.i.6
  br i1 %.not45.us.us.i.6, label %bb.m, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

bb.m:                                             ; preds = %bb.l
  br i1 %.not44.us.us.i.7, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7:  ; preds = %bb.m
  %i.aa = add i32 %21, %reass.add
  %i.ab = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.6, i32 %i.aa)
  br label %bb.n

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7: ; preds = %bb.m
  %.reass = add nuw nsw i32 %21, %invariant.op
  %i.ac = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.6, i32 %.reass)
  br label %bb.n

bb.n:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7
  %.134.us.us.i.7 = phi i32 [ %i.ab, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7 ], [ %.134.us.us.i.6, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7 ] ; 2 uses
  %.1.us.us.i.7 = phi i32 [ %.1.us.us.i.6, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7 ], [ %i.ac, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7 ]
  %.not45.us.us.i.7 = icmp slt i32 %.1.us.us.i.7, %.134.us.us.i.7
  br i1 %.not45.us.us.i.7, label %Extra_ThreshSelectWeights3.exit.loopexit, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

Extra_ThreshWeightedSum.exit.loopexit.us.us.i:    ; preds = %bb.am, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.a, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1
  %10 = add nuw nsw i32 %21, 1                    ; 3 uses
  %exitcond67.not = icmp eq i32 %10, 4
  br i1 %exitcond67.not, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.a, label %bb.am, !llvm.loop !46

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.a:  ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.i
  %i.ad = add nuw nsw i32 %i.p, 1                 ; 12 uses
  %exitcond75.not.i = icmp eq i32 %i.p, 3
  br i1 %exitcond75.not.i, label %.split68.us.us.i, label %.preheader58.us.us.i.1

.preheader58.us.us.i.1:                           ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.a
  %invariant.op.1 = add nuw nsw i32 %i.ad, %i.p
  %11 = add nuw nsw i32 %i.p, %i.ad
  %12 = add nuw nsw i32 %i.p, %i.ad
  %invariant.op302 = add nuw nsw i32 %i.ad, %i.p
  br label %.preheader.us.us.i.1

.preheader.us.us.i.1:                             ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1, %.preheader58.us.us.i.1
  %13 = phi i32 [ %i.ad, %.preheader58.us.us.i.1 ], [ %15, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1 ] ; 9 uses
  br i1 %.not44.us.us.i, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1.1: ; preds = %.preheader.us.us.i.1
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 10000)
  %.134.us.us.i.1.1 = select i1 %.not44.us.us.i.1, i32 10000, i32 %14 ; 3 uses
  %.1.us.us.i.1.1 = select i1 %.not44.us.us.i.1, i32 %13, i32 0 ; 3 uses
  %.not45.us.us.i.1.1 = icmp samesign ult i32 %.1.us.us.i.1.1, %.134.us.us.i.1.1
  br i1 %.not45.us.us.i.1.1, label %bb.o, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1

bb.o:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1.1
  br i1 %.not44.us.us.i.2, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2.1

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2.1: ; preds = %bb.o
  %i.ae = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.1.1, i32 %i.ad)
  br label %bb.p

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.1: ; preds = %bb.o
  %i.af = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.1.1, i32 %i.ad)
  br label %bb.p

bb.p:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2.1
  %.134.us.us.i.2.1 = phi i32 [ %i.ae, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2.1 ], [ %.134.us.us.i.1.1, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.1 ] ; 3 uses
  %.1.us.us.i.2.1 = phi i32 [ %.1.us.us.i.1.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2.1 ], [ %i.af, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.1 ] ; 3 uses
  %.not45.us.us.i.2.1 = icmp slt i32 %.1.us.us.i.2.1, %.134.us.us.i.2.1
  br i1 %.not45.us.us.i.2.1, label %bb.q, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1

bb.q:                                             ; preds = %bb.p
  br i1 %.not44.us.us.i.3, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3.1

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3.1: ; preds = %bb.q
  %i.ag = add nuw nsw i32 %i.ad, %13
  %i.ah = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.2.1, i32 %i.ag)
  br label %bb.r

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3.1: ; preds = %bb.q
  %i.ai = add nuw nsw i32 %i.ad, %13
  %i.aj = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.2.1, i32 %i.ai)
  br label %bb.r

bb.r:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3.1
  %.134.us.us.i.3.1 = phi i32 [ %i.ah, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3.1 ], [ %.134.us.us.i.2.1, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3.1 ] ; 3 uses
  %.1.us.us.i.3.1 = phi i32 [ %.1.us.us.i.2.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3.1 ], [ %i.aj, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3.1 ] ; 3 uses
  %.not45.us.us.i.3.1 = icmp slt i32 %.1.us.us.i.3.1, %.134.us.us.i.3.1
  br i1 %.not45.us.us.i.3.1, label %bb.s, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1

bb.s:                                             ; preds = %bb.r
  br i1 %.not44.us.us.i.4, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4.1

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4.1: ; preds = %bb.s
  %i.ak = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.3.1, i32 %i.p)
  br label %bb.t

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4.1: ; preds = %bb.s
  %i.al = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.3.1, i32 %i.p)
  br label %bb.t

bb.t:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4.1
  %.134.us.us.i.4.1 = phi i32 [ %i.ak, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4.1 ], [ %.134.us.us.i.3.1, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4.1 ] ; 3 uses
  %.1.us.us.i.4.1 = phi i32 [ %.1.us.us.i.3.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4.1 ], [ %i.al, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4.1 ] ; 3 uses
  %.not45.us.us.i.4.1 = icmp slt i32 %.1.us.us.i.4.1, %.134.us.us.i.4.1
  br i1 %.not45.us.us.i.4.1, label %bb.u, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1

bb.u:                                             ; preds = %bb.t
  %i.am = add nuw nsw i32 %i.p, %13               ; 2 uses
  br i1 %.not44.us.us.i.5, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5.1

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5.1: ; preds = %bb.u
  %i.an = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.4.1, i32 %i.am)
  br label %bb.v

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5.1: ; preds = %bb.u
  %i.ao = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.4.1, i32 %i.am)
  br label %bb.v

bb.v:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5.1
  %.134.us.us.i.5.1 = phi i32 [ %i.an, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5.1 ], [ %.134.us.us.i.4.1, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5.1 ] ; 3 uses
  %.1.us.us.i.5.1 = phi i32 [ %.1.us.us.i.4.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5.1 ], [ %i.ao, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5.1 ] ; 3 uses
  %.not45.us.us.i.5.1 = icmp slt i32 %.1.us.us.i.5.1, %.134.us.us.i.5.1
  br i1 %.not45.us.us.i.5.1, label %bb.w, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1

bb.w:                                             ; preds = %bb.v
  br i1 %.not44.us.us.i.6, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6.1

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6.1: ; preds = %bb.w
  %i.ap = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.5.1, i32 %11)
  br label %bb.x

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6.1: ; preds = %bb.w
  %i.aq = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.5.1, i32 %12)
  br label %bb.x

bb.x:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6.1
  %.134.us.us.i.6.1 = phi i32 [ %i.ap, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6.1 ], [ %.134.us.us.i.5.1, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6.1 ] ; 3 uses
  %.1.us.us.i.6.1 = phi i32 [ %.1.us.us.i.5.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6.1 ], [ %i.aq, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6.1 ] ; 3 uses
  %.not45.us.us.i.6.1 = icmp slt i32 %.1.us.us.i.6.1, %.134.us.us.i.6.1
  br i1 %.not45.us.us.i.6.1, label %bb.y, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1

bb.y:                                             ; preds = %bb.x
  br i1 %.not44.us.us.i.7, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7.1

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7.1: ; preds = %bb.y
  %i.ar = add nuw nsw i32 %13, %invariant.op302
  %i.as = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.6.1, i32 %i.ar)
  br label %bb.z

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7.1: ; preds = %bb.y
  %.reass.1 = add nuw nsw i32 %13, %invariant.op.1
  %i.at = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.6.1, i32 %.reass.1)
  br label %bb.z

bb.z:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7.1
  %.134.us.us.i.7.1 = phi i32 [ %i.as, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7.1 ], [ %.134.us.us.i.6.1, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7.1 ] ; 2 uses
  %.1.us.us.i.7.1 = phi i32 [ %.1.us.us.i.6.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7.1 ], [ %i.at, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7.1 ]
  %.not45.us.us.i.7.1 = icmp slt i32 %.1.us.us.i.7.1, %.134.us.us.i.7.1
  br i1 %.not45.us.us.i.7.1, label %Extra_ThreshSelectWeights3.exit.loopexit, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1:  ; preds = %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1.1, %.preheader.us.us.i.1
  %15 = add nuw nsw i32 %13, 1                    ; 3 uses
  %exitcond67.not.1 = icmp eq i32 %15, 4
  br i1 %exitcond67.not.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1.a, label %.preheader.us.us.i.1, !llvm.loop !46

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1.a: ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1
  %i.au = add nuw nsw i32 %i.p, 2                 ; 11 uses
  %.not43.us.us.not.i.1.not = icmp eq i32 %i.ad, 3
  br i1 %.not43.us.us.not.i.1.not, label %.split68.us.us.i, label %.preheader58.us.us.i.2

.preheader58.us.us.i.2:                           ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1.a
  %invariant.op.2 = add nuw nsw i32 %i.au, %i.p
  %16 = add nuw nsw i32 %i.p, %i.au
  %17 = add nuw nsw i32 %i.p, %i.au
  %invariant.op300 = add nuw nsw i32 %i.au, %i.p
  br label %.preheader.us.us.i.2

.preheader.us.us.i.2:                             ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217, %.preheader58.us.us.i.2
  %18 = phi i32 [ %i.au, %.preheader58.us.us.i.2 ], [ %20, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217 ] ; 9 uses
  br i1 %.not44.us.us.i, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1.2, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1.2: ; preds = %.preheader.us.us.i.2
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 10000)
  %.134.us.us.i.1.2 = select i1 %.not44.us.us.i.1, i32 10000, i32 %19 ; 3 uses
  %.1.us.us.i.1.2 = select i1 %.not44.us.us.i.1, i32 %18, i32 0 ; 3 uses
  %.not45.us.us.i.1.2 = icmp samesign ult i32 %.1.us.us.i.1.2, %.134.us.us.i.1.2
  br i1 %.not45.us.us.i.1.2, label %bb.aa, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217

bb.aa:                                            ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1.2
  br i1 %.not44.us.us.i.2, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.2, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2.2

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2.2: ; preds = %bb.aa
  %i.av = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.1.2, i32 %i.au)
  br label %bb.ab

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.2: ; preds = %bb.aa
  %i.aw = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.1.2, i32 %i.au)
  br label %bb.ab

bb.ab:                                            ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2.2
  %.134.us.us.i.2.2 = phi i32 [ %i.av, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2.2 ], [ %.134.us.us.i.1.2, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.2 ] ; 3 uses
  %.1.us.us.i.2.2 = phi i32 [ %.1.us.us.i.1.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2.2 ], [ %i.aw, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2.2 ] ; 3 uses
  %.not45.us.us.i.2.2 = icmp slt i32 %.1.us.us.i.2.2, %.134.us.us.i.2.2
  br i1 %.not45.us.us.i.2.2, label %bb.ac, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not44.us.us.i.3, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3.2, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3.2

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3.2: ; preds = %bb.ac
  %i.ax = add nuw nsw i32 %i.au, %18
  %i.ay = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.2.2, i32 %i.ax)
  br label %bb.ad

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3.2: ; preds = %bb.ac
  %i.az = add nuw nsw i32 %i.au, %18
  %i.ba = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.2.2, i32 %i.az)
  br label %bb.ad

bb.ad:                                            ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3.2
  %.134.us.us.i.3.2 = phi i32 [ %i.ay, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3.2 ], [ %.134.us.us.i.2.2, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3.2 ] ; 3 uses
  %.1.us.us.i.3.2 = phi i32 [ %.1.us.us.i.2.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3.2 ], [ %i.ba, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3.2 ] ; 3 uses
  %.not45.us.us.i.3.2 = icmp slt i32 %.1.us.us.i.3.2, %.134.us.us.i.3.2
  br i1 %.not45.us.us.i.3.2, label %bb.ae, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not44.us.us.i.4, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4.2, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4.2

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4.2: ; preds = %bb.ae
  %i.bb = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.3.2, i32 %i.p)
  br label %bb.af

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4.2: ; preds = %bb.ae
  %i.bc = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.3.2, i32 %i.p)
  br label %bb.af

bb.af:                                            ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4.2
  %.134.us.us.i.4.2 = phi i32 [ %i.bb, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4.2 ], [ %.134.us.us.i.3.2, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4.2 ] ; 3 uses
  %.1.us.us.i.4.2 = phi i32 [ %.1.us.us.i.3.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4.2 ], [ %i.bc, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4.2 ] ; 3 uses
  %.not45.us.us.i.4.2 = icmp slt i32 %.1.us.us.i.4.2, %.134.us.us.i.4.2
  br i1 %.not45.us.us.i.4.2, label %bb.ag, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217

bb.ag:                                            ; preds = %bb.af
  %i.bd = add nuw nsw i32 %i.p, %18               ; 2 uses
  br i1 %.not44.us.us.i.5, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5.2, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5.2

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5.2: ; preds = %bb.ag
  %i.be = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.4.2, i32 %i.bd)
  br label %bb.ah

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5.2: ; preds = %bb.ag
  %i.bf = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.4.2, i32 %i.bd)
  br label %bb.ah

bb.ah:                                            ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5.2
  %.134.us.us.i.5.2 = phi i32 [ %i.be, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5.2 ], [ %.134.us.us.i.4.2, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5.2 ] ; 3 uses
  %.1.us.us.i.5.2 = phi i32 [ %.1.us.us.i.4.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5.2 ], [ %i.bf, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5.2 ] ; 3 uses
  %.not45.us.us.i.5.2 = icmp slt i32 %.1.us.us.i.5.2, %.134.us.us.i.5.2
  br i1 %.not45.us.us.i.5.2, label %bb.ai, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not44.us.us.i.6, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6.2, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6.2

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6.2: ; preds = %bb.ai
  %i.bg = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.5.2, i32 %16)
  br label %bb.aj

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6.2: ; preds = %bb.ai
  %i.bh = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.5.2, i32 %17)
  br label %bb.aj

bb.aj:                                            ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6.2
  %.134.us.us.i.6.2 = phi i32 [ %i.bg, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6.2 ], [ %.134.us.us.i.5.2, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6.2 ] ; 3 uses
  %.1.us.us.i.6.2 = phi i32 [ %.1.us.us.i.5.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6.2 ], [ %i.bh, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6.2 ] ; 3 uses
  %.not45.us.us.i.6.2 = icmp slt i32 %.1.us.us.i.6.2, %.134.us.us.i.6.2
  br i1 %.not45.us.us.i.6.2, label %bb.ak, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not44.us.us.i.7, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7.2, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7.2

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7.2: ; preds = %bb.ak
  %i.bi = add nuw nsw i32 %18, %invariant.op300
  %i.bj = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.6.2, i32 %i.bi)
  br label %bb.al

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7.2: ; preds = %bb.ak
  %.reass.2 = add nuw nsw i32 %18, %invariant.op.2
  %i.bk = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.6.2, i32 %.reass.2)
  br label %bb.al

bb.al:                                            ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7.2
  %.134.us.us.i.7.2 = phi i32 [ %i.bj, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7.2 ], [ %.134.us.us.i.6.2, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7.2 ] ; 2 uses
  %.1.us.us.i.7.2 = phi i32 [ %.1.us.us.i.6.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7.2 ], [ %i.bk, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7.2 ]
  %.not45.us.us.i.7.2 = icmp slt i32 %.1.us.us.i.7.2, %.134.us.us.i.7.2
  br i1 %.not45.us.us.i.7.2, label %Extra_ThreshSelectWeights3.exit.loopexit, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217: ; preds = %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1.2, %.preheader.us.us.i.2
  %20 = add nuw nsw i32 %18, 1                    ; 3 uses
  %exitcond67.not.2 = icmp eq i32 %20, 4
  br i1 %exitcond67.not.2, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2212, label %.preheader.us.us.i.2, !llvm.loop !46

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2212: ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2217
  %i.bl = add nuw nsw i32 %i.p, 3
  br label %.split68.us.us.i

bb.am:                                            ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.i, %.preheader58.us.us.i
  %21 = phi i32 [ %i.p, %.preheader58.us.us.i ], [ %10, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i ] ; 9 uses
  br i1 %.not44.us.us.i, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

.split68.us.us.i:                                 ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2212, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1.a, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.a
  %.lcssa165 = phi i32 [ %i.ad, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.a ], [ %i.au, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1.a ], [ %i.bl, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2212 ]
  %.lcssa162.lcssa = phi i32 [ %10, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.a ], [ %15, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.1.a ], [ %20, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.2212 ]
  store i32 %.lcssa162.lcssa, ptr %2, align 4, !tbaa !8
  %i.bm = add nuw nsw i32 %i.p, 1                 ; 2 uses
  store i32 %i.bm, ptr %i.f, align 4, !tbaa !8
  %exitcond76.not.i = icmp eq i32 %i.p, 3
  br i1 %exitcond76.not.i, label %Extra_ThreshSelectWeights3.exit.loopexit69, label %.preheader58.us.us.i, !llvm.loop !48

bb.an:                                            ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 1, ptr %i.bn, align 4, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  br label %.split80.us.us.i

.split80.us.us.i:                                 ; preds = %.split82.us.us.i, %bb.an
  %i.bq = phi i32 [ %i.gq, %.split82.us.us.i ], [ 1, %bb.an ] ; 11 uses
  br label %.split.us.us.us.i

.split.us.us.us.i:                                ; preds = %.split76.us.us.us.i, %.split80.us.us.i
  %i.br = phi i32 [ %i.bq, %.split80.us.us.i ], [ %i.gp, %.split76.us.us.us.i ] ; 13 uses
  br label %.preheader66.us.us.us.i

.preheader66.us.us.us.i:                          ; preds = %bb.bb, %.split.us.us.us.i
  %i.bs = phi i32 [ %i.br, %.split.us.us.us.i ], [ %.lcssa164.lcssa, %bb.bb ]
  %i.bt = phi i32 [ %i.br, %.split.us.us.us.i ], [ %i.go, %bb.bb ] ; 22 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aq
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond.not.i29 = icmp eq i64 %indvars.iv.next49, 16
  br i1 %exitcond.not.i29, label %Extra_ThreshSelectWeights3.exit.loopexit70, label %bb.ap, !llvm.loop !49

bb.ap:                                            ; preds = %.preheader66.us.us.us.i, %bb.ao
  %i.bu = phi i32 [ %i.bs, %.preheader66.us.us.us.i ], [ %i.cv, %bb.ao ] ; 3 uses
  %i.bv = phi i32 [ %i.bt, %.preheader66.us.us.us.i ], [ %i.cw, %bb.ao ] ; 3 uses
  %i.bw = phi i32 [ %i.bt, %.preheader66.us.us.us.i ], [ %i.cx, %bb.ao ] ; 3 uses
  %indvars.iv48 = phi i64 [ 0, %.preheader66.us.us.us.i ], [ %indvars.iv.next49, %bb.ao ] ; 4 uses
  %.071.us.us.us.i = phi i32 [ 0, %.preheader66.us.us.us.i ], [ %.1.us.us.us.i, %bb.ao ] ; 2 uses
  %.03870.us.us.us.i = phi i32 [ 10000, %.preheader66.us.us.us.i ], [ %.139.us.us.us.i, %bb.ao ] ; 2 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv48 to i32  ; 7 uses
  %i.by = lshr i64 %indvars.iv48, 6
  %i.bz = and i64 %i.by, 67108863
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !11
  %i.cc = shl nuw i64 1, %indvars.iv48
  %i.cd = and i64 %i.cc, %i.cb
  %.not52.us.us.us.i = icmp eq i64 %i.cd, 0
  %i.ce = and i32 %i.bx, 1
  %.not.i60.us.us.us.i = icmp eq i32 %i.ce, 0     ; 3 uses
  br i1 %.not52.us.us.us.i, label %.lr.ph.i57.us.us.us.i.preheader, label %.lr.ph.i.us.us.us.i.preheader

.lr.ph.i.us.us.us.i.preheader:                    ; preds = %bb.ap
  %spec.select = select i1 %.not.i60.us.us.us.i, i32 0, i32 %i.bw
  %i.cf = and i32 %i.bx, 2
  %.not.i.us.us.us.i.1 = icmp eq i32 %i.cf, 0
  %i.cg = select i1 %.not.i.us.us.us.i.1, i32 0, i32 %i.bv
  %.1.i.us.us.us.i.1 = add nsw i32 %spec.select, %i.cg
  %i.ch = and i32 %i.bx, 4
  %.not.i.us.us.us.i.2 = icmp eq i32 %i.ch, 0
  %i.ci = select i1 %.not.i.us.us.us.i.2, i32 0, i32 %i.bu
  %.1.i.us.us.us.i.2 = add nsw i32 %.1.i.us.us.us.i.1, %i.ci
  %i.cj = and i32 %i.bx, 8
  %.not.i.us.us.us.i.3 = icmp eq i32 %i.cj, 0
  %i.ck = select i1 %.not.i.us.us.us.i.3, i32 0, i32 %i.bq
  %.1.i.us.us.us.i.3 = add nsw i32 %.1.i.us.us.us.i.2, %i.ck
  %i.cl = tail call noundef i32 @llvm.smin.i32(i32 %.03870.us.us.us.i, i32 %.1.i.us.us.us.i.3)
  br label %bb.aq

.lr.ph.i57.us.us.us.i.preheader:                  ; preds = %bb.ap
  %spec.select112 = select i1 %.not.i60.us.us.us.i, i32 %i.bw, i32 %i.bt
  %spec.select113 = select i1 %.not.i60.us.us.us.i, i32 0, i32 %i.bt
  %i.cm = and i32 %i.bx, 2
  %.not.i60.us.us.us.i.1 = icmp eq i32 %i.cm, 0   ; 2 uses
  %i.cn = select i1 %.not.i60.us.us.us.i.1, i32 %i.bv, i32 %i.bt
  %i.co = select i1 %.not.i60.us.us.us.i.1, i32 0, i32 %i.bt
  %.1.i61.us.us.us.i.1 = add nuw nsw i32 %spec.select113, %i.co
  %i.cp = and i32 %i.bx, 4
  %.not.i60.us.us.us.i.2 = icmp eq i32 %i.cp, 0   ; 2 uses
  %i.cq = select i1 %.not.i60.us.us.us.i.2, i32 %i.bu, i32 %i.br
  %i.cr = select i1 %.not.i60.us.us.us.i.2, i32 0, i32 %i.br
  %.1.i61.us.us.us.i.2 = add nuw nsw i32 %.1.i61.us.us.us.i.1, %i.cr
  %i.cs = and i32 %i.bx, 8
  %.not.i60.us.us.us.i.3 = icmp eq i32 %i.cs, 0
  %i.ct = select i1 %.not.i60.us.us.us.i.3, i32 0, i32 %i.bq
  %.1.i61.us.us.us.i.3 = add nuw nsw i32 %.1.i61.us.us.us.i.2, %i.ct
  %i.cu = tail call noundef i32 @llvm.smax.i32(i32 %.071.us.us.us.i, i32 %.1.i61.us.us.us.i.3)
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.us.us.us.i.preheader, %.lr.ph.i57.us.us.us.i.preheader
  %i.cv = phi i32 [ %i.bu, %.lr.ph.i.us.us.us.i.preheader ], [ %i.cq, %.lr.ph.i57.us.us.us.i.preheader ] ; 3 uses
  %i.cw = phi i32 [ %i.bv, %.lr.ph.i.us.us.us.i.preheader ], [ %i.cn, %.lr.ph.i57.us.us.us.i.preheader ] ; 2 uses
  %i.cx = phi i32 [ %i.bw, %.lr.ph.i.us.us.us.i.preheader ], [ %spec.select112, %.lr.ph.i57.us.us.us.i.preheader ]
  %.139.us.us.us.i = phi i32 [ %i.cl, %.lr.ph.i.us.us.us.i.preheader ], [ %.03870.us.us.us.i, %.lr.ph.i57.us.us.us.i.preheader ] ; 3 uses
  %.1.us.us.us.i = phi i32 [ %.071.us.us.us.i, %.lr.ph.i.us.us.us.i.preheader ], [ %i.cu, %.lr.ph.i57.us.us.us.i.preheader ] ; 2 uses
  %.not53.us.us.us.i = icmp slt i32 %.1.us.us.us.i, %.139.us.us.us.i
  br i1 %.not53.us.us.us.i, label %bb.ao, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cy = add nuw nsw i32 %i.bt, 1                ; 5 uses
  %.not51.us.us.us.not.i = icmp samesign ult i32 %i.bt, 4
  br i1 %.not51.us.us.us.not.i, label %.preheader.us.us.us.i.1, label %bb.bb

.preheader.us.us.us.i.1:                          ; preds = %bb.ar, %bb.au
  %i.cz = phi i32 [ %i.ea, %bb.au ], [ %i.cv, %bb.ar ] ; 3 uses
  %i.da = phi i32 [ %i.eb, %bb.au ], [ %i.cw, %bb.ar ] ; 3 uses
  %i.db = phi i32 [ %i.ec, %bb.au ], [ %i.cy, %bb.ar ] ; 3 uses
  %indvars.iv48.1 = phi i64 [ %indvars.iv.next49.1, %bb.au ], [ 0, %bb.ar ] ; 4 uses
  %.071.us.us.us.i.1 = phi i32 [ %.1.us.us.us.i.1, %bb.au ], [ 0, %bb.ar ] ; 2 uses
  %.03870.us.us.us.i.1 = phi i32 [ %.139.us.us.us.i.1, %bb.au ], [ 10000, %bb.ar ] ; 2 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv48.1 to i32 ; 7 uses
  %i.dd = lshr i64 %indvars.iv48.1, 6
  %i.de = and i64 %i.dd, 67108863
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !11
  %i.dh = shl nuw i64 1, %indvars.iv48.1
  %i.di = and i64 %i.dh, %i.dg
  %.not52.us.us.us.i.1 = icmp eq i64 %i.di, 0
  %i.dj = and i32 %i.dc, 1
  %.not.i60.us.us.us.i.1194 = icmp eq i32 %i.dj, 0 ; 3 uses
  br i1 %.not52.us.us.us.i.1, label %.lr.ph.i57.us.us.us.i.preheader.1, label %.lr.ph.i.us.us.us.i.preheader.1

.lr.ph.i.us.us.us.i.preheader.1:                  ; preds = %.preheader.us.us.us.i.1
  %spec.select.1 = select i1 %.not.i60.us.us.us.i.1194, i32 0, i32 %i.db
  %i.dk = and i32 %i.dc, 2
  %.not.i.us.us.us.i.1.1 = icmp eq i32 %i.dk, 0
  %i.dl = select i1 %.not.i.us.us.us.i.1.1, i32 0, i32 %i.da
  %.1.i.us.us.us.i.1.1 = add nsw i32 %spec.select.1, %i.dl
  %i.dm = and i32 %i.dc, 4
  %.not.i.us.us.us.i.2.1 = icmp eq i32 %i.dm, 0
  %i.dn = select i1 %.not.i.us.us.us.i.2.1, i32 0, i32 %i.cz
  %.1.i.us.us.us.i.2.1 = add nsw i32 %.1.i.us.us.us.i.1.1, %i.dn
  %i.do = and i32 %i.dc, 8
  %.not.i.us.us.us.i.3.1 = icmp eq i32 %i.do, 0
  %i.dp = select i1 %.not.i.us.us.us.i.3.1, i32 0, i32 %i.bq
  %.1.i.us.us.us.i.3.1 = add nsw i32 %.1.i.us.us.us.i.2.1, %i.dp
  %i.dq = tail call noundef i32 @llvm.smin.i32(i32 %.03870.us.us.us.i.1, i32 %.1.i.us.us.us.i.3.1)
  br label %bb.as

.lr.ph.i57.us.us.us.i.preheader.1:                ; preds = %.preheader.us.us.us.i.1
  %spec.select112.1 = select i1 %.not.i60.us.us.us.i.1194, i32 %i.db, i32 %i.cy
  %spec.select113.1 = select i1 %.not.i60.us.us.us.i.1194, i32 0, i32 %i.cy
  %i.dr = and i32 %i.dc, 2
  %.not.i60.us.us.us.i.1.1 = icmp eq i32 %i.dr, 0 ; 2 uses
  %i.ds = select i1 %.not.i60.us.us.us.i.1.1, i32 %i.da, i32 %i.bt
  %i.dt = select i1 %.not.i60.us.us.us.i.1.1, i32 0, i32 %i.bt
  %.1.i61.us.us.us.i.1.1 = add nuw nsw i32 %spec.select113.1, %i.dt
  %i.du = and i32 %i.dc, 4
  %.not.i60.us.us.us.i.2.1 = icmp eq i32 %i.du, 0 ; 2 uses
  %i.dv = select i1 %.not.i60.us.us.us.i.2.1, i32 %i.cz, i32 %i.br
  %i.dw = select i1 %.not.i60.us.us.us.i.2.1, i32 0, i32 %i.br
  %.1.i61.us.us.us.i.2.1 = add nuw nsw i32 %.1.i61.us.us.us.i.1.1, %i.dw
  %i.dx = and i32 %i.dc, 8
  %.not.i60.us.us.us.i.3.1 = icmp eq i32 %i.dx, 0
  %i.dy = select i1 %.not.i60.us.us.us.i.3.1, i32 0, i32 %i.bq
  %.1.i61.us.us.us.i.3.1 = add nuw nsw i32 %.1.i61.us.us.us.i.2.1, %i.dy
  %i.dz = tail call noundef i32 @llvm.smax.i32(i32 %.071.us.us.us.i.1, i32 %.1.i61.us.us.us.i.3.1)
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph.i57.us.us.us.i.preheader.1, %.lr.ph.i.us.us.us.i.preheader.1
  %i.ea = phi i32 [ %i.cz, %.lr.ph.i.us.us.us.i.preheader.1 ], [ %i.dv, %.lr.ph.i57.us.us.us.i.preheader.1 ] ; 3 uses
  %i.eb = phi i32 [ %i.da, %.lr.ph.i.us.us.us.i.preheader.1 ], [ %i.ds, %.lr.ph.i57.us.us.us.i.preheader.1 ] ; 2 uses
  %i.ec = phi i32 [ %i.db, %.lr.ph.i.us.us.us.i.preheader.1 ], [ %spec.select112.1, %.lr.ph.i57.us.us.us.i.preheader.1 ]
  %.139.us.us.us.i.1 = phi i32 [ %i.dq, %.lr.ph.i.us.us.us.i.preheader.1 ], [ %.03870.us.us.us.i.1, %.lr.ph.i57.us.us.us.i.preheader.1 ] ; 3 uses
  %.1.us.us.us.i.1 = phi i32 [ %.071.us.us.us.i.1, %.lr.ph.i.us.us.us.i.preheader.1 ], [ %i.dz, %.lr.ph.i57.us.us.us.i.preheader.1 ] ; 2 uses
  %.not53.us.us.us.i.1 = icmp slt i32 %.1.us.us.us.i.1, %.139.us.us.us.i.1
  br i1 %.not53.us.us.us.i.1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ed = add nuw nsw i32 %i.bt, 2                ; 5 uses
  %.not51.us.us.us.not.i.1.not = icmp eq i32 %i.bt, 3
  br i1 %.not51.us.us.us.not.i.1.not, label %bb.bb, label %.preheader.us.us.us.i.2

bb.au:                                            ; preds = %bb.as
  %indvars.iv.next49.1 = add nuw nsw i64 %indvars.iv48.1, 1 ; 2 uses
  %exitcond.not.i29.1 = icmp eq i64 %indvars.iv.next49.1, 16
  br i1 %exitcond.not.i29.1, label %Extra_ThreshSelectWeights3.exit.loopexit70, label %.preheader.us.us.us.i.1, !llvm.loop !49

.preheader.us.us.us.i.2:                          ; preds = %bb.at, %bb.ax
  %i.ee = phi i32 [ %i.ff, %bb.ax ], [ %i.ea, %bb.at ] ; 3 uses
  %i.ef = phi i32 [ %i.fg, %bb.ax ], [ %i.eb, %bb.at ] ; 3 uses
  %i.eg = phi i32 [ %i.fh, %bb.ax ], [ %i.ed, %bb.at ] ; 3 uses
  %indvars.iv48.2 = phi i64 [ %indvars.iv.next49.2, %bb.ax ], [ 0, %bb.at ] ; 4 uses
  %.071.us.us.us.i.2 = phi i32 [ %.1.us.us.us.i.2, %bb.ax ], [ 0, %bb.at ] ; 2 uses
  %.03870.us.us.us.i.2 = phi i32 [ %.139.us.us.us.i.2, %bb.ax ], [ 10000, %bb.at ] ; 2 uses
  %i.eh = trunc nuw nsw i64 %indvars.iv48.2 to i32 ; 7 uses
  %i.ei = lshr i64 %indvars.iv48.2, 6
  %i.ej = and i64 %i.ei, 67108863
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !11
  %i.em = shl nuw i64 1, %indvars.iv48.2
  %i.en = and i64 %i.em, %i.el
  %.not52.us.us.us.i.2 = icmp eq i64 %i.en, 0
  %i.eo = and i32 %i.eh, 1
  %.not.i60.us.us.us.i.2195 = icmp eq i32 %i.eo, 0 ; 3 uses
  br i1 %.not52.us.us.us.i.2, label %.lr.ph.i57.us.us.us.i.preheader.2, label %.lr.ph.i.us.us.us.i.preheader.2

.lr.ph.i.us.us.us.i.preheader.2:                  ; preds = %.preheader.us.us.us.i.2
  %spec.select.2 = select i1 %.not.i60.us.us.us.i.2195, i32 0, i32 %i.eg
  %i.ep = and i32 %i.eh, 2
  %.not.i.us.us.us.i.1.2 = icmp eq i32 %i.ep, 0
  %i.eq = select i1 %.not.i.us.us.us.i.1.2, i32 0, i32 %i.ef
  %.1.i.us.us.us.i.1.2 = add nsw i32 %spec.select.2, %i.eq
  %i.er = and i32 %i.eh, 4
  %.not.i.us.us.us.i.2.2 = icmp eq i32 %i.er, 0
  %i.es = select i1 %.not.i.us.us.us.i.2.2, i32 0, i32 %i.ee
  %.1.i.us.us.us.i.2.2 = add nsw i32 %.1.i.us.us.us.i.1.2, %i.es
  %i.et = and i32 %i.eh, 8
  %.not.i.us.us.us.i.3.2 = icmp eq i32 %i.et, 0
  %i.eu = select i1 %.not.i.us.us.us.i.3.2, i32 0, i32 %i.bq
  %.1.i.us.us.us.i.3.2 = add nsw i32 %.1.i.us.us.us.i.2.2, %i.eu
  %i.ev = tail call noundef i32 @llvm.smin.i32(i32 %.03870.us.us.us.i.2, i32 %.1.i.us.us.us.i.3.2)
  br label %bb.av

.lr.ph.i57.us.us.us.i.preheader.2:                ; preds = %.preheader.us.us.us.i.2
  %spec.select112.2 = select i1 %.not.i60.us.us.us.i.2195, i32 %i.eg, i32 %i.ed
  %spec.select113.2 = select i1 %.not.i60.us.us.us.i.2195, i32 0, i32 %i.ed
  %i.ew = and i32 %i.eh, 2
  %.not.i60.us.us.us.i.1.2 = icmp eq i32 %i.ew, 0 ; 2 uses
  %i.ex = select i1 %.not.i60.us.us.us.i.1.2, i32 %i.ef, i32 %i.bt
  %i.ey = select i1 %.not.i60.us.us.us.i.1.2, i32 0, i32 %i.bt
  %.1.i61.us.us.us.i.1.2 = add nuw nsw i32 %spec.select113.2, %i.ey
  %i.ez = and i32 %i.eh, 4
  %.not.i60.us.us.us.i.2.2 = icmp eq i32 %i.ez, 0 ; 2 uses
  %i.fa = select i1 %.not.i60.us.us.us.i.2.2, i32 %i.ee, i32 %i.br
  %i.fb = select i1 %.not.i60.us.us.us.i.2.2, i32 0, i32 %i.br
  %.1.i61.us.us.us.i.2.2 = add nuw nsw i32 %.1.i61.us.us.us.i.1.2, %i.fb
  %i.fc = and i32 %i.eh, 8
  %.not.i60.us.us.us.i.3.2 = icmp eq i32 %i.fc, 0
  %i.fd = select i1 %.not.i60.us.us.us.i.3.2, i32 0, i32 %i.bq
  %.1.i61.us.us.us.i.3.2 = add nuw nsw i32 %.1.i61.us.us.us.i.2.2, %i.fd
  %i.fe = tail call noundef i32 @llvm.smax.i32(i32 %.071.us.us.us.i.2, i32 %.1.i61.us.us.us.i.3.2)
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph.i57.us.us.us.i.preheader.2, %.lr.ph.i.us.us.us.i.preheader.2
  %i.ff = phi i32 [ %i.ee, %.lr.ph.i.us.us.us.i.preheader.2 ], [ %i.fa, %.lr.ph.i57.us.us.us.i.preheader.2 ] ; 3 uses
  %i.fg = phi i32 [ %i.ef, %.lr.ph.i.us.us.us.i.preheader.2 ], [ %i.ex, %.lr.ph.i57.us.us.us.i.preheader.2 ] ; 2 uses
  %i.fh = phi i32 [ %i.eg, %.lr.ph.i.us.us.us.i.preheader.2 ], [ %spec.select112.2, %.lr.ph.i57.us.us.us.i.preheader.2 ]
  %.139.us.us.us.i.2 = phi i32 [ %i.ev, %.lr.ph.i.us.us.us.i.preheader.2 ], [ %.03870.us.us.us.i.2, %.lr.ph.i57.us.us.us.i.preheader.2 ] ; 3 uses
  %.1.us.us.us.i.2 = phi i32 [ %.071.us.us.us.i.2, %.lr.ph.i.us.us.us.i.preheader.2 ], [ %i.fe, %.lr.ph.i57.us.us.us.i.preheader.2 ] ; 2 uses
  %.not53.us.us.us.i.2 = icmp slt i32 %.1.us.us.us.i.2, %.139.us.us.us.i.2
  br i1 %.not53.us.us.us.i.2, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fi = add nuw nsw i32 %i.bt, 3                ; 5 uses
  %.not51.us.us.us.not.i.2 = icmp samesign ult i32 %i.bt, 2
  br i1 %.not51.us.us.us.not.i.2, label %.preheader.us.us.us.i.3, label %bb.bb

bb.ax:                                            ; preds = %bb.av
  %indvars.iv.next49.2 = add nuw nsw i64 %indvars.iv48.2, 1 ; 2 uses
  %exitcond.not.i29.2 = icmp eq i64 %indvars.iv.next49.2, 16
  br i1 %exitcond.not.i29.2, label %Extra_ThreshSelectWeights3.exit.loopexit70, label %.preheader.us.us.us.i.2, !llvm.loop !49

.preheader.us.us.us.i.3:                          ; preds = %bb.aw, %bb.ba
  %i.fj = phi i32 [ %i.gk, %bb.ba ], [ %i.ff, %bb.aw ] ; 3 uses
  %i.fk = phi i32 [ %i.gl, %bb.ba ], [ %i.fg, %bb.aw ] ; 3 uses
  %i.fl = phi i32 [ %i.gm, %bb.ba ], [ %i.fi, %bb.aw ] ; 3 uses
  %indvars.iv48.3 = phi i64 [ %indvars.iv.next49.3, %bb.ba ], [ 0, %bb.aw ] ; 4 uses
  %.071.us.us.us.i.3 = phi i32 [ %.1.us.us.us.i.3, %bb.ba ], [ 0, %bb.aw ] ; 2 uses
  %.03870.us.us.us.i.3 = phi i32 [ %.139.us.us.us.i.3, %bb.ba ], [ 10000, %bb.aw ] ; 2 uses
  %i.fm = trunc nuw nsw i64 %indvars.iv48.3 to i32 ; 7 uses
  %i.fn = lshr i64 %indvars.iv48.3, 6
  %i.fo = and i64 %i.fn, 67108863
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !11
  %i.fr = shl nuw i64 1, %indvars.iv48.3
  %i.fs = and i64 %i.fr, %i.fq
  %.not52.us.us.us.i.3 = icmp eq i64 %i.fs, 0
  %i.ft = and i32 %i.fm, 1
  %.not.i60.us.us.us.i.3196 = icmp eq i32 %i.ft, 0 ; 3 uses
  br i1 %.not52.us.us.us.i.3, label %.lr.ph.i57.us.us.us.i.preheader.3, label %.lr.ph.i.us.us.us.i.preheader.3

.lr.ph.i.us.us.us.i.preheader.3:                  ; preds = %.preheader.us.us.us.i.3
  %spec.select.3 = select i1 %.not.i60.us.us.us.i.3196, i32 0, i32 %i.fl
  %i.fu = and i32 %i.fm, 2
  %.not.i.us.us.us.i.1.3 = icmp eq i32 %i.fu, 0
  %i.fv = select i1 %.not.i.us.us.us.i.1.3, i32 0, i32 %i.fk
  %.1.i.us.us.us.i.1.3 = add nsw i32 %spec.select.3, %i.fv
  %i.fw = and i32 %i.fm, 4
  %.not.i.us.us.us.i.2.3 = icmp eq i32 %i.fw, 0
  %i.fx = select i1 %.not.i.us.us.us.i.2.3, i32 0, i32 %i.fj
  %.1.i.us.us.us.i.2.3 = add nsw i32 %.1.i.us.us.us.i.1.3, %i.fx
  %i.fy = and i32 %i.fm, 8
  %.not.i.us.us.us.i.3.3 = icmp eq i32 %i.fy, 0
  %i.fz = select i1 %.not.i.us.us.us.i.3.3, i32 0, i32 %i.bq
  %.1.i.us.us.us.i.3.3 = add nsw i32 %.1.i.us.us.us.i.2.3, %i.fz
  %i.ga = tail call noundef i32 @llvm.smin.i32(i32 %.03870.us.us.us.i.3, i32 %.1.i.us.us.us.i.3.3)
  br label %bb.ay

.lr.ph.i57.us.us.us.i.preheader.3:                ; preds = %.preheader.us.us.us.i.3
  %spec.select112.3 = select i1 %.not.i60.us.us.us.i.3196, i32 %i.fl, i32 %i.fi
  %spec.select113.3 = select i1 %.not.i60.us.us.us.i.3196, i32 0, i32 %i.fi
  %i.gb = and i32 %i.fm, 2
  %.not.i60.us.us.us.i.1.3 = icmp eq i32 %i.gb, 0 ; 2 uses
  %i.gc = select i1 %.not.i60.us.us.us.i.1.3, i32 %i.fk, i32 %i.bt
  %i.gd = select i1 %.not.i60.us.us.us.i.1.3, i32 0, i32 %i.bt
  %.1.i61.us.us.us.i.1.3 = add nuw nsw i32 %spec.select113.3, %i.gd
  %i.ge = and i32 %i.fm, 4
  %.not.i60.us.us.us.i.2.3 = icmp eq i32 %i.ge, 0 ; 2 uses
  %i.gf = select i1 %.not.i60.us.us.us.i.2.3, i32 %i.fj, i32 %i.br
  %i.gg = select i1 %.not.i60.us.us.us.i.2.3, i32 0, i32 %i.br
  %.1.i61.us.us.us.i.2.3 = add nuw nsw i32 %.1.i61.us.us.us.i.1.3, %i.gg
  %i.gh = and i32 %i.fm, 8
  %.not.i60.us.us.us.i.3.3 = icmp eq i32 %i.gh, 0
  %i.gi = select i1 %.not.i60.us.us.us.i.3.3, i32 0, i32 %i.bq
  %.1.i61.us.us.us.i.3.3 = add nuw nsw i32 %.1.i61.us.us.us.i.2.3, %i.gi
  %i.gj = tail call noundef i32 @llvm.smax.i32(i32 %.071.us.us.us.i.3, i32 %.1.i61.us.us.us.i.3.3)
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i57.us.us.us.i.preheader.3, %.lr.ph.i.us.us.us.i.preheader.3
  %i.gk = phi i32 [ %i.fj, %.lr.ph.i.us.us.us.i.preheader.3 ], [ %i.gf, %.lr.ph.i57.us.us.us.i.preheader.3 ] ; 2 uses
  %i.gl = phi i32 [ %i.fk, %.lr.ph.i.us.us.us.i.preheader.3 ], [ %i.gc, %.lr.ph.i57.us.us.us.i.preheader.3 ]
  %i.gm = phi i32 [ %i.fl, %.lr.ph.i.us.us.us.i.preheader.3 ], [ %spec.select112.3, %.lr.ph.i57.us.us.us.i.preheader.3 ]
  %.139.us.us.us.i.3 = phi i32 [ %i.ga, %.lr.ph.i.us.us.us.i.preheader.3 ], [ %.03870.us.us.us.i.3, %.lr.ph.i57.us.us.us.i.preheader.3 ] ; 3 uses
  %.1.us.us.us.i.3 = phi i32 [ %.071.us.us.us.i.3, %.lr.ph.i.us.us.us.i.preheader.3 ], [ %i.gj, %.lr.ph.i57.us.us.us.i.preheader.3 ] ; 2 uses
  %.not53.us.us.us.i.3 = icmp slt i32 %.1.us.us.us.i.3, %.139.us.us.us.i.3
  br i1 %.not53.us.us.us.i.3, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gn = or disjoint i32 %i.bt, 4
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %indvars.iv.next49.3 = add nuw nsw i64 %indvars.iv48.3, 1 ; 2 uses
  %exitcond.not.i29.3 = icmp eq i64 %indvars.iv.next49.3, 16
  br i1 %exitcond.not.i29.3, label %Extra_ThreshSelectWeights3.exit.loopexit70, label %.preheader.us.us.us.i.3, !llvm.loop !49

bb.bb:                                            ; preds = %bb.az, %bb.aw, %bb.at, %bb.ar
  %.lcssa168 = phi i32 [ %i.cy, %bb.ar ], [ %i.ed, %bb.at ], [ %i.fi, %bb.aw ], [ %i.gn, %bb.az ]
  %.lcssa164.lcssa = phi i32 [ %i.cv, %bb.ar ], [ %i.ea, %bb.at ], [ %i.ff, %bb.aw ], [ %i.gk, %bb.az ]
  %i.go = add nuw nsw i32 %i.bt, 1                ; 3 uses
  %exitcond51.not = icmp eq i32 %i.go, 5
  br i1 %exitcond51.not, label %.split76.us.us.us.i, label %.preheader66.us.us.us.i, !llvm.loop !51

.split76.us.us.us.i:                              ; preds = %bb.bb
  store i32 %.lcssa168, ptr %2, align 4, !tbaa !8
  %i.gp = add nuw nsw i32 %i.br, 1                ; 2 uses
  %exitcond90.not.i = icmp eq i32 %i.br, 4
  br i1 %exitcond90.not.i, label %.split82.us.us.i, label %.split.us.us.us.i, !llvm.loop !52

.split82.us.us.i:                                 ; preds = %.split76.us.us.us.i
  store i32 %i.go, ptr %i.bp, align 4, !tbaa !8
  %i.gq = add nuw nsw i32 %i.bq, 1                ; 2 uses
  store i32 %i.gq, ptr %i.bn, align 4, !tbaa !8
  %exitcond91.not.i = icmp eq i32 %i.bq, 4
  br i1 %exitcond91.not.i, label %Extra_ThreshSelectWeights3.exit.loopexit71, label %.split80.us.us.i, !llvm.loop !53

bb.bc:                                            ; preds = %bb.c
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 1, ptr %i.gr, align 4, !tbaa !8
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  br label %.split96.us.us.i

.split96.us.us.i:                                 ; preds = %.split98.us.us.i, %bb.bc
  %i.gv = phi i32 [ %i.jc, %.split98.us.us.i ], [ 1, %bb.bc ] ; 5 uses
  %i.gw = insertelement <4 x i32> poison, i32 %i.gv, i64 3
  %i.gx = insertelement <4 x i32> poison, i32 %i.gv, i64 3
  br label %.split89.us.us.us.i

.split89.us.us.us.i:                              ; preds = %.split91.us.us.us.i, %.split96.us.us.i
  %i.gy = phi i32 [ %i.gv, %.split96.us.us.i ], [ %i.jb, %.split91.us.us.us.i ] ; 7 uses
  %i.gz = insertelement <4 x i32> %i.gw, i32 %i.gy, i64 2
  br label %.split.us.us.us.us.i

.split.us.us.us.us.i:                             ; preds = %.split85.us.us.us.us.i, %.split89.us.us.us.i
  %i.ha = phi i32 [ %i.gy, %.split89.us.us.us.i ], [ %i.iq, %.split85.us.us.us.us.i ]
  %i.hb = phi i32 [ %i.gy, %.split89.us.us.us.i ], [ %i.ja, %.split85.us.us.us.us.i ] ; 6 uses
  %i.hc = insertelement <4 x i32> %i.gz, i32 %i.hb, i64 1
  br label %.preheader75.us.us.us.us.i

.preheader75.us.us.us.us.i:                       ; preds = %bb.bh, %.split.us.us.us.us.i
  %i.hd = phi i32 [ %i.ha, %.split.us.us.us.us.i ], [ %i.iq, %bb.bh ]
  %i.he = phi i32 [ %i.hb, %.split.us.us.us.us.i ], [ %i.ir, %bb.bh ]
  %i.hf = phi i32 [ %i.hb, %.split.us.us.us.us.i ], [ %i.iv, %bb.bh ] ; 7 uses
  %i.hg = insertelement <4 x i32> %i.hc, i32 %i.hf, i64 0
  br label %.preheader.us.us.us.us.i

bb.bd:                                            ; preds = %bb.bf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not.i30, label %Extra_ThreshSelectWeights3.exit.loopexit72, label %bb.be, !llvm.loop !54

bb.be:                                            ; preds = %.preheader.us.us.us.us.i, %bb.bd
  %i.hh = phi i32 [ %i.iw, %.preheader.us.us.us.us.i ], [ %i.iq, %bb.bd ] ; 3 uses
  %i.hi = phi i32 [ %i.ix, %.preheader.us.us.us.us.i ], [ %i.ir, %bb.bd ] ; 3 uses
  %i.hj = phi i32 [ %i.iy, %.preheader.us.us.us.us.i ], [ %i.is, %bb.bd ] ; 3 uses
  %i.hk = phi i32 [ %i.iz, %.preheader.us.us.us.us.i ], [ %i.it, %bb.bd ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us.us.us.us.i ], [ %indvars.iv.next, %bb.bd ] ; 4 uses
  %.080.us.us.us.us.i = phi i32 [ 0, %.preheader.us.us.us.us.i ], [ %.1.us.us.us.us.i, %bb.bd ] ; 2 uses
  %.04479.us.us.us.us.i = phi i32 [ 10000, %.preheader.us.us.us.us.i ], [ %.145.us.us.us.us.i, %bb.bd ] ; 2 uses
  %i.hl = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.hm = lshr i64 %indvars.iv, 6
  %i.hn = and i64 %i.hm, 67108863
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !11
  %i.hq = shl nuw i64 1, %indvars.iv
  %i.hr = and i64 %i.hq, %i.hp
  %.not61.us.us.us.us.i = icmp eq i64 %i.hr, 0
  %i.hs = and i32 %i.hl, 1
  %.not.i69.us.us.us.us.i = icmp eq i32 %i.hs, 0  ; 3 uses
  br i1 %.not61.us.us.us.us.i, label %.lr.ph.i66.us.us.us.us.i.preheader, label %.lr.ph.i.us.us.us.us.i.preheader

.lr.ph.i.us.us.us.us.i.preheader:                 ; preds = %bb.be
  %spec.select114 = select i1 %.not.i69.us.us.us.us.i, i32 0, i32 %i.hk
  %i.ht = insertelement <4 x i32> poison, i32 %i.hl, i64 0
  %i.hu = shufflevector <4 x i32> %i.ht, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hv = and <4 x i32> %i.hu, <i32 2, i32 4, i32 8, i32 16>
  %i.hw = icmp eq <4 x i32> %i.hv, zeroinitializer
  %i.hx = insertelement <4 x i32> %i.gx, i32 %i.hj, i64 0
  %i.hy = insertelement <4 x i32> %i.hx, i32 %i.hi, i64 1
  %i.hz = insertelement <4 x i32> %i.hy, i32 %i.hh, i64 2
  %i.ia = select <4 x i1> %i.hw, <4 x i32> zeroinitializer, <4 x i32> %i.hz
  %i.ib = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ia)
  %op.rdx = add i32 %i.ib, %spec.select114
  %i.ic = tail call noundef i32 @llvm.smin.i32(i32 %.04479.us.us.us.us.i, i32 %op.rdx)
  br label %bb.bf

.lr.ph.i66.us.us.us.us.i.preheader:               ; preds = %bb.be
  %spec.select115 = select i1 %.not.i69.us.us.us.us.i, i32 %i.hk, i32 %i.iz
  %spec.select116 = select i1 %.not.i69.us.us.us.us.i, i32 0, i32 %i.iz
  %i.id = insertelement <4 x i32> poison, i32 %i.hl, i64 0
  %i.ie = shufflevector <4 x i32> %i.id, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.if = and <4 x i32> %i.ie, <i32 2, i32 4, i32 8, i32 16>
  %i.ig = icmp eq <4 x i32> %i.if, zeroinitializer ; 4 uses
  %i.ih = extractelement <4 x i1> %i.ig, i64 0
  %i.ii = select i1 %i.ih, i32 %i.hj, i32 %i.hf
  %i.ij = select <4 x i1> %i.ig, <4 x i32> zeroinitializer, <4 x i32> %i.hg
  %i.ik = extractelement <4 x i1> %i.ig, i64 1
  %i.il = select i1 %i.ik, i32 %i.hi, i32 %i.hb
  %i.im = extractelement <4 x i1> %i.ig, i64 2
  %i.in = select i1 %i.im, i32 %i.hh, i32 %i.gy
  %i.io = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ij)
  %op.rdx155 = add i32 %i.io, %spec.select116
  %i.ip = tail call noundef i32 @llvm.smax.i32(i32 %.080.us.us.us.us.i, i32 %op.rdx155)
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.us.us.us.us.i.preheader, %.lr.ph.i66.us.us.us.us.i.preheader
  %i.iq = phi i32 [ %i.hh, %.lr.ph.i.us.us.us.us.i.preheader ], [ %i.in, %.lr.ph.i66.us.us.us.us.i.preheader ] ; 4 uses
  %i.ir = phi i32 [ %i.hi, %.lr.ph.i.us.us.us.us.i.preheader ], [ %i.il, %.lr.ph.i66.us.us.us.us.i.preheader ] ; 3 uses
  %i.is = phi i32 [ %i.hj, %.lr.ph.i.us.us.us.us.i.preheader ], [ %i.ii, %.lr.ph.i66.us.us.us.us.i.preheader ] ; 2 uses
  %i.it = phi i32 [ %i.hk, %.lr.ph.i.us.us.us.us.i.preheader ], [ %spec.select115, %.lr.ph.i66.us.us.us.us.i.preheader ]
  %.145.us.us.us.us.i = phi i32 [ %i.ic, %.lr.ph.i.us.us.us.us.i.preheader ], [ %.04479.us.us.us.us.i, %.lr.ph.i66.us.us.us.us.i.preheader ] ; 3 uses
  %.1.us.us.us.us.i = phi i32 [ %.080.us.us.us.us.i, %.lr.ph.i.us.us.us.us.i.preheader ], [ %i.ip, %.lr.ph.i66.us.us.us.us.i.preheader ] ; 2 uses
  %.not62.us.us.us.us.i = icmp slt i32 %.1.us.us.us.us.i, %.145.us.us.us.us.i
  br i1 %.not62.us.us.us.us.i, label %bb.bd, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iu = add nuw nsw i32 %i.iz, 1                ; 2 uses
  %.not60.us.us.us.us.not.i = icmp samesign ult i32 %i.iz, 5
  br i1 %.not60.us.us.us.us.not.i, label %.preheader.us.us.us.us.i, label %bb.bh, !llvm.loop !55

bb.bh:                                            ; preds = %bb.bg
  %i.iv = add nuw nsw i32 %i.hf, 1                ; 2 uses
  %.not58.us.us.us.us.not.i = icmp samesign ult i32 %i.hf, 5
  br i1 %.not58.us.us.us.us.not.i, label %.preheader75.us.us.us.us.i, label %.split85.us.us.us.us.i, !llvm.loop !56

.preheader.us.us.us.us.i:                         ; preds = %bb.bg, %.preheader75.us.us.us.us.i
  %i.iw = phi i32 [ %i.hd, %.preheader75.us.us.us.us.i ], [ %i.iq, %bb.bg ]
  %i.ix = phi i32 [ %i.he, %.preheader75.us.us.us.us.i ], [ %i.ir, %bb.bg ]
  %i.iy = phi i32 [ %i.hf, %.preheader75.us.us.us.us.i ], [ %i.is, %bb.bg ]
  %i.iz = phi i32 [ %i.hf, %.preheader75.us.us.us.us.i ], [ %i.iu, %bb.bg ] ; 6 uses
  br label %bb.be

.split85.us.us.us.us.i:                           ; preds = %bb.bh
  store i32 %i.iu, ptr %2, align 4, !tbaa !8
  %i.ja = add nuw nsw i32 %i.hb, 1                ; 3 uses
  %exitcond.not = icmp eq i32 %i.ja, 6
  br i1 %exitcond.not, label %.split91.us.us.us.i, label %.split.us.us.us.us.i, !llvm.loop !57

.split91.us.us.us.i:                              ; preds = %.split85.us.us.us.us.i
  store i32 %i.iv, ptr %i.gu, align 4, !tbaa !8
  %i.jb = add nuw nsw i32 %i.gy, 1                ; 2 uses
  %exitcond109.not.i = icmp eq i32 %i.gy, 5
  br i1 %exitcond109.not.i, label %.split98.us.us.i, label %.split89.us.us.us.i, !llvm.loop !58

.split98.us.us.i:                                 ; preds = %.split91.us.us.us.i
  store i32 %i.ja, ptr %i.gt, align 4, !tbaa !8
  %i.jc = add nuw nsw i32 %i.gv, 1                ; 2 uses
  store i32 %i.jc, ptr %i.gr, align 4, !tbaa !8
  %exitcond110.not.i = icmp eq i32 %i.gv, 5
  br i1 %exitcond110.not.i, label %Extra_ThreshSelectWeights3.exit.loopexit73, label %.split96.us.us.i, !llvm.loop !59

bb.bi:                                            ; preds = %bb.c
  %i.jd = tail call i32 @Extra_ThreshSelectWeights6(ptr noundef %0, i32 noundef 6, ptr noundef %2)
  br label %Extra_ThreshSelectWeights3.exit

bb.bj:                                            ; preds = %bb.c
  %i.je = tail call i32 @Extra_ThreshSelectWeights7(ptr noundef %0, i32 noundef 7, ptr noundef %2)
  br label %Extra_ThreshSelectWeights3.exit

bb.bk:                                            ; preds = %bb.c
  %i.jf = tail call i32 @Extra_ThreshSelectWeights8(ptr noundef %0, i32 noundef 8, ptr noundef %2)
  br label %Extra_ThreshSelectWeights3.exit

Extra_ThreshSelectWeights3.exit.loopexit:         ; preds = %bb.al, %bb.z, %bb.n
  %.lcssa.a = phi i32 [ %i.p, %bb.n ], [ %i.ad, %bb.z ], [ %i.au, %bb.al ]
  %.lcssa = phi i32 [ %21, %bb.n ], [ %13, %bb.z ], [ %18, %bb.al ]
  %.134.us.us.i.7.lcssa = phi i32 [ %.134.us.us.i.7, %bb.n ], [ %.134.us.us.i.7.1, %bb.z ], [ %.134.us.us.i.7.2, %bb.al ]
  store i32 %.lcssa.a, ptr %i.g, align 4, !tbaa !8
  store i32 %.lcssa, ptr %2, align 4, !tbaa !8
  br label %Extra_ThreshSelectWeights3.exit

Extra_ThreshSelectWeights3.exit.loopexit69:       ; preds = %.split68.us.us.i
  store i32 %.lcssa165, ptr %i.g, align 4, !tbaa !8
  br label %Extra_ThreshSelectWeights3.exit

Extra_ThreshSelectWeights3.exit.loopexit70:       ; preds = %bb.ba, %bb.ax, %bb.au, %bb.ao
  %.lcssa166 = phi i32 [ %i.cy, %bb.au ], [ %i.ed, %bb.ax ], [ %i.bt, %bb.ao ], [ %i.fi, %bb.ba ]
  %.139.us.us.us.i.lcssa161 = phi i32 [ %.139.us.us.us.i.1, %bb.au ], [ %.139.us.us.us.i.2, %bb.ax ], [ %.139.us.us.us.i, %bb.ao ], [ %.139.us.us.us.i.3, %bb.ba ]
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !8
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !8
  store i32 %.lcssa166, ptr %2, align 4, !tbaa !8
  br label %Extra_ThreshSelectWeights3.exit

Extra_ThreshSelectWeights3.exit.loopexit71:       ; preds = %.split82.us.us.i
  store i32 %i.gp, ptr %i.bo, align 4, !tbaa !8
  br label %Extra_ThreshSelectWeights3.exit

Extra_ThreshSelectWeights3.exit.loopexit72:       ; preds = %bb.bd
  store i32 %i.gy, ptr %i.gs, align 4, !tbaa !8
  store i32 %i.hb, ptr %i.gt, align 4, !tbaa !8
  store i32 %i.hf, ptr %i.gu, align 4, !tbaa !8
  store i32 %i.iz, ptr %2, align 4, !tbaa !8
  br label %Extra_ThreshSelectWeights3.exit

Extra_ThreshSelectWeights3.exit.loopexit73:       ; preds = %.split98.us.us.i
  store i32 %i.jb, ptr %i.gs, align 4, !tbaa !8
  br label %Extra_ThreshSelectWeights3.exit

Extra_ThreshSelectWeights3.exit:                  ; preds = %Extra_ThreshSelectWeights3.exit.loopexit73, %Extra_ThreshSelectWeights3.exit.loopexit72, %Extra_ThreshSelectWeights3.exit.loopexit71, %Extra_ThreshSelectWeights3.exit.loopexit70, %Extra_ThreshSelectWeights3.exit.loopexit69, %Extra_ThreshSelectWeights3.exit.loopexit, %bb.c, %bb.bk, %bb.bj, %bb.bi, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.c ], [ 0, %Extra_ThreshSelectWeights3.exit.loopexit69 ], [ 0, %Extra_ThreshSelectWeights3.exit.loopexit71 ], [ %i.jd, %bb.bi ], [ %i.je, %bb.bj ], [ %i.jf, %bb.bk ], [ %.134.us.us.i.7.lcssa, %Extra_ThreshSelectWeights3.exit.loopexit ], [ %.139.us.us.us.i.lcssa161, %Extra_ThreshSelectWeights3.exit.loopexit70 ], [ %.145.us.us.us.us.i, %Extra_ThreshSelectWeights3.exit.loopexit72 ], [ 0, %Extra_ThreshSelectWeights3.exit.loopexit73 ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Extra_ThreshIncrementWeights(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %2, %0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %0 to i64           ; 2 uses
  %i.c = sub nsw i64 %wide.trip.count, %i.b       ; 3 uses
  %min.iters.check = icmp ult i64 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, -8                       ; 3 uses
  %i.d = add nsw i64 %n.vec, %i.b
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !8
  %wide.load8 = load <4 x i32>, ptr %i.e, align 4, !tbaa !8
  %i.f = add nsw <4 x i32> %wide.load, splat (i32 1)
  %i.g = add nsw <4 x i32> %wide.load8, splat (i32 1)
  store <4 x i32> %i.f, ptr %gep, align 4, !tbaa !8
  store <4 x i32> %i.g, ptr %i.e, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9

.lr.ph.preheader9:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader9, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader9 ] ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Extra_ThreshDecrementWeights(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %2, %0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %0 to i64           ; 2 uses
  %i.c = sub nsw i64 %wide.trip.count, %i.b       ; 3 uses
  %min.iters.check = icmp ult i64 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, -8                       ; 3 uses
  %i.d = add nsw i64 %n.vec, %i.b
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !8
  %wide.load8 = load <4 x i32>, ptr %i.e, align 4, !tbaa !8
  %i.f = add nsw <4 x i32> %wide.load, splat (i32 -1)
  %i.g = add nsw <4 x i32> %wide.load8, splat (i32 -1)
  store <4 x i32> %i.f, ptr %gep, align 4, !tbaa !8
  store <4 x i32> %i.g, ptr %i.e, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9

.lr.ph.preheader9:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader9, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader9 ] ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Extra_ThreshPrintInequalities(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph24, label %._crit_edge25

.lr.ph24:                                         ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.us.us.preheader, label %.lr.ph24.split.split

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph24
  %wide.trip.count41 = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge21.us.us
  %indvars.iv38 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next39, %._crit_edge21.us.us ] ; 4 uses
  %i.c = trunc nuw nsw i64 %indvars.iv38 to i32
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.c) ; 0 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv38
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.h) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond32.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !91

bb.c:                                             ; preds = %._crit_edge.us.us, %bb.c
  %indvars.iv33 = phi i64 [ 0, %._crit_edge.us.us ], [ %indvars.iv.next34, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %i.o, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv33
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %i.l) ; 0 uses
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count
  br i1 %exitcond37.not, label %._crit_edge21.us.us, label %bb.c, !llvm.loop !92

._crit_edge.us.us:                                ; preds = %bb.b
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv38
  br label %bb.c

._crit_edge21.us.us:                              ; preds = %bb.c
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge25, label %.lr.ph.us.us, !llvm.loop !93

.lr.ph24.split.split:                             ; preds = %.lr.ph24, %.lr.ph24.split.split
  %.022 = phi i32 [ %i.r, %.lr.ph24.split.split ], [ 0, %.lr.ph24 ] ; 2 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.022) ; 0 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.r = add nuw nsw i32 %.022, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %3
  br i1 %exitcond.not, label %._crit_edge25, label %.lr.ph24.split.split, !llvm.loop !93

end_hunk_0
begin_hunk_1_@Extra_ThreshAssignWeights:bb.a
  %i.gl = add nsw i32 %i.gk, %.014.i.us
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i182.us
  %.1.i.us = phi i32 [ %i.gl, %bb.p ], [ %.014.i.us, %.lr.ph.i182.us ] ; 2 uses
  %indvars.iv.next.i184.us = add nuw nsw i64 %indvars.iv.i183.us, 1 ; 2 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next.i184.us, %i.gb
  br i1 %i.gm, label %.lr.ph.i182.us, label %Extra_ThreshCubeWeightedSum1.exit.loopexit.us, !llvm.loop !122

Extra_ThreshCubeWeightedSum1.exit.loopexit.us:    ; preds = %bb.q
  %i.gn = tail call noundef i32 @llvm.smin.i32(i32 %.0137226.us, i32 %.1.i.us) ; 2 uses
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, %i.fz ; 2 uses
  %i.go = trunc nuw i64 %indvars.iv.next272 to i32
  %i.gp = icmp slt i32 %i.go, %i.fw
  br i1 %i.gp, label %.lr.ph.preheader.i181.us, label %.preheader196, !llvm.loop !123

.preheader196:                                    ; preds = %Extra_ThreshCubeWeightedSum1.exit.loopexit.us, %.lr.ph228, %._crit_edge224
  %.0137.lcssa = phi i32 [ 1000, %._crit_edge224 ], [ 0, %.lr.ph228 ], [ %i.gn, %Extra_ThreshCubeWeightedSum1.exit.loopexit.us ] ; 2 uses
  %i.gq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %i.gr = trunc i64 %i.gq to i32                  ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %.lr.ph232, label %.preheader

.lr.ph232:                                        ; preds = %.preheader196
  %i.gt = icmp sgt i32 %3, 0
  br i1 %i.gt, label %.lr.ph.preheader.i187.us.preheader, label %._crit_edge237

.lr.ph.preheader.i187.us.preheader:               ; preds = %.lr.ph232
  %i.gu = zext nneg i32 %i.f to i64
  %i.gv = zext nneg i32 %3 to i64
  br label %.lr.ph.preheader.i187.us

.lr.ph.preheader.i187.us:                         ; preds = %.lr.ph.preheader.i187.us.preheader, %Extra_ThreshCubeWeightedSum2.exit.loopexit.us
  %indvars.iv274 = phi i64 [ 0, %.lr.ph.preheader.i187.us.preheader ], [ %indvars.iv.next275, %Extra_ThreshCubeWeightedSum2.exit.loopexit.us ] ; 4 uses
  %.0136231.us = phi i32 [ 0, %.lr.ph.preheader.i187.us.preheader ], [ %i.hi, %Extra_ThreshCubeWeightedSum2.exit.loopexit.us ]
  %i.gw = add nuw nsw i64 %indvars.iv274, %i.gv
  br label %.lr.ph.i188.us

.lr.ph.i188.us:                                   ; preds = %bb.s, %.lr.ph.preheader.i187.us
  %indvars.iv.i189.us = phi i64 [ %indvars.iv274, %.lr.ph.preheader.i187.us ], [ %indvars.iv.next.i192.us, %bb.s ] ; 3 uses
  %.014.i190.us = phi i32 [ 0, %.lr.ph.preheader.i187.us ], [ %.1.i191.us, %bb.s ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i189.us
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !97
  %i.gz = icmp eq i8 %i.gy, 45
  br i1 %i.gz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i188.us
  %i.ha = sub nuw nsw i64 %indvars.iv.i189.us, %indvars.iv274
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !8
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !8
  %i.hg = add nsw i32 %i.hf, %.014.i190.us
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i188.us
  %.1.i191.us = phi i32 [ %i.hg, %bb.r ], [ %.014.i190.us, %.lr.ph.i188.us ] ; 2 uses
  %indvars.iv.next.i192.us = add nuw nsw i64 %indvars.iv.i189.us, 1 ; 2 uses
  %i.hh = icmp samesign ult i64 %indvars.iv.next.i192.us, %i.gw
  br i1 %i.hh, label %.lr.ph.i188.us, label %Extra_ThreshCubeWeightedSum2.exit.loopexit.us, !llvm.loop !124

Extra_ThreshCubeWeightedSum2.exit.loopexit.us:    ; preds = %bb.s
  %i.hi = tail call noundef i32 @llvm.smax.i32(i32 %.0136231.us, i32 %.1.i191.us) ; 2 uses
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, %i.gu ; 2 uses
  %i.hj = trunc nuw i64 %indvars.iv.next275 to i32
  %i.hk = icmp slt i32 %i.hj, %i.gr
  br i1 %i.hk, label %.lr.ph.preheader.i187.us, label %.preheader, !llvm.loop !125

.preheader:                                       ; preds = %Extra_ThreshCubeWeightedSum2.exit.loopexit.us, %.preheader196
  %.0136.lcssa = phi i32 [ 0, %.preheader196 ], [ %i.hi, %Extra_ThreshCubeWeightedSum2.exit.loopexit.us ] ; 3 uses
  %i.hl = icmp sgt i32 %3, 0
  br i1 %i.hl, label %.lr.ph236.preheader, label %._crit_edge237

.lr.ph236.preheader:                              ; preds = %.preheader
  %wide.trip.count280 = zext nneg i32 %3 to i64   ; 2 uses
  %xtraiter332 = and i64 %wide.trip.count280, 3   ; 3 uses
  %i.hm = icmp ult i32 %3, 4
  br i1 %i.hm, label %.lr.ph236.epil.preheader, label %.lr.ph236.preheader.new

.lr.ph236.preheader.new:                          ; preds = %.lr.ph236.preheader
  %unroll_iter336 = and i64 %wide.trip.count280, 2147483644
  br label %.lr.ph236

.lr.ph236:                                        ; preds = %.lr.ph236, %.lr.ph236.preheader.new
  %indvars.iv277 = phi i64 [ 0, %.lr.ph236.preheader.new ], [ %indvars.iv.next278.3, %.lr.ph236 ] ; 6 uses
  %niter337 = phi i64 [ 0, %.lr.ph236.preheader.new ], [ %niter337.next.3, %.lr.ph236 ]
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv277
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !8
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !8
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv277
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !8
  %indvars.iv.next278 = or disjoint i64 %indvars.iv277, 1 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next278
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !8
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !8
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next278
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !8
  %indvars.iv.next278.1 = or disjoint i64 %indvars.iv277, 2 ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next278.1
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !8
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !8
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next278.1
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !8
  %indvars.iv.next278.2 = or disjoint i64 %indvars.iv277, 3 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next278.2
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !8
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !8
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next278.2
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !8
  %indvars.iv.next278.3 = add nuw nsw i64 %indvars.iv277, 4 ; 2 uses
  %niter337.next.3 = add i64 %niter337, 4         ; 2 uses
  %niter337.ncmp.3 = icmp eq i64 %niter337.next.3, %unroll_iter336
  br i1 %niter337.ncmp.3, label %._crit_edge237.loopexit.unr-lcssa, label %.lr.ph236, !llvm.loop !126

._crit_edge237.loopexit.unr-lcssa:                ; preds = %.lr.ph236
  %lcmp.mod334.not = icmp eq i64 %xtraiter332, 0
  br i1 %lcmp.mod334.not, label %._crit_edge237, label %.lr.ph236.epil.preheader

.lr.ph236.epil.preheader:                         ; preds = %._crit_edge237.loopexit.unr-lcssa, %.lr.ph236.preheader
  %indvars.iv277.epil.init = phi i64 [ 0, %.lr.ph236.preheader ], [ %indvars.iv.next278.3, %._crit_edge237.loopexit.unr-lcssa ]
  %lcmp.mod335 = icmp ne i64 %xtraiter332, 0
  tail call void @llvm.assume(i1 %lcmp.mod335)
  br label %.lr.ph236.epil

.lr.ph236.epil:                                   ; preds = %.lr.ph236.epil, %.lr.ph236.epil.preheader
  %indvars.iv277.epil = phi i64 [ %indvars.iv277.epil.init, %.lr.ph236.epil.preheader ], [ %indvars.iv.next278.epil, %.lr.ph236.epil ] ; 3 uses
  %epil.iter333 = phi i64 [ 0, %.lr.ph236.epil.preheader ], [ %epil.iter333.next, %.lr.ph236.epil ]
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv277.epil
  %i.im = load i32, ptr %i.il, align 4, !tbaa !8
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !8
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv277.epil
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !8
  %indvars.iv.next278.epil = add nuw nsw i64 %indvars.iv277.epil, 1
  %epil.iter333.next = add i64 %epil.iter333, 1   ; 2 uses
  %epil.iter333.cmp.not = icmp eq i64 %epil.iter333.next, %xtraiter332
  br i1 %epil.iter333.cmp.not, label %._crit_edge237, label %.lr.ph236.epil, !llvm.loop !127

._crit_edge237:                                   ; preds = %._crit_edge237.loopexit.unr-lcssa, %.lr.ph236.epil, %.lr.ph232, %.preheader
  %.0136.lcssa292 = phi i32 [ 0, %.lr.ph232 ], [ %.0136.lcssa, %.preheader ], [ %.0136.lcssa, %.lr.ph236.epil ], [ %.0136.lcssa, %._crit_edge237.loopexit.unr-lcssa ]
  tail call void @free(ptr noundef %i.d) #17
  %i.ir = icmp sgt i32 %.0137.lcssa, %.0136.lcssa292
  %.0148 = select i1 %i.ir, i32 %.0137.lcssa, i32 0
  ret i32 %.0148
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define void @Extra_ThreshPrintWeights(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !128 ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.5, i64 31, i64 1, ptr %i.b) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.6, i64 48, i64 1, ptr %i.b) ; 0 uses
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.g) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2147483647, -2147483648) i32 @Extra_ThreshCheck(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call fastcc i32 @Abc_TtIsUnate(ptr noundef %0, i32 noundef %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @Abc_TtMakePosUnate(ptr noundef %0, i32 noundef %1)
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.d, i1 false)
  %.not36.i = icmp eq i32 %1, 31
  br i1 %.not36.i, label %.lr.ph.preheader.i, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.b
  %i.e = shl nuw nsw i32 1, %1
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph34.split.us.preheader.i, label %Extra_ThreshComputeChow.exit

.lr.ph34.split.us.preheader.i:                    ; preds = %.lr.ph34.i
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.g = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod16 = trunc i32 %1 to i1
  br label %.lr.ph34.split.us.i

.lr.ph34.split.us.i:                              ; preds = %..loopexit_crit_edge.us.i, %.lr.ph34.split.us.preheader.i
  %.033.us.i = phi i32 [ %.1.us.i, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph34.split.us.preheader.i ] ; 2 uses
  %.02731.us.i = phi i32 [ %i.ai, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph34.split.us.preheader.i ] ; 6 uses
  %i.h = lshr i32 %.02731.us.i, 6
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = and i32 %.02731.us.i, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.n, %i.k
  %.not.us.i = icmp eq i64 %i.o, 0
  br i1 %.not.us.i, label %..loopexit_crit_edge.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph34.split.us.i
  br i1 %i.g, label %.lr.ph.us.i.epil.preheader, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.e ], [ 0, %.lr.ph.us.i.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph.us.i.preheader ]
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.q = shl nuw i32 1, %i.p
  %i.r = and i32 %i.q, %.02731.us.i
  %.not29.us.i = icmp eq i32 %i.r, 0
  br i1 %.not29.us.i, label %.lr.ph.us.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph.us.i
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !8
  br label %.lr.ph.us.i.1

.lr.ph.us.i.1:                                    ; preds = %bb.c, %.lr.ph.us.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, %.02731.us.i
  %.not29.us.i.1 = icmp eq i32 %i.x, 0
  br i1 %.not29.us.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us.i.1
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.us.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.loopexit.i.unr-lcssa, label %.lr.ph.us.i, !llvm.loop !16

..loopexit_crit_edge.us.loopexit.i.unr-lcssa:     ; preds = %bb.e
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us.loopexit.i, label %.lr.ph.us.i.epil.preheader

.lr.ph.us.i.epil.preheader:                       ; preds = %..loopexit_crit_edge.us.loopexit.i.unr-lcssa, %.lr.ph.us.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.preheader ], [ %indvars.iv.next.i.1, %..loopexit_crit_edge.us.loopexit.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.ab = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = and i32 %i.ac, %.02731.us.i
  %.not29.us.i.epil = icmp eq i32 %i.ad, 0
  br i1 %.not29.us.i.epil, label %..loopexit_crit_edge.us.loopexit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.us.i.epil.preheader
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !8
  br label %..loopexit_crit_edge.us.loopexit.i

..loopexit_crit_edge.us.loopexit.i:               ; preds = %.lr.ph.us.i.epil.preheader, %bb.f, %..loopexit_crit_edge.us.loopexit.i.unr-lcssa
  %i.ah = add nsw i32 %.033.us.i, 1
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %..loopexit_crit_edge.us.loopexit.i, %.lr.ph34.split.us.i
  %.1.us.i = phi i32 [ %.033.us.i, %.lr.ph34.split.us.i ], [ %i.ah, %..loopexit_crit_edge.us.loopexit.i ] ; 2 uses
  %i.ai = add nuw nsw i32 %.02731.us.i, 1         ; 2 uses
  %exitcond41.not.i = icmp eq i32 %i.ai, %i.e
  br i1 %exitcond41.not.i, label %.lr.ph.preheader.i, label %.lr.ph34.split.us.i, !llvm.loop !17

.lr.ph.preheader.i:                               ; preds = %..loopexit_crit_edge.us.i, %bb.b
  %wide.trip.count45.i.pre-phi = phi i64 [ 31, %bb.b ], [ %wide.trip.count.i, %..loopexit_crit_edge.us.i ] ; 4 uses
  %.0.lcssa50.i = phi i32 [ 0, %bb.b ], [ %.1.us.i, %..loopexit_crit_edge.us.i ] ; 2 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count45.i.pre-phi, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count45.i.pre-phi, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.lcssa50.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aj, align 16, !tbaa !8
  %wide.load15 = load <4 x i32>, ptr %i.ak, align 16, !tbaa !8
  %i.al = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %i.am = shl nsw <4 x i32> %wide.load15, splat (i32 1)
  %i.an = sub nsw <4 x i32> %i.al, %broadcast.splat
  %i.ao = sub nsw <4 x i32> %i.am, %broadcast.splat
  store <4 x i32> %i.an, ptr %i.aj, align 16, !tbaa !8
  store <4 x i32> %i.ao, ptr %i.ak, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count45.i.pre-phi, %n.vec
  br i1 %cmp.n, label %Extra_ThreshComputeChow.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv42.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %.lr.ph.i ], [ %indvars.iv42.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = shl nsw i32 %i.ar, 1
  %i.at = sub nsw i32 %i.as, %.0.lcssa50.i
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !8
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i.pre-phi
  br i1 %exitcond46.not.i, label %Extra_ThreshComputeChow.exit, label %.lr.ph.i, !llvm.loop !132

Extra_ThreshComputeChow.exit:                     ; preds = %.lr.ph.i, %middle.block, %.lr.ph34.i
  call void @Extra_ThreshSortByChow(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a)
  %i.au = tail call i32 @Extra_ThreshSelectWeights(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %Extra_ThreshComputeChow.exit
  %.0 = phi i32 [ %i.au, %Extra_ThreshComputeChow.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @Abc_TtIsUnate(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %Abc_TtPosVar.exit.thread38

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 7
  %i.c = add nsw i32 %1, -6                       ; 2 uses
  %i.d = shl nuw i32 1, %i.c                      ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx.i = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx.i ; 2 uses
  %.not.i = icmp eq i32 %i.c, 31                  ; 4 uses
  %smax61.i = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %wide.trip.count62.i = zext nneg i32 %smax61.i to i64 ; 2 uses
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.g = load i64, ptr %0, align 8, !tbaa !11     ; 24 uses
  %i.h = shl i64 %i.g, 1
  %i.i = and i64 %i.h, -6148914691236517206
  %i.j = xor i64 %i.i, -6148914691236517206
  %i.k = and i64 %i.j, %i.g
  %.not.us = icmp eq i64 %i.k, 0
  br i1 %.not.us, label %Abc_TtNegVar.exit.thread.us, label %Abc_TtPosVar.exit.us
end_hunk_1
