begin_hunk_0
c_find_ldoy.exit.thread:                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  br label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i32 [ 0, %bb.b ], [ %i.q, %bb.c ]  ; 2 uses
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  %i.au = load i32, ptr %i.j, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  %.not21 = icmp eq i32 %0, %i.ar
  br i1 %.not21, label %5, label %.critedge

5:                                                ; preds = %c_jd_to_ordinal.exit
  %6 = add i32 %i.u, 2
  %7 = sub i32 %6, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  br label %bb.h

bb.h:                                             ; preds = %5, %bb.a
  %.118 = phi i32 [ %7, %5 ], [ %1, %bb.a ]       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
end_hunk_1
begin_hunk_2
  %spec.select = zext i1 %or.cond to i32
  br label %bb.l

.critedge:                                        ; preds = %c_find_ldoy.exit.thread, %c_jd_to_ordinal.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  br label %bb.l

bb.l:                                             ; preds = %c_jd_to_ordinal.exit36, %.critedge
  %.1 = phi i32 [ 0, %.critedge ], [ %spec.select, %c_jd_to_ordinal.exit36 ]
  ret i32 %.1
}

end_hunk_2
