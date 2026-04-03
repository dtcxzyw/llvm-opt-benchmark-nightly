begin_hunk_0
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i64, ptr %1, align 8
  %i.f = and i64 %i.e, 2147483392
  %i.g = icmp eq i64 %i.f, 2147483136             ; 2 uses
  br i1 %i.g, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1

sdslen.exit:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.x, %bb.i ], [ %i.m, %bb.e ], [ %i.p, %bb.f ], [ %i.s, %bb.g ], [ %i.v, %bb.h ], [ 0, %bb.d ]
  %i.y = tail call ptr @createStringObject(ptr noundef nonnull %i.i, i64 noundef %.0.i) #21
  br label %.critedge

.critedge:                                        ; preds = %sdslen.exit, %bb.c
  %.0 = phi ptr [ %i.y, %sdslen.exit ], [ %1, %bb.c ] ; 4 uses
  %i.z = tail call i32 @dbDelete(ptr noundef %0, ptr noundef %.0) #21 ; 0 uses
  tail call void @keyModified(ptr noundef null, ptr noundef %0, ptr noundef %.0, ptr noundef null, i32 noundef 1) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !201
  tail call void @moduleNotifyKeyspaceEvent(i32 noundef 131072, ptr noundef nonnull @.str.213, ptr noundef %.0, i32 noundef %i.ab) #21
  %i.ac = load ptr, ptr @asmManager, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !80
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !80
  br i1 %i.g, label %2, label %bb.j

2:                                                ; preds = %.critedge
  tail call void @decrRefCount(ptr noundef %.0) #21
  br label %bb.j

bb.j:                                             ; preds = %2, %.critedge
  ret void
}

end_hunk_1
