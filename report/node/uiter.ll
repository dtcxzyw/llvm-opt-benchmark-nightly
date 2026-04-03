begin_hunk_0
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
end_hunk_0
begin_hunk_1
  %i.k = icmp sgt i32 %1, -1
  br i1 %i.k, label %bb.ba, label %bb.o

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load i32, ptr %4, align 8                  ; 3 uses
  %6 = icmp slt i32 %5, 0
  %7 = add nsw i32 %5, %1
  br i1 %6, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.a, %3
  %.0144 = phi i32 [ %7, %3 ], [ %1, %bb.a ], [ %i.e, %bb.c ], [ %1, %bb.a ] ; 6 uses
  %i.l = icmp slt i32 %.0144, 1
  br i1 %i.l, label %bb.f, label %bb.g

end_hunk_1
begin_hunk_2
  %i.x = icmp slt i32 %i.w, 0
  %i.y = lshr i32 %i.w, 1
  %i.z = icmp samesign ult i32 %.0144, %i.y
  %or.cond188 = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond188, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_2
