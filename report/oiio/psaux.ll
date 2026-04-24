inline.NumInlined: 440
inline.NumDeleted: 103
begin_hunk_0_@t1_decoder_parse_metrics:bb.a

bb.s:                                             ; preds = %bb.f, %bb.b, %bb.d, %bb.c
  %.2159 = phi ptr [ %i.t, %bb.d ], [ %i.t, %bb.b ], [ %i.v, %bb.f ], [ %i.t, %bb.c ]
  %.0149 = phi i64 [ 2, %bb.d ], [ 22, %bb.b ], [ 4, %bb.f ], [ 24, %bb.c ]
  %.0149.a = phi i32 [ 0, %bb.d ], [ 10, %bb.b ], [ 1, %bb.f ], [ 11, %bb.c ]
  %i.as = icmp eq i8 %.0151279, 0
  br i1 %i.as, label %.thread211, label %.thread239

end_hunk_0
begin_hunk_1_@t1_decoder_parse_metrics:bb.a

.thread211:                                       ; preds = %bb.s, %bb.f
  %.2159207218 = phi ptr [ %i.v, %bb.f ], [ %.2159, %bb.s ] ; 2 uses
  %.0149210217 = phi i64 [ 20, %bb.f ], [ %.0149, %bb.s ]
  %3 = phi i32 [ 9, %bb.f ], [ %.0149.a, %bb.s ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @t1_args_count, i64 %.0149210217
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = ptrtoint ptr %i.s to i64
  %i.bb = sub i64 %i.ba, %i.i
end_hunk_1
begin_hunk_2_@t1_decoder_parse_metrics:bb.a
bb.v:                                             ; preds = %.thread211
  %i.bf = sub nsw i64 0, %i.bd
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bf ; 12 uses
  switch i32 %3, label %.thread239 [
    i32 0, label %bb.w
    i32 1, label %bb.x
    i32 9, label %bb.y
end_hunk_2
