begin_hunk_0_@opj_event_msg:bb.a

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %.thread [
    i32 1, label %4
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

4:                                                ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %4
  %.015.in = phi ptr [ %7, %bb.d ], [ %5, %4 ], [ %6, %bb.c ]
  %.0.in = phi ptr [ %i.c, %bb.d ], [ %0, %4 ], [ %i.b, %bb.c ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !7
  %.015 = load ptr, ptr %.015.in, align 8, !tbaa !7 ; 2 uses
  %i.d = icmp eq ptr %.015, null
  br i1 %i.d, label %.thread, label %bb.f
end_hunk_0
