begin_hunk_0
bb.j:                                             ; preds = %_ZL21grapheme_break_simpleii.exit.thread
  %trunc = trunc nuw i32 %1 to i8
  switch i8 %trunc, label %bb.k [
    i8 5, label %3
    i8 14, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %_ZL21grapheme_break_simpleii.exit.thread, %bb.j, %_ZL21grapheme_break_simpleii.exit, %bb.k
  %.sink = phi i32 [ 20, %bb.j ], [ %1, %bb.k ], [ 1, %_ZL21grapheme_break_simpleii.exit ], [ %1, %_ZL21grapheme_break_simpleii.exit.thread ]
  %.ph = phi i1 [ %i.y, %bb.j ], [ %i.y, %bb.k ], [ %i.v, %_ZL21grapheme_break_simpleii.exit ], [ %i.y, %_ZL21grapheme_break_simpleii.exit.thread ]
  store i32 %.sink, ptr %2, align 4, !tbaa !3
  br label %3

3:                                                ; preds = %bb.l, %bb.j
  %4 = phi i1 [ %i.y, %bb.j ], [ %.ph, %bb.l ]
  ret i1 %4
}

end_hunk_0
