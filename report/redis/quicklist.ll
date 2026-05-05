inline.NumInlined: 67
inline.NumDeleted: 3
begin_hunk_0_@__quicklistDelNode:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef ptr @_quicklistBookmarkFindByNode(ptr noundef readonly captures(ret: address, provenance) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 64424509440
end_hunk_0
begin_hunk_1_@_quicklistBookmarkFindByNode:bb.a
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %scevgep = getelementptr i8, ptr %lsr.iv, i64 16
  %lsr.iv.next = add i64 %lsr.iv13, -1            ; 2 uses
  %exitcond.not = icmp eq i64 %lsr.iv.next, 0
end_hunk_1
begin_hunk_2_@_quicklistBookmarkFindByNode:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %lsr.iv13 = phi i64 [ %wide.trip.count, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.b ]
  %lsr.iv = phi ptr [ %i.a, %.lr.ph.preheader ], [ %scevgep, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %2 = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv
  %i.f = load ptr, ptr %lsr.iv, align 8, !tbaa !35
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %.lr.ph.._crit_edge.loopexit_crit_edge, label %bb.b

._crit_edge.loopexitsplit:                        ; preds = %bb.b
  %.08.ph.ph = phi ptr [ null, %bb.b ]
  br label %._crit_edge.loopexit

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %lsr.iv.lcssa = phi ptr [ %lsr.iv, %.lr.ph ]
  %split = phi ptr [ %2, %.lr.ph ]                ; 0 uses
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.lr.ph.._crit_edge.loopexit_crit_edge
  %.08.ph = phi ptr [ %lsr.iv.lcssa, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %.08.ph.ph, %._crit_edge.loopexitsplit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
end_hunk_2
begin_hunk_3_@quicklistBookmarkCreate:bb.a
; Function Attrs: nofree norecurse nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @_quicklistBookmarkFindByName(ptr noundef readonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 64424509440
end_hunk_3
begin_hunk_4_@_quicklistBookmarkFindByName:bb.a
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %scevgep = getelementptr i8, ptr %lsr.iv, i64 16
  %lsr.iv.next = add i64 %lsr.iv15, -1            ; 2 uses
  %exitcond.not = icmp eq i64 %lsr.iv.next, 0
end_hunk_4
begin_hunk_5_@_quicklistBookmarkFindByName:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %lsr.iv15 = phi i64 [ %wide.trip.count, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.b ]
  %lsr.iv = phi ptr [ %i.a, %.lr.ph.preheader ], [ %scevgep, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %2 = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv
  %scevgep14 = getelementptr i8, ptr %lsr.iv, i64 8
  %i.f = load ptr, ptr %scevgep14, align 8, !tbaa !25
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %1) #26
end_hunk_5
begin_hunk_6_@_quicklistBookmarkFindByName:bb.a
  br i1 %.not, label %.lr.ph.._crit_edge.loopexit_crit_edge, label %bb.b

._crit_edge.loopexitsplit:                        ; preds = %bb.b
  %.08.ph.ph = phi ptr [ null, %bb.b ]
  br label %._crit_edge.loopexit

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %lsr.iv.lcssa = phi ptr [ %lsr.iv, %.lr.ph ]
  %split = phi ptr [ %2, %.lr.ph ]                ; 0 uses
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexitsplit, %.lr.ph.._crit_edge.loopexit_crit_edge
  %.08.ph = phi ptr [ %lsr.iv.lcssa, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %.08.ph.ph, %._crit_edge.loopexitsplit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
end_hunk_6
