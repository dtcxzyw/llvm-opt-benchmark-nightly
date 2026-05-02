inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZN10btSoftBody16generateClustersEii:bb.a

.preheader621:                                    ; preds = %.preheader621.preheader, %bb.p
  %indvars.iv743 = phi i64 [ 0, %.preheader621.preheader ], [ %indvars.iv.next744, %bb.p ] ; 4 uses
  %.0151665 = phi i1 [ false, %.preheader621.preheader ], [ %.1152, %bb.p ] ; 2 uses
  %i.gm = load ptr, ptr %i.fz, align 8, !tbaa !145
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv743
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !285 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody16generateClustersEii:bb.a
.loopexit620:                                     ; preds = %.lr.ph.i223, %._crit_edge659.thread
  store i32 0, ptr %i.is, align 4, !tbaa !356
  %i.jh = fcmp ogt float %i.io, 0x3E80000000000000
  %i.ji = or i1 %.0151665, %i.jh
  br label %bb.p

bb.o:                                             ; preds = %bb.n
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody16generateClustersEii:bb.a
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit372.thread610

bb.p:                                             ; preds = %.loopexit620, %._crit_edge659
  %.1152 = phi i1 [ %i.ji, %.loopexit620 ], [ %.0151665, %._crit_edge659 ] ; 2 uses
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond746.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count745
  br i1 %exitcond746.not, label %.preheader622, label %.preheader621
end_hunk_2
begin_hunk_3_@_ZN10btSoftBody16generateClustersEii:bb.a

._crit_edge676:                                   ; preds = %bb.u, %.preheader622
  %.lcssa633 = phi i32 [ %i.gk, %.preheader622 ], [ %i.mj, %bb.u ] ; 2 uses
  %i.mt = icmp slt i32 %i.gh, %2
  %i.mu = select i1 %.1152, i1 %i.mt, i1 false
  br i1 %i.mu, label %.preheader621.preheader, label %bb.w

bb.w:                                             ; preds = %._crit_edge676
end_hunk_3
