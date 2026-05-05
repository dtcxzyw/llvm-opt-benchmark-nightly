inline.NumInlined: 1
begin_hunk_0_@snrm2:bb.a
  br i1 %i.h, label %bb.d, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.c
  %lsr.iv291.lcssa = phi ptr [ %lsr.iv291, %bb.c ]
  %.0105136.lcssa = phi ptr [ %lsr.iv, %bb.c ]
  %.0109135.lcssa = phi i32 [ %.0109135, %bb.c ]  ; 2 uses
  %.lcssa286 = phi float [ %i.g, %bb.c ]          ; 3 uses
end_hunk_0
begin_hunk_1_@snrm2:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %lsr.iv293 = phi ptr [ %lsr.iv291.lcssa, %.lr.ph.preheader ], [ %scevgep294, %bb.i ] ; 3 uses
  %.3112142 = phi i32 [ %.3112, %bb.i ], [ %.3112138, %.lr.ph.preheader ] ; 2 uses
  %.0140 = phi float [ %.1, %bb.i ], [ %i.k, %.lr.ph.preheader ] ; 5 uses
  %.2116139 = phi double [ %.3117, %bb.i ], [ 1.000000e+00, %.lr.ph.preheader ] ; 3 uses
end_hunk_1
begin_hunk_2_@snrm2:bb.a
  br label %.critedge.thread

bb.j:                                             ; preds = %.lr.ph157
  %lsr.iv302.lcssa = phi ptr [ %lsr.iv299, %.lr.ph157 ]
  %.2111155.lcssa298 = phi i32 [ %.2111155, %.lr.ph157 ]
  %.2111155.lcssa = phi i32 [ %.2111155, %.lr.ph157 ]
  %.1115154.lcssa = phi double [ %.1115154, %.lr.ph157 ]
  %.lcssa276 = phi float [ %i.s, %.lr.ph157 ]
end_hunk_2
begin_hunk_3_@snrm2:bb.a
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.m
  %lsr.iv301 = phi ptr [ %lsr.iv302.lcssa, %.lr.ph167.preheader ], [ %scevgep302, %bb.m ] ; 2 uses
  %lsr.iv297 = phi i32 [ %i.ba, %.lr.ph167.preheader ], [ %lsr.iv.next, %bb.m ]
  %.2163 = phi float [ %.3, %bb.m ], [ %.lcssa274, %.lr.ph167.preheader ] ; 4 uses
  %.4118162 = phi double [ %.5, %bb.m ], [ %i.ay, %.lr.ph167.preheader ] ; 2 uses
end_hunk_3
begin_hunk_4_@snrm2:bb.a
  %.3 = phi float [ %i.be, %bb.k ], [ %.2163, %bb.l ] ; 2 uses
  %lsr.iv.next = add i32 %lsr.iv297, -1           ; 2 uses
  %scevgep302 = getelementptr i8, ptr %lsr.iv301, i64 %i.f
  %exitcond194.not = icmp eq i32 %.2111155.lcssa298, %lsr.iv.next
  br i1 %exitcond194.not, label %._crit_edge168.loopexit, label %.lr.ph167, !llvm.loop !56

._crit_edge168.loopexit:                          ; preds = %bb.m
end_hunk_4
