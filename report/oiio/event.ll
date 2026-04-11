begin_hunk_0_@opj_event_msg:bb.a

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %.thread [
    i32 1, label %bb.e
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.pn = phi i64 [ 40, %bb.d ], [ 32, %bb.c ], [ 24, %bb.b ]
  %.0.in = phi ptr [ %i.c, %bb.d ], [ %i.b, %bb.c ], [ %0, %bb.b ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !7
  %.015.in = getelementptr inbounds nuw i8, ptr %0, i64 %.pn
  %.015 = load ptr, ptr %.015.in, align 8, !tbaa !7 ; 2 uses
  %i.d = icmp eq ptr %.015, null
  br i1 %i.d, label %.thread, label %bb.f
end_hunk_0
