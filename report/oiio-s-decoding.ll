begin_hunk_0
39:                                               ; preds = %32
  %40 = getelementptr inbounds nuw i8, ptr %24, i64 4 ; [#uses=1 type=ptr]
  %41 = load i32, ptr %40, align 4, !tbaa !26     ; [#uses=1 type=i32]
  %42 = and i32 %41, -2                           ; [#uses=1 type=i32]
  %spec.select = icmp eq i32 %42, 2               ; [#uses=3 type=i1]
  %43 = zext i1 %spec.select to i32               ; [#uses=1 type=i32]
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; [#uses=1 type=ptr]
end_hunk_0
begin_hunk_1
  br i1 %spec.select, label %._crit_edge._crit_edge, label %122

._crit_edge._crit_edge:                           ; preds = %.lr.ph, %._crit_edge
  %spec.store.select14409 = phi i32 [ %spec.store.select14, %._crit_edge ], [ 0, %.lr.ph ] ; [#uses=1 type=i32]
  %spec.store.select7407 = phi i32 [ %spec.store.select7, %._crit_edge ], [ 0, %.lr.ph ] ; [#uses=1 type=i32]
  %.0154.lcssa405 = phi i32 [ %.0154.lcssa, %._crit_edge ], [ 0, %.lr.ph ] ; [#uses=1 type=i32]
  %.0158.lcssa403 = phi i32 [ %.0158.lcssa, %._crit_edge ], [ 0, %.lr.ph ] ; [#uses=1 type=i32]
  %.0171.lcssa401 = phi i32 [ %.0171.lcssa, %._crit_edge ], [ 0, %.lr.ph ] ; [#uses=1 type=i32]
  %.0175.lcssa399 = phi i32 [ %.0175.lcssa, %._crit_edge ], [ 0, %.lr.ph ] ; [#uses=1 type=i32]
  %.0179.lcssa397 = phi i32 [ %.0179.lcssa, %._crit_edge ], [ 0, %.lr.ph ] ; [#uses=1 type=i32]
  %.0183.lcssa395 = phi i32 [ %.0183.lcssa, %._crit_edge ], [ 0, %.lr.ph ] ; [#uses=1 type=i32]
  %.0187.lcssa393 = phi i32 [ %.0187.lcssa, %._crit_edge ], [ -2, %.lr.ph ] ; [#uses=1 type=i32]
  %.0191.lcssa391 = phi i32 [ %.0191.lcssa, %._crit_edge ], [ -2, %.lr.ph ] ; [#uses=1 type=i32]
  %.0195.lcssa389 = phi i32 [ %.0195.lcssa, %._crit_edge ], [ 0, %.lr.ph ] ; [#uses=1 type=i32]
  %.0199.lcssa387 = phi i32 [ %.0199.lcssa, %._crit_edge ], [ 0, %.lr.ph ] ; [#uses=1 type=i32]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %24, i64 176 ; [#uses=1 type=ptr]
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !58 ; [#uses=1 type=i32]
  br label %135
end_hunk_1
begin_hunk_2
  br label %.thread273

135:                                              ; preds = %._crit_edge._crit_edge, %122
  %spec.store.select14408 = phi i32 [ %spec.store.select14409, %._crit_edge._crit_edge ], [ %spec.store.select14, %122 ] ; [#uses=1 type=i32]
  %spec.store.select7406 = phi i32 [ %spec.store.select7407, %._crit_edge._crit_edge ], [ %spec.store.select7, %122 ] ; [#uses=1 type=i32]
  %.0154.lcssa404 = phi i32 [ %.0154.lcssa405, %._crit_edge._crit_edge ], [ %.0154.lcssa, %122 ] ; [#uses=1 type=i32]
  %.0158.lcssa402 = phi i32 [ %.0158.lcssa403, %._crit_edge._crit_edge ], [ %.0158.lcssa, %122 ] ; [#uses=1 type=i32]
  %.0171.lcssa400 = phi i32 [ %.0171.lcssa401, %._crit_edge._crit_edge ], [ %.0171.lcssa, %122 ] ; [#uses=1 type=i32]
  %.0175.lcssa398 = phi i32 [ %.0175.lcssa399, %._crit_edge._crit_edge ], [ %.0175.lcssa, %122 ] ; [#uses=1 type=i32]
  %.0179.lcssa396 = phi i32 [ %.0179.lcssa397, %._crit_edge._crit_edge ], [ %.0179.lcssa, %122 ] ; [#uses=1 type=i32]
  %.0183.lcssa394 = phi i32 [ %.0183.lcssa395, %._crit_edge._crit_edge ], [ %.0183.lcssa, %122 ] ; [#uses=1 type=i32]
  %.0187.lcssa392 = phi i32 [ %.0187.lcssa393, %._crit_edge._crit_edge ], [ %.0187.lcssa, %122 ] ; [#uses=1 type=i32]
  %.0191.lcssa390 = phi i32 [ %.0191.lcssa391, %._crit_edge._crit_edge ], [ %.0191.lcssa, %122 ] ; [#uses=1 type=i32]
  %.0195.lcssa388 = phi i32 [ %.0195.lcssa389, %._crit_edge._crit_edge ], [ %.0195.lcssa, %122 ] ; [#uses=1 type=i32]
  %.0199.lcssa386 = phi i32 [ %.0199.lcssa387, %._crit_edge._crit_edge ], [ %.0199.lcssa, %122 ] ; [#uses=1 type=i32]
  %136 = phi i32 [ %.pre, %._crit_edge._crit_edge ], [ %124, %122 ] ; [#uses=1 type=i32]
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 232 ; [#uses=1 type=ptr]
  store ptr @default_read_chunk, ptr %137, align 8, !tbaa !59
end_hunk_2
begin_hunk_3
  br label %140

140:                                              ; preds = %138, %135
  %141 = tail call ptr @internal_exr_match_decode(ptr noundef nonnull %2, i32 noundef %43, i32 noundef %.0199.lcssa386, i32 noundef %.0195.lcssa388, i32 noundef %.0191.lcssa390, i32 noundef %.0187.lcssa392, i32 noundef %.0183.lcssa394, i32 noundef %.0179.lcssa396, i32 noundef %.0175.lcssa398, i32 noundef %.0171.lcssa400, i32 noundef %.0154.lcssa404, i32 noundef %spec.store.select7406, i32 noundef %spec.store.select14408, i32 noundef %.0158.lcssa402) #6 ; [#uses=2 type=ptr]
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 256 ; [#uses=1 type=ptr]
  store ptr %141, ptr %142, align 8, !tbaa !61
  %.not235 = icmp eq ptr %141, null               ; [#uses=1 type=i1]
end_hunk_3
