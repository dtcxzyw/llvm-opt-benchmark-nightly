begin_hunk_0_@CombinedShannonEntropy_SSE2:bb.a

bb.e:                                             ; preds = %bb.c
  %i.an = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.ao = tail call i64 %i.an(i32 noundef %i.ah) #8
  br label %VP8LFastSLog2.exit

VP8LFastSLog2.exit:                               ; preds = %bb.d, %bb.e
end_hunk_0
begin_hunk_1_@CombinedShannonEntropy_SSE2:bb.a

bb.g:                                             ; preds = %.lr.ph._crit_edge
  %i.bb = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.bc = tail call i64 %i.bb(i32 noundef %i.av) #8
  br label %VP8LFastSLog2.exit65

VP8LFastSLog2.exit65:                             ; preds = %bb.f, %bb.g
end_hunk_1
begin_hunk_2_@CombinedShannonEntropy_SSE2:bb.a
  %i.bf = add nsw i32 %.06070, -1
  %i.bg = and i32 %i.bf, %.06070                  ; 2 uses
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %VP8LFastSLog2.exit65, %bb.b
  %.162.lcssa = phi i32 [ %.06175, %bb.b ], [ %.263, %VP8LFastSLog2.exit65 ] ; 4 uses
end_hunk_2
begin_hunk_3_@CombinedShannonEntropy_SSE2:bb.a
  %.1.lcssa = phi i64 [ %.05777, %bb.b ], [ %i.be, %VP8LFastSLog2.exit65 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %i.bh = icmp samesign ult i64 %indvars.iv, 240
  br i1 %i.bh, label %bb.b, label %bb.h, !llvm.loop !26

bb.h:                                             ; preds = %._crit_edge
  %i.bi = icmp ult i32 %.159.lcssa, 256
end_hunk_3
begin_hunk_4_@CombinedShannonEntropy_SSE2:bb.a

bb.j:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.bn = tail call i64 %i.bm(i32 noundef %.159.lcssa) #8
  br label %VP8LFastSLog2.exit66

VP8LFastSLog2.exit66:                             ; preds = %bb.i, %bb.j
end_hunk_4
begin_hunk_5_@CombinedShannonEntropy_SSE2:bb.a

bb.l:                                             ; preds = %VP8LFastSLog2.exit66
  %i.bt = load ptr, ptr @VP8LFastSLog2Slow, align 8, !tbaa !7
  %i.bu = tail call i64 %i.bt(i32 noundef %.162.lcssa) #8
  br label %VP8LFastSLog2.exit67

VP8LFastSLog2.exit67:                             ; preds = %bb.k, %bb.l
end_hunk_5
begin_hunk_6_@VectorMismatch_SSE2:bb.a
  %i.v = add nsw i32 %.45, 12
  %i.w = icmp slt i32 %i.v, %2
  %or.cond = select i1 %.not44, i1 %i.w, i1 false
  br i1 %or.cond, label %.preheader, label %.thread, !llvm.loop !27

bb.c:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %2, 3
end_hunk_6
begin_hunk_7_@VectorMismatch_SSE2:bb.a
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !28

.critedge.loopexit.split.loop.exit59:             ; preds = %.lr.ph
  %i.ay = trunc nsw i64 %indvars.iv to i32
end_hunk_7
begin_hunk_8_@BundleColorMap_SSE2:bb.a
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 16 ; 2 uses
  %.not92 = icmp samesign ugt i64 %indvars.iv.next146, %i.c
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 16
  br i1 %.not92, label %.loopexit.loopexit123, label %.lr.ph114, !llvm.loop !29

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %indvars.iv140 = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next141, %.lr.ph108 ] ; 2 uses
end_hunk_8
begin_hunk_9_@BundleColorMap_SSE2:bb.a
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 16 ; 2 uses
  %.not91 = icmp samesign ugt i64 %indvars.iv.next139, %i.b
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 16
  br i1 %.not91, label %.loopexit.loopexit124, label %.lr.ph108, !llvm.loop !30

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv133 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next134, %.lr.ph ] ; 2 uses
end_hunk_9
begin_hunk_10_@BundleColorMap_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 16
  br i1 %.not, label %.loopexit.loopexit125, label %.lr.ph, !llvm.loop !31

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %indvars.iv154 = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next155, %.lr.ph120 ] ; 2 uses
end_hunk_10
begin_hunk_11_@BundleColorMap_SSE2:bb.a
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 16 ; 2 uses
  %.not93 = icmp samesign ugt i64 %indvars.iv.next153, %i.d
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 16
  br i1 %.not93, label %.loopexit.loopexit, label %.lr.ph120, !llvm.loop !32

.loopexit.loopexit:                               ; preds = %.lr.ph120
  %i.ay = trunc nuw nsw i64 %indvars.iv152 to i32
end_hunk_11
begin_hunk_12_@PredictorSub0_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !33

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_12
begin_hunk_13_@PredictorSub1_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_13
begin_hunk_14_@PredictorSub2_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_14
begin_hunk_15_@PredictorSub3_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_15
begin_hunk_16_@PredictorSub4_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !37

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_16
begin_hunk_17_@PredictorSub5_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !38

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_17
begin_hunk_18_@PredictorSub6_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !39

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_18
begin_hunk_19_@PredictorSub7_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !40

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_19
begin_hunk_20_@PredictorSub8_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_20
begin_hunk_21_@PredictorSub9_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !42

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_21
begin_hunk_22_@PredictorSub10_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_22
begin_hunk_23_@PredictorSub11_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !44

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_23
begin_hunk_24_@PredictorSub12_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !45

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_24
begin_hunk_25_@PredictorSub13_SSE2:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_25
begin_hunk_26_@llvm.x86.sse2.packuswb.128
!22 = distinct !{!22, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
end_hunk_26
begin_hunk_27_@llvm.x86.sse2.packuswb.128
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
end_hunk_27
