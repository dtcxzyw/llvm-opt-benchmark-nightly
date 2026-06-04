inline.NumInlined: 217
inline.NumDeleted: 75
begin_hunk_0_@buffered_traverse:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val35, ptr noundef %2) #9 ; 2 uses
  %.not30 = icmp eq i32 %i.b, 0
  br i1 %.not30, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not31 = icmp eq ptr %i.d, null
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull %i.d, ptr noundef %2) #9 ; 2 uses
  %.not32 = icmp eq i32 %i.e, 0
  br i1 %.not32, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.f = getelementptr i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 2 uses
  %.not33 = icmp eq ptr %i.g, null
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 %1(ptr noundef nonnull %i.g, ptr noundef %2) #9 ; 2 uses
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.5 = phi i32 [ 0, %bb.g ], [ %i.h, %bb.f ], [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @buffered_clear(ptr noundef captures(none) initializes((24, 28)) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %Py_DECREF.exit15, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %.not.i14 = icmp sgt i32 %i.d, -1
  br i1 %.not.i14, label %bb.c, label %Py_DECREF.exit15

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !19
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %Py_DECREF.exit15

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #9
  br label %Py_DECREF.exit15

Py_DECREF.exit15:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 4 uses
  %.not13 = icmp eq ptr %i.h, null
  br i1 %.not13, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit15
  store ptr null, ptr %i.g, align 8, !tbaa !11
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !19
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @buffered_iternext(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69
  %.not25 = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.24) #9
  br label %Py_DECREF.exit27

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.25) #9
  br label %Py_DECREF.exit27

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val31 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.i = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val31, ptr noundef nonnull @_PyIO_Module) #9
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !37 ; 2 uses
  %.val30 = load ptr, ptr %i.h, align 8, !tbaa !46 ; 2 uses
  %i.k = getelementptr i8, ptr %.val.i, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = icmp eq ptr %.val30, %i.l
  br i1 %i.m, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %.val.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = icmp eq ptr %.val30, %i.o
  br i1 %i.p, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !11
  %i.q = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97112), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #9 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %Py_DECREF.exit27, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val29 = load ptr, ptr %i.r, align 8, !tbaa !46 ; 2 uses
  %i.s = getelementptr i8, ptr %.val29, i64 168
  %.val32 = load i64, ptr %i.s, align 8, !tbaa !47
  %i.t = and i64 %.val32, 134217728
  %.not24 = icmp eq i64 %i.t, 0
  br i1 %.not24, label %bb.i, label %.thread34

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @PyExc_OSError, align 8, !tbaa !11
  %i.v = getelementptr i8, ptr %.val29, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.x = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.u, ptr noundef nonnull @.str.26, ptr noundef %i.w) #9 ; 0 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %.not.i26 = icmp sgt i32 %i.y, -1
  br i1 %.not.i26, label %bb.j, label %Py_DECREF.exit27

bb.j:                                             ; preds = %bb.i
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.q, align 8, !tbaa !19
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %Py_DECREF.exit27

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #9
  br label %Py_DECREF.exit27

bb.l:                                             ; preds = %bb.e, %bb.f
  %i.ab = tail call fastcc ptr @_buffered_readline(ptr noundef nonnull %0, i64 noundef -1) ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %Py_DECREF.exit27, label %.thread34

.thread34:                                        ; preds = %bb.h, %bb.l
  %.02036 = phi ptr [ %i.ab, %bb.l ], [ %i.q, %bb.h ] ; 5 uses
  %i.ad = getelementptr i8, ptr %.02036, i64 16
  %.020.val = load i64, ptr %i.ad, align 8, !tbaa !20
  %i.ae = icmp eq i64 %.020.val, 0
  br i1 %i.ae, label %bb.m, label %Py_DECREF.exit27

bb.m:                                             ; preds = %.thread34
  %i.af = load i32, ptr %.02036, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i, label %bb.n, label %Py_DECREF.exit27

bb.n:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %.02036, align 8, !tbaa !19
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %Py_DECREF.exit27

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %.02036) #9
  br label %Py_DECREF.exit27

Py_DECREF.exit27:                                 ; preds = %bb.g, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.l, %.thread34, %bb.c, %bb.d
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %.02036, %.thread34 ], [ null, %bb.o ], [ null, %bb.l ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.g ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_io_BufferedReader___init__(ptr noundef captures(address) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !20  ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val46 = load i64, ptr %i.c, align 8, !tbaa !72
  %i.d = add i64 %.val46, %.val
  %i.e = getelementptr i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %.val, -1
  %i.g = icmp ult i64 %i.f, 2
  %i.h = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.i = icmp ne ptr %i.h, null
  %or.cond7 = and i1 %i.i, %i.g
  br i1 %or.cond7, label %.thread50, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.j = phi ptr [ %i.e, %.thread ], [ %i.h, %bb.b ]
  %i.k = phi i64 [ %i.d, %.thread ], [ %.val, %bb.b ]
  %i.l = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.j, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @_io_BufferedReader___init__._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not41 = icmp eq ptr %i.l, null
  br i1 %.not41, label %_io_BufferedReader___init___impl.exit, label %.thread50

.thread50:                                        ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = phi i64 [ %i.k, %bb.c ], [ %.val, %bb.b ]
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !11   ; 5 uses
  %.not42 = icmp eq i64 %i.n, 1
  br i1 %.not42, label %.thread55, label %bb.d

bb.d:                                             ; preds = %.thread50
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.r = call ptr @_PyNumber_Index(ptr noundef %i.q) #9 ; 5 uses
  %.not43 = icmp eq ptr %i.r, null
  br i1 %.not43, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.r) #9 ; 2 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.r, align 8, !tbaa !19
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.w = icmp eq i64 %i.s, -1
  br i1 %i.w, label %Py_DECREF.exit.thread, label %.thread55

Py_DECREF.exit.thread:                            ; preds = %bb.d, %Py_DECREF.exit
  %i.x = call ptr @PyErr_Occurred() #9
  %.not44 = icmp eq ptr %i.x, null
  br i1 %.not44, label %.thread55, label %_io_BufferedReader___init___impl.exit

.thread55:                                        ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %.thread50
  %.1 = phi i64 [ 131072, %.thread50 ], [ %i.s, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ]
  %i.y = getelementptr i8, ptr %0, i64 24         ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !61
  %i.z = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val.i = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ab = call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_PyIO_Module) #9
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %.val.i.i = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 3 uses
  %i.ad = call ptr @_PyIOBase_check_readable(ptr noundef %.val.i.i, ptr noundef %i.o, ptr noundef nonnull @_Py_TrueStruct) #9
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_io_BufferedReader___init___impl.exit, label %bb.h

bb.h:                                             ; preds = %.thread55
  %i.af = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 4 uses
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !19  ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, -1073741825
  br i1 %i.ai, label %_Py_NewRef.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add nuw i32 %i.ah, 1
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !19
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.i, %bb.h
  store ptr %i.o, ptr %i.af, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %Py_XDECREF.exit.i, label %bb.j

bb.j:                                             ; preds = %_Py_NewRef.exit.i
  %i.ak = load i32, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i.i.i, label %bb.k, label %Py_XDECREF.exit.i

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.ag, align 8, !tbaa !19
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %Py_XDECREF.exit.i

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #9
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.l, %bb.k, %bb.j, %_Py_NewRef.exit.i
  %i.an = getelementptr i8, ptr %0, i64 120
  store i64 %.1, ptr %i.an, align 8, !tbaa !75
  %i.ao = getelementptr i8, ptr %0, i64 32
  store i32 1, ptr %i.ao, align 8, !tbaa !76
  %i.ap = getelementptr i8, ptr %0, i64 36
  store i32 0, ptr %i.ap, align 4, !tbaa !77
  %i.aq = call fastcc i32 @_buffered_init(ptr noundef nonnull %0)
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %_io_BufferedReader___init___impl.exit, label %bb.m

bb.m:                                             ; preds = %Py_XDECREF.exit.i
  %i.as = getelementptr i8, ptr %0, i64 80
  store i64 -1, ptr %i.as, align 8, !tbaa !78
  %i.at = getelementptr i8, ptr %.val.i.i, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !70
  %.val23.i = load ptr, ptr %i.aa, align 8, !tbaa !46
  %.not.i47 = icmp eq ptr %.val23.i, %i.au
  br i1 %.not.i47, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %.val.i.i, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !79
  %i.ax = getelementptr i8, ptr %i.o, i64 8
  %.val22.i = load ptr, ptr %i.ax, align 8, !tbaa !46
  %i.ay = icmp eq ptr %.val22.i, %i.aw
  %i.az = zext i1 %i.ay to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ba = phi i32 [ 0, %bb.m ], [ %i.az, %bb.n ]
  %i.bb = getelementptr i8, ptr %0, i64 44
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !80
  store i32 1, ptr %i.y, align 8, !tbaa !61
  br label %_io_BufferedReader___init___impl.exit

_io_BufferedReader___init___impl.exit:            ; preds = %bb.o, %Py_XDECREF.exit.i, %.thread55, %Py_DECREF.exit.thread, %bb.c
  %.036 = phi i32 [ -1, %Py_DECREF.exit.thread ], [ -1, %bb.c ], [ 0, %bb.o ], [ -1, %.thread55 ], [ -1, %Py_XDECREF.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.036
}

declare i32 @_PyIOBase_finalize(ptr noundef) local_unnamed_addr #1

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare void @PyThread_free_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #4

declare i32 @PyObject_GetOptionalAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

declare i32 @Py_ReprEnter(ptr noundef) local_unnamed_addr #1

declare void @Py_ReprLeave(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_buffered_readline(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80
  %.not161 = icmp eq i32 %i.d, 0
  br i1 %.not161, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = tail call i32 @_PyFileIO_closed(ptr noundef %i.f) #9
  br label %buffered_closed.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !61
end_hunk_0
begin_hunk_1_@_buffered_readinto_generic:bb.a

bb.au:                                            ; preds = %bb.at
  %i.dl = add nuw i32 %i.dj, 1
  store i32 %i.dl, ptr @_Py_NoneStruct, align 8, !tbaa !19
  br label %_Py_NewRef.exit

bb.av:                                            ; preds = %bb.ar
  br i1 %.not118, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dm = add i64 %.189, %.191138
  br label %_bufferedreader_fill_buffer.exit.thread130

bb.ax:                                            ; preds = %bb.av, %bb.ap
  %.2 = phi i64 [ %.189, %bb.av ], [ %spec.select, %bb.ap ] ; 2 uses
  %i.dn = add i64 %.2, %.191138                   ; 2 uses
  %i.do = sub nsw i64 %.094136, %.2               ; 2 uses
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %bb.ai, label %_bufferedreader_fill_buffer.exit.thread130, !llvm.loop !99

_bufferedreader_fill_buffer.exit.thread130:       ; preds = %bb.ax, %bb.aq, %_bufferedreader_fill_buffer.exit, %bb.ak, %Py_DECREF.exit, %bb.aw
  %.292 = phi i64 [ %i.dm, %bb.aw ], [ %.090, %Py_DECREF.exit ], [ %i.dn, %bb.ax ], [ %.191138, %bb.aq ], [ %.191138, %_bufferedreader_fill_buffer.exit ], [ %.191138, %bb.ak ]
  %i.dq = tail call ptr @PyLong_FromSsize_t(i64 noundef %.292) #9
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.w, %bb.af, %bb.au, %bb.at, %_bufferedreader_fill_buffer.exit.thread130, %bb.as
  %.298 = phi ptr [ @_Py_NoneStruct, %bb.au ], [ %i.dq, %_bufferedreader_fill_buffer.exit.thread130 ], [ null, %bb.as ], [ @_Py_NoneStruct, %bb.at ], [ null, %bb.af ], [ null, %bb.w ]
  store volatile i64 0, ptr %i.be, align 8, !tbaa !82
  %i.dr = load ptr, ptr %i.az, align 8, !tbaa !64
  tail call void @PyThread_release_lock(ptr noundef %i.dr) #9
  br label %.critedge121

.critedge121:                                     ; preds = %bb.h, %buffered_closed.exit, %.critedge, %bb.u, %bb.c, %bb.d, %_Py_NewRef.exit, %bb.s
  %.1 = phi ptr [ null, %bb.u ], [ %i.av, %bb.s ], [ %.298, %_Py_NewRef.exit ], [ null, %bb.c ], [ null, %bb.d ], [ null, %.critedge ], [ null, %buffered_closed.exit ], [ null, %bb.h ]
  ret ptr %.1
}

declare ptr @_PyIOBase_check_seekable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -1, -9223372036854775808) i64 @_buffered_raw_tell(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !11
  %i.d = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 102064), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #9 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  %i.g = call i64 @PyNumber_AsOff_t(ptr noundef nonnull %i.d, ptr noundef %i.f) #9 ; 4 uses
  %i.h = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !19
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  %i.k = icmp slt i64 %i.g, 0
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %Py_DECREF.exit
  %i.l = call ptr @PyErr_Occurred() #9
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr @PyExc_OSError, align 8, !tbaa !11
  %i.n = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.m, ptr noundef nonnull @.str.34, i64 noundef %i.g) #9 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %Py_DECREF.exit
  %i.o = getelementptr i8, ptr %0, i64 48
  store i64 %i.g, ptr %i.o, align 8, !tbaa !89
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.g
  %.0 = phi i64 [ %i.g, %bb.g ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.e ]
  ret i64 %.0
}

declare ptr @PyLong_FromSize_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_closed_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_closed_get_impl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_closed_get_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = tail call ptr @PyObject_GetAttr(ptr noundef %i.h, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912)) #9
  br label %_io__Buffered_closed_get_impl.exit

_io__Buffered_closed_get_impl.exit:               ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.i, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_name_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_name_get_impl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_name_get_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = tail call ptr @PyObject_GetAttr(ptr noundef %i.h, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 92600)) #9
  br label %_io__Buffered_name_get_impl.exit

_io__Buffered_name_get_impl.exit:                 ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.i, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_mode_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !69
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_mode_get_impl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_mode_get_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = tail call ptr @PyObject_GetAttr(ptr noundef %i.h, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 91928)) #9
  br label %_io__Buffered_mode_get_impl.exit

_io__Buffered_mode_get_impl.exit:                 ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.i, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0.i
}

declare ptr @_PyIOBase_check_readable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_buffered_init(ptr noundef captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = icmp slt i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.70) #9
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.f) #9
  %.pre = load i64, ptr %i.a, align 8, !tbaa !75
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i64 [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %i.h = tail call ptr @PyMem_Malloc(i64 noundef %i.g) #9 ; 2 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !63
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @PyErr_NoMemory() #9       ; 0 uses
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 2 uses
  %.not22 = icmp eq ptr %i.l, null
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @PyThread_free_lock(ptr noundef nonnull %i.l) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = tail call ptr @PyThread_allocate_lock() #9 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !64
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.71) #9
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.p = getelementptr i8, ptr %0, i64 112
  store volatile i64 0, ptr %i.p, align 8, !tbaa !82
  %i.q = load i64, ptr %i.a, align 8, !tbaa !75
  %i.r = add i64 %i.q, -1                         ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i64 [ %i.r, %bb.k ], [ %i.t, %bb.l ]  ; 3 uses
  %i.s = and i64 %.0, 1
  %.not23 = icmp eq i64 %i.s, 0
  %i.t = ashr i64 %.0, 1
  br i1 %.not23, label %bb.m, label %bb.l, !llvm.loop !100

bb.m:                                             ; preds = %bb.l
  %i.u = icmp eq i64 %.0, 0
  %spec.select = select i1 %i.u, i64 %i.r, i64 0
  %i.v = getelementptr i8, ptr %0, i64 128
  store i64 %spec.select, ptr %i.v, align 8, !tbaa !98
  %i.w = tail call fastcc i64 @_buffered_raw_tell(ptr noundef nonnull %0)
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @PyErr_Clear() #9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j, %bb.f, %bb.b
  %.019 = phi i32 [ -1, %bb.b ], [ -1, %bb.f ], [ -1, %bb.j ], [ 0, %bb.n ], [ 0, %bb.m ]
  ret i32 %.019
}

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyThread_allocate_lock() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_io_BufferedWriter___init__(ptr noundef captures(address) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !20  ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val46 = load i64, ptr %i.c, align 8, !tbaa !72
  %i.d = add i64 %.val46, %.val
  %i.e = getelementptr i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %.val, -1
  %i.g = icmp ult i64 %i.f, 2
  %i.h = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.i = icmp ne ptr %i.h, null
  %or.cond7 = and i1 %i.i, %i.g
  br i1 %or.cond7, label %.thread50, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.j = phi ptr [ %i.e, %.thread ], [ %i.h, %bb.b ]
  %i.k = phi i64 [ %i.d, %.thread ], [ %.val, %bb.b ]
  %i.l = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.j, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @_io_BufferedWriter___init__._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not41 = icmp eq ptr %i.l, null
  br i1 %.not41, label %_io_BufferedWriter___init___impl.exit, label %.thread50

.thread50:                                        ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = phi i64 [ %i.k, %bb.c ], [ %.val, %bb.b ]
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !11   ; 5 uses
  %.not42 = icmp eq i64 %i.n, 1
  br i1 %.not42, label %.thread55, label %bb.d

bb.d:                                             ; preds = %.thread50
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.r = call ptr @_PyNumber_Index(ptr noundef %i.q) #9 ; 5 uses
  %.not43 = icmp eq ptr %i.r, null
  br i1 %.not43, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.r) #9 ; 2 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.r, align 8, !tbaa !19
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.w = icmp eq i64 %i.s, -1
  br i1 %i.w, label %Py_DECREF.exit.thread, label %.thread55

Py_DECREF.exit.thread:                            ; preds = %bb.d, %Py_DECREF.exit
  %i.x = call ptr @PyErr_Occurred() #9
  %.not44 = icmp eq ptr %i.x, null
  br i1 %.not44, label %.thread55, label %_io_BufferedWriter___init___impl.exit

.thread55:                                        ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %.thread50
  %.1 = phi i64 [ 131072, %.thread50 ], [ %i.s, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ]
  %i.y = getelementptr i8, ptr %0, i64 24         ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !61
  %i.z = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val.i = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ab = call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_PyIO_Module) #9
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %.val.i.i = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 3 uses
  %i.ad = call ptr @_PyIOBase_check_writable(ptr noundef %.val.i.i, ptr noundef %i.o, ptr noundef nonnull @_Py_TrueStruct) #9
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_io_BufferedWriter___init___impl.exit, label %bb.h

bb.h:                                             ; preds = %.thread55
  %i.af = load i32, ptr %i.o, align 8, !tbaa !19  ; 2 uses
  %i.ag = icmp ugt i32 %i.af, -1073741825
  br i1 %i.ag, label %Py_INCREF.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nuw i32 %i.af, 1
  store i32 %i.ah, ptr %i.o, align 8, !tbaa !19
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.i, %bb.h
  %i.ai = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11 ; 4 uses
  store ptr %i.o, ptr %i.ai, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %Py_XDECREF.exit.i, label %bb.j

bb.j:                                             ; preds = %Py_INCREF.exit.i
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i.i.i, label %bb.k, label %Py_XDECREF.exit.i

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !19
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %Py_XDECREF.exit.i

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #9
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.l, %bb.k, %bb.j, %Py_INCREF.exit.i
  %i.an = getelementptr i8, ptr %0, i64 32
  store i32 0, ptr %i.an, align 8, !tbaa !76
  %i.ao = getelementptr i8, ptr %0, i64 36
  store i32 1, ptr %i.ao, align 4, !tbaa !77
  %i.ap = getelementptr i8, ptr %0, i64 120
  store i64 %.1, ptr %i.ap, align 8, !tbaa !75
  %i.aq = call fastcc i32 @_buffered_init(ptr noundef nonnull %0)
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %_io_BufferedWriter___init___impl.exit, label %bb.m

bb.m:                                             ; preds = %Py_XDECREF.exit.i
  %i.as = getelementptr i8, ptr %0, i64 88
  store i64 0, ptr %i.as, align 8, !tbaa !87
  %i.at = getelementptr i8, ptr %0, i64 96
  store i64 -1, ptr %i.at, align 8, !tbaa !86
  %i.au = getelementptr i8, ptr %0, i64 64
  store i64 0, ptr %i.au, align 8, !tbaa !81
  %i.av = getelementptr i8, ptr %.val.i.i, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !101
  %.val25.i = load ptr, ptr %i.aa, align 8, !tbaa !46
  %.not.i47 = icmp eq ptr %.val25.i, %i.aw
  br i1 %.not.i47, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr i8, ptr %.val.i.i, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !79
  %i.az = getelementptr i8, ptr %i.o, i64 8
  %.val24.i = load ptr, ptr %i.az, align 8, !tbaa !46
  %i.ba = icmp eq ptr %.val24.i, %i.ay
  %i.bb = zext i1 %i.ba to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = phi i32 [ 0, %bb.m ], [ %i.bb, %bb.n ]
  %i.bd = getelementptr i8, ptr %0, i64 44
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !80
  store i32 1, ptr %i.y, align 8, !tbaa !61
  br label %_io_BufferedWriter___init___impl.exit

_io_BufferedWriter___init___impl.exit:            ; preds = %bb.o, %Py_XDECREF.exit.i, %.thread55, %Py_DECREF.exit.thread, %bb.c
  %.036 = phi i32 [ -1, %Py_DECREF.exit.thread ], [ -1, %bb.c ], [ 0, %bb.o ], [ -1, %.thread55 ], [ -1, %Py_XDECREF.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal ptr @_io__Buffered_writable(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !69
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.24) #9
  br label %_io__Buffered_writable_impl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.25) #9
  br label %_io__Buffered_writable_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !11
  %i.j = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104776), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_io__Buffered_writable_impl.exit

_io__Buffered_writable_impl.exit:                 ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0.i
}

end_hunk_1
begin_hunk_2_@bufferedrwpair_close:bb.a

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #9
  br label %Py_DECREF.exit18

Py_DECREF.exit18:                                 ; preds = %bb.j, %bb.i, %bb.h, %_forward_call.exit.thread
  %.0 = phi ptr [ %i.m, %_forward_call.exit.thread ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ] ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !106  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit18
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.25) #9
  br label %_forward_call.exit22

bb.l:                                             ; preds = %Py_DECREF.exit18
  %i.u = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.r, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77864)) #9 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !11
  tail call void @PyErr_SetObject(ptr noundef %i.w, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77864)) #9
  br label %_forward_call.exit22

bb.n:                                             ; preds = %bb.l
  %i.x = tail call ptr @PyObject_CallObject(ptr noundef nonnull %i.u, ptr noundef null) #9 ; 3 uses
  %i.y = load i32, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %.not.i.i20 = icmp sgt i32 %i.y, -1
  br i1 %.not.i.i20, label %bb.o, label %_forward_call.exit22

bb.o:                                             ; preds = %bb.n
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.u, align 8, !tbaa !19
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.p, label %_forward_call.exit22

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #9
  br label %_forward_call.exit22

_forward_call.exit22:                             ; preds = %bb.k, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i21 = phi ptr [ null, %bb.k ], [ null, %bb.m ], [ %i.x, %bb.n ], [ %i.x, %bb.o ], [ %i.x, %bb.p ] ; 5 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.q

bb.q:                                             ; preds = %_forward_call.exit22
  tail call void @_PyErr_ChainExceptions1(ptr noundef nonnull %.0) #9
  %.not16 = icmp eq ptr %.0.i21, null
  br i1 %.not16, label %Py_DECREF.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = load i32, ptr %.0.i21, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %.0.i21, align 8, !tbaa !19
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i21) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %_forward_call.exit22
  %.1 = phi ptr [ %.0.i21, %_forward_call.exit22 ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.t ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @bufferedrwpair_isatty(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.25) #9
  br label %_forward_call.exit10

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88392)) #9 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !11
  tail call void @PyErr_SetObject(ptr noundef %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88392)) #9
  br label %_forward_call.exit10

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyObject_CallObject(ptr noundef nonnull %i.e, ptr noundef null) #9 ; 2 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i, label %bb.f, label %_forward_call.exit

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.e, align 8, !tbaa !19
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %_forward_call.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #9
  br label %_forward_call.exit

_forward_call.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %.not = icmp eq ptr %i.h, @_Py_FalseStruct
  br i1 %.not, label %bb.h, label %_forward_call.exit10

bb.h:                                             ; preds = %_forward_call.exit
  %i.l = load i32, ptr @_Py_FalseStruct, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr @_Py_FalseStruct, align 8, !tbaa !19
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_FalseStruct) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.i, %bb.j
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !106  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit
  %i.r = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.25) #9
  br label %_forward_call.exit10

bb.l:                                             ; preds = %Py_DECREF.exit
  %i.s = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88392)) #9 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.u = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !11
  tail call void @PyErr_SetObject(ptr noundef %i.u, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88392)) #9
  br label %_forward_call.exit10

bb.n:                                             ; preds = %bb.l
  %i.v = tail call ptr @PyObject_CallObject(ptr noundef nonnull %i.s, ptr noundef null) #9 ; 3 uses
  %i.w = load i32, ptr %i.s, align 8, !tbaa !19   ; 2 uses
  %.not.i.i8 = icmp sgt i32 %i.w, -1
  br i1 %.not.i.i8, label %bb.o, label %_forward_call.exit10

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.s, align 8, !tbaa !19
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.p, label %_forward_call.exit10

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #9
  br label %_forward_call.exit10

_forward_call.exit10:                             ; preds = %bb.d, %bb.b, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %_forward_call.exit
  %.0 = phi ptr [ %i.v, %bb.p ], [ %i.h, %_forward_call.exit ], [ null, %bb.k ], [ null, %bb.m ], [ %i.v, %bb.n ], [ %i.v, %bb.o ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

declare ptr @PyObject_CallObject(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @bufferedrwpair_closed_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.82) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912)) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0
}

declare i32 @_PyArg_NoKeywords(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_io_BufferedRandom___init__(ptr noundef captures(address) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !20  ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val46 = load i64, ptr %i.c, align 8, !tbaa !72
  %i.d = add i64 %.val46, %.val
  %i.e = getelementptr i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %.val, -1
  %i.g = icmp ult i64 %i.f, 2
  %i.h = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.i = icmp ne ptr %i.h, null
  %or.cond7 = and i1 %i.i, %i.g
  br i1 %or.cond7, label %.thread50, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.j = phi ptr [ %i.e, %.thread ], [ %i.h, %bb.b ]
  %i.k = phi i64 [ %i.d, %.thread ], [ %.val, %bb.b ]
  %i.l = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.j, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @_io_BufferedRandom___init__._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not41 = icmp eq ptr %i.l, null
  br i1 %.not41, label %_io_BufferedRandom___init___impl.exit, label %.thread50

.thread50:                                        ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = phi i64 [ %i.k, %bb.c ], [ %.val, %bb.b ]
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !11   ; 7 uses
  %.not42 = icmp eq i64 %i.n, 1
  br i1 %.not42, label %.thread55, label %bb.d

bb.d:                                             ; preds = %.thread50
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.r = call ptr @_PyNumber_Index(ptr noundef %i.q) #9 ; 5 uses
  %.not43 = icmp eq ptr %i.r, null
  br i1 %.not43, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.r) #9 ; 2 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.r, align 8, !tbaa !19
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.w = icmp eq i64 %i.s, -1
  br i1 %i.w, label %Py_DECREF.exit.thread, label %.thread55

Py_DECREF.exit.thread:                            ; preds = %bb.d, %Py_DECREF.exit
  %i.x = call ptr @PyErr_Occurred() #9
  %.not44 = icmp eq ptr %i.x, null
  br i1 %.not44, label %.thread55, label %_io_BufferedRandom___init___impl.exit

.thread55:                                        ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %.thread50
  %.1 = phi i64 [ 131072, %.thread50 ], [ %i.s, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ]
  %i.y = getelementptr i8, ptr %0, i64 24         ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !61
  %i.z = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val.i = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ab = call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_PyIO_Module) #9
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %.val.i.i = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 5 uses
  %i.ad = call ptr @_PyIOBase_check_seekable(ptr noundef %.val.i.i, ptr noundef %i.o, ptr noundef nonnull @_Py_TrueStruct) #9
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_io_BufferedRandom___init___impl.exit, label %bb.h

bb.h:                                             ; preds = %.thread55
  %i.af = call ptr @_PyIOBase_check_readable(ptr noundef %.val.i.i, ptr noundef %i.o, ptr noundef nonnull @_Py_TrueStruct) #9
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_io_BufferedRandom___init___impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call ptr @_PyIOBase_check_writable(ptr noundef %.val.i.i, ptr noundef %i.o, ptr noundef nonnull @_Py_TrueStruct) #9
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_io_BufferedRandom___init___impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !19  ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, -1073741825
  br i1 %i.ak, label %Py_INCREF.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nuw i32 %i.aj, 1
  store i32 %i.al, ptr %i.o, align 8, !tbaa !19
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.k, %bb.j
  %i.am = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !11 ; 4 uses
  store ptr %i.o, ptr %i.am, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %Py_XDECREF.exit.i, label %bb.l

bb.l:                                             ; preds = %Py_INCREF.exit.i
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ao, -1
  br i1 %.not.i.i.i, label %bb.m, label %Py_XDECREF.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !19
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %Py_XDECREF.exit.i

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.an) #9
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.n, %bb.m, %bb.l, %Py_INCREF.exit.i
  %i.ar = getelementptr i8, ptr %0, i64 120
  store i64 %.1, ptr %i.ar, align 8, !tbaa !75
  %i.as = getelementptr i8, ptr %0, i64 32
  store i32 1, ptr %i.as, align 8, !tbaa !76
  %i.at = getelementptr i8, ptr %0, i64 36
  store i32 1, ptr %i.at, align 4, !tbaa !77
  %i.au = call fastcc i32 @_buffered_init(ptr noundef nonnull %0)
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %_io_BufferedRandom___init___impl.exit, label %bb.o

bb.o:                                             ; preds = %Py_XDECREF.exit.i
  %i.aw = getelementptr i8, ptr %0, i64 80
  store i64 -1, ptr %i.aw, align 8, !tbaa !78
  %i.ax = getelementptr i8, ptr %0, i64 88
  store i64 0, ptr %i.ax, align 8, !tbaa !87
  %i.ay = getelementptr i8, ptr %0, i64 96
  store i64 -1, ptr %i.ay, align 8, !tbaa !86
  %i.az = getelementptr i8, ptr %0, i64 64
  store i64 0, ptr %i.az, align 8, !tbaa !81
  %i.ba = getelementptr i8, ptr %.val.i.i, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !71
  %.val30.i = load ptr, ptr %i.aa, align 8, !tbaa !46
  %.not.i47 = icmp eq ptr %.val30.i, %i.bb
  br i1 %.not.i47, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %.val.i.i, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  %i.be = getelementptr i8, ptr %i.o, i64 8
  %.val29.i = load ptr, ptr %i.be, align 8, !tbaa !46
  %i.bf = icmp eq ptr %.val29.i, %i.bd
  %i.bg = zext i1 %i.bf to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bh = phi i32 [ 0, %bb.o ], [ %i.bg, %bb.p ]
  %i.bi = getelementptr i8, ptr %0, i64 44
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !80
  store i32 1, ptr %i.y, align 8, !tbaa !61
  br label %_io_BufferedRandom___init___impl.exit

_io_BufferedRandom___init___impl.exit:            ; preds = %bb.q, %Py_XDECREF.exit.i, %bb.i, %bb.h, %.thread55, %Py_DECREF.exit.thread, %bb.c
  %.036 = phi i32 [ -1, %Py_DECREF.exit.thread ], [ -1, %bb.c ], [ 0, %bb.q ], [ -1, %.thread55 ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %Py_XDECREF.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.036
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}
end_hunk_2
