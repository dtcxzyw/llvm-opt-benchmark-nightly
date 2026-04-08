inline.NumInlined: 49
inline.NumDeleted: 18
begin_hunk_0_@cli_decode_ole_object:bb.a
bb.l:                                             ; preds = %.lr.ph.i
  %i.ae = call i32 @cli_writen(i32 noundef range(i32 0, -2147483648) %i.z, ptr noundef nonnull %i.a, i32 noundef %i.ac) #12
  %.not26.i = icmp ne i32 %i.ae, %i.ac
  %i.af = sub i32 %.02235.i, %i.ac                ; 2 uses
  %.not.i = icmp eq i32 %i.af, 0
  %or.cond = or i1 %.not.i, %.not26.i
  br i1 %or.cond, label %ole_copy_file_data.exit, label %.lr.ph.i, !llvm.loop !45

ole_copy_file_data.exit:                          ; preds = %bb.l, %.lr.ph.i, %bb.k
end_hunk_0
begin_hunk_1_@ppt_vba_read:bb.a
  br label %ppt_unlzw.exit.thread.i

bb.o:                                             ; preds = %bb.m
  %i.bc = sub i32 %i.at, %i.ay
  %i.bd = call i32 @inflateInit_(ptr noundef nonnull %1, ptr noundef nonnull @.str.60, i32 noundef 112) #12 ; 2 uses
  %.not28.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not28.i.i, label %bb.q, label %bb.p
end_hunk_1
