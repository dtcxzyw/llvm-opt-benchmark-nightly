inline.NumInlined: 498
inline.NumDeleted: 153
begin_hunk_0_@cursesmodule_free:bb.a
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %cursesmodule_clear.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #9
  br label %cursesmodule_clear.exit

cursesmodule_clear.exit:                          ; preds = %Py_DECREF.exit14.i, %bb.e, %bb.f, %bb.g
  store i1 false, ptr @curses_module_loaded, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @_curses_baudrate(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %bb.a
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_baudrate_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %bb.a
  %i.d = tail call i32 @baudrate() #9             ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.f = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_baudrate_impl.exit

bb.c:                                             ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.h = sext i32 %i.d to i64
  %i.i = tail call ptr @PyLong_FromLong(i64 noundef %i.h) #9
  br label %_curses_baudrate_impl.exit

_curses_baudrate_impl.exit:                       ; preds = %_PyCursesStatefulCheckFunction.exit.thread.i, %bb.b, %bb.c
  %.1.i = phi ptr [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ], [ null, %bb.b ], [ %i.i, %bb.c ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_beep(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %bb.a
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_beep_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %bb.a
  %i.d = tail call i32 @beep() #9
  %.not.i3.i = icmp eq i32 %i.d, -1
  br i1 %.not.i3.i, label %bb.b, label %_curses_beep_impl.exit

bb.b:                                             ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.e = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.f = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val.i.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_beep_impl.exit

_curses_beep_impl.exit:                           ; preds = %_PyCursesStatefulCheckFunction.exit.thread.i, %_PyCursesStatefulCheckFunction.exit.i, %bb.b
  %.0.i = phi ptr [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ], [ @_Py_NoneStruct, %_PyCursesStatefulCheckFunction.exit.i ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_curses_can_change_color(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %bb.a
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_can_change_color_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %bb.a
  %i.d = tail call zeroext i1 @can_change_color() #9
  %i.e = zext i1 %i.d to i64
  %i.f = tail call ptr @PyBool_FromLong(i64 noundef %i.e) #9
  br label %_curses_can_change_color_impl.exit

_curses_can_change_color_impl.exit:               ; preds = %_PyCursesStatefulCheckFunction.exit.thread.i, %_PyCursesStatefulCheckFunction.exit.i
  %.0.i = phi ptr [ %i.f, %_PyCursesStatefulCheckFunction.exit.i ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_cbreak(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.4, i64 noundef %2, i64 noundef 0, i64 noundef 1) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_curses_cbreak_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !16
  %i.d = tail call i32 @PyObject_IsTrue(ptr noundef %i.c) #9 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %_curses_cbreak_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

.thread:                                          ; preds = %bb.c
  %.b.i12 = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i12, label %.split8.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %.thread, %bb.e
  %i.f = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_cbreak_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %bb.e
  %.not9.i = icmp eq i32 %i.d, 0
  br i1 %.not9.i, label %.split.i, label %.split8.i

.split8.i:                                        ; preds = %.thread, %_PyCursesStatefulCheckFunction.exit.i
  %i.i = tail call i32 @cbreak() #9
  %.not.i10.i = icmp eq i32 %i.i, -1
  br i1 %.not.i10.i, label %bb.f, label %_curses_cbreak_impl.exit

bb.f:                                             ; preds = %.split8.i
  %i.j = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val.i.i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_cbreak_impl.exit

.split.i:                                         ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.l = tail call i32 @nocbreak() #9
  %.not.i12.i = icmp eq i32 %i.l, -1
  br i1 %.not.i12.i, label %bb.g, label %_curses_cbreak_impl.exit

bb.g:                                             ; preds = %.split.i
  %i.m = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %.val.i.i14.i = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val.i.i14.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_cbreak_impl.exit

_curses_cbreak_impl.exit:                         ; preds = %bb.g, %.split.i, %bb.f, %.split8.i, %_PyCursesStatefulCheckFunction.exit.thread.i, %bb.d, %bb.b
  %.09 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ], [ null, %bb.f ], [ @_Py_NoneStruct, %.split8.i ], [ @_Py_NoneStruct, %.split.i ], [ null, %bb.g ]
  ret ptr %.09
}

; Function Attrs: nounwind uwtable
define internal ptr @_curses_color_content(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.e = call i64 @PyLong_AsLongAndOverflow(ptr noundef %1, ptr noundef nonnull %i.d) #9 ; 4 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @PyErr_Occurred() #9
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %color_allow_default_converter.exit.thread.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr %i.d, align 4, !tbaa !6    ; 2 uses
  %i.i = icmp slt i32 %i.h, 1
  %i.j = load i32, ptr @COLORS, align 4           ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.not9.i.i = icmp slt i64 %i.e, %i.k
  %or.cond11.i.i = select i1 %i.i, i1 %.not9.i.i, i1 false
  br i1 %or.cond11.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  %i.m = add i32 %i.j, -1
  %i.n = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.87, i32 noundef %i.m) #9 ; 0 uses
  br label %color_allow_default_converter.exit.thread.i

color_allow_default_converter.exit.thread.i:      ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %color_converter.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ne i32 %i.h, 0
  %i.p = trunc i64 %i.e to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.q = and i64 %i.e, -9223372034707292160
  %i.r = icmp ne i64 %i.q, 0
  %i.s = or i1 %i.r, %i.o
  br i1 %i.s, label %bb.f, label %color_converter.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.86) #9
  br label %color_converter.exit.thread

color_converter.exit:                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %color_converter.exit
  %i.u = call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.w = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_color_content_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %color_converter.exit
  %.b5.i = load i1, ptr @curses_start_color_called, align 4
  br i1 %.b5.i, label %_PyCursesStatefulCheckFunction.exit9.i, label %_PyCursesStatefulCheckFunction.exit9.thread.i

_PyCursesStatefulCheckFunction.exit9.thread.i:    ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.x = call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.z = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.y, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.66) #9 ; 0 uses
  br label %_curses_color_content_impl.exit

_PyCursesStatefulCheckFunction.exit9.i:           ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.aa = call i32 @extended_color_content(i32 noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #9
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_PyCursesStatefulCheckFunction.exit9.i
  %i.ac = call ptr @PyModule_GetState(ptr noundef %0) #9
  %.val.i.i = load ptr, ptr %i.ac, align 8, !tbaa !10
  %i.ad = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val.i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_color_content_impl.exit

bb.h:                                             ; preds = %_PyCursesStatefulCheckFunction.exit9.i
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !6
  %i.af = load i32, ptr %i.b, align 4, !tbaa !6
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !6
  %i.ah = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.89, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ag) #9
  br label %_curses_color_content_impl.exit

_curses_color_content_impl.exit:                  ; preds = %_PyCursesStatefulCheckFunction.exit.thread.i, %_PyCursesStatefulCheckFunction.exit9.thread.i, %bb.g, %bb.h
  %.0.i3 = phi ptr [ null, %bb.g ], [ %i.ah, %bb.h ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ], [ null, %_PyCursesStatefulCheckFunction.exit9.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %color_converter.exit.thread

color_converter.exit.thread:                      ; preds = %color_allow_default_converter.exit.thread.i, %bb.f, %_curses_color_content_impl.exit
  %.0 = phi ptr [ %.0.i3, %_curses_color_content_impl.exit ], [ null, %bb.f ], [ null, %color_allow_default_converter.exit.thread.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_curses_color_pair(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #9 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %.split
  %i.c = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_color_pair_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %.split
  %.b3.i = load i1, ptr @curses_start_color_called, align 4
  br i1 %.b3.i, label %_PyCursesStatefulCheckFunction.exit7.i, label %_PyCursesStatefulCheckFunction.exit7.thread.i

_PyCursesStatefulCheckFunction.exit7.thread.i:    ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.f = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.66) #9 ; 0 uses
  br label %_curses_color_pair_impl.exit

_PyCursesStatefulCheckFunction.exit7.i:           ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.i = shl i32 %i.a, 8
  %i.j = and i32 %i.i, 65280
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call ptr @PyLong_FromLong(i64 noundef %i.k) #9
  br label %_curses_color_pair_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @PyErr_Occurred() #9
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.split4, label %_curses_color_pair_impl.exit

.split4:                                          ; preds = %bb.b
  %.b.i6 = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i6, label %_PyCursesStatefulCheckFunction.exit.i9, label %_PyCursesStatefulCheckFunction.exit.thread.i7

_PyCursesStatefulCheckFunction.exit.thread.i7:    ; preds = %.split4
  %i.n = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_color_pair_impl.exit

_PyCursesStatefulCheckFunction.exit.i9:           ; preds = %.split4
  %.b3.i10 = load i1, ptr @curses_start_color_called, align 4
  br i1 %.b3.i10, label %_PyCursesStatefulCheckFunction.exit7.i12, label %_PyCursesStatefulCheckFunction.exit7.thread.i11

_PyCursesStatefulCheckFunction.exit7.thread.i11:  ; preds = %_PyCursesStatefulCheckFunction.exit.i9
  %i.q = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10
  %i.s = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.r, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.66) #9 ; 0 uses
  br label %_curses_color_pair_impl.exit

_PyCursesStatefulCheckFunction.exit7.i12:         ; preds = %_PyCursesStatefulCheckFunction.exit.i9
  %i.t = tail call ptr @PyLong_FromLong(i64 noundef 65280) #9
  br label %_curses_color_pair_impl.exit

_curses_color_pair_impl.exit:                     ; preds = %_PyCursesStatefulCheckFunction.exit7.i12, %_PyCursesStatefulCheckFunction.exit7.thread.i11, %_PyCursesStatefulCheckFunction.exit.thread.i7, %_PyCursesStatefulCheckFunction.exit7.i, %_PyCursesStatefulCheckFunction.exit7.thread.i, %_PyCursesStatefulCheckFunction.exit.thread.i, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %_PyCursesStatefulCheckFunction.exit7.thread.i ], [ %i.l, %_PyCursesStatefulCheckFunction.exit7.i ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ], [ %i.t, %_PyCursesStatefulCheckFunction.exit7.i12 ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i7 ], [ null, %_PyCursesStatefulCheckFunction.exit7.thread.i11 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_curses_curs_set(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #9 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.d, label %.split

.split:                                           ; preds = %bb.a
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %.split
  %i.c = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_curs_set_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %.split
  %i.f = tail call i32 @curs_set(i32 noundef %i.a) #9 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.h = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_curs_set_impl.exit

bb.c:                                             ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.j = sext i32 %i.f to i64
  %i.k = tail call ptr @PyLong_FromLong(i64 noundef %i.j) #9
  br label %_curses_curs_set_impl.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call ptr @PyErr_Occurred() #9
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.split4, label %_curses_curs_set_impl.exit

.split4:                                          ; preds = %bb.d
  %.b.i6 = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i6, label %_PyCursesStatefulCheckFunction.exit.i9, label %_PyCursesStatefulCheckFunction.exit.thread.i7

_PyCursesStatefulCheckFunction.exit.thread.i7:    ; preds = %.split4
  %i.m = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_curs_set_impl.exit

_PyCursesStatefulCheckFunction.exit.i9:           ; preds = %.split4
  %i.p = tail call i32 @curs_set(i32 noundef -1) #9 ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_PyCursesStatefulCheckFunction.exit.i9
  %i.r = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %.val.i.i10 = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.s = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val.i.i10, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_curs_set_impl.exit

bb.f:                                             ; preds = %_PyCursesStatefulCheckFunction.exit.i9
  %i.t = sext i32 %i.p to i64
  %i.u = tail call ptr @PyLong_FromLong(i64 noundef %i.t) #9
  br label %_curses_curs_set_impl.exit

_curses_curs_set_impl.exit:                       ; preds = %bb.f, %bb.e, %_PyCursesStatefulCheckFunction.exit.thread.i7, %bb.c, %bb.b, %_PyCursesStatefulCheckFunction.exit.thread.i, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ], [ null, %bb.b ], [ %i.k, %bb.c ], [ null, %bb.e ], [ %i.u, %bb.f ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i7 ]
  ret ptr %.0
}
end_hunk_0
begin_hunk_1_@_curses_has_extended_color_support:bb.a
; Function Attrs: nounwind uwtable
define internal ptr @_curses_has_ic(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %bb.a
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_has_ic_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %bb.a
  %i.d = tail call zeroext i1 @has_ic() #9
  %i.e = zext i1 %i.d to i64
  %i.f = tail call ptr @PyBool_FromLong(i64 noundef %i.e) #9
  br label %_curses_has_ic_impl.exit

_curses_has_ic_impl.exit:                         ; preds = %_PyCursesStatefulCheckFunction.exit.thread.i, %_PyCursesStatefulCheckFunction.exit.i
  %.0.i = phi ptr [ %i.f, %_PyCursesStatefulCheckFunction.exit.i ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_curses_has_il(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %bb.a
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_has_il_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %bb.a
  %i.d = tail call zeroext i1 @has_il() #9
  %i.e = zext i1 %i.d to i64
  %i.f = tail call ptr @PyBool_FromLong(i64 noundef %i.e) #9
  br label %_curses_has_il_impl.exit

_curses_has_il_impl.exit:                         ; preds = %_PyCursesStatefulCheckFunction.exit.thread.i, %_PyCursesStatefulCheckFunction.exit.i
  %.0.i = phi ptr [ %i.f, %_PyCursesStatefulCheckFunction.exit.i ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_curses_has_key(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #9 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %.split
  %i.c = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_has_key_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %.split
  %i.f = tail call i32 @has_key(i32 noundef %i.a) #9
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @PyBool_FromLong(i64 noundef %i.g) #9
  br label %_curses_has_key_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyErr_Occurred() #9
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.split4, label %_curses_has_key_impl.exit

.split4:                                          ; preds = %bb.b
  %.b.i6 = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i6, label %_PyCursesStatefulCheckFunction.exit.i9, label %_PyCursesStatefulCheckFunction.exit.thread.i7

_PyCursesStatefulCheckFunction.exit.thread.i7:    ; preds = %.split4
  %i.j = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_has_key_impl.exit

_PyCursesStatefulCheckFunction.exit.i9:           ; preds = %.split4
  %i.m = tail call i32 @has_key(i32 noundef -1) #9
  %i.n = sext i32 %i.m to i64
  %i.o = tail call ptr @PyBool_FromLong(i64 noundef %i.n) #9
  br label %_curses_has_key_impl.exit

_curses_has_key_impl.exit:                        ; preds = %_PyCursesStatefulCheckFunction.exit.i9, %_PyCursesStatefulCheckFunction.exit.thread.i7, %_PyCursesStatefulCheckFunction.exit.i, %_PyCursesStatefulCheckFunction.exit.thread.i, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ], [ %i.h, %_PyCursesStatefulCheckFunction.exit.i ], [ %i.o, %_PyCursesStatefulCheckFunction.exit.i9 ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i7 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_halfdelay(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsLong(ptr noundef %1) #9 ; 4 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #9
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %_curses_halfdelay_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  %i.e = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.101) #9
  br label %_curses_halfdelay_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %i.a, 255
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.102) #9
  br label %_curses_halfdelay_impl.exit

bb.f:                                             ; preds = %bb.d
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %bb.f
  %i.h = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_halfdelay_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %bb.f
  %i.k = trunc nuw nsw i64 %i.a to i32
  %i.l = tail call i32 @halfdelay(i32 noundef %i.k) #9
  %.not.i3.i = icmp eq i32 %i.l, -1
  br i1 %.not.i3.i, label %bb.g, label %_curses_halfdelay_impl.exit

bb.g:                                             ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.m = tail call ptr @PyModule_GetState(ptr noundef %0) #9
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val.i.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_halfdelay_impl.exit

_curses_halfdelay_impl.exit:                      ; preds = %bb.b, %bb.e, %.thread, %bb.g, %_PyCursesStatefulCheckFunction.exit.i, %_PyCursesStatefulCheckFunction.exit.thread.i
  %.011 = phi ptr [ null, %bb.g ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ], [ @_Py_NoneStruct, %_PyCursesStatefulCheckFunction.exit.i ], [ null, %.thread ], [ null, %bb.e ], [ null, %bb.b ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_init_color(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %or.cond = icmp eq i64 %2, 4
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.28, i64 noundef %2, i64 noundef 4, i64 noundef 4) #9
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_curses_init_color_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.g = call i64 @PyLong_AsLongAndOverflow(ptr noundef %i.f, ptr noundef nonnull %i.d) #9 ; 4 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr @PyErr_Occurred() #9
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.e, label %color_allow_default_converter.exit.thread.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i32, ptr %i.d, align 4, !tbaa !6    ; 2 uses
  %i.k = icmp slt i32 %i.j, 1
  %i.l = load i32, ptr @COLORS, align 4           ; 2 uses
  %i.m = sext i32 %i.l to i64
  %.not9.i.i = icmp slt i64 %i.g, %i.m
  %or.cond11.i.i = select i1 %i.k, i1 %.not9.i.i, i1 false
  br i1 %or.cond11.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  %i.o = add i32 %i.l, -1
  %i.p = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.87, i32 noundef %i.o) #9 ; 0 uses
  br label %color_allow_default_converter.exit.thread.i

color_allow_default_converter.exit.thread.i:      ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %_curses_init_color_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.q = icmp ne i32 %i.j, 0
  %i.r = trunc i64 %i.g to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.s = and i64 %i.g, -9223372034707292160
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.t, %i.q
  br i1 %i.u, label %bb.h, label %color_converter.exit

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.86) #9
  br label %_curses_init_color_impl.exit

color_converter.exit:                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.y = call i64 @PyLong_AsLongAndOverflow(ptr noundef %i.x, ptr noundef nonnull %i.c) #9 ; 4 uses
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %color_converter.exit
  %i.aa = call ptr @PyErr_Occurred() #9
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.j, label %component_converter.exit.thread

bb.j:                                             ; preds = %bb.i, %color_converter.exit
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !6   ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = icmp sgt i64 %i.y, 1000
  %or.cond.i = or i1 %i.ad, %i.ac
  br i1 %or.cond.i, label %component_converter.exit.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp slt i32 %i.ab, 0
  %i.af = icmp slt i64 %i.y, 0
  %or.cond3.i = or i1 %i.af, %i.ae
  br i1 %or.cond3.i, label %component_converter.exit.thread.sink.split, label %bb.l

component_converter.exit.thread.sink.split:       ; preds = %bb.k, %bb.j
  %.str.103.sink = phi ptr [ @.str.103, %bb.j ], [ @.str.104, %bb.k ]
  %i.ag = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull %.str.103.sink) #9
  br label %component_converter.exit.thread

component_converter.exit.thread:                  ; preds = %component_converter.exit.thread.sink.split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %_curses_init_color_impl.exit

bb.l:                                             ; preds = %bb.k
  %i.ah = trunc nuw nsw i64 %i.y to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.ai = getelementptr i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ak = call i64 @PyLong_AsLongAndOverflow(ptr noundef %i.aj, ptr noundef nonnull %i.b) #9 ; 4 uses
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = call ptr @PyErr_Occurred() #9
  %.not.i17 = icmp eq ptr %i.am, null
  br i1 %.not.i17, label %bb.n, label %component_converter.exit18.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = load i32, ptr %i.b, align 4, !tbaa !6   ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = icmp sgt i64 %i.ak, 1000
  %or.cond.i14 = or i1 %i.ap, %i.ao
  br i1 %or.cond.i14, label %component_converter.exit18.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = icmp slt i32 %i.an, 0
  %i.ar = icmp slt i64 %i.ak, 0
  %or.cond3.i15 = or i1 %i.ar, %i.aq
  br i1 %or.cond3.i15, label %component_converter.exit18.thread.sink.split, label %bb.p

component_converter.exit18.thread.sink.split:     ; preds = %bb.o, %bb.n
  %.str.103.sink53 = phi ptr [ @.str.103, %bb.n ], [ @.str.104, %bb.o ]
  %i.as = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  call void @PyErr_SetString(ptr noundef %i.as, ptr noundef nonnull %.str.103.sink53) #9
  br label %component_converter.exit18.thread

component_converter.exit18.thread:                ; preds = %component_converter.exit18.thread.sink.split, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_curses_init_color_impl.exit

bb.p:                                             ; preds = %bb.o
  %i.at = trunc nuw nsw i64 %i.ak to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.au = getelementptr i8, ptr %1, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.aw = call i64 @PyLong_AsLongAndOverflow(ptr noundef %i.av, ptr noundef nonnull %i.a) #9 ; 4 uses
  %i.ax = icmp eq i64 %i.aw, -1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = call ptr @PyErr_Occurred() #9
  %.not.i22 = icmp eq ptr %i.ay, null
  br i1 %.not.i22, label %bb.r, label %component_converter.exit23.thread

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.az = load i32, ptr %i.a, align 4, !tbaa !6   ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = icmp sgt i64 %i.aw, 1000
  %or.cond.i19 = or i1 %i.bb, %i.ba
  br i1 %or.cond.i19, label %component_converter.exit23.thread.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = icmp slt i32 %i.az, 0
  %i.bd = icmp slt i64 %i.aw, 0
  %or.cond3.i20 = or i1 %i.bd, %i.bc
  br i1 %or.cond3.i20, label %component_converter.exit23.thread.sink.split, label %bb.t

component_converter.exit23.thread.sink.split:     ; preds = %bb.s, %bb.r
  %.str.103.sink54 = phi ptr [ @.str.103, %bb.r ], [ @.str.104, %bb.s ]
  %i.be = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  call void @PyErr_SetString(ptr noundef %i.be, ptr noundef nonnull %.str.103.sink54) #9
  br label %component_converter.exit23.thread

component_converter.exit23.thread:                ; preds = %component_converter.exit23.thread.sink.split, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_curses_init_color_impl.exit

bb.t:                                             ; preds = %bb.s
  %i.bf = trunc nuw nsw i64 %i.aw to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.b.i = load i1, ptr @curses_initscr_called, align 4
  br i1 %.b.i, label %_PyCursesStatefulCheckFunction.exit.i, label %_PyCursesStatefulCheckFunction.exit.thread.i

_PyCursesStatefulCheckFunction.exit.thread.i:     ; preds = %bb.t
  %i.bg = call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !10
  %i.bi = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bh, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.30) #9 ; 0 uses
  br label %_curses_init_color_impl.exit

_PyCursesStatefulCheckFunction.exit.i:            ; preds = %bb.t
  %.b7.i = load i1, ptr @curses_start_color_called, align 4
  br i1 %.b7.i, label %_PyCursesStatefulCheckFunction.exit11.i, label %_PyCursesStatefulCheckFunction.exit11.thread.i

_PyCursesStatefulCheckFunction.exit11.thread.i:   ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.bj = call ptr @PyModule_GetState(ptr noundef %0) #9
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !10
  %i.bl = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bk, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.66) #9 ; 0 uses
  br label %_curses_init_color_impl.exit

_PyCursesStatefulCheckFunction.exit11.i:          ; preds = %_PyCursesStatefulCheckFunction.exit.i
  %i.bm = call i32 @init_extended_color(i32 noundef %i.r, i32 noundef %i.ah, i32 noundef %i.at, i32 noundef %i.bf) #9
  %.not.i12.i = icmp eq i32 %i.bm, -1
  br i1 %.not.i12.i, label %bb.u, label %_curses_init_color_impl.exit

bb.u:                                             ; preds = %_PyCursesStatefulCheckFunction.exit11.i
  %i.bn = call ptr @PyModule_GetState(ptr noundef %0) #9
  %.val.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !10
  %i.bo = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val.i.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_init_color_impl.exit

_curses_init_color_impl.exit:                     ; preds = %color_allow_default_converter.exit.thread.i, %bb.h, %bb.u, %_PyCursesStatefulCheckFunction.exit11.i, %_PyCursesStatefulCheckFunction.exit11.thread.i, %_PyCursesStatefulCheckFunction.exit.thread.i, %component_converter.exit23.thread, %component_converter.exit18.thread, %component_converter.exit.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %component_converter.exit23.thread ], [ null, %component_converter.exit18.thread ], [ null, %component_converter.exit.thread ], [ null, %bb.u ], [ null, %_PyCursesStatefulCheckFunction.exit11.thread.i ], [ null, %_PyCursesStatefulCheckFunction.exit.thread.i ], [ @_Py_NoneStruct, %_PyCursesStatefulCheckFunction.exit11.i ], [ null, %bb.h ], [ null, %color_allow_default_converter.exit.thread.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_init_pair(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.29, i64 noundef %2, i64 noundef 3, i64 noundef 3) #9
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_curses_init_pair_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.f = call i64 @PyLong_AsLongAndOverflow(ptr noundef %i.e, ptr noundef nonnull %i.c) #9 ; 4 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @PyErr_Occurred() #9
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %pair_converter.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load i32, ptr %i.c, align 4, !tbaa !6    ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = icmp sgt i64 %i.f, 2147483647
  %or.cond.i = or i1 %i.k, %i.j
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  %i.m = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.106, i32 noundef 2147483647) #9 ; 0 uses
  br label %pair_converter.exit.thread

bb.g:                                             ; preds = %bb.e
end_hunk_1
