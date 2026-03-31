begin_hunk_0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 79
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 83
end_hunk_0
begin_hunk_1
  br i1 %i.ds, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %trunc = trunc nuw i32 %i.bo to i8              ; 2 uses
  switch i8 %trunc, label %bb.n [
    i8 28, label %bb.g
    i8 38, label %bb.g
end_hunk_1
begin_hunk_2
    i8 94, label %bb.j
    i8 -114, label %bb.k
    i8 -98, label %bb.l
    i8 -90, label %1
    i8 -82, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  store i8 1, ptr %i.t, align 2
  switch i8 %trunc, label %bb.n [
    i8 78, label %bb.h
    i8 85, label %bb.i
    i8 94, label %bb.j
  ]

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.dt = icmp eq i32 %i.bj, 3
  br label %.sink.split

bb.i:                                             ; preds = %bb.f, %bb.g
  %i.du = icmp eq i32 %i.bj, 4
  %i.dv = icmp eq i32 %i.bj, 7
  %narrow49 = or i1 %i.du, %i.dv
  br label %.sink.split

bb.j:                                             ; preds = %bb.f, %bb.g
  %i.dw = icmp eq i32 %i.bj, 3
  br label %.sink.split

bb.k:                                             ; preds = %bb.f
  %i.dx = add nsw i32 %i.bj, -9
  %narrow48 = icmp ult i32 %i.dx, 4
  br label %.sink.split

bb.l:                                             ; preds = %bb.f
  %.off21 = add nsw i32 %i.bj, -9
  %switch22 = icmp ult i32 %.off21, 3
  %i.dy = icmp eq i32 %i.bj, 13
  %narrow = or i1 %i.dy, %switch22
  br label %.sink.split

1:                                                ; preds = %bb.f
  %2 = icmp eq i32 %i.bj, 0
  br label %.sink.split

bb.m:                                             ; preds = %bb.f
  %i.dz = icmp eq i32 %i.bj, 10
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %1, %bb.m
  %.sink52 = phi i1 [ %i.dz, %bb.m ], [ %2, %1 ], [ %narrow, %bb.l ], [ %narrow48, %bb.k ], [ %i.dw, %bb.j ], [ %narrow49, %bb.i ], [ %i.dt, %bb.h ]
  %i.ea = zext i1 %.sink52 to i8
  store i8 %i.ea, ptr %i.u, align 1
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.f, %bb.e, %bb.g
  br i1 %i.au, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
end_hunk_2
