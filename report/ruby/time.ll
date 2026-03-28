begin_hunk_0

bb.j:                                             ; preds = %bb.i
  %i.aj = sub nsw i64 1900, %i.af                 ; 2 uses
  %4 = icmp sgt i64 %i.af, -4611686018427386004
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = shl nuw nsw i64 %i.aj, 1
end_hunk_0
begin_hunk_1
bb.ap:                                            ; preds = %bb.ao
  %i.hg = lshr exact i64 %i.fz, 1
  %i.hh = ashr i64 %.0.i149.i, 1
  %i.hi = add nsw i64 %i.hh, %i.hg                ; 3 uses
  %3 = icmp slt i64 %i.hi, 4611686018427387904
  br i1 %3, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hj = shl nsw i64 %i.hi, 1
  %i.hk = or disjoint i64 %i.hj, 1
  br label %.sink.split.i

bb.ar:                                            ; preds = %bb.ap
  %i.hl = call i64 @rb_int2big(i64 noundef %i.hi) #19
  br label %.sink.split.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i170.i:     ; preds = %bb.ao
end_hunk_1
begin_hunk_2

bb.k:                                             ; preds = %bb.j, %bb.i
  %.in.i = phi i32 [ %narrow.i, %bb.i ], [ %i.ah, %bb.j ]
  %.in.fr.i = freeze i32 %.in.i                   ; 2 uses
  %1 = and i32 %.in.fr.i, 3
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %bb.l, label %leap_year_p.exit.thread.i, !prof !16

leap_year_p.exit.thread.i:                        ; preds = %bb.k
end_hunk_2
begin_hunk_3
  br label %calc_tm_yday.exit

bb.l:                                             ; preds = %bb.k
  %narrow22.i = add i32 %.in.fr.i, 1900           ; 2 uses
  %.lhs.trunc18.i = trunc i32 %narrow22.i to i16  ; 3 uses
  %2 = urem i16 %.lhs.trunc18.i, 100
  %narrow24.i = sub nuw i16 %.lhs.trunc18.i, %2
  %3 = zext nneg i16 %narrow24.i to i32
  %.not11.i.i = icmp eq i32 %narrow22.i, %3
  br i1 %.not11.i.i, label %leap_year_p.exit.i, label %leap_year_p.exit.thread14.i, !prof !16

leap_year_p.exit.thread14.i:                      ; preds = %bb.l
end_hunk_3
begin_hunk_4
  br label %calc_tm_yday.exit

leap_year_p.exit.i:                               ; preds = %bb.l
  %.lhs.trunc18.off.i = add nsw i16 %.lhs.trunc18.i, -2000
  %4 = icmp ult i16 %.lhs.trunc18.off.i, 100
  %i.am = sext i32 %i.ad to i64
  %spec.select.v.i = select i1 %4, ptr @leap_year_yday_offset, ptr @common_year_yday_offset
  %spec.select.i = getelementptr [2 x i8], ptr %spec.select.v.i, i64 %i.am
  br label %calc_tm_yday.exit

end_hunk_4
begin_hunk_5

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi i32 [ %narrow, %bb.b ], [ %i.d, %bb.c ]
  %.in.fr = freeze i32 %.in                       ; 2 uses
  %3 = and i32 %.in.fr, 3
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %bb.e, label %leap_year_p.exit.thread, !prof !16

leap_year_p.exit.thread:                          ; preds = %bb.d
end_hunk_5
begin_hunk_6
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %narrow22 = add i32 %.in.fr, 1900               ; 2 uses
  %.lhs.trunc18 = trunc i32 %narrow22 to i16      ; 3 uses
  %4 = urem i16 %.lhs.trunc18, 100
  %narrow24 = sub nuw i16 %.lhs.trunc18, %4
  %5 = zext nneg i16 %narrow24 to i32
  %.not11.i = icmp eq i32 %narrow22, %5
  br i1 %.not11.i, label %leap_year_p.exit, label %leap_year_p.exit.thread14, !prof !16

leap_year_p.exit.thread14:                        ; preds = %bb.e
end_hunk_6
begin_hunk_7
  br label %bb.f

leap_year_p.exit:                                 ; preds = %bb.e
  %.lhs.trunc18.off = add nsw i16 %.lhs.trunc18, -2000
  %6 = icmp ult i16 %.lhs.trunc18.off, 100
  %i.i = sext i32 %1 to i64
  %spec.select.v = select i1 %6, ptr @leap_year_yday_offset, ptr @common_year_yday_offset
  %spec.select = getelementptr [2 x i8], ptr %spec.select.v, i64 %i.i
  br label %bb.f

end_hunk_7
begin_hunk_8

bb.aj:                                            ; preds = %cmp.exit98.thread
  %i.dm = ashr i64 %i.dk, 1                       ; 2 uses
  %i.dn = add nsw i64 %i.dm, 1000000000           ; 2 uses
  %3 = icmp slt i64 %i.dm, 4611686017427387904
  br i1 %3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.do = shl nsw i64 %i.dn, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %addv.exit104

bb.al:                                            ; preds = %bb.aj
  %i.dq = tail call i64 @rb_int2big(i64 noundef %i.dn) #19
  br label %addv.exit104

bb.am:                                            ; preds = %cmp.exit98.thread
end_hunk_8
begin_hunk_9

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in.i = phi i32 [ %narrow.i, %bb.b ], [ %i.j, %bb.c ]
  %.in.fr.i = freeze i32 %.in.i                   ; 2 uses
  %1 = and i32 %.in.fr.i, 3
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %bb.e, label %leap_year_p.exit.thread.i, !prof !16

leap_year_p.exit.thread.i:                        ; preds = %bb.d
end_hunk_9
begin_hunk_10
  br label %calc_tm_yday.exit

bb.e:                                             ; preds = %bb.d
  %narrow22.i = add i32 %.in.fr.i, 1900           ; 2 uses
  %.lhs.trunc18.i = trunc i32 %narrow22.i to i16  ; 3 uses
  %2 = urem i16 %.lhs.trunc18.i, 100
  %narrow24.i = sub nuw i16 %.lhs.trunc18.i, %2
  %3 = zext nneg i16 %narrow24.i to i32
  %.not11.i.i = icmp eq i32 %narrow22.i, %3
  br i1 %.not11.i.i, label %leap_year_p.exit.i, label %leap_year_p.exit.thread14.i, !prof !16

leap_year_p.exit.thread14.i:                      ; preds = %bb.e
end_hunk_10
begin_hunk_11
  br label %calc_tm_yday.exit

leap_year_p.exit.i:                               ; preds = %bb.e
  %.lhs.trunc18.off.i = add nsw i16 %.lhs.trunc18.i, -2000
  %4 = icmp ult i16 %.lhs.trunc18.off.i, 100
  %i.o = sext i32 %i.e to i64
  %spec.select.v.i = select i1 %4, ptr @leap_year_yday_offset, ptr @common_year_yday_offset
  %spec.select.i = getelementptr [2 x i8], ptr %spec.select.v.i, i64 %i.o
  br label %calc_tm_yday.exit

end_hunk_11
