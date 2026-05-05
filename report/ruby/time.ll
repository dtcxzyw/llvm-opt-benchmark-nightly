inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@time_init_parse:bb.a

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %bb.at
  %lsr.iv = phi i64 [ %i.ey, %.lr.ph196.preheader ], [ %lsr.iv.next, %bb.at ]
  %i.ez = phi ptr [ %i.fe, %bb.at ], [ %.promoted198.pre, %.lr.ph196.preheader ] ; 4 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !53
  %i.fb = sext i8 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, -58
end_hunk_0
begin_hunk_1_@time_init_parse:bb.a
  br i1 %exitcond.not, label %.critedge2.loopexitsplit, label %.lr.ph196, !llvm.loop !73

.critedge2.loopexitsplit:                         ; preds = %bb.at
  %.promoted198.ph.ph = phi ptr [ %scevgep, %bb.at ]
  br label %.critedge2.loopexit

.lr.ph196..critedge2.loopexit_crit_edge:          ; preds = %.lr.ph196
  %.lcssa271 = phi ptr [ %i.ez, %.lr.ph196 ]
  %.lcssa272 = phi ptr [ %i.ez, %.lr.ph196 ]      ; 0 uses
  br label %.critedge2.loopexit

.critedge2.loopexit:                              ; preds = %.critedge2.loopexitsplit, %.lr.ph196..critedge2.loopexit_crit_edge
  %.promoted198.ph = phi ptr [ %.lcssa271, %.lr.ph196..critedge2.loopexit_crit_edge ], [ %.promoted198.ph.ph, %.critedge2.loopexitsplit ]
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.y, %.preheader, %bb.z, %bb.x, %bb.aa, %.critedge.thread257, %bb.aq, %bb.ap, %bb.t, %bb.u, %bb.p, %bb.q
end_hunk_1
begin_hunk_2_@time_init_parse:bb.a

.lr.ph199:                                        ; preds = %.lr.ph199.preheader, %bb.au
  %lsr.iv274 = phi i64 [ %i.fh, %.lr.ph199.preheader ], [ %lsr.iv.next275, %bb.au ]
  %i.fi = phi ptr [ %i.fo, %bb.au ], [ %.promoted198, %.lr.ph199.preheader ] ; 5 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !53  ; 2 uses
  %i.fk = sext i8 %i.fj to i32
  %i.fl = icmp ne i8 %i.fj, 32
end_hunk_2
begin_hunk_3_@time_init_parse:bb.a

.critedge4.loopexitsplit:                         ; preds = %bb.au
  %.lcssa277 = phi ptr [ %i.fo, %bb.au ]
  %.lcssa191.ph.ph = phi ptr [ %scevgep212, %bb.au ]
  br label %.critedge4.loopexit

.lr.ph199..critedge4.loopexit_crit_edge:          ; preds = %.lr.ph199
  %.lcssa276 = phi ptr [ %i.fi, %.lr.ph199 ]
  %split274 = phi ptr [ %i.fi, %.lr.ph199 ]       ; 0 uses
  %.lcssa278 = phi ptr [ %i.fi, %.lr.ph199 ]
  br label %.critedge4.loopexit

.critedge4.loopexit:                              ; preds = %.critedge4.loopexitsplit, %.lr.ph199..critedge4.loopexit_crit_edge
  %.promoted203223 = phi ptr [ %.lcssa276, %.lr.ph199..critedge4.loopexit_crit_edge ], [ %.lcssa277, %.critedge4.loopexitsplit ] ; 2 uses
  %.lcssa191.ph = phi ptr [ %.lcssa278, %.lr.ph199..critedge4.loopexit_crit_edge ], [ %.lcssa191.ph.ph, %.critedge4.loopexitsplit ]
  %.pre = ptrtoint ptr %.promoted203223 to i64
  br label %.critedge4

end_hunk_3
begin_hunk_4_@time_init_parse:bb.a

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.av
  %lsr.iv280 = phi i64 [ %i.fr, %.lr.ph204.preheader ], [ %lsr.iv.next281, %bb.av ]
  %i.fs = phi ptr [ %i.fy, %bb.av ], [ %.promoted203, %.lr.ph204.preheader ] ; 5 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !53  ; 2 uses
  %i.fu = sext i8 %i.ft to i32
  %i.fv = icmp ne i8 %i.ft, 32
end_hunk_4
begin_hunk_5_@time_init_parse:bb.a

.critedge6.loopexitsplit:                         ; preds = %bb.av
  %.lcssa283.a = phi ptr [ %i.fy, %bb.av ]
  %.lcssa.ph.ph = phi ptr [ %scevgep215, %bb.av ]
  br label %.critedge6.loopexit

.lr.ph204..critedge6.loopexit_crit_edge:          ; preds = %.lr.ph204
  %.lcssa283 = phi ptr [ %i.fs, %.lr.ph204 ]
  %split281 = phi ptr [ %i.fs, %.lr.ph204 ]       ; 0 uses
  %.lcssa284 = phi ptr [ %i.fs, %.lr.ph204 ]
  br label %.critedge6.loopexit

.critedge6.loopexit:                              ; preds = %.critedge6.loopexitsplit, %.lr.ph204..critedge6.loopexit_crit_edge
  %.promoted208225 = phi ptr [ %.lcssa283, %.lr.ph204..critedge6.loopexit_crit_edge ], [ %.lcssa283.a, %.critedge6.loopexitsplit ] ; 2 uses
  %.lcssa.ph = phi ptr [ %.lcssa284, %.lr.ph204..critedge6.loopexit_crit_edge ], [ %.lcssa.ph.ph, %.critedge6.loopexitsplit ]
  %.pre226 = ptrtoint ptr %.promoted208225 to i64
  br label %.critedge6

end_hunk_5
