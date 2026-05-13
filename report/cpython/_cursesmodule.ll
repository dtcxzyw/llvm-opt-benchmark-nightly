inline.NumInlined: 498
inline.NumDeleted: 153
begin_hunk_0_@_curses_window_box:bb.a
  %i.r = call ptr @PyType_GetModuleState(ptr noundef %.val.i.i) #9
  %.val4.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.s = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_box_impl.exit

_curses_window_box_impl.exit:                     ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.e ], [ null, %bb.d ], [ @_Py_NoneStruct, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_curses_window_box_impl.exit, %bb.c
  %.04 = phi ptr [ null, %bb.c ], [ %.0.i, %_curses_window_box_impl.exit ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret ptr %.04
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @PyCursesWindow_wclear(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call i32 @wclear(ptr noundef %i.b) #9 ; 0 uses
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @PyCursesWindow_clearok(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.382, ptr noundef nonnull %i.a) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %curses_window_check_err.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = load i32, ptr %i.a, align 4, !tbaa !6
  %i.f = icmp ne i32 %i.e, 0
  %i.g = call i32 @clearok(ptr noundef %i.d, i1 noundef zeroext %i.f) #9
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %bb.c, label %curses_window_check_err.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.i = call ptr @PyType_GetModuleState(ptr noundef %.val.i) #9
  %.val4.i.i = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.j = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %curses_window_check_err.exit

curses_window_check_err.exit:                     ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @PyCursesWindow_wclrtobot(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call i32 @wclrtobot(ptr noundef %i.b) #9 ; 0 uses
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @PyCursesWindow_wclrtoeol(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call i32 @wclrtoeol(ptr noundef %i.b) #9 ; 0 uses
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @PyCursesWindow_wcursyncup(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  tail call void @wcursyncup(ptr noundef %i.b) #9
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_window_delch(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !6
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !40
  switch i64 %.val, label %bb.c [
    i64 0, label %.split10.i
    i64 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.383, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_curses_window_delch_impl.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.384) #9
  br label %_curses_window_delch_impl.exit

.split10.i:                                       ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = tail call i32 @wdelch(ptr noundef %i.g) #9
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %curses_window_check_err.exit.sink.split.i, label %_curses_window_delch_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.a, align 4, !tbaa !6
  %i.j = load i32, ptr %i.b, align 4, !tbaa !6
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = call i32 @wmove(ptr noundef %i.l, i32 noundef %i.i, i32 noundef %i.j) #9
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %curses_window_check_err.exit.sink.split.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.p = call i32 @wdelch(ptr noundef %i.o) #9
  %.not.i11.i = icmp eq i32 %i.p, -1
  br i1 %.not.i11.i, label %curses_window_check_err.exit.sink.split.i, label %_curses_window_delch_impl.exit

curses_window_check_err.exit.sink.split.i:        ; preds = %.split.i, %bb.d, %.split10.i
  %.str.386.sink.i = phi ptr [ @.str.385, %.split10.i ], [ @.str.386, %bb.d ], [ @.str.386, %.split.i ]
  %i.q = getelementptr i8, ptr %0, i64 8
  %.val.i13.i = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.r = call ptr @PyType_GetModuleState(ptr noundef %.val.i13.i) #9
  %.val4.i.i14.i = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.s = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i14.i, ptr noundef nonnull @.str.85, ptr noundef nonnull %.str.386.sink.i, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_delch_impl.exit

_curses_window_delch_impl.exit:                   ; preds = %curses_window_check_err.exit.sink.split.i, %.split.i, %.split10.i, %bb.b, %bb.c
  %.04 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ @_Py_NoneStruct, %.split.i ], [ @_Py_NoneStruct, %.split10.i ], [ null, %curses_window_check_err.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.04
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @PyCursesWindow_wdeleteln(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call i32 @winsdelln(ptr noundef %i.b, i32 noundef -1) #9
  %.not.i = icmp eq i32 %i.c, -1
  br i1 %.not.i, label %bb.b, label %curses_window_check_err.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.e = tail call ptr @PyType_GetModuleState(ptr noundef %.val.i) #9
  %.val4.i.i = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.387, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %curses_window_check_err.exit

curses_window_check_err.exit:                     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.a ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_curses_window_derwin(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.e = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !40
  switch i64 %.val, label %bb.d [
    i64 2, label %bb.b
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.388, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9
  %.not6 = icmp eq i32 %i.f, 0
  br i1 %.not6, label %_curses_window_derwin_impl.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.389, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_curses_window_derwin_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4, !tbaa !6
  %.pre7 = load i32, ptr %i.b, align 4, !tbaa !6
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.390) #9
  br label %_curses_window_derwin_impl.exit

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %2 = phi i32 [ %.pre7, %._crit_edge ], [ 0, %bb.b ]
  %3 = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.b ]
  %i.i = load i32, ptr %i.c, align 4, !tbaa !6
  %i.j = load i32, ptr %i.d, align 4, !tbaa !6
  %i.k = getelementptr i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = call ptr @derwin(ptr noundef %i.l, i32 noundef %3, i32 noundef %2, i32 noundef %i.i, i32 noundef %i.j) #9 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr i8, ptr %0, i64 8
  %.val12.i = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.p = call ptr @PyType_GetModuleState(ptr noundef %.val12.i) #9 ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val4.i.i = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.q = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.282, ptr noundef nonnull @.str.99) #9 ; 0 uses
  br label %_curses_window_derwin_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.r = call fastcc ptr @PyCursesWindow_New(ptr noundef %i.p, ptr noundef nonnull %i.m, ptr noundef null, ptr noundef nonnull %0)
  br label %_curses_window_derwin_impl.exit

_curses_window_derwin_impl.exit:                  ; preds = %bb.g, %bb.f, %bb.c, %bb.b, %bb.d
  %.05 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.f ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.05
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_window_echochar(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = add i64 %2, -1
  %or.cond = icmp ult i64 %i.b, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.283, i64 noundef %2, i64 noundef 1, i64 noundef 2) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !16
  %i.e = icmp slt i64 %2, 2
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = tail call i64 @PyLong_AsLong(ptr noundef %i.g) #9 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @PyErr_Occurred() #9
  %.not13 = icmp eq ptr %i.j, null
  br i1 %.not13, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ -1, %bb.e ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.k = call fastcc i32 @PyCurses_ConvertToChtype(ptr noundef readonly %0, ptr noundef %i.d, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_curses_window_echochar_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = tail call zeroext i1 @is_pad(ptr noundef %i.m) #9
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !6
  %i.q = trunc i64 %.0 to i32
  %i.r = or i32 %i.p, %i.q                        ; 2 uses
  br i1 %i.n, label %.split13.i, label %.split.i

.split13.i:                                       ; preds = %bb.g
  %i.s = tail call i32 @pechochar(ptr noundef %i.o, i32 noundef %i.r) #9
  %.not.i.i = icmp eq i32 %i.s, -1
  br i1 %.not.i.i, label %curses_window_check_err.exit.sink.split.i, label %_curses_window_echochar_impl.exit

.split.i:                                         ; preds = %bb.g
  %i.t = tail call i32 @wechochar(ptr noundef %i.o, i32 noundef %i.r) #9
  %.not.i14.i = icmp eq i32 %i.t, -1
  br i1 %.not.i14.i, label %curses_window_check_err.exit.sink.split.i, label %_curses_window_echochar_impl.exit

curses_window_check_err.exit.sink.split.i:        ; preds = %.split.i, %.split13.i
  %.str.392.sink.i = phi ptr [ @.str.391, %.split13.i ], [ @.str.392, %.split.i ]
  %i.u = getelementptr i8, ptr %0, i64 8
  %.val.i16.i = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.v = tail call ptr @PyType_GetModuleState(ptr noundef %.val.i16.i) #9
  %.val4.i.i17.i = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.w = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i17.i, ptr noundef nonnull @.str.85, ptr noundef nonnull %.str.392.sink.i, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_echochar_impl.exit

_curses_window_echochar_impl.exit:                ; preds = %bb.f, %.split13.i, %.split.i, %curses_window_check_err.exit.sink.split.i
  %.011.i = phi ptr [ null, %bb.f ], [ @_Py_NoneStruct, %.split.i ], [ @_Py_NoneStruct, %.split13.i ], [ null, %curses_window_check_err.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.b, %_curses_window_echochar_impl.exit
  %.011 = phi ptr [ %.011.i, %_curses_window_echochar_impl.exit ], [ null, %bb.e ], [ null, %bb.b ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define internal ptr @_curses_window_enclose(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.284, i64 noundef %2, i64 noundef 2, i64 noundef 2) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !16
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #9 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #9
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = tail call i32 @PyLong_AsInt(ptr noundef %i.g) #9 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @PyErr_Occurred() #9
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.h, %bb.e ], [ -1, %bb.f ]
  %i.k = getelementptr i8, ptr %0, i64 16
  %.val15 = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.l = tail call zeroext i1 @wenclose(ptr noundef %.val15, i32 noundef %i.c, i32 noundef %.sink) #9
  %i.m = zext i1 %i.l to i64
  %i.n = tail call ptr @PyBool_FromLong(i64 noundef %i.m) #9
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ %i.n, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @PyCursesWindow_werase(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call i32 @werase(ptr noundef %i.b) #9
  %.not.i = icmp eq i32 %i.c, -1
  br i1 %.not.i, label %bb.b, label %curses_window_check_err.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.e = tail call ptr @PyType_GetModuleState(ptr noundef %.val.i) #9
  %.val4.i.i = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.393, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %curses_window_check_err.exit

curses_window_check_err.exit:                     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.a ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @PyCursesWindow_getbegyx(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call i32 @getbegy(ptr noundef %i.b) #9
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.e = tail call i32 @getbegx(ptr noundef %i.d) #9
  %i.f = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.394, i32 noundef %i.c, i32 noundef %i.e) #9
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @_curses_window_getbkgd(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call i32 @getbkgd(ptr noundef %i.b) #9 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.f = tail call ptr @PyType_GetModuleState(ptr noundef %.val.i) #9
  %.val4.i.i = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_getbkgd_impl.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@PyCursesWindow_wresize:bb.a

curses_window_check_err.exit:                     ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_window_scroll(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 1, ptr %i.a, align 4, !tbaa !6
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !40
  switch i64 %.val, label %bb.c [
    i64 0, label %.split8.i
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.473, ptr noundef nonnull %i.a) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_curses_window_scroll_impl.exit, label %.split.i

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.474) #9
  br label %_curses_window_scroll_impl.exit

.split8.i:                                        ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = tail call i32 @wscrl(ptr noundef %i.f, i32 noundef 1) #9
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %curses_window_check_err.exit.sink.split.i, label %_curses_window_scroll_impl.exit

.split.i:                                         ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !6
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = call i32 @wscrl(ptr noundef %i.j, i32 noundef %i.h) #9
  %.not.i9.i = icmp eq i32 %i.k, -1
  br i1 %.not.i9.i, label %curses_window_check_err.exit.sink.split.i, label %_curses_window_scroll_impl.exit

curses_window_check_err.exit.sink.split.i:        ; preds = %.split.i, %.split8.i
  %.str.475.sink.i = phi ptr [ @.str.323, %.split8.i ], [ @.str.475, %.split.i ]
  %i.l = getelementptr i8, ptr %0, i64 8
  %.val.i11.i = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.m = call ptr @PyType_GetModuleState(ptr noundef %.val.i11.i) #9
  %.val4.i.i12.i = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.n = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i12.i, ptr noundef nonnull @.str.85, ptr noundef nonnull %.str.475.sink.i, ptr noundef nonnull @.str.323, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_scroll_impl.exit

_curses_window_scroll_impl.exit:                  ; preds = %curses_window_check_err.exit.sink.split.i, %.split.i, %.split8.i, %bb.b, %bb.c
  %.04 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ @_Py_NoneStruct, %.split.i ], [ @_Py_NoneStruct, %.split8.i ], [ null, %curses_window_check_err.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.04
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @PyCursesWindow_scrollok(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.382, ptr noundef nonnull %i.a) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %curses_window_check_err.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = load i32, ptr %i.a, align 4, !tbaa !6
  %i.f = icmp ne i32 %i.e, 0
  %i.g = call i32 @scrollok(ptr noundef %i.d, i1 noundef zeroext %i.f) #9
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %bb.c, label %curses_window_check_err.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.i = call ptr @PyType_GetModuleState(ptr noundef %.val.i) #9
  %.val4.i.i = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.j = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %curses_window_check_err.exit

curses_window_check_err.exit:                     ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_window_setscrreg(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.325, i64 noundef %2, i64 noundef 2, i64 noundef 2) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_curses_window_setscrreg_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !16
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #9 ; 3 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #9
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.e, label %_curses_window_setscrreg_impl.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = tail call i32 @PyLong_AsInt(ptr noundef %i.g) #9 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = tail call i32 @wsetscrreg(ptr noundef %i.k, i32 noundef %i.c, i32 noundef %i.h) #9
  %.not.i.i = icmp eq i32 %i.l, -1
  br i1 %.not.i.i, label %_curses_window_setscrreg_impl.exit.sink.split, label %_curses_window_setscrreg_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @PyErr_Occurred() #9
  %.not14 = icmp eq ptr %i.m, null
  br i1 %.not14, label %.split11, label %_curses_window_setscrreg_impl.exit

.split11:                                         ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.p = tail call i32 @wsetscrreg(ptr noundef %i.o, i32 noundef %i.c, i32 noundef -1) #9
  %.not.i.i15 = icmp eq i32 %i.p, -1
  br i1 %.not.i.i15, label %_curses_window_setscrreg_impl.exit.sink.split, label %_curses_window_setscrreg_impl.exit

_curses_window_setscrreg_impl.exit.sink.split:    ; preds = %.split11, %.split
  %i.q = getelementptr i8, ptr %0, i64 8
  %.val.i.i17 = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.r = tail call ptr @PyType_GetModuleState(ptr noundef %.val.i.i17) #9
  %.val4.i.i.i18 = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.s = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i.i18, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.476, ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_setscrreg_impl.exit

_curses_window_setscrreg_impl.exit:               ; preds = %_curses_window_setscrreg_impl.exit.sink.split, %.split11, %.split, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ @_Py_NoneStruct, %.split11 ], [ @_Py_NoneStruct, %.split ], [ null, %_curses_window_setscrreg_impl.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @PyCursesWindow_wstandend(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call i32 @wattrset(ptr noundef %i.b, i32 noundef 0) #9 ; 0 uses
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @PyCursesWindow_wstandout(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call i32 @wattrset(ptr noundef %i.b, i32 noundef 65536) #9 ; 0 uses
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @_curses_window_subwin(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.e = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !40
  switch i64 %.val, label %bb.d [
    i64 2, label %bb.b
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.477, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9
  %.not6 = icmp eq i32 %i.f, 0
  br i1 %.not6, label %_curses_window_subwin_impl.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.478, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_curses_window_subwin_impl.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4, !tbaa !6
  %.pre7 = load i32, ptr %i.b, align 4, !tbaa !6
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.479) #9
  br label %_curses_window_subwin_impl.exit

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %2 = phi i32 [ %.pre7, %._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %3 = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !6    ; 2 uses
  %i.j = load i32, ptr %i.d, align 4, !tbaa !6    ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = call zeroext i1 @is_pad(ptr noundef %i.l) #9
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = call ptr @subpad(ptr noundef %i.n, i32 noundef %3, i32 noundef %2, i32 noundef %i.i, i32 noundef %i.j) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = call ptr @subwin(ptr noundef %i.n, i32 noundef %3, i32 noundef %2, i32 noundef %i.i, i32 noundef %i.j) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.020.i = phi ptr [ %i.o, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %.019.i = phi ptr [ @.str.328, %bb.f ], [ @.str.329, %bb.g ]
  %i.q = icmp eq ptr %.020.i, null
  %i.r = getelementptr i8, ptr %0, i64 8
  %.val21.i = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.s = call ptr @PyType_GetModuleState(ptr noundef %.val21.i) #9 ; 2 uses
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.val4.i.i = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.t = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull %.019.i, ptr noundef nonnull @.str.329, ptr noundef nonnull @.str.99) #9 ; 0 uses
  br label %_curses_window_subwin_impl.exit

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.w = call fastcc ptr @PyCursesWindow_New(ptr noundef %i.s, ptr noundef nonnull %.020.i, ptr noundef %i.v, ptr noundef nonnull %0)
  br label %_curses_window_subwin_impl.exit

_curses_window_subwin_impl.exit:                  ; preds = %bb.j, %bb.i, %bb.c, %bb.b, %bb.d
  %.05 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.i ], [ %i.w, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.05
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @PyCursesWindow_wsyncdown(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  tail call void @wsyncdown(ptr noundef %i.b) #9
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @PyCursesWindow_syncok(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.382, ptr noundef nonnull %i.a) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %curses_window_check_err.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = load i32, ptr %i.a, align 4, !tbaa !6
  %i.f = icmp ne i32 %i.e, 0
  %i.g = call i32 @syncok(ptr noundef %i.d, i1 noundef zeroext %i.f) #9
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %bb.c, label %curses_window_check_err.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.i = call ptr @PyType_GetModuleState(ptr noundef %.val.i) #9
  %.val4.i.i = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.j = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %curses_window_check_err.exit

curses_window_check_err.exit:                     ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @PyCursesWindow_wsyncup(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  tail call void @wsyncup(ptr noundef %i.b) #9
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @PyCursesWindow_wtimeout(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.480, ptr noundef nonnull %i.a) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = load i32, ptr %i.a, align 4, !tbaa !6
  call void @wtimeout(ptr noundef %i.d, i32 noundef %i.e) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_window_touchline(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !6
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !40
  switch i64 %.val, label %bb.d [
    i64 2, label %bb.b
    i64 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.481, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %_curses_window_touchline_impl.exit, label %.split12.i

bb.c:                                             ; preds = %bb.a
  %i.f = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.482, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #9
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_curses_window_touchline_impl.exit, label %.split.i

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.483) #9
  br label %_curses_window_touchline_impl.exit

.split12.i:                                       ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !6
  %i.i = load i32, ptr %i.b, align 4, !tbaa !6
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = call i32 @wtouchln(ptr noundef %i.k, i32 noundef %i.h, i32 noundef %i.i, i32 noundef 1) #9
  %.not.i.i = icmp eq i32 %i.l, -1
  br i1 %.not.i.i, label %curses_window_check_err.exit.sink.split.i, label %_curses_window_touchline_impl.exit

.split.i:                                         ; preds = %bb.c
  %i.m = load i32, ptr %i.a, align 4, !tbaa !6
  %i.n = load i32, ptr %i.b, align 4, !tbaa !6
  %i.o = load i32, ptr %i.c, align 4, !tbaa !6
  %i.p = getelementptr i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = call i32 @wtouchln(ptr noundef %i.q, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o) #9
  %.not.i13.i = icmp eq i32 %i.r, -1
  br i1 %.not.i13.i, label %curses_window_check_err.exit.sink.split.i, label %_curses_window_touchline_impl.exit

curses_window_check_err.exit.sink.split.i:        ; preds = %.split.i, %.split12.i
  %.str.484.sink.i = phi ptr [ @.str.334, %.split12.i ], [ @.str.484, %.split.i ]
  %i.s = getelementptr i8, ptr %0, i64 8
  %.val.i15.i = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.t = call ptr @PyType_GetModuleState(ptr noundef %.val.i15.i) #9
  %.val4.i.i16.i = load ptr, ptr %i.t, align 8, !tbaa !10
  %i.u = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i16.i, ptr noundef nonnull @.str.85, ptr noundef nonnull %.str.484.sink.i, ptr noundef nonnull @.str.334, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_touchline_impl.exit

_curses_window_touchline_impl.exit:               ; preds = %curses_window_check_err.exit.sink.split.i, %.split.i, %.split12.i, %bb.c, %bb.b, %bb.d
  %.05 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ @_Py_NoneStruct, %.split.i ], [ @_Py_NoneStruct, %.split12.i ], [ null, %curses_window_check_err.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.05
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @PyCursesWindow_touchwin(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = tail call i32 @getmaxy(ptr noundef %i.b) #9
  %i.d = tail call i32 @wtouchln(ptr noundef %i.b, i32 noundef 0, i32 noundef %i.c, i32 noundef 1) #9
  %.not.i = icmp eq i32 %i.d, -1
  br i1 %.not.i, label %bb.b, label %curses_window_check_err.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.f = tail call ptr @PyType_GetModuleState(ptr noundef %.val.i) #9
  %.val4.i.i = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.335, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %curses_window_check_err.exit

curses_window_check_err.exit:                     ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.a ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @PyCursesWindow_untouchwin(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = tail call i32 @getmaxy(ptr noundef %i.b) #9
end_hunk_1
