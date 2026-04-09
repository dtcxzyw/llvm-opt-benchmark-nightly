inline.NumInlined: 260
inline.NumDeleted: 91
begin_hunk_0_@proc_options:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %proc_W_option.exit.thread
  %.0156497 = phi i64 [ %.0156492, %.lr.ph ], [ %.0156, %proc_W_option.exit.thread ] ; 55 uses
  %.0156.in495 = phi i64 [ %0, %.lr.ph ], [ %.4, %proc_W_option.exit.thread ] ; 17 uses
  %.pn494 = phi ptr [ %1, %.lr.ph ], [ %.4161, %proc_W_option.exit.thread ] ; 15 uses
  %.0266493 = phi i32 [ %i.i, %.lr.ph ], [ %.3, %proc_W_option.exit.thread ] ; 4 uses
  %.0157496 = getelementptr i8, ptr %.pn494, i64 8 ; 19 uses
end_hunk_0
begin_hunk_1_@proc_options:bb.a
  unreachable

proc_long_options.exit:                           ; preds = %bb.ef, %bb.el, %bb.em, %.thread.thread.i, %.thread415.thread.i, %bb.fh, %set_option_encoding_once.exit.i, %set_option_encoding_once.exit413.i, %bb.gh, %bb.gj, %bb.gn, %bb.gp, %bb.gr, %bb.gv, %bb.gz, %bb.hc, %bb.hm, %bb.hy, %.thread431.thread.i
  %.9290.i = phi i64 [ %.0156497, %bb.ef ], [ %.0156497, %bb.el ], [ %.0156497, %bb.em ], [ %.0281.i, %.thread.thread.i ], [ %.1282.i, %.thread415.thread.i ], [ %.2283.i, %bb.fh ], [ %.3284.i, %set_option_encoding_once.exit.i ], [ %.4285.i, %set_option_encoding_once.exit413.i ], [ %.5286.i, %bb.gh ], [ %.5286.i, %bb.gj ], [ %.0156497, %bb.gn ], [ %.0156497, %bb.gp ], [ %.0156497, %bb.gr ], [ %.0156497, %bb.gv ], [ %.0156497, %bb.gz ], [ %.0156497, %bb.hc ], [ %.6287.i, %bb.hm ], [ %.7288.i, %bb.hy ], [ %.8289.i, %.thread431.thread.i ] ; 3 uses
  %.not188 = icmp eq i64 %.0156.in495, %.9290.i
  br i1 %.not188, label %.thread277, label %bb.ih

bb.ih:                                            ; preds = %proc_long_options.exit
  %i.ub = sub i64 %.0156.in495, %.9290.i
  %i.uc = getelementptr [8 x i8], ptr %.0157496, i64 %i.ub
  %i.ud = getelementptr i8, ptr %i.uc, i64 -8
  br label %proc_W_option.exit.thread

end_hunk_1
begin_hunk_2_@proc_options:bb.a
proc_W_option.exit.thread:                        ; preds = %.preheader, %proc_W_option.exit, %proc_K_option.exit, %proc_0_option.exit, %name_match_p.exit.i, %.loopexit.i, %proc_e_option.exit, %forbid_setid.exit245, %bb.dd, %bb.ih, %bb.cb, %add_modules.exit, %bb.cm, %forbid_setid.exit248, %bb.cu, %bb.cy, %bb.cx, %bb.du, %bb.ds, %bb.ii
  %.3 = phi i32 [ %.1267, %bb.ih ], [ %.1267, %bb.ds ], [ %.1267, %name_match_p.exit.i ], [ %.1267, %bb.ii ], [ %.1267, %proc_e_option.exit ], [ %.1267, %bb.du ], [ %.1267, %bb.cb ], [ %.1267, %add_modules.exit ], [ %.1267, %forbid_setid.exit245 ], [ %.1267, %forbid_setid.exit248 ], [ %.1267, %bb.cm ], [ %.1267, %bb.cu ], [ %.1267, %bb.cx ], [ %.1267, %bb.cy ], [ %.1267, %bb.dd ], [ %.1267, %.loopexit.i ], [ 1, %proc_W_option.exit ], [ %.1267, %.preheader ], [ %.1267, %proc_0_option.exit ], [ %.1267, %proc_K_option.exit ] ; 2 uses
  %.4161 = phi ptr [ %i.ud, %bb.ih ], [ %.0157496, %bb.ds ], [ %.0157496, %name_match_p.exit.i ], [ %.0157496, %bb.ii ], [ %i.jp, %proc_e_option.exit ], [ %i.md, %bb.du ], [ %i.kb, %bb.cb ], [ %.0157496, %add_modules.exit ], [ %.0157496, %forbid_setid.exit245 ], [ %.0157496, %forbid_setid.exit248 ], [ %.0157496, %bb.cm ], [ %.1158, %bb.cu ], [ %.0157496, %bb.cx ], [ %.0157496, %bb.cy ], [ %.2159, %bb.dd ], [ %.0157496, %.loopexit.i ], [ %.0157496, %proc_0_option.exit ], [ %.0157496, %proc_K_option.exit ], [ %.0157496, %proc_W_option.exit ], [ %.0157496, %.preheader ]
  %.4 = phi i64 [ %.9290.i, %bb.ih ], [ %.0156497, %bb.ds ], [ %.0156497, %name_match_p.exit.i ], [ %.0156497, %bb.ii ], [ %i.jn, %proc_e_option.exit ], [ %i.mf, %bb.du ], [ %i.kd, %bb.cb ], [ %.0156497, %add_modules.exit ], [ %.0156497, %forbid_setid.exit245 ], [ %.0156497, %forbid_setid.exit248 ], [ %.0156497, %bb.cm ], [ %.1, %bb.cu ], [ %.0156497, %bb.cx ], [ %.0156497, %bb.cy ], [ %.2, %bb.dd ], [ %.0156497, %.loopexit.i ], [ %.0156497, %proc_0_option.exit ], [ %.0156497, %proc_K_option.exit ], [ %.0156497, %proc_W_option.exit ], [ %.0156497, %.preheader ] ; 2 uses
  %.0156 = add i64 %.4, -1                        ; 3 uses
  %i.va = icmp sgt i64 %.0156, 0
  br i1 %i.va, label %bb.b, label %.thread277, !llvm.loop !167
end_hunk_2
