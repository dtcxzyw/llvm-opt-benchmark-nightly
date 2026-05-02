inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@rb_gc_verify_internal_consistency:bb.a
  br label %.preheader93.i.i.i.i.i

.preheader93.i.i.i.i.i:                           ; preds = %.split.us.i.i.i.i.i, %.preheader93.lr.ph.i.i.i.i.i
  %.0157.i.i.i.i.i = phi i1 [ false, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi102.i.i.i.i.i, %.split.us.i.i.i.i.i ] ; 2 uses
  %.060156.i.i.i.i.i = phi i32 [ 0, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi101.i.i.i.i.i, %.split.us.i.i.i.i.i ] ; 2 uses
  %.064155.i.i.i.i.i = phi i32 [ 0, %.preheader93.lr.ph.i.i.i.i.i ], [ %.us-phi100.i.i.i.i.i, %.split.us.i.i.i.i.i ]
  %.067154.i.i.i.i.i = phi i64 [ %i.ib, %.preheader93.lr.ph.i.i.i.i.i ], [ %i.jj, %.split.us.i.i.i.i.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@rb_gc_verify_internal_consistency:bb.a
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !59
  %i.jf = and i64 %i.je, %i.ix
  %.fr.i.i.i.i.i = freeze i64 %i.jf
  %.not82.i.i.i.i.i = icmp ne i64 %.fr.i.i.i.i.i, 0
  %..060156163.i.i.i.i.i = select i1 %.not83.i.i.i.i.i, i32 1, i32 %.060156.i.i.i.i.i
  %.0157..i.i.i.i.i = select i1 %.not82.i.i.i.i.i, i1 true, i1 %.0157.i.i.i.i.i
  br label %.split.us.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.split.us.i.i.i.i.i
end_hunk_1
begin_hunk_2_@rb_gc_verify_internal_consistency:bb.a

.split.us.i.i.i.i.i:                              ; preds = %.preheader93.split.i.i.i.i.i, %.preheader93.split.us.i.i.i.i.i
  %.us-phi101.i.i.i.i.i = phi i32 [ %..060156.i.i.i.i.i, %.preheader93.split.us.i.i.i.i.i ], [ %..060156163.i.i.i.i.i, %.preheader93.split.i.i.i.i.i ] ; 2 uses
  %.us-phi102.i.i.i.i.i = phi i1 [ %.0157.i.i.i.i.i, %.preheader93.split.us.i.i.i.i.i ], [ %.0157..i.i.i.i.i, %.preheader93.split.i.i.i.i.i ] ; 2 uses
  %.us-phi100.i.i.i.i.i = add i32 %.064155.i.i.i.i.i, %i.jc ; 2 uses
  %.us-phi.i.i.i.i.i = add i32 %.071152.i.i.i.i.i, %i.iq ; 2 uses
  %i.jj = add i64 %.067154.i.i.i.i.i, %i.if       ; 2 uses
end_hunk_2
begin_hunk_3_@rb_gc_verify_internal_consistency:bb.a
  unreachable

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i
  %i.kq = and i8 %i.hw, 4
  %i.kr = icmp eq i8 %i.kq, 0
  %or.cond3.i.i.i.i.i = select i1 %i.kr, i1 %.us-phi102.i.i.i.i.i, i1 false
  br i1 %or.cond3.i.i.i.i.i, label %bb.dj, label %._crit_edge._crit_edge.i.thread.i.i.i.i

bb.dj:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
end_hunk_3
begin_hunk_4_@gc_continue:bb.a
  %i.bf = getelementptr i8, ptr %0, i64 2216
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !457
  %i.bh = call fastcc range(i32 0, 2) i32 @gc_mark_stacked_objects(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.bg)
  %.not.i7.i = trunc nuw i32 %i.bh to i1
  br i1 %.not.i7.i, label %bb.r, label %gc_marks_step.exit.i

bb.r:                                             ; preds = %bb.q
  call fastcc void @gc_marks_finish(ptr noundef nonnull %0)
end_hunk_4
begin_hunk_5_@get_envparam_double:bb.a
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %5 = trunc nuw i32 %4 to i1
  %i.m = fcmp oeq double %i.d, 0.000000e+00
  %or.cond = select i1 %5, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.n, label %bb.h
end_hunk_5
