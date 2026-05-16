inline.NumInlined: 579
inline.NumDeleted: 127
begin_hunk_0_@accum:bb.a
bb.y:                                             ; preds = %PyObject_TypeCheck.exit
  %i.aw = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.ax = getelementptr i8, ptr %.val, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46
  %i.az = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aw, ptr noundef nonnull @.str.70, ptr noundef %0, ptr noundef %i.ay) #16 ; 0 uses
  br label %Py_DECREF.exit58

Py_DECREF.exit58:                                 ; preds = %bb.s, %bb.r, %bb.q, %bb.e, %bb.d, %bb.c, %Py_DECREF.exit, %bb.g, %bb.h, %Py_DECREF.exit56, %Py_DECREF.exit54, %bb.o, %bb.b, %bb.y
  %.1 = phi ptr [ null, %bb.y ], [ %i.x, %bb.o ], [ null, %bb.b ], [ %i.an, %Py_DECREF.exit ], [ null, %bb.g ], [ null, %bb.h ], [ null, %Py_DECREF.exit56 ], [ null, %Py_DECREF.exit54 ], [ %i.f, %bb.e ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ]
  ret ptr %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

declare ptr @PyNumber_And(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #8

declare ptr @PyLong_FromDouble(double noundef) local_unnamed_addr #2

declare double @PyLong_AsDouble(ptr noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @date_repr(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !35
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %0, i64 26
  %i.i = load i8, ptr %i.h, align 2, !tbaa !35
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j
  %i.l = getelementptr i8, ptr %0, i64 27
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr i8, ptr %0, i64 28
  %i.p = load i8, ptr %i.o, align 4, !tbaa !35
  %i.q = zext i8 %i.p to i32
  %i.r = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.75, ptr noundef %i.c, i32 noundef %i.k, i32 noundef %i.n, i32 noundef %i.q) #16
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define internal i64 @date_hash(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 25
  %i.e = tail call i64 @Py_HashBuffer(ptr noundef %i.d, i64 noundef 4) #16 ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @date_str(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !43
  %i.b = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88496), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @date_richcompare(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %.val7, @PyDateTime_DateType
  br i1 %.not.i, label %PyObject_TypeCheck.exit9, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val7, ptr noundef nonnull @PyDateTime_DateType) #16
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %diff_to_bool.exit, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %.val.pr = load ptr, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.not.i8 = icmp eq ptr %.val.pr, @PyDateTime_DateTimeType
  br i1 %.not.i8, label %diff_to_bool.exit, label %PyObject_TypeCheck.exit9

PyObject_TypeCheck.exit9:                         ; preds = %bb.a, %bb.b
  %.val14 = phi ptr [ %.val.pr, %bb.b ], [ @PyDateTime_DateType, %bb.a ]
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val14, ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %diff_to_bool.exit

bb.c:                                             ; preds = %PyObject_TypeCheck.exit9
  %i.d = getelementptr i8, ptr %0, i64 25
  %i.e = getelementptr i8, ptr %1, i64 25
  %i.f = load i32, ptr %i.d, align 1
  %i.g = load i32, ptr %i.e, align 1
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.f)
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.j = tail call i32 @llvm.ucmp.i32.i32(i32 %i.h, i32 %i.i) ; 6 uses
  switch i32 %2, label %bb.j [
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 0, label %bb.f
    i32 4, label %bb.g
    i32 1, label %bb.h
    i32 5, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.j, 0
  %_Py_TrueStruct._Py_FalseStruct.i = select i1 %i.k, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.e:                                             ; preds = %bb.c
  %.not.i10 = icmp eq i32 %i.j, 0
  %_Py_FalseStruct._Py_TrueStruct.i = select i1 %.not.i10, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %diff_to_bool.exit

bb.f:                                             ; preds = %bb.c
  %i.l = icmp slt i32 %i.j, 0
  %_Py_TrueStruct._Py_FalseStruct7.i = select i1 %i.l, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.g:                                             ; preds = %bb.c
  %i.m = icmp sgt i32 %i.j, 0
  %_Py_TrueStruct._Py_FalseStruct8.i = select i1 %i.m, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.h:                                             ; preds = %bb.c
  %i.n = icmp slt i32 %i.j, 1
  %_Py_TrueStruct._Py_FalseStruct9.i = select i1 %i.n, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.i:                                             ; preds = %bb.c
  %i.o = icmp sgt i32 %i.j, -1
  %_Py_TrueStruct._Py_FalseStruct10.i = select i1 %i.o, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.j:                                             ; preds = %bb.c
  unreachable

diff_to_bool.exit:                                ; preds = %bb.b, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %PyObject_TypeCheck.exit, %PyObject_TypeCheck.exit9
  %.0 = phi ptr [ %_Py_TrueStruct._Py_FalseStruct9.i, %bb.h ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit9 ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ %_Py_TrueStruct._Py_FalseStruct.i, %bb.d ], [ %_Py_TrueStruct._Py_FalseStruct8.i, %bb.g ], [ %_Py_FalseStruct._Py_TrueStruct.i, %bb.e ], [ %_Py_TrueStruct._Py_FalseStruct10.i, %bb.i ], [ %_Py_TrueStruct._Py_FalseStruct7.i, %bb.f ], [ @_Py_NotImplementedStruct, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @date_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val25 = load i64, ptr %i.b, align 8, !tbaa !63 ; 3 uses
  %i.c = icmp eq i64 %.val25, 1
  br i1 %i.c, label %bb.b, label %date_from_pickle.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 13 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val24 = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr i8, ptr %.val24, i64 168
  %.val27 = load i64, ptr %i.g, align 8, !tbaa !81 ; 2 uses
  %i.h = and i64 %.val27, 134217728
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %.val29 = load i64, ptr %i.i, align 8, !tbaa !63
  %i.j = icmp eq i64 %.val29, 4
  br i1 %i.j, label %bb.d, label %date_from_pickle.exit.thread43

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.e, i64 32
  %i.l = getelementptr i8, ptr %i.e, i64 34
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -1
  %i.p = icmp ult i32 %i.o, 12
  br i1 %i.p, label %bb.e, label %date_from_pickle.exit.thread43

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 304
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = tail call ptr %i.r(ptr noundef %0, i64 noundef 0) #16, !inline_history !87 ; 4 uses
  %.not.i30 = icmp eq ptr %i.s, null
  br i1 %.not.i30, label %date_from_pickle.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.s, i64 25
  %i.u = load i32, ptr %i.k, align 1
  store i32 %i.u, ptr %i.t, align 1
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store i64 -1, ptr %i.v, align 8, !tbaa !37
  br label %date_from_pickle.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.w = and i64 %.val27, 268435456
  %.not22 = icmp eq i64 %i.w, 0
  br i1 %.not22, label %date_from_pickle.exit.thread43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.e, i64 16
  %.val28 = load i64, ptr %i.x, align 8, !tbaa !60
  %i.y = icmp eq i64 %.val28, 4
  br i1 %i.y, label %bb.i, label %date_from_pickle.exit.thread43

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.e, i64 32
  %i.aa = load i32, ptr %i.z, align 8             ; 5 uses
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = and i32 %i.aa, 32
  %.not.i19.i = icmp eq i32 %i.ad, 0              ; 3 uses
  switch i32 %i.ac, label %bb.p [
    i32 1, label %bb.j
    i32 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = and i32 %i.aa, 64
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.e, i64 56
  %.val4.i.i = load ptr, ptr %i.af, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.k ], [ %.val4.i.i, %bb.l ]
  %i.ag = getelementptr i8, ptr %.0.i.i, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35
  %i.ai = zext i8 %i.ah to i32
  br label %PyUnicode_READ_CHAR.exit

bb.m:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = and i32 %i.aa, 64
  %.not.i.i12.i = icmp eq i32 %i.aj, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.o:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %i.e, i64 56
  %.val4.i16.i = load ptr, ptr %i.ak, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.o, %bb.n
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.n ], [ %.val4.i16.i, %bb.o ]
  %i.al = getelementptr i8, ptr %.0.i15.i, i64 4
  %i.am = load i16, ptr %i.al, align 2, !tbaa !88
  %i.an = zext i16 %i.am to i32
  br label %PyUnicode_READ_CHAR.exit

bb.p:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = and i32 %i.aa, 64
  %.not.i.i20.i = icmp eq i32 %i.ao, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.r:                                             ; preds = %bb.p
  %i.ap = getelementptr i8, ptr %i.e, i64 56
  %.val4.i24.i = load ptr, ptr %i.ap, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.r, %bb.q
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.q ], [ %.val4.i24.i, %bb.r ]
  %i.aq = getelementptr i8, ptr %.0.i23.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.ai, %_PyUnicode_DATA.exit.i ], [ %i.an, %_PyUnicode_DATA.exit17.i ], [ %i.ar, %_PyUnicode_DATA.exit25.i ]
  %i.as = add i32 %.0.i, -1
  %i.at = icmp ult i32 %i.as, 12
  br i1 %i.at, label %bb.s, label %date_from_pickle.exit.thread43

bb.s:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.au = tail call ptr @PyUnicode_AsLatin1String(ptr noundef nonnull %i.e) #16 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !43
  %i.ax = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.aw) #16
  %.not23 = icmp eq i32 %i.ax, 0
  br i1 %.not23, label %date_from_pickle.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.ay, ptr noundef nonnull @.str.159) #16
  br label %date_from_pickle.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.az = getelementptr i8, ptr %0, i64 304
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11
  %i.bb = tail call ptr %i.ba(ptr noundef %0, i64 noundef 0) #16, !inline_history !87 ; 6 uses
  %.not.i31 = icmp eq ptr %i.bb, null
  br i1 %.not.i31, label %date_from_pickle.exit32, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = getelementptr i8, ptr %i.au, i64 32
  %i.bd = getelementptr i8, ptr %i.bb, i64 25
  %i.be = load i32, ptr %i.bc, align 1
  store i32 %i.be, ptr %i.bd, align 1
  %i.bf = getelementptr i8, ptr %i.bb, i64 16
  store i64 -1, ptr %i.bf, align 8, !tbaa !37
  br label %date_from_pickle.exit32

date_from_pickle.exit32:                          ; preds = %bb.v, %bb.w
  %i.bg = load i32, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.bg, -1
  br i1 %.not.i, label %bb.x, label %date_from_pickle.exit.thread

bb.x:                                             ; preds = %date_from_pickle.exit32
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.au, align 8, !tbaa !35
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.y, label %date_from_pickle.exit.thread

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.au) #16
  br label %date_from_pickle.exit.thread

date_from_pickle.exit.thread43:                   ; preds = %bb.g, %PyUnicode_READ_CHAR.exit, %bb.h, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bj = getelementptr i8, ptr %1, i64 32
  br label %bb.z

date_from_pickle.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bk = icmp eq ptr %2, null
  %i.bl = icmp eq i64 %.val25, 3
  %or.cond3.i = and i1 %i.bk, %i.bl
  %i.bm = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.bn = icmp ne ptr %i.bm, null
  %or.cond7.i = and i1 %i.bn, %or.cond3.i
  br i1 %or.cond7.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %date_from_pickle.exit.thread43, %date_from_pickle.exit
  %i.bo = phi ptr [ %i.bj, %date_from_pickle.exit.thread43 ], [ %i.bm, %date_from_pickle.exit ]
  %i.bp = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.bo, i64 noundef %.val25, ptr noundef %2, ptr noundef null, ptr noundef nonnull @datetime_date._parser, i32 noundef 3, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.bp, null
  br i1 %.not.i33, label %datetime_date.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.z, %date_from_pickle.exit
  %i.bq = phi ptr [ %i.bp, %bb.z ], [ %i.bm, %date_from_pickle.exit ] ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !43
  %i.bs = call i32 @PyLong_AsInt(ptr noundef %i.br) #16 ; 7 uses
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread.i
  %i.bu = call ptr @PyErr_Occurred() #16
  %.not31.i = icmp eq ptr %i.bu, null
  br i1 %.not31.i, label %bb.ab, label %datetime_date.exit

bb.ab:                                            ; preds = %bb.aa, %.thread.i
  %i.bv = getelementptr i8, ptr %i.bq, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.bx = call i32 @PyLong_AsInt(ptr noundef %i.bw) #16 ; 7 uses
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bz = call ptr @PyErr_Occurred() #16
  %.not32.i = icmp eq ptr %i.bz, null
  br i1 %.not32.i, label %bb.ad, label %datetime_date.exit

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ca = getelementptr i8, ptr %i.bq, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !43
  %i.cc = call i32 @PyLong_AsInt(ptr noundef %i.cb) #16 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.ae, label %.split.i

.split.i:                                         ; preds = %bb.ad
  %i.ce = call ptr @new_date_ex(i32 noundef %i.bs, i32 noundef %i.bx, i32 noundef %i.cc, ptr noundef %0)
  br label %datetime_date.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cf = call ptr @PyErr_Occurred() #16
  %.not33.i = icmp eq ptr %i.cf, null
  br i1 %.not33.i, label %.split27.i, label %datetime_date.exit

.split27.i:                                       ; preds = %bb.ae
  %i.cg = add i32 %i.bs, -10000
  %or.cond.i.i.i = icmp ult i32 %i.cg, -9999
  br i1 %or.cond.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.split27.i
  %i.ch = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.ci = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ch, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef 9999, i32 noundef %i.bs) #16 ; 0 uses
  br label %datetime_date.exit

bb.ag:                                            ; preds = %.split27.i
  %i.cj = add i32 %i.bx, -13
  %or.cond3.i.i.i = icmp ult i32 %i.cj, -12
  br i1 %or.cond3.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ck = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.cl = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ck, ptr noundef nonnull @.str.161, i32 noundef %i.bx) #16 ; 0 uses
  br label %datetime_date.exit

bb.ai:                                            ; preds = %bb.ag
  %i.cm = icmp eq i32 %i.bx, 2
  %i.cn = and i32 %i.bs, 3
  %i.co = icmp eq i32 %i.cn, 0
  %or.cond.i.i.i.i = and i1 %i.co, %i.cm
  br i1 %or.cond.i.i.i.i, label %bb.aj, label %is_leap.exit.thread.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %.lhs.trunc.i.i.i = trunc nuw nsw i32 %i.bs to i16 ; 2 uses
  %i.cp = urem i16 %.lhs.trunc.i.i.i, 100
  %.not.i.i.i.i.i = icmp ne i16 %i.cp, 0
  %i.cq = urem i16 %.lhs.trunc.i.i.i, 400
  %.not.i.i.i.i = icmp eq i16 %i.cq, 0
  %or.cond8.i.i.i.i = or i1 %.not.i.i.i.i.i, %.not.i.i.i.i
  br i1 %or.cond8.i.i.i.i, label %days_in_month.exit.i.i.i, label %is_leap.exit.thread.i.i.i.i

is_leap.exit.thread.i.i.i.i:                      ; preds = %bb.aj, %bb.ai
  %i.cr = zext nneg i32 %i.bx to i64
  %i.cs = getelementptr [4 x i8], ptr @_days_in_month, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  br label %days_in_month.exit.i.i.i

days_in_month.exit.i.i.i:                         ; preds = %is_leap.exit.thread.i.i.i.i, %bb.aj
  %.0.i.i.i.i = phi i32 [ %i.ct, %is_leap.exit.thread.i.i.i.i ], [ 29, %bb.aj ]
  %i.cu = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.cv = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cu, ptr noundef nonnull @.str.162, i32 noundef -1, i32 noundef %.0.i.i.i.i, i32 noundef %i.bx, i32 noundef %i.bs) #16 ; 0 uses
  br label %datetime_date.exit

datetime_date.exit:                               ; preds = %bb.z, %bb.aa, %bb.ac, %.split.i, %bb.ae, %bb.af, %bb.ah, %days_in_month.exit.i.i.i
  %.0.i34 = phi ptr [ null, %bb.aa ], [ null, %bb.ac ], [ null, %bb.ae ], [ null, %bb.z ], [ %i.ce, %.split.i ], [ null, %bb.af ], [ null, %bb.ah ], [ null, %days_in_month.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %date_from_pickle.exit.thread

date_from_pickle.exit.thread:                     ; preds = %bb.y, %bb.x, %date_from_pickle.exit32, %bb.e, %bb.u, %bb.f, %bb.t, %datetime_date.exit
  %.1 = phi ptr [ %.0.i34, %datetime_date.exit ], [ %i.bb, %bb.y ], [ %i.bb, %bb.x ], [ %i.bb, %date_from_pickle.exit32 ], [ null, %bb.e ], [ null, %bb.u ], [ %i.s, %bb.f ], [ null, %bb.t ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @date_add(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %.val17, @PyDateTime_DateTimeType
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val17, ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %.not33 = icmp eq i32 %i.b, 0
  br i1 %.not33, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val16 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %.not.i20 = icmp eq ptr %.val16, @PyDateTime_DateTimeType
  br i1 %.not.i20, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit21

PyObject_TypeCheck.exit21:                        ; preds = %bb.b
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val16, ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %PyObject_TypeCheck.exit.thread

bb.c:                                             ; preds = %PyObject_TypeCheck.exit21
  %.val15 = load ptr, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.not.i22 = icmp eq ptr %.val15, @PyDateTime_DateType
  br i1 %.not.i22, label %PyObject_TypeCheck.exit23.thread, label %PyObject_TypeCheck.exit23

PyObject_TypeCheck.exit23:                        ; preds = %bb.c
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val15, ptr noundef nonnull @PyDateTime_DateType) #16
  %.not34 = icmp eq i32 %i.e, 0
  br i1 %.not34, label %bb.d, label %PyObject_TypeCheck.exit23.thread

PyObject_TypeCheck.exit23.thread:                 ; preds = %bb.c, %PyObject_TypeCheck.exit23
  %.val14 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %.not.i24 = icmp eq ptr %.val14, @PyDateTime_DeltaType
  br i1 %.not.i24, label %PyObject_TypeCheck.exit.thread.sink.split, label %PyObject_TypeCheck.exit25

PyObject_TypeCheck.exit25:                        ; preds = %PyObject_TypeCheck.exit23.thread
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val14, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not36 = icmp eq i32 %i.f, 0
  br i1 %.not36, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit.thread.sink.split

bb.d:                                             ; preds = %PyObject_TypeCheck.exit23
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %.not.i26 = icmp eq ptr %.val, @PyDateTime_DeltaType
  br i1 %.not.i26, label %PyObject_TypeCheck.exit.thread.sink.split, label %PyObject_TypeCheck.exit27

PyObject_TypeCheck.exit27:                        ; preds = %bb.d
  %i.g = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not35 = icmp eq i32 %i.g, 0
  br i1 %.not35, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit.thread.sink.split

PyObject_TypeCheck.exit.thread.sink.split:        ; preds = %PyObject_TypeCheck.exit27, %bb.d, %PyObject_TypeCheck.exit25, %PyObject_TypeCheck.exit23.thread
  %.sink38 = phi ptr [ %1, %PyObject_TypeCheck.exit25 ], [ %1, %PyObject_TypeCheck.exit23.thread ], [ %0, %bb.d ], [ %0, %PyObject_TypeCheck.exit27 ]
  %.sink = phi ptr [ %0, %PyObject_TypeCheck.exit25 ], [ %0, %PyObject_TypeCheck.exit23.thread ], [ %1, %bb.d ], [ %1, %PyObject_TypeCheck.exit27 ]
  %i.h = getelementptr i8, ptr %.sink38, i64 24
  %.val18 = load i32, ptr %i.h, align 8, !tbaa !32
  %i.i = tail call fastcc ptr @add_date_timedelta(ptr noundef nonnull %.sink, i32 %.val18, i32 noundef 0)
  br label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %PyObject_TypeCheck.exit.thread.sink.split, %bb.b, %bb.a, %PyObject_TypeCheck.exit25, %PyObject_TypeCheck.exit27, %PyObject_TypeCheck.exit, %PyObject_TypeCheck.exit21
  %.0 = phi ptr [ @_Py_NotImplementedStruct, %bb.a ], [ @_Py_NotImplementedStruct, %bb.b ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit21 ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit27 ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit25 ], [ %i.i, %PyObject_TypeCheck.exit.thread.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @date_subtract(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %.val24, @PyDateTime_DateTimeType
  br i1 %.not.i, label %new_delta_ex.exit, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val24, ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %.not53 = icmp eq i32 %i.b, 0
  br i1 %.not53, label %bb.b, label %new_delta_ex.exit

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val23 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %.not.i26 = icmp eq ptr %.val23, @PyDateTime_DateTimeType
  br i1 %.not.i26, label %new_delta_ex.exit, label %PyObject_TypeCheck.exit27

PyObject_TypeCheck.exit27:                        ; preds = %bb.b
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val23, ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %new_delta_ex.exit

bb.c:                                             ; preds = %PyObject_TypeCheck.exit27
  %.val22 = load ptr, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.not.i28 = icmp eq ptr %.val22, @PyDateTime_DateType
  br i1 %.not.i28, label %PyObject_TypeCheck.exit29.thread, label %PyObject_TypeCheck.exit29

PyObject_TypeCheck.exit29:                        ; preds = %bb.c
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val22, ptr noundef nonnull @PyDateTime_DateType) #16
  %.not54 = icmp eq i32 %i.e, 0
  br i1 %.not54, label %new_delta_ex.exit, label %PyObject_TypeCheck.exit29.thread

PyObject_TypeCheck.exit29.thread:                 ; preds = %bb.c, %PyObject_TypeCheck.exit29
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %.not.i30 = icmp eq ptr %.val21, @PyDateTime_DateType
  br i1 %.not.i30, label %PyObject_TypeCheck.exit31.thread, label %PyObject_TypeCheck.exit31

PyObject_TypeCheck.exit31:                        ; preds = %PyObject_TypeCheck.exit29.thread
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val21, ptr noundef nonnull @PyDateTime_DateType) #16
  %.not55 = icmp eq i32 %i.f, 0
  br i1 %.not55, label %bb.j, label %PyObject_TypeCheck.exit31.thread

PyObject_TypeCheck.exit31.thread:                 ; preds = %PyObject_TypeCheck.exit29.thread, %PyObject_TypeCheck.exit31
  %i.g = getelementptr i8, ptr %0, i64 25
  %i.h = load i8, ptr %i.g, align 1, !tbaa !35
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = getelementptr i8, ptr %0, i64 26
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 27
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35    ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 28
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = zext i8 %i.r to i32
  %i.t = zext i8 %i.p to i64
  %i.u = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 4 uses
  %i.w = icmp ugt i8 %i.p, 2
  br i1 %i.w, label %bb.d, label %ymd_to_ord.exit

bb.d:                                             ; preds = %PyObject_TypeCheck.exit31.thread
  %i.x = and i32 %i.m, 3
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %is_leap.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %.lhs.trunc = trunc nuw i32 %i.n to i16         ; 2 uses
  %i.z = urem i16 %.lhs.trunc, 100
  %.not.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i.i, label %is_leap.exit.i.i, label %is_leap.exit.thread6.i.i

is_leap.exit.thread6.i.i:                         ; preds = %bb.e
  %i.aa = add i32 %i.v, 1
  br label %ymd_to_ord.exit

is_leap.exit.i.i:                                 ; preds = %bb.e
  %i.ab = urem i16 %.lhs.trunc, 400
  %.not.i.i = icmp eq i16 %i.ab, 0
  %i.ac = add i32 %i.v, 1
  br i1 %.not.i.i, label %ymd_to_ord.exit, label %is_leap.exit.thread.i.i

is_leap.exit.thread.i.i:                          ; preds = %is_leap.exit.i.i, %bb.d
  br label %ymd_to_ord.exit

ymd_to_ord.exit:                                  ; preds = %PyObject_TypeCheck.exit31.thread, %is_leap.exit.thread6.i.i, %is_leap.exit.i.i, %is_leap.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.v, %PyObject_TypeCheck.exit31.thread ], [ %i.v, %is_leap.exit.thread.i.i ], [ %i.ac, %is_leap.exit.i.i ], [ %i.aa, %is_leap.exit.thread6.i.i ]
  %i.ad = add nsw i32 %i.n, -1                    ; 4 uses
  %i.ae = mul nsw i32 %i.ad, 365
  %i.af = sdiv i32 %i.ad, 4
  %.neg.i.i = sdiv i32 %i.ad, -100
  %i.ag = sdiv i32 %i.ad, 400
  %i.ah = add nuw nsw i32 %i.af, %i.s
  %i.ai = add nsw i32 %i.ah, %i.ae
  %i.aj = add nsw i32 %i.ai, %.neg.i.i
  %i.ak = add nsw i32 %i.aj, %i.ag
  %i.al = add i32 %i.ak, %.0.i.i                  ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 25
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = getelementptr i8, ptr %1, i64 26
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = or disjoint i32 %i.ap, %i.as            ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 27
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35  ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 28
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !35
  %i.ay = zext i8 %i.ax to i32
  %i.az = zext i8 %i.av to i64
  %i.ba = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7  ; 4 uses
  %i.bc = icmp ugt i8 %i.av, 2
  br i1 %i.bc, label %bb.f, label %ymd_to_ord.exit39

bb.f:                                             ; preds = %ymd_to_ord.exit
  %i.bd = and i32 %i.as, 3
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.g, label %is_leap.exit.thread.i.i34

bb.g:                                             ; preds = %bb.f
  %.lhs.trunc49 = trunc nuw i32 %i.at to i16      ; 2 uses
  %i.bf = urem i16 %.lhs.trunc49, 100
  %.not.i.i.i35 = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i.i35, label %is_leap.exit.i.i37, label %is_leap.exit.thread6.i.i36

is_leap.exit.thread6.i.i36:                       ; preds = %bb.g
  %i.bg = add i32 %i.bb, 1
  br label %ymd_to_ord.exit39

is_leap.exit.i.i37:                               ; preds = %bb.g
  %i.bh = urem i16 %.lhs.trunc49, 400
  %.not.i.i38 = icmp eq i16 %i.bh, 0
  %i.bi = add i32 %i.bb, 1
  br i1 %.not.i.i38, label %ymd_to_ord.exit39, label %is_leap.exit.thread.i.i34

is_leap.exit.thread.i.i34:                        ; preds = %is_leap.exit.i.i37, %bb.f
  br label %ymd_to_ord.exit39

ymd_to_ord.exit39:                                ; preds = %ymd_to_ord.exit, %is_leap.exit.thread6.i.i36, %is_leap.exit.i.i37, %is_leap.exit.thread.i.i34
  %.0.i.i32 = phi i32 [ %i.bb, %ymd_to_ord.exit ], [ %i.bb, %is_leap.exit.thread.i.i34 ], [ %i.bi, %is_leap.exit.i.i37 ], [ %i.bg, %is_leap.exit.thread6.i.i36 ]
  %i.bj = add nsw i32 %i.at, -1                   ; 4 uses
  %i.bk = mul nsw i32 %i.bj, 365
  %i.bl = sdiv i32 %i.bj, 4
  %.neg.i.i33 = sdiv i32 %i.bj, -100
  %i.bm = sdiv i32 %i.bj, 400
  %i.bn = add nuw nsw i32 %i.bl, %i.ay
  %i.bo = add nsw i32 %i.bn, %i.bk
  %i.bp = add nsw i32 %i.bo, %.neg.i.i33
  %i.bq = add nsw i32 %i.bp, %i.bm
  %i.br = add i32 %i.bq, %.0.i.i32                ; 2 uses
  %i.bs = sub i32 %i.al, %i.br                    ; 3 uses
  %i.bt = add i32 %i.bs, 999999999
  %or.cond.i16.i = icmp ult i32 %i.bt, 1999999999
  br i1 %or.cond.i16.i, label %check_delta_day_range.exit.i, label %check_delta_day_range.exit.thread.i

check_delta_day_range.exit.thread.i:              ; preds = %ymd_to_ord.exit39
  %i.bu = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !43
  %i.bv = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bu, ptr noundef nonnull @.str.71, i32 noundef %i.bs, i32 noundef 999999999) #16, !inline_history !24 ; 0 uses
  br label %new_delta_ex.exit

check_delta_day_range.exit.i:                     ; preds = %ymd_to_ord.exit39
  %or.cond3.i.i = icmp ne i32 %i.al, %i.br
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.bw = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.bw
  br i1 %or.cond.i17.not.i, label %bb.h, label %new_delta_ex.exit

bb.h:                                             ; preds = %check_delta_day_range.exit.i
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !11
  %i.by = tail call ptr %i.bx(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !24 ; 6 uses
  %.not15.i = icmp eq ptr %i.by, null
  br i1 %.not15.i, label %new_delta_ex.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  store i64 -1, ptr %i.bz, align 8, !tbaa !30
  %i.ca = getelementptr i8, ptr %i.by, i64 24
  store i32 %i.bs, ptr %i.ca, align 8, !tbaa !32
  %i.cb = getelementptr i8, ptr %i.by, i64 28
  store i32 0, ptr %i.cb, align 4, !tbaa !33
  %i.cc = getelementptr i8, ptr %i.by, i64 32
  store i32 0, ptr %i.cc, align 8, !tbaa !34
  br label %new_delta_ex.exit

bb.j:                                             ; preds = %PyObject_TypeCheck.exit31
  %.val = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
  %.not.i40 = icmp eq ptr %.val, @PyDateTime_DeltaType
  br i1 %.not.i40, label %PyObject_TypeCheck.exit41.thread, label %PyObject_TypeCheck.exit41

PyObject_TypeCheck.exit41:                        ; preds = %bb.j
  %i.cd = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not56 = icmp eq i32 %i.cd, 0
  br i1 %.not56, label %new_delta_ex.exit, label %PyObject_TypeCheck.exit41.thread

PyObject_TypeCheck.exit41.thread:                 ; preds = %bb.j, %PyObject_TypeCheck.exit41
  %i.ce = getelementptr i8, ptr %1, i64 24
  %.val25 = load i32, ptr %i.ce, align 8, !tbaa !32
  %i.cf = tail call fastcc ptr @add_date_timedelta(ptr noundef nonnull %0, i32 %.val25, i32 noundef 1)
  br label %new_delta_ex.exit

new_delta_ex.exit:                                ; preds = %bb.b, %bb.a, %bb.i, %bb.h, %check_delta_day_range.exit.i, %check_delta_day_range.exit.thread.i, %PyObject_TypeCheck.exit29, %PyObject_TypeCheck.exit41, %PyObject_TypeCheck.exit, %PyObject_TypeCheck.exit27, %PyObject_TypeCheck.exit41.thread
  %.0 = phi ptr [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ @_Py_NotImplementedStruct, %bb.a ], [ %i.cf, %PyObject_TypeCheck.exit41.thread ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit27 ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit41 ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit29 ], [ null, %bb.h ], [ @zero_delta, %check_delta_day_range.exit.i ], [ null, %check_delta_day_range.exit.thread.i ], [ %i.by, %bb.i ], [ @_Py_NotImplementedStruct, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @add_date_timedelta(ptr noundef readonly captures(none) %0, i32 %.24.val, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = getelementptr i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !35
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %0, i64 26
  %i.i = load i8, ptr %i.h, align 1, !tbaa !35
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j
  store i32 %i.k, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.l = getelementptr i8, ptr %0, i64 27
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = zext i8 %i.m to i32
  store i32 %i.n, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.o = getelementptr i8, ptr %0, i64 28
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35
  %i.q = zext i8 %i.p to i32
  %.not = icmp eq i32 %1, 0
  %i.r = sub i32 0, %.24.val
  %i.s = select i1 %.not, i32 %.24.val, i32 %i.r
  %i.t = add i32 %i.s, %i.q
  store i32 %i.t, ptr %i.c, align 4, !tbaa !7
  %i.u = call fastcc i32 @normalize_date(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.b, label %new_date_subclass_ex.exit

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.a, align 4, !tbaa !7    ; 3 uses
  %i.x = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !7    ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  %i.aa = icmp eq ptr %.val, @PyDateTime_DateType
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call ptr @new_date_ex(i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.y, ptr noundef nonnull @PyDateTime_DateType), !inline_history !89
  br label %new_date_subclass_ex.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp eq ptr %.val, @PyDateTime_DateTimeType
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call ptr @new_datetime_ex2(i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.y, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !90
  br label %new_date_subclass_ex.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %.val, ptr noundef nonnull @.str.47, i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.y) #16, !inline_history !89
  br label %new_date_subclass_ex.exit

new_date_subclass_ex.exit:                        ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.ad, %bb.e ], [ %i.ae, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @new_datetime_ex(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) #0 {
bb.a:
  %i.a = tail call ptr @new_datetime_ex2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef 0, ptr noundef %8)
  ret ptr %i.a
}

declare ptr @PyObject_CallFunction(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @Py_HashBuffer(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_fromtimestamp(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @date_fromtimestamp(ptr noundef %0, ptr noundef %1), !inline_history !91
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_fromordinal(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #16 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.c = tail call fastcc ptr @datetime_date_fromordinal_impl(ptr noundef %0, i32 noundef %i.a)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_Occurred() #16
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.split4, label %bb.c

.split4:                                          ; preds = %bb.b
end_hunk_0
begin_hunk_1_@time_dealloc:bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !35
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #16
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr i8, ptr %.val, i64 320
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  tail call void %i.j(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @time_repr(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !35
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 26
  %i.h = load i8, ptr %i.g, align 2, !tbaa !35
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 27
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35    ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 28
  %i.n = load i8, ptr %i.m, align 4, !tbaa !35
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 16
  %i.q = getelementptr i8, ptr %0, i64 29
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = or disjoint i32 %i.t, %i.p
  %i.v = getelementptr i8, ptr %0, i64 30
  %i.w = load i8, ptr %i.v, align 2, !tbaa !35
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.u, %i.x               ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 31
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !48   ; 2 uses
  %i.ab = zext i8 %i.aa to i32
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.165, ptr noundef %i.c, i32 noundef %i.f, i32 noundef %i.i, i32 noundef %i.l, i32 noundef %i.y) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not35 = icmp eq i8 %i.k, 0
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.75, ptr noundef %i.c, i32 noundef %i.f, i32 noundef %i.i, i32 noundef %i.l) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ae = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.166, ptr noundef %i.c, i32 noundef %i.f, i32 noundef %i.i) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ %i.ac, %bb.b ], [ %i.ad, %bb.d ], [ %i.ae, %bb.e ] ; 8 uses
  %.not36 = icmp eq ptr %.0, null
  br i1 %.not36, label %append_keyword_fold.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %0, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !57
  %.not37 = icmp eq i8 %i.ag, 0
  br i1 %.not37, label %append_keyword_tzinfo.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, @_Py_NoneStruct
  br i1 %i.aj, label %append_keyword_tzinfo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %.0, i64 16
  %.val.i = load i64, ptr %i.ak, align 8, !tbaa !60
  %i.al = add i64 %.val.i, -1
  %i.am = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %.0, i64 noundef 0, i64 noundef %i.al) #16 ; 5 uses
  %i.an = load i32, ptr %.0, align 8, !tbaa !35   ; 2 uses
  %.not.i13.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i13.i, label %bb.j, label %Py_DECREF.exit14.i

bb.j:                                             ; preds = %bb.i
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %.0, align 8, !tbaa !35
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %Py_DECREF.exit14.i

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #16
  br label %Py_DECREF.exit14.i

Py_DECREF.exit14.i:                               ; preds = %bb.k, %bb.j, %bb.i
  %i.aq = icmp eq ptr %i.am, null
  br i1 %i.aq, label %append_keyword_fold.exit, label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit14.i
  %i.ar = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.167, ptr noundef nonnull %i.am, ptr noundef %i.ai) #16 ; 3 uses
  %i.as = load i32, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i.i, label %bb.m, label %append_keyword_tzinfo.exit

bb.m:                                             ; preds = %bb.l
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.am, align 8, !tbaa !35
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %append_keyword_tzinfo.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.am) #16
  br label %append_keyword_tzinfo.exit

append_keyword_tzinfo.exit:                       ; preds = %bb.n, %bb.m, %bb.l, %bb.h, %bb.g
  %.1 = phi ptr [ %i.ar, %bb.m ], [ %.0, %bb.g ], [ %i.ar, %bb.n ], [ %.0, %bb.h ], [ %i.ar, %bb.l ] ; 7 uses
  %i.av = icmp ne ptr %.1, null
  %i.aw = icmp ne i8 %i.aa, 0
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.o, label %append_keyword_fold.exit

bb.o:                                             ; preds = %append_keyword_tzinfo.exit
  %i.ax = getelementptr i8, ptr %.1, i64 16
  %.val.i38 = load i64, ptr %i.ax, align 8, !tbaa !60
  %i.ay = add i64 %.val.i38, -1
  %i.az = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %.1, i64 noundef 0, i64 noundef %i.ay) #16 ; 5 uses
  %i.ba = load i32, ptr %.1, align 8, !tbaa !35   ; 2 uses
  %.not.i12.i = icmp sgt i32 %i.ba, -1
  br i1 %.not.i12.i, label %bb.p, label %Py_DECREF.exit13.i

bb.p:                                             ; preds = %bb.o
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %.1, align 8, !tbaa !35
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %Py_DECREF.exit13.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #16
  br label %Py_DECREF.exit13.i

Py_DECREF.exit13.i:                               ; preds = %bb.q, %bb.p, %bb.o
  %i.bd = icmp eq ptr %i.az, null
  br i1 %i.bd, label %append_keyword_fold.exit, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit13.i
  %i.be = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.168, ptr noundef nonnull %i.az, i32 noundef range(i32 1, 256) %i.ab) #16 ; 3 uses
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !35 ; 2 uses
  %.not.i.i39 = icmp sgt i32 %i.bf, -1
  br i1 %.not.i.i39, label %bb.s, label %append_keyword_fold.exit

bb.s:                                             ; preds = %bb.r
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.az, align 8, !tbaa !35
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.t, label %append_keyword_fold.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.az) #16
  br label %append_keyword_fold.exit

append_keyword_fold.exit:                         ; preds = %Py_DECREF.exit14.i, %bb.f, %bb.t, %bb.s, %bb.r, %Py_DECREF.exit13.i, %append_keyword_tzinfo.exit
  %.2 = phi ptr [ %i.be, %bb.t ], [ %.1, %append_keyword_tzinfo.exit ], [ null, %Py_DECREF.exit13.i ], [ %i.be, %bb.r ], [ %i.be, %bb.s ], [ null, %bb.f ], [ null, %Py_DECREF.exit14.i ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal i64 @time_hash(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %Py_DECREF.exit60

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 31
  %i.e = load i8, ptr %i.d, align 1, !tbaa !48
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 25
  %i.g = load i8, ptr %i.f, align 1, !tbaa !35
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr i8, ptr %0, i64 26
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr i8, ptr %0, i64 27
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr i8, ptr %0, i64 28
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = getelementptr i8, ptr %0, i64 29
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.v, %i.r
  %i.x = getelementptr i8, ptr %0, i64 30
  %i.y = load i8, ptr %i.x, align 1, !tbaa !35
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z
  %i.ab = getelementptr i8, ptr %0, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !57
  %.not58 = icmp eq i8 %i.ac, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.af = phi ptr [ %i.ae, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  %i.ag = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ah = tail call ptr @new_time_ex2(i32 noundef %i.h, i32 noundef %i.k, i32 noundef %i.n, i32 noundef %i.aa, ptr noundef %i.af, i32 noundef 0, ptr noundef %.val) ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %Py_DECREF.exit60, label %_Py_NewRef.exit

bb.f:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, -1073741825
  br i1 %i.ak, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nuw i32 %i.aj, 1
  store i32 %i.al, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.g, %bb.f, %bb.e
  %.050 = phi ptr [ %i.ah, %bb.e ], [ %0, %bb.f ], [ %0, %bb.g ] ; 5 uses
  %i.am = getelementptr i8, ptr %.050, i64 24
  %i.an = load i8, ptr %i.am, align 8, !tbaa !57
  %.not.i77 = icmp eq i8 %i.an, 0
  br i1 %.not.i77, label %time_utcoffset.exit, label %bb.h

bb.h:                                             ; preds = %_Py_NewRef.exit
  %i.ao = getelementptr i8, ptr %.050, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !47
  br label %time_utcoffset.exit

time_utcoffset.exit:                              ; preds = %_Py_NewRef.exit, %bb.h
  %i.aq = phi ptr [ %i.ap, %bb.h ], [ @_Py_NoneStruct, %_Py_NewRef.exit ]
  %i.ar = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.aq, ptr noundef nonnull @.str.10, ptr noundef nonnull @_Py_NoneStruct) ; 12 uses
  %i.as = load i32, ptr %.050, align 8, !tbaa !35 ; 2 uses
  %.not.i69 = icmp sgt i32 %i.as, -1
  br i1 %.not.i69, label %bb.i, label %Py_DECREF.exit70

bb.i:                                             ; preds = %time_utcoffset.exit
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %.050, align 8, !tbaa !35
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %Py_DECREF.exit70

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %.050) #16
  br label %Py_DECREF.exit70

Py_DECREF.exit70:                                 ; preds = %time_utcoffset.exit, %bb.i, %bb.j
  %i.av = icmp eq ptr %i.ar, null
  br i1 %i.av, label %Py_DECREF.exit60, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit70
  %i.aw = icmp eq ptr %i.ar, @_Py_NoneStruct
  %i.ax = getelementptr i8, ptr %0, i64 25        ; 2 uses
  br i1 %i.aw, label %.split, label %bb.m

.split:                                           ; preds = %bb.k
  %i.ay = tail call i64 @Py_HashBuffer(ptr noundef %i.ax, i64 noundef 6) #16 ; 4 uses
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !42
  %i.az = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i59 = icmp sgt i32 %i.az, -1
  br i1 %.not.i59, label %bb.l, label %Py_DECREF.exit60

bb.l:                                             ; preds = %.split
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %Py_DECREF.exit60.sink.split, label %Py_DECREF.exit60

bb.m:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.bd, 3600
  %i.bf = getelementptr i8, ptr %0, i64 26
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !35
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 60
  %i.bj = add nuw nsw i32 %i.bi, %i.be
  %i.bk = getelementptr i8, ptr %0, i64 27
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !35
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bj, %i.bm            ; 2 uses
  %i.bo = getelementptr i8, ptr %0, i64 28
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !35
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 16
  %i.bs = getelementptr i8, ptr %0, i64 29
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !35
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 8
  %i.bw = or disjoint i32 %i.bv, %i.br
  %i.bx = getelementptr i8, ptr %0, i64 30
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !35
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz            ; 4 uses
  %or.cond.i.i = icmp samesign ugt i32 %i.ca, 999999
  br i1 %or.cond.i.i, label %normalize_pair.exit.i.i, label %._crit_edge.i.i

normalize_pair.exit.i.i:                          ; preds = %bb.m
  %i.cb = udiv i32 %i.ca, 1000000                 ; 2 uses
  %.neg.i.i = mul nsw i32 %i.cb, -1000000
  %i.cc = add nsw i32 %.neg.i.i, %i.ca            ; 3 uses
  %i.cd = icmp slt i32 %i.cc, 0
  %i.ce = select i1 %i.cd, i32 1000000, i32 0
  %storemerge.i.i.i.i = add nsw i32 %i.ce, %i.cc
  %.lobit.i.i.i.i = ashr i32 %i.cc, 31
  %.0.i.i.i.i = add nuw nsw i32 %i.cb, %i.bn
  %i.cf = add nsw i32 %.0.i.i.i.i, %.lobit.i.i.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %normalize_pair.exit.i.i, %bb.m
  %.131.i = phi i32 [ %i.cf, %normalize_pair.exit.i.i ], [ %i.bn, %bb.m ] ; 4 uses
  %.1.i = phi i32 [ %storemerge.i.i.i.i, %normalize_pair.exit.i.i ], [ %i.ca, %bb.m ] ; 2 uses
  %or.cond9.i.i = icmp samesign ugt i32 %.131.i, 86399
  br i1 %or.cond9.i.i, label %normalize_d_s_us.exit.i, label %check_delta_day_range.exit.i

normalize_d_s_us.exit.i:                          ; preds = %._crit_edge.i.i
  %i.cg = udiv i32 %.131.i, 86400                 ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.cg, -86400
  %i.ch = add nsw i32 %.neg15.i.i, %.131.i        ; 3 uses
  %i.ci = icmp slt i32 %i.ch, 0
  %i.cj = select i1 %i.ci, i32 86400, i32 0
  %storemerge.i.i11.i.i = add nsw i32 %i.cj, %i.ch
  %.lobit.i.i12.i.i = ashr i32 %i.ch, 31
  %i.ck = add nsw i32 %.lobit.i.i12.i.i, %i.cg
  br label %check_delta_day_range.exit.i

check_delta_day_range.exit.i:                     ; preds = %normalize_d_s_us.exit.i, %._crit_edge.i.i
  %.030.i82 = phi i32 [ %storemerge.i.i11.i.i, %normalize_d_s_us.exit.i ], [ %.131.i, %._crit_edge.i.i ] ; 2 uses
  %.032.i81 = phi i32 [ %i.ck, %normalize_d_s_us.exit.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %i.cl = or i32 %.030.i82, %.1.i
  %i.cm = or i32 %i.cl, %.032.i81
  %or.cond3.i.i = icmp ne i32 %i.cm, 0
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.cn = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.cn
  br i1 %or.cond.i17.not.i, label %bb.n, label %new_delta_ex.exit

bb.n:                                             ; preds = %check_delta_day_range.exit.i
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !11
  %i.cp = tail call ptr %i.co(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !24 ; 6 uses
  %.not15.i = icmp eq ptr %i.cp, null
  br i1 %.not15.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  store i64 -1, ptr %i.cq, align 8, !tbaa !30
  %i.cr = getelementptr i8, ptr %i.cp, i64 24
  store i32 %.032.i81, ptr %i.cr, align 8, !tbaa !32
  %i.cs = getelementptr i8, ptr %i.cp, i64 28
  store i32 %.030.i82, ptr %i.cs, align 4, !tbaa !33
  %i.ct = getelementptr i8, ptr %i.cp, i64 32
  store i32 %.1.i, ptr %i.ct, align 8, !tbaa !34
  br label %new_delta_ex.exit

bb.p:                                             ; preds = %bb.n
  %i.cu = load i32, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %.not.i67 = icmp sgt i32 %i.cu, -1
  br i1 %.not.i67, label %bb.q, label %Py_DECREF.exit60

bb.q:                                             ; preds = %bb.p
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.ar, align 8, !tbaa !35
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %Py_DECREF.exit60.sink.split, label %Py_DECREF.exit60

new_delta_ex.exit:                                ; preds = %bb.o, %check_delta_day_range.exit.i
  %.0.i = phi ptr [ @zero_delta, %check_delta_day_range.exit.i ], [ %i.cp, %bb.o ] ; 4 uses
  %i.cx = tail call ptr @delta_subtract(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.ar) ; 5 uses
  %i.cy = load i32, ptr %.0.i, align 8, !tbaa !35 ; 2 uses
  %.not.i65 = icmp sgt i32 %i.cy, -1
  br i1 %.not.i65, label %bb.r, label %Py_DECREF.exit66

bb.r:                                             ; preds = %new_delta_ex.exit
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  store i32 %i.cz, ptr %.0.i, align 8, !tbaa !35
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.s, label %Py_DECREF.exit66

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #16
  br label %Py_DECREF.exit66

Py_DECREF.exit66:                                 ; preds = %new_delta_ex.exit, %bb.r, %bb.s
  %i.db = icmp eq ptr %i.cx, null
  br i1 %i.db, label %bb.t, label %bb.v

bb.t:                                             ; preds = %Py_DECREF.exit66
  %i.dc = load i32, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %.not.i63 = icmp sgt i32 %i.dc, -1
  br i1 %.not.i63, label %bb.u, label %Py_DECREF.exit60

bb.u:                                             ; preds = %bb.t
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.ar, align 8, !tbaa !35
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %Py_DECREF.exit60.sink.split, label %Py_DECREF.exit60

bb.v:                                             ; preds = %Py_DECREF.exit66
  %i.df = tail call i64 @PyObject_Hash(ptr noundef nonnull %i.cx) #16 ; 4 uses
  store i64 %i.df, ptr %i.a, align 8, !tbaa !42
  %i.dg = load i32, ptr %i.cx, align 8, !tbaa !35 ; 2 uses
  %.not.i61 = icmp sgt i32 %i.dg, -1
  br i1 %.not.i61, label %bb.w, label %.split53

bb.w:                                             ; preds = %bb.v
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.cx, align 8, !tbaa !35
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.x, label %.split53

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cx) #16
  br label %.split53

.split53:                                         ; preds = %bb.v, %bb.w, %bb.x
  %i.dj = load i32, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.dj, -1
  br i1 %.not.i, label %bb.y, label %Py_DECREF.exit60

bb.y:                                             ; preds = %.split53
  %i.dk = add nsw i32 %i.dj, -1                   ; 2 uses
  store i32 %i.dk, ptr %i.ar, align 8, !tbaa !35
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %Py_DECREF.exit60.sink.split, label %Py_DECREF.exit60

Py_DECREF.exit60.sink.split:                      ; preds = %bb.y, %bb.u, %bb.q, %bb.l
  %.sink = phi ptr [ @_Py_NoneStruct, %bb.l ], [ %i.ar, %bb.q ], [ %i.ar, %bb.u ], [ %i.ar, %bb.y ]
  %.3.ph = phi i64 [ %i.ay, %bb.l ], [ -1, %bb.q ], [ -1, %bb.u ], [ %i.df, %bb.y ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #16
  br label %Py_DECREF.exit60

Py_DECREF.exit60:                                 ; preds = %Py_DECREF.exit60.sink.split, %bb.u, %bb.t, %bb.q, %bb.p, %Py_DECREF.exit70, %bb.e, %.split, %bb.l, %.split53, %bb.y, %bb.a
  %.3 = phi i64 [ %i.b, %bb.a ], [ -1, %bb.e ], [ -1, %bb.p ], [ -1, %Py_DECREF.exit70 ], [ -1, %bb.q ], [ %i.df, %bb.y ], [ %i.df, %.split53 ], [ %i.ay, %bb.l ], [ %i.ay, %.split ], [ -1, %bb.t ], [ -1, %bb.u ], [ %.3.ph, %Py_DECREF.exit60.sink.split ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @time_str(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !43
  %i.b = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88496), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @time_richcompare(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val68 = load ptr, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.not.i69 = icmp eq ptr %.val68, @PyDateTime_TimeType
  br i1 %.not.i69, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val68, ptr noundef nonnull @PyDateTime_TimeType) #16
  %.not103 = icmp eq i32 %i.b, 0
  br i1 %.not103, label %diff_to_bool.exit, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !57
  %.not58 = icmp eq i8 %i.d, 0                    ; 2 uses
  br i1 %.not58, label %bb.c, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ @_Py_NoneStruct, %PyObject_TypeCheck.exit.thread ]
  %i.h = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !57
  %.not59 = icmp eq i8 %i.i, 0
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %loadbb, label %bb.m

loadbb:                                           ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 25         ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 25         ; 2 uses
  %i.p = load i32, ptr %i.n, align 1
end_hunk_1
begin_hunk_2_@time_richcompare:bb.a
    i32 5, label %bb.k
  ]

bb.f:                                             ; preds = %endblock
  %i.af = icmp eq i32 %phi.res, 0
  %_Py_TrueStruct._Py_FalseStruct.i = select i1 %i.af, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.g:                                             ; preds = %endblock
  %.not.i70 = icmp eq i32 %phi.res, 0
  %_Py_FalseStruct._Py_TrueStruct.i = select i1 %.not.i70, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %diff_to_bool.exit

bb.h:                                             ; preds = %endblock
  %i.ag = icmp slt i32 %phi.res, 0
  %_Py_TrueStruct._Py_FalseStruct7.i = select i1 %i.ag, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.i:                                             ; preds = %endblock
  %i.ah = icmp sgt i32 %phi.res, 0
  %_Py_TrueStruct._Py_FalseStruct8.i = select i1 %i.ah, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.j:                                             ; preds = %endblock
  %i.ai = icmp slt i32 %phi.res, 1
  %_Py_TrueStruct._Py_FalseStruct9.i = select i1 %i.ai, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.k:                                             ; preds = %endblock
  %i.aj = icmp sgt i32 %phi.res, -1
  %_Py_TrueStruct._Py_FalseStruct10.i = select i1 %i.aj, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.l:                                             ; preds = %endblock
  unreachable

bb.m:                                             ; preds = %bb.e
  br i1 %.not58, label %time_utcoffset.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  br label %time_utcoffset.exit

time_utcoffset.exit:                              ; preds = %bb.m, %bb.n
  %i.am = phi ptr [ %i.al, %bb.n ], [ @_Py_NoneStruct, %bb.m ]
  %i.an = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.am, ptr noundef nonnull @.str.10, ptr noundef nonnull @_Py_NoneStruct) ; 12 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %diff_to_bool.exit, label %bb.o

bb.o:                                             ; preds = %time_utcoffset.exit
  %i.ap = load i8, ptr %i.h, align 8, !tbaa !57
  %.not.i72 = icmp eq i8 %i.ap, 0
  br i1 %.not.i72, label %time_utcoffset.exit73, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47
  br label %time_utcoffset.exit73

time_utcoffset.exit73:                            ; preds = %bb.o, %bb.p
  %i.as = phi ptr [ %i.ar, %bb.p ], [ @_Py_NoneStruct, %bb.o ]
  %i.at = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.as, ptr noundef nonnull @.str.10, ptr noundef nonnull @_Py_NoneStruct) ; 12 uses
  %i.au = icmp eq ptr %i.at, null                 ; 2 uses
  br i1 %i.au, label %diff_to_bool.exit87, label %bb.q

bb.q:                                             ; preds = %time_utcoffset.exit73
  %i.av = icmp eq ptr %i.an, %i.at
  br i1 %i.av, label %loadbb134, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %i.an, i64 8
  %.val67 = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %.not.i74 = icmp eq ptr %.val67, @PyDateTime_DeltaType
  br i1 %.not.i74, label %PyObject_TypeCheck.exit75.thread, label %PyObject_TypeCheck.exit75

PyObject_TypeCheck.exit75:                        ; preds = %bb.r
  %i.ax = tail call i32 @PyType_IsSubtype(ptr noundef %.val67, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %delta_cmp.exit.thread, label %PyObject_TypeCheck.exit75.thread

PyObject_TypeCheck.exit75.thread:                 ; preds = %bb.r, %PyObject_TypeCheck.exit75
  %i.ay = getelementptr i8, ptr %i.at, i64 8
  %.val = load ptr, ptr %i.ay, align 8, !tbaa !44 ; 2 uses
  %.not.i76 = icmp eq ptr %.val, @PyDateTime_DeltaType
  br i1 %.not.i76, label %PyObject_TypeCheck.exit77.thread, label %PyObject_TypeCheck.exit77

PyObject_TypeCheck.exit77:                        ; preds = %PyObject_TypeCheck.exit75.thread
  %i.az = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not104 = icmp eq i32 %i.az, 0
  br i1 %.not104, label %delta_cmp.exit.thread, label %PyObject_TypeCheck.exit77.thread

PyObject_TypeCheck.exit77.thread:                 ; preds = %PyObject_TypeCheck.exit75.thread, %PyObject_TypeCheck.exit77
  %i.ba = getelementptr i8, ptr %i.an, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !32
  %i.bc = getelementptr i8, ptr %i.at, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !32
  %i.be = icmp eq i32 %i.bb, %i.bd
  br i1 %i.be, label %bb.s, label %delta_cmp.exit.thread

bb.s:                                             ; preds = %PyObject_TypeCheck.exit77.thread
  %i.bf = getelementptr i8, ptr %i.an, i64 28
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !33
  %i.bh = getelementptr i8, ptr %i.at, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !33
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %delta_cmp.exit, label %delta_cmp.exit.thread

delta_cmp.exit:                                   ; preds = %bb.s
  %i.bk = getelementptr i8, ptr %i.an, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !34
  %i.bm = getelementptr i8, ptr %i.at, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !34
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %loadbb134, label %delta_cmp.exit.thread

loadbb134:                                        ; preds = %delta_cmp.exit, %bb.q
  %i.bp = getelementptr i8, ptr %0, i64 25        ; 2 uses
  %i.bq = getelementptr i8, ptr %1, i64 25        ; 2 uses
  %i.br = load i32, ptr %i.bp, align 1
  %i.bs = load i32, ptr %i.bq, align 1
  %i.bt = tail call i32 @llvm.bswap.i32(i32 %i.br) ; 2 uses
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bs) ; 2 uses
  %i.bv = icmp eq i32 %i.bt, %i.bu
  br i1 %i.bv, label %loadbb135, label %res_block131

res_block131:                                     ; preds = %loadbb135, %loadbb134
  %phi.src1132 = phi i32 [ %i.bt, %loadbb134 ], [ %i.ce, %loadbb135 ]
  %phi.src2133 = phi i32 [ %i.bu, %loadbb134 ], [ %i.cf, %loadbb135 ]
  %i.bw = icmp ult i32 %phi.src1132, %phi.src2133
  %i.bx = select i1 %i.bw, i32 -1, i32 1
  br label %endblock129

loadbb135:                                        ; preds = %loadbb134
  %i.by = getelementptr i8, ptr %i.bp, i64 4
  %i.bz = getelementptr i8, ptr %i.bq, i64 4
  %i.ca = load i16, ptr %i.by, align 1
  %i.cb = load i16, ptr %i.bz, align 1
  %i.cc = tail call i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cd = tail call i16 @llvm.bswap.i16(i16 %i.cb)
  %i.ce = zext i16 %i.cc to i32                   ; 2 uses
  %i.cf = zext i16 %i.cd to i32                   ; 2 uses
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %endblock129, label %res_block131

endblock129:                                      ; preds = %res_block131, %loadbb135
  %phi.res130 = phi i32 [ 0, %loadbb135 ], [ %i.bx, %res_block131 ] ; 6 uses
  switch i32 %2, label %bb.z [
    i32 2, label %bb.t
    i32 3, label %bb.u
    i32 0, label %bb.v
    i32 4, label %bb.w
    i32 1, label %bb.x
    i32 5, label %bb.y
  ]

bb.t:                                             ; preds = %endblock129
  %i.ch = icmp eq i32 %phi.res130, 0
  %_Py_TrueStruct._Py_FalseStruct.i86 = select i1 %i.ch, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit87

bb.u:                                             ; preds = %endblock129
  %.not.i84 = icmp eq i32 %phi.res130, 0
  %_Py_FalseStruct._Py_TrueStruct.i85 = select i1 %.not.i84, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %diff_to_bool.exit87

bb.v:                                             ; preds = %endblock129
  %i.ci = icmp slt i32 %phi.res130, 0
  %_Py_TrueStruct._Py_FalseStruct7.i83 = select i1 %i.ci, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit87

bb.w:                                             ; preds = %endblock129
  %i.cj = icmp sgt i32 %phi.res130, 0
  %_Py_TrueStruct._Py_FalseStruct8.i82 = select i1 %i.cj, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit87

bb.x:                                             ; preds = %endblock129
  %i.ck = icmp slt i32 %phi.res130, 1
  %_Py_TrueStruct._Py_FalseStruct9.i81 = select i1 %i.ck, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit87

bb.y:                                             ; preds = %endblock129
  %i.cl = icmp sgt i32 %phi.res130, -1
  %_Py_TrueStruct._Py_FalseStruct10.i79 = select i1 %i.cl, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit87

bb.z:                                             ; preds = %endblock129
  unreachable

delta_cmp.exit.thread:                            ; preds = %PyObject_TypeCheck.exit77.thread, %bb.s, %delta_cmp.exit, %PyObject_TypeCheck.exit77, %PyObject_TypeCheck.exit75
  %i.cm = icmp ne ptr %i.an, @_Py_NoneStruct
  %i.cn = icmp ne ptr %i.at, @_Py_NoneStruct
  %or.cond = and i1 %i.cm, %i.cn
  br i1 %or.cond, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %delta_cmp.exit.thread
  %i.co = getelementptr i8, ptr %0, i64 25
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !35
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr i8, ptr %0, i64 26
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !35
  %i.ct = zext i8 %i.cs to i32
  %i.cu = getelementptr i8, ptr %0, i64 27
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !35
  %i.cw = zext i8 %i.cv to i32
  %i.cx = getelementptr i8, ptr %i.an, i64 24
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !32
  %i.cz = getelementptr i8, ptr %i.an, i64 28
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !33
  %i.db = getelementptr i8, ptr %1, i64 25
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !35
  %i.dd = zext i8 %i.dc to i32
  %i.de = getelementptr i8, ptr %1, i64 26
  %i.df = load i8, ptr %i.de, align 1, !tbaa !35
  %i.dg = zext i8 %i.df to i32
  %i.dh = getelementptr i8, ptr %1, i64 27
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !35
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr i8, ptr %i.at, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !32
  %i.dm = getelementptr i8, ptr %i.at, i64 28
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !33
  %reass.add = sub i32 %i.dl, %i.cy
  %reass.mul = mul i32 %reass.add, 86400
  %reass.add116 = sub nsw i32 %i.ct, %i.dg
  %reass.mul117 = mul nsw i32 %reass.add116, 60
  %reass.add119 = sub nsw i32 %i.cq, %i.dd
  %reass.mul120 = mul nsw i32 %reass.add119, 3600
  %i.do = add i32 %i.da, %i.dj
  %i.dp = sub i32 %i.cw, %i.do
  %i.dq = add i32 %i.dp, %reass.mul120
  %i.dr = add i32 %i.dq, %i.dn
  %i.ds = add i32 %i.dr, %reass.mul117
  %i.dt = add i32 %i.ds, %reass.mul               ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dv = getelementptr i8, ptr %0, i64 28
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !35
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 16
  %i.dz = getelementptr i8, ptr %0, i64 29
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !35
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 8
  %i.ed = or disjoint i32 %i.ec, %i.dy
  %i.ee = getelementptr i8, ptr %0, i64 30
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !35
  %i.eg = zext i8 %i.ef to i32
  %i.eh = or disjoint i32 %i.ed, %i.eg
  %i.ei = getelementptr i8, ptr %1, i64 28
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !35
  %i.ek = zext i8 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 16
  %i.em = getelementptr i8, ptr %1, i64 29
  %i.en = load i8, ptr %i.em, align 1, !tbaa !35
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 8
  %i.eq = or disjoint i32 %i.ep, %i.el
  %i.er = getelementptr i8, ptr %1, i64 30
  %i.es = load i8, ptr %i.er, align 1, !tbaa !35
  %i.et = zext i8 %i.es to i32
  %i.eu = or disjoint i32 %i.eq, %i.et
  %i.ev = sub nsw i32 %i.eh, %i.eu
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.053 = phi i32 [ %i.ev, %bb.ab ], [ %i.dt, %bb.aa ] ; 6 uses
  switch i32 %2, label %bb.aj [
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 0, label %bb.af
    i32 4, label %bb.ag
    i32 1, label %bb.ah
    i32 5, label %bb.ai
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ew = icmp eq i32 %.053, 0
  %_Py_TrueStruct._Py_FalseStruct.i95 = select i1 %i.ew, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit87

bb.ae:                                            ; preds = %bb.ac
  %.not.i93 = icmp eq i32 %.053, 0
  %_Py_FalseStruct._Py_TrueStruct.i94 = select i1 %.not.i93, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %diff_to_bool.exit87

bb.af:                                            ; preds = %bb.ac
  %i.ex = icmp slt i32 %.053, 0
  %_Py_TrueStruct._Py_FalseStruct7.i92 = select i1 %i.ex, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit87

bb.ag:                                            ; preds = %bb.ac
  %i.ey = icmp sgt i32 %.053, 0
  %_Py_TrueStruct._Py_FalseStruct8.i91 = select i1 %i.ey, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit87

bb.ah:                                            ; preds = %bb.ac
  %i.ez = icmp slt i32 %.053, 1
  %_Py_TrueStruct._Py_FalseStruct9.i90 = select i1 %i.ez, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit87

bb.ai:                                            ; preds = %bb.ac
  %i.fa = icmp sgt i32 %.053, -1
  %_Py_TrueStruct._Py_FalseStruct10.i88 = select i1 %i.fa, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit87

bb.aj:                                            ; preds = %bb.ac
  unreachable

bb.ak:                                            ; preds = %delta_cmp.exit.thread
  switch i32 %2, label %bb.ap [
    i32 2, label %bb.al
    i32 3, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.fb = load i32, ptr @_Py_FalseStruct, align 8, !tbaa !35 ; 2 uses
  %i.fc = icmp ugt i32 %i.fb, -1073741825
  br i1 %i.fc, label %diff_to_bool.exit87, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fd = add nuw i32 %i.fb, 1
  store i32 %i.fd, ptr @_Py_FalseStruct, align 8, !tbaa !35
  br label %diff_to_bool.exit87

bb.an:                                            ; preds = %bb.ak
  %i.fe = load i32, ptr @_Py_TrueStruct, align 8, !tbaa !35 ; 2 uses
  %i.ff = icmp ugt i32 %i.fe, -1073741825
  br i1 %i.ff, label %diff_to_bool.exit87, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fg = add nuw i32 %i.fe, 1
  store i32 %i.fg, ptr @_Py_TrueStruct, align 8, !tbaa !35
  br label %diff_to_bool.exit87

bb.ap:                                            ; preds = %bb.ak
  %i.fh = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.fh, ptr noundef nonnull @.str.169) #16
  br label %diff_to_bool.exit87

diff_to_bool.exit87:                              ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.ap, %time_utcoffset.exit73
  %.052 = phi ptr [ null, %time_utcoffset.exit73 ], [ null, %bb.ap ], [ %_Py_TrueStruct._Py_FalseStruct9.i81, %bb.x ], [ %_Py_TrueStruct._Py_FalseStruct9.i90, %bb.ah ], [ @_Py_FalseStruct, %bb.am ], [ %_Py_TrueStruct._Py_FalseStruct.i86, %bb.t ], [ %_Py_TrueStruct._Py_FalseStruct8.i82, %bb.w ], [ %_Py_FalseStruct._Py_TrueStruct.i85, %bb.u ], [ %_Py_TrueStruct._Py_FalseStruct10.i79, %bb.y ], [ %_Py_TrueStruct._Py_FalseStruct7.i83, %bb.v ], [ %_Py_TrueStruct._Py_FalseStruct.i95, %bb.ad ], [ %_Py_TrueStruct._Py_FalseStruct8.i91, %bb.ag ], [ %_Py_FalseStruct._Py_TrueStruct.i94, %bb.ae ], [ %_Py_TrueStruct._Py_FalseStruct10.i88, %bb.ai ], [ %_Py_TrueStruct._Py_FalseStruct7.i92, %bb.af ], [ @_Py_FalseStruct, %bb.al ], [ @_Py_TrueStruct, %bb.an ], [ @_Py_TrueStruct, %bb.ao ] ; 4 uses
  %i.fi = load i32, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.fi, -1
  br i1 %.not.i, label %bb.aq, label %Py_DECREF.exit

bb.aq:                                            ; preds = %diff_to_bool.exit87
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr %i.an, align 8, !tbaa !35
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ar, label %Py_DECREF.exit

bb.ar:                                            ; preds = %bb.aq
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.an) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %diff_to_bool.exit87, %bb.aq, %bb.ar
  br i1 %i.au, label %diff_to_bool.exit, label %bb.as

bb.as:                                            ; preds = %Py_DECREF.exit
  %i.fl = load i32, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.fl, -1
  br i1 %.not.i.i, label %bb.at, label %diff_to_bool.exit

bb.at:                                            ; preds = %bb.as
  %i.fm = add nsw i32 %i.fl, -1                   ; 2 uses
  store i32 %i.fm, ptr %i.at, align 8, !tbaa !35
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.au, label %diff_to_bool.exit

bb.au:                                            ; preds = %bb.at
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.at) #16
  br label %diff_to_bool.exit

diff_to_bool.exit:                                ; preds = %bb.au, %bb.at, %bb.as, %Py_DECREF.exit, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %time_utcoffset.exit, %PyObject_TypeCheck.exit
  %.0 = phi ptr [ null, %time_utcoffset.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ %_Py_TrueStruct._Py_FalseStruct9.i, %bb.j ], [ %_Py_TrueStruct._Py_FalseStruct.i, %bb.f ], [ %_Py_TrueStruct._Py_FalseStruct8.i, %bb.i ], [ %_Py_FalseStruct._Py_TrueStruct.i, %bb.g ], [ %_Py_TrueStruct._Py_FalseStruct10.i, %bb.k ], [ %_Py_TrueStruct._Py_FalseStruct7.i, %bb.h ], [ %.052, %Py_DECREF.exit ], [ %.052, %bb.as ], [ %.052, %bb.at ], [ %.052, %bb.au ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @time_alloc(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %i.a = select i1 %.not, i64 32, i64 40
  %i.b = tail call ptr @PyObject_Malloc(i64 noundef %i.a) #16 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_NoMemory() #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !44
  %i.f = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_PyObject_Init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %0, align 8, !tbaa !35
  br label %_PyObject_Init.exit

_PyObject_Init.exit:                              ; preds = %bb.c, %bb.d
  tail call void @_Py_NewReference(ptr noundef nonnull %i.b) #16
  br label %bb.e

bb.e:                                             ; preds = %_PyObject_Init.exit, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %_PyObject_Init.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @time_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [6 x ptr], align 16               ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val33 = load i64, ptr %i.b, align 8, !tbaa !63 ; 7 uses
  %i.c = add i64 %.val33, -1
  %or.cond = icmp ult i64 %i.c, 2
  br i1 %or.cond, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 13 uses
  %i.f = icmp eq i64 %.val33, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026 = phi ptr [ %i.h, %bb.c ], [ @_Py_NoneStruct, %bb.b ] ; 2 uses
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %.val30 = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.j = getelementptr i8, ptr %.val30, i64 168
  %.val35 = load i64, ptr %i.j, align 8, !tbaa !81 ; 2 uses
  %i.k = and i64 %.val35, 134217728
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.e, i64 16
  %.val37 = load i64, ptr %i.l, align 8, !tbaa !63
  %i.m = icmp eq i64 %.val37, 6
  br i1 %i.m, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.e, i64 32
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = and i8 %i.o, 120
  %i.q = icmp samesign ult i8 %i.p, 24
  br i1 %i.q, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.r = tail call fastcc ptr @time_from_pickle(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %.026)
  br label %Py_DECREF.exit.thread

bb.h:                                             ; preds = %bb.d
  %i.s = and i64 %.val35, 268435456
  %.not28 = icmp eq i64 %i.s, 0
  br i1 %.not28, label %Py_DECREF.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %i.e, i64 16
  %.val36 = load i64, ptr %i.t, align 8, !tbaa !60
  %i.u = icmp eq i64 %.val36, 6
  br i1 %i.u, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %i.e, i64 32
  %i.w = load i32, ptr %i.v, align 8              ; 5 uses
  %i.x = lshr i32 %i.w, 2
  %i.y = and i32 %i.x, 7
  %i.z = and i32 %i.w, 32
  %.not.i19.i = icmp eq i32 %i.z, 0               ; 3 uses
  switch i32 %i.y, label %bb.q [
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = and i32 %i.w, 64
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ab = getelementptr i8, ptr %i.e, i64 56
  %.val4.i.i = load ptr, ptr %i.ab, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.l ], [ %.val4.i.i, %bb.m ]
  %i.ac = load i8, ptr %.0.i.i, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i32
  br label %PyUnicode_READ_CHAR.exit

bb.n:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = and i32 %i.w, 64
  %.not.i.i12.i = icmp eq i32 %i.ae, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.p:                                             ; preds = %bb.n
  %i.af = getelementptr i8, ptr %i.e, i64 56
  %.val4.i16.i = load ptr, ptr %i.af, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.p, %bb.o
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.o ], [ %.val4.i16.i, %bb.p ]
  %i.ag = load i16, ptr %.0.i15.i, align 2, !tbaa !88
  %i.ah = zext i16 %i.ag to i32
  br label %PyUnicode_READ_CHAR.exit

bb.q:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = and i32 %i.w, 64
  %.not.i.i20.i = icmp eq i32 %i.ai, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.s:                                             ; preds = %bb.q
  %i.aj = getelementptr i8, ptr %i.e, i64 56
  %.val4.i24.i = load ptr, ptr %i.aj, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.s, %bb.r
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.r ], [ %.val4.i24.i, %bb.s ]
  %i.ak = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.ad, %_PyUnicode_DATA.exit.i ], [ %i.ah, %_PyUnicode_DATA.exit17.i ], [ %i.ak, %_PyUnicode_DATA.exit25.i ]
  %i.al = and i32 %.0.i, 120
  %i.am = icmp samesign ult i32 %i.al, 24
  br i1 %i.am, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.an = tail call ptr @PyUnicode_AsLatin1String(ptr noundef nonnull %i.e) #16 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ap = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !43
  %i.aq = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.ap) #16
  %.not29 = icmp eq i32 %i.aq, 0
  br i1 %.not29, label %Py_DECREF.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.ar, ptr noundef nonnull @.str.198) #16
  br label %Py_DECREF.exit.thread

bb.w:                                             ; preds = %bb.t
  %i.as = tail call fastcc ptr @time_from_pickle(ptr noundef %0, ptr noundef nonnull %i.an, ptr noundef %.026) ; 3 uses
  %i.at = load i32, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.at, -1
  br i1 %.not.i, label %bb.x, label %Py_DECREF.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %i.an, align 8, !tbaa !35
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.y, label %Py_DECREF.exit.thread

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.an) #16
  br label %Py_DECREF.exit.thread

Py_DECREF.exit:                                   ; preds = %bb.h, %PyUnicode_READ_CHAR.exit, %bb.i, %bb.e, %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.not.i38 = icmp eq ptr %2, null
  br i1 %.not.i38, label %bb.z, label %.thread.i

.thread.i:                                        ; preds = %Py_DECREF.exit
  %i.aw = getelementptr i8, ptr %2, i64 16
  %.val99.i = load i64, ptr %i.aw, align 8, !tbaa !64
  %i.ax = add i64 %.val99.i, %.val33
  %i.ay = getelementptr i8, ptr %1, i64 32
  br label %bb.aa

bb.z:                                             ; preds = %Py_DECREF.exit
  %i.az = icmp ult i64 %.val33, 6
  %i.ba = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.bb = icmp ne ptr %i.ba, null
  %or.cond7.i = and i1 %i.bb, %i.az
  br i1 %or.cond7.i, label %.thread102.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread.i
  %i.bc = phi ptr [ %i.ay, %.thread.i ], [ %i.ba, %bb.z ]
  %i.bd = phi i64 [ %i.ax, %.thread.i ], [ %.val33, %bb.z ]
  %i.be = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.bc, i64 noundef %.val33, ptr noundef %2, ptr noundef null, ptr noundef nonnull @datetime_time._parser, i32 noundef 0, i32 noundef 5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16, !inline_history !114 ; 2 uses
  %.not81.i = icmp eq ptr %i.be, null
  br i1 %.not81.i, label %datetime_time.exit, label %.thread102.i

.thread102.i:                                     ; preds = %bb.aa, %bb.z
  %i.bf = phi ptr [ %i.be, %bb.aa ], [ %i.ba, %bb.z ] ; 6 uses
  %i.bg = phi i64 [ %i.bd, %bb.aa ], [ %.val33, %bb.z ] ; 3 uses
  %.not82.i = icmp eq i64 %i.bg, 0
  br i1 %.not82.i, label %.thread104.i, label %bb.ab

bb.ab:                                            ; preds = %.thread102.i
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !43 ; 2 uses
  %.not83.i = icmp eq ptr %i.bh, null
  br i1 %.not83.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bh) #16, !inline_history !114 ; 3 uses
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bk = call ptr @PyErr_Occurred() #16, !inline_history !114
  %.not84.i = icmp eq ptr %i.bk, null
  br i1 %.not84.i, label %bb.ae, label %datetime_time.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bl = add i64 %i.bg, -1                       ; 2 uses
  %.not85.i = icmp eq i64 %i.bl, 0
  br i1 %.not85.i, label %.thread104.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.058.i = phi i64 [ %i.bl, %bb.ae ], [ %i.bg, %bb.ab ] ; 2 uses
  %.056.i = phi i32 [ %i.bi, %bb.ae ], [ 0, %bb.ab ] ; 6 uses
  %i.bm = getelementptr i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !43 ; 2 uses
  %.not86.i = icmp eq ptr %i.bn, null
  br i1 %.not86.i, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bn) #16, !inline_history !114 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, -1
  br i1 %i.bp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bq = call ptr @PyErr_Occurred() #16, !inline_history !114
  %.not87.i = icmp eq ptr %i.bq, null
  br i1 %.not87.i, label %bb.ai, label %datetime_time.exit
end_hunk_2
begin_hunk_3_@time_microsecond:bb.a
  %i.m = or disjoint i64 %i.i, %i.l
  %i.n = tail call ptr @PyLong_FromLong(i64 noundef %i.m) #16
  ret ptr %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @time_tzinfo(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ @_Py_NoneStruct, %bb.a ] ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %i.e, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.d
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @time_fold(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 31
  %i.b = load i8, ptr %i.a, align 1, !tbaa !48
  %i.c = zext i8 %i.b to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c) #16
  ret ptr %i.d
}

declare ptr @PyObject_Malloc(i64 noundef) local_unnamed_addr #2

declare ptr @PyErr_NoMemory() local_unnamed_addr #2

declare void @_Py_NewReference(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @time_from_pickle(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %2, @_Py_NoneStruct          ; 4 uses
  %i.b = zext i1 %i.a to i8
  br i1 %i.a, label %bb.b, label %check_tzinfo_subclass.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val4.i = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %.not.i.i = icmp eq ptr %.val4.i, @PyDateTime_TZInfoType
  br i1 %.not.i.i, label %check_tzinfo_subclass.exit.thread, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.b
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val4.i, ptr noundef nonnull @PyDateTime_TZInfoType) #16, !inline_history !45
  %.not6.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i, label %bb.c, label %check_tzinfo_subclass.exit.thread

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.f = getelementptr i8, ptr %.val.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.200, ptr noundef %i.g) #16, !inline_history !45 ; 0 uses
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.199) #16
  br label %bb.j

check_tzinfo_subclass.exit.thread:                ; preds = %bb.b, %PyObject_TypeCheck.exit.i, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 304
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.l = zext i1 %i.a to i64
  %i.m = tail call ptr %i.k(ptr noundef %0, i64 noundef %i.l) #16 ; 9 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %check_tzinfo_subclass.exit.thread
  %i.n = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 25       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.o, ptr noundef nonnull align 1 dereferenceable(6) %i.n, i64 6, i1 false)
  %i.p = getelementptr i8, ptr %i.m, i64 16
  store i64 -1, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr i8, ptr %i.m, i64 24
  store i8 %i.b, ptr %i.q, align 8, !tbaa !40
  br i1 %i.a, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %2, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.f
  %i.u = getelementptr i8, ptr %i.m, i64 32
  store ptr %2, ptr %i.u, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %_Py_NewRef.exit, %bb.d
  %i.v = load i8, ptr %i.n, align 1, !tbaa !35
  %.not22 = icmp sgt i8 %i.v, -1
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %i.o, align 1, !tbaa !35
  %i.x = xor i8 %i.w, -128
  store i8 %i.x, ptr %i.o, align 1, !tbaa !35
  %i.y = getelementptr i8, ptr %i.m, i64 31
  store i8 1, ptr %i.y, align 1, !tbaa !48
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.m, i64 31
  store i8 0, ptr %i.z, align 1, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %check_tzinfo_subclass.exit.thread, %bb.i, %bb.h, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ null, %check_tzinfo_subclass.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @datetime_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !35
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #16
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr i8, ptr %.val, i64 320
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  tail call void %i.j(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_repr(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 25         ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8, !tbaa !35
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = getelementptr i8, ptr %0, i64 33
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = or disjoint i32 %i.l, %i.h
  %i.n = getelementptr i8, ptr %0, i64 34
  %i.o = load i8, ptr %i.n, align 2, !tbaa !35
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i8, ptr %i.d, align 1, !tbaa !35
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = getelementptr i8, ptr %0, i64 26
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w
  %i.y = getelementptr i8, ptr %0, i64 27
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr i8, ptr %0, i64 28
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr i8, ptr %0, i64 29
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr i8, ptr %0, i64 30
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = zext i8 %i.ai to i32
  %i.ak = getelementptr i8, ptr %0, i64 31
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = zext i8 %i.al to i32
  %i.an = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.203, ptr noundef %i.c, i32 noundef %i.x, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef %i.am, i32 noundef %i.q) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr i8, ptr %0, i64 31
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35  ; 2 uses
  %.not46 = icmp eq i8 %i.ap, 0
  %i.aq = load i8, ptr %i.d, align 1, !tbaa !35
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = getelementptr i8, ptr %0, i64 26
  %i.au = load i8, ptr %i.at, align 1, !tbaa !35
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av            ; 2 uses
  %i.ax = getelementptr i8, ptr %0, i64 27
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 28
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !35
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = getelementptr i8, ptr %0, i64 29
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 30
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !35
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = zext i8 %i.ap to i32
  %i.bk = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.204, ptr noundef %i.c, i32 noundef %i.aw, i32 noundef %i.az, i32 noundef %i.bc, i32 noundef %i.bf, i32 noundef %i.bi, i32 noundef %i.bj) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bl = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.205, ptr noundef %i.c, i32 noundef %i.aw, i32 noundef %i.az, i32 noundef %i.bc, i32 noundef %i.bf, i32 noundef %i.bi) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ %i.an, %bb.b ], [ %i.bk, %bb.d ], [ %i.bl, %bb.e ] ; 7 uses
  %.not47 = icmp eq ptr %.0, null
  br i1 %.not47, label %append_keyword_tzinfo.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %0, i64 35
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !52  ; 2 uses
  %.not48 = icmp eq i8 %i.bn, 0
  br i1 %.not48, label %append_keyword_fold.exit.thread54, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr i8, ptr %.0, i64 16
  %.val.i = load i64, ptr %i.bp, align 8, !tbaa !60
  %i.bq = add i64 %.val.i, -1
  %i.br = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %.0, i64 noundef 0, i64 noundef %i.bq) #16 ; 5 uses
  %i.bs = load i32, ptr %.0, align 8, !tbaa !35   ; 2 uses
  %.not.i12.i = icmp sgt i32 %i.bs, -1
  br i1 %.not.i12.i, label %bb.i, label %Py_DECREF.exit13.i

bb.i:                                             ; preds = %bb.h
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %.0, align 8, !tbaa !35
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %Py_DECREF.exit13.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #16
  br label %Py_DECREF.exit13.i

Py_DECREF.exit13.i:                               ; preds = %bb.j, %bb.i, %bb.h
  %i.bv = icmp eq ptr %i.br, null
  br i1 %i.bv, label %append_keyword_tzinfo.exit, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit13.i
  %i.bw = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.168, ptr noundef nonnull %i.br, i32 noundef range(i32 1, 256) %i.bo) #16 ; 2 uses
  %i.bx = load i32, ptr %i.br, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bx, -1
  br i1 %.not.i.i, label %bb.l, label %append_keyword_fold.exit

bb.l:                                             ; preds = %bb.k
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %i.br, align 8, !tbaa !35
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.m, label %append_keyword_fold.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.br) #16
  br label %append_keyword_fold.exit

append_keyword_fold.exit:                         ; preds = %bb.m, %bb.l, %bb.k
  %i.ca = icmp eq ptr %i.bw, null
  br i1 %i.ca, label %append_keyword_tzinfo.exit, label %append_keyword_fold.exit.thread54

append_keyword_fold.exit.thread54:                ; preds = %bb.g, %append_keyword_fold.exit
  %.156 = phi ptr [ %i.bw, %append_keyword_fold.exit ], [ %.0, %bb.g ] ; 7 uses
  %i.cb = getelementptr i8, ptr %0, i64 24
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !57
  %.not49 = icmp eq i8 %i.cc, 0
  br i1 %.not49, label %append_keyword_tzinfo.exit, label %bb.n

bb.n:                                             ; preds = %append_keyword_fold.exit.thread54
  %i.cd = getelementptr i8, ptr %0, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !51 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, @_Py_NoneStruct
  br i1 %i.cf, label %append_keyword_tzinfo.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr i8, ptr %.156, i64 16
  %.val.i50 = load i64, ptr %i.cg, align 8, !tbaa !60
  %i.ch = add i64 %.val.i50, -1
  %i.ci = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %.156, i64 noundef 0, i64 noundef %i.ch) #16 ; 5 uses
  %i.cj = load i32, ptr %.156, align 8, !tbaa !35 ; 2 uses
  %.not.i13.i = icmp sgt i32 %i.cj, -1
  br i1 %.not.i13.i, label %bb.p, label %Py_DECREF.exit14.i

bb.p:                                             ; preds = %bb.o
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %.156, align 8, !tbaa !35
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.q, label %Py_DECREF.exit14.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %.156) #16
  br label %Py_DECREF.exit14.i

Py_DECREF.exit14.i:                               ; preds = %bb.q, %bb.p, %bb.o
  %i.cm = icmp eq ptr %i.ci, null
  br i1 %i.cm, label %append_keyword_tzinfo.exit, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit14.i
  %i.cn = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.167, ptr noundef nonnull %i.ci, ptr noundef %i.ce) #16 ; 3 uses
  %i.co = load i32, ptr %i.ci, align 8, !tbaa !35 ; 2 uses
  %.not.i.i51 = icmp sgt i32 %i.co, -1
  br i1 %.not.i.i51, label %bb.s, label %append_keyword_tzinfo.exit

bb.s:                                             ; preds = %bb.r
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %i.ci, align 8, !tbaa !35
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.t, label %append_keyword_tzinfo.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ci) #16
  br label %append_keyword_tzinfo.exit

append_keyword_tzinfo.exit:                       ; preds = %Py_DECREF.exit13.i, %bb.f, %bb.t, %bb.s, %bb.r, %Py_DECREF.exit14.i, %bb.n, %append_keyword_fold.exit, %append_keyword_fold.exit.thread54
  %.042 = phi ptr [ %i.cn, %bb.t ], [ %.156, %append_keyword_fold.exit.thread54 ], [ null, %append_keyword_fold.exit ], [ null, %Py_DECREF.exit14.i ], [ %.156, %bb.n ], [ %i.cn, %bb.r ], [ %i.cn, %bb.s ], [ null, %bb.f ], [ null, %Py_DECREF.exit13.i ]
  ret ptr %.042
}

; Function Attrs: nounwind uwtable
define internal i64 @datetime_hash(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %Py_DECREF.exit68

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 35
  %i.e = load i8, ptr %i.d, align 1, !tbaa !52
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 25
  %i.g = load i8, ptr %i.f, align 1, !tbaa !35
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr i8, ptr %0, i64 26
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
  %i.n = getelementptr i8, ptr %0, i64 27
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr i8, ptr %0, i64 28
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr i8, ptr %0, i64 29
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr i8, ptr %0, i64 30
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr i8, ptr %0, i64 31
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr i8, ptr %0, i64 32
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 16
  %i.ag = getelementptr i8, ptr %0, i64 33
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = or disjoint i32 %i.aj, %i.af
  %i.al = getelementptr i8, ptr %0, i64 34
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ak, %i.an
  %i.ap = getelementptr i8, ptr %0, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !57
  %.not66 = icmp eq i8 %i.aq, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.at = phi ptr [ %i.as, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  %i.au = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.av = tail call ptr @new_datetime_ex2(i32 noundef %i.m, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %i.v, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ao, ptr noundef %i.at, i32 noundef 0, ptr noundef %.val) ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %Py_DECREF.exit68, label %_Py_NewRef.exit

bb.f:                                             ; preds = %bb.b
  %i.ax = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, -1073741825
  br i1 %i.ay, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = add nuw i32 %i.ax, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.g, %bb.f, %bb.e
  %.058 = phi ptr [ %i.av, %bb.e ], [ %0, %bb.f ], [ %0, %bb.g ] ; 6 uses
  %i.ba = getelementptr i8, ptr %.058, i64 24
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !57
  %.not.i85 = icmp eq i8 %i.bb, 0
  br i1 %.not.i85, label %datetime_utcoffset.exit, label %bb.h

bb.h:                                             ; preds = %_Py_NewRef.exit
  %i.bc = getelementptr i8, ptr %.058, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !51
  br label %datetime_utcoffset.exit

datetime_utcoffset.exit:                          ; preds = %_Py_NewRef.exit, %bb.h
  %i.be = phi ptr [ %i.bd, %bb.h ], [ @_Py_NoneStruct, %_Py_NewRef.exit ]
  %i.bf = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.be, ptr noundef nonnull @.str.10, ptr noundef nonnull %.058) ; 12 uses
  %i.bg = load i32, ptr %.058, align 8, !tbaa !35 ; 2 uses
  %.not.i77 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i77, label %bb.i, label %Py_DECREF.exit78

bb.i:                                             ; preds = %datetime_utcoffset.exit
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %.058, align 8, !tbaa !35
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.j, label %Py_DECREF.exit78

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %.058) #16
  br label %Py_DECREF.exit78

Py_DECREF.exit78:                                 ; preds = %datetime_utcoffset.exit, %bb.i, %bb.j
  %i.bj = icmp eq ptr %i.bf, null
  br i1 %i.bj, label %Py_DECREF.exit68, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit78
  %i.bk = icmp eq ptr %i.bf, @_Py_NoneStruct
  %i.bl = getelementptr i8, ptr %0, i64 25        ; 2 uses
  br i1 %i.bk, label %.split, label %bb.m

.split:                                           ; preds = %bb.k
  %i.bm = tail call i64 @Py_HashBuffer(ptr noundef %i.bl, i64 noundef 10) #16 ; 4 uses
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !123
  %i.bn = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i67 = icmp sgt i32 %i.bn, -1
  br i1 %.not.i67, label %bb.l, label %Py_DECREF.exit68

bb.l:                                             ; preds = %.split
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %Py_DECREF.exit68.sink.split, label %Py_DECREF.exit68

bb.m:                                             ; preds = %bb.k
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !35
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = getelementptr i8, ptr %0, i64 26
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !35
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = or disjoint i32 %i.bs, %i.bv            ; 2 uses
  %i.bx = getelementptr i8, ptr %0, i64 27
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !35  ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 28
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !35
  %i.cb = zext i8 %i.ca to i32
  %i.cc = zext i8 %i.by to i64
  %i.cd = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7  ; 4 uses
  %i.cf = icmp ugt i8 %i.by, 2
  br i1 %i.cf, label %bb.n, label %ymd_to_ord.exit

bb.n:                                             ; preds = %bb.m
  %i.cg = and i32 %i.bv, 3
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.o, label %is_leap.exit.thread.i.i

bb.o:                                             ; preds = %bb.n
  %.lhs.trunc = trunc nuw i32 %i.bw to i16        ; 2 uses
  %i.ci = urem i16 %.lhs.trunc, 100
  %.not.i.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i.i, label %is_leap.exit.i.i, label %is_leap.exit.thread6.i.i

is_leap.exit.thread6.i.i:                         ; preds = %bb.o
  %i.cj = add i32 %i.ce, 1
  br label %ymd_to_ord.exit

is_leap.exit.i.i:                                 ; preds = %bb.o
  %i.ck = urem i16 %.lhs.trunc, 400
  %.not.i.i = icmp eq i16 %i.ck, 0
  %i.cl = add i32 %i.ce, 1
  br i1 %.not.i.i, label %ymd_to_ord.exit, label %is_leap.exit.thread.i.i

is_leap.exit.thread.i.i:                          ; preds = %is_leap.exit.i.i, %bb.n
  br label %ymd_to_ord.exit

ymd_to_ord.exit:                                  ; preds = %bb.m, %is_leap.exit.thread6.i.i, %is_leap.exit.i.i, %is_leap.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.ce, %bb.m ], [ %i.ce, %is_leap.exit.thread.i.i ], [ %i.cl, %is_leap.exit.i.i ], [ %i.cj, %is_leap.exit.thread6.i.i ]
  %i.cm = add nsw i32 %i.bw, -1                   ; 4 uses
  %i.cn = mul nsw i32 %i.cm, 365
  %i.co = sdiv i32 %i.cm, 4
  %.neg.i.i = sdiv i32 %i.cm, -100
  %i.cp = sdiv i32 %i.cm, 400
  %i.cq = add nuw nsw i32 %i.co, %i.cb
  %i.cr = add nsw i32 %i.cq, %i.cn
  %i.cs = add nsw i32 %i.cr, %.neg.i.i
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = add i32 %i.ct, %.0.i.i                  ; 2 uses
  %i.cv = getelementptr i8, ptr %0, i64 29
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !35
  %i.cx = zext i8 %i.cw to i32
  %i.cy = mul nuw nsw i32 %i.cx, 3600
  %i.cz = getelementptr i8, ptr %0, i64 30
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !35
  %i.db = zext i8 %i.da to i32
  %i.dc = mul nuw nsw i32 %i.db, 60
  %i.dd = add nuw nsw i32 %i.dc, %i.cy
  %i.de = getelementptr i8, ptr %0, i64 31
  %i.df = load i8, ptr %i.de, align 1, !tbaa !35
  %i.dg = zext i8 %i.df to i32
  %i.dh = add nuw nsw i32 %i.dd, %i.dg            ; 2 uses
  %i.di = getelementptr i8, ptr %0, i64 32
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !35
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 16
  %i.dm = getelementptr i8, ptr %0, i64 33
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !35
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = or disjoint i32 %i.dp, %i.dl
  %i.dr = getelementptr i8, ptr %0, i64 34
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !35
  %i.dt = zext i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dq, %i.dt            ; 4 uses
  %or.cond.i.i = icmp samesign ugt i32 %i.du, 999999
  br i1 %or.cond.i.i, label %normalize_pair.exit.i.i, label %._crit_edge.i.i

normalize_pair.exit.i.i:                          ; preds = %ymd_to_ord.exit
  %i.dv = udiv i32 %i.du, 1000000                 ; 2 uses
  %.neg.i.i86 = mul nsw i32 %i.dv, -1000000
  %i.dw = add nsw i32 %.neg.i.i86, %i.du          ; 3 uses
  %i.dx = icmp slt i32 %i.dw, 0
  %i.dy = select i1 %i.dx, i32 1000000, i32 0
  %storemerge.i.i.i.i = add nsw i32 %i.dy, %i.dw
  %.lobit.i.i.i.i = ashr i32 %i.dw, 31
  %.0.i.i.i.i = add nuw nsw i32 %i.dv, %i.dh
  %i.dz = add nsw i32 %.0.i.i.i.i, %.lobit.i.i.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %normalize_pair.exit.i.i, %ymd_to_ord.exit
  %.131.i = phi i32 [ %i.dz, %normalize_pair.exit.i.i ], [ %i.dh, %ymd_to_ord.exit ] ; 4 uses
  %.1.i = phi i32 [ %storemerge.i.i.i.i, %normalize_pair.exit.i.i ], [ %i.du, %ymd_to_ord.exit ] ; 2 uses
  %or.cond9.i.i = icmp samesign ugt i32 %.131.i, 86399
  br i1 %or.cond9.i.i, label %normalize_pair.exit14.i.i, label %normalize_d_s_us.exit.i

normalize_pair.exit14.i.i:                        ; preds = %._crit_edge.i.i
  %i.ea = udiv i32 %.131.i, 86400                 ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.ea, -86400
  %i.eb = add nsw i32 %.neg15.i.i, %.131.i        ; 3 uses
  %i.ec = icmp slt i32 %i.eb, 0
  %i.ed = select i1 %i.ec, i32 86400, i32 0
  %storemerge.i.i11.i.i = add nsw i32 %i.ed, %i.eb
  %.lobit.i.i12.i.i = ashr i32 %i.eb, 31
  %.0.i.i13.i.i = add i32 %i.ea, %i.cu
  %i.ee = add i32 %.0.i.i13.i.i, %.lobit.i.i12.i.i
  br label %normalize_d_s_us.exit.i

normalize_d_s_us.exit.i:                          ; preds = %normalize_pair.exit14.i.i, %._crit_edge.i.i
  %.032.i = phi i32 [ %i.cu, %._crit_edge.i.i ], [ %i.ee, %normalize_pair.exit14.i.i ] ; 4 uses
  %.030.i = phi i32 [ %.131.i, %._crit_edge.i.i ], [ %storemerge.i.i11.i.i, %normalize_pair.exit14.i.i ] ; 2 uses
  %i.ef = add i32 %.032.i, 999999999
  %or.cond.i16.i = icmp ult i32 %i.ef, 1999999999
  br i1 %or.cond.i16.i, label %check_delta_day_range.exit.i, label %check_delta_day_range.exit.thread.i

check_delta_day_range.exit.thread.i:              ; preds = %normalize_d_s_us.exit.i
  %i.eg = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !43
  %i.eh = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.eg, ptr noundef nonnull @.str.71, i32 noundef %.032.i, i32 noundef 999999999) #16, !inline_history !24 ; 0 uses
  br label %bb.r

check_delta_day_range.exit.i:                     ; preds = %normalize_d_s_us.exit.i
  %i.ei = or i32 %.032.i, %.1.i
  %i.ej = or i32 %i.ei, %.030.i
  %or.cond3.i.i = icmp ne i32 %i.ej, 0
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.ek = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.ek
  br i1 %or.cond.i17.not.i, label %bb.p, label %new_delta_ex.exit

bb.p:                                             ; preds = %check_delta_day_range.exit.i
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !11
  %i.em = tail call ptr %i.el(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !24 ; 6 uses
  %.not15.i = icmp eq ptr %i.em, null
  br i1 %.not15.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.en = getelementptr i8, ptr %i.em, i64 16
  store i64 -1, ptr %i.en, align 8, !tbaa !30
  %i.eo = getelementptr i8, ptr %i.em, i64 24
  store i32 %.032.i, ptr %i.eo, align 8, !tbaa !32
  %i.ep = getelementptr i8, ptr %i.em, i64 28
  store i32 %.030.i, ptr %i.ep, align 4, !tbaa !33
  %i.eq = getelementptr i8, ptr %i.em, i64 32
  store i32 %.1.i, ptr %i.eq, align 8, !tbaa !34
  br label %new_delta_ex.exit

bb.r:                                             ; preds = %check_delta_day_range.exit.thread.i, %bb.p
  %i.er = load i32, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %.not.i75 = icmp sgt i32 %i.er, -1
  br i1 %.not.i75, label %bb.s, label %Py_DECREF.exit68

bb.s:                                             ; preds = %bb.r
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  store i32 %i.es, ptr %i.bf, align 8, !tbaa !35
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %Py_DECREF.exit68.sink.split, label %Py_DECREF.exit68

new_delta_ex.exit:                                ; preds = %bb.q, %check_delta_day_range.exit.i
  %.0.i = phi ptr [ @zero_delta, %check_delta_day_range.exit.i ], [ %i.em, %bb.q ] ; 4 uses
  %i.eu = tail call ptr @delta_subtract(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.bf) ; 5 uses
  %i.ev = load i32, ptr %.0.i, align 8, !tbaa !35 ; 2 uses
  %.not.i73 = icmp sgt i32 %i.ev, -1
  br i1 %.not.i73, label %bb.t, label %Py_DECREF.exit74

bb.t:                                             ; preds = %new_delta_ex.exit
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %.0.i, align 8, !tbaa !35
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.u, label %Py_DECREF.exit74

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #16
  br label %Py_DECREF.exit74

Py_DECREF.exit74:                                 ; preds = %new_delta_ex.exit, %bb.t, %bb.u
  %i.ey = icmp eq ptr %i.eu, null
  br i1 %i.ey, label %bb.v, label %bb.x

bb.v:                                             ; preds = %Py_DECREF.exit74
  %i.ez = load i32, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %.not.i71 = icmp sgt i32 %i.ez, -1
  br i1 %.not.i71, label %bb.w, label %Py_DECREF.exit68

bb.w:                                             ; preds = %bb.v
  %i.fa = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fa, ptr %i.bf, align 8, !tbaa !35
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %Py_DECREF.exit68.sink.split, label %Py_DECREF.exit68

bb.x:                                             ; preds = %Py_DECREF.exit74
  %i.fc = tail call i64 @PyObject_Hash(ptr noundef nonnull %i.eu) #16 ; 4 uses
  store i64 %i.fc, ptr %i.a, align 8, !tbaa !123
  %i.fd = load i32, ptr %i.eu, align 8, !tbaa !35 ; 2 uses
  %.not.i69 = icmp sgt i32 %i.fd, -1
  br i1 %.not.i69, label %bb.y, label %.split61

bb.y:                                             ; preds = %bb.x
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.eu, align 8, !tbaa !35
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.z, label %.split61

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.eu) #16
  br label %.split61

.split61:                                         ; preds = %bb.x, %bb.y, %bb.z
  %i.fg = load i32, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.fg, -1
  br i1 %.not.i, label %bb.aa, label %Py_DECREF.exit68

bb.aa:                                            ; preds = %.split61
  %i.fh = add nsw i32 %i.fg, -1                   ; 2 uses
  store i32 %i.fh, ptr %i.bf, align 8, !tbaa !35
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %Py_DECREF.exit68.sink.split, label %Py_DECREF.exit68

Py_DECREF.exit68.sink.split:                      ; preds = %bb.aa, %bb.w, %bb.s, %bb.l
  %.sink = phi ptr [ @_Py_NoneStruct, %bb.l ], [ %i.bf, %bb.s ], [ %i.bf, %bb.w ], [ %i.bf, %bb.aa ]
  %.3.ph = phi i64 [ %i.bm, %bb.l ], [ -1, %bb.s ], [ -1, %bb.w ], [ %i.fc, %bb.aa ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #16
  br label %Py_DECREF.exit68

Py_DECREF.exit68:                                 ; preds = %Py_DECREF.exit68.sink.split, %bb.w, %bb.v, %bb.s, %bb.r, %Py_DECREF.exit78, %bb.e, %.split, %bb.l, %.split61, %bb.aa, %bb.a
  %.3 = phi i64 [ %i.b, %bb.a ], [ -1, %bb.e ], [ -1, %bb.r ], [ -1, %Py_DECREF.exit78 ], [ -1, %bb.s ], [ %i.fc, %bb.aa ], [ %i.fc, %.split61 ], [ %i.bm, %bb.l ], [ %i.bm, %.split ], [ -1, %bb.v ], [ -1, %bb.w ], [ %.3.ph, %Py_DECREF.exit68.sink.split ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_str(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.207) #16 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %0, ptr %i.a, align 16, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !43
  %i.e = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88496), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.f = load i32, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !35
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_richcompare(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val97 = load ptr, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %.not.i98 = icmp eq ptr %.val97, @PyDateTime_DateTimeType
  br i1 %.not.i98, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val97, ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %.not134 = icmp eq i32 %i.b, 0
end_hunk_3
begin_hunk_4_@datetime_richcompare:bb.a
  %i.de = and i32 %2, -2
  %or.cond7 = icmp eq i32 %i.de, 2
  %i.df = icmp eq i32 %.3, 0
  %or.cond9 = select i1 %or.cond7, i1 %i.df, i1 false
  br i1 %or.cond9, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %Py_DECREF.exit94
  %i.dg = tail call fastcc i32 @pep495_eq_exception(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.an, ptr noundef nonnull %i.at) ; 2 uses
  %.not89 = icmp eq i32 %i.dg, -1
  %.not88 = icmp ne i32 %i.dg, 0
  %spec.select = zext i1 %.not88 to i32
  br i1 %.not89, label %diff_to_bool.exit116, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %Py_DECREF.exit94
  %.6 = phi i32 [ %spec.select, %bb.ai ], [ %.3, %Py_DECREF.exit94 ] ; 6 uses
  switch i32 %2, label %bb.aq [
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 0, label %bb.am
    i32 4, label %bb.an
    i32 1, label %bb.ao
    i32 5, label %bb.ap
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dh = icmp eq i32 %.6, 0
  %_Py_TrueStruct._Py_FalseStruct.i124 = select i1 %i.dh, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit116

bb.al:                                            ; preds = %bb.aj
  %.not.i122 = icmp eq i32 %.6, 0
  %_Py_FalseStruct._Py_TrueStruct.i123 = select i1 %.not.i122, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %diff_to_bool.exit116

bb.am:                                            ; preds = %bb.aj
  %i.di = icmp slt i32 %.6, 0
  %_Py_TrueStruct._Py_FalseStruct7.i121 = select i1 %i.di, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit116

bb.an:                                            ; preds = %bb.aj
  %i.dj = icmp sgt i32 %.6, 0
  %_Py_TrueStruct._Py_FalseStruct8.i120 = select i1 %i.dj, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit116

bb.ao:                                            ; preds = %bb.aj
  %i.dk = icmp slt i32 %.6, 1
  %_Py_TrueStruct._Py_FalseStruct9.i119 = select i1 %i.dk, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit116

bb.ap:                                            ; preds = %bb.aj
  %i.dl = icmp sgt i32 %.6, -1
  %_Py_TrueStruct._Py_FalseStruct10.i117 = select i1 %i.dl, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit116

bb.aq:                                            ; preds = %bb.aj
  unreachable

bb.ar:                                            ; preds = %delta_cmp.exit.thread
  switch i32 %2, label %bb.aw [
    i32 2, label %bb.as
    i32 3, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.dm = load i32, ptr @_Py_FalseStruct, align 8, !tbaa !35 ; 2 uses
  %i.dn = icmp ugt i32 %i.dm, -1073741825
  br i1 %i.dn, label %diff_to_bool.exit116, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.do = add nuw i32 %i.dm, 1
  store i32 %i.do, ptr @_Py_FalseStruct, align 8, !tbaa !35
  br label %diff_to_bool.exit116

bb.au:                                            ; preds = %bb.ar
  %i.dp = load i32, ptr @_Py_TrueStruct, align 8, !tbaa !35 ; 2 uses
  %i.dq = icmp ugt i32 %i.dp, -1073741825
  br i1 %i.dq, label %diff_to_bool.exit116, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dr = add nuw i32 %i.dp, 1
  store i32 %i.dr, ptr @_Py_TrueStruct, align 8, !tbaa !35
  br label %diff_to_bool.exit116

bb.aw:                                            ; preds = %bb.ar
  %i.ds = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.ds, ptr noundef nonnull @.str.208) #16
  br label %diff_to_bool.exit116

diff_to_bool.exit116:                             ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.ai, %bb.ac, %bb.aw, %datetime_utcoffset.exit102
  %.1 = phi ptr [ null, %datetime_utcoffset.exit102 ], [ null, %bb.t ], [ null, %bb.ac ], [ null, %bb.aw ], [ @_Py_FalseStruct, %bb.at ], [ %_Py_TrueStruct._Py_FalseStruct9.i119, %bb.ao ], [ null, %bb.ai ], [ %_Py_TrueStruct._Py_FalseStruct9.i110, %bb.z ], [ %_Py_TrueStruct._Py_FalseStruct.i115, %bb.v ], [ %_Py_TrueStruct._Py_FalseStruct8.i111, %bb.y ], [ %_Py_FalseStruct._Py_TrueStruct.i114, %bb.w ], [ %_Py_TrueStruct._Py_FalseStruct10.i108, %bb.aa ], [ %_Py_TrueStruct._Py_FalseStruct7.i112, %bb.x ], [ %_Py_TrueStruct._Py_FalseStruct.i124, %bb.ak ], [ %_Py_TrueStruct._Py_FalseStruct8.i120, %bb.an ], [ %_Py_FalseStruct._Py_TrueStruct.i123, %bb.al ], [ %_Py_TrueStruct._Py_FalseStruct10.i117, %bb.ap ], [ %_Py_TrueStruct._Py_FalseStruct7.i121, %bb.am ], [ @_Py_FalseStruct, %bb.as ], [ @_Py_TrueStruct, %bb.au ], [ @_Py_TrueStruct, %bb.av ] ; 4 uses
  %i.dt = load i32, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.dt, -1
  br i1 %.not.i, label %bb.ax, label %Py_DECREF.exit

bb.ax:                                            ; preds = %diff_to_bool.exit116
  %i.du = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.du, ptr %i.an, align 8, !tbaa !35
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.ay, label %Py_DECREF.exit

bb.ay:                                            ; preds = %bb.ax
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.an) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %diff_to_bool.exit116, %bb.ax, %bb.ay
  br i1 %i.au, label %diff_to_bool.exit, label %bb.az

bb.az:                                            ; preds = %Py_DECREF.exit
  %i.dw = load i32, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.dw, -1
  br i1 %.not.i.i, label %bb.ba, label %diff_to_bool.exit

bb.ba:                                            ; preds = %bb.az
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.at, align 8, !tbaa !35
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.bb, label %diff_to_bool.exit

bb.bb:                                            ; preds = %bb.ba
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.at) #16
  br label %diff_to_bool.exit

diff_to_bool.exit:                                ; preds = %bb.bb, %bb.ba, %bb.az, %Py_DECREF.exit, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %datetime_utcoffset.exit, %PyObject_TypeCheck.exit
  %.0 = phi ptr [ null, %datetime_utcoffset.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ %_Py_TrueStruct._Py_FalseStruct9.i, %bb.j ], [ %_Py_TrueStruct._Py_FalseStruct.i, %bb.f ], [ %_Py_TrueStruct._Py_FalseStruct8.i, %bb.i ], [ %_Py_FalseStruct._Py_TrueStruct.i, %bb.g ], [ %_Py_TrueStruct._Py_FalseStruct10.i, %bb.k ], [ %_Py_TrueStruct._Py_FalseStruct7.i, %bb.h ], [ %.1, %Py_DECREF.exit ], [ %.1, %bb.az ], [ %.1, %bb.ba ], [ %.1, %bb.bb ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_alloc(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %i.a = select i1 %.not, i64 40, i64 48
  %i.b = tail call ptr @PyObject_Malloc(i64 noundef %i.a) #16 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_NoMemory() #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !44
  %i.f = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_PyObject_Init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %0, align 8, !tbaa !35
  br label %_PyObject_Init.exit

_PyObject_Init.exit:                              ; preds = %bb.c, %bb.d
  tail call void @_Py_NewReference(ptr noundef nonnull %i.b) #16
  br label %bb.e

bb.e:                                             ; preds = %_PyObject_Init.exit, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %_PyObject_Init.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [9 x ptr], align 16               ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val33 = load i64, ptr %i.b, align 8, !tbaa !63 ; 5 uses
  %i.c = add i64 %.val33, -1
  %or.cond = icmp ult i64 %i.c, 2
  br i1 %or.cond, label %bb.b, label %Py_DECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 13 uses
  %i.f = icmp eq i64 %.val33, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026 = phi ptr [ %i.h, %bb.c ], [ @_Py_NoneStruct, %bb.b ] ; 2 uses
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %.val30 = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.j = getelementptr i8, ptr %.val30, i64 168
  %.val35 = load i64, ptr %i.j, align 8, !tbaa !81 ; 2 uses
  %i.k = and i64 %.val35, 134217728
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.e, i64 16
  %.val37 = load i64, ptr %i.l, align 8, !tbaa !63
  %i.m = icmp eq i64 %.val37, 10
  br i1 %i.m, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.e, i64 34
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = and i8 %i.o, 127
  %i.q = add nsw i8 %i.p, -1
  %i.r = icmp ult i8 %i.q, 12
  br i1 %i.r, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.s = tail call fastcc ptr @datetime_from_pickle(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %.026)
  br label %Py_DECREF.exit.thread

bb.h:                                             ; preds = %bb.d
  %i.t = and i64 %.val35, 268435456
  %.not28 = icmp eq i64 %i.t, 0
  br i1 %.not28, label %Py_DECREF.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %i.e, i64 16
  %.val36 = load i64, ptr %i.u, align 8, !tbaa !60
  %i.v = icmp eq i64 %.val36, 10
  br i1 %i.v, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %i.e, i64 32
  %i.x = load i32, ptr %i.w, align 8              ; 5 uses
  %i.y = lshr i32 %i.x, 2
  %i.z = and i32 %i.y, 7
  %i.aa = and i32 %i.x, 32
  %.not.i19.i = icmp eq i32 %i.aa, 0              ; 3 uses
  switch i32 %i.z, label %bb.q [
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = and i32 %i.x, 64
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %i.e, i64 56
  %.val4.i.i = load ptr, ptr %i.ac, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.l ], [ %.val4.i.i, %bb.m ]
  %i.ad = getelementptr i8, ptr %.0.i.i, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !35
  %i.af = zext i8 %i.ae to i32
  br label %PyUnicode_READ_CHAR.exit

bb.n:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = and i32 %i.x, 64
  %.not.i.i12.i = icmp eq i32 %i.ag, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.p:                                             ; preds = %bb.n
  %i.ah = getelementptr i8, ptr %i.e, i64 56
  %.val4.i16.i = load ptr, ptr %i.ah, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.p, %bb.o
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.o ], [ %.val4.i16.i, %bb.p ]
  %i.ai = getelementptr i8, ptr %.0.i15.i, i64 4
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !88
  %i.ak = zext i16 %i.aj to i32
  br label %PyUnicode_READ_CHAR.exit

bb.q:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = and i32 %i.x, 64
  %.not.i.i20.i = icmp eq i32 %i.al, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.s:                                             ; preds = %bb.q
  %i.am = getelementptr i8, ptr %i.e, i64 56
  %.val4.i24.i = load ptr, ptr %i.am, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.s, %bb.r
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.r ], [ %.val4.i24.i, %bb.s ]
  %i.an = getelementptr i8, ptr %.0.i23.i, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.af, %_PyUnicode_DATA.exit.i ], [ %i.ak, %_PyUnicode_DATA.exit17.i ], [ %i.ao, %_PyUnicode_DATA.exit25.i ]
  %i.ap = and i32 %.0.i, 127
  %i.aq = add nsw i32 %i.ap, -1
  %i.ar = icmp ult i32 %i.aq, 12
  br i1 %i.ar, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.as = tail call ptr @PyUnicode_AsLatin1String(ptr noundef nonnull %i.e) #16 ; 5 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.au = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !43
  %i.av = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.au) #16
  %.not29 = icmp eq i32 %i.av, 0
  br i1 %.not29, label %Py_DECREF.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.aw, ptr noundef nonnull @.str.240) #16
  br label %Py_DECREF.exit.thread

bb.w:                                             ; preds = %bb.t
  %i.ax = tail call fastcc ptr @datetime_from_pickle(ptr noundef %0, ptr noundef nonnull %i.as, ptr noundef %.026) ; 3 uses
  %i.ay = load i32, ptr %i.as, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i, label %bb.x, label %Py_DECREF.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.as, align 8, !tbaa !35
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.y, label %Py_DECREF.exit.thread

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.as) #16
  br label %Py_DECREF.exit.thread

Py_DECREF.exit:                                   ; preds = %bb.h, %PyUnicode_READ_CHAR.exit, %bb.i, %bb.e, %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.not.i38 = icmp eq ptr %2, null                ; 2 uses
  br i1 %.not.i38, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %Py_DECREF.exit
  %i.bb = getelementptr i8, ptr %2, i64 16
  %.val111.i = load i64, ptr %i.bb, align 8, !tbaa !64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %Py_DECREF.exit
  %i.bc = phi i64 [ %.val111.i, %bb.z ], [ 0, %Py_DECREF.exit ]
  %i.bd = add i64 %i.bc, %.val33                  ; 2 uses
  %i.be = add i64 %i.bd, -3                       ; 2 uses
  %i.bf = add i64 %.val33, -3
  %i.bg = icmp ult i64 %i.bf, 6
  %i.bh = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = and i1 %i.bg, %i.bi
  %or.cond7.i = and i1 %i.bj, %.not.i38
  br i1 %or.cond7.i, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.bh, i64 noundef %.val33, ptr noundef %2, ptr noundef null, ptr noundef nonnull @datetime_datetime._parser, i32 noundef 3, i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16, !inline_history !124 ; 2 uses
  %.not90.i = icmp eq ptr %i.bk, null
  br i1 %.not90.i, label %datetime_datetime.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.ab, %bb.aa
  %i.bl = phi ptr [ %i.bk, %bb.ab ], [ %i.bh, %bb.aa ] ; 9 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.bn = call i32 @PyLong_AsInt(ptr noundef %i.bm) #16, !inline_history !124 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread.i
  %i.bp = call ptr @PyErr_Occurred() #16, !inline_history !124
  %.not91.i = icmp eq ptr %i.bp, null
  br i1 %.not91.i, label %bb.ad, label %datetime_datetime.exit

bb.ad:                                            ; preds = %bb.ac, %.thread.i
  %i.bq = getelementptr i8, ptr %i.bl, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !43
  %i.bs = call i32 @PyLong_AsInt(ptr noundef %i.br) #16, !inline_history !124 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bu = call ptr @PyErr_Occurred() #16, !inline_history !124
  %.not92.i = icmp eq ptr %i.bu, null
  br i1 %.not92.i, label %bb.af, label %datetime_datetime.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bv = getelementptr i8, ptr %i.bl, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.bx = call i32 @PyLong_AsInt(ptr noundef %i.bw) #16, !inline_history !124 ; 2 uses
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bz = call ptr @PyErr_Occurred() #16, !inline_history !124
  %.not93.i = icmp eq ptr %i.bz, null
  br i1 %.not93.i, label %bb.ah, label %datetime_datetime.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
end_hunk_4
begin_hunk_5_@datetime_subtract:bb.a
  store i32 %i.r, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.s = icmp eq i32 %i.p, -1073741825
  br i1 %i.s, label %Py_DECREF.exit85, label %bb.g

bb.g:                                             ; preds = %_Py_NewRef.exit
  %i.t = add nuw i32 %i.p, 2                      ; 2 uses
  store i32 %i.t, ptr @_Py_NoneStruct, align 8, !tbaa !35
  br label %_Py_NewRef.exit111.thread

bb.h:                                             ; preds = %bb.e
  br i1 %.not76, label %datetime_utcoffset.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51
  br label %datetime_utcoffset.exit

datetime_utcoffset.exit:                          ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.v, %bb.i ], [ @_Py_NoneStruct, %bb.h ]
  %i.x = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.w, ptr noundef nonnull @.str.10, ptr noundef nonnull %0) ; 18 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Py_INCREF.exit, label %bb.j

bb.j:                                             ; preds = %datetime_utcoffset.exit
  %i.z = load i8, ptr %i.j, align 8, !tbaa !57
  %.not.i113 = icmp eq i8 %i.z, 0
  br i1 %.not.i113, label %datetime_utcoffset.exit114, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51
  br label %datetime_utcoffset.exit114

datetime_utcoffset.exit114:                       ; preds = %bb.j, %bb.k
  %i.ac = phi ptr [ %i.ab, %bb.k ], [ @_Py_NoneStruct, %bb.j ]
  %i.ad = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.ac, ptr noundef nonnull @.str.10, ptr noundef nonnull %1) ; 14 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.l, label %bb.o

bb.l:                                             ; preds = %datetime_utcoffset.exit114
  %i.af = load i32, ptr %i.x, align 8, !tbaa !35  ; 2 uses
  %.not.i96 = icmp sgt i32 %i.af, -1
  br i1 %.not.i96, label %bb.m, label %Py_INCREF.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.x, align 8, !tbaa !35
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %Py_INCREF.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #16
  br label %Py_INCREF.exit

bb.o:                                             ; preds = %datetime_utcoffset.exit114
  %i.ai = icmp ne ptr %i.x, @_Py_NoneStruct
  %i.aj = icmp eq ptr %i.ad, @_Py_NoneStruct
  %.not78 = xor i1 %i.ai, %i.aj
  br i1 %.not78, label %_Py_NewRef.exit111, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.ak, ptr noundef nonnull @.str.206) #16
  %i.al = load i32, ptr %i.x, align 8, !tbaa !35  ; 2 uses
  %.not.i94 = icmp sgt i32 %i.al, -1
  br i1 %.not.i94, label %bb.q, label %Py_DECREF.exit95

bb.q:                                             ; preds = %bb.p
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.x, align 8, !tbaa !35
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.r, label %Py_DECREF.exit95

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #16
  br label %Py_DECREF.exit95

Py_DECREF.exit95:                                 ; preds = %bb.p, %bb.q, %bb.r
  %i.ao = load i32, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not.i92 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i92, label %bb.s, label %Py_INCREF.exit

bb.s:                                             ; preds = %Py_DECREF.exit95
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !35
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.t, label %Py_INCREF.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #16
  br label %Py_INCREF.exit

_Py_NewRef.exit111:                               ; preds = %bb.o
  %.not79 = icmp eq ptr %i.x, %i.ad
  br i1 %.not79, label %_Py_NewRef.exit111.threadthread-pre-split, label %bb.u

bb.u:                                             ; preds = %_Py_NewRef.exit111
  %i.ar = getelementptr i8, ptr %i.x, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !32
  %i.at = getelementptr i8, ptr %i.ad, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !32
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %bb.v, label %delta_cmp.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.aw = getelementptr i8, ptr %i.x, i64 28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !33
  %i.ay = getelementptr i8, ptr %i.ad, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !33
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %delta_cmp.exit, label %delta_cmp.exit.thread

delta_cmp.exit:                                   ; preds = %bb.v
  %i.bb = getelementptr i8, ptr %i.x, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !34
  %i.bd = getelementptr i8, ptr %i.ad, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !34
  %.not80 = icmp eq i32 %i.bc, %i.be
  br i1 %.not80, label %_Py_NewRef.exit111.threadthread-pre-split, label %delta_cmp.exit.thread

delta_cmp.exit.thread:                            ; preds = %bb.u, %bb.v, %delta_cmp.exit
  %i.bf = tail call ptr @delta_subtract(ptr noundef nonnull %i.x, ptr noundef nonnull %i.ad) ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.w, label %_Py_NewRef.exit111.threadthread-pre-split

bb.w:                                             ; preds = %delta_cmp.exit.thread
  %i.bh = load i32, ptr %i.x, align 8, !tbaa !35  ; 2 uses
  %.not.i90 = icmp sgt i32 %i.bh, -1
  br i1 %.not.i90, label %bb.x, label %Py_DECREF.exit91

bb.x:                                             ; preds = %bb.w
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.x, align 8, !tbaa !35
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.y, label %Py_DECREF.exit91

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #16
  br label %Py_DECREF.exit91

Py_DECREF.exit91:                                 ; preds = %bb.w, %bb.x, %bb.y
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %.not.i88 = icmp sgt i32 %i.bk, -1
  br i1 %.not.i88, label %bb.z, label %Py_INCREF.exit

bb.z:                                             ; preds = %Py_DECREF.exit91
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.ad, align 8, !tbaa !35
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.aa, label %Py_INCREF.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #16
  br label %Py_INCREF.exit

_Py_NewRef.exit111.threadthread-pre-split:        ; preds = %_Py_NewRef.exit111, %delta_cmp.exit, %delta_cmp.exit.thread
  %.062.ph = phi ptr [ null, %_Py_NewRef.exit111 ], [ null, %delta_cmp.exit ], [ %i.bf, %delta_cmp.exit.thread ]
  %.pr = load i32, ptr %i.x, align 8, !tbaa !35
  br label %_Py_NewRef.exit111.thread

_Py_NewRef.exit111.thread:                        ; preds = %_Py_NewRef.exit111.threadthread-pre-split, %bb.g
  %i.bn = phi i32 [ %.pr, %_Py_NewRef.exit111.threadthread-pre-split ], [ %i.t, %bb.g ] ; 2 uses
  %.059133 = phi ptr [ %i.x, %_Py_NewRef.exit111.threadthread-pre-split ], [ @_Py_NoneStruct, %bb.g ] ; 2 uses
  %.061132 = phi ptr [ %i.ad, %_Py_NewRef.exit111.threadthread-pre-split ], [ @_Py_NoneStruct, %bb.g ] ; 3 uses
  %.062 = phi ptr [ %.062.ph, %_Py_NewRef.exit111.threadthread-pre-split ], [ null, %bb.g ] ; 3 uses
  %.not.i86 = icmp sgt i32 %i.bn, -1
  br i1 %.not.i86, label %bb.ab, label %Py_DECREF.exit87

bb.ab:                                            ; preds = %_Py_NewRef.exit111.thread
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %.059133, align 8, !tbaa !35
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.ac, label %Py_DECREF.exit87

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %.059133) #16
  br label %Py_DECREF.exit87

Py_DECREF.exit87:                                 ; preds = %_Py_NewRef.exit111.thread, %bb.ab, %bb.ac
  %.pr190 = load i32, ptr %.061132, align 8, !tbaa !35 ; 2 uses
  %.not.i84 = icmp sgt i32 %.pr190, -1
  br i1 %.not.i84, label %bb.ad, label %Py_DECREF.exit85

bb.ad:                                            ; preds = %Py_DECREF.exit87
  %i.bq = add nsw i32 %.pr190, -1                 ; 2 uses
  store i32 %i.bq, ptr %.061132, align 8, !tbaa !35
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.ae, label %Py_DECREF.exit85

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %.061132) #16
  br label %Py_DECREF.exit85

Py_DECREF.exit85:                                 ; preds = %bb.f, %_Py_NewRef.exit, %Py_DECREF.exit87, %bb.ad, %bb.ae
  %.062189194 = phi ptr [ %.062, %bb.ae ], [ %.062, %Py_DECREF.exit87 ], [ %.062, %bb.ad ], [ null, %_Py_NewRef.exit ], [ null, %bb.f ] ; 5 uses
  %i.bs = getelementptr i8, ptr %0, i64 25
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !35
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 8
  %i.bw = getelementptr i8, ptr %0, i64 26
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !35
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = or disjoint i32 %i.bv, %i.by            ; 3 uses
  %i.ca = getelementptr i8, ptr %0, i64 27
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !35  ; 2 uses
  %i.cc = getelementptr i8, ptr %0, i64 28
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !35
  %i.ce = zext i8 %i.cd to i32
  %i.cf = zext i8 %i.cb to i64
  %i.cg = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7  ; 4 uses
  %i.ci = icmp ugt i8 %i.cb, 2
  br i1 %i.ci, label %bb.af, label %ymd_to_ord.exit

bb.af:                                            ; preds = %Py_DECREF.exit85
  %i.cj = and i32 %i.by, 3
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ag, label %is_leap.exit.thread.i.i

bb.ag:                                            ; preds = %bb.af
  %.lhs.trunc = trunc nuw i32 %i.bz to i16        ; 2 uses
  %i.cl = urem i16 %.lhs.trunc, 100
  %.not.i.i.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i.i.i, label %is_leap.exit.i.i, label %is_leap.exit.thread6.i.i

is_leap.exit.thread6.i.i:                         ; preds = %bb.ag
  %i.cm = add i32 %i.ch, 1
  br label %ymd_to_ord.exit

is_leap.exit.i.i:                                 ; preds = %bb.ag
  %i.cn = urem i16 %.lhs.trunc, 400
  %.not.i.i = icmp eq i16 %i.cn, 0
  %i.co = add i32 %i.ch, 1
  br i1 %.not.i.i, label %ymd_to_ord.exit, label %is_leap.exit.thread.i.i

is_leap.exit.thread.i.i:                          ; preds = %is_leap.exit.i.i, %bb.af
  br label %ymd_to_ord.exit

ymd_to_ord.exit:                                  ; preds = %Py_DECREF.exit85, %is_leap.exit.thread6.i.i, %is_leap.exit.i.i, %is_leap.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.ch, %Py_DECREF.exit85 ], [ %i.ch, %is_leap.exit.thread.i.i ], [ %i.co, %is_leap.exit.i.i ], [ %i.cm, %is_leap.exit.thread6.i.i ]
  %i.cp = add nsw i32 %i.bz, -1                   ; 3 uses
  %i.cq = sdiv i32 %i.cp, 4
  %.neg.i.i = sdiv i32 %i.cp, -100
  %i.cr = sdiv i32 %i.cp, 400
  %i.cs = getelementptr i8, ptr %1, i64 25
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !35
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 8
  %i.cw = getelementptr i8, ptr %1, i64 26
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !35
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %i.cz = or disjoint i32 %i.cv, %i.cy            ; 3 uses
  %i.da = getelementptr i8, ptr %1, i64 27
  %i.db = load i8, ptr %i.da, align 1, !tbaa !35  ; 2 uses
  %i.dc = getelementptr i8, ptr %1, i64 28
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !35
  %i.de = zext i8 %i.dd to i32
  %i.df = zext i8 %i.db to i64
  %i.dg = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !7  ; 4 uses
  %i.di = icmp ugt i8 %i.db, 2
  br i1 %i.di, label %bb.ah, label %ymd_to_ord.exit122

bb.ah:                                            ; preds = %ymd_to_ord.exit
  %i.dj = and i32 %i.cy, 3
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ai, label %is_leap.exit.thread.i.i117

bb.ai:                                            ; preds = %bb.ah
  %.lhs.trunc146 = trunc nuw i32 %i.cz to i16     ; 2 uses
  %i.dl = urem i16 %.lhs.trunc146, 100
  %.not.i.i.i118 = icmp eq i16 %i.dl, 0
  br i1 %.not.i.i.i118, label %is_leap.exit.i.i120, label %is_leap.exit.thread6.i.i119

is_leap.exit.thread6.i.i119:                      ; preds = %bb.ai
  %i.dm = add i32 %i.dh, 1
  br label %ymd_to_ord.exit122

is_leap.exit.i.i120:                              ; preds = %bb.ai
  %i.dn = urem i16 %.lhs.trunc146, 400
  %.not.i.i121 = icmp eq i16 %i.dn, 0
  %i.do = add i32 %i.dh, 1
  br i1 %.not.i.i121, label %ymd_to_ord.exit122, label %is_leap.exit.thread.i.i117

is_leap.exit.thread.i.i117:                       ; preds = %is_leap.exit.i.i120, %bb.ah
  br label %ymd_to_ord.exit122

ymd_to_ord.exit122:                               ; preds = %ymd_to_ord.exit, %is_leap.exit.thread6.i.i119, %is_leap.exit.i.i120, %is_leap.exit.thread.i.i117
  %.0.i.i115 = phi i32 [ %i.dh, %ymd_to_ord.exit ], [ %i.dh, %is_leap.exit.thread.i.i117 ], [ %i.do, %is_leap.exit.i.i120 ], [ %i.dm, %is_leap.exit.thread6.i.i119 ]
  %i.dp = add nsw i32 %i.cz, -1                   ; 3 uses
  %.neg167 = sdiv i32 %i.dp, -4
  %.neg.i.i116.neg166 = sdiv i32 %i.dp, 100
  %.neg165 = sdiv i32 %i.dp, -400
  %i.dq = sub nsw i32 %i.bz, %i.cz
  %reass.mul = mul nsw i32 %i.dq, 365
  %.neg161 = add nuw nsw i32 %i.cq, %i.ce
  %.neg162 = add nsw i32 %.neg161, %.neg.i.i
  %.neg163 = add nsw i32 %.neg162, %i.cr
  %.neg164 = add i32 %.neg163, %.0.i.i
  %i.dr = sub i32 %.neg164, %i.de
  %i.ds = add i32 %i.dr, %.neg167
  %i.dt = add i32 %i.ds, %.neg.i.i116.neg166
  %i.du = add i32 %i.dt, %.neg165
  %i.dv = add i32 %i.du, %reass.mul
  %i.dw = sub i32 %i.dv, %.0.i.i115               ; 2 uses
  %i.dx = getelementptr i8, ptr %0, i64 29
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !35
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr i8, ptr %1, i64 29
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !35
  %i.ec = zext i8 %i.eb to i32
  %i.ed = sub nsw i32 %i.dz, %i.ec
  %i.ee = mul nsw i32 %i.ed, 3600
  %i.ef = getelementptr i8, ptr %0, i64 30
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !35
  %i.eh = zext i8 %i.eg to i32
  %i.ei = getelementptr i8, ptr %1, i64 30
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !35
  %i.ek = zext i8 %i.ej to i32
  %i.el = sub nsw i32 %i.eh, %i.ek
  %i.em = mul nsw i32 %i.el, 60
  %i.en = add nsw i32 %i.em, %i.ee
  %i.eo = getelementptr i8, ptr %0, i64 31
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !35
  %i.eq = zext i8 %i.ep to i32
  %i.er = getelementptr i8, ptr %1, i64 31
  %i.es = load i8, ptr %i.er, align 1, !tbaa !35
  %i.et = zext i8 %i.es to i32
  %i.eu = sub nsw i32 %i.eq, %i.et
  %i.ev = add nsw i32 %i.en, %i.eu                ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 32
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !35
  %i.ey = zext i8 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 16
  %i.fa = getelementptr i8, ptr %0, i64 33
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !35
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 8
  %i.fe = or disjoint i32 %i.fd, %i.ez
  %i.ff = getelementptr i8, ptr %0, i64 34
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !35
  %i.fh = zext i8 %i.fg to i32
  %i.fi = or disjoint i32 %i.fe, %i.fh
  %i.fj = getelementptr i8, ptr %1, i64 32
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !35
  %i.fl = zext i8 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 16
  %i.fn = getelementptr i8, ptr %1, i64 33
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !35
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 8
  %i.fr = or disjoint i32 %i.fq, %i.fm
  %i.fs = getelementptr i8, ptr %1, i64 34
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !35
  %i.fu = zext i8 %i.ft to i32
  %i.fv = or disjoint i32 %i.fr, %i.fu
  %i.fw = sub nsw i32 %i.fi, %i.fv                ; 4 uses
  %or.cond.i.i = icmp ugt i32 %i.fw, 999999
  br i1 %or.cond.i.i, label %normalize_pair.exit.i.i, label %._crit_edge.i.i

normalize_pair.exit.i.i:                          ; preds = %ymd_to_ord.exit122
  %i.fx = sdiv i32 %i.fw, 1000000                 ; 2 uses
  %.neg.i.i124 = mul nsw i32 %i.fx, -1000000
  %i.fy = add nsw i32 %.neg.i.i124, %i.fw         ; 3 uses
  %i.fz = icmp slt i32 %i.fy, 0
  %i.ga = select i1 %i.fz, i32 1000000, i32 0
  %storemerge.i.i.i.i = add nsw i32 %i.ga, %i.fy
  %.lobit.i.i.i.i = ashr i32 %i.fy, 31
  %.0.i.i.i.i = add nsw i32 %i.fx, %i.ev
  %i.gb = add nsw i32 %.0.i.i.i.i, %.lobit.i.i.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %normalize_pair.exit.i.i, %ymd_to_ord.exit122
  %.131.i = phi i32 [ %i.gb, %normalize_pair.exit.i.i ], [ %i.ev, %ymd_to_ord.exit122 ] ; 4 uses
  %.1.i = phi i32 [ %storemerge.i.i.i.i, %normalize_pair.exit.i.i ], [ %i.fw, %ymd_to_ord.exit122 ] ; 2 uses
  %or.cond9.i.i = icmp ugt i32 %.131.i, 86399
  br i1 %or.cond9.i.i, label %normalize_pair.exit14.i.i, label %normalize_d_s_us.exit.i

normalize_pair.exit14.i.i:                        ; preds = %._crit_edge.i.i
  %i.gc = sdiv i32 %.131.i, 86400                 ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.gc, -86400
  %i.gd = add nsw i32 %.neg15.i.i, %.131.i        ; 3 uses
  %i.ge = icmp slt i32 %i.gd, 0
  %i.gf = select i1 %i.ge, i32 86400, i32 0
  %storemerge.i.i11.i.i = add nsw i32 %i.gf, %i.gd
  %.lobit.i.i12.i.i = ashr i32 %i.gd, 31
  %.0.i.i13.i.i = add i32 %i.gc, %i.dw
  %i.gg = add i32 %.0.i.i13.i.i, %.lobit.i.i12.i.i
  br label %normalize_d_s_us.exit.i

normalize_d_s_us.exit.i:                          ; preds = %normalize_pair.exit14.i.i, %._crit_edge.i.i
  %.032.i = phi i32 [ %i.dw, %._crit_edge.i.i ], [ %i.gg, %normalize_pair.exit14.i.i ] ; 4 uses
  %.030.i = phi i32 [ %.131.i, %._crit_edge.i.i ], [ %storemerge.i.i11.i.i, %normalize_pair.exit14.i.i ] ; 2 uses
  %i.gh = add i32 %.032.i, 999999999
  %or.cond.i16.i = icmp ult i32 %i.gh, 1999999999
  br i1 %or.cond.i16.i, label %check_delta_day_range.exit.i, label %check_delta_day_range.exit.thread.i

check_delta_day_range.exit.thread.i:              ; preds = %normalize_d_s_us.exit.i
  %i.gi = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !43
  %i.gj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gi, ptr noundef nonnull @.str.71, i32 noundef %.032.i, i32 noundef 999999999) #16, !inline_history !24 ; 0 uses
  br label %Py_INCREF.exit

check_delta_day_range.exit.i:                     ; preds = %normalize_d_s_us.exit.i
  %i.gk = or i32 %.032.i, %.1.i
  %i.gl = or i32 %i.gk, %.030.i
  %or.cond3.i.i = icmp ne i32 %i.gl, 0
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.gm = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.gm
  br i1 %or.cond.i17.not.i, label %bb.aj, label %new_delta_ex.exit

bb.aj:                                            ; preds = %check_delta_day_range.exit.i
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !11
  %i.go = tail call ptr %i.gn(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !24 ; 6 uses
  %.not15.i = icmp eq ptr %i.go, null
  br i1 %.not15.i, label %Py_INCREF.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gp = getelementptr i8, ptr %i.go, i64 16
  store i64 -1, ptr %i.gp, align 8, !tbaa !30
  %i.gq = getelementptr i8, ptr %i.go, i64 24
  store i32 %.032.i, ptr %i.gq, align 8, !tbaa !32
  %i.gr = getelementptr i8, ptr %i.go, i64 28
  store i32 %.030.i, ptr %i.gr, align 4, !tbaa !33
  %i.gs = getelementptr i8, ptr %i.go, i64 32
  store i32 %.1.i, ptr %i.gs, align 8, !tbaa !34
  br label %new_delta_ex.exit

new_delta_ex.exit:                                ; preds = %bb.ak, %check_delta_day_range.exit.i
  %.0.i123 = phi ptr [ @zero_delta, %check_delta_day_range.exit.i ], [ %i.go, %bb.ak ] ; 5 uses
  %.not81 = icmp eq ptr %.062189194, null
  br i1 %.not81, label %Py_DECREF.exit97, label %bb.al

bb.al:                                            ; preds = %new_delta_ex.exit
  %i.gt = tail call ptr @delta_subtract(ptr noundef nonnull %.0.i123, ptr noundef nonnull %.062189194) ; 3 uses
  %i.gu = load i32, ptr %.0.i123, align 8, !tbaa !35 ; 2 uses
  %.not.i82 = icmp sgt i32 %i.gu, -1
  br i1 %.not.i82, label %bb.am, label %Py_DECREF.exit83

bb.am:                                            ; preds = %bb.al
  %i.gv = add nsw i32 %i.gu, -1                   ; 2 uses
  store i32 %i.gv, ptr %.0.i123, align 8, !tbaa !35
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.an, label %Py_DECREF.exit83

bb.an:                                            ; preds = %bb.am
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i123) #16
  br label %Py_DECREF.exit83

Py_DECREF.exit83:                                 ; preds = %bb.al, %bb.am, %bb.an
  %i.gx = load i32, ptr %.062189194, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.gx, -1
  br i1 %.not.i, label %bb.ao, label %Py_DECREF.exit97

bb.ao:                                            ; preds = %Py_DECREF.exit83
  %i.gy = add nsw i32 %i.gx, -1                   ; 2 uses
  store i32 %i.gy, ptr %.062189194, align 8, !tbaa !35
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.ap, label %Py_DECREF.exit97

bb.ap:                                            ; preds = %bb.ao
  tail call void @_Py_Dealloc(ptr noundef nonnull %.062189194) #16
  br label %Py_DECREF.exit97

bb.aq:                                            ; preds = %PyObject_TypeCheck.exit110
  %.val = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
  %.not.i125 = icmp eq ptr %.val, @PyDateTime_DeltaType
  br i1 %.not.i125, label %PyObject_TypeCheck.exit126.thread, label %PyObject_TypeCheck.exit126

PyObject_TypeCheck.exit126:                       ; preds = %bb.aq
  %i.ha = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not151 = icmp eq i32 %i.ha, 0
  br i1 %.not151, label %Py_DECREF.exit97.thread141, label %PyObject_TypeCheck.exit126.thread

PyObject_TypeCheck.exit126.thread:                ; preds = %bb.aq, %PyObject_TypeCheck.exit126
  %i.hb = tail call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef -1)
  br label %Py_DECREF.exit97

Py_DECREF.exit97:                                 ; preds = %new_delta_ex.exit, %Py_DECREF.exit83, %bb.ao, %bb.ap, %PyObject_TypeCheck.exit126.thread
  %.2 = phi ptr [ %i.gt, %Py_DECREF.exit83 ], [ %i.hb, %PyObject_TypeCheck.exit126.thread ], [ %i.gt, %bb.ao ], [ %.0.i123, %new_delta_ex.exit ], [ %i.gt, %bb.ap ] ; 2 uses
  %i.hc = icmp eq ptr %.2, @_Py_NotImplementedStruct
  br i1 %i.hc, label %Py_DECREF.exit97.thread141, label %Py_INCREF.exit

Py_DECREF.exit97.thread141:                       ; preds = %PyObject_TypeCheck.exit126, %PyObject_TypeCheck.exit, %Py_DECREF.exit97
  %i.hd = load i32, ptr @_Py_NotImplementedStruct, align 8, !tbaa !35 ; 2 uses
  %i.he = icmp ugt i32 %i.hd, -1073741825
  br i1 %i.he, label %Py_INCREF.exit, label %bb.ar

bb.ar:                                            ; preds = %Py_DECREF.exit97.thread141
  %i.hf = add nuw i32 %i.hd, 1
  store i32 %i.hf, ptr @_Py_NotImplementedStruct, align 8, !tbaa !35
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.aj, %check_delta_day_range.exit.thread.i, %bb.z, %Py_DECREF.exit91, %bb.s, %Py_DECREF.exit95, %bb.m, %bb.l, %bb.aa, %bb.n, %datetime_utcoffset.exit, %bb.t, %bb.ar, %Py_DECREF.exit97.thread141, %Py_DECREF.exit97
  %.1 = phi ptr [ @_Py_NotImplementedStruct, %bb.ar ], [ %.2, %Py_DECREF.exit97 ], [ @_Py_NotImplementedStruct, %Py_DECREF.exit97.thread141 ], [ null, %bb.t ], [ null, %datetime_utcoffset.exit ], [ null, %bb.n ], [ null, %bb.aa ], [ null, %bb.l ], [ null, %bb.m ], [ null, %Py_DECREF.exit95 ], [ null, %bb.s ], [ null, %Py_DECREF.exit91 ], [ null, %bb.z ], [ null, %check_delta_day_range.exit.thread.i ], [ null, %bb.aj ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @pep495_eq_exception(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(address) %2, ptr noundef readonly captures(address) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @get_flip_fold_offset(ptr noundef %0) ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.a, %2
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %delta_cmp.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.a, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33
  %i.j = getelementptr i8, ptr %2, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %delta_cmp.exit, label %delta_cmp.exit.thread

delta_cmp.exit:                                   ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.a, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr i8, ptr %2, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !34
  %.not21 = icmp eq i32 %i.n, %i.p
  br i1 %.not21, label %bb.e, label %delta_cmp.exit.thread

bb.e:                                             ; preds = %delta_cmp.exit, %bb.b
  %i.q = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i24 = icmp sgt i32 %i.q, -1
  br i1 %.not.i24, label %bb.f, label %Py_DECREF.exit25

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !35
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %Py_DECREF.exit25

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16
  br label %Py_DECREF.exit25

Py_DECREF.exit25:                                 ; preds = %bb.e, %bb.f, %bb.g
  %i.t = tail call fastcc ptr @get_flip_fold_offset(ptr noundef %1) ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit25
end_hunk_5
begin_hunk_6_@datetime_gettimetz
define internal ptr @datetime_gettimetz(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 29
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = getelementptr i8, ptr %0, i64 30
  %i.d = load i8, ptr %i.c, align 1, !tbaa !35
  %i.e = getelementptr i8, ptr %0, i64 31
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load i8, ptr %i.g, align 1, !tbaa !35
  %i.i = getelementptr i8, ptr %0, i64 33
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35
  %i.k = getelementptr i8, ptr %0, i64 34
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load i8, ptr %i.m, align 8, !tbaa !57
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  %i.r = zext i8 %i.h to i32
  %i.s = shl nuw nsw i32 %i.r, 16
  %i.t = zext i8 %i.j to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = or disjoint i32 %i.u, %i.s
  %i.w = zext i8 %i.l to i32
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = zext i8 %i.f to i32
  %i.z = zext i8 %i.d to i32
  %i.aa = zext i8 %i.b to i32
  %i.ab = getelementptr i8, ptr %0, i64 35
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !52
  %i.ad = zext i8 %i.ac to i32
  %i.ae = tail call ptr @new_time_ex2(i32 noundef %i.aa, i32 noundef %i.z, i32 noundef %i.y, i32 noundef %i.x, ptr noundef %i.q, i32 noundef %i.ad, ptr noundef nonnull @PyDateTime_TimeType)
  ret ptr %i.ae
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_ctime(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 29
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = getelementptr i8, ptr %0, i64 30
  %i.d = load i8, ptr %i.c, align 1, !tbaa !35
  %i.e = getelementptr i8, ptr %0, i64 31
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = getelementptr i8, ptr %0, i64 25
  %i.h = load i8, ptr %i.g, align 1, !tbaa !35
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = getelementptr i8, ptr %0, i64 26
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = or disjoint i32 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 27
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35    ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 28
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = zext i8 %i.p to i64                      ; 2 uses
  %i.t = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7    ; 4 uses
  %i.v = icmp ugt i8 %i.p, 2
  br i1 %i.v, label %bb.b, label %format_ctime.exit

bb.b:                                             ; preds = %bb.a
  %i.w = and i32 %i.m, 3
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %is_leap.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %.lhs.trunc.i.i = trunc nuw i32 %i.n to i16     ; 2 uses
  %i.y = urem i16 %.lhs.trunc.i.i, 100
  %.not.i.i.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %is_leap.exit.i.i.i.i, label %is_leap.exit.thread6.i.i.i.i

is_leap.exit.thread6.i.i.i.i:                     ; preds = %bb.c
  %i.z = add i32 %i.u, 1
  br label %format_ctime.exit

is_leap.exit.i.i.i.i:                             ; preds = %bb.c
  %i.aa = urem i16 %.lhs.trunc.i.i, 400
  %.not.i.i.i.i = icmp eq i16 %i.aa, 0
  %i.ab = add i32 %i.u, 1
  br i1 %.not.i.i.i.i, label %format_ctime.exit, label %is_leap.exit.thread.i.i.i.i

is_leap.exit.thread.i.i.i.i:                      ; preds = %is_leap.exit.i.i.i.i, %bb.b
  br label %format_ctime.exit

format_ctime.exit:                                ; preds = %bb.a, %is_leap.exit.thread6.i.i.i.i, %is_leap.exit.i.i.i.i, %is_leap.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.a ], [ %i.u, %is_leap.exit.thread.i.i.i.i ], [ %i.ab, %is_leap.exit.i.i.i.i ], [ %i.z, %is_leap.exit.thread6.i.i.i.i ]
  %i.ac = zext i8 %i.f to i32
  %i.ad = zext i8 %i.d to i32
  %i.ae = zext i8 %i.b to i32
  %i.af = zext i8 %i.r to i32                     ; 2 uses
  %i.ag = add nsw i32 %i.n, -1                    ; 4 uses
  %i.ah = mul nsw i32 %i.ag, 365
  %i.ai = sdiv i32 %i.ag, 4
  %.neg.i.i.i.i = sdiv i32 %i.ag, -100
  %i.aj = sdiv i32 %i.ag, 400
  %i.ak = add nuw nsw i32 %i.af, 6
  %i.al = add nuw nsw i32 %i.ak, %i.ai
  %i.am = add nsw i32 %i.al, %i.ah
  %i.an = add nsw i32 %i.am, %.neg.i.i.i.i
  %i.ao = add nsw i32 %i.an, %i.aj
  %i.ap = add i32 %i.ao, %.0.i.i.i.i
  %i.aq = srem i32 %i.ap, 7
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [8 x i8], ptr @format_ctime.DayNames, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102
  %i.au = getelementptr [8 x i8], ptr @format_ctime.MonthNames, i64 %i.s
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !102
  %i.ax = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.134, ptr noundef %i.at, ptr noundef %i.aw, i32 noundef %i.af, i32 noundef range(i32 0, 256) %i.ae, i32 noundef range(i32 0, 256) %i.ad, i32 noundef range(i32 0, 256) %i.ac, i32 noundef %i.n) #16
  ret ptr %i.ax
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_timetuple(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %Py_DECREF.exit29.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %.not25 = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %.not25, label %Py_DECREF.exit29.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.d, ptr noundef nonnull @.str.12, ptr noundef nonnull %0) ; 8 uses
  %.not27 = icmp eq ptr %i.e, null
  br i1 %.not27, label %Py_DECREF.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not26 = icmp eq ptr %i.e, @_Py_NoneStruct
  br i1 %.not26, label %.split, label %.split22

.split:                                           ; preds = %bb.d
  %i.f = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i28 = icmp sgt i32 %i.f, -1
  br i1 %.not.i28, label %bb.e, label %Py_DECREF.exit29.thread

bb.e:                                             ; preds = %.split
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %Py_DECREF.exit29.thread.sink.split, label %Py_DECREF.exit29.thread

.split22:                                         ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.e, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32
  %.not.i31 = icmp eq i32 %i.j, 0
  br i1 %.not.i31, label %bb.f, label %delta_bool.exit

bb.f:                                             ; preds = %.split22
  %i.k = getelementptr i8, ptr %i.e, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33
  %.not3.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i, label %bb.g, label %delta_bool.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.e, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  br label %delta_bool.exit

delta_bool.exit:                                  ; preds = %.split22, %bb.f, %bb.g
  %i.q = phi i32 [ 1, %bb.f ], [ 1, %.split22 ], [ %i.p, %bb.g ] ; 3 uses
  %i.r = load i32, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit29.thread

bb.h:                                             ; preds = %delta_bool.exit
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !35
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit29.thread.sink.split, label %Py_DECREF.exit29.thread

Py_DECREF.exit29.thread.sink.split:               ; preds = %bb.h, %bb.e
  %_Py_NoneStruct.sink = phi ptr [ @_Py_NoneStruct, %bb.e ], [ %i.e, %bb.h ]
  %.2.ph = phi i32 [ -1, %bb.e ], [ %i.q, %bb.h ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %_Py_NoneStruct.sink) #16
  br label %Py_DECREF.exit29.thread

Py_DECREF.exit29.thread:                          ; preds = %Py_DECREF.exit29.thread.sink.split, %.split, %bb.e, %delta_bool.exit, %bb.h, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %.split ], [ %i.q, %bb.h ], [ %i.q, %delta_bool.exit ], [ -1, %bb.e ], [ %.2.ph, %Py_DECREF.exit29.thread.sink.split ]
  %i.u = getelementptr i8, ptr %0, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr i8, ptr %0, i64 26
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.x, %i.aa
  %i.ac = getelementptr i8, ptr %0, i64 27
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr i8, ptr %0, i64 28
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr i8, ptr %0, i64 29
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr i8, ptr %0, i64 30
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %0, i64 31
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i32
  %i.ar = tail call fastcc ptr @build_struct_time(i32 noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %.2)
  br label %Py_DECREF.exit29

Py_DECREF.exit29:                                 ; preds = %bb.c, %Py_DECREF.exit29.thread
  %.1 = phi ptr [ %i.ar, %Py_DECREF.exit29.thread ], [ null, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_timestamp(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %.not31 = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %.not31, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @PyInterpreterState_Get() #16
  %i.f = tail call fastcc ptr @get_current_module(ptr noundef %i.e) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_get_current_state.exit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyErr_Occurred() #16      ; 0 uses
  %i.i = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.41) #16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  br label %_get_current_state.exit

_get_current_state.exit:                          ; preds = %bb.d, %bb.c
  %.08.i = phi ptr [ %i.i, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  %i.j = getelementptr i8, ptr %.08.i, i64 24
  %.08.val.i = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr i8, ptr %.08.val.i, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.m = tail call ptr @datetime_subtract(ptr noundef nonnull %0, ptr noundef %i.l) ; 5 uses
  %i.n = load i32, ptr %.08.i, align 8, !tbaa !35 ; 2 uses
  %.not.i34 = icmp sgt i32 %i.n, -1
  br i1 %.not.i34, label %bb.e, label %Py_DECREF.exit35

bb.e:                                             ; preds = %_get_current_state.exit
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %.08.i, align 8, !tbaa !35
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %Py_DECREF.exit35

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %.08.i) #16
  br label %Py_DECREF.exit35

Py_DECREF.exit35:                                 ; preds = %_get_current_state.exit, %bb.e, %bb.f
  %.not33 = icmp eq ptr %i.m, null
  br i1 %.not33, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit35
  %i.q = tail call ptr @delta_total_seconds(ptr noundef nonnull %i.m, ptr poison) ; 3 uses
  %i.r = load i32, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.m, align 8, !tbaa !35
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #16
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.u = getelementptr i8, ptr %0, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr i8, ptr %0, i64 26
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.x, %i.aa
  %i.ac = getelementptr i8, ptr %0, i64 27
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr i8, ptr %0, i64 28
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr i8, ptr %0, i64 29
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr i8, ptr %0, i64 30
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %0, i64 31
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr i8, ptr %0, i64 35
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %i.at = zext i8 %i.as to i32
  %i.au = tail call fastcc i64 @local_to_seconds(i32 noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %i.at) ; 2 uses
  %.not32 = icmp eq i64 %i.au, -1
  br i1 %.not32, label %Py_DECREF.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i64 %i.au, -62135683200
  %i.aw = sitofp i64 %i.av to double
  %i.ax = getelementptr i8, ptr %0, i64 32
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 16
  %i.bb = getelementptr i8, ptr %0, i64 33
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !35
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = or disjoint i32 %i.be, %i.ba
  %i.bg = getelementptr i8, ptr %0, i64 34
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !35
  %i.bi = zext i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bf, %i.bi
  %i.bk = uitofp nneg i32 %i.bj to double
  %i.bl = fdiv double %i.bk, 1.000000e+06
  %i.bm = fadd double %i.bl, %i.aw
  %i.bn = tail call ptr @PyFloat_FromDouble(double noundef %i.bm) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.g, %bb.h, %bb.i, %bb.k, %Py_DECREF.exit35
  %.2 = phi ptr [ null, %Py_DECREF.exit35 ], [ %i.q, %bb.g ], [ %i.bn, %bb.k ], [ %i.q, %bb.i ], [ %i.q, %bb.h ], [ null, %bb.j ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_utctimetuple(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %i.e, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.h = add nuw i32 %i.f, 1                      ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.d, ptr noundef nonnull @.str.10, ptr noundef nonnull %0) ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_Py_NewRef.exit44.thread47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq ptr %i.i, @_Py_NoneStruct
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i40 = icmp sgt i32 %i.l, -1
  br i1 %.not.i40, label %bb.g, label %Py_DECREF.exit41

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit41

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #16
  br label %Py_DECREF.exit41

Py_DECREF.exit41:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.o = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %Py_DECREF.exit41
  %i.q = add nuw i32 %i.o, 1                      ; 2 uses
  store i32 %i.q, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit

bb.j:                                             ; preds = %bb.e
  %i.r = tail call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef -1) ; 3 uses
  %i.s = load i32, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %.not.i38 = icmp sgt i32 %i.s, -1
  br i1 %.not.i38, label %bb.k, label %_Py_NewRef.exit44

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.i, align 8, !tbaa !35
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %_Py_NewRef.exit44

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #16
  br label %_Py_NewRef.exit44

_Py_NewRef.exit44:                                ; preds = %bb.l, %bb.k, %bb.j
  %.not50 = icmp eq ptr %i.r, null
  br i1 %.not50, label %_Py_NewRef.exit44.thread47, label %_Py_NewRef.exit44._Py_NewRef.exit_crit_edge

_Py_NewRef.exit44._Py_NewRef.exit_crit_edge:      ; preds = %_Py_NewRef.exit44
  %.pre = load i32, ptr %i.r, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %_Py_NewRef.exit44._Py_NewRef.exit_crit_edge, %bb.i, %Py_DECREF.exit41, %bb.c, %.thread
  %i.v = phi i32 [ %.pre, %_Py_NewRef.exit44._Py_NewRef.exit_crit_edge ], [ %i.f, %.thread ], [ %i.h, %bb.c ], [ %i.o, %Py_DECREF.exit41 ], [ %i.q, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %i.r, %_Py_NewRef.exit44._Py_NewRef.exit_crit_edge ], [ %0, %.thread ], [ %0, %bb.c ], [ %0, %Py_DECREF.exit41 ], [ %0, %bb.i ] ; 9 uses
  %i.w = getelementptr i8, ptr %.2, i64 25
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = getelementptr i8, ptr %.2, i64 26
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.z, %i.ac
  %i.ae = getelementptr i8, ptr %.2, i64 27
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr i8, ptr %.2, i64 28
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = zext i8 %i.ai to i32
  %i.ak = getelementptr i8, ptr %.2, i64 29
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr i8, ptr %.2, i64 30
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr i8, ptr %.2, i64 31
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.as = zext i8 %i.ar to i32
  %.not.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %_Py_NewRef.exit
  %i.at = add nsw i32 %i.v, -1                    ; 2 uses
  store i32 %i.at, ptr %.2, align 8, !tbaa !35
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %_Py_NewRef.exit, %bb.m, %bb.n
  %i.av = tail call fastcc ptr @build_struct_time(i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef %i.aj, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.as, i32 noundef 0)
  br label %_Py_NewRef.exit44.thread47

_Py_NewRef.exit44.thread47:                       ; preds = %bb.d, %_Py_NewRef.exit44, %Py_DECREF.exit
  %.1 = phi ptr [ %i.av, %Py_DECREF.exit ], [ null, %_Py_NewRef.exit44 ], [ null, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_isoformat(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [2 x ptr], align 16               ; 3 uses
  %i.d = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %3, i64 16
  %.val50 = load i64, ptr %i.e, align 8, !tbaa !63
  %i.f = add i64 %.val50, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %2, 3
  %i.h = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.h, %i.g
  br i1 %or.cond5, label %.thread57, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.i = phi i64 [ %i.f, %.thread ], [ %2, %bb.b ]
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_datetime_isoformat._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c) #16 ; 2 uses
  %.not41 = icmp eq ptr %i.j, null
  br i1 %.not41, label %bb.ai, label %.thread57

.thread57:                                        ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.j, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.l = phi i64 [ %i.i, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %.not42 = icmp eq i64 %i.l, 0
  br i1 %.not42, label %bb.x, label %bb.d

bb.d:                                             ; preds = %.thread57
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !43   ; 11 uses
  %.not43 = icmp eq ptr %i.m, null
  br i1 %.not43, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val49 = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr i8, ptr %.val49, i64 168
  %.val52 = load i64, ptr %i.o, align 8, !tbaa !81
  %i.p = and i64 %.val52, 268435456
  %.not44 = icmp eq i64 %i.p, 0
  br i1 %.not44, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.231, ptr noundef nonnull %i.m) #16
  br label %bb.ai

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.m, i64 16
  %.val54 = load i64, ptr %i.q, align 8, !tbaa !60 ; 2 uses
  %.not45 = icmp eq i64 %.val54, 1
end_hunk_6
begin_hunk_7_@datetime_datetime_replace:bb.a
  %i.by = getelementptr i8, ptr %i.ba, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !43 ; 2 uses
  %.not136 = icmp eq ptr %i.bz, null
  br i1 %.not136, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bz) #16 ; 3 uses
  %i.cb = icmp eq i32 %i.ca, -1
  br i1 %i.cb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cc = call ptr @PyErr_Occurred() #16
  %.not137 = icmp eq ptr %i.cc, null
  br i1 %.not137, label %bb.z, label %datetime_datetime_replace_impl.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cd = add i64 %.3, -1                         ; 2 uses
  %.not138 = icmp eq i64 %i.cd, 0
  br i1 %.not138, label %.thread151, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.4 = phi i64 [ %i.cd, %bb.z ], [ %.3, %bb.w ]  ; 2 uses
  %.079 = phi i32 [ %i.ca, %bb.z ], [ %i.x, %bb.w ] ; 5 uses
  %i.ce = getelementptr i8, ptr %i.ba, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !43 ; 2 uses
  %.not139 = icmp eq ptr %i.cf, null
  br i1 %.not139, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = call i32 @PyLong_AsInt(ptr noundef nonnull %i.cf) #16 ; 3 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ci = call ptr @PyErr_Occurred() #16
  %.not140 = icmp eq ptr %i.ci, null
  br i1 %.not140, label %bb.ad, label %datetime_datetime_replace_impl.exit

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cj = add i64 %.4, -1                         ; 2 uses
  %.not141 = icmp eq i64 %i.cj, 0
  br i1 %.not141, label %.thread151, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.5 = phi i64 [ %i.cj, %bb.ad ], [ %.4, %bb.aa ] ; 2 uses
  %.077 = phi i32 [ %i.cg, %bb.ad ], [ %i.aa, %bb.aa ] ; 4 uses
  %i.ck = getelementptr i8, ptr %i.ba, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !43 ; 2 uses
  %.not142 = icmp eq ptr %i.cl, null
  br i1 %.not142, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = call i32 @PyLong_AsInt(ptr noundef nonnull %i.cl) #16 ; 3 uses
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.co = call ptr @PyErr_Occurred() #16
  %.not143 = icmp eq ptr %i.co, null
  br i1 %.not143, label %bb.ah, label %datetime_datetime_replace_impl.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cp = add i64 %.5, -1                         ; 2 uses
  %.not144 = icmp eq i64 %i.cp, 0
  br i1 %.not144, label %.thread151, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.6 = phi i64 [ %i.cp, %bb.ah ], [ %.5, %bb.ae ]
  %.076 = phi i32 [ %i.cm, %bb.ah ], [ %i.an, %bb.ae ] ; 3 uses
  %i.cq = getelementptr i8, ptr %i.ba, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !43 ; 3 uses
  %.not145 = icmp eq ptr %i.cr, null
  br i1 %.not145, label %.thread170, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not146 = icmp eq i64 %.6, 1
  br i1 %.not146, label %.thread151, label %.thread170

.thread170:                                       ; preds = %bb.ai, %bb.aj
  %.075188 = phi ptr [ %i.cr, %bb.aj ], [ %i.as, %bb.ai ] ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ba, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !43
  %i.cu = call i32 @PyLong_AsInt(ptr noundef %i.ct) #16 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, -1
  br i1 %i.cv, label %bb.ak, label %.thread151

bb.ak:                                            ; preds = %.thread170
  %i.cw = call ptr @PyErr_Occurred() #16
  %.not147 = icmp eq ptr %i.cw, null
  br i1 %.not147, label %.thread151, label %datetime_datetime_replace_impl.exit

.thread151:                                       ; preds = %bb.j, %bb.n, %bb.r, %bb.v, %bb.z, %bb.ad, %bb.ah, %.thread, %.thread170, %bb.ak, %bb.aj
  %.075169 = phi ptr [ %.075188, %bb.ak ], [ %.075188, %.thread170 ], [ %i.cr, %bb.aj ], [ %i.as, %.thread ], [ %i.as, %bb.ah ], [ %i.as, %bb.ad ], [ %i.as, %bb.z ], [ %i.as, %bb.v ], [ %i.as, %bb.r ], [ %i.as, %bb.n ], [ %i.as, %bb.j ] ; 2 uses
  %.1168 = phi i32 [ %.076, %bb.ak ], [ %.076, %.thread170 ], [ %.076, %bb.aj ], [ %i.an, %.thread ], [ %i.cm, %bb.ah ], [ %i.an, %bb.ad ], [ %i.an, %bb.z ], [ %i.an, %bb.v ], [ %i.an, %bb.r ], [ %i.an, %bb.n ], [ %i.an, %bb.j ] ; 2 uses
  %.178167 = phi i32 [ %.077, %bb.ak ], [ %.077, %.thread170 ], [ %.077, %bb.aj ], [ %i.aa, %.thread ], [ %.077, %bb.ah ], [ %i.cg, %bb.ad ], [ %i.aa, %bb.z ], [ %i.aa, %bb.v ], [ %i.aa, %bb.r ], [ %i.aa, %bb.n ], [ %i.aa, %bb.j ] ; 2 uses
  %.180166 = phi i32 [ %.079, %bb.ak ], [ %.079, %.thread170 ], [ %.079, %bb.aj ], [ %i.x, %.thread ], [ %.079, %bb.ah ], [ %.079, %bb.ad ], [ %i.ca, %bb.z ], [ %i.x, %bb.v ], [ %i.x, %bb.r ], [ %i.x, %bb.n ], [ %i.x, %bb.j ] ; 2 uses
  %.182165 = phi i32 [ %.081, %bb.ak ], [ %.081, %.thread170 ], [ %.081, %bb.aj ], [ %i.u, %.thread ], [ %.081, %bb.ah ], [ %.081, %bb.ad ], [ %.081, %bb.z ], [ %i.bu, %bb.v ], [ %i.u, %bb.r ], [ %i.u, %bb.n ], [ %i.u, %bb.j ] ; 2 uses
  %.184164 = phi i32 [ %.083, %bb.ak ], [ %.083, %.thread170 ], [ %.083, %bb.aj ], [ %i.r, %.thread ], [ %.083, %bb.ah ], [ %.083, %bb.ad ], [ %.083, %bb.z ], [ %.083, %bb.v ], [ %i.bo, %bb.r ], [ %i.r, %bb.n ], [ %i.r, %bb.j ] ; 2 uses
  %.186163 = phi i32 [ %.085, %bb.ak ], [ %.085, %.thread170 ], [ %.085, %bb.aj ], [ %i.o, %.thread ], [ %.085, %bb.ah ], [ %.085, %bb.ad ], [ %.085, %bb.z ], [ %.085, %bb.v ], [ %.085, %bb.r ], [ %i.bi, %bb.n ], [ %i.o, %bb.j ] ; 2 uses
  %.188162 = phi i32 [ %.087, %bb.ak ], [ %.087, %.thread170 ], [ %.087, %bb.aj ], [ %i.l, %.thread ], [ %.087, %bb.ah ], [ %.087, %bb.ad ], [ %.087, %bb.z ], [ %.087, %bb.v ], [ %.087, %bb.r ], [ %.087, %bb.n ], [ %i.bc, %bb.j ] ; 2 uses
  %.0 = phi i32 [ -1, %bb.ak ], [ %i.cu, %.thread170 ], [ %i.av, %bb.aj ], [ %i.av, %.thread ], [ %i.av, %bb.ah ], [ %i.av, %bb.ad ], [ %i.av, %bb.z ], [ %i.av, %bb.v ], [ %i.av, %bb.r ], [ %i.av, %bb.n ], [ %i.av, %bb.j ] ; 2 uses
  %i.cx = getelementptr i8, ptr %0, i64 8
  %.val149 = load ptr, ptr %i.cx, align 8, !tbaa !44 ; 2 uses
  %i.cy = icmp eq ptr %.val149, @PyDateTime_DateTimeType
  br i1 %i.cy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread151
  %i.cz = call ptr @new_datetime_ex2(i32 noundef %.188162, i32 noundef %.186163, i32 noundef %.184164, i32 noundef %.182165, i32 noundef %.180166, i32 noundef %.178167, i32 noundef %.1168, ptr noundef %.075169, i32 noundef %.0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !147
  br label %datetime_datetime_replace_impl.exit

bb.am:                                            ; preds = %.thread151
  %i.da = call ptr (ptr, i32, ptr, ...) @call_subclass_fold(ptr noundef %.val149, i32 noundef %.0, ptr noundef nonnull @.str.29, i32 noundef %.188162, i32 noundef %.186163, i32 noundef %.184164, i32 noundef %.182165, i32 noundef %.180166, i32 noundef %.178167, i32 noundef %.1168, ptr noundef %.075169), !inline_history !147
  br label %datetime_datetime_replace_impl.exit

datetime_datetime_replace_impl.exit:              ; preds = %bb.am, %bb.al, %bb.ak, %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.m, %bb.i, %bb.f
  %.091 = phi ptr [ null, %bb.i ], [ null, %bb.m ], [ null, %bb.q ], [ null, %bb.u ], [ null, %bb.y ], [ null, %bb.ac ], [ null, %bb.ag ], [ null, %bb.ak ], [ null, %bb.f ], [ %i.cz, %bb.al ], [ %i.da, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.091
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_astimezone(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 2
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread29, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %.val, %.thread ], [ 0, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_datetime_astimezone._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not25 = icmp eq ptr %i.g, null
  br i1 %.not25, label %datetime_datetime_astimezone_impl.exit, label %.thread29

.thread29:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]
  %i.i = phi i64 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.j = sub i64 0, %i.i
  %.not26 = icmp eq i64 %2, %i.j
  br i1 %.not26, label %.thread31, label %bb.d

bb.d:                                             ; preds = %.thread29
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !43   ; 4 uses
  %i.l = icmp eq ptr %i.k, @_Py_NoneStruct
  br i1 %i.l, label %.thread31, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.k, i64 8        ; 2 uses
  %.val4.i.i = load ptr, ptr %i.m, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val4.i.i, @PyDateTime_TZInfoType
  br i1 %.not.i.i.i, label %.thread31, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.e
  %i.n = call i32 @PyType_IsSubtype(ptr noundef %.val4.i.i, ptr noundef nonnull @PyDateTime_TZInfoType) #16, !inline_history !148
  %.not6.i.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i.i, label %check_tzinfo_subclass.exit.i, label %.thread31

check_tzinfo_subclass.exit.i:                     ; preds = %PyObject_TypeCheck.exit.i.i
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.p = getelementptr i8, ptr %.val.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.200, ptr noundef %i.q) #16, !inline_history !148 ; 0 uses
  br label %datetime_datetime_astimezone_impl.exit

.thread31:                                        ; preds = %.thread29, %PyObject_TypeCheck.exit.i.i, %bb.e, %bb.d
  %i.s = phi i1 [ true, %bb.d ], [ false, %PyObject_TypeCheck.exit.i.i ], [ false, %bb.e ], [ true, %.thread29 ]
  %.033 = phi ptr [ @_Py_NoneStruct, %bb.d ], [ %i.k, %PyObject_TypeCheck.exit.i.i ], [ %i.k, %bb.e ], [ @_Py_NoneStruct, %.thread29 ] ; 5 uses
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !57
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %Py_DECREF.exit84.i, label %bb.f

bb.f:                                             ; preds = %.thread31
  %i.v = getelementptr i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51   ; 5 uses
  %i.x = icmp eq ptr %i.w, @_Py_NoneStruct
  br i1 %i.x, label %Py_DECREF.exit84.i, label %bb.h

Py_DECREF.exit84.i:                               ; preds = %bb.r, %bb.s, %bb.t, %.thread31, %bb.f
  %i.y = getelementptr i8, ptr %0, i64 35
  %i.z = load i8, ptr %i.y, align 1, !tbaa !52    ; 3 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr i8, ptr %0, i64 25        ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr i8, ptr %0, i64 26        ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah
  %i.aj = getelementptr i8, ptr %0, i64 27        ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr i8, ptr %0, i64 29        ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !35
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr i8, ptr %0, i64 30        ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !35
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr i8, ptr %0, i64 31        ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !35
  %i.ax = zext i8 %i.aw to i32
  %i.ay = call fastcc i64 @local_to_seconds(i32 noundef %i.ai, i32 noundef %i.al, i32 noundef %i.ao, i32 noundef %i.ar, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.aa), !inline_history !149 ; 3 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %datetime_datetime_astimezone_impl.exit, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit84.i
  %i.ba = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = load i8, ptr %i.af, align 1, !tbaa !35
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.bh = zext i8 %i.bg to i32
  %i.bi = load i8, ptr %i.am, align 1, !tbaa !35
  %i.bj = zext i8 %i.bi to i32
  %i.bk = load i8, ptr %i.ap, align 1, !tbaa !35
  %i.bl = zext i8 %i.bk to i32
  %i.bm = load i8, ptr %i.as, align 1, !tbaa !35
  %i.bn = zext i8 %i.bm to i32
  %i.bo = load i8, ptr %i.av, align 1, !tbaa !35
  %i.bp = zext i8 %i.bo to i32
  %.not.i99.i = icmp eq i8 %i.z, 0
  %i.bq = zext i1 %.not.i99.i to i32
  %i.br = call fastcc i64 @local_to_seconds(i32 noundef %i.bf, i32 noundef %i.bh, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef %i.bn, i32 noundef %i.bp, i32 noundef %i.bq), !inline_history !149 ; 3 uses
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %datetime_datetime_astimezone_impl.exit, label %local_timezone_from_local.exit.i

local_timezone_from_local.exit.i:                 ; preds = %bb.g
  %i.bt = icmp sgt i64 %i.br, %i.ay
  %i.bu = zext i1 %i.bt to i8
  %.not31.i.i = icmp eq i8 %i.z, %i.bu
  %.027.i.i = select i1 %.not31.i.i, i64 %i.br, i64 %i.ay
  %i.bv = add nsw i64 %.027.i.i, -62135683200
  %i.bw = call fastcc ptr @local_timezone_from_timestamp(i64 noundef %i.bv), !inline_history !149 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %datetime_datetime_astimezone_impl.exit, label %_Py_NewRef.exit.i

bb.h:                                             ; preds = %bb.f
  %i.by = load i32, ptr %i.w, align 8, !tbaa !35  ; 2 uses
  %i.bz = icmp ugt i32 %i.by, -1073741825
  br i1 %i.bz, label %_Py_NewRef.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = add nuw i32 %i.by, 1
  store i32 %i.ca, ptr %i.w, align 8, !tbaa !35
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.i, %bb.h, %local_timezone_from_local.exit.i
  %.061.i = phi ptr [ %i.bw, %local_timezone_from_local.exit.i ], [ %i.w, %bb.h ], [ %i.w, %bb.i ] ; 8 uses
  %i.cb = icmp eq ptr %.061.i, %.033
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_Py_NewRef.exit.i
  %i.cc = load i32, ptr %.061.i, align 8, !tbaa !35 ; 2 uses
  %.not.i87.i = icmp sgt i32 %i.cc, -1
  br i1 %.not.i87.i, label %bb.k, label %Py_DECREF.exit88.i

bb.k:                                             ; preds = %bb.j
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %.061.i, align 8, !tbaa !35
  %i.ce = icmp eq i32 %i.cd, 0
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
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !35
  %i.dl = zext i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.di, %i.dl
  %i.dn = getelementptr i8, ptr %i.cy, i64 27
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !35
  %i.dp = zext i8 %i.do to i32
  %i.dq = getelementptr i8, ptr %i.cy, i64 28
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !35
  %i.ds = zext i8 %i.dr to i32
  %i.dt = getelementptr i8, ptr %i.cy, i64 29
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !35
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr i8, ptr %i.cy, i64 30
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !35
  %i.dy = zext i8 %i.dx to i32
  %i.dz = getelementptr i8, ptr %i.cy, i64 31
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !35
  %i.eb = zext i8 %i.ea to i32
  %i.ec = getelementptr i8, ptr %i.cy, i64 32
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !35
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 16
  %i.eg = getelementptr i8, ptr %i.cy, i64 33
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !35
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 8
  %i.ek = or disjoint i32 %i.ej, %i.ef
  %i.el = getelementptr i8, ptr %i.cy, i64 34
  %i.em = load i8, ptr %i.el, align 1, !tbaa !35
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
  br i1 %i.s, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %Py_DECREF.exit76.i
  %i.fg = call fastcc ptr @local_timezone(ptr noundef %.060.i), !inline_history !150 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.aj, label %Py_INCREF.exit.i

bb.aj:                                            ; preds = %bb.ai
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
end_hunk_7
