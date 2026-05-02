inline.NumInlined: 213
inline.NumDeleted: 54
begin_hunk_0_@bsock_sendmsg_internal:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %rb_num2int_inline.exit
  %i.cy = phi i32 [ %i.cx, %rb_num2int_inline.exit ], [ 0, %bb.s ] ; 2 uses
  %.not74 = icmp ne i32 %6, 0                     ; 3 uses
  %10 = or i32 %i.cy, 64
  %spec.select = select i1 %.not74, i32 %10, i32 %i.cy
  %i.cz = icmp eq i64 %3, 4
  br i1 %i.cz, label %bb.y, label %bb.x

end_hunk_0
begin_hunk_1_@bsock_recvmsg_internal:bb.a

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i149 = phi i64 [ %i.o, %bb.h ], [ %i.p, %bb.i ]
  %i.q = trunc i64 %.0.i149 to i32                ; 2 uses
  %.not = icmp ne i32 %6, 0                       ; 3 uses
  %12 = or i32 %i.q, 64
  %spec.select = select i1 %.not, i32 %12, i32 %i.q ; 3 uses
  %i.r = and i64 %4, -5
  %.not193 = icmp eq i64 %i.r, 0
  %i.s = tail call i64 @rb_io_taint_check(i64 noundef %0) #11
end_hunk_1
