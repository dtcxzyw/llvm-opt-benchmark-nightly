inline.NumInlined: 125
inline.NumDeleted: 53
begin_hunk_0_@TIFFWriteDirectorySec:bb.a
  br label %bb.q

bb.ng:                                            ; preds = %._crit_edge
  %.0564.lcssa2171 = phi ptr [ %.0564, %._crit_edge ]
  %.0564.lcssa2137 = phi ptr [ %.0564, %._crit_edge ]
  %.0565.lcssa2060 = phi i32 [ %.0565, %._crit_edge ]
  %.0564.lcssa2034 = phi ptr [ %.0564, %._crit_edge ] ; 6 uses
  br i1 %.not598, label %bb.nk, label %bb.nh
end_hunk_0
begin_hunk_1_@TIFFWriteDirectorySec:bb.a
  br i1 %.not1321, label %._crit_edge1315, label %.lr.ph1314.preheader

.lr.ph1314.preheader:                             ; preds = %bb.np
  %scevgep2129 = getelementptr i8, ptr %.0564.lcssa2171, i64 2
  %scevgep2133 = getelementptr i8, ptr %i.atd, i64 6
  br label %.lr.ph1314

end_hunk_1
begin_hunk_2_@TIFFWriteDirectorySec:bb.a

.lr.ph1308.preheader:                             ; preds = %bb.nz
  %scevgep2115 = getelementptr i8, ptr %i.atd, i64 10
  %scevgep2120 = getelementptr i8, ptr %.0564.lcssa2137, i64 2
  br label %.lr.ph1308

.lr.ph1308:                                       ; preds = %.lr.ph1308.preheader, %bb.oe
end_hunk_2
begin_hunk_3_@_TIFFRewriteField:bb.a
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.w
  %.2294381 = phi i64 [ %.1293, %.lr.ph ], [ %i.bg, %bb.w ] ; 3 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !106
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !98
  %i.ay = call i64 %i.aw(ptr noundef %i.ax, ptr noundef nonnull %i.b, i64 noundef %.1297) #8
end_hunk_3
begin_hunk_4_@_TIFFRewriteField:bb.a
  br i1 %.not313, label %._crit_edge.loopexitsplit, label %bb.r

._crit_edge.loopexitsplit:                        ; preds = %bb.w
  %.lcssa.ph = phi i1 [ %i.bf, %bb.w ]
  %.lcssa447 = phi i64 [ %i.bg, %bb.w ]
  br label %._crit_edge.loopexit

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.v
  %.2294381.lcssa448 = phi i64 [ %.2294381, %bb.v ]
  %split = phi i1 [ %i.bf, %bb.v ]
  %.2294381.lcssa448.a = phi i64 [ %.2294381, %bb.v ] ; 0 uses
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.._crit_edge.loopexit_crit_edge
  %.lcssa = phi i1 [ %split, %.._crit_edge.loopexit_crit_edge ], [ %.lcssa.ph, %._crit_edge.loopexitsplit ]
  %.2294.lcssa.ph = phi i64 [ %.2294381.lcssa448, %.._crit_edge.loopexit_crit_edge ], [ %.lcssa447, %._crit_edge.loopexitsplit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
end_hunk_4
