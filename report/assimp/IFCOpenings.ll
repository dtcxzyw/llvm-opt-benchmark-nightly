begin_hunk_0
  br i1 %.not236, label %._crit_edge257, label %bb.z, !llvm.loop !22

._crit_edge257:                                   ; preds = %bb.ae, %bb.z, %bb.aa
  %.078.lcssa = phi double [ %.280.ph, %bb.ae ], [ %.078254, %bb.aa ], [ %.078254, %bb.z ] ; 2 uses
  %.3.lcssa = phi i1 [ %.5.ph, %bb.ae ], [ %.3255, %bb.aa ], [ %.3255, %bb.z ]
  br i1 %.3.lcssa, label %bb.av, label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRdRKdEEERS1_DpOT_.exit120, %._crit_edge257
end_hunk_0
