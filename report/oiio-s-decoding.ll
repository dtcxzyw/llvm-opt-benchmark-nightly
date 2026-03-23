begin_hunk_0
39:                                               ; preds = %32
  %40 = getelementptr inbounds nuw i8, ptr %24, i64 4
  %41 = load i32, ptr %40, align 4, !tbaa !26
  %.fr = freeze i32 %41
  %42 = and i32 %.fr, -2
  %spec.select = icmp eq i32 %42, 2               ; 3 uses
  %43 = zext i1 %spec.select to i32
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_0
begin_hunk_1
  br i1 %spec.select, label %._crit_edge._crit_edge, label %122

._crit_edge._crit_edge:                           ; preds = %.lr.ph, %._crit_edge
  %spec.store.select14410 = phi i32 [ %spec.store.select14, %._crit_edge ], [ 0, %.lr.ph ]
  %spec.store.select7408 = phi i32 [ %spec.store.select7, %._crit_edge ], [ 0, %.lr.ph ]
  %.0154.lcssa406 = phi i32 [ %.0154.lcssa, %._crit_edge ], [ 0, %.lr.ph ]
  %.0158.lcssa404 = phi i32 [ %.0158.lcssa, %._crit_edge ], [ 0, %.lr.ph ]
  %.0171.lcssa402 = phi i32 [ %.0171.lcssa, %._crit_edge ], [ 0, %.lr.ph ]
  %.0175.lcssa400 = phi i32 [ %.0175.lcssa, %._crit_edge ], [ 0, %.lr.ph ]
  %.0179.lcssa398 = phi i32 [ %.0179.lcssa, %._crit_edge ], [ 0, %.lr.ph ]
  %.0183.lcssa396 = phi i32 [ %.0183.lcssa, %._crit_edge ], [ 0, %.lr.ph ]
  %.0187.lcssa394 = phi i32 [ %.0187.lcssa, %._crit_edge ], [ -2, %.lr.ph ]
  %.0191.lcssa392 = phi i32 [ %.0191.lcssa, %._crit_edge ], [ -2, %.lr.ph ]
  %.0195.lcssa390 = phi i32 [ %.0195.lcssa, %._crit_edge ], [ 0, %.lr.ph ]
  %.0199.lcssa388 = phi i32 [ %.0199.lcssa, %._crit_edge ], [ 0, %.lr.ph ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %24, i64 176
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %135
end_hunk_1
begin_hunk_2
  br label %.thread273

135:                                              ; preds = %._crit_edge._crit_edge, %122
  %spec.store.select14409 = phi i32 [ %spec.store.select14410, %._crit_edge._crit_edge ], [ %spec.store.select14, %122 ]
  %spec.store.select7407 = phi i32 [ %spec.store.select7408, %._crit_edge._crit_edge ], [ %spec.store.select7, %122 ]
  %.0154.lcssa405 = phi i32 [ %.0154.lcssa406, %._crit_edge._crit_edge ], [ %.0154.lcssa, %122 ]
  %.0158.lcssa403 = phi i32 [ %.0158.lcssa404, %._crit_edge._crit_edge ], [ %.0158.lcssa, %122 ]
  %.0171.lcssa401 = phi i32 [ %.0171.lcssa402, %._crit_edge._crit_edge ], [ %.0171.lcssa, %122 ]
  %.0175.lcssa399 = phi i32 [ %.0175.lcssa400, %._crit_edge._crit_edge ], [ %.0175.lcssa, %122 ]
  %.0179.lcssa397 = phi i32 [ %.0179.lcssa398, %._crit_edge._crit_edge ], [ %.0179.lcssa, %122 ]
  %.0183.lcssa395 = phi i32 [ %.0183.lcssa396, %._crit_edge._crit_edge ], [ %.0183.lcssa, %122 ]
  %.0187.lcssa393 = phi i32 [ %.0187.lcssa394, %._crit_edge._crit_edge ], [ %.0187.lcssa, %122 ]
  %.0191.lcssa391 = phi i32 [ %.0191.lcssa392, %._crit_edge._crit_edge ], [ %.0191.lcssa, %122 ]
  %.0195.lcssa389 = phi i32 [ %.0195.lcssa390, %._crit_edge._crit_edge ], [ %.0195.lcssa, %122 ]
  %.0199.lcssa387 = phi i32 [ %.0199.lcssa388, %._crit_edge._crit_edge ], [ %.0199.lcssa, %122 ]
  %136 = phi i32 [ %.pre, %._crit_edge._crit_edge ], [ %124, %122 ]
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 232
  store ptr @default_read_chunk, ptr %137, align 8, !tbaa !59
end_hunk_2
begin_hunk_3
  br label %140

140:                                              ; preds = %138, %135
  %141 = tail call ptr @internal_exr_match_decode(ptr noundef nonnull %2, i32 noundef %43, i32 noundef %.0199.lcssa387, i32 noundef %.0195.lcssa389, i32 noundef %.0191.lcssa391, i32 noundef %.0187.lcssa393, i32 noundef %.0183.lcssa395, i32 noundef %.0179.lcssa397, i32 noundef %.0175.lcssa399, i32 noundef %.0171.lcssa401, i32 noundef %.0154.lcssa405, i32 noundef %spec.store.select7407, i32 noundef %spec.store.select14409, i32 noundef %.0158.lcssa403) #6 ; 2 uses
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 256
  store ptr %141, ptr %142, align 8, !tbaa !61
  %.not235 = icmp eq ptr %141, null
end_hunk_3
