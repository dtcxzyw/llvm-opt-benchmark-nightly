inline.NumInlined: 169
inline.NumDeleted: 58
begin_hunk_0_@call_show_warning:bb.a
  br label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.us.i:                         ; preds = %PyUnicode_READ.exit.us.i.preheader, %bb.r
  %.01.us.i = phi i64 [ %i.at, %bb.r ], [ 0, %PyUnicode_READ.exit.us.i.preheader ] ; 4 uses
  %i.ar = getelementptr i8, ptr %.0.i.i, i64 %.01.us.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !20
  switch i8 %i.as, label %PyUnicode_READ.exit.us.i.PyUnicode_READ.exit._crit_edge.i.loopexit44_crit_edge [
end_hunk_0
begin_hunk_1_@call_show_warning:bb.a
  br i1 %exitcond16.not.i, label %PyUnicode_READ.exit._crit_edge.i.loopexit44split, label %PyUnicode_READ.exit.us.i, !llvm.loop !145

PyUnicode_READ.exit.us6.i:                        ; preds = %PyUnicode_READ.exit.us6.i.preheader, %bb.s
  %.01.us5.i = phi i64 [ %i.aw, %bb.s ], [ 0, %PyUnicode_READ.exit.us6.i.preheader ] ; 4 uses
  %i.au = shl nuw i64 %.01.us5.i, 1
  %scevgep = getelementptr i8, ptr %.0.i.i, i64 %i.au
  %i.av = load i16, ptr %scevgep, align 2, !tbaa !146
end_hunk_1
begin_hunk_2_@call_show_warning:bb.a
  br i1 %exitcond.not.i, label %PyUnicode_READ.exit._crit_edge.i.loopexit46split, label %PyUnicode_READ.exit.us6.i, !llvm.loop !145

PyUnicode_READ.exit.i:                            ; preds = %PyUnicode_READ.exit.i.preheader, %bb.t
  %.01.i = phi i64 [ %i.az, %bb.t ], [ 0, %PyUnicode_READ.exit.i.preheader ] ; 4 uses
  %i.ax = shl i64 %.01.i, 2
  %scevgep50 = getelementptr i8, ptr %.0.i.i, i64 %i.ax
  %i.ay = load i32, ptr %scevgep50, align 4, !tbaa !7
end_hunk_2
begin_hunk_3_@call_show_warning:bb.a
  br i1 %exitcond17.not.i, label %PyUnicode_READ.exit._crit_edge.i.loopexitsplit, label %PyUnicode_READ.exit.i, !llvm.loop !145

PyUnicode_READ.exit._crit_edge.i.loopexitsplit:   ; preds = %bb.t
  %.0.lcssa.i.ph.ph = phi i64 [ %.val.i, %bb.t ]
  br label %PyUnicode_READ.exit._crit_edge.i.loopexit

PyUnicode_READ.exit.i.PyUnicode_READ.exit._crit_edge.i.loopexit_crit_edge: ; preds = %PyUnicode_READ.exit.i
  %.01.i.lcssa = phi i64 [ %.01.i, %PyUnicode_READ.exit.i ]
  %.01.i.lcssa.a = phi i64 [ %.01.i, %PyUnicode_READ.exit.i ] ; 0 uses
  br label %PyUnicode_READ.exit._crit_edge.i.loopexit

PyUnicode_READ.exit._crit_edge.i.loopexit:        ; preds = %PyUnicode_READ.exit._crit_edge.i.loopexitsplit, %PyUnicode_READ.exit.i.PyUnicode_READ.exit._crit_edge.i.loopexit_crit_edge
  %.0.lcssa.i.ph = phi i64 [ %.01.i.lcssa, %PyUnicode_READ.exit.i.PyUnicode_READ.exit._crit_edge.i.loopexit_crit_edge ], [ %.0.lcssa.i.ph.ph, %PyUnicode_READ.exit._crit_edge.i.loopexitsplit ]
  br label %PyUnicode_READ.exit._crit_edge.i

PyUnicode_READ.exit._crit_edge.i.loopexit44split: ; preds = %bb.r
  %.0.lcssa.i.ph45.ph = phi i64 [ %.val.i, %bb.r ]
  br label %PyUnicode_READ.exit._crit_edge.i.loopexit44

PyUnicode_READ.exit.us.i.PyUnicode_READ.exit._crit_edge.i.loopexit44_crit_edge: ; preds = %PyUnicode_READ.exit.us.i
  %.01.us.i.lcssa = phi i64 [ %.01.us.i, %PyUnicode_READ.exit.us.i ]
  %.01.us.i.lcssa.a = phi i64 [ %.01.us.i, %PyUnicode_READ.exit.us.i ] ; 0 uses
  br label %PyUnicode_READ.exit._crit_edge.i.loopexit44

PyUnicode_READ.exit._crit_edge.i.loopexit44:      ; preds = %PyUnicode_READ.exit._crit_edge.i.loopexit44split, %PyUnicode_READ.exit.us.i.PyUnicode_READ.exit._crit_edge.i.loopexit44_crit_edge
  %.0.lcssa.i.ph45 = phi i64 [ %.01.us.i.lcssa, %PyUnicode_READ.exit.us.i.PyUnicode_READ.exit._crit_edge.i.loopexit44_crit_edge ], [ %.0.lcssa.i.ph45.ph, %PyUnicode_READ.exit._crit_edge.i.loopexit44split ]
  br label %PyUnicode_READ.exit._crit_edge.i

PyUnicode_READ.exit._crit_edge.i.loopexit46split: ; preds = %bb.s
  %.0.lcssa.i.ph47.ph = phi i64 [ %.val.i, %bb.s ]
  br label %PyUnicode_READ.exit._crit_edge.i.loopexit46

PyUnicode_READ.exit.us6.i.PyUnicode_READ.exit._crit_edge.i.loopexit46_crit_edge: ; preds = %PyUnicode_READ.exit.us6.i
  %.01.us5.i.lcssa = phi i64 [ %.01.us5.i, %PyUnicode_READ.exit.us6.i ]
  %.01.us5.i.lcssa.a = phi i64 [ %.01.us5.i, %PyUnicode_READ.exit.us6.i ] ; 0 uses
  br label %PyUnicode_READ.exit._crit_edge.i.loopexit46

PyUnicode_READ.exit._crit_edge.i.loopexit46:      ; preds = %PyUnicode_READ.exit._crit_edge.i.loopexit46split, %PyUnicode_READ.exit.us6.i.PyUnicode_READ.exit._crit_edge.i.loopexit46_crit_edge
  %.0.lcssa.i.ph47 = phi i64 [ %.01.us5.i.lcssa, %PyUnicode_READ.exit.us6.i.PyUnicode_READ.exit._crit_edge.i.loopexit46_crit_edge ], [ %.0.lcssa.i.ph47.ph, %PyUnicode_READ.exit._crit_edge.i.loopexit46split ]
  br label %PyUnicode_READ.exit._crit_edge.i

PyUnicode_READ.exit._crit_edge.i:                 ; preds = %PyUnicode_READ.exit._crit_edge.i.loopexit46, %PyUnicode_READ.exit._crit_edge.i.loopexit44, %PyUnicode_READ.exit._crit_edge.i.loopexit, %_PyUnicode_DATA.exit.i
end_hunk_3
begin_hunk_4_@filter_search:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Py_DECREF.exit71
  %.05228 = phi i64 [ 0, %.lr.ph ], [ %i.bm, %Py_DECREF.exit71 ] ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = shl i64 %.05228, 3
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.e
end_hunk_4
begin_hunk_5_@filter_search:bb.a
  br label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.05228.lcssa203 = phi i64 [ %.05228, %bb.c ]
  %.05228.lcssa202 = phi i64 [ %.05228, %bb.c ]   ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %split.a, %._crit_edge
  %.05228.lcssa = phi i64 [ %.05228.lcssa203, %._crit_edge ], [ %.05228.lcssa201, %split.a ]
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.22, ptr noundef %5, i64 noundef %.05228.lcssa) #7 ; 0 uses
  br label %Py_DECREF.exit71.thread
end_hunk_5
