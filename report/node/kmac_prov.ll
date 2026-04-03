begin_hunk_0

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %.not24 = icmp ult i64 %i.i, 4294967296
  br i1 %.not24, label %get_encode_size.exit.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %.not25 = icmp ult i64 %i.i, 1099511627776
  br i1 %.not25, label %get_encode_size.exit.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %.lr.ph.i.i.4
  %.not26 = icmp ult i64 %i.i, 281474976710656
  br i1 %.not26, label %get_encode_size.exit.i, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %.lr.ph.i.i.5
  %.not27 = icmp ult i64 %i.i, 72057594037927936
  %spec.select = select i1 %.not27, i32 7, i32 8
  br label %get_encode_size.exit.i

get_encode_size.exit.i:                           ; preds = %.lr.ph.i.i.6, %.lr.ph.i.i.5, %.lr.ph.i.i.4, %.lr.ph.i.i.3, %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.i.i
  %4 = phi i1 [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i.1 ], [ false, %.lr.ph.i.i.2 ], [ true, %.lr.ph.i.i.3 ], [ true, %.lr.ph.i.i.4 ], [ true, %.lr.ph.i.i.5 ], [ true, %.lr.ph.i.i.6 ]
  %.lcssa = phi i32 [ 1, %.lr.ph.i.i ], [ 2, %.lr.ph.i.i.1 ], [ 3, %.lr.ph.i.i.2 ], [ 4, %.lr.ph.i.i.3 ], [ 5, %.lr.ph.i.i.4 ], [ 6, %.lr.ph.i.i.5 ], [ %spec.select, %.lr.ph.i.i.6 ] ; 2 uses
  %i.j = zext nneg i32 %.lcssa to i64
  br i1 %4, label %right_encode.exit.thread.critedge, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b, %get_encode_size.exit.i, %bb.c
  %i.k = phi i64 [ %i.i, %get_encode_size.exit.i ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.l = phi i64 [ %i.j, %get_encode_size.exit.i ], [ 1, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %.07.lcssa.i22.i = phi i32 [ %.lcssa, %get_encode_size.exit.i ], [ 1, %bb.c ], [ 1, %bb.b ] ; 2 uses
  br label %.preheader.i

right_encode.exit.thread.critedge:                ; preds = %get_encode_size.exit.i
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 538, ptr noundef nonnull @__func__.right_encode) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 202, ptr noundef null) #6
end_hunk_0
