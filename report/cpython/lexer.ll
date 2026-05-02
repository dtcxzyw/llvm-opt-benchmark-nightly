inline.NumInlined: 86
inline.NumDeleted: 14
begin_hunk_0_@tok_get_normal_mode:bb.a
  br i1 %or.cond1253, label %bb.dk, label %.preheader

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df
  %.11123 = phi i32 [ %.01122, %bb.di ], [ %.01122, %bb.dh ], [ %.01122, %bb.dg ], [ %.01122, %bb.df ], [ 1, %bb.dj ] ; 3 uses
  %.11121 = phi i32 [ 1, %bb.di ], [ %.01120, %bb.dh ], [ %.01120, %bb.dg ], [ %.01120, %bb.df ], [ %.01120, %bb.dj ] ; 3 uses
  %.11119 = phi i32 [ %.01118, %bb.di ], [ %.01118, %bb.dh ], [ 1, %bb.dg ], [ %.01118, %bb.df ], [ %.01118, %bb.dj ] ; 2 uses
  %.11115 = phi i32 [ %.01114, %bb.di ], [ 1, %bb.dh ], [ %.01114, %bb.dg ], [ %.01114, %bb.df ], [ %.01114, %bb.dj ] ; 2 uses
  %.11113 = phi i32 [ %.01112, %bb.di ], [ %.01112, %bb.dh ], [ %.01112, %bb.dg ], [ 1, %bb.df ], [ %.01112, %bb.dj ] ; 2 uses
  br label %bb.dl

bb.dl:                                            ; preds = %bb.ds, %bb.dk
end_hunk_0
begin_hunk_1_@tok_get_normal_mode:bb.a
  ]

bb.du:                                            ; preds = %tok_nextc.exit1319, %tok_nextc.exit1319
  %3 = icmp ne i32 %.11119, 0                     ; 4 uses
  %4 = icmp ne i32 %.11113, 0                     ; 3 uses
  %or.cond.i = and i1 %3, %4
  br i1 %or.cond.i, label %bb.eb, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %5 = icmp ne i32 %.11115, 0
  %or.cond3.i = and i1 %3, %5
  br i1 %or.cond3.i, label %bb.eb, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %6 = icmp ne i32 %.11121, 0                     ; 3 uses
  %or.cond5.i = and i1 %6, %3
  br i1 %or.cond5.i, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %7 = icmp ne i32 %.11123, 0                     ; 3 uses
  %or.cond7.i = and i1 %7, %3
  br i1 %or.cond7.i, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %or.cond9.i = and i1 %6, %4
  br i1 %or.cond9.i, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %or.cond11.i = and i1 %7, %4
  br i1 %or.cond11.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %or.cond13.i = and i1 %7, %6
  br i1 %or.cond13.i, label %bb.eb, label %maybe_raise_syntax_error_for_string_prefixes.exit

bb.eb:                                            ; preds = %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %bb.ea
  %.str.35.sink.i = phi ptr [ @.str.34, %bb.dz ], [ @.str.33, %bb.dy ], [ @.str.32, %bb.dx ], [ @.str.31, %bb.dw ], [ @.str.30, %bb.dv ], [ @.str.29, %bb.du ], [ @.str.35, %bb.ea ]
end_hunk_1
begin_hunk_2_@tok_get_normal_mode:bb.a
  br label %.thread1499

maybe_raise_syntax_error_for_string_prefixes.exit: ; preds = %bb.ea
  %8 = or i32 %.11121, %.11123
  %or.cond45.not = icmp eq i32 %8, 0
  br i1 %or.cond45.not, label %bb.mz, label %.thread1523

.preheader:                                       ; preds = %bb.dj, %.preheader.backedge
  %.pre39.i1322 = phi ptr [ %.pre39.i1322.be, %.preheader.backedge ], [ %.pre39.i1313, %bb.dj ]
end_hunk_2
