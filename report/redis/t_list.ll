inline.NumInlined: 56
inline.NumDeleted: 4
begin_hunk_0_@lposCommand:bb.a
  unreachable

listTypeLength.exit:                              ; preds = %bb.v, %bb.w
  %.0.i = phi i64 [ %i.cd, %bb.v ], [ %i.cg, %bb.w ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !14 ; 5 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1
end_hunk_0
begin_hunk_1_@lposCommand:bb.a
  %lsr.iv203 = phi i64 [ %i.dl, %.lr.ph118.split.split.us.preheader ], [ %lsr.iv.next204, %bb.ak ] ; 3 uses
  %.073117.us136 = phi i64 [ %.1.us141, %bb.ak ], [ 0, %.lr.ph118.split.split.us.preheader ] ; 4 uses
  %.076116.us137 = phi i64 [ %.177.us140, %bb.ak ], [ 0, %.lr.ph118.split.split.us.preheader ] ; 3 uses
  %.078115.us138 = phi i64 [ %i.dy, %bb.ak ], [ 0, %.lr.ph118.split.split.us.preheader ] ; 3 uses
  %i.dm = load i64, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = icmp slt i64 %.078115.us138, %i.dm
end_hunk_1
begin_hunk_2_@lposCommand:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.dr = add nsw i64 %.076116.us137, 1           ; 4 uses
  %3 = xor i64 %.078115.us138, -1
  %4 = add i64 %.0.i, %3
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !17
  %.not98.us143 = icmp slt i64 %i.dr, %i.ds
  br i1 %.not98.us143, label %bb.ak, label %bb.ai
end_hunk_2
begin_hunk_3_@lposCommand:bb.a
.lr.ph118.split.split:                            ; preds = %.lr.ph118.split.split.preheader, %bb.ap
  %.073117 = phi i64 [ %.1, %bb.ap ], [ 0, %.lr.ph118.split.split.preheader ] ; 4 uses
  %.076116 = phi i64 [ %.177, %bb.ap ], [ 0, %.lr.ph118.split.split.preheader ] ; 3 uses
  %.078115 = phi i64 [ %i.em, %bb.ap ], [ 0, %.lr.ph118.split.split.preheader ] ; 5 uses
  %i.ea = load i64, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  %i.ec = icmp slt i64 %.078115, %i.ea
end_hunk_3
begin_hunk_4_@lposCommand:bb.a
  br label %.critedge

.critedge.loopexit193split:                       ; preds = %.lr.ph118.split.split.us, %bb.ak
  %.175.ph.ph = phi i64 [ -1, %.lr.ph118.split.split.us ], [ -1, %bb.ak ]
  %.2.ph.ph = phi i64 [ %.073117.us136, %.lr.ph118.split.split.us ], [ %.1.us141, %bb.ak ]
  br label %.critedge.loopexit193

..critedge.loopexit193_crit_edge:                 ; preds = %bb.aj
  %lsr.iv203.lcssa205 = phi i64 [ %lsr.iv203, %bb.aj ]
  %split204 = phi i64 [ %4, %bb.aj ]              ; 0 uses
  %split205 = phi i64 [ %i.dt, %bb.aj ]
  br label %.critedge.loopexit193

.critedge.loopexit193:                            ; preds = %.critedge.loopexit193split, %..critedge.loopexit193_crit_edge
  %.175.ph = phi i64 [ %lsr.iv203.lcssa205, %..critedge.loopexit193_crit_edge ], [ %.175.ph.ph, %.critedge.loopexit193split ]
  %.2.ph = phi i64 [ %split205, %..critedge.loopexit193_crit_edge ], [ %.2.ph.ph, %.critedge.loopexit193split ]
  br label %.critedge

.critedge.loopexit194split:                       ; preds = %.lr.ph118.split.split, %bb.ap
  %.175.ph195.ph = phi i64 [ -1, %bb.ap ], [ -1, %.lr.ph118.split.split ]
  %.2.ph196.ph = phi i64 [ %.1, %bb.ap ], [ %.073117, %.lr.ph118.split.split ]
  br label %.critedge.loopexit194

..critedge.loopexit194_crit_edge:                 ; preds = %bb.ao
  %.078115.lcssa203 = phi i64 [ %.078115, %bb.ao ]
  %.078115.lcssa202 = phi i64 [ %.078115, %bb.ao ] ; 0 uses
  %split202 = phi i64 [ %i.eh, %bb.ao ]
  br label %.critedge.loopexit194

.critedge.loopexit194:                            ; preds = %.critedge.loopexit194split, %..critedge.loopexit194_crit_edge
  %.175.ph195 = phi i64 [ %.078115.lcssa203, %..critedge.loopexit194_crit_edge ], [ %.175.ph195.ph, %.critedge.loopexit194split ]
  %.2.ph196 = phi i64 [ %split202, %..critedge.loopexit194_crit_edge ], [ %.2.ph196.ph, %.critedge.loopexit194split ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit194, %.critedge.loopexit193, %.critedge.loopexit, %..critedge_crit_edge120.split.us, %sdslen.exit
end_hunk_4
