begin_hunk_0
  store ptr %.0.i142, ptr %i.gz, align 8, !tbaa !47
  br label %.thread161

.thread161:                                       ; preds = %raxGetData.exit147, %bb.ap, %bb.as, %raxIteratorAddChars.exit, %raxGetData.exit, %bb.l, %bb.i, %.thread157, %bb.a, %bb.c
  %.9 = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %.thread157 ], [ 1, %raxGetData.exit ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %raxIteratorAddChars.exit ], [ 1, %raxGetData.exit147 ], [ 0, %bb.ap ], [ 0, %bb.as ]
  ret i32 %.9
}

end_hunk_0
