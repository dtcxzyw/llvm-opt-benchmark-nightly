inline.NumInlined: 241
inline.NumDeleted: 78
begin_hunk_0_@framelocalsproxy_getkeyindex:bb.a
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %framelocalsproxy_getval.exit.thread111.us
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %framelocalsproxy_getval.exit.thread111.us ], [ 0, %.lr.ph.split.us.preheader ] ; 8 uses
  %.066155.us = phi i1 [ %.167.us, %framelocalsproxy_getval.exit.thread111.us ], [ false, %.lr.ph.split.us.preheader ]
  %i.m = shl nuw nsw i64 %indvars.iv190, 3
  %scevgep277 = getelementptr i8, ptr %i.k, i64 %i.m
end_hunk_0
begin_hunk_1_@framelocalsproxy_getkeyindex:bb.a

select.unfold.isplit:                             ; preds = %bb.d
  %indvars.iv190.lcssa280 = phi i64 [ %indvars.iv190, %bb.d ]
  %.lcssa272.ph = phi ptr [ %i.u, %bb.d ]
  br label %select.unfold.i

.select.unfold.i_crit_edge:                       ; preds = %bb.c
  %indvars.iv190.lcssa278 = phi i64 [ %indvars.iv190, %bb.c ]
  %indvars.iv190.lcssa279 = phi i64 [ %indvars.iv190, %bb.c ] ; 0 uses
  %split277 = phi ptr [ %i.u, %bb.c ]
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %select.unfold.isplit, %.select.unfold.i_crit_edge
  %indvars.iv190.lcssa = phi i64 [ %indvars.iv190.lcssa278, %.select.unfold.i_crit_edge ], [ %indvars.iv190.lcssa280, %select.unfold.isplit ]
  %.lcssa272 = phi ptr [ %split277, %.select.unfold.i_crit_edge ], [ %.lcssa272.ph, %select.unfold.isplit ] ; 3 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv190.lcssa to i32 ; 2 uses
  %i.ap = load i32, ptr %.lcssa272, align 8, !tbaa !14 ; 3 uses
  %i.aq = icmp ugt i32 %i.ap, -1073741825
end_hunk_1
begin_hunk_2_@framelocalsproxy_getkeyindex:bb.a
  br label %.lr.ph162.split.us

.lr.ph162.split.us:                               ; preds = %.lr.ph162.split.us.preheader, %framelocalsproxy_getval.exit104.thread125.us
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %framelocalsproxy_getval.exit104.thread125.us ], [ 0, %.lr.ph162.split.us.preheader ] ; 8 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !96
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  %i.bb = shl nuw nsw i64 %indvars.iv197, 3
end_hunk_2
begin_hunk_3_@framelocalsproxy_getkeyindex:bb.a

select.unfold.i97split:                           ; preds = %bb.p
  %indvars.iv197.lcssa287.a = phi i64 [ %indvars.iv197, %bb.p ]
  %.lcssa.ph = phi ptr [ %i.bl, %bb.p ]
  br label %select.unfold.i97

.select.unfold.i97_crit_edge:                     ; preds = %bb.o
  %indvars.iv197.lcssa287 = phi i64 [ %indvars.iv197, %bb.o ]
  %indvars.iv197.lcssa286 = phi i64 [ %indvars.iv197, %bb.o ] ; 0 uses
  %split286 = phi ptr [ %i.bl, %bb.o ]
  br label %select.unfold.i97

select.unfold.i97:                                ; preds = %select.unfold.i97split, %.select.unfold.i97_crit_edge
  %indvars.iv197.lcssa269 = phi i64 [ %indvars.iv197.lcssa287, %.select.unfold.i97_crit_edge ], [ %indvars.iv197.lcssa287.a, %select.unfold.i97split ]
  %.lcssa = phi ptr [ %split286, %.select.unfold.i97_crit_edge ], [ %.lcssa.ph, %select.unfold.i97split ] ; 3 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv197.lcssa269 to i32 ; 2 uses
  %i.cm = load i32, ptr %.lcssa, align 8, !tbaa !14 ; 3 uses
  %i.cn = icmp ugt i32 %i.cm, -1073741825
end_hunk_3
