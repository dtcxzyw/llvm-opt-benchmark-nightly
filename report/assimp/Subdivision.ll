inline.NumInlined: 871
inline.NumDeleted: 477
begin_hunk_0_@_ZN22CatmullClarkSubdivider9SubdivideEPP6aiMeshmS2_jb:bb.a
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.sroa.0.2.lcssa615 = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %.sroa.0111.3.lcssa612 = phi ptr [ %.sroa.0111.3, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %.sroa.0111.3.lcssa = phi ptr [ %.sroa.0111.3, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 5 uses
  %.sroa.18.3.lcssa = phi ptr [ %.sroa.18.3, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 4 uses
  %.sroa.0.2.lcssa = phi ptr [ %.sroa.0.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN22CatmullClarkSubdivider9SubdivideEPP6aiMeshmS2_jb:bb.a
.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %.lr.ph269
  %lsr.iv612 = phi i64 [ 0, %.lr.ph269.preheader ], [ %lsr.iv.next, %.lr.ph269 ] ; 4 uses
  %i.cu = shl i64 %lsr.iv612, 3
  %scevgep613 = getelementptr i8, ptr %.sroa.0111.3.lcssa612, i64 %i.cu
  %i.cv = load ptr, ptr %scevgep613, align 8
  %i.cw = shl i64 %lsr.iv612, 2
  %scevgep614 = getelementptr i8, ptr %.sroa.0.2.lcssa615, i64 %i.cw
  %i.cx = load i32, ptr %scevgep614, align 4
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cy
end_hunk_1
begin_hunk_2_@_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j:bb.a
  br i1 %i.bmb, label %._crit_edge4953.loopexitsplit, label %.lr.ph4952, !llvm.loop !63

.lr.ph4952:                                       ; preds = %.lr.ph4952.preheader, %.preheader2287
  %.032531114951 = phi i64 [ %i.bmh, %.preheader2287 ], [ 1, %.lr.ph4952.preheader ] ; 4 uses
  %i.bmc = shl i64 %.032531114951, 3
  %scevgep5934 = getelementptr i8, ptr %.sroa.01957.03989, i64 %i.bmc
  %i.bmd = load i32, ptr %scevgep5934, align 4
end_hunk_2
begin_hunk_3_@_ZN22CatmullClarkSubdivider15InternSubdivideEPKPK6aiMeshmPPS0_j:bb.a
  br i1 %i.bme, label %.lr.ph4952.._crit_edge4953.loopexit_crit_edge, label %bb.dt

._crit_edge4953.loopexitsplit:                    ; preds = %.preheader2287
  %.03253111.lcssa.ph.ph = phi i64 [ %2, %.preheader2287 ]
  br label %._crit_edge4953.loopexit

.lr.ph4952.._crit_edge4953.loopexit_crit_edge:    ; preds = %.lr.ph4952
  %.032531114951.lcssa = phi i64 [ %.032531114951, %.lr.ph4952 ]
  %.032531114951.lcssa.a = phi i64 [ %.032531114951, %.lr.ph4952 ] ; 0 uses
  br label %._crit_edge4953.loopexit

._crit_edge4953.loopexit:                         ; preds = %._crit_edge4953.loopexitsplit, %.lr.ph4952.._crit_edge4953.loopexit_crit_edge
  %.03253111.lcssa.ph = phi i64 [ %.032531114951.lcssa, %.lr.ph4952.._crit_edge4953.loopexit_crit_edge ], [ %.03253111.lcssa.ph.ph, %._crit_edge4953.loopexitsplit ]
  br label %._crit_edge4953

._crit_edge4953:                                  ; preds = %._crit_edge4953.loopexit, %.preheader2287.preheader
end_hunk_3
