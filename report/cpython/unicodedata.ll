inline.NumInlined: 234
inline.NumDeleted: 59
begin_hunk_0_@_getucname:bb.a
  br i1 %or.cond.i.i, label %.critedge, label %bb.u

bb.u:                                             ; preds = %_dawg_decode_varint_unsigned.exit.i.i
  %5 = lshr i32 %i.cd, 2
  %i.ch = and i32 %i.cd, 2
  %.not.i.i = icmp eq i32 %i.ch, 0
  %i.ci = add i32 %5, %.033.i                     ; 4 uses
  br i1 %.not.i.i, label %bb.v, label %_dawg_decode_edge.exit.i

end_hunk_0
begin_hunk_1_@_getcode:bb.a
  br i1 %or.cond.i.i, label %_lookup_dawg_packed.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_dawg_decode_varint_unsigned.exit.i.i
  %3 = lshr i32 %i.cq, 2
  %i.cu = and i32 %i.cq, 2
  %.not.i.i = icmp eq i32 %i.cu, 0
  %i.cv = add i32 %3, %.030.i                     ; 4 uses
  br i1 %.not.i.i, label %_dawg_decode_edge.exit.i, label %.preheader.i.thread.i

end_hunk_1
