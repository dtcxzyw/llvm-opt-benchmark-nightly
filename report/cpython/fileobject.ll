inline.NumInlined: 43
inline.NumDeleted: 20
begin_hunk_0_@PyFile_GetLine:bb.a
  %.val = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.ak = getelementptr i8, ptr %.val, i64 168
  %.val53 = load i64, ptr %i.ak, align 8, !tbaa !18
  %i.al = and i64 %.val53, 268435456
  %.not41 = icmp eq i64 %i.al, 0
  br i1 %.not41, label %Py_DECREF.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr i8, ptr %i.ah, i64 16
  %.val58 = load i64, ptr %i.am, align 8, !tbaa !28 ; 2 uses
  %i.an = icmp eq i64 %.val58, 0
  br i1 %i.an, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.b, align 8, !tbaa !12
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %.not.i42 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i42, label %bb.v, label %Py_DECREF.exit43

bb.v:                                             ; preds = %bb.u
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.ah, align 8, !tbaa !11
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.w, label %Py_DECREF.exit43

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #8
  br label %Py_DECREF.exit43

Py_DECREF.exit43:                                 ; preds = %bb.u, %bb.v, %bb.w
  %i.ar = load ptr, ptr @PyExc_EOFError, align 8, !tbaa !12
  call void @PyErr_SetString(ptr noundef %i.ar, ptr noundef nonnull @.str.6) #8
  br label %Py_DECREF.exit

bb.x:                                             ; preds = %bb.t
  %i.as = add i64 %.val58, -1                     ; 4 uses
  %i.at = getelementptr i8, ptr %i.ah, i64 32
  %i.au = load i32, ptr %i.at, align 8            ; 5 uses
  %i.av = lshr i32 %i.au, 2
  %i.aw = and i32 %i.av, 7
  %i.ax = and i32 %i.au, 32
  %.not.i19.i = icmp eq i32 %i.ax, 0              ; 3 uses
  switch i32 %i.aw, label %bb.ae [
    i32 1, label %bb.y
    i32 2, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i19.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = and i32 %i.au, 64
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.ah, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.az = getelementptr i8, ptr %i.ah, i64 56
  %.val4.i.i = load ptr, ptr %i.az, align 8, !tbaa !11
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.aa, %bb.z
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.z ], [ %.val4.i.i, %bb.aa ]
  %i.ba = getelementptr i8, ptr %.0.i.i, i64 %i.as
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bc = zext i8 %i.bb to i32
  br label %PyUnicode_READ_CHAR.exit

bb.ab:                                            ; preds = %bb.x
  br i1 %.not.i19.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = and i32 %i.au, 64
  %.not.i.i12.i = icmp eq i32 %i.bd, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.ah, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.ad:                                            ; preds = %bb.ab
  %i.be = getelementptr i8, ptr %i.ah, i64 56
  %.val4.i16.i = load ptr, ptr %i.be, align 8, !tbaa !11
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.ad, %bb.ac
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.ac ], [ %.val4.i16.i, %bb.ad ]
  %i.bf = getelementptr [2 x i8], ptr %.0.i15.i, i64 %i.as
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !31
  %i.bh = zext i16 %i.bg to i32
  br label %PyUnicode_READ_CHAR.exit

bb.ae:                                            ; preds = %bb.x
  br i1 %.not.i19.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bi = and i32 %i.au, 64
  %.not.i.i20.i = icmp eq i32 %i.bi, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.ah, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.ag:                                            ; preds = %bb.ae
  %i.bj = getelementptr i8, ptr %i.ah, i64 56
  %.val4.i24.i = load ptr, ptr %i.bj, align 8, !tbaa !11
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.ag, %bb.af
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.af ], [ %.val4.i24.i, %bb.ag ]
  %i.bk = getelementptr [4 x i8], ptr %.0.i23.i, i64 %i.as
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.bc, %_PyUnicode_DATA.exit.i ], [ %i.bh, %_PyUnicode_DATA.exit17.i ], [ %i.bl, %_PyUnicode_DATA.exit25.i ]
  %i.bm = icmp eq i32 %.0.i, 10
  br i1 %i.bm, label %bb.ah, label %Py_DECREF.exit

bb.ah:                                            ; preds = %PyUnicode_READ_CHAR.exit
  %i.bn = call ptr @PyUnicode_Substring(ptr noundef nonnull %i.ah, i64 noundef 0, i64 noundef %i.as) #8
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !12
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i, label %bb.ai, label %Py_DECREF.exit

bb.ai:                                            ; preds = %bb.ah
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !11
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.aj, label %Py_DECREF.exit

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.bo) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.aj, %bb.ai, %bb.ah, %Py_DECREF.exit43, %PyUnicode_READ_CHAR.exit, %bb.s, %bb.r
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !12
  br label %bb.ak

bb.ak:                                            ; preds = %Py_DECREF.exit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.bs, %Py_DECREF.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret ptr %.0
}

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_PyObject_CallMethod(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyBytes_Resize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyUnicode_Substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyFile_WriteObject(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.7) #8
  br label %Py_DECREF.exit23

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104832)) #8 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit23, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %2, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @PyObject_Str(ptr noundef %0) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = tail call ptr @PyObject_Repr(ptr noundef %0) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.014 = phi ptr [ %i.f, %bb.e ], [ %i.g, %bb.f ] ; 5 uses
  %i.h = icmp eq ptr %.014, null
  br i1 %i.h, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.i = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %.not.i22 = icmp sgt i32 %i.i, -1
  br i1 %.not.i22, label %bb.i, label %Py_DECREF.exit23

bb.i:                                             ; preds = %bb.h
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.c, align 8, !tbaa !11
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %3, label %Py_DECREF.exit23

3:                                                ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_DECREF.exit23

bb.j:                                             ; preds = %bb.g
  %i.l = tail call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.c, ptr noundef nonnull %.014) #8 ; 4 uses
  %i.m = load i32, ptr %.014, align 8, !tbaa !11  ; 2 uses
  %.not.i20 = icmp sgt i32 %i.m, -1
  br i1 %.not.i20, label %bb.k, label %Py_DECREF.exit21

bb.k:                                             ; preds = %bb.j
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %.014, align 8, !tbaa !11
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.l, label %Py_DECREF.exit21

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %.014) #8
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %bb.j, %bb.k, %bb.l
  %i.p = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %.not.i18 = icmp sgt i32 %i.p, -1
  br i1 %.not.i18, label %bb.m, label %Py_DECREF.exit19

bb.m:                                             ; preds = %Py_DECREF.exit21
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.c, align 8, !tbaa !11
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.n, label %Py_DECREF.exit19

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_DECREF.exit19

Py_DECREF.exit19:                                 ; preds = %Py_DECREF.exit21, %bb.m, %bb.n
  %i.s = icmp eq ptr %i.l, null
  br i1 %i.s, label %Py_DECREF.exit23, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit19
  %i.t = load i32, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.p, label %Py_DECREF.exit23

bb.p:                                             ; preds = %bb.o
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.l, align 8, !tbaa !11
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.q, label %Py_DECREF.exit23

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #8
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %bb.q, %bb.p, %bb.o, %3, %bb.i, %bb.h, %Py_DECREF.exit19, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %3 ], [ -1, %Py_DECREF.exit19 ], [ -1, %bb.c ], [ -1, %bb.h ], [ -1, %bb.i ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ]
  ret i32 %.0
}

declare ptr @PyObject_GetAttr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyFile_WriteString(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = tail call ptr @PyErr_Occurred() #8
  %.not9 = icmp eq ptr %i.b, null                 ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.8) #8
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.d = tail call ptr @PyUnicode_FromString(ptr noundef %0) #8 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @PyFile_WriteObject(ptr noundef nonnull %i.d, ptr noundef nonnull %1, i32 noundef 1) ; 3 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !11
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.e, %bb.b, %bb.c
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.d ], [ %i.f, %bb.f ], [ %i.f, %bb.g ], [ %i.f, %bb.h ]
  ret i32 %.1
}

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @PyObject_AsFileDescriptor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val31 = load ptr, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  %i.c = getelementptr i8, ptr %.val31, i64 168
  %.val33 = load i64, ptr %i.c, align 8, !tbaa !18
  %i.d = and i64 %.val33, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not37 = icmp eq ptr %.val31, @PyBool_Type
  br i1 %.not37, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !12
  %i.f = tail call i32 @PyErr_WarnEx(ptr noundef %i.e, ptr noundef nonnull @.str.9, i64 noundef 1) #8
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.d, label %Py_DECREF.exit26.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call i32 @PyLong_AsInt(ptr noundef nonnull %0) #8
  br label %Py_DECREF.exit26

bb.e:                                             ; preds = %bb.a
  %i.h = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 83992), ptr noundef nonnull %i.a) #8
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %Py_DECREF.exit26.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !12   ; 6 uses
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.n = getelementptr i8, ptr %.val.i.i.i, i64 168
  %.val6.i.i.i = load i64, ptr %i.n, align 8, !tbaa !18
  %i.o = and i64 %.val6.i.i.i, 2048
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %_PyVectorcall_FunctionInline.exit.i.i

_PyVectorcall_FunctionInline.exit.i.i:            ; preds = %bb.g
  %i.p = getelementptr i8, ptr %.val.i.i.i, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr i8, ptr %i.j, i64 %i.q
  %.0.copyload.i.i.i = load ptr, ptr %i.r, align 1 ; 2 uses
  %i.s = icmp eq ptr %.0.copyload.i.i.i, null
  br i1 %i.s, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %bb.h

_PyVectorcall_FunctionInline.exit.thread.i.i:     ; preds = %_PyVectorcall_FunctionInline.exit.i.i, %bb.g
  %i.t = call ptr @_PyObject_MakeTpCall(ptr noundef %i.l, ptr noundef nonnull %i.j, ptr noundef null, i64 noundef 0, ptr noundef null) #8
  br label %_PyObject_CallNoArgs.exit

bb.h:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i
  %i.u = call ptr %.0.copyload.i.i.i(ptr noundef nonnull %i.j, ptr noundef null, i64 noundef 0, ptr noundef null) #8, !inline_history !35
  %i.v = call ptr @_Py_CheckFunctionResult(ptr noundef %i.l, ptr noundef nonnull %i.j, ptr noundef %i.u, ptr noundef null) #8
  br label %_PyObject_CallNoArgs.exit

_PyObject_CallNoArgs.exit:                        ; preds = %_PyVectorcall_FunctionInline.exit.thread.i.i, %bb.h
  %.0.i.i = phi ptr [ %i.t, %_PyVectorcall_FunctionInline.exit.thread.i.i ], [ %i.v, %bb.h ] ; 10 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  %.not.i27 = icmp sgt i32 %i.x, -1
  br i1 %.not.i27, label %bb.i, label %Py_DECREF.exit28

bb.i:                                             ; preds = %_PyObject_CallNoArgs.exit
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !11
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %Py_DECREF.exit28

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.w) #8
  br label %Py_DECREF.exit28

Py_DECREF.exit28:                                 ; preds = %_PyObject_CallNoArgs.exit, %bb.i, %bb.j
  %i.aa = icmp eq ptr %.0.i.i, null
  br i1 %i.aa, label %Py_DECREF.exit26.thread, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit28
  %i.ab = getelementptr i8, ptr %.0.i.i, i64 8
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr i8, ptr %.val, i64 168
  %.val32 = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.ad = and i64 %.val32, 16777216
  %.not21 = icmp eq i64 %i.ad, 0
  br i1 %.not21, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = call i32 @PyLong_AsInt(ptr noundef nonnull %.0.i.i) #8 ; 3 uses
  %i.af = load i32, ptr %.0.i.i, align 8, !tbaa !11 ; 2 uses
  %.not.i25 = icmp sgt i32 %i.af, -1
  br i1 %.not.i25, label %bb.m, label %Py_DECREF.exit26

bb.m:                                             ; preds = %bb.l
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %.0.i.i, align 8, !tbaa !11
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %Py_DECREF.exit26

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #8
  br label %Py_DECREF.exit26

bb.o:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !12
  %i.aj = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ai, ptr noundef nonnull @.str.10, ptr noundef nonnull %0, ptr noundef nonnull %.0.i.i) #8 ; 0 uses
  %i.ak = load i32, ptr %.0.i.i, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i, label %bb.p, label %Py_DECREF.exit26.thread

bb.p:                                             ; preds = %bb.o
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %.0.i.i, align 8, !tbaa !11
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.q, label %Py_DECREF.exit26.thread

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #8
  br label %Py_DECREF.exit26.thread

bb.r:                                             ; preds = %bb.f
  %i.an = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !12
  call void @PyErr_SetString(ptr noundef %i.an, ptr noundef nonnull @.str.11) #8
  br label %Py_DECREF.exit26.thread

Py_DECREF.exit26:                                 ; preds = %bb.l, %bb.m, %bb.n, %bb.d
  %.118 = phi i32 [ %i.g, %bb.d ], [ %i.ae, %bb.n ], [ %i.ae, %bb.m ], [ %i.ae, %bb.l ] ; 4 uses
  %i.ao = icmp eq i32 %.118, -1
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %Py_DECREF.exit26
  %i.ap = call ptr @PyErr_Occurred() #8
end_hunk_0
