inline.NumInlined: 6
begin_hunk_0_@BIO_dump_indent_cb:bb.a

.lr.ph99:                                         ; preds = %bb.a
  %i.l = icmp ult i32 %i.d, 64                    ; 2 uses
  %i.m = sext i32 %i.f to i64
  %wide.trip.count113 = zext nneg i32 %.070 to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph99, %bb.p
end_hunk_0
