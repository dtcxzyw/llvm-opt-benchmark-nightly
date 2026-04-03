begin_hunk_0
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.o = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull %i.b, ptr noundef null) #14
  %.not32 = icmp eq i32 %i.o, 0
  br i1 %.not32, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !16
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.1.sroa.phi = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 1), %bb.b ], [ %.1.sroa.gep, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 1), %bb.a ] ; 5 uses
  %.1.sroa.phi36 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 2), %bb.b ], [ %.1.sroa.gep37, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 2), %bb.a ] ; 5 uses
  %.1 = phi ptr [ @.str.1, %bb.b ], [ %i.a, %bb.d ], [ @.str.1, %bb.a ] ; 2 uses
  %i.w = load i8, ptr %.1, align 1, !tbaa !13
  switch i8 %i.w, label %.thread70 [
    i8 53, label %bb.f
    i8 52, label %bb.h
    i8 54, label %bb.k
    i8 56, label %bb.n
    i8 55, label %bb.p
  ]
end_hunk_1
begin_hunk_2
bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %.1.sroa.phi36, align 1, !tbaa !13
  %.not33 = icmp eq i8 %i.z, 57
  br i1 %.not33, label %bb.m, label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
end_hunk_2
begin_hunk_3
  call void @lolwut5Command(ptr noundef nonnull %0) #14
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  %i.ae = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
  %i.af = icmp eq i8 %i.ae, 46
  br i1 %i.af, label %bb.l, label %.thread70

bb.l:                                             ; preds = %bb.k
  %i.ag = load i8, ptr %.1.sroa.phi36, align 1, !tbaa !13
  %.not34 = icmp eq i8 %i.ag, 57
  br i1 %.not34, label %.thread70, label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l
  call void @lolwut6Command(ptr noundef nonnull %0) #14
  br label %bb.s

end_hunk_3
begin_hunk_4
  call void @lolwut8Command(ptr noundef nonnull %0) #14
  br label %bb.s

.thread70:                                        ; preds = %bb.e, %bb.k, %bb.l, %bb.h, %bb.i, %bb.f, %bb.n, %bb.o, %bb.q, %bb.p
  call void @lolwutUnstableCommand(ptr noundef nonnull %0)
  br label %bb.s

end_hunk_4
begin_hunk_5
  store i32 %i.at, ptr %i.c, align 8, !tbaa !18
  br label %bb.u

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}
end_hunk_5
