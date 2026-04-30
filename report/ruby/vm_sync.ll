inline.NumInlined: 45
inline.NumDeleted: 16
begin_hunk_0_@rb_vm_lock_leave_body_nb:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = getelementptr i8, ptr %i.a, i64 96       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !68
  %i.o = add i32 %i.n, -1                         ; 3 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !68
  store i32 %i.o, ptr %0, align 4, !tbaa !7
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %vm_lock_leave.exit

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@rb_vm_lock_leave_body:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = getelementptr i8, ptr %i.a, i64 96       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !68
  %i.o = add i32 %i.n, -1                         ; 3 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !68
  store i32 %i.o, ptr %0, align 4, !tbaa !7
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %vm_lock_leave.exit

bb.e:                                             ; preds = %bb.d
end_hunk_1
