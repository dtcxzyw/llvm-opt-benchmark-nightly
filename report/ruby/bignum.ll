begin_hunk_0
  %i.dc = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15  ; 2 uses
  %i.de = icmp sgt i8 %i.dd, -1
  %6 = zext nneg i8 %i.dd to i32
  %.not206 = icmp sgt i32 %.0161262, %6
  %or.cond220 = select i1 %i.de, i1 %.not206, i1 false
  br i1 %or.cond220, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
end_hunk_0
begin_hunk_1
  %i.et = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !15  ; 2 uses
  %i.ev = icmp sgt i8 %i.eu, -1
  %7 = zext nneg i8 %i.eu to i32
  %.not63.i = icmp sgt i32 %.0161262, %7
  %or.cond71.i = select i1 %i.ev, i1 %.not63.i, i1 false
  br i1 %or.cond71.i, label %bb.bw, label %.loopexit430

bb.bw:                                            ; preds = %bb.bv
end_hunk_1
begin_hunk_2
bb.i:                                             ; preds = %bb.f
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15    ; 2 uses
  %3 = icmp sgt i8 %i.w, -1
  %4 = zext nneg i8 %i.w to i32
  %.not63.i = icmp sgt i32 %1, %4
  %or.cond71.i = select i1 %3, i1 %.not63.i, i1 false
  br i1 %or.cond71.i, label %bb.j, label %.loopexit74

bb.j:                                             ; preds = %bb.i
end_hunk_2
begin_hunk_3
bb.k:                                             ; preds = %bb.h
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15    ; 2 uses
  %3 = icmp sgt i8 %i.w, -1
  %4 = zext nneg i8 %i.w to i32
  %.not63.i = icmp sgt i32 %1, %4
  %or.cond71.i = select i1 %3, i1 %.not63.i, i1 false
  br i1 %or.cond71.i, label %bb.l, label %.loopexit100

bb.l:                                             ; preds = %bb.k
end_hunk_3
begin_hunk_4
bb.k:                                             ; preds = %bb.h
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15    ; 2 uses
  %3 = icmp sgt i8 %i.w, -1
  %4 = zext nneg i8 %i.w to i32
  %.not63.i = icmp sgt i32 %1, %4
  %or.cond71.i = select i1 %3, i1 %.not63.i, i1 false
  br i1 %or.cond71.i, label %bb.l, label %.loopexit83

bb.l:                                             ; preds = %bb.k
end_hunk_4
