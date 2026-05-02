inline.NumInlined: 1371
inline.NumDeleted: 154
begin_hunk_0_@c_valid_ordinal_p:bb.a
bb.g:                                             ; preds = %bb.g, %c_jd_to_civil.exit.i
  %.08.i.i = phi i32 [ 1, %c_jd_to_civil.exit.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.as = call fastcc i32 @c_valid_civil_p(i32 noundef %i.ar, i32 noundef 1, i32 noundef %.08.i.i, double noundef %2, ptr noundef %i.h, ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
  %.not.i.i = trunc nuw i32 %i.as to i1
  %i.at = add nuw nsw i32 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.at, 31
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
end_hunk_0
begin_hunk_1_@c_valid_ordinal_p:bb.a
bb.j:                                             ; preds = %bb.j, %bb.i
  %.08.i.i26 = phi i32 [ 1, %bb.i ], [ %i.ay, %bb.j ] ; 2 uses
  %i.ax = call fastcc i32 @c_valid_civil_p(i32 noundef %0, i32 noundef 1, i32 noundef %.08.i.i26, double noundef %2, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull %i.g)
  %.not.i.i27 = trunc nuw i32 %i.ax to i1
  %i.ay = add nuw nsw i32 %.08.i.i26, 1           ; 2 uses
  %exitcond.not.i.i28 = icmp eq i32 %i.ay, 31
  %or.cond.i29 = select i1 %.not.i.i27, i1 true, i1 %exitcond.not.i.i28
end_hunk_1
begin_hunk_2_@c_valid_ordinal_p:bb.a
bb.l:                                             ; preds = %bb.l, %c_jd_to_civil.exit.i30
  %.08.i.i34 = phi i32 [ 1, %c_jd_to_civil.exit.i30 ], [ %i.cd, %bb.l ] ; 2 uses
  %i.cc = call fastcc i32 @c_valid_civil_p(i32 noundef %i.cb, i32 noundef 1, i32 noundef %.08.i.i34, double noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i35 = trunc nuw i32 %i.cc to i1
  %i.cd = add nuw nsw i32 %.08.i.i34, 1           ; 2 uses
  %exitcond.not.i.i36 = icmp eq i32 %i.cd, 31
  %or.cond.i37 = select i1 %.not.i.i35, i1 true, i1 %exitcond.not.i.i36
end_hunk_2
begin_hunk_3_@c_valid_commercial_p:bb.a
bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i.i = phi i32 [ 1, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.p = call fastcc i32 @c_valid_civil_p(i32 noundef %i.o, i32 noundef 1, i32 noundef %.08.i.i, double noundef %3, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %.not.i.i = trunc nuw i32 %i.p to i1
  %i.q = add nuw nsw i32 %.08.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.q, 31
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
end_hunk_3
begin_hunk_4_@c_valid_commercial_p:bb.a
bb.g:                                             ; preds = %bb.g, %bb.f
  %.08.i.i36 = phi i32 [ 1, %bb.f ], [ %i.af, %bb.g ] ; 2 uses
  %i.ae = call fastcc i32 @c_valid_civil_p(i32 noundef %0, i32 noundef 1, i32 noundef %.08.i.i36, double noundef %3, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i37 = trunc nuw i32 %i.ae to i1
  %i.af = add nuw nsw i32 %.08.i.i36, 1           ; 2 uses
  %exitcond.not.i.i38 = icmp eq i32 %i.af, 31
  %or.cond.i39 = select i1 %.not.i.i37, i1 true, i1 %exitcond.not.i.i38
end_hunk_4
begin_hunk_5_@c_jd_to_commercial:bb.a
bb.c:                                             ; preds = %bb.c, %c_jd_to_civil.exit
  %.08.i.i = phi i32 [ 1, %c_jd_to_civil.exit ], [ %i.ah, %bb.c ] ; 2 uses
  %i.ag = call fastcc i32 @c_valid_civil_p(i32 noundef %i.af, i32 noundef 1, i32 noundef %.08.i.i, double noundef %1, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %.not.i.i = trunc nuw i32 %i.ag to i1
  %i.ah = add nuw nsw i32 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ah, 31
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
end_hunk_5
begin_hunk_6_@c_jd_to_commercial:bb.a
bb.g:                                             ; preds = %bb.g, %bb.f
  %.08.i.i23 = phi i32 [ 1, %bb.f ], [ %i.as, %bb.g ] ; 2 uses
  %i.ar = call fastcc i32 @c_valid_civil_p(i32 noundef %i.ae, i32 noundef 1, i32 noundef %.08.i.i23, double noundef %1, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i24 = trunc nuw i32 %i.ar to i1
  %i.as = add nuw nsw i32 %.08.i.i23, 1           ; 2 uses
  %exitcond.not.i.i25 = icmp eq i32 %i.as, 31
  %or.cond.i26 = select i1 %.not.i.i24, i1 true, i1 %exitcond.not.i.i25
end_hunk_6
begin_hunk_7_@c_valid_weeknum_p:bb.a
bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i.i = phi i32 [ 1, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.p = call fastcc i32 @c_valid_civil_p(i32 noundef %i.o, i32 noundef 1, i32 noundef %.08.i.i, double noundef %4, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %.not.i.i = trunc nuw i32 %i.p to i1
  %i.q = add nuw nsw i32 %.08.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.q, 31
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
end_hunk_7
begin_hunk_8_@c_valid_weeknum_p:bb.a
bb.g:                                             ; preds = %bb.g, %bb.f
  %.08.i.i41 = phi i32 [ 1, %bb.f ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ah = call fastcc i32 @c_valid_civil_p(i32 noundef %0, i32 noundef 1, i32 noundef %.08.i.i41, double noundef %4, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i42 = trunc nuw i32 %i.ah to i1
  %i.ai = add nuw nsw i32 %.08.i.i41, 1           ; 2 uses
  %exitcond.not.i.i43 = icmp eq i32 %i.ai, 31
  %or.cond.i44 = select i1 %.not.i.i42, i1 true, i1 %exitcond.not.i.i43
end_hunk_8
begin_hunk_9_@c_jd_to_weeknum:bb.a
bb.c:                                             ; preds = %bb.c, %c_jd_to_civil.exit
  %.08.i = phi i32 [ 1, %c_jd_to_civil.exit ], [ %i.ab, %bb.c ] ; 2 uses
  %i.aa = call fastcc i32 @c_valid_civil_p(i32 noundef %i.z, i32 noundef 1, i32 noundef %.08.i, double noundef %2, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i = trunc nuw i32 %i.aa to i1
  %i.ab = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ab, 31
  %or.cond = select i1 %.not.i, i1 true, i1 %exitcond.not.i
end_hunk_9
begin_hunk_10_@m_yday:bb.a
bb.ac:                                            ; preds = %bb.ac, %c_jd_to_civil.exit.i
  %.08.i.i = phi i32 [ 1, %c_jd_to_civil.exit.i ], [ %i.cz, %bb.ac ] ; 2 uses
  %i.cy = call fastcc i32 @c_valid_civil_p(i32 noundef %i.cx, i32 noundef 1, i32 noundef %.08.i.i, double noundef %i.al, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i.i48 = trunc nuw i32 %i.cy to i1
  %i.cz = add nuw nsw i32 %.08.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cz, 31
  %or.cond.i49 = select i1 %.not.i.i48, i1 true, i1 %exitcond.not.i.i
end_hunk_10
