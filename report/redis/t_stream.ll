inline.NumInlined: 278
inline.NumDeleted: 15
begin_hunk_0_@streamAppendItem:bb.a
.lr.ph251:                                        ; preds = %.lr.ph251.preheader, %bb.ba
  %lsr.iv = phi ptr [ %1, %.lr.ph251.preheader ], [ %scevgep320, %bb.ba ] ; 2 uses
  %i.fq = phi ptr [ %i.gm, %bb.ba ], [ %i.fo, %.lr.ph251.preheader ]
  %.0136250 = phi i64 [ %i.gn, %bb.ba ], [ 0, %.lr.ph251.preheader ] ; 4 uses
  %i.fr = load ptr, ptr %lsr.iv, align 8, !tbaa !144
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !46 ; 6 uses
end_hunk_0
begin_hunk_1_@streamAppendItem:bb.a
  br label %.thread243

..thread243_crit_edge:                            ; preds = %bb.az
  %.0136250.lcssa321 = phi i64 [ %.0136250, %bb.az ]
  %.0136250.lcssa322 = phi i64 [ %.0136250, %bb.az ] ; 0 uses
  br label %.thread243

.thread243:                                       ; preds = %.thread243split, %..thread243_crit_edge
  %.0136250.lcssa = phi i64 [ %.0136250.lcssa321, %..thread243_crit_edge ], [ %.0136250.lcssa321.a, %.thread243split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  br label %.loopexit
end_hunk_1
begin_hunk_2_@xclaimCommand:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %lsr.iv = phi ptr [ %.0192, %.lr.ph.preheader ], [ %scevgep340, %bb.p ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 5, %.lr.ph.preheader ] ; 4 uses
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !204
  %i.br = shl nuw nsw i64 %indvars.iv, 3
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.br
end_hunk_2
begin_hunk_3_@xclaimCommand:bb.a
  br label %._crit_edge.loopexit

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %.lr.ph ]
  %indvars.iv.lcssa.a = phi i64 [ %indvars.iv, %.lr.ph ] ; 0 uses
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.lr.ph.._crit_edge.loopexit_crit_edge
  %.0189.lcssa.ph.in = phi i64 [ %indvars.iv.lcssa, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %indvars.iv.next.lcssa, %._crit_edge.loopexitsplit ]
  %.0189.lcssa.ph = trunc i64 %.0189.lcssa.ph.in to i32
  br label %._crit_edge

end_hunk_3
begin_hunk_4_@xinfoReplyWithStreamInfo:bb.a
  br label %.lr.ph211

.lr.ph211:                                        ; preds = %.lr.ph211.preheader, %sdslen.exit
  %.0163209 = phi i64 [ %i.gh, %sdslen.exit ], [ 0, %.lr.ph211.preheader ] ; 4 uses
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %.not181 = icmp eq i64 %i.ev, 0
  %i.ew = icmp slt i64 %.0163209, %i.ev
end_hunk_4
begin_hunk_5_@xinfoReplyWithStreamInfo:bb.a
  br label %.critedge.loopexit

.lr.ph211..critedge.loopexit_crit_edge:           ; preds = %.lr.ph211
  %.0163209.lcssa = phi i64 [ %.0163209, %.lr.ph211 ]
  %.0163209.lcssa.a = phi i64 [ %.0163209, %.lr.ph211 ] ; 0 uses
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.critedge.loopexitsplit, %.lr.ph211..critedge.loopexit_crit_edge
  %.0163.lcssa.ph = phi i64 [ %.0163209.lcssa, %.lr.ph211..critedge.loopexit_crit_edge ], [ %.lcssa234, %.critedge.loopexitsplit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.ay
end_hunk_5
begin_hunk_6_@xinfoReplyWithStreamInfo:bb.a
  br label %.lr.ph217

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %addReplyStreamID.exit202
  %.0161216 = phi i64 [ %i.ik, %addReplyStreamID.exit202 ], [ 0, %.lr.ph217.preheader ] ; 4 uses
  %i.hr = load i64, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %.not184 = icmp eq i64 %i.hr, 0
  %i.hs = icmp slt i64 %.0161216, %i.hr
end_hunk_6
begin_hunk_7_@xinfoReplyWithStreamInfo:bb.a
  br label %.critedge3.loopexit

.lr.ph217..critedge3.loopexit_crit_edge:          ; preds = %.lr.ph217
  %.0161216.lcssa = phi i64 [ %.0161216, %.lr.ph217 ]
  %.0161216.lcssa.a = phi i64 [ %.0161216, %.lr.ph217 ] ; 0 uses
  br label %.critedge3.loopexit

.critedge3.loopexit:                              ; preds = %.critedge3.loopexitsplit, %.lr.ph217..critedge3.loopexit_crit_edge
  %.0161.lcssa.ph = phi i64 [ %.0161216.lcssa, %.lr.ph217..critedge3.loopexit_crit_edge ], [ %.lcssa237, %.critedge3.loopexitsplit ]
  br label %.critedge3

.critedge3:                                       ; preds = %.critedge3.loopexit, %sdslen.exit197
end_hunk_7
