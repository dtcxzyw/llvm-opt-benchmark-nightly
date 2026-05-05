inline.NumInlined: 17
inline.NumDeleted: 9
begin_hunk_0_@VP8LDoFillBitWindow:bb.a
  %i.ad = shl nuw i64 %i.ac, 56
  %i.ae = or disjoint i64 %i.ad, %i.y
  store i64 %i.ae, ptr %0, align 8, !tbaa !47
  %i.af = add i64 %i.v, 1                         ; 3 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !50
  %i.ag = add i32 %i.w, -8                        ; 3 uses
  store i32 %i.ag, ptr %i.s, align 8, !tbaa !48
end_hunk_0
begin_hunk_1_@VP8LDoFillBitWindow:bb.a
  br i1 %i.ah, label %bb.d, label %..critedge.loopexit.i_crit_edge, !llvm.loop !52

.critedge.loopexit.isplit:                        ; preds = %bb.d
  %.lcssa10 = phi i32 [ %i.w, %bb.d ]
  br label %.critedge.loopexit.i

..critedge.loopexit.i_crit_edge:                  ; preds = %bb.e
  %.lcssa12 = phi i64 [ %i.af, %bb.e ]
  %.lcssa.a = phi i32 [ %i.ag, %bb.e ]
  br label %.critedge.loopexit.i, !llvm.loop !52

.critedge.loopexit.i:                             ; preds = %.critedge.loopexit.isplit, %..critedge.loopexit.i_crit_edge
  %i.ai = phi i64 [ %.lcssa12, %..critedge.loopexit.i_crit_edge ], [ %umax.i, %.critedge.loopexit.isplit ]
  %.lcssa.ph.i = phi i32 [ %.lcssa.a, %..critedge.loopexit.i_crit_edge ], [ %.lcssa10, %.critedge.loopexit.isplit ]
  %i.aj = icmp slt i32 %.lcssa.ph.i, 65
  br label %.critedge.i
end_hunk_1
