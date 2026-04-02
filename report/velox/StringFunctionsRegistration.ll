begin_hunk_0
bb.j:                                             ; preds = %_ZL21grapheme_break_simpleii.exit.thread
  %trunc = trunc nuw i32 %1 to i8
  switch i8 %trunc, label %bb.k [
    i8 5, label %bb.l
    i8 14, label %3
  ]

3:                                                ; preds = %bb.j
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %_ZL21grapheme_break_simpleii.exit.thread, %bb.j, %_ZL21grapheme_break_simpleii.exit, %bb.k, %3
  %.sink = phi i32 [ 19, %bb.j ], [ 1, %_ZL21grapheme_break_simpleii.exit ], [ %1, %bb.k ], [ 20, %3 ], [ %1, %_ZL21grapheme_break_simpleii.exit.thread ]
  %4 = phi i1 [ %i.y, %bb.j ], [ %i.v, %_ZL21grapheme_break_simpleii.exit ], [ %i.y, %bb.k ], [ %i.y, %3 ], [ %i.y, %_ZL21grapheme_break_simpleii.exit.thread ]
  store i32 %.sink, ptr %2, align 4, !tbaa !3
  ret i1 %4
}

end_hunk_0
