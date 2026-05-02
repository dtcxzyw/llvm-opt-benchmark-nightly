inline.NumInlined: 86
inline.NumDeleted: 14
begin_hunk_0_@tok_get_normal_mode:bb.a
  br i1 %or.cond1253, label %bb.dk, label %.preheader

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df
  %.11123 = phi i32 [ %.01122, %bb.di ], [ %.01122, %bb.dh ], [ %.01122, %bb.dg ], [ %.01122, %bb.df ], [ 1, %bb.dj ] ; 5 uses
  %.11121 = phi i32 [ 1, %bb.di ], [ %.01120, %bb.dh ], [ %.01120, %bb.dg ], [ %.01120, %bb.df ], [ %.01120, %bb.dj ] ; 5 uses
  %.11119 = phi i32 [ %.01118, %bb.di ], [ %.01118, %bb.dh ], [ 1, %bb.dg ], [ %.01118, %bb.df ], [ %.01118, %bb.dj ] ; 5 uses
  %.11115 = phi i32 [ %.01114, %bb.di ], [ 1, %bb.dh ], [ %.01114, %bb.dg ], [ %.01114, %bb.df ], [ %.01114, %bb.dj ] ; 2 uses
  %.11113 = phi i32 [ %.01112, %bb.di ], [ %.01112, %bb.dh ], [ %.01112, %bb.dg ], [ 1, %bb.df ], [ %.01112, %bb.dj ] ; 4 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.ds, %bb.dk
end_hunk_0
begin_hunk_1_@tok_get_normal_mode:bb.a
  ]

bb.du:                                            ; preds = %tok_nextc.exit1319, %tok_nextc.exit1319
  %3 = and i32 %.11113, %.11119
  %or.cond.not.i = icmp eq i32 %3, 0
  br i1 %or.cond.not.i, label %bb.dv, label %bb.eb

bb.dv:                                            ; preds = %bb.du
  %4 = and i32 %.11115, %.11119
  %or.cond3.not.i = icmp eq i32 %4, 0
  br i1 %or.cond3.not.i, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %5 = and i32 %.11119, %.11121
  %or.cond5.not.i = icmp eq i32 %5, 0
  br i1 %or.cond5.not.i, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  %6 = and i32 %.11119, %.11123
  %or.cond7.not.i = icmp eq i32 %6, 0
  br i1 %or.cond7.not.i, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %7 = and i32 %.11113, %.11121
  %or.cond9.not.i = icmp eq i32 %7, 0
  br i1 %or.cond9.not.i, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %8 = and i32 %.11113, %.11123
  %or.cond11.not.i = icmp eq i32 %8, 0
  br i1 %or.cond11.not.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %9 = and i32 %.11121, %.11123
  %or.cond13.not.i = icmp eq i32 %9, 0
  br i1 %or.cond13.not.i, label %maybe_raise_syntax_error_for_string_prefixes.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %bb.ea
  %.str.35.sink.i = phi ptr [ @.str.34, %bb.dz ], [ @.str.33, %bb.dy ], [ @.str.32, %bb.dx ], [ @.str.31, %bb.dw ], [ @.str.30, %bb.dv ], [ @.str.29, %bb.du ], [ @.str.35, %bb.ea ]
end_hunk_1
begin_hunk_2_@tok_get_normal_mode:bb.a
  br label %.thread1499

maybe_raise_syntax_error_for_string_prefixes.exit: ; preds = %bb.ea
  %10 = trunc nuw i32 %.11121 to i1
  %11 = trunc nuw i32 %.11123 to i1
  %or.cond45 = select i1 %10, i1 true, i1 %11
  br i1 %or.cond45, label %.thread1523, label %bb.mz

.preheader:                                       ; preds = %bb.dj, %.preheader.backedge
  %.pre39.i1322 = phi ptr [ %.pre39.i1322.be, %.preheader.backedge ], [ %.pre39.i1313, %bb.dj ]
end_hunk_2
