inline.NumInlined: 49
inline.NumDeleted: 28
begin_hunk_0_@gc_set_threshold:bb.a
  br label %gc_set_threshold_impl.exit

bb.f:                                             ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 4, !tbaa !7
  %i.s = load i32, ptr %i.b, align 4, !tbaa !7
  %i.t = load i32, ptr %i.c, align 4, !tbaa !7
  %i.u = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11   ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 7424
  store i32 %.pre, ptr %i.w, align 8, !tbaa !28
  %i.x = getelementptr i8, ptr %i.v, i64 7448
  store i32 %i.s, ptr %i.x, align 8, !tbaa !29
  %i.y = getelementptr i8, ptr %i.v, i64 7472
  store i32 %i.t, ptr %i.y, align 8, !tbaa !29
  br label %gc_set_threshold_impl.exit

gc_set_threshold_impl.exit:                       ; preds = %.thread, %bb.f, %.thread16, %bb.d, %bb.c, %bb.b, %bb.e
end_hunk_0
begin_hunk_1_@gc_get_objects:bb.a
  %i.i = phi i64 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.j = sub i64 0, %i.i
  %.not24 = icmp eq i64 %2, %i.j
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread28
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !30
end_hunk_1
begin_hunk_2_@gc_get_objects:bb.a
  %.not25 = icmp eq i32 %i.l, 0
  br i1 %.not25, label %gc_get_objects_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread28
  %.pre = load i64, ptr %i.b, align 8, !tbaa !33  ; 4 uses
  %i.m = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i64 noundef %.pre) #4
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %gc_get_objects_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp sgt i64 %.pre, 2
  br i1 %i.o, label %bb.g, label %bb.h
end_hunk_2
begin_hunk_3_@gc_get_objects:bb.a
  call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.30) #4
  br label %gc_get_objects_impl.exit

.thread36:                                        ; preds = %bb.h
  %i.t = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.v = trunc nsw i64 %.pre to i32
  %i.w = call ptr @_PyGC_GetObjects(ptr noundef %i.u, i32 noundef %i.v) #4
  br label %gc_get_objects_impl.exit

gc_get_objects_impl.exit:                         ; preds = %.thread36, %bb.i, %bb.g, %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %i.w, %.thread36 ], [ %i.q, %bb.g ], [ null, %bb.i ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
end_hunk_3
