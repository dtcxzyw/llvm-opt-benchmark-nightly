begin_hunk_0
add_compile_string_length.exit.us.i.peel:         ; preds = %switch.lookup.i.i.us.i.peel, %bb.p, %switch.lookup10.i.i.us.i.peel, %bb.o, %select_str_opcode.exit.thread.i.us.i.peel, %bb.n
  %.0.i3.i.us.i.peel = phi i32 [ 13, %bb.n ], [ 11, %bb.o ], [ %switch.offset.i.i.us.i.peel, %switch.lookup.i.i.us.i.peel ], [ 7, %bb.p ], [ %switch.offset12.i.i.us.i.peel, %switch.lookup10.i.i.us.i.peel ], [ 12, %select_str_opcode.exit.thread.i.us.i.peel ] ; 2 uses
  %i.bw = phi i32 [ 5, %bb.n ], [ 1, %bb.o ], [ 1, %switch.lookup.i.i.us.i.peel ], [ 1, %bb.p ], [ 1, %switch.lookup10.i.i.us.i.peel ], [ 1, %select_str_opcode.exit.thread.i.us.i.peel ] ; 2 uses
  %2 = add nsw i32 %.0.i3.i.us.i.peel, -11
  %3 = icmp ult i32 %2, 3
  %4 = and i32 %.0.i3.i.us.i.peel, 7
  %i.bx = icmp eq i32 %4, 7
  %or.cond7.i.us.i.peel = or i1 %i.bx, %3
  %i.by = add nuw nsw i32 %i.bw, 4
  %.1.i.us.i.peel = select i1 %or.cond7.i.us.i.peel, i32 %i.by, i32 %i.bw
  %i.bz = add i32 %i.aq, %.1.i.us.i.peel
end_hunk_0
begin_hunk_1
add_compile_string_length.exit.i65:               ; preds = %select_str_opcode.exit.thread.i.i, %switch.lookup10.i.i.i, %switch.lookup.i.i.i, %bb.x, %bb.w, %bb.v
  %.0.i3.i.i = phi i32 [ 13, %bb.v ], [ 11, %bb.x ], [ %switch.offset.i.i.i, %switch.lookup.i.i.i ], [ 7, %bb.w ], [ %switch.offset12.i.i.i, %switch.lookup10.i.i.i ], [ 12, %select_str_opcode.exit.thread.i.i ] ; 2 uses
  %i.cv = phi i32 [ 5, %bb.v ], [ 1, %bb.x ], [ 1, %switch.lookup.i.i.i ], [ 1, %bb.w ], [ 1, %switch.lookup10.i.i.i ], [ 1, %select_str_opcode.exit.thread.i.i ] ; 2 uses
  %5 = add nsw i32 %.0.i3.i.i, -11
  %6 = icmp ult i32 %5, 3
  %7 = and i32 %.0.i3.i.i, 7
  %i.cw = icmp eq i32 %7, 7
  %or.cond7.i.i = or i1 %i.cw, %6
  %i.cx = add nuw nsw i32 %i.cv, 4
  %.1.i.i66 = select i1 %or.cond7.i.i, i32 %i.cx, i32 %i.cv
  %i.cy = add i32 %.0572.i, %.0553.i
end_hunk_1
