inline.NumInlined: 498
inline.NumDeleted: 153
begin_hunk_0_@_curses_window_derwin:bb.a
bb.c:                                             ; preds = %bb.a
  %i.g = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.389, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_curses_window_derwin_impl.exit, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.390) #9
  br label %_curses_window_derwin_impl.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %2 = load i32, ptr %i.a, align 4, !tbaa !6
  %3 = load i32, ptr %i.b, align 4, !tbaa !6
  %i.i = load i32, ptr %i.c, align 4, !tbaa !6
  %i.j = load i32, ptr %i.d, align 4, !tbaa !6
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = call ptr @derwin(ptr noundef %i.l, i32 noundef %2, i32 noundef %3, i32 noundef %i.i, i32 noundef %i.j) #9 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr i8, ptr %0, i64 8
  %.val12.i = load ptr, ptr %i.o, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_curses_window_subwin:bb.a
bb.c:                                             ; preds = %bb.a
  %i.g = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.478, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_curses_window_subwin_impl.exit, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.479) #9
  br label %_curses_window_subwin_impl.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %2 = load i32, ptr %i.a, align 4, !tbaa !6      ; 2 uses
  %3 = load i32, ptr %i.b, align 4, !tbaa !6      ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !6    ; 2 uses
  %i.j = load i32, ptr %i.d, align 4, !tbaa !6    ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
end_hunk_1
begin_hunk_2_@_curses_window_subwin:bb.a
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = call ptr @subpad(ptr noundef %i.n, i32 noundef %2, i32 noundef %3, i32 noundef %i.i, i32 noundef %i.j) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = call ptr @subwin(ptr noundef %i.n, i32 noundef %2, i32 noundef %3, i32 noundef %i.i, i32 noundef %i.j) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_2
