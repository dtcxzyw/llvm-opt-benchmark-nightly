inline.NumInlined: 9
begin_hunk_0_@getNonAffNeighbour:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = zext i32 %0 to i64
  %i.e = getelementptr inbounds nuw [536 x i8], ptr %i.c, i64 %i.d ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15552
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g ; 2 uses
end_hunk_0
begin_hunk_1_@getNonAffNeighbour:bb.a
  %i.l = icmp slt i32 %2, 0                       ; 2 uses
  %i.m = and i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.m, -1
  br i1 %or.cond.not, label %bb.b, label %5

5:                                                ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %1, 0
end_hunk_1
begin_hunk_2_@getNonAffNeighbour:bb.a
  %or.cond3 = and i1 %i.n, %i.o
  %i.p = icmp slt i32 %2, %i.k                    ; 2 uses
  %or.cond = select i1 %or.cond3, i1 %i.p, i1 false
  br i1 %or.cond, label %7, label %bb.c

7:                                                ; preds = %bb.b
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 436
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp sgt i32 %1, -1                      ; 2 uses
  %i.r = icmp slt i32 %1, %i.i                    ; 2 uses
  %or.cond5 = and i1 %i.l, %i.r
  %or.cond69 = select i1 %i.q, i1 %or.cond5, i1 false
  br i1 %or.cond69, label %9, label %bb.d

9:                                                ; preds = %bb.c
  %10 = getelementptr inbounds nuw i8, ptr %i.e, i64 440
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %or.cond7 = and i1 %i.o, %i.r
end_hunk_2
begin_hunk_3_@getNonAffNeighbour:bb.a
bb.e:                                             ; preds = %bb.d
  %i.t = icmp sge i32 %1, %i.i
  %or.cond9 = and i1 %i.l, %i.t
  br i1 %or.cond9, label %11, label %.thread

11:                                               ; preds = %bb.e
  %12 = getelementptr inbounds nuw i8, ptr %i.e, i64 444
  br label %bb.f

.thread:                                          ; preds = %bb.e
  store i32 0, ptr %4, align 4, !tbaa !52
  br label %bb.g

bb.f:                                             ; preds = %7, %11, %9, %5
  %.sink76.in = phi ptr [ %8, %7 ], [ %12, %11 ], [ %10, %9 ], [ %6, %5 ]
  %.sink75.a = phi i64 [ 452, %7 ], [ 460, %11 ], [ 456, %9 ], [ 464, %5 ]
  %.sink76 = load i32, ptr %.sink76.in, align 4, !tbaa !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sink76, ptr %i.u, align 4, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink75.a
end_hunk_3
