inline.NumInlined: 23
inline.NumDeleted: 8
begin_hunk_0_@interpolation_traverse:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #5 ; 2 uses
  %.not42 = icmp eq i32 %i.c, 0
  br i1 %.not42, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not43 = icmp eq ptr %i.e, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #5 ; 2 uses
  %.not44 = icmp eq i32 %i.f, 0
  br i1 %.not44, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not45 = icmp eq ptr %i.h, null
  br i1 %.not45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #5 ; 2 uses
  %.not46 = icmp eq i32 %i.i, 0
  br i1 %.not46, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %.not47 = icmp eq ptr %i.k, null
  br i1 %.not47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 %1(ptr noundef nonnull %i.k, ptr noundef %2) #5 ; 2 uses
  %.not48 = icmp eq i32 %i.l, 0
  br i1 %.not48, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.i
  %.7 = phi i32 [ 0, %bb.i ], [ %i.l, %bb.h ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @interpolation_clear(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit32, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !31
  %i.c = load i32, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not.i31 = icmp sgt i32 %i.c, -1
  br i1 %.not.i31, label %bb.c, label %Py_DECREF.exit32

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit32

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #5
  br label %Py_DECREF.exit32

Py_DECREF.exit32:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 4 uses
  %.not24 = icmp eq ptr %i.g, null
  br i1 %.not24, label %Py_DECREF.exit30, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit32
  store ptr null, ptr %i.f, align 8, !tbaa !31
  %i.h = load i32, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not.i29 = icmp sgt i32 %i.h, -1
  br i1 %.not.i29, label %bb.f, label %Py_DECREF.exit30

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit30

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #5
  br label %Py_DECREF.exit30

Py_DECREF.exit30:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit32
  %i.k = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 4 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %Py_DECREF.exit28, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit30
  store ptr null, ptr %i.k, align 8, !tbaa !31
  %i.m = load i32, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  %.not.i27 = icmp sgt i32 %i.m, -1
  br i1 %.not.i27, label %bb.i, label %Py_DECREF.exit28

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit28

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #5
  br label %Py_DECREF.exit28

Py_DECREF.exit28:                                 ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit30
  %i.p = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31   ; 4 uses
  %.not26 = icmp eq ptr %i.q, null
  br i1 %.not26, label %Py_DECREF.exit, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit28
  store ptr null, ptr %i.p, align 8, !tbaa !31
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.m, %bb.l, %bb.k, %Py_DECREF.exit28
  ret i32 0
}

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @interpolation_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [4 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !33  ; 3 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 16
  %.val55 = load i64, ptr %i.d, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %.val55, %bb.b ], [ 0, %bb.a ]
  %i.f = add i64 %i.e, %.val                      ; 2 uses
  %i.g = add i64 %i.f, -1                         ; 2 uses
  %i.h = add i64 %.val, -1
  %i.i = icmp ult i64 %i.h, 4
  %or.cond3 = select i1 %.not, i1 %i.i, i1 false
  %i.j = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %or.cond7 = and i1 %i.k, %or.cond3
  br i1 %or.cond7, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.j, i64 noundef %.val, ptr noundef %2, ptr noundef null, ptr noundef nonnull @interpolation_new._parser, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #5 ; 2 uses
  %.not47 = icmp eq ptr %i.l, null
  br i1 %.not47, label %interpolation_new_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31   ; 3 uses
  %.not48 = icmp eq i64 %i.g, 0
  br i1 %.not48, label %bb.n, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 5 uses
  %.not49 = icmp eq ptr %i.p, null
  br i1 %.not49, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val57 = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr i8, ptr %.val57, i64 168
  %.val59 = load i64, ptr %i.r, align 8, !tbaa !38
  %i.s = and i64 %.val59, 268435456
  %.not50 = icmp eq i64 %i.s, 0
  br i1 %.not50, label %3, label %bb.g

3:                                                ; preds = %bb.f
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.p) #5
  br label %interpolation_new_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.t = add i64 %i.f, -2                         ; 2 uses
  %.not51 = icmp eq i64 %i.t, 0
  br i1 %.not51, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.039 = phi i64 [ %i.t, %bb.g ], [ %i.g, %bb.e ]
  %.037 = phi ptr [ %i.p, %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.e ] ; 2 uses
  %i.u = getelementptr i8, ptr %i.m, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 7 uses
  %.not52 = icmp eq ptr %i.v, null
  br i1 %.not52, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq ptr %i.v, @_Py_NoneStruct
  br i1 %i.w, label %_conversion_converter.exit.thread67, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val.i = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr i8, ptr %.val.i, i64 168
  %.val12.i = load i64, ptr %i.y, align 8, !tbaa !38
  %i.z = and i64 %.val12.i, 268435456
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %_conversion_converter.exit.thread, label %bb.k

_conversion_converter.exit.thread:                ; preds = %bb.j
  %i.aa = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !31
  %i.ab = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.v) #5 ; 0 uses
  br label %interpolation_new_impl.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ac = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a) #5
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !39
  %.not11.i = icmp eq i64 %i.ad, 1
  br i1 %.not11.i, label %bb.l, label %_conversion_converter.exit.thread72

bb.l:                                             ; preds = %bb.k
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !32
  switch i8 %i.ae, label %_conversion_converter.exit.thread72 [
    i8 97, label %_conversion_converter.exit
    i8 114, label %_conversion_converter.exit
    i8 115, label %_conversion_converter.exit
  ]

_conversion_converter.exit.thread72:              ; preds = %bb.k, %bb.l
  %i.af = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !31
  call void @PyErr_SetString(ptr noundef %i.af, ptr noundef nonnull @.str.9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %interpolation_new_impl.exit

_conversion_converter.exit:                       ; preds = %bb.l, %bb.l, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %_conversion_converter.exit.thread67

_conversion_converter.exit.thread67:              ; preds = %bb.i, %_conversion_converter.exit
  %i.ag = icmp ugt i64 %.039, 1
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_conversion_converter.exit.thread67, %bb.h
  %.061 = phi ptr [ @_Py_NoneStruct, %bb.h ], [ %i.v, %_conversion_converter.exit.thread67 ]
  %i.ah = getelementptr i8, ptr %i.m, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val56 = load ptr, ptr %i.aj, align 8, !tbaa !11
  %i.ak = getelementptr i8, ptr %.val56, i64 168
  %.val58 = load i64, ptr %i.ak, align 8, !tbaa !38
  %i.al = and i64 %.val58, 268435456
  %.not54 = icmp eq i64 %i.al, 0
  br i1 %.not54, label %4, label %bb.n

4:                                                ; preds = %bb.m
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.ai) #5
  br label %interpolation_new_impl.exit

bb.n:                                             ; preds = %bb.m, %_conversion_converter.exit.thread67, %bb.g, %.thread
  %.162 = phi ptr [ @_Py_NoneStruct, %.thread ], [ @_Py_NoneStruct, %bb.g ], [ %i.v, %_conversion_converter.exit.thread67 ], [ %.061, %bb.m ] ; 3 uses
  %.1 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %.thread ], [ %i.p, %bb.g ], [ %.037, %_conversion_converter.exit.thread67 ], [ %.037, %bb.m ] ; 3 uses
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %.thread ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), %_conversion_converter.exit.thread67 ], [ %i.ai, %bb.m ] ; 3 uses
  %i.am = call ptr @_PyObject_GC_New(ptr noundef %0) #5 ; 7 uses
  %.not.i60 = icmp eq ptr %i.am, null
  br i1 %.not.i60, label %interpolation_new_impl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load i32, ptr %i.n, align 8, !tbaa !32  ; 2 uses
  %i.ao = icmp ugt i32 %i.an, -1073741825
  br i1 %i.ao, label %_Py_NewRef.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = add nuw i32 %i.an, 1
  store i32 %i.ap, ptr %i.n, align 8, !tbaa !32
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.p, %bb.o
  %i.aq = getelementptr i8, ptr %i.am, i64 16
  store ptr %i.n, ptr %i.aq, align 8, !tbaa !26
  %i.ar = load i32, ptr %.1, align 8, !tbaa !32   ; 2 uses
  %i.as = icmp ugt i32 %i.ar, -1073741825
  br i1 %i.as, label %_Py_NewRef.exit14.i, label %bb.q

bb.q:                                             ; preds = %_Py_NewRef.exit.i
  %i.at = add nuw i32 %i.ar, 1
  store i32 %i.at, ptr %.1, align 8, !tbaa !32
  br label %_Py_NewRef.exit14.i

_Py_NewRef.exit14.i:                              ; preds = %bb.q, %_Py_NewRef.exit.i
  %i.au = getelementptr i8, ptr %i.am, i64 24
  store ptr %.1, ptr %i.au, align 8, !tbaa !28
  %i.av = load i32, ptr %.162, align 8, !tbaa !32 ; 2 uses
  %i.aw = icmp ugt i32 %i.av, -1073741825
  br i1 %i.aw, label %_Py_NewRef.exit15.i, label %bb.r

bb.r:                                             ; preds = %_Py_NewRef.exit14.i
  %i.ax = add nuw i32 %i.av, 1
  store i32 %i.ax, ptr %.162, align 8, !tbaa !32
  br label %_Py_NewRef.exit15.i

_Py_NewRef.exit15.i:                              ; preds = %bb.r, %_Py_NewRef.exit14.i
  %i.ay = getelementptr i8, ptr %i.am, i64 32
  store ptr %.162, ptr %i.ay, align 8, !tbaa !29
  %i.az = load i32, ptr %.0, align 8, !tbaa !32   ; 2 uses
  %i.ba = icmp ugt i32 %i.az, -1073741825
  br i1 %i.ba, label %_Py_NewRef.exit16.i, label %bb.s

bb.s:                                             ; preds = %_Py_NewRef.exit15.i
  %i.bb = add nuw i32 %i.az, 1
  store i32 %i.bb, ptr %.0, align 8, !tbaa !32
  br label %_Py_NewRef.exit16.i

_Py_NewRef.exit16.i:                              ; preds = %bb.s, %_Py_NewRef.exit15.i
  %i.bc = getelementptr i8, ptr %i.am, i64 40
  store ptr %.0, ptr %i.bc, align 8, !tbaa !30
  call void @PyObject_GC_Track(ptr noundef nonnull %i.am) #5
  br label %interpolation_new_impl.exit

interpolation_new_impl.exit:                      ; preds = %_Py_NewRef.exit16.i, %bb.n, %_conversion_converter.exit.thread72, %_conversion_converter.exit.thread, %bb.d, %4, %3
  %.038 = phi ptr [ null, %_conversion_converter.exit.thread ], [ null, %4 ], [ null, %_conversion_converter.exit.thread72 ], [ null, %3 ], [ null, %bb.d ], [ null, %bb.n ], [ %i.am, %_Py_NewRef.exit16.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret ptr %.038
}

declare void @PyObject_GC_Del(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @_PyInterpolation_InitTypes(ptr dead_on_unwind noalias writable writeonly sret(%struct.PyStatus) align 8 captures(none) initializes((0, 32)) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #5 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %Py_DECREF.exit9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_PyType_GetDict(ptr noundef nonnull @_PyInterpolation_Type) #5 ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i8 = icmp sgt i32 %i.c, -1
  br i1 %.not.i8, label %bb.d, label %Py_DECREF.exit9

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %Py_DECREF.exit9

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit9

bb.f:                                             ; preds = %bb.b
  %i.f = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a) #5
  %i.g = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.g, %bb.h
  %i.j = icmp slt i32 %i.f, 0
  br i1 %i.j, label %Py_DECREF.exit9, label %bb.i

bb.i:                                             ; preds = %Py_DECREF.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.j

Py_DECREF.exit9:                                  ; preds = %bb.e, %bb.d, %bb.c, %Py_DECREF.exit, %bb.a
  store i32 1, ptr %0, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__._PyInterpolation_InitTypes, ptr %i.l, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.8, ptr %i.m, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.o, align 4
  br label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit9, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

declare ptr @_PyType_GetDict(ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyInterpolation_Build(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyInterpolation_Type) #5 ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !32
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.b, %bb.c
  %i.e = getelementptr i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.e, align 8, !tbaa !26
  %i.f = load i32, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit19, label %bb.d

bb.d:                                             ; preds = %_Py_NewRef.exit
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %1, align 8, !tbaa !32
  br label %_Py_NewRef.exit19

_Py_NewRef.exit19:                                ; preds = %_Py_NewRef.exit, %bb.d
  %i.i = getelementptr i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.i, align 8, !tbaa !28
  %i.j = load i32, ptr %3, align 8, !tbaa !32     ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %_Py_NewRef.exit20, label %bb.e

bb.e:                                             ; preds = %_Py_NewRef.exit19
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %3, align 8, !tbaa !32
  br label %_Py_NewRef.exit20

_Py_NewRef.exit20:                                ; preds = %_Py_NewRef.exit19, %bb.e
  %i.m = getelementptr i8, ptr %i.a, i64 40
  store ptr %3, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !29
  %i.o = icmp ult i32 %2, 4
  br i1 %i.o, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit20
  %i.p = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !31
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.9) #5
  %i.q = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit

switch.lookup:                                    ; preds = %_Py_NewRef.exit20
  %i.t = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._PyInterpolation_Build, i64 %i.t
  %switch.load = load ptr, ptr %switch.gep, align 8
  store ptr %switch.load, ptr %i.n, align 8, !tbaa !29
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.a, %switch.lookup
  %.0 = phi ptr [ %i.a, %switch.lookup ], [ null, %bb.a ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  ret ptr %.0
}

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_Track(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_PyInterpolation_GetValueRef(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 8, !tbaa !32
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

declare ptr @_PyType_Name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
end_hunk_0
