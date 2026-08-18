inline.NumInlined: 580
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@datetime_datetime_astimezone:bb.a
  br i1 %i.ce, label %bb.l, label %Py_DECREF.exit88.i

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %.061.i) #16, !inline_history !150
  br label %Py_DECREF.exit88.i

Py_DECREF.exit88.i:                               ; preds = %bb.l, %bb.k, %bb.j
  %i.cf = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.cg = icmp ugt i32 %i.cf, -1073741825
  br i1 %i.cg, label %datetime_datetime_astimezone_impl.exit, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit88.i
  %i.ch = add nuw i32 %i.cf, 1
  store i32 %i.ch, ptr %0, align 8, !tbaa !35
  br label %datetime_datetime_astimezone_impl.exit

bb.n:                                             ; preds = %_Py_NewRef.exit.i
  %i.ci = call fastcc ptr @call_tzinfo_method(ptr noundef nonnull %.061.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %0), !inline_history !150 ; 11 uses
  %i.cj = load i32, ptr %.061.i, align 8, !tbaa !35 ; 2 uses
  %.not.i85.i = icmp sgt i32 %i.cj, -1
  br i1 %.not.i85.i, label %bb.o, label %Py_DECREF.exit86.i

bb.o:                                             ; preds = %bb.n
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %.061.i, align 8, !tbaa !35
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.p, label %Py_DECREF.exit86.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %.061.i) #16, !inline_history !150
  br label %Py_DECREF.exit86.i

Py_DECREF.exit86.i:                               ; preds = %bb.p, %bb.o, %bb.n
  %i.cm = icmp eq ptr %i.ci, null
  br i1 %i.cm, label %datetime_datetime_astimezone_impl.exit, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit86.i
  %i.cn = icmp eq ptr %i.ci, @_Py_NoneStruct
  br i1 %i.cn, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.co = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i83.i = icmp sgt i32 %i.co, -1
  br i1 %.not.i83.i, label %bb.s, label %Py_DECREF.exit84.i

bb.s:                                             ; preds = %bb.r
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.t, label %Py_DECREF.exit84.i

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #16, !inline_history !150
  br label %Py_DECREF.exit84.i

bb.u:                                             ; preds = %bb.q
  %i.cr = getelementptr i8, ptr %i.ci, i64 8
  %.val98.i = load ptr, ptr %i.cr, align 8, !tbaa !44 ; 2 uses
  %.not.i102.i = icmp eq ptr %.val98.i, @PyDateTime_DeltaType
  br i1 %.not.i102.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.u
  %i.cs = call i32 @PyType_IsSubtype(ptr noundef %.val98.i, ptr noundef nonnull @PyDateTime_DeltaType) #16, !inline_history !150
  %.not107.i = icmp eq i32 %i.cs, 0
  br i1 %.not107.i, label %bb.v, label %PyObject_TypeCheck.exit.thread.i

bb.v:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.ct = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.cu = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ct, ptr noundef nonnull @.str.238, ptr noundef nonnull %i.ci) #16, !inline_history !150 ; 0 uses
  %i.cv = load i32, ptr %i.ci, align 8, !tbaa !35 ; 2 uses
  %.not.i81.i = icmp sgt i32 %i.cv, -1
  br i1 %.not.i81.i, label %bb.w, label %datetime_datetime_astimezone_impl.exit

bb.w:                                             ; preds = %bb.v
  %i.cw = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cw, ptr %i.ci, align 8, !tbaa !35
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.x, label %datetime_datetime_astimezone_impl.exit

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.ci) #16, !inline_history !150
  br label %datetime_datetime_astimezone_impl.exit

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.u
  %i.cy = call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, i32 noundef -1), !inline_history !150 ; 21 uses
  %i.cz = load i32, ptr %i.ci, align 8, !tbaa !35 ; 2 uses
  %.not.i79.i = icmp sgt i32 %i.cz, -1
  br i1 %.not.i79.i, label %bb.y, label %Py_DECREF.exit80.i

bb.y:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.ci, align 8, !tbaa !35
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.z, label %Py_DECREF.exit80.i

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.ci) #16, !inline_history !150
  br label %Py_DECREF.exit80.i

Py_DECREF.exit80.i:                               ; preds = %bb.z, %bb.y, %PyObject_TypeCheck.exit.thread.i
  %i.dc = icmp eq ptr %i.cy, null
  br i1 %i.dc, label %datetime_datetime_astimezone_impl.exit, label %bb.aa

bb.aa:                                            ; preds = %Py_DECREF.exit80.i
  %i.dd = getelementptr i8, ptr %i.cy, i64 24
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !57
  %.not70.i = icmp eq i8 %i.de, 0
  br i1 %.not70.i, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr i8, ptr %i.cy, i64 25
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !35
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 8
  %i.dj = getelementptr i8, ptr %i.cy, i64 26
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !35
  %i.dl = zext i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.di, %i.dl
  %i.dn = getelementptr i8, ptr %i.cy, i64 27
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !35
  %i.dp = zext i8 %i.do to i32
  %i.dq = getelementptr i8, ptr %i.cy, i64 28
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !35
  %i.ds = zext i8 %i.dr to i32
  %i.dt = getelementptr i8, ptr %i.cy, i64 29
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !35
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr i8, ptr %i.cy, i64 30
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !35
  %i.dy = zext i8 %i.dx to i32
  %i.dz = getelementptr i8, ptr %i.cy, i64 31
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !35
  %i.eb = zext i8 %i.ea to i32
  %i.ec = getelementptr i8, ptr %i.cy, i64 32
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !35
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 16
  %i.eg = getelementptr i8, ptr %i.cy, i64 33
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !35
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 8
  %i.ek = or disjoint i32 %i.ej, %i.ef
  %i.el = getelementptr i8, ptr %i.cy, i64 34
  %i.em = load i8, ptr %i.el, align 2, !tbaa !35
  %i.en = zext i8 %i.em to i32
  %i.eo = or disjoint i32 %i.ek, %i.en
  %i.ep = getelementptr i8, ptr %i.cy, i64 35
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !52
  %i.er = zext i8 %i.eq to i32
  %i.es = getelementptr i8, ptr %i.cy, i64 8
  %.val.i = load ptr, ptr %i.es, align 8, !tbaa !44
  %i.et = call ptr @new_datetime_ex2(i32 noundef %i.dm, i32 noundef %i.dp, i32 noundef %i.ds, i32 noundef %i.dv, i32 noundef %i.dy, i32 noundef %i.eb, i32 noundef %i.eo, ptr noundef nonnull @utc_timezone, i32 noundef %i.er, ptr noundef %.val.i), !inline_history !150 ; 2 uses
  %i.eu = load i32, ptr %i.cy, align 8, !tbaa !35 ; 2 uses
  %.not.i77.i = icmp sgt i32 %i.eu, -1
  br i1 %.not.i77.i, label %bb.ac, label %Py_DECREF.exit78.i

bb.ac:                                            ; preds = %bb.ab
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %i.cy, align 8, !tbaa !35
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.ad, label %Py_DECREF.exit78.i

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %i.cy) #16, !inline_history !150
  br label %Py_DECREF.exit78.i

Py_DECREF.exit78.i:                               ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ex = icmp eq ptr %i.et, null
  br i1 %i.ex, label %datetime_datetime_astimezone_impl.exit, label %Py_DECREF.exit76.i

bb.ae:                                            ; preds = %bb.aa
  %i.ey = getelementptr i8, ptr %i.cy, i64 40     ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !43 ; 3 uses
  %i.fa = load i32, ptr @utc_timezone, align 8, !tbaa !35 ; 2 uses
  %i.fb = icmp ugt i32 %i.fa, -1073741825
  br i1 %i.fb, label %_Py_NewRef.exit103.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fc = add nuw i32 %i.fa, 1
  store i32 %i.fc, ptr @utc_timezone, align 8, !tbaa !35
  br label %_Py_NewRef.exit103.i

_Py_NewRef.exit103.i:                             ; preds = %bb.af, %bb.ae
  store ptr @utc_timezone, ptr %i.ey, align 8, !tbaa !43
  %i.fd = load i32, ptr %i.ez, align 8, !tbaa !35 ; 2 uses
  %.not.i75.i = icmp sgt i32 %i.fd, -1
  br i1 %.not.i75.i, label %bb.ag, label %Py_DECREF.exit76.i

bb.ag:                                            ; preds = %_Py_NewRef.exit103.i
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.ez, align 8, !tbaa !35
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ah, label %Py_DECREF.exit76.i

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.ez) #16, !inline_history !150
  br label %Py_DECREF.exit76.i

Py_DECREF.exit76.i:                               ; preds = %bb.ah, %bb.ag, %_Py_NewRef.exit103.i, %Py_DECREF.exit78.i
  %.060.i = phi ptr [ %i.et, %Py_DECREF.exit78.i ], [ %i.cy, %_Py_NewRef.exit103.i ], [ %i.cy, %bb.ag ], [ %i.cy, %bb.ah ] ; 9 uses
  br i1 %i.s, label %4, label %bb.am

4:                                                ; preds = %Py_DECREF.exit76.i
  %5 = call ptr @PyInterpreterState_Get() #16, !inline_history !151
  %6 = call fastcc ptr @get_current_module(ptr noundef %5), !inline_history !151 ; 2 uses
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %_get_current_state.exit.i.i

8:                                                ; preds = %4
  %9 = call ptr @PyErr_Occurred() #16, !inline_history !151 ; 0 uses
  %10 = call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.41) #16, !inline_history !151 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %10) ]
  br label %_get_current_state.exit.i.i

_get_current_state.exit.i.i:                      ; preds = %8, %4
  %.08.i.i.i = phi ptr [ %10, %8 ], [ %6, %4 ]    ; 4 uses
  %11 = getelementptr i8, ptr %.08.i.i.i, i64 24
  %.08.val.i.i.i = load ptr, ptr %11, align 8, !tbaa !69
  %12 = getelementptr i8, ptr %.08.val.i.i.i, i64 64
  %13 = load ptr, ptr %12, align 8, !tbaa !146
  %14 = call ptr @datetime_subtract(ptr noundef nonnull %.060.i, ptr noundef %13), !inline_history !151 ; 8 uses
  %15 = load i32, ptr %.08.i.i.i, align 8, !tbaa !35 ; 2 uses
  %.not.i25.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i25.i.i, label %16, label %Py_DECREF.exit26.i.i

16:                                               ; preds = %_get_current_state.exit.i.i
  %17 = add nsw i32 %15, -1                       ; 2 uses
  store i32 %17, ptr %.08.i.i.i, align 8, !tbaa !35
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %Py_DECREF.exit26.i.i

19:                                               ; preds = %16
  call void @_Py_Dealloc(ptr noundef nonnull %.08.i.i.i) #16, !inline_history !151
  br label %Py_DECREF.exit26.i.i

Py_DECREF.exit26.i.i:                             ; preds = %19, %16, %_get_current_state.exit.i.i
  %20 = icmp eq ptr %14, null
  br i1 %20, label %bb.aj, label %21

21:                                               ; preds = %Py_DECREF.exit26.i.i
  %22 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !11
  %23 = call ptr %22(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !152 ; 9 uses
  %.not15.i.i.i = icmp eq ptr %23, null
  br i1 %.not15.i.i.i, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, ptr %14, align 8, !tbaa !35     ; 2 uses
  %.not.i23.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i23.i.i, label %26, label %bb.aj

26:                                               ; preds = %24
  %27 = add nsw i32 %25, -1                       ; 2 uses
  store i32 %27, ptr %14, align 8, !tbaa !35
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %bb.aj

29:                                               ; preds = %26
  call void @_Py_Dealloc(ptr noundef nonnull %14) #16, !inline_history !151
  br label %bb.aj

30:                                               ; preds = %21
  %31 = getelementptr i8, ptr %23, i64 16
  store i64 -1, ptr %31, align 8, !tbaa !30
  %32 = getelementptr i8, ptr %23, i64 24
  store i32 0, ptr %32, align 8, !tbaa !32
  %33 = getelementptr i8, ptr %23, i64 28
  store i32 1, ptr %33, align 4, !tbaa !33
  %34 = getelementptr i8, ptr %23, i64 32
  store i32 0, ptr %34, align 8, !tbaa !34
  %35 = call fastcc ptr @divide_timedelta_timedelta(ptr noundef nonnull %14, ptr noundef nonnull %23), !inline_history !151 ; 5 uses
  %36 = load i32, ptr %23, align 8, !tbaa !35     ; 2 uses
  %.not.i21.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i21.i.i, label %37, label %Py_DECREF.exit22.i.i

37:                                               ; preds = %30
  %38 = add nsw i32 %36, -1                       ; 2 uses
  store i32 %38, ptr %23, align 8, !tbaa !35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %Py_DECREF.exit22.i.i

40:                                               ; preds = %37
  call void @_Py_Dealloc(ptr noundef nonnull %23) #16, !inline_history !151
  br label %Py_DECREF.exit22.i.i

Py_DECREF.exit22.i.i:                             ; preds = %40, %37, %30
  %41 = load i32, ptr %14, align 8, !tbaa !35     ; 2 uses
  %.not.i19.i.i = icmp sgt i32 %41, -1
  br i1 %.not.i19.i.i, label %42, label %Py_DECREF.exit20.i.i

42:                                               ; preds = %Py_DECREF.exit22.i.i
  %43 = add nsw i32 %41, -1                       ; 2 uses
  store i32 %43, ptr %14, align 8, !tbaa !35
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %Py_DECREF.exit20.i.i

45:                                               ; preds = %42
  call void @_Py_Dealloc(ptr noundef nonnull %14) #16, !inline_history !151
  br label %Py_DECREF.exit20.i.i

Py_DECREF.exit20.i.i:                             ; preds = %45, %42, %Py_DECREF.exit22.i.i
  %46 = icmp eq ptr %35, null
  br i1 %46, label %bb.aj, label %47

47:                                               ; preds = %Py_DECREF.exit20.i.i
  %48 = call i64 @_PyLong_AsTime_t(ptr noundef nonnull %35) #16, !inline_history !151 ; 2 uses
  %49 = load i32, ptr %35, align 8, !tbaa !35     ; 2 uses
  %.not.i.i104.i = icmp sgt i32 %49, -1
  br i1 %.not.i.i104.i, label %50, label %Py_DECREF.exit.i.i

50:                                               ; preds = %47
  %51 = add nsw i32 %49, -1                       ; 2 uses
  store i32 %51, ptr %35, align 8, !tbaa !35
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %Py_DECREF.exit.i.i

53:                                               ; preds = %50
  call void @_Py_Dealloc(ptr noundef nonnull %35) #16, !inline_history !151
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %53, %50, %47
  %54 = icmp eq i64 %48, -1
  br i1 %54, label %55, label %bb.ai

55:                                               ; preds = %Py_DECREF.exit.i.i
  %56 = call ptr @PyErr_Occurred() #16, !inline_history !151
  %.not.i106.i = icmp eq ptr %56, null
  br i1 %.not.i106.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %55, %Py_DECREF.exit.i.i
  %i.fg = call fastcc ptr @local_timezone_from_timestamp(i64 noundef %48), !inline_history !150 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.aj, label %Py_INCREF.exit.i

bb.aj:                                            ; preds = %bb.ai, %55, %Py_DECREF.exit20.i.i, %29, %26, %24, %Py_DECREF.exit26.i.i
  %i.fi = load i32, ptr %.060.i, align 8, !tbaa !35 ; 2 uses
  %.not.i73.i = icmp sgt i32 %i.fi, -1
  br i1 %.not.i73.i, label %bb.ak, label %datetime_datetime_astimezone_impl.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr %.060.i, align 8, !tbaa !35
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.al, label %datetime_datetime_astimezone_impl.exit

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %.060.i) #16, !inline_history !150
  br label %datetime_datetime_astimezone_impl.exit

bb.am:                                            ; preds = %Py_DECREF.exit76.i
  %i.fl = load i32, ptr %.033, align 8, !tbaa !35 ; 2 uses
  %i.fm = icmp ugt i32 %i.fl, -1073741825
  br i1 %i.fm, label %Py_INCREF.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fn = add nuw i32 %i.fl, 1
  store i32 %i.fn, ptr %.033, align 8, !tbaa !35
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.an, %bb.am, %bb.ai
  %.059.i = phi ptr [ %i.fg, %bb.ai ], [ %.033, %bb.am ], [ %.033, %bb.an ] ; 2 uses
  %i.fo = getelementptr i8, ptr %.060.i, i64 40   ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !43 ; 3 uses
  store ptr %.059.i, ptr %i.fo, align 8, !tbaa !43
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !35 ; 2 uses
  %.not.i71.i = icmp sgt i32 %i.fq, -1
  br i1 %.not.i71.i, label %bb.ao, label %Py_DECREF.exit72.i

bb.ao:                                            ; preds = %Py_INCREF.exit.i
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 8, !tbaa !35
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ap, label %Py_DECREF.exit72.i

bb.ap:                                            ; preds = %bb.ao
  call void @_Py_Dealloc(ptr noundef nonnull %i.fp) #16, !inline_history !150
  br label %Py_DECREF.exit72.i

Py_DECREF.exit72.i:                               ; preds = %bb.ap, %bb.ao, %Py_INCREF.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %.059.i, ptr %i.a, align 16, !tbaa !43
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.060.i, ptr %i.ft, align 8, !tbaa !43
  %i.fu = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 85048), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #16, !inline_history !150 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.fv = load i32, ptr %.060.i, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.fv, -1
  br i1 %.not.i.i, label %bb.aq, label %datetime_datetime_astimezone_impl.exit

bb.aq:                                            ; preds = %Py_DECREF.exit72.i
  %i.fw = add nsw i32 %i.fv, -1                   ; 2 uses
  store i32 %i.fw, ptr %.060.i, align 8, !tbaa !35
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.ar, label %datetime_datetime_astimezone_impl.exit

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %.060.i) #16, !inline_history !150
  br label %datetime_datetime_astimezone_impl.exit

datetime_datetime_astimezone_impl.exit:           ; preds = %bb.ar, %bb.aq, %Py_DECREF.exit72.i, %bb.al, %bb.ak, %bb.aj, %Py_DECREF.exit78.i, %Py_DECREF.exit80.i, %bb.x, %bb.w, %bb.v, %Py_DECREF.exit86.i, %bb.m, %Py_DECREF.exit88.i, %local_timezone_from_local.exit.i, %bb.g, %Py_DECREF.exit84.i, %check_tzinfo_subclass.exit.i, %bb.c
  %.021 = phi ptr [ null, %bb.c ], [ %0, %bb.m ], [ null, %check_tzinfo_subclass.exit.i ], [ %i.fu, %bb.ar ], [ null, %local_timezone_from_local.exit.i ], [ null, %Py_DECREF.exit86.i ], [ null, %bb.x ], [ null, %bb.al ], [ null, %Py_DECREF.exit80.i ], [ null, %Py_DECREF.exit78.i ], [ %0, %Py_DECREF.exit88.i ], [ null, %bb.v ], [ null, %bb.w ], [ null, %bb.aj ], [ null, %bb.ak ], [ %i.fu, %Py_DECREF.exit72.i ], [ %i.fu, %bb.aq ], [ null, %Py_DECREF.exit84.i ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret ptr %.021
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime___reduce_ex__(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #16 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.c = tail call fastcc ptr @datetime_datetime___reduce_ex___impl(ptr noundef %0, i32 noundef %i.a)
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_Occurred() #16
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.split4, label %bb.j

.split4:                                          ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr i8, ptr %0, i64 25
  %i.g = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.f, i64 noundef 10) #16 ; 6 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %datetime_datetime___reduce_ex___impl.exit, label %bb.c

bb.c:                                             ; preds = %.split4
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !57
  %.not14.i.i = icmp eq i8 %i.i, 0
  br i1 %.not14.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %i.l = icmp eq ptr %i.k, @_Py_NoneStruct
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 1, ptr noundef nonnull %i.g) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.g, ptr noundef %i.k) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.m, %bb.e ], [ %i.n, %bb.f ] ; 3 uses
  %i.o = load i32, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i.i, label %bb.h, label %datetime_datetime___reduce_ex___impl.exit

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.g, align 8, !tbaa !35
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %datetime_datetime___reduce_ex___impl.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #16
  br label %datetime_datetime___reduce_ex___impl.exit

datetime_datetime___reduce_ex___impl.exit:        ; preds = %.split4, %bb.g, %bb.h, %bb.i
  %.1.i.i = phi ptr [ null, %.split4 ], [ %.0.i.i, %bb.g ], [ %.0.i.i, %bb.h ], [ %.0.i.i, %bb.i ]
  %i.r = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.157, ptr noundef %.val.i, ptr noundef %.1.i.i) #16
  br label %bb.j

bb.j:                                             ; preds = %.split, %datetime_datetime___reduce_ex___impl.exit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %.split ], [ %i.r, %datetime_datetime___reduce_ex___impl.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime___reduce__(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr i8, ptr %0, i64 25
  %i.c = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef 10) #16 ; 6 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %datetime_datetime___reduce___impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !57
  %.not14.i.i = icmp eq i8 %i.e, 0
  br i1 %.not14.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %i.h = icmp eq ptr %i.g, @_Py_NoneStruct
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 1, ptr noundef nonnull %i.c) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.c, ptr noundef %i.g) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.e ] ; 3 uses
  %i.k = load i32, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i.i.i, label %bb.g, label %datetime_datetime___reduce___impl.exit

bb.g:                                             ; preds = %bb.f
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.c, align 8, !tbaa !35
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %datetime_datetime___reduce___impl.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #16
  br label %datetime_datetime___reduce___impl.exit

datetime_datetime___reduce___impl.exit:           ; preds = %bb.a, %bb.f, %bb.g, %bb.h
  %.1.i.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.g ], [ %.0.i.i, %bb.h ]
  %i.n = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.157, ptr noundef %.val.i, ptr noundef %.1.i.i) #16
  ret ptr %i.n
}

declare i32 @_PyTime_gmtime(i64 noundef, ptr noundef) #2

declare i32 @PyTime_Time(ptr noundef) local_unnamed_addr #2

declare i32 @_PyTime_AsTimevalTime_t(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @datetime_from_timet_and_us(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.tm, align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = call i32 %1(i64 noundef %2, ptr noundef nonnull %5) #16, !callees !132
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !98   ; 4 uses
  %i.d = add i32 %i.c, 1900                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !100
  %i.g = add i32 %i.f, 1                          ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !101  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !134  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !135  ; 3 uses
  %i.n = load i32, ptr %5, align 8, !tbaa !136
  %i.o = call i32 @llvm.smin.i32(i32 %i.n, i32 59) ; 3 uses
  %i.p = icmp eq ptr %4, @_Py_NoneStruct
  %i.q = icmp eq ptr %1, @_PyTime_localtime
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.r = add i32 %i.c, -8100
  %or.cond.i = icmp ult i32 %i.r, -9999
  br i1 %or.cond.i, label %utc_to_seconds.exit.thread, label %bb.d

utc_to_seconds.exit.thread:                       ; preds = %bb.c
  %i.s = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.t = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.s, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef 9999, i32 noundef %i.d) #16 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = sext i32 %i.g to i64
  %i.v = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7    ; 4 uses
  %i.x = icmp sgt i32 %i.g, 2
  br i1 %i.x, label %bb.e, label %utc_to_seconds.exit

bb.e:                                             ; preds = %bb.d
  %i.y = and i32 %i.c, 3
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %is_leap.exit.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc.i = trunc nuw nsw i32 %i.d to i16   ; 2 uses
  %i.aa = urem i16 %.lhs.trunc.i, 100
  %.not.i.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i.i.i, label %is_leap.exit.i.i.i, label %is_leap.exit.thread6.i.i.i

is_leap.exit.thread6.i.i.i:                       ; preds = %bb.f
  %i.ab = add i32 %i.w, 1
  br label %utc_to_seconds.exit

is_leap.exit.i.i.i:                               ; preds = %bb.f
  %i.ac = urem i16 %.lhs.trunc.i, 400
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  %i.ad = add i32 %i.w, 1
  br i1 %.not.i.i.i, label %utc_to_seconds.exit, label %is_leap.exit.thread.i.i.i

is_leap.exit.thread.i.i.i:                        ; preds = %is_leap.exit.i.i.i, %bb.e
  br label %utc_to_seconds.exit

utc_to_seconds.exit:                              ; preds = %bb.d, %is_leap.exit.thread6.i.i.i, %is_leap.exit.i.i.i, %is_leap.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.w, %bb.d ], [ %i.w, %is_leap.exit.thread.i.i.i ], [ %i.ad, %is_leap.exit.i.i.i ], [ %i.ab, %is_leap.exit.thread6.i.i.i ]
  %i.ae = add nsw i32 %i.c, 1899                  ; 3 uses
  %i.af = mul nuw nsw i32 %i.ae, 365
  %i.ag = lshr i32 %i.ae, 2
  %.neg.i.i17.lhs.trunc.i = trunc nuw nsw i32 %i.ae to i16 ; 2 uses
  %.neg.i.i1718.i = udiv i16 %.neg.i.i17.lhs.trunc.i, 100
  %.neg.i.i17.zext.i = zext nneg i16 %.neg.i.i1718.i to i32
  %i.ah = udiv i16 %.neg.i.i17.lhs.trunc.i, 400
  %.zext20.i = zext nneg i16 %i.ah to i32
  %i.ai = add i32 %i.i, %i.af
  %i.aj = add i32 %i.ai, %i.ag
  %i.ak = sub i32 %i.aj, %.neg.i.i17.zext.i
  %i.al = add i32 %i.ak, %.zext20.i
  %i.am = add i32 %i.al, %.0.i.i.i
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.an, 24
  %i.ap = sext i32 %i.k to i64
  %i.aq = add nsw i64 %i.ao, %i.ap
  %i.ar = mul nsw i64 %i.aq, 60
  %i.as = sext i32 %i.m to i64
  %i.at = add nsw i64 %i.ar, %i.as
  %i.au = mul nsw i64 %i.at, 60
  %i.av = sext i32 %i.o to i64
  %i.aw = add nsw i64 %i.au, %i.av                ; 2 uses
  %i.ax = icmp eq i64 %i.aw, -1
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %utc_to_seconds.exit.thread, %utc_to_seconds.exit
  %i.ay = call ptr @PyErr_Occurred() #16
  %.not38 = icmp eq ptr %i.ay, null
  br i1 %.not38, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %utc_to_seconds.exit
  %.0.i41 = phi i64 [ -1, %bb.g ], [ %i.aw, %utc_to_seconds.exit ] ; 2 uses
  %i.az = add i64 %2, 62135596800                 ; 2 uses
  %i.ba = call fastcc i64 @local(i64 noundef %i.az) ; 2 uses
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = sub nsw i64 %.0.i41, %i.ba              ; 2 uses
  %i.bd = icmp slt i64 %i.bc, 86400
  br i1 %i.bd, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.be = add i64 %i.az, %i.bc
  %i.bf = call fastcc i64 @local(i64 noundef %i.be) ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp eq i64 %i.bf, %.0.i41
  %spec.select = zext i1 %i.bh to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.i ], [ %spec.select, %bb.k ] ; 2 uses
  %i.bi = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = call ptr @new_datetime_ex2(i32 noundef %i.d, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %3, ptr noundef %4, i32 noundef %.2, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !153
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.bk = call ptr (ptr, i32, ptr, ...) @call_subclass_fold(ptr noundef %0, i32 noundef %.2, ptr noundef nonnull @.str.29, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %3, ptr noundef %4), !inline_history !153
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.m, %bb.j, %bb.g, %bb.h, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.g ], [ %i.bj, %bb.m ], [ %i.bk, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -193404524822528, 193404524732468) i64 @local(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.tm, align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = add i64 %0, -62135683200
  %i.b = call i32 @_PyTime_localtime(i64 noundef %i.a, ptr noundef nonnull %1) #16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %utc_to_seconds.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !98   ; 4 uses
  %i.e = add i32 %i.d, 1900                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !135
  %i.l = load i32, ptr %1, align 8, !tbaa !136
  %i.m = add i32 %i.d, -8100
  %or.cond.i = icmp ult i32 %i.m, -9999
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.o = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef 9999, i32 noundef %i.e) #16 ; 0 uses
  br label %utc_to_seconds.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !100
  %i.r = add i32 %i.q, 1                          ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7    ; 4 uses
  %i.v = icmp sgt i32 %i.r, 2
  br i1 %i.v, label %bb.e, label %ymd_to_ord.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = and i32 %i.d, 3
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %is_leap.exit.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc.i = trunc nuw nsw i32 %i.e to i16   ; 2 uses
  %i.y = urem i16 %.lhs.trunc.i, 100
  %.not.i.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i.i, label %is_leap.exit.i.i.i, label %is_leap.exit.thread6.i.i.i

is_leap.exit.thread6.i.i.i:                       ; preds = %bb.f
  %i.z = add i32 %i.u, 1
  br label %ymd_to_ord.exit.i

is_leap.exit.i.i.i:                               ; preds = %bb.f
  %i.aa = urem i16 %.lhs.trunc.i, 400
  %.not.i.i.i = icmp eq i16 %i.aa, 0
  %i.ab = add i32 %i.u, 1
  br i1 %.not.i.i.i, label %ymd_to_ord.exit.i, label %is_leap.exit.thread.i.i.i

is_leap.exit.thread.i.i.i:                        ; preds = %is_leap.exit.i.i.i, %bb.e
  br label %ymd_to_ord.exit.i

ymd_to_ord.exit.i:                                ; preds = %is_leap.exit.thread.i.i.i, %is_leap.exit.i.i.i, %is_leap.exit.thread6.i.i.i, %bb.d
  %.0.i.i.i = phi i32 [ %i.u, %bb.d ], [ %i.u, %is_leap.exit.thread.i.i.i ], [ %i.ab, %is_leap.exit.i.i.i ], [ %i.z, %is_leap.exit.thread6.i.i.i ]
  %i.ac = add nsw i32 %i.d, 1899                  ; 3 uses
  %i.ad = mul nuw nsw i32 %i.ac, 365
  %i.ae = lshr i32 %i.ac, 2
  %.neg.i.i17.lhs.trunc.i = trunc nuw nsw i32 %i.ac to i16 ; 2 uses
  %.neg.i.i1718.i = udiv i16 %.neg.i.i17.lhs.trunc.i, 100
  %.neg.i.i17.zext.i = zext nneg i16 %.neg.i.i1718.i to i32
  %i.af = udiv i16 %.neg.i.i17.lhs.trunc.i, 400
  %.zext20.i = zext nneg i16 %i.af to i32
  %i.ag = add i32 %i.ad, %i.g
  %i.ah = add i32 %i.ag, %i.ae
  %i.ai = sub i32 %i.ah, %.neg.i.i17.zext.i
  %i.aj = add i32 %i.ai, %.zext20.i
  %i.ak = add i32 %i.aj, %.0.i.i.i
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, 24
  %i.an = sext i32 %i.i to i64
  %i.ao = add nsw i64 %i.am, %i.an
  %i.ap = mul nsw i64 %i.ao, 60
  %i.aq = sext i32 %i.k to i64
  %i.ar = add nsw i64 %i.ap, %i.aq
  %i.as = mul nsw i64 %i.ar, 60
  %i.at = sext i32 %i.l to i64
  %i.au = add nsw i64 %i.as, %i.at
  br label %utc_to_seconds.exit

utc_to_seconds.exit:                              ; preds = %ymd_to_ord.exit.i, %bb.c, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.au, %ymd_to_ord.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i64 %.0
}

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @datetime_datetime_fromtimestamp_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = icmp eq ptr %2, @_Py_NoneStruct          ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val4.i = load ptr, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.not.i.i = icmp eq ptr %.val4.i, @PyDateTime_TZInfoType
  br i1 %.not.i.i, label %bb.c, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.b
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val4.i, ptr noundef nonnull @PyDateTime_TZInfoType) #16, !inline_history !45
  %.not6.i = icmp eq i32 %i.f, 0
  br i1 %.not6.i, label %check_tzinfo_subclass.exit, label %bb.c

check_tzinfo_subclass.exit:                       ; preds = %PyObject_TypeCheck.exit.i
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.h = getelementptr i8, ptr %.val.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.200, ptr noundef %i.i) #16, !inline_history !45 ; 0 uses
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.i, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.k = call i32 @_PyTime_ObjectToTimeval(ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 2) #16, !inline_history !154
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %datetime_from_timestamp.exit.thread, label %datetime_from_timestamp.exit

datetime_from_timestamp.exit.thread:              ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %Py_DECREF.exit

datetime_from_timestamp.exit:                     ; preds = %bb.c
  %i.m = select i1 %i.d, ptr @_PyTime_localtime, ptr @_PyTime_gmtime
  %i.n = load i64, ptr %i.b, align 8, !tbaa !94
  %i.o = load i64, ptr %i.c, align 8, !tbaa !94
  %i.p = trunc i64 %i.o to i32
  %i.q = call fastcc ptr @datetime_from_timet_and_us(ptr noundef %0, ptr noundef nonnull readonly %i.m, i64 noundef %i.n, i32 noundef %i.p, ptr noundef %2), !inline_history !154 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.r = icmp ne ptr %i.q, null
  %i.s = icmp ne ptr %2, @_Py_NoneStruct
  %or.cond = and i1 %i.s, %i.r
  br i1 %or.cond, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %datetime_from_timestamp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %2, ptr %i.a, align 16, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.q, ptr %i.t, align 8, !tbaa !43
  %i.u = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 85048), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.v = load i32, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.q, align 8, !tbaa !35
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %datetime_from_timestamp.exit.thread, %check_tzinfo_subclass.exit, %datetime_from_timestamp.exit
  %.0 = phi ptr [ null, %check_tzinfo_subclass.exit ], [ null, %datetime_from_timestamp.exit.thread ], [ %i.q, %datetime_from_timestamp.exit ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %bb.f ]
  ret ptr %.0
}

declare i32 @_PyTime_ObjectToTimeval(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_PyUnicode_Copy(ptr noundef) local_unnamed_addr #2

declare i32 @PyUnicode_WriteChar(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -943436811112934, 943436813834522) i64 @local_to_seconds(i32 noundef range(i32 0, 65536) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 256) %2, i32 noundef range(i32 0, 256) %3, i32 noundef range(i32 0, 256) %4, i32 noundef range(i32 0, 256) %5, i32 noundef range(i32 0, 256) %6) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %0, -10000
  %or.cond.i = icmp ult i32 %i.a, -9999
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef 9999, i32 noundef %0) #16 ; 0 uses
  br label %utc_to_seconds.exit

bb.c:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7    ; 4 uses
  %i.g = icmp samesign ugt i32 %1, 2
  br i1 %i.g, label %bb.d, label %ymd_to_ord.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %0, 3
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %is_leap.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  %.lhs.trunc.i = trunc nuw nsw i32 %0 to i16     ; 2 uses
  %i.j = urem i16 %.lhs.trunc.i, 100
  %.not.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i.i, label %is_leap.exit.i.i.i, label %is_leap.exit.thread6.i.i.i

is_leap.exit.thread6.i.i.i:                       ; preds = %bb.e
  %i.k = add i32 %i.f, 1
  br label %ymd_to_ord.exit.i

is_leap.exit.i.i.i:                               ; preds = %bb.e
  %i.l = urem i16 %.lhs.trunc.i, 400
  %.not.i.i.i = icmp eq i16 %i.l, 0
  %i.m = add i32 %i.f, 1
  br i1 %.not.i.i.i, label %ymd_to_ord.exit.i, label %is_leap.exit.thread.i.i.i

is_leap.exit.thread.i.i.i:                        ; preds = %is_leap.exit.i.i.i, %bb.d
  br label %ymd_to_ord.exit.i

ymd_to_ord.exit.i:                                ; preds = %is_leap.exit.thread.i.i.i, %is_leap.exit.i.i.i, %is_leap.exit.thread6.i.i.i, %bb.c
  %.0.i.i.i = phi i32 [ %i.f, %bb.c ], [ %i.f, %is_leap.exit.thread.i.i.i ], [ %i.m, %is_leap.exit.i.i.i ], [ %i.k, %is_leap.exit.thread6.i.i.i ]
  %i.n = add nsw i32 %0, -1                       ; 3 uses
  %i.o = mul nuw nsw i32 %i.n, 365
  %i.p = lshr i32 %i.n, 2
  %.neg.i.i17.lhs.trunc.i = trunc nuw nsw i32 %i.n to i16 ; 2 uses
  %.neg.i.i1718.i = udiv i16 %.neg.i.i17.lhs.trunc.i, 100
  %.neg.i.i17.zext.i = zext nneg i16 %.neg.i.i1718.i to i32
  %i.q = udiv i16 %.neg.i.i17.lhs.trunc.i, 400
  %.zext20.i = zext nneg i16 %i.q to i32
  %i.r = add nuw nsw i32 %2, %i.o
  %i.s = add nuw nsw i32 %i.r, %i.p
  %i.t = sub nsw i32 %i.s, %.neg.i.i17.zext.i
  %i.u = add nsw i32 %i.t, %.zext20.i
  %i.v = add i32 %i.u, %.0.i.i.i
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 24
  %i.y = zext nneg i32 %3 to i64
  %i.z = add nsw i64 %i.x, %i.y
  %i.aa = mul nsw i64 %i.z, 60
  %i.ab = zext nneg i32 %4 to i64
  %i.ac = add nsw i64 %i.aa, %i.ab
  %i.ad = mul nsw i64 %i.ac, 60
  %i.ae = zext nneg i32 %5 to i64
  %i.af = add nsw i64 %i.ad, %i.ae
  br label %utc_to_seconds.exit

utc_to_seconds.exit:                              ; preds = %bb.b, %ymd_to_ord.exit.i
  %.0.i = phi i64 [ -1, %bb.b ], [ %i.af, %ymd_to_ord.exit.i ] ; 6 uses
  %i.ag = tail call fastcc i64 @local(i64 noundef %.0.i) ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.p, label %bb.f

bb.f:                                             ; preds = %utc_to_seconds.exit
  %i.ai = sub nsw i64 %i.ag, %.0.i                ; 2 uses
  %i.aj = sub nsw i64 %.0.i, %i.ai                ; 7 uses
  %i.ak = tail call fastcc i64 @local(i64 noundef %i.aj) ; 3 uses
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %i.ak, %.0.i                ; 2 uses
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %6, 0
  %.049.v = select i1 %.not, i64 -86400, i64 86400
  %.049 = add nsw i64 %i.aj, %.049.v              ; 2 uses
  %i.an = tail call fastcc i64 @local(i64 noundef %.049) ; 2 uses
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = sub nsw i64 %i.an, %.049                ; 2 uses
  %i.aq = icmp eq i64 %i.ai, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ar = sub nsw i64 %i.ak, %i.aj
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.048 = phi i64 [ %i.ap, %bb.i ], [ %i.ar, %bb.j ]
  %i.as = sub nsw i64 %.0.i, %.048                ; 4 uses
  %i.at = tail call fastcc i64 @local(i64 noundef %i.as) ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = icmp eq i64 %i.at, %.0.i                ; 2 uses
  %brmerge = or i1 %i.am, %i.av
  %.mux = select i1 %i.av, i64 %i.as, i64 %i.aj
  br i1 %brmerge, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not55 = icmp eq i32 %6, 0
  br i1 %.not55, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 %i.as)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ax = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 %i.as)
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.o, %bb.k, %bb.i, %bb.h, %bb.f, %utc_to_seconds.exit
  %.0 = phi i64 [ %i.ax, %bb.o ], [ -1, %utc_to_seconds.exit ], [ -1, %bb.f ], [ -1, %bb.h ], [ %i.aj, %bb.i ], [ -1, %bb.k ], [ %.mux, %bb.l ], [ %i.aw, %bb.n ]
  ret i64 %.0
}

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @local_timezone_from_timestamp(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.tm, align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = call i32 @_PyTime_localtime(i64 noundef %0, ptr noundef nonnull %1) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !156
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  %or.cond9.i.i = icmp ugt i32 %i.f, 86399
  br i1 %or.cond9.i.i, label %normalize_d_s_us.exit.i, label %check_delta_day_range.exit.i

normalize_d_s_us.exit.i:                          ; preds = %bb.b
  %i.g = sdiv i32 %i.f, 86400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.g, -86400
  %i.h = add i32 %.neg15.i.i, %i.f                ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  %i.j = select i1 %i.i, i32 86400, i32 0
  %storemerge.i.i11.i.i = add nsw i32 %i.j, %i.h
  %.lobit.i.i12.i.i = ashr i32 %i.h, 31
  %i.k = add nsw i32 %.lobit.i.i12.i.i, %i.g
  br label %check_delta_day_range.exit.i

check_delta_day_range.exit.i:                     ; preds = %normalize_d_s_us.exit.i, %bb.b
  %.030.i21 = phi i32 [ %storemerge.i.i11.i.i, %normalize_d_s_us.exit.i ], [ %i.f, %bb.b ] ; 2 uses
  %.032.i20 = phi i32 [ %i.k, %normalize_d_s_us.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.l = or i32 %.032.i20, %.030.i21
  %or.cond3.i.i = icmp ne i32 %i.l, 0
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.m = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.m
  br i1 %or.cond.i17.not.i, label %bb.c, label %new_delta_ex.exit

bb.c:                                             ; preds = %check_delta_day_range.exit.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !11
  %i.o = call ptr %i.n(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !24 ; 6 uses
  %.not15.i = icmp eq ptr %i.o, null
  br i1 %.not15.i, label %Py_DECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i64 -1, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr i8, ptr %i.o, i64 24
  store i32 %.032.i20, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr i8, ptr %i.o, i64 28
  store i32 %.030.i21, ptr %i.r, align 4, !tbaa !33
  %i.s = getelementptr i8, ptr %i.o, i64 32
  store i32 0, ptr %i.s, align 8, !tbaa !34
  br label %new_delta_ex.exit

new_delta_ex.exit:                                ; preds = %bb.d, %check_delta_day_range.exit.i
  %.0.i = phi ptr [ @zero_delta, %check_delta_day_range.exit.i ], [ %i.o, %bb.d ] ; 5 uses
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %.thread, label %bb.e

.thread:                                          ; preds = %new_delta_ex.exit
  %i.t = call ptr @new_timezone(ptr noundef nonnull %.0.i, ptr noundef null)
  br label %Py_XDECREF.exit

bb.e:                                             ; preds = %new_delta_ex.exit
  %i.u = call ptr @PyUnicode_DecodeLocale(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.239) #16 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %Py_XDECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @new_timezone(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.u) ; 3 uses
  %i.x = load i32, ptr %i.u, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i, label %bb.g, label %Py_XDECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.u, align 8, !tbaa !35
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %Py_XDECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.u) #16
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.h, %bb.g, %bb.f, %.thread, %bb.e
  %.011 = phi ptr [ null, %bb.e ], [ %i.t, %.thread ], [ %i.w, %bb.h ], [ %i.w, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  %i.aa = load i32, ptr %.0.i, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.aa, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %Py_XDECREF.exit
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %.0.i, align 8, !tbaa !35
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.c, %bb.j, %bb.i, %Py_XDECREF.exit, %bb.a
  %.010 = phi ptr [ %.011, %bb.j ], [ null, %bb.a ], [ %.011, %Py_XDECREF.exit ], [ %.011, %bb.i ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret ptr %.010
}

declare ptr @PyUnicode_DecodeLocale(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_PyLong_AsTime_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @datetime_datetime___reduce_ex___impl(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr i8, ptr %0, i64 25
  %i.c = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef 10) #16 ; 7 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %datetime_getstate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 3
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 35
  %i.f = load i8, ptr %i.e, align 1, !tbaa !52
  %.not13.i = icmp eq i8 %i.f, 0
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.c, i64 34       ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !35
  %i.i = or i8 %i.h, -128
  store i8 %i.i, ptr %i.g, align 1, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !57
  %.not14.i = icmp eq i8 %i.k, 0
  br i1 %.not14.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51   ; 2 uses
  %i.n = icmp eq ptr %i.m, @_Py_NoneStruct
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 1, ptr noundef nonnull %i.c) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.c, ptr noundef %i.m) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi ptr [ %i.o, %bb.g ], [ %i.p, %bb.h ] ; 3 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i.i, label %bb.j, label %datetime_getstate.exit

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !35
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %datetime_getstate.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #16
  br label %datetime_getstate.exit

datetime_getstate.exit:                           ; preds = %bb.a, %bb.i, %bb.j, %bb.k
  %.1.i = phi ptr [ null, %bb.a ], [ %.0.i, %bb.i ], [ %.0.i, %bb.j ], [ %.0.i, %bb.k ]
  %i.t = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.157, ptr noundef %.val, ptr noundef %.1.i) #16
  ret ptr %i.t
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_hour(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 29
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c) #16
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_minute(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 30
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c) #16
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_second(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 31
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c) #16
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_microsecond(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
end_hunk_0
begin_hunk_1_@timezone_hash:bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33
  %i.j = getelementptr i8, ptr %i.b, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !34
  %i.l = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.47, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k) #16 ; 5 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %delta_hash.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i64 @PyObject_Hash(ptr noundef nonnull %i.l) #16 ; 4 uses
  store i64 %i.m, ptr %i.c, align 8, !tbaa !30
  %i.n = load i32, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i, label %bb.d, label %delta_hash.exit

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.l, align 8, !tbaa !35
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %delta_hash.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #16
  br label %delta_hash.exit

delta_hash.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.1.i = phi i64 [ %i.d, %bb.a ], [ -1, %bb.b ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %bb.e ]
  ret i64 %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @timezone_str(ptr nofree noundef readonly captures(address) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 8, !tbaa !35
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, @utc_timezone
  br i1 %i.f, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53   ; 9 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.h, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %i.h, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !34
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.r = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.247) #16
  br label %_Py_NewRef.exit

bb.i:                                             ; preds = %bb.e
  %i.s = icmp slt i32 %i.j, 0
  br i1 %i.s, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.t = tail call ptr @delta_negative(ptr noundef nonnull %i.h) ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_Py_NewRef.exit, label %._Py_NewRef.exit31_crit_edge

._Py_NewRef.exit31_crit_edge:                     ; preds = %bb.j
  %.pre = load i32, ptr %i.t, align 8, !tbaa !35
  br label %_Py_NewRef.exit31

.thread:                                          ; preds = %bb.f, %bb.g, %bb.i
  %i.v = load i32, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %_Py_NewRef.exit31.thread, label %bb.k

_Py_NewRef.exit31.thread:                         ; preds = %.thread
  %i.x = getelementptr i8, ptr %i.h, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !34
  %i.z = getelementptr i8, ptr %i.h, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !33
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %.thread
  %i.ab = add nuw i32 %i.v, 1                     ; 2 uses
  store i32 %i.ab, ptr %i.h, align 8, !tbaa !35
  br label %_Py_NewRef.exit31

_Py_NewRef.exit31:                                ; preds = %._Py_NewRef.exit31_crit_edge, %bb.k
  %i.ac = phi i32 [ %.pre, %._Py_NewRef.exit31_crit_edge ], [ %i.ab, %bb.k ] ; 2 uses
  %.022 = phi ptr [ %i.t, %._Py_NewRef.exit31_crit_edge ], [ %i.h, %bb.k ] ; 4 uses
  %.0 = phi i32 [ 45, %._Py_NewRef.exit31_crit_edge ], [ 43, %bb.k ] ; 3 uses
  %i.ad = getelementptr i8, ptr %.022, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !34 ; 3 uses
  %i.af = getelementptr i8, ptr %.022, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33 ; 3 uses
  %.not.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %_Py_NewRef.exit31
  %i.ah = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ah, ptr %.022, align 8, !tbaa !35
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %.022) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %_Py_NewRef.exit31.thread, %_Py_NewRef.exit31, %bb.l, %bb.m
  %i.aj = phi i32 [ %i.aa, %_Py_NewRef.exit31.thread ], [ %i.ag, %_Py_NewRef.exit31 ], [ %i.ag, %bb.l ], [ %i.ag, %bb.m ] ; 2 uses
  %i.ak = phi i32 [ %i.y, %_Py_NewRef.exit31.thread ], [ %i.ae, %_Py_NewRef.exit31 ], [ %i.ae, %bb.l ], [ %i.ae, %bb.m ] ; 2 uses
  %.053 = phi i32 [ 43, %_Py_NewRef.exit31.thread ], [ %.0, %_Py_NewRef.exit31 ], [ %.0, %bb.l ], [ %.0, %bb.m ] ; 3 uses
  %i.al = sdiv i32 %i.aj, 60                      ; 2 uses
  %.neg = mul nsw i32 %i.al, -60
  %i.am = add i32 %.neg, %i.aj                    ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  %i.ao = select i1 %i.an, i32 60, i32 0
  %storemerge.i = add nsw i32 %i.ao, %i.am        ; 3 uses
  %.lobit.i32 = ashr i32 %i.am, 31
  %.0.i = add nsw i32 %.lobit.i32, %i.al          ; 2 uses
  %i.ap = sdiv i32 %.0.i, 60                      ; 2 uses
  %.neg41 = mul nsw i32 %i.ap, -60
  %i.aq = add nsw i32 %.neg41, %.0.i              ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 0
  %i.as = select i1 %i.ar, i32 60, i32 0
  %storemerge.i33 = add nsw i32 %i.as, %i.aq      ; 3 uses
  %.lobit.i34 = ashr i32 %i.aq, 31
  %.0.i35 = add nsw i32 %.lobit.i34, %i.ap        ; 3 uses
  %.not29 = icmp eq i32 %i.ak, 0
  br i1 %.not29, label %bb.o, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit
  %i.at = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.248, i32 noundef %.053, i32 noundef %.0.i35, i32 noundef %storemerge.i33, i32 noundef %storemerge.i, i32 noundef %i.ak) #16
  br label %_Py_NewRef.exit

bb.o:                                             ; preds = %Py_DECREF.exit
  %.not30 = icmp eq i32 %storemerge.i, 0
  br i1 %.not30, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.249, i32 noundef %.053, i32 noundef %.0.i35, i32 noundef %storemerge.i33, i32 noundef %storemerge.i) #16
  br label %_Py_NewRef.exit

bb.q:                                             ; preds = %bb.o
  %i.av = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.250, i32 noundef %.053, i32 noundef %.0.i35, i32 noundef %storemerge.i33) #16
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.j, %bb.q, %bb.p, %bb.n, %bb.h
  %.023 = phi ptr [ null, %bb.j ], [ %i.r, %bb.h ], [ %i.av, %bb.q ], [ %i.at, %bb.n ], [ %i.au, %bb.p ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @timezone_richcompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = add i32 %2, -4
  %or.cond = icmp ult i32 %i.a, -2
  br i1 %or.cond, label %delta_richcompare.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %.not.i = icmp eq ptr %.val, @PyDateTime_TimeZoneType
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.b
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_TimeZoneType) #16
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %delta_richcompare.exit, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.b, %PyObject_TypeCheck.exit
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !44 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, @PyDateTime_DeltaType
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.i = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyDateTime_DeltaType) #16, !inline_history !157
  %.not8.i = icmp eq i32 %i.i, 0
  br i1 %.not8.i, label %delta_richcompare.exit, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %PyObject_TypeCheck.exit.thread
  %i.j = getelementptr i8, ptr %i.e, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32
  %i.l = getelementptr i8, ptr %i.g, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !32
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %delta_cmp.exit.i

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.o = getelementptr i8, ptr %i.e, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  %i.q = getelementptr i8, ptr %i.g, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %delta_cmp.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.e, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !34
  %i.v = getelementptr i8, ptr %i.g, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !34
  %i.x = icmp eq i32 %i.u, %i.w
  br label %delta_cmp.exit.i

delta_cmp.exit.i:                                 ; preds = %bb.d, %bb.c, %PyObject_TypeCheck.exit.thread.i
  %.0.i.i = phi i1 [ %i.x, %bb.d ], [ false, %bb.c ], [ false, %PyObject_TypeCheck.exit.thread.i ] ; 2 uses
  %i.y = icmp eq i32 %2, 2
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %delta_cmp.exit.i
  %_Py_TrueStruct._Py_FalseStruct.i.i = select i1 %.0.i.i, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %delta_richcompare.exit

bb.f:                                             ; preds = %delta_cmp.exit.i
  %_Py_FalseStruct._Py_TrueStruct.i.i = select i1 %.0.i.i, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %delta_richcompare.exit

delta_richcompare.exit:                           ; preds = %bb.f, %bb.e, %PyObject_TypeCheck.exit.i, %PyObject_TypeCheck.exit, %bb.a
  %.0 = phi ptr [ @_Py_NotImplementedStruct, %bb.a ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit.i ], [ %_Py_TrueStruct._Py_FalseStruct.i.i, %bb.e ], [ %_Py_FalseStruct._Py_TrueStruct.i.i, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @timezone_new(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val38 = load i64, ptr %i.b, align 8, !tbaa !63 ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val39 = load i64, ptr %i.c, align 8, !tbaa !64
  %i.d = add i64 %.val39, %.val38
  %i.e = getelementptr i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %.val38, -1
  %i.g = icmp ult i64 %i.f, 2
  %i.h = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.i = icmp ne ptr %i.h, null
  %or.cond7 = and i1 %i.i, %i.g
  br i1 %or.cond7, label %.thread44, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.j = phi ptr [ %i.e, %.thread ], [ %i.h, %bb.b ]
  %i.k = phi i64 [ %i.d, %.thread ], [ %.val38, %bb.b ]
  %i.l = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.j, i64 noundef %.val38, ptr noundef %2, ptr noundef null, ptr noundef nonnull @timezone_new._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not34 = icmp eq ptr %i.l, null
  br i1 %.not34, label %bb.h, label %.thread44

.thread44:                                        ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.n = phi i64 [ %i.k, %bb.c ], [ %.val38, %bb.b ]
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val41 = load ptr, ptr %i.p, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %.val41, @PyDateTime_DeltaType
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %.thread44
  %i.q = call i32 @PyType_IsSubtype(ptr noundef %.val41, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not47 = icmp eq i32 %i.q, 0
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !43  ; 2 uses
  br i1 %.not47, label %bb.d, label %PyObject_TypeCheck.exit.thread

bb.d:                                             ; preds = %PyObject_TypeCheck.exit
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 24), align 8, !tbaa !46
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.261, ptr noundef %i.r, ptr noundef %.pre) #16
  br label %bb.h

PyObject_TypeCheck.exit.thread:                   ; preds = %.thread44, %PyObject_TypeCheck.exit
  %i.s = phi ptr [ %i.o, %.thread44 ], [ %.pre, %PyObject_TypeCheck.exit ]
  %.not36 = icmp eq i64 %i.n, 1
  br i1 %.not36, label %bb.g, label %bb.e

bb.e:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.t = getelementptr i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43   ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.v, align 8, !tbaa !44
  %i.w = getelementptr i8, ptr %.val, i64 168
  %.val40 = load i64, ptr %i.w, align 8, !tbaa !81
  %i.x = and i64 %.val40, 268435456
  %.not37 = icmp eq i64 %i.x, 0
  br i1 %.not37, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.u) #16
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %PyObject_TypeCheck.exit.thread
  %.0 = phi ptr [ null, %PyObject_TypeCheck.exit.thread ], [ %i.u, %bb.e ]
  %i.y = call ptr @new_timezone(ptr noundef %i.s, ptr noundef %.0), !inline_history !158
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.f, %bb.d
  %.030 = phi ptr [ %i.y, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.030
}

; Function Attrs: nounwind uwtable
define internal ptr @timezone_tzname(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) #0 {
bb.a:
  %i.a = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val5.i = load ptr, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %.not.i.i = icmp eq ptr %.val5.i, @PyDateTime_DateTimeType
  br i1 %.not.i.i, label %bb.c, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.b
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val5.i, ptr noundef nonnull @PyDateTime_DateTimeType) #16, !inline_history !159
  %.not7.i = icmp eq i32 %i.c, 0
  br i1 %.not7.i, label %_timezone_check_argument.exit, label %bb.c

_timezone_check_argument.exit:                    ; preds = %PyObject_TypeCheck.exit.i
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr i8, ptr %.val.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.8, ptr noundef %i.f) #16, !inline_history !159 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.i, %bb.a, %bb.b
  %i.h = tail call ptr @timezone_str(ptr noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %_timezone_check_argument.exit, %bb.c
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %_timezone_check_argument.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @timezone_utcoffset(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) #0 {
bb.a:
  %i.a = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val5.i = load ptr, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %.not.i.i = icmp eq ptr %.val5.i, @PyDateTime_DateTimeType
  br i1 %.not.i.i, label %bb.c, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.b
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val5.i, ptr noundef nonnull @PyDateTime_DateTimeType) #16, !inline_history !159
  %.not7.i = icmp eq i32 %i.c, 0
  br i1 %.not7.i, label %_timezone_check_argument.exit, label %bb.c

_timezone_check_argument.exit:                    ; preds = %PyObject_TypeCheck.exit.i
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr i8, ptr %.val.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.10, ptr noundef %i.f) #16, !inline_history !159 ; 0 uses
  br label %_Py_NewRef.exit

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.i, %bb.a, %bb.b
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %i.i, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.c, %_timezone_check_argument.exit
  %.0 = phi ptr [ null, %_timezone_check_argument.exit ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @timezone_dst(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address) %1) #0 {
bb.a:
  %i.a = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.a, label %_timezone_check_argument.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val5.i = load ptr, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %.not.i.i = icmp eq ptr %.val5.i, @PyDateTime_DateTimeType
  br i1 %.not.i.i, label %_timezone_check_argument.exit.thread, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.b
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val5.i, ptr noundef nonnull @PyDateTime_DateTimeType) #16, !inline_history !159
  %.not7.i = icmp eq i32 %i.c, 0
  br i1 %.not7.i, label %bb.c, label %_timezone_check_argument.exit.thread

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr i8, ptr %.val.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.12, ptr noundef %i.f) #16, !inline_history !159 ; 0 uses
  br label %_timezone_check_argument.exit.thread

_timezone_check_argument.exit.thread:             ; preds = %bb.b, %bb.a, %PyObject_TypeCheck.exit.i, %bb.c
  %i.h = phi ptr [ null, %bb.c ], [ @_Py_NoneStruct, %PyObject_TypeCheck.exit.i ], [ @_Py_NoneStruct, %bb.a ], [ @_Py_NoneStruct, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define internal ptr @timezone_fromutc(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %.not.i = icmp eq ptr %.val, @PyDateTime_DateTimeType
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.20) #16
  br label %bb.f

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !57
  %.not10 = icmp eq i8 %i.e, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.f = getelementptr i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  %.not11 = icmp eq ptr %i.g, %0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %PyObject_TypeCheck.exit.thread
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.21) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = tail call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %1, ptr noundef %i.j, i32 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.k, %bb.e ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @timezone_getinitargs(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 1, ptr noundef %i.e) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef %i.e, ptr noundef nonnull %i.b) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @module_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !69
  %.val4 = load ptr, ptr %.val, align 8, !tbaa !104 ; 2 uses
  %.not.i = icmp eq ptr %.val4, null
  br i1 %.not.i, label %traverse_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val4, ptr noundef %2) #16, !inline_history !160 ; 0 uses
  br label %traverse_state.exit

traverse_state.exit:                              ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @module_clear(ptr nofree noundef readonly captures(address) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.c, align 8, !tbaa !69
  tail call fastcc void @clear_state(ptr noundef %.val)
  %i.d = tail call ptr @PyInterpreterState_Get() #16
  %i.e = tail call ptr @PyErr_GetRaisedException() #16
  %i.f = tail call ptr @PyInterpreterState_GetDict(ptr noundef %i.d) #16 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.h = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.f, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 76840), ptr noundef nonnull %i.a) #16
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.thread16.i, label %bb.c

.thread16.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp ne ptr %i.j, @_Py_NoneStruct
  %or.cond.i = and i1 %i.k, %i.l
  br i1 %or.cond.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !43
  %i.m = call i32 @PyWeakref_GetRef(ptr noundef nonnull %i.j, ptr noundef nonnull %i.b) #16
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !43   ; 4 uses
  %.not.i14.i = icmp eq ptr %i.n, null
  br i1 %.not.i14.i, label %Py_XDECREF.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i.i, label %bb.f, label %Py_XDECREF.exit.i

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !35
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %Py_XDECREF.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.n) #16
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i, label %bb.h, label %Py_DECREF.exit.i

bb.h:                                             ; preds = %Py_XDECREF.exit.i
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !35
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %Py_DECREF.exit.i

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #16
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.i, %bb.h, %Py_XDECREF.exit.i
  %i.v = icmp sgt i32 %i.m, -1                    ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8
  %.not12.i = icmp eq ptr %i.w, %0                ; 2 uses
  %cond.i = select i1 %i.v, i1 %.not12.i, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br i1 %cond.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %Py_DECREF.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.k

bb.j:                                             ; preds = %Py_DECREF.exit.i
  %.13.i = select i1 %.not12.i, i32 0, i32 3
  %.0.i = select i1 %i.v, i32 %.13.i, i32 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  switch i32 %.0.i, label %bb.m [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 3, label %clear_current_module.exit
  ]

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.x = call i32 @PyDict_SetItem(ptr noundef nonnull %i.f, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 76840), ptr noundef nonnull @_Py_NoneStruct) #16
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.l, label %clear_current_module.exit

bb.l:                                             ; preds = %bb.k, %bb.j, %.thread16.i, %bb.a
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.277) #16
  br label %clear_current_module.exit

bb.m:                                             ; preds = %bb.j
  unreachable

clear_current_module.exit:                        ; preds = %bb.j, %bb.k, %bb.l
  call void @PyErr_SetRaisedException(ptr noundef %i.e) #16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @module_free(ptr nofree noundef readonly captures(address) %0) #0 {
bb.a:
  %i.a = tail call i32 @module_clear(ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_datetime_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !69  ; 19 uses
  %i.b = tail call ptr @PyInterpreterState_Get() #16 ; 2 uses
  %i.c = tail call fastcc ptr @get_current_module(ptr noundef %i.b) ; 6 uses
  %i.d = tail call ptr @PyErr_Occurred() #16
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader.preheader, label %init_state.exit.thread

.preheader.preheader:                             ; preds = %bb.a
  %i.e = tail call ptr @_PyType_Name(ptr noundef nonnull @PyDateTime_DateType) #16
  %i.f = tail call i32 @PyModule_AddObjectRef(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef nonnull @PyDateTime_DateType) #16
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %.preheader.1, label %init_state.exit.thread

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.h = tail call ptr @_PyType_Name(ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %i.i = tail call i32 @PyModule_AddObjectRef(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %.preheader.2, label %init_state.exit.thread

.preheader.2:                                     ; preds = %.preheader.1
  %i.k = tail call ptr @_PyType_Name(ptr noundef nonnull @PyDateTime_TimeType) #16
  %i.l = tail call i32 @PyModule_AddObjectRef(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef nonnull @PyDateTime_TimeType) #16
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %.preheader.3, label %init_state.exit.thread

.preheader.3:                                     ; preds = %.preheader.2
  %i.n = tail call ptr @_PyType_Name(ptr noundef nonnull @PyDateTime_DeltaType) #16
  %i.o = tail call i32 @PyModule_AddObjectRef(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %.preheader.4, label %init_state.exit.thread

.preheader.4:                                     ; preds = %.preheader.3
  %i.q = tail call ptr @_PyType_Name(ptr noundef nonnull @PyDateTime_TZInfoType) #16
  %i.r = tail call i32 @PyModule_AddObjectRef(ptr noundef nonnull %0, ptr noundef %i.q, ptr noundef nonnull @PyDateTime_TZInfoType) #16
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %.preheader.5, label %init_state.exit.thread

.preheader.5:                                     ; preds = %.preheader.4
  %i.t = tail call ptr @_PyType_Name(ptr noundef nonnull @PyDateTime_TimeZoneType) #16
  %i.u = tail call i32 @PyModule_AddObjectRef(ptr noundef nonnull %0, ptr noundef %i.t, ptr noundef nonnull @PyDateTime_TimeZoneType) #16
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %.thread, label %init_state.exit.thread

.thread:                                          ; preds = %.preheader.5
  %i.w = tail call ptr @PyType_FromModuleAndSpec(ptr noundef nonnull %0, ptr noundef nonnull @isocal_spec, ptr noundef nonnull @PyTuple_Type) #16 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %init_state.exit.thread, label %bb.b

bb.b:                                             ; preds = %.thread
  store ptr %i.w, ptr %.val, align 8, !tbaa !104
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %i.c, i64 24
  %.val.i = load ptr, ptr %i.y, align 8, !tbaa !69 ; 8 uses
  %i.z = getelementptr i8, ptr %.val.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !74  ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, -1073741825
  br i1 %i.ac, label %_Py_NewRef.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = add nuw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !35
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.d, %bb.c
  %i.ae = getelementptr i8, ptr %.val.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, -1073741825
  br i1 %i.ah, label %_Py_NewRef.exit35.i, label %bb.e

bb.e:                                             ; preds = %_Py_NewRef.exit.i
  %i.ai = add nuw i32 %i.ag, 1
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !35
  br label %_Py_NewRef.exit35.i

_Py_NewRef.exit35.i:                              ; preds = %bb.e, %_Py_NewRef.exit.i
  %i.aj = getelementptr i8, ptr %.val.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !77 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !35 ; 2 uses
  %i.am = icmp ugt i32 %i.al, -1073741825
  br i1 %i.am, label %_Py_NewRef.exit36.i, label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit35.i
  %i.an = add nuw i32 %i.al, 1
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !35
  br label %_Py_NewRef.exit36.i

_Py_NewRef.exit36.i:                              ; preds = %bb.f, %_Py_NewRef.exit35.i
  %i.ao = getelementptr i8, ptr %.val.i, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !35 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, -1073741825
  br i1 %i.ar, label %_Py_NewRef.exit37.i, label %bb.g

bb.g:                                             ; preds = %_Py_NewRef.exit36.i
  %i.as = add nuw i32 %i.aq, 1
  store i32 %i.as, ptr %i.ap, align 8, !tbaa !35
  br label %_Py_NewRef.exit37.i

_Py_NewRef.exit37.i:                              ; preds = %bb.g, %_Py_NewRef.exit36.i
  %i.at = getelementptr i8, ptr %.val.i, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !79 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  %i.aw = icmp ugt i32 %i.av, -1073741825
  br i1 %i.aw, label %_Py_NewRef.exit38.i, label %bb.h

bb.h:                                             ; preds = %_Py_NewRef.exit37.i
  %i.ax = add nuw i32 %i.av, 1
  store i32 %i.ax, ptr %i.au, align 8, !tbaa !35
  br label %_Py_NewRef.exit38.i

_Py_NewRef.exit38.i:                              ; preds = %bb.h, %_Py_NewRef.exit37.i
  %i.ay = getelementptr i8, ptr %.val.i, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !80 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !35 ; 2 uses
  %i.bb = icmp ugt i32 %i.ba, -1073741825
  br i1 %i.bb, label %_Py_NewRef.exit39.i, label %bb.i

bb.i:                                             ; preds = %_Py_NewRef.exit38.i
  %i.bc = add nuw i32 %i.ba, 1
  store i32 %i.bc, ptr %i.az, align 8, !tbaa !35
  br label %_Py_NewRef.exit39.i

_Py_NewRef.exit39.i:                              ; preds = %bb.i, %_Py_NewRef.exit38.i
  %i.bd = getelementptr i8, ptr %.val.i, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !86 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !35 ; 2 uses
  %i.bg = icmp ugt i32 %i.bf, -1073741825
  br i1 %i.bg, label %_Py_NewRef.exit40.i, label %bb.j

bb.j:                                             ; preds = %_Py_NewRef.exit39.i
  %i.bh = add nuw i32 %i.bf, 1
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !35
  br label %_Py_NewRef.exit40.i

_Py_NewRef.exit40.i:                              ; preds = %bb.j, %_Py_NewRef.exit39.i
  %i.bi = getelementptr i8, ptr %.val.i, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !146 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !35 ; 2 uses
  %i.bl = icmp ugt i32 %i.bk, -1073741825
  br i1 %i.bl, label %init_state.exit.thread33, label %bb.k

bb.k:                                             ; preds = %_Py_NewRef.exit40.i
  %i.bm = add nuw i32 %i.bk, 1
  store i32 %i.bm, ptr %i.bj, align 8, !tbaa !35
  br label %init_state.exit.thread33

init_state.exit.thread33:                         ; preds = %_Py_NewRef.exit40.i, %bb.k
  store ptr %i.w, ptr %.val, align 8, !tbaa !161
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %i.aa, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !43
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store ptr %i.af, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !43
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !43
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  store ptr %i.ap, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 40
  store ptr %i.au, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !43
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 48
  store ptr %i.az, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !43
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 56
  store ptr %i.be, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !43
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 64
  store ptr %i.bj, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !43
  br label %bb.s

bb.l:                                             ; preds = %bb.b
  %i.bn = tail call ptr @PyLong_FromLong(i64 noundef 1000) #16 ; 2 uses
  %i.bo = getelementptr i8, ptr %.val, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !74
  %i.bp = icmp eq ptr %i.bn, null
  br i1 %i.bp, label %init_state.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = tail call ptr @PyLong_FromLong(i64 noundef 1000000) #16 ; 2 uses
  %i.br = getelementptr i8, ptr %.val, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !76
  %i.bs = icmp eq ptr %i.bq, null
  br i1 %i.bs, label %init_state.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = tail call ptr @PyLong_FromLong(i64 noundef 60000000) #16 ; 2 uses
  %i.bu = getelementptr i8, ptr %.val, i64 24
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !77
  %i.bv = icmp eq ptr %i.bt, null
  br i1 %i.bv, label %init_state.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = tail call ptr @PyLong_FromLong(i64 noundef 86400) #16 ; 2 uses
  %i.bx = getelementptr i8, ptr %.val, i64 56
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !86
  %i.by = icmp eq ptr %i.bw, null
  br i1 %i.by, label %init_state.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = tail call ptr @PyLong_FromDouble(double noundef 3.600000e+09) #16 ; 2 uses
  %i.ca = getelementptr i8, ptr %.val, i64 32
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !78
  %i.cb = icmp eq ptr %i.bz, null
  br i1 %i.cb, label %init_state.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = tail call ptr @PyLong_FromDouble(double noundef 8.640000e+10) #16 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val, i64 40
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !79
  %i.ce = icmp eq ptr %i.cc, null
  br i1 %i.ce, label %init_state.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = tail call ptr @PyLong_FromDouble(double noundef 6.048000e+11) #16 ; 2 uses
  %i.cg = getelementptr i8, ptr %.val, i64 48
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !80
  %i.ch = icmp eq ptr %i.cf, null
  br i1 %i.ch, label %init_state.exit.thread, label %init_state.exit

init_state.exit:                                  ; preds = %bb.r
  %i.ci = tail call ptr @new_datetime_ex2(i32 noundef 1970, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @utc_timezone, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType) ; 2 uses
  %i.cj = getelementptr i8, ptr %.val, i64 64
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !146
  %i.ck = icmp eq ptr %i.ci, null
  br i1 %i.ck, label %init_state.exit.thread, label %bb.s

bb.s:                                             ; preds = %init_state.exit.thread33, %init_state.exit
  %i.cl = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %0, ptr noundef nonnull @.str.265, i64 noundef 1) #16
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %init_state.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %0, ptr noundef nonnull @.str.266, i64 noundef 9999) #16
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %init_state.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = tail call i32 @PyModule_AddObjectRef(ptr noundef nonnull %0, ptr noundef nonnull @.str.247, ptr noundef nonnull @utc_timezone) #16
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %init_state.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = tail call ptr @PyCapsule_New(ptr noundef nonnull @capi, ptr noundef nonnull @.str.267, ptr noundef null) #16
  %i.cs = tail call i32 @PyModule_Add(ptr noundef nonnull %0, ptr noundef nonnull @.str.268, ptr noundef %i.cr) #16
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %init_state.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = tail call fastcc i32 @set_current_module(ptr noundef %i.b, ptr noundef nonnull %0)
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %init_state.exit.thread, label %bb.x

init_state.exit.thread:                           ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.thread, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.r, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %init_state.exit, %bb.a
  tail call fastcc void @clear_state(ptr noundef %.val)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %init_state.exit.thread
  %.026 = phi i32 [ -1, %init_state.exit.thread ], [ 0, %bb.w ]
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %Py_XDECREF.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = load i32, ptr %i.c, align 8, !tbaa !35  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cw, -1
  br i1 %.not.i.i, label %bb.z, label %Py_XDECREF.exit

bb.z:                                             ; preds = %bb.y
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.c, align 8, !tbaa !35
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.aa, label %Py_XDECREF.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #16
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  ret i32 %.026
}

declare ptr @_PyType_Name(ptr noundef) local_unnamed_addr #2

declare i32 @PyModule_AddObjectRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyModule_AddIntConstant(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyCapsule_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyModule_Add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @set_current_module(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyInterpreterState_GetDict(ptr noundef %0) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyWeakref_NewRef(ptr noundef %1, ptr noundef null) #16 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @PyDict_SetItem(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 76840), ptr noundef nonnull %i.c) #16 ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.c, align 8, !tbaa !35
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clear_state(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !161    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %Py_DECREF.exit76, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !161
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i75 = icmp sgt i32 %i.b, -1
  br i1 %.not.i75, label %bb.c, label %Py_DECREF.exit76

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !35
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %Py_DECREF.exit76

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16
  br label %Py_DECREF.exit76

Py_DECREF.exit76:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 4 uses
  %.not53 = icmp eq ptr %i.f, null
  br i1 %.not53, label %Py_DECREF.exit74, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit76
  store ptr null, ptr %i.e, align 8, !tbaa !43
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %.not.i73 = icmp sgt i32 %i.g, -1
  br i1 %.not.i73, label %bb.f, label %Py_DECREF.exit74

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %Py_DECREF.exit74

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #16
  br label %Py_DECREF.exit74

Py_DECREF.exit74:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit76
  %i.j = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43   ; 4 uses
  %.not54 = icmp eq ptr %i.k, null
  br i1 %.not54, label %Py_DECREF.exit72, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit74
  store ptr null, ptr %i.j, align 8, !tbaa !43
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %.not.i71 = icmp sgt i32 %i.l, -1
  br i1 %.not.i71, label %bb.i, label %Py_DECREF.exit72

bb.i:                                             ; preds = %bb.h
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !35
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %Py_DECREF.exit72

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #16
  br label %Py_DECREF.exit72

Py_DECREF.exit72:                                 ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit74
  %i.o = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 4 uses
  %.not55 = icmp eq ptr %i.p, null
  br i1 %.not55, label %Py_DECREF.exit70, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit72
  store ptr null, ptr %i.o, align 8, !tbaa !43
  %i.q = load i32, ptr %i.p, align 8, !tbaa !35   ; 2 uses
  %.not.i69 = icmp sgt i32 %i.q, -1
  br i1 %.not.i69, label %bb.l, label %Py_DECREF.exit70

bb.l:                                             ; preds = %bb.k
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !35
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.m, label %Py_DECREF.exit70

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #16
  br label %Py_DECREF.exit70

Py_DECREF.exit70:                                 ; preds = %bb.m, %bb.l, %bb.k, %Py_DECREF.exit72
  %i.t = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43   ; 4 uses
  %.not56 = icmp eq ptr %i.u, null
  br i1 %.not56, label %Py_DECREF.exit68, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit70
  store ptr null, ptr %i.t, align 8, !tbaa !43
  %i.v = load i32, ptr %i.u, align 8, !tbaa !35   ; 2 uses
  %.not.i67 = icmp sgt i32 %i.v, -1
  br i1 %.not.i67, label %bb.o, label %Py_DECREF.exit68

bb.o:                                             ; preds = %bb.n
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !35
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.p, label %Py_DECREF.exit68

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #16
  br label %Py_DECREF.exit68

Py_DECREF.exit68:                                 ; preds = %bb.p, %bb.o, %bb.n, %Py_DECREF.exit70
  %i.y = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 4 uses
  %.not57 = icmp eq ptr %i.z, null
  br i1 %.not57, label %Py_DECREF.exit66, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit68
  store ptr null, ptr %i.y, align 8, !tbaa !43
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !35  ; 2 uses
  %.not.i65 = icmp sgt i32 %i.aa, -1
  br i1 %.not.i65, label %bb.r, label %Py_DECREF.exit66

bb.r:                                             ; preds = %bb.q
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !35
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.s, label %Py_DECREF.exit66

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #16
  br label %Py_DECREF.exit66

Py_DECREF.exit66:                                 ; preds = %bb.s, %bb.r, %bb.q, %Py_DECREF.exit68
  %i.ad = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 4 uses
  %.not58 = icmp eq ptr %i.ae, null
  br i1 %.not58, label %Py_DECREF.exit64, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit66
  store ptr null, ptr %i.ad, align 8, !tbaa !43
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %.not.i63 = icmp sgt i32 %i.af, -1
  br i1 %.not.i63, label %bb.u, label %Py_DECREF.exit64

bb.u:                                             ; preds = %bb.t
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !35
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.v, label %Py_DECREF.exit64

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #16
  br label %Py_DECREF.exit64

Py_DECREF.exit64:                                 ; preds = %bb.v, %bb.u, %bb.t, %Py_DECREF.exit66
  %i.ai = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43 ; 4 uses
  %.not59 = icmp eq ptr %i.aj, null
  br i1 %.not59, label %Py_DECREF.exit62, label %bb.w

bb.w:                                             ; preds = %Py_DECREF.exit64
  store ptr null, ptr %i.ai, align 8, !tbaa !43
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !35 ; 2 uses
  %.not.i61 = icmp sgt i32 %i.ak, -1
  br i1 %.not.i61, label %bb.x, label %Py_DECREF.exit62

bb.x:                                             ; preds = %bb.w
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !35
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.y, label %Py_DECREF.exit62

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #16
  br label %Py_DECREF.exit62

Py_DECREF.exit62:                                 ; preds = %bb.y, %bb.x, %bb.w, %Py_DECREF.exit64
  %i.an = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43 ; 4 uses
  %.not60 = icmp eq ptr %i.ao, null
  br i1 %.not60, label %Py_DECREF.exit, label %bb.z

bb.z:                                             ; preds = %Py_DECREF.exit62
  store ptr null, ptr %i.an, align 8, !tbaa !43
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i, label %bb.aa, label %Py_DECREF.exit

bb.aa:                                            ; preds = %bb.z
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !35
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.ab, label %Py_DECREF.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ab, %bb.aa, %bb.z, %Py_DECREF.exit62
  ret void
}

declare ptr @PyType_FromModuleAndSpec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @iso_calendar_date_repr(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyTuple_GetItem(ptr noundef %0, i64 noundef 0) #16 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyTuple_GetItem(ptr noundef %0, i64 noundef 1) #16 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @PyTuple_GetItem(ptr noundef %0, i64 noundef 2) #16 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.h = getelementptr i8, ptr %.val, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.272, ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.j, %bb.d ], [ null, %bb.c ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @iso_calendar_date_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !63  ; 2 uses
  %i.c = icmp eq ptr %2, null
  %i.d = icmp eq i64 %.val, 3
  %or.cond3 = select i1 %i.c, i1 %i.d, i1 false
  %i.e = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.f = icmp ne ptr %i.e, null
  %or.cond7 = and i1 %i.f, %or.cond3
  br i1 %or.cond7, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.e, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @iso_calendar_date_new._parser, i32 noundef 3, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = call i32 @PyLong_AsInt(ptr noundef %i.i) #16 ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.l = call ptr @PyErr_Occurred() #16
  %.not31 = icmp eq ptr %i.l, null
  br i1 %.not31, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %.thread
  %i.m = getelementptr i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.o = call i32 @PyLong_AsInt(ptr noundef %i.n) #16 ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = call ptr @PyErr_Occurred() #16
  %.not32 = icmp eq ptr %i.q, null
  br i1 %.not32, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr i8, ptr %i.h, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = call i32 @PyLong_AsInt(ptr noundef %i.s) #16 ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.v = call ptr @PyErr_Occurred() #16
  %.not33 = icmp eq ptr %i.v, null
  br i1 %.not33, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.t, %bb.f ], [ -1, %bb.g ]
  %i.w = call fastcc ptr @iso_calendar_date_new_impl(ptr noundef %0, i32 noundef %i.j, i32 noundef %i.o, i32 noundef %.sink)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g, %bb.e, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.b ], [ %i.w, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @iso_calendar_date_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44  ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyTuple_Type, i64 48), align 8, !tbaa !162
  tail call void %i.b(ptr noundef %0) #16
  %i.c = load i32, ptr %.val, align 8, !tbaa !35  ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %.val, align 8, !tbaa !35
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @iso_calendar_date_traverse(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.not = icmp eq ptr %.val12, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val12, ptr noundef %2) #16 ; 2 uses
  %.not11.not = icmp eq i32 %i.b, 0
  br i1 %.not11.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyTuple_Type, i64 184), align 8, !tbaa !163
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.d, %bb.c ], [ %i.b, %bb.b ]
  ret i32 %.1
}

declare ptr @PyTuple_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @iso_calendar_date_reduce(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = getelementptr i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.274, ptr noundef nonnull @PyTuple_Type, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f) #16
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal ptr @iso_calendar_date_year(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyTuple_GetItem(ptr noundef %0, i64 noundef 0) #16 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @iso_calendar_date_week(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyTuple_GetItem(ptr noundef %0, i64 noundef 1) #16 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @iso_calendar_date_weekday(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyTuple_GetItem(ptr noundef %0, i64 noundef 2) #16 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.a, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @new_time_ex(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = tail call ptr @new_time_ex2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_fromtimestamp_capi(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr @_Py_NoneStruct, ptr %i.b, align 8, !tbaa !43
  %i.c = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.276, ptr noundef nonnull @datetime_datetime_fromtimestamp_capi.keywords, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.f = call fastcc ptr @datetime_datetime_fromtimestamp_impl(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_fromtimestamp_capi(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.76, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %i.a) #16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.d = call fastcc ptr @date_fromtimestamp(ptr noundef %0, ptr noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

declare i32 @PyArg_ParseTupleAndKeywords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @PyArg_UnpackTuple(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ...) local_unnamed_addr #2

declare ptr @PyWeakref_NewRef(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #2

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #2

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !16, i64 304}
!12 = !{!"_typeobject", !13, i64 0, !18, i64 24, !17, i64 32, !17, i64 40, !16, i64 48, !17, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !17, i64 168, !18, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !17, i64 208, !16, i64 216, !16, i64 224, !19, i64 232, !20, i64 240, !21, i64 248, !15, i64 256, !22, i64 264, !16, i64 272, !16, i64 280, !17, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !22, i64 336, !22, i64 344, !22, i64 352, !16, i64 360, !22, i64 368, !16, i64 376, !8, i64 384, !16, i64 392, !16, i64 400, !9, i64 408, !23, i64 410}
!13 = !{!"PyVarObject", !14, i64 0, !17, i64 16}
!14 = !{!"_object", !9, i64 0, !15, i64 8}
!15 = !{!"p1 _ZTS11_typeobject", !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"p1 omnipotent char", !16, i64 0}
!19 = !{!"p1 _ZTS11PyMethodDef", !16, i64 0}
!20 = !{!"p1 _ZTS11PyMemberDef", !16, i64 0}
!21 = !{!"p1 _ZTS11PyGetSetDef", !16, i64 0}
!22 = !{!"p1 _ZTS7_object", !16, i64 0}
!23 = !{!"short", !9, i64 0}
!24 = !{ptr @new_delta_ex}
!25 = !{!26, !8, i64 0}
!26 = !{!"", !8, i64 0, !18, i64 8, !18, i64 16, !8, i64 24}
!27 = !{!26, !18, i64 8}
!28 = !{!26, !18, i64 16}
!29 = !{!26, !8, i64 24}
!30 = !{!31, !17, i64 16}
!31 = !{!"", !14, i64 0, !17, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!32 = !{!31, !8, i64 24}
!33 = !{!31, !8, i64 28}
!34 = !{!31, !8, i64 32}
!35 = !{!9, !9, i64 0}
!36 = !{ptr @new_date_ex}
!37 = !{!38, !17, i64 16}
!38 = !{!"", !14, i64 0, !17, i64 16, !9, i64 24, !9, i64 25}
!39 = !{ptr @new_time_ex2}
!40 = !{!41, !9, i64 24}
!41 = !{!"", !14, i64 0, !17, i64 16, !9, i64 24, !9, i64 25, !9, i64 31, !22, i64 32}
!42 = !{!41, !17, i64 16}
!43 = !{!22, !22, i64 0}
!44 = !{!14, !15, i64 8}
!45 = distinct !{null}
!46 = !{!12, !18, i64 24}
!47 = !{!41, !22, i64 32}
!48 = !{!41, !9, i64 31}
!49 = !{!50, !9, i64 24}
!50 = !{!"", !14, i64 0, !17, i64 16, !9, i64 24, !9, i64 25, !9, i64 35, !22, i64 40}
!51 = !{!50, !22, i64 40}
!52 = !{!50, !9, i64 35}
!53 = !{!54, !22, i64 16}
!54 = !{!"", !14, i64 0, !22, i64 16, !22, i64 24}
!55 = distinct !{null}
!56 = !{!54, !22, i64 24}
!57 = !{!58, !9, i64 24}
!58 = !{!"", !14, i64 0, !17, i64 16, !9, i64 24}
!59 = distinct !{null, null}
!60 = !{!61, !17, i64 16}
!61 = !{!"", !14, i64 0, !17, i64 16, !17, i64 24, !62, i64 32}
!62 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!63 = !{!13, !17, i64 16}
!64 = !{!65, !17, i64 16}
!65 = !{!"", !14, i64 0, !17, i64 16, !17, i64 24, !66, i64 32, !67, i64 40}
!66 = !{!"p1 _ZTS15_dictkeysobject", !16, i64 0}
!67 = !{!"p1 _ZTS11_dictvalues", !16, i64 0}
!68 = distinct !{null}
!69 = !{!70, !16, i64 24}
!70 = !{!"", !14, i64 0, !22, i64 16, !16, i64 24, !22, i64 32, !22, i64 40, !71, i64 48, !17, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96}
!71 = !{!"_Bool", !9, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"double", !9, i64 0}
!74 = !{!75, !22, i64 8}
!75 = !{!"", !15, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64}
!76 = !{!75, !22, i64 16}
!77 = !{!75, !22, i64 24}
!78 = !{!75, !22, i64 32}
!79 = !{!75, !22, i64 40}
!80 = !{!75, !22, i64 48}
!81 = !{!12, !17, i64 168}
!82 = distinct !{null}
!83 = !{ptr @delta_positive, ptr @new_delta_ex}
!84 = distinct !{null}
!85 = distinct !{null}
!86 = !{!75, !22, i64 56}
!87 = distinct !{null}
!88 = !{!23, !23, i64 0}
!89 = distinct !{null}
!90 = distinct !{null, ptr @new_datetime_ex}
!91 = distinct !{null}
!92 = !{ptr @datetime_date_fromordinal_impl}
!93 = distinct !{null}
!94 = !{!17, !17, i64 0}
!95 = distinct !{null, null}
!96 = distinct !{null, null, ptr @new_datetime_ex}
!97 = distinct !{null}
!98 = !{!99, !8, i64 20}
!99 = !{!"tm", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !17, i64 40, !18, i64 48}
!100 = !{!99, !8, i64 16}
!101 = !{!99, !8, i64 12}
!102 = !{!18, !18, i64 0}
!103 = distinct !{null}
!104 = !{!75, !15, i64 0}
!105 = distinct !{null, null}
!106 = distinct !{null, null, ptr @new_datetime_ex}
!107 = distinct !{null, null}
!108 = distinct !{null}
!109 = distinct !{null}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.mustprogress"}
!112 = distinct !{null}
!113 = !{!12, !16, i64 320}
!114 = distinct !{null}
!115 = distinct !{null, null}
!116 = distinct !{null}
!117 = distinct !{null}
!118 = distinct !{null, null}
!119 = distinct !{!119, !111}
!120 = !{ptr @new_timezone}
!121 = distinct !{ptr @new_timezone, null}
!122 = distinct !{!122, !111}
!123 = !{!50, !17, i64 16}
!124 = distinct !{null}
!125 = distinct !{null, null}
!126 = distinct !{null}
!127 = distinct !{null, null}
!128 = distinct !{null, null}
!129 = distinct !{null}
!130 = distinct !{null}
!131 = distinct !{null, null}
!132 = !{ptr @_PyTime_gmtime, ptr @_PyTime_localtime}
!133 = distinct !{null, ptr @datetime_from_timet_and_us, null}
!134 = !{!99, !8, i64 8}
!135 = !{!99, !8, i64 4}
!136 = !{!99, !8, i64 0}
!137 = distinct !{null, ptr @datetime_from_timet_and_us, null, null}
!138 = distinct !{null}
!139 = distinct !{null, null}
!140 = distinct !{null, ptr @datetime_from_timet_and_us, null}
!141 = distinct !{null, ptr @datetime_from_timet_and_us, null, null}
!142 = distinct !{null, null}
!143 = distinct !{null}
!144 = distinct !{!144, !111}
!145 = distinct !{null, null, null}
!146 = !{!75, !22, i64 64}
!147 = distinct !{null, null}
!148 = distinct !{null, null}
!149 = distinct !{null, null}
!150 = distinct !{null}
!151 = distinct !{null, null}
!152 = distinct !{null, null, ptr @new_delta_ex}
!153 = distinct !{null}
!154 = distinct !{null}
!155 = !{!99, !18, i64 48}
!156 = !{!99, !17, i64 40}
!157 = !{ptr @delta_richcompare}
!158 = distinct !{null}
!159 = distinct !{null}
!160 = distinct !{null}
!161 = !{!15, !15, i64 0}
!162 = !{!12, !16, i64 48}
!163 = !{!12, !16, i64 184}
end_hunk_1
