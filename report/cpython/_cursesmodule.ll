Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_cursesmodule?download=true
inline.NumInlined: 498
inline.NumDeleted: 153
begin_hunk_0_@PyCursesWindow_dealloc:bb.a
  tail call void %i.q(ptr noundef nonnull %0) #9
  %i.r = load i32, ptr %.val, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %Py_XDECREF.exit
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %.val, align 8, !tbaa !17
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_XDECREF.exit, %bb.j, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PyCursesWindow_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val22 = load ptr, ptr %i.a, align 8, !tbaa !31 ; 2 uses
  %.not = icmp eq ptr %.val22, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val22, ptr noundef %2) #9 ; 2 uses
  %.not19.not = icmp eq i32 %i.b, 0
  br i1 %.not19.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull %i.d, ptr noundef %2) #9 ; 2 uses
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.4 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.e ], [ %i.e, %bb.d ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_window_addch(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i32], align 4                ; 5 uses
  %2 = alloca %struct.cchar_t, align 4            ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i32 0, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i64 0, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.h, align 8, !tbaa !40
  switch i64 %.val, label %bb.f [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.339, ptr noundef nonnull %i.f) #9
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.ad, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.340, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #9
  %.not11 = icmp eq i32 %i.j, 0
  br i1 %.not11, label %bb.ad, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.k = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #9
  %.not10 = icmp eq i32 %i.k, 0
  br i1 %.not10, label %bb.ad, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.l = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.342, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #9
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.ad, label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.343) #9
  br label %bb.ad

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.not29.i = phi i1 [ true, %bb.b ], [ false, %bb.d ], [ true, %bb.c ], [ false, %bb.e ] ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.o = load i32, ptr %i.e, align 4, !tbaa !9    ; 2 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !16   ; 6 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.val25.i.i = load ptr, ptr %i.r, align 8, !tbaa !31 ; 3 uses
  %i.s = getelementptr i8, ptr %.val25.i.i, i64 168
  %.val27.i.i = load i64, ptr %i.s, align 8, !tbaa !38 ; 2 uses
  %i.t = and i64 %.val27.i.i, 268435456
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = call i64 @PyUnicode_AsWideChar(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, i64 noundef 2) #9
  %.not23.i.i = icmp eq i64 %i.u, 1
  br i1 %.not23.i.i, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  %i.w = getelementptr i8, ptr %i.p, i64 16
  %.val30.i.i = load i64, ptr %i.w, align 8, !tbaa !47
  %i.x = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.183, i64 noundef %.val30.i.i) #9 ; 0 uses
  br label %PyCurses_ConvertToCchar_t.exit.thread.i

bb.j:                                             ; preds = %bb.g
  %i.y = and i64 %.val27.i.i, 134217728
  %.not18.i.i = icmp eq i64 %i.y, 0
  br i1 %.not18.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.p, i64 16
  %.val29.i.i = load i64, ptr %i.z, align 8, !tbaa !40 ; 2 uses
  %.not21.i.i = icmp eq i64 %.val29.i.i, 1
  br i1 %.not21.i.i, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  %i.ab = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.182, i64 noundef %.val29.i.i) #9 ; 0 uses
  br label %PyCurses_ConvertToCchar_t.exit.thread.i

.thread.i.i:                                      ; preds = %bb.k
  %i.ac = call ptr @PyBytes_AsString(ptr noundef nonnull %i.p) #9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17
  %i.ae = zext i8 %i.ad to i32
  br label %bb.y

bb.m:                                             ; preds = %bb.j
  %.not3.i.i = icmp eq ptr %.val25.i.i, @PyLong_Type
  br i1 %.not3.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.af = call i64 @PyLong_AsLongAndOverflow(ptr noundef nonnull %i.p, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !9
  %.not20.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not20.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !16
  call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.187) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %PyCurses_ConvertToCchar_t.exit.thread.i

bb.p:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  %i.aj = getelementptr i8, ptr %.val25.i.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.al = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ai, ptr noundef nonnull @.str.184, ptr noundef %i.ak) #9 ; 0 uses
  br label %PyCurses_ConvertToCchar_t.exit.thread.i

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.am = trunc nuw i64 %i.af to i32
  %.not22.i.i = icmp ult i64 %i.af, 4294967296
  br i1 %.not22.i.i, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !16
  %i.ao = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.an, ptr noundef nonnull @.str.185) #9 ; 0 uses
  br label %PyCurses_ConvertToCchar_t.exit.thread.i

PyCurses_ConvertToCchar_t.exit.thread.i:          ; preds = %bb.r, %bb.p, %bb.o, %bb.l, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_curses_window_addch_impl.exit

bb.s:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !9
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.aq, align 4, !tbaa !9
  %i.ar = trunc i64 %i.q to i32
  %i.as = trunc i64 %i.q to i16
  %3 = lshr i16 %i.as, 8
  %i.at = call i32 @setcchar(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i32 noundef %i.ar, i16 noundef signext %3, ptr noundef null) #9
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.aw = call ptr @PyType_GetModuleState(ptr noundef %.val.i) #9
  %.val4.i.i = load ptr, ptr %i.aw, align 8, !tbaa !14
  %i.ax = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_addch_impl.exit

bb.u:                                             ; preds = %bb.s
  %i.ay = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 2 uses
  br i1 %.not29.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = call i32 @wmove(ptr noundef %i.az, i32 noundef %i.n, i32 noundef %i.o) #9
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !48
  %i.bd = call i32 @wadd_wch(ptr noundef %i.bc, ptr noundef nonnull %2) #9
  br label %bb.ac

bb.x:                                             ; preds = %bb.u
  %i.be = call i32 @wadd_wch(ptr noundef %i.az, ptr noundef nonnull %2) #9
  br label %bb.ac

bb.y:                                             ; preds = %bb.q, %.thread.i.i
  %.032.ph.i = phi i32 [ %i.ae, %.thread.i.i ], [ %i.am, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bf = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !48 ; 2 uses
  br i1 %.not29.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = call i32 @wmove(ptr noundef %i.bg, i32 noundef %i.n, i32 noundef %i.o) #9
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !48
  %i.bk = trunc i64 %i.q to i32
  %i.bl = or i32 %.032.ph.i, %i.bk
  %i.bm = call i32 @waddch(ptr noundef %i.bj, i32 noundef %i.bl) #9
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.bn = trunc i64 %i.q to i32
  %i.bo = or i32 %.032.ph.i, %i.bn
  %i.bp = call i32 @waddch(ptr noundef %i.bg, i32 noundef %i.bo) #9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.x, %bb.w
  %.026.i = phi i32 [ %i.bp, %bb.ab ], [ %i.be, %bb.x ], [ %i.bm, %bb.aa ], [ %i.bd, %bb.w ]
  %.0.i = phi ptr [ @.str.348, %bb.ab ], [ @.str.346, %bb.x ], [ @.str.347, %bb.aa ], [ @.str.345, %bb.w ]
  %.not.i30.i = icmp eq i32 %.026.i, -1
  br i1 %.not.i30.i, label %.thread.i, label %_curses_window_addch_impl.exit

.thread.i:                                        ; preds = %bb.ac, %bb.z, %bb.v
  %.043.i = phi ptr [ %.0.i, %bb.ac ], [ @.str.347, %bb.z ], [ @.str.345, %bb.v ]
  %i.bq = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.bq, align 8, !tbaa !31
  %i.br = call ptr @PyType_GetModuleState(ptr noundef %.val.i.i) #9
  %.val4.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !14
  %i.bs = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull %.043.i, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_addch_impl.exit

_curses_window_addch_impl.exit:                   ; preds = %PyCurses_ConvertToCchar_t.exit.thread.i, %bb.t, %bb.ac, %.thread.i
  %.027.i = phi ptr [ null, %bb.t ], [ null, %PyCurses_ConvertToCchar_t.exit.thread.i ], [ @_Py_NoneStruct, %bb.ac ], [ null, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %_curses_window_addch_impl.exit, %bb.f
  %.09 = phi ptr [ null, %bb.f ], [ %.027.i, %_curses_window_addch_impl.exit ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  ret ptr %.09
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_window_addnstr(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i64 0, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.h, align 8, !tbaa !40
  switch i64 %.val, label %bb.f [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.349, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #9
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.ae, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.350, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #9
  %.not11 = icmp eq i32 %i.j, 0
  br i1 %.not11, label %bb.ae, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.k = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.351, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #9
  %.not10 = icmp eq i32 %i.k, 0
  br i1 %.not10, label %bb.ae, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.l = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %1, ptr noundef nonnull @.str.352, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #9
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.ae, label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.353) #9
  br label %bb.ae

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.not43.i = phi i1 [ true, %bb.b ], [ false, %bb.d ], [ true, %bb.c ], [ false, %bb.e ] ; 2 uses
  %.not.i = phi i1 [ true, %bb.b ], [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.e ] ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !9    ; 2 uses
  %i.o = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.q = load i32, ptr %i.f, align 4, !tbaa !9    ; 3 uses
  %i.r = load i64, ptr %i.g, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !52
  %i.s = call fastcc i32 @PyCurses_ConvertToString(ptr noundef %i.p, ptr noundef %i.a, ptr noundef %i.b) ; 3 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_curses_window_addnstr_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i, label %curses_wattrset.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.w = call i32 @getattrs(ptr noundef %i.v) #9
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.y = trunc i64 %i.r to i32
  %i.z = call i32 @wattrset(ptr noundef %i.x, i32 noundef %i.y) #9
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.j, label %curses_wattrset.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.ac = call ptr @PyType_GetModuleState(ptr noundef %.val.i.i) #9
  %.val4.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ad = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.83) #9 ; 0 uses
  %i.ae = icmp eq i32 %i.s, 2
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !52
  call void @PyMem_Free(ptr noundef %i.af) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !16  ; 4 uses
  %.not.i45.i = icmp eq ptr %i.ag, null
  br i1 %.not.i45.i, label %_curses_window_addnstr_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i.i.i, label %bb.n, label %_curses_window_addnstr_impl.exit

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !17
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %_curses_window_addnstr_impl.exit

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #9
  br label %_curses_window_addnstr_impl.exit

end_hunk_0
begin_hunk_1_@_curses_window_attron:bb.a
  %i.a = tail call i64 @PyLong_AsLong(ptr noundef %1) #9 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = trunc i64 %i.a to i32
  %i.f = tail call i32 @wattr_on(ptr noundef %i.d, i32 noundef %i.e, ptr noundef null) #9
  %.not.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i, label %_curses_window_attron_impl.exit.sink.split, label %_curses_window_attron_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyErr_Occurred() #9
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.split4, label %_curses_window_attron_impl.exit

.split4:                                          ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = tail call i32 @wattr_on(ptr noundef %i.i, i32 noundef -1, ptr noundef null) #9
  %.not.i.i6 = icmp eq i32 %i.j, -1
  br i1 %.not.i.i6, label %_curses_window_attron_impl.exit.sink.split, label %_curses_window_attron_impl.exit

_curses_window_attron_impl.exit.sink.split:       ; preds = %.split4, %.split
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val.i.i8 = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.l = tail call ptr @PyType_GetModuleState(ptr noundef %.val.i.i8) #9
  %.val4.i.i.i9 = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.m = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i.i9, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.370, ptr noundef nonnull @.str.268, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_attron_impl.exit

_curses_window_attron_impl.exit:                  ; preds = %_curses_window_attron_impl.exit.sink.split, %.split4, %.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %.split4 ], [ @_Py_NoneStruct, %.split ], [ null, %_curses_window_attron_impl.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_window_attrset(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsLong(ptr noundef %1) #9 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = trunc i64 %i.a to i32
  %i.f = tail call i32 @wattrset(ptr noundef %i.d, i32 noundef %i.e) #9
  %.not.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i, label %_curses_window_attrset_impl.exit.sink.split, label %_curses_window_attrset_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyErr_Occurred() #9
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.split4, label %_curses_window_attrset_impl.exit

.split4:                                          ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = tail call i32 @wattrset(ptr noundef %i.i, i32 noundef -1) #9
  %.not.i.i6 = icmp eq i32 %i.j, -1
  br i1 %.not.i.i6, label %_curses_window_attrset_impl.exit.sink.split, label %_curses_window_attrset_impl.exit

_curses_window_attrset_impl.exit.sink.split:      ; preds = %.split4, %.split
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val.i.i8 = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.l = tail call ptr @PyType_GetModuleState(ptr noundef %.val.i.i8) #9
  %.val4.i.i.i9 = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.m = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i.i9, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_attrset_impl.exit

_curses_window_attrset_impl.exit:                 ; preds = %_curses_window_attrset_impl.exit.sink.split, %.split4, %.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %.split4 ], [ @_Py_NoneStruct, %.split ], [ null, %_curses_window_attrset_impl.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_window_bkgd(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = add i64 %2, -1
  %or.cond = icmp ult i64 %i.b, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.270, i64 noundef %2, i64 noundef 1, i64 noundef 2) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.c

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
  br i1 %.not13, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ -1, %bb.e ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.k = call fastcc i32 @PyCurses_ConvertToChtype(ptr noundef readonly %0, ptr noundef %i.d, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_curses_window_bkgd_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = load i32, ptr %i.a, align 4, !tbaa !9
  %i.o = trunc i64 %.0 to i32
  %i.p = or i32 %i.n, %i.o
  %i.q = tail call i32 @wbkgd(ptr noundef %i.m, i32 noundef %i.p) #9
  %.not.i.i = icmp eq i32 %i.q, -1
  br i1 %.not.i.i, label %bb.h, label %_curses_window_bkgd_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.s = tail call ptr @PyType_GetModuleState(ptr noundef %.val.i.i) #9
  %.val4.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.t = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.371, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %_curses_window_bkgd_impl.exit

_curses_window_bkgd_impl.exit:                    ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ null, %bb.f ], [ @_Py_NoneStruct, %bb.g ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.b, %_curses_window_bkgd_impl.exit
  %.011 = phi ptr [ %.0.i, %_curses_window_bkgd_impl.exit ], [ null, %bb.e ], [ null, %bb.b ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @PyCursesWindow_ChgAt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 -1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.e = tail call i64 @PyTuple_Size(ptr noundef %1) #9
  switch i64 %i.e, label %bb.f [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.372, ptr noundef nonnull %i.d) #9
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %curses_window_check_err.exit, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.373, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9
  %.not29 = icmp eq i32 %i.g, 0
  br i1 %.not29, label %curses_window_check_err.exit, label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.h = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.374, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #9
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %curses_window_check_err.exit, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.i = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.375, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %curses_window_check_err.exit, label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.376) #9
  br label %curses_window_check_err.exit

bb.g:                                             ; preds = %bb.d, %bb.e
  %.024.in = load i64, ptr %i.d, align 8, !tbaa !27 ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.m = load i32, ptr %i.b, align 4, !tbaa !9
  %i.n = load i32, ptr %i.a, align 4, !tbaa !9
  %i.o = call i32 @wmove(ptr noundef %i.l, i32 noundef %i.m, i32 noundef %i.n) #9
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %.thread35, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.024 = trunc i64 %.024.in to i32
  %i.q = and i32 %.024, -256
  %i.r = trunc i64 %.024.in to i16
  %2 = lshr i16 %i.r, 8
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.t = load i32, ptr %i.c, align 4, !tbaa !9
  %i.u = call i32 @wchgat(ptr noundef %i.s, i32 noundef %i.t, i32 noundef %i.q, i16 noundef signext %2, ptr noundef null) #9
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.c
  %.024.in33 = load i64, ptr %i.d, align 8, !tbaa !27 ; 2 uses
  %.02434 = trunc i64 %.024.in33 to i32
  %i.v = trunc i64 %.024.in33 to i16
  %3 = lshr i16 %i.v, 8
  %i.w = and i32 %.02434, -256
  %i.x = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.z = call i32 @getcury(ptr noundef %i.y) #9
  store i32 %i.z, ptr %i.b, align 4, !tbaa !9
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.ab = call i32 @getcurx(ptr noundef %i.aa) #9
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !9
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !9
  %i.ae = call i32 @wchgat(ptr noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.w, i16 noundef signext %3, ptr noundef null) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.026 = phi i32 [ %i.ae, %bb.i ], [ %i.u, %bb.h ]
  %.025 = phi ptr [ @.str.378, %bb.i ], [ @.str.377, %bb.h ]
  %i.af = icmp eq i32 %.026, -1
  br i1 %i.af, label %.thread35, label %bb.k

.thread35:                                        ; preds = %bb.g, %bb.j
  %.02538 = phi ptr [ %.025, %bb.j ], [ @.str.377, %bb.g ]
  %i.ag = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.ah = call ptr @PyType_GetModuleState(ptr noundef %.val) #9
  %.val4.i = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.ai = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i, ptr noundef nonnull @.str.85, ptr noundef nonnull %.02538, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %curses_window_check_err.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !48
  %i.al = load i32, ptr %i.b, align 4, !tbaa !9
  %i.am = call i32 @wtouchln(ptr noundef %i.ak, i32 noundef %i.al, i32 noundef 1, i32 noundef 1) #9
  %.not.i = icmp eq i32 %i.am, -1
  br i1 %.not.i, label %bb.l, label %curses_window_check_err.exit

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ao = call ptr @PyType_GetModuleState(ptr noundef %.val.i) #9
  %.val4.i.i = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.ap = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val4.i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.334, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.83) #9 ; 0 uses
  br label %curses_window_check_err.exit

curses_window_check_err.exit:                     ; preds = %bb.l, %bb.k, %bb.e, %bb.d, %bb.c, %bb.b, %.thread35, %bb.f
  %.027 = phi ptr [ null, %bb.f ], [ null, %.thread35 ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.c ], [ @_Py_NoneStruct, %bb.k ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.027
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_window_bkgdset(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = add i64 %2, -1
  %or.cond = icmp ult i64 %i.b, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.272, i64 noundef %2, i64 noundef 1, i64 noundef 2) #9
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
  br i1 %.not.i, label %_curses_window_bkgdset_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = load i32, ptr %i.a, align 4, !tbaa !9
  %i.o = trunc i64 %.0 to i32
  %i.p = or i32 %i.n, %i.o
  tail call void @wbkgdset(ptr noundef %i.m, i32 noundef %i.p) #9
  br label %_curses_window_bkgdset_impl.exit

_curses_window_bkgdset_impl.exit:                 ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.g ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.b, %_curses_window_bkgdset_impl.exit
  %.011 = phi ptr [ %.0.i, %_curses_window_bkgdset_impl.exit ], [ null, %bb.e ], [ null, %bb.b ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_curses_window_border(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 21 uses
  %or.cond = icmp ult i64 %2, 9
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.273, i64 noundef %2, i64 noundef 0, i64 noundef 8) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = icmp slt i64 %2, 1
  br i1 %i.c, label %.thread114, label %bb.d

.thread114:                                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !9
  br label %bb.ab

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.e = icmp eq i64 %2, 1
  br i1 %i.e, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 7 uses
  %i.h = icmp samesign ult i64 %2, 3
  br i1 %i.h, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 6 uses
  %i.k = icmp eq i64 %2, 3
  br i1 %i.k, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 5 uses
  %i.n = icmp samesign ult i64 %2, 5
  br i1 %i.n, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 4 uses
  %i.q = icmp eq i64 %2, 5
  br i1 %i.q, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16   ; 3 uses
  %i.t = icmp samesign ult i64 %2, 7
  br i1 %i.t, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %1, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16   ; 2 uses
  %i.w = icmp eq i64 %2, 7
  br i1 %i.w, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr i8, ptr %1, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.k
  %.034 = phi ptr [ %i.g, %bb.k ], [ null, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ %i.g, %bb.h ], [ %i.g, %bb.i ], [ %i.g, %bb.j ] ; 2 uses
  %.033 = phi ptr [ %i.j, %bb.k ], [ null, %bb.d ], [ null, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ] ; 2 uses
  %.032 = phi ptr [ %i.m, %bb.k ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %i.m, %bb.j ] ; 2 uses
  %.031 = phi ptr [ %i.p, %bb.k ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ], [ %i.p, %bb.j ] ; 2 uses
  %.030 = phi ptr [ %i.s, %bb.k ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ] ; 2 uses
  %.029 = phi ptr [ %i.v, %bb.k ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ %i.v, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.y, %bb.k ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !9
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = call fastcc i32 @PyCurses_ConvertToChtype(ptr noundef readonly %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %.not39.i = icmp eq i32 %i.z, 0
  br i1 %.not39.i, label %_curses_window_border_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not40.i = icmp eq ptr %.034, null
  br i1 %.not40.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ab = call fastcc i32 @PyCurses_ConvertToChtype(ptr noundef readonly %0, ptr noundef nonnull %.034, ptr noundef nonnull %i.aa)
  %.not41.i = icmp eq i32 %i.ab, 0
  br i1 %.not41.i, label %_curses_window_border_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not42.i = icmp eq ptr %.033, null
  br i1 %.not42.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = call fastcc i32 @PyCurses_ConvertToChtype(ptr noundef readonly %0, ptr noundef nonnull %.033, ptr noundef nonnull %i.ac)
end_hunk_1
