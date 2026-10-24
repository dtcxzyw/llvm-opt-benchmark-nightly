Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_datetimemodule?download=true
inline.NumInlined: 580
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@accum:bb.a
  %i.aw = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !41
  %.val = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ax = getelementptr i8, ptr %.val, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43
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
define internal ptr @date_repr(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
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
  store ptr %0, ptr %i.a, align 8, !tbaa !41
  %i.b = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88496), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @date_richcompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %.not.i = icmp eq ptr %.val7, @PyDateTime_DateType
  br i1 %.not.i, label %PyObject_TypeCheck.exit9, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val7, ptr noundef nonnull @PyDateTime_DateType) #16
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %diff_to_bool.exit, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %.val.pr = load ptr, ptr %i.a, align 8, !tbaa !42 ; 2 uses
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
  %.val25 = load i64, ptr %i.b, align 8, !tbaa !58 ; 3 uses
  %i.c = icmp eq i64 %.val25, 1
  br i1 %i.c, label %bb.b, label %date_from_pickle.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 13 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val24 = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr i8, ptr %.val24, i64 168
  %.val27 = load i64, ptr %i.g, align 8, !tbaa !75 ; 2 uses
  %i.h = and i64 %.val27, 134217728
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %.val29 = load i64, ptr %i.i, align 8, !tbaa !58
  %i.j = icmp eq i64 %.val29, 4
  br i1 %i.j, label %bb.d, label %date_from_pickle.exit.thread43

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.e, i64 32
  %i.l = getelementptr i8, ptr %i.e, i64 34
  %i.m = load i8, ptr %i.l, align 2, !tbaa !35
  %3 = add i8 %i.m, -1
  %i.n = icmp ult i8 %3, 12
  br i1 %i.n, label %bb.e, label %date_from_pickle.exit.thread43

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 304
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = tail call ptr %i.p(ptr noundef %0, i64 noundef 0) #16, !inline_history !107 ; 4 uses
  %.not.i30 = icmp eq ptr %i.q, null
  br i1 %.not.i30, label %date_from_pickle.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.q, i64 25
  %i.s = load i32, ptr %i.k, align 8
  store i32 %i.s, ptr %i.r, align 1
  %i.t = getelementptr i8, ptr %i.q, i64 16
  store i64 -1, ptr %i.t, align 8, !tbaa !37
  br label %date_from_pickle.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.u = and i64 %.val27, 268435456
  %.not22 = icmp eq i64 %i.u, 0
  br i1 %.not22, label %date_from_pickle.exit.thread43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.e, i64 16
  %.val28 = load i64, ptr %i.v, align 8, !tbaa !57
  %i.w = icmp eq i64 %.val28, 4
  br i1 %i.w, label %bb.i, label %date_from_pickle.exit.thread43

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %i.e, i64 32
  %i.y = load i32, ptr %i.x, align 8              ; 5 uses
  %i.z = lshr i32 %i.y, 2
  %i.aa = and i32 %i.z, 7
  %i.ab = and i32 %i.y, 32
  %.not.i19.i = icmp eq i32 %i.ab, 0              ; 3 uses
  switch i32 %i.aa, label %bb.p [
    i32 1, label %bb.j
    i32 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = and i32 %i.y, 64
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ad = getelementptr i8, ptr %i.e, i64 56
  %.val4.i.i = load ptr, ptr %i.ad, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.k ], [ %.val4.i.i, %bb.l ]
  %i.ae = getelementptr i8, ptr %.0.i.i, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = zext i8 %i.af to i32
  br label %PyUnicode_READ_CHAR.exit

bb.m:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = and i32 %i.y, 64
  %.not.i.i12.i = icmp eq i32 %i.ah, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.o:                                             ; preds = %bb.m
  %i.ai = getelementptr i8, ptr %i.e, i64 56
  %.val4.i16.i = load ptr, ptr %i.ai, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.o, %bb.n
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.n ], [ %.val4.i16.i, %bb.o ]
  %i.aj = getelementptr i8, ptr %.0.i15.i, i64 4
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !77
  %i.al = zext i16 %i.ak to i32
  br label %PyUnicode_READ_CHAR.exit

bb.p:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = and i32 %i.y, 64
  %.not.i.i20.i = icmp eq i32 %i.am, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.r:                                             ; preds = %bb.p
  %i.an = getelementptr i8, ptr %i.e, i64 56
  %.val4.i24.i = load ptr, ptr %i.an, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.r, %bb.q
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.q ], [ %.val4.i24.i, %bb.r ]
  %i.ao = getelementptr i8, ptr %.0.i23.i, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.ag, %_PyUnicode_DATA.exit.i ], [ %i.al, %_PyUnicode_DATA.exit17.i ], [ %i.ap, %_PyUnicode_DATA.exit25.i ]
  %i.aq = add i32 %.0.i, -1
  %i.ar = icmp ult i32 %i.aq, 12
  br i1 %i.ar, label %bb.s, label %date_from_pickle.exit.thread43

bb.s:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.as = tail call ptr @PyUnicode_AsLatin1String(ptr noundef nonnull %i.e) #16 ; 5 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !41
  %i.av = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.au) #16
  %.not23 = icmp eq i32 %i.av, 0
  br i1 %.not23, label %date_from_pickle.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !41
  tail call void @PyErr_SetString(ptr noundef %i.aw, ptr noundef nonnull @.str.159) #16
  br label %date_from_pickle.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.ax = getelementptr i8, ptr %0, i64 304
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !28
  %i.az = tail call ptr %i.ay(ptr noundef %0, i64 noundef 0) #16, !inline_history !107 ; 6 uses
  %.not.i31 = icmp eq ptr %i.az, null
  br i1 %.not.i31, label %date_from_pickle.exit32, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr i8, ptr %i.as, i64 32
  %i.bb = getelementptr i8, ptr %i.az, i64 25
  %i.bc = load i32, ptr %i.ba, align 1
  store i32 %i.bc, ptr %i.bb, align 1
  %i.bd = getelementptr i8, ptr %i.az, i64 16
  store i64 -1, ptr %i.bd, align 8, !tbaa !37
  br label %date_from_pickle.exit32

date_from_pickle.exit32:                          ; preds = %bb.v, %bb.w
  %i.be = load i32, ptr %i.as, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.be, -1
  br i1 %.not.i, label %bb.x, label %date_from_pickle.exit.thread

bb.x:                                             ; preds = %date_from_pickle.exit32
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.as, align 8, !tbaa !35
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.y, label %date_from_pickle.exit.thread

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.as) #16
  br label %date_from_pickle.exit.thread

date_from_pickle.exit.thread43:                   ; preds = %bb.g, %PyUnicode_READ_CHAR.exit, %bb.h, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bh = getelementptr i8, ptr %1, i64 32
  br label %bb.z

date_from_pickle.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bi = icmp eq ptr %2, null
  %i.bj = icmp eq i64 %.val25, 3
  %or.cond3.i = and i1 %i.bi, %i.bj
  %i.bk = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.bl = icmp ne ptr %i.bk, null
  %or.cond7.i = and i1 %i.bl, %or.cond3.i
  br i1 %or.cond7.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %date_from_pickle.exit.thread43, %date_from_pickle.exit
  %i.bm = phi ptr [ %i.bh, %date_from_pickle.exit.thread43 ], [ %i.bk, %date_from_pickle.exit ]
  %i.bn = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.bm, i64 noundef %.val25, ptr noundef %2, ptr noundef null, ptr noundef nonnull @datetime_date._parser, i32 noundef 3, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.bn, null
  br i1 %.not.i33, label %datetime_date.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.z, %date_from_pickle.exit
  %i.bo = phi ptr [ %i.bn, %bb.z ], [ %i.bk, %date_from_pickle.exit ] ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !41
  %i.bq = call i32 @PyLong_AsInt(ptr noundef %i.bp) #16 ; 7 uses
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread.i
  %i.bs = call ptr @PyErr_Occurred() #16
  %.not31.i = icmp eq ptr %i.bs, null
  br i1 %.not31.i, label %bb.ab, label %datetime_date.exit

bb.ab:                                            ; preds = %bb.aa, %.thread.i
  %i.bt = getelementptr i8, ptr %i.bo, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !41
  %i.bv = call i32 @PyLong_AsInt(ptr noundef %i.bu) #16 ; 7 uses
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bx = call ptr @PyErr_Occurred() #16
end_hunk_0
begin_hunk_1_@parse_hh_mm_ss_ff:.lr.ph.i
  %i.ak = icmp eq ptr %i.ah, null
  br i1 %i.ak, label %.thread81, label %bb.e

bb.e:                                             ; preds = %parse_digits.exit.1
  %i.al = getelementptr i8, ptr %i.y, i64 3       ; 2 uses
  %i.am = load i8, ptr %i.ah, align 1, !tbaa !35  ; 3 uses
  %.not.1 = icmp ult ptr %i.al, %1
  br i1 %.not.1, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq i8 %i.am, 58
  %or.cond.1 = select i1 %i.p, i1 %i.an, i1 false
  br i1 %or.cond.1, label %select.unfold75.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = and i8 %i.am, -3
  %or.cond5.1 = icmp eq i8 %i.ao, 44              ; 2 uses
  %brmerge = select i1 %or.cond5.1, i1 true, i1 %i.p
  %.mux = select i1 %or.cond5.1, i32 -3, i32 -4
  br i1 %brmerge, label %.thread81, label %select.unfold75.1

select.unfold75.1:                                ; preds = %bb.g, %bb.f
  %.153.1 = phi ptr [ %i.ah, %bb.g ], [ %i.al, %bb.f ] ; 4 uses
  %i.ap = load i8, ptr %.153.1, align 1, !tbaa !35
  %i.aq = sext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %.lr.ph.i.1.2, label %.thread81

.lr.ph.i.1.2:                                     ; preds = %select.unfold75.1
  %i.at = getelementptr i8, ptr %.153.1, i64 1
  %i.au = load i32, ptr %4, align 4, !tbaa !15
  %i.av = mul i32 %i.au, 10
  %i.aw = add i32 %i.av, %i.ar                    ; 2 uses
  store i32 %i.aw, ptr %4, align 4, !tbaa !15
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !35
  %i.ay = sext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -48                  ; 2 uses
  %i.ba = icmp ult i32 %i.az, 10
  br i1 %i.ba, label %parse_digits.exit.2, label %.thread81

parse_digits.exit.2:                              ; preds = %.lr.ph.i.1.2
  %i.bb = getelementptr i8, ptr %.153.1, i64 2    ; 3 uses
  %i.bc = mul i32 %i.aw, 10
  %i.bd = add i32 %i.bc, %i.az
  store i32 %i.bd, ptr %4, align 4, !tbaa !15
  %i.be = icmp eq ptr %i.bb, null
  br i1 %i.be, label %.thread81, label %bb.h

bb.h:                                             ; preds = %parse_digits.exit.2
  %i.bf = getelementptr i8, ptr %.153.1, i64 3    ; 2 uses
  %i.bg = load i8, ptr %i.bb, align 1, !tbaa !35  ; 3 uses
  %.not.2 = icmp ult ptr %i.bf, %1
  br i1 %.not.2, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.bh = icmp eq i8 %i.bg, 58
  %or.cond.2 = select i1 %i.p, i1 %i.bh, i1 false
  br i1 %or.cond.2, label %.thread81, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = and i8 %i.bg, -3
  %or.cond5.2 = icmp ne i8 %i.bi, 44              ; 2 uses
  %brmerge156.not = select i1 %or.cond5.2, i1 %i.p, i1 false
  %.mux157 = select i1 %or.cond5.2, ptr %i.bb, ptr %i.bf ; 11 uses
  br i1 %brmerge156.not, label %.thread81, label %.thread86

.thread86:                                        ; preds = %bb.j
  %i.bj = ptrtoint ptr %1 to i64
  %i.bk = ptrtoint ptr %.mux157 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 7 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 6)
  %.not.i = icmp eq ptr %1, %.mux157
  br i1 %.not.i, label %parse_digits.exit74.thread, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.thread86
  %i.bm = load i8, ptr %.mux157, align 1, !tbaa !35
  %i.bn = sext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = icmp ult i32 %i.bo, 10
  br i1 %i.bp, label %bb.k, label %.thread81

bb.k:                                             ; preds = %.lr.ph.i70
  %i.bq = getelementptr i8, ptr %.mux157, i64 1   ; 2 uses
  %i.br = load i32, ptr %5, align 4, !tbaa !15
  %i.bs = mul i32 %i.br, 10
  %i.bt = add i32 %i.bs, %i.bo
  store i32 %i.bt, ptr %5, align 4, !tbaa !15
  %exitcond.not.i73 = icmp eq i64 %i.bl, 1
  br i1 %exitcond.not.i73, label %parse_digits.exit74, label %.lr.ph.i70.1

.lr.ph.i70.1:                                     ; preds = %bb.k
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !35
  %i.bv = sext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -48                  ; 2 uses
  %i.bx = icmp ult i32 %i.bw, 10
  br i1 %i.bx, label %bb.l, label %.thread81

bb.l:                                             ; preds = %.lr.ph.i70.1
  %i.by = getelementptr i8, ptr %.mux157, i64 2   ; 2 uses
  %i.bz = load i32, ptr %5, align 4, !tbaa !15
  %i.ca = mul i32 %i.bz, 10
  %i.cb = add i32 %i.ca, %i.bw
  store i32 %i.cb, ptr %5, align 4, !tbaa !15
  %exitcond.not.i73.1 = icmp eq i64 %i.bl, 2
  br i1 %exitcond.not.i73.1, label %parse_digits.exit74, label %.lr.ph.i70.2

.lr.ph.i70.2:                                     ; preds = %bb.l
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !35
  %i.cd = sext i8 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, -48                  ; 2 uses
  %i.cf = icmp ult i32 %i.ce, 10
  br i1 %i.cf, label %bb.m, label %.thread81

bb.m:                                             ; preds = %.lr.ph.i70.2
  %i.cg = getelementptr i8, ptr %.mux157, i64 3   ; 2 uses
  %i.ch = load i32, ptr %5, align 4, !tbaa !15
  %i.ci = mul i32 %i.ch, 10
  %i.cj = add i32 %i.ci, %i.ce
  store i32 %i.cj, ptr %5, align 4, !tbaa !15
  %exitcond.not.i73.2 = icmp eq i64 %i.bl, 3
  br i1 %exitcond.not.i73.2, label %parse_digits.exit74, label %.lr.ph.i70.3

.lr.ph.i70.3:                                     ; preds = %bb.m
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !35
  %i.cl = sext i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -48                  ; 2 uses
  %i.cn = icmp ult i32 %i.cm, 10
  br i1 %i.cn, label %bb.n, label %.thread81

bb.n:                                             ; preds = %.lr.ph.i70.3
  %i.co = getelementptr i8, ptr %.mux157, i64 4   ; 2 uses
  %i.cp = load i32, ptr %5, align 4, !tbaa !15
  %i.cq = mul i32 %i.cp, 10
  %i.cr = add i32 %i.cq, %i.cm
  store i32 %i.cr, ptr %5, align 4, !tbaa !15
  %exitcond.not.i73.3 = icmp eq i64 %i.bl, 4
  br i1 %exitcond.not.i73.3, label %parse_digits.exit74, label %.lr.ph.i70.4

.lr.ph.i70.4:                                     ; preds = %bb.n
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !35
  %i.ct = sext i8 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, -48                  ; 2 uses
  %i.cv = icmp ult i32 %i.cu, 10
  br i1 %i.cv, label %bb.o, label %.thread81

bb.o:                                             ; preds = %.lr.ph.i70.4
  %i.cw = getelementptr i8, ptr %.mux157, i64 5   ; 2 uses
  %i.cx = load i32, ptr %5, align 4, !tbaa !15
  %i.cy = mul i32 %i.cx, 10
  %i.cz = add i32 %i.cy, %i.cu
  store i32 %i.cz, ptr %5, align 4, !tbaa !15
  %exitcond.not.i73.4 = icmp eq i64 %i.bl, 5
  br i1 %exitcond.not.i73.4, label %parse_digits.exit74, label %.lr.ph.i70.5

.lr.ph.i70.5:                                     ; preds = %bb.o
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !35
  %i.db = sext i8 %i.da to i32
  %i.dc = add nsw i32 %i.db, -48                  ; 2 uses
  %i.dd = icmp ult i32 %i.dc, 10
  br i1 %i.dd, label %bb.p, label %.thread81

bb.p:                                             ; preds = %.lr.ph.i70.5
  %i.de = getelementptr i8, ptr %.mux157, i64 6
  %i.df = load i32, ptr %5, align 4, !tbaa !15
  %i.dg = mul i32 %i.df, 10
  %i.dh = add i32 %i.dg, %i.dc
  store i32 %i.dh, ptr %5, align 4, !tbaa !15
  br label %parse_digits.exit74

parse_digits.exit74:                              ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.lcssa159 = phi ptr [ %i.bq, %bb.k ], [ %i.by, %bb.l ], [ %i.cg, %bb.m ], [ %i.co, %bb.n ], [ %i.cw, %bb.o ], [ %i.de, %bb.p ] ; 3 uses
  %i.di = icmp eq ptr %.lcssa159, null
  br i1 %i.di, label %.thread81, label %bb.q

parse_digits.exit74.thread:                       ; preds = %.thread86
  %i.dj = icmp eq ptr %.mux157, null
  br i1 %i.dj, label %.thread81, label %.thread153

bb.q:                                             ; preds = %parse_digits.exit74
  %i.dk = icmp ult i64 %i.bl, 6
  br i1 %i.dk, label %.thread153, label %.preheader

.thread153:                                       ; preds = %parse_digits.exit74.thread, %bb.q
  %i.dl = phi ptr [ %.lcssa159, %bb.q ], [ %.mux157, %parse_digits.exit74.thread ]
  %i.dm = getelementptr [4 x i8], ptr @parse_hh_mm_ss_ff.correction, i64 %spec.store.select
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !15
  %i.dp = load i32, ptr %5, align 4, !tbaa !15
  %i.dq = mul i32 %i.dp, %i.do
  store i32 %i.dq, ptr %5, align 4, !tbaa !15
  br label %.preheader

.preheader:                                       ; preds = %.thread153, %bb.q
  %.3.ph = phi ptr [ %.lcssa159, %bb.q ], [ %i.dl, %.thread153 ]
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.r
  %.3 = phi ptr [ %i.dt, %bb.r ], [ %.3.ph, %.preheader ] ; 2 uses
  %i.dr = load i8, ptr %.3, align 1, !tbaa !35    ; 2 uses
  %6 = add i8 %i.dr, -58
  %i.ds = icmp ult i8 %6, -10
  %i.dt = getelementptr i8, ptr %.3, i64 1
  br i1 %i.ds, label %bb.s, label %bb.r, !llvm.loop !130

bb.s:                                             ; preds = %bb.r
  %i.du = icmp ne i8 %i.dr, 0
  %i.dv = zext i1 %i.du to i32
  br label %.thread81

.thread81:                                        ; preds = %.lr.ph.i70, %.lr.ph.i70.1, %.lr.ph.i70.2, %.lr.ph.i70.3, %.lr.ph.i70.4, %.lr.ph.i70.5, %bb.j, %bb.g, %bb.d, %parse_digits.exit, %parse_digits.exit.1, %parse_digits.exit.2, %bb.i, %.lr.ph.i, %.lr.ph.i.1, %select.unfold75, %.lr.ph.i.1.1, %select.unfold75.1, %.lr.ph.i.1.2, %parse_digits.exit74.thread, %bb.b, %bb.s, %parse_digits.exit74
  %.4 = phi i32 [ -3, %parse_digits.exit74.thread ], [ %i.dv, %bb.s ], [ -3, %parse_digits.exit74 ], [ %.mux, %bb.g ], [ -4, %bb.i ], [ %i.r, %bb.b ], [ -3, %.lr.ph.i ], [ -3, %.lr.ph.i.1.2 ], [ -3, %select.unfold75.1 ], [ -3, %.lr.ph.i.1.1 ], [ -3, %select.unfold75 ], [ -3, %.lr.ph.i.1 ], [ -3, %parse_digits.exit ], [ -3, %parse_digits.exit.2 ], [ -4, %bb.j ], [ -3, %parse_digits.exit.1 ], [ -3, %bb.d ], [ -3, %.lr.ph.i70.5 ], [ -3, %.lr.ph.i70.4 ], [ -3, %.lr.ph.i70.3 ], [ -3, %.lr.ph.i70.2 ], [ -3, %.lr.ph.i70.1 ], [ -3, %.lr.ph.i70 ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal ptr @new_timezone(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 3 uses
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !32 ; 3 uses
  %.not.i = icmp ne i32 %.pre, 0
  %or.cond.not = select i1 %i.a, i1 true, i1 %.not.i
  br i1 %or.cond.not, label %delta_bool.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33
  %.not3.i = icmp eq i32 %i.c, 0
  br i1 %.not3.i, label %delta_bool.exit, label %.thread

delta_bool.exit:                                  ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %delta_bool.exit
  %i.f = load i32, ptr @utc_timezone, align 8, !tbaa !35 ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr @utc_timezone, align 8, !tbaa !35
  br label %_Py_NewRef.exit

delta_bool.exit.thread:                           ; preds = %bb.a
  %i.i = icmp eq i32 %.pre, -1
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %delta_bool.exit.thread
  %i.j = getelementptr i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %.thread

bb.g:                                             ; preds = %delta_bool.exit.thread
  %.old = add i32 %.pre, -1
  %or.cond.old = icmp ult i32 %.old, -2
  br i1 %or.cond.old, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !41
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.26, ptr noundef nonnull %0) #16 ; 0 uses
  br label %_Py_NewRef.exit

.thread:                                          ; preds = %delta_bool.exit, %bb.b, %bb.e, %bb.f, %bb.g
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @utc_timezone, i64 16), align 8, !tbaa !51
  %i.s = icmp ne ptr %0, %i.r
  %or.cond.i.not.i = or i1 %i.a, %i.s
  br i1 %or.cond.i.not.i, label %bb.i, label %_Py_NewRef.exit

bb.i:                                             ; preds = %.thread
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_TimeZoneType, i64 304), align 8, !tbaa !28
  %i.u = tail call ptr %i.t(ptr noundef nonnull @PyDateTime_TimeZoneType, i64 noundef 0) #16, !inline_history !1 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_Py_NewRef.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.x = icmp ugt i32 %i.w, -1073741825
  br i1 %i.x, label %_Py_NewRef.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = add nuw i32 %i.w, 1
  store i32 %i.y, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.k, %bb.j
  %i.z = getelementptr i8, ptr %i.u, i64 16
  store ptr %0, ptr %i.z, align 8, !tbaa !51
  br i1 %i.a, label %bb.l, label %_Py_XNewRef.exit.i

bb.l:                                             ; preds = %_Py_NewRef.exit.i
  %i.aa = load i32, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, -1073741825
  br i1 %i.ab, label %_Py_XNewRef.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = add nuw i32 %i.aa, 1
  store i32 %i.ac, ptr %1, align 8, !tbaa !35
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.m, %bb.l, %_Py_NewRef.exit.i
  %i.ad = getelementptr i8, ptr %i.u, i64 24
  store ptr %1, ptr %i.ad, align 8, !tbaa !52
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %_Py_XNewRef.exit.i, %bb.i, %.thread, %bb.d, %bb.c, %bb.h
  %.0 = phi ptr [ @utc_timezone, %bb.d ], [ null, %bb.h ], [ @utc_timezone, %bb.c ], [ %i.u, %_Py_XNewRef.exit.i ], [ @utc_timezone, %.thread ], [ null, %bb.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare void @PyUnicode_AppendAndDel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @datetime_time___reduce_ex___impl(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr i8, ptr %0, i64 25
  %i.c = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef 6) #16 ; 7 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %time_getstate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 3
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 31
  %i.f = load i8, ptr %i.e, align 1, !tbaa !45
  %.not13.i = icmp eq i8 %i.f, 0
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !35
  %i.i = or i8 %i.h, -128
  store i8 %i.i, ptr %i.g, align 1, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !54
  %.not14.i = icmp eq i8 %i.k, 0
  br i1 %.not14.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44   ; 2 uses
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
  br i1 %.not.i.i, label %bb.j, label %time_getstate.exit

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !35
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %time_getstate.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #16
  br label %time_getstate.exit

time_getstate.exit:                               ; preds = %bb.a, %bb.i, %bb.j, %bb.k
  %.1.i = phi ptr [ null, %bb.a ], [ %.0.i, %bb.i ], [ %.0.i, %bb.j ], [ %.0.i, %bb.k ]
  %i.t = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.157, ptr noundef %.val, ptr noundef %.1.i) #16
  ret ptr %i.t
}

; Function Attrs: nounwind uwtable
define internal ptr @time_hour(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 25
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c) #16
  ret ptr %i.d
end_hunk_1
begin_hunk_2_@datetime_datetime_fromisoformat:bb.a
  br label %bb.bb

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.n = tail call i64 @PyUnicode_GetLength(ptr noundef nonnull %1) #16, !inline_history !146 ; 5 uses
  %i.o = icmp slt i64 %i.n, 7
  br i1 %i.o, label %bb.ay, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 32
  %.val.i.i.i = load i32, ptr %i.p, align 8
  %.val.i.fr.i.i = freeze i32 %.val.i.i.i         ; 3 uses
  %i.q = and i32 %.val.i.fr.i.i, 32
  %.not.i31.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i31.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = and i32 %.val.i.fr.i.i, 64
  %.not.i.i.i.i = icmp eq i32 %i.r, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %1, i64 56
  %.val4.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.e ], [ %.val4.i.i.i, %bb.f ] ; 6 uses
  %i.t = lshr i32 %.val.i.fr.i.i, 2
  %i.u = and i32 %i.t, 7
  switch i32 %i.u, label %_PyUnicode_DATA.exit.split.preheader.i.i [
    i32 1, label %bb.k
    i32 2, label %_PyUnicode_DATA.exit.split.us36.preheader.i.i
  ]

_PyUnicode_DATA.exit.split.us36.1.i.i:            ; preds = %_PyUnicode_DATA.exit.split.us36.preheader.i.i
  %i.v = icmp eq i64 %i.n, 7
  br i1 %i.v, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_PyUnicode_DATA.exit.split.us36.1.i.i
  %i.w = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.x = load i16, ptr %i.w, align 2, !tbaa !77
  %i.y = and i16 %i.x, -2048
  %.not.us40.1.i.i = icmp eq i16 %i.y, -10240
  br i1 %.not.us40.1.i.i, label %.thread.i.i, label %_PyUnicode_DATA.exit.split.us36.2.i.i

_PyUnicode_DATA.exit.split.us36.2.i.i:            ; preds = %bb.g
  %i.z = icmp samesign ult i64 %i.n, 10
  br i1 %i.z, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_PyUnicode_DATA.exit.split.us36.2.i.i
  %i.aa = getelementptr i8, ptr %.0.i.i.i, i64 20
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !77
  %i.ac = and i16 %i.ab, -2048
  %.not.us40.2.i.i = icmp eq i16 %i.ac, -10240
  br i1 %.not.us40.2.i.i, label %.thread.i.i, label %bb.k

_PyUnicode_DATA.exit.split.us36.preheader.i.i:    ; preds = %_PyUnicode_DATA.exit.i.i
  %i.ad = getelementptr i8, ptr %.0.i.i.i, i64 14
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !77
  %i.af = and i16 %i.ae, -2048
  %.not.us40.i.i = icmp eq i16 %i.af, -10240
  br i1 %.not.us40.i.i, label %.thread.i.i, label %_PyUnicode_DATA.exit.split.us36.1.i.i

_PyUnicode_DATA.exit.split.1.i.i:                 ; preds = %_PyUnicode_DATA.exit.split.preheader.i.i
  %i.ag = icmp eq i64 %i.n, 7
  br i1 %i.ag, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_PyUnicode_DATA.exit.split.1.i.i
  %i.ah = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !15
  %i.aj = and i32 %i.ai, -2048
  %.not.1.i.i = icmp eq i32 %i.aj, 55296
  br i1 %.not.1.i.i, label %.thread.i.i, label %_PyUnicode_DATA.exit.split.2.i.i

_PyUnicode_DATA.exit.split.2.i.i:                 ; preds = %bb.i
  %i.ak = icmp samesign ult i64 %i.n, 10
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_PyUnicode_DATA.exit.split.2.i.i
  %i.al = getelementptr i8, ptr %.0.i.i.i, i64 40
  %i.am = load i32, ptr %i.al, align 4, !tbaa !15
  %i.an = and i32 %i.am, -2048
  %.not.2.i.i = icmp eq i32 %i.an, 55296
  br i1 %.not.2.i.i, label %.thread.i.i, label %bb.k

_PyUnicode_DATA.exit.split.preheader.i.i:         ; preds = %_PyUnicode_DATA.exit.i.i
  %i.ao = getelementptr i8, ptr %.0.i.i.i, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.aq = and i32 %i.ap, -2048
  %.not.i64.i = icmp eq i32 %i.aq, 55296
  br i1 %.not.i64.i, label %.thread.i.i, label %_PyUnicode_DATA.exit.split.1.i.i

bb.k:                                             ; preds = %bb.j, %_PyUnicode_DATA.exit.split.2.i.i, %_PyUnicode_DATA.exit.split.1.i.i, %bb.h, %_PyUnicode_DATA.exit.split.us36.2.i.i, %_PyUnicode_DATA.exit.split.us36.1.i.i, %_PyUnicode_DATA.exit.i.i
  %i.ar = load i32, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.as = icmp ugt i32 %i.ar, -1073741825
  br i1 %i.as, label %_sanitize_isoformat_str.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = add nuw i32 %i.ar, 1
  store i32 %i.at, ptr %1, align 8, !tbaa !35
  br label %_sanitize_isoformat_str.exit.i

.thread.i.i:                                      ; preds = %_PyUnicode_DATA.exit.split.preheader.i.i, %bb.j, %bb.i, %_PyUnicode_DATA.exit.split.us36.preheader.i.i, %bb.h, %bb.g
  %.us-phi.i.i = phi i64 [ 8, %bb.i ], [ 10, %bb.j ], [ 10, %bb.h ], [ 7, %_PyUnicode_DATA.exit.split.us36.preheader.i.i ], [ 7, %_PyUnicode_DATA.exit.split.preheader.i.i ], [ 8, %bb.g ]
  %i.au = tail call ptr @_PyUnicode_Copy(ptr noundef nonnull %1) #16, !inline_history !146 ; 6 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.ay, label %bb.m

bb.m:                                             ; preds = %.thread.i.i
  %i.aw = tail call i32 @PyUnicode_WriteChar(ptr noundef nonnull %i.au, i64 noundef %.us-phi.i.i, i32 noundef 84) #16, !inline_history !146
  %.not30.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not30.i.i, label %_sanitize_isoformat_str.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load i32, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i.i.i, label %bb.o, label %bb.ay

bb.o:                                             ; preds = %bb.n
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.au, align 8, !tbaa !35
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.ay

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.au) #16, !inline_history !146
  br label %bb.ay

_sanitize_isoformat_str.exit.i:                   ; preds = %bb.m, %bb.l, %bb.k
  %.226.i.i = phi ptr [ %1, %bb.l ], [ %i.au, %bb.m ], [ %1, %bb.k ] ; 10 uses
  %i.ba = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %.226.i.i, ptr noundef nonnull %i.a) #16, !inline_history !146 ; 8 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_sanitize_isoformat_str.exit.i
  %i.bc = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !41
  %i.bd = call i32 @PyErr_ExceptionMatches(ptr noundef %i.bc) #16, !inline_history !146
  %.not54.i = icmp eq i32 %i.bd, 0
  br i1 %.not54.i, label %.thread80.i, label %.thread84.i

bb.r:                                             ; preds = %_sanitize_isoformat_str.exit.i
  %i.be = load i64, ptr %i.a, align 8, !tbaa !78  ; 8 uses
  %i.bf = icmp eq i64 %i.be, 7
  br i1 %i.bf, label %_find_isoformat_datetime_separator.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr i8, ptr %i.ba, i64 4
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !35
  switch i8 %i.bh, label %_find_isoformat_datetime_separator.exit.i [
    i8 45, label %bb.t
    i8 87, label %.preheader.i.i
  ]

.preheader.i.i:                                   ; preds = %bb.s
  %i.bi = icmp ugt i64 %i.be, 7
  br i1 %i.bi, label %.lr.ph.i.i, label %_find_isoformat_datetime_separator.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr i8, ptr %i.ba, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !35
  %i.bl = icmp eq i8 %i.bk, 87
  br i1 %i.bl, label %bb.u, label %_find_isoformat_datetime_separator.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bm = icmp slt i64 %i.be, 8
  br i1 %i.bm, label %_find_isoformat_datetime_separator.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not21.i.i = icmp eq i64 %i.be, 8
  br i1 %.not21.i.i, label %_find_isoformat_datetime_separator.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr i8, ptr %i.ba, i64 8
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !35
  %i.bp = icmp eq i8 %i.bo, 45
  br i1 %i.bp, label %bb.x, label %_find_isoformat_datetime_separator.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bq = icmp eq i64 %i.be, 9
  br i1 %i.bq, label %_find_isoformat_datetime_separator.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = icmp samesign ugt i64 %i.be, 10
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr i8, ptr %i.ba, i64 10
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !35
  %2 = add i8 %i.bt, -58
  %i.bu = icmp ult i8 %2, -10
  br i1 %i.bu, label %bb.aa, label %_find_isoformat_datetime_separator.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  br label %_find_isoformat_datetime_separator.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ab
  %.023.i.i = phi i64 [ %i.by, %bb.ab ], [ 7, %.preheader.i.i ] ; 3 uses
  %i.bv = getelementptr i8, ptr %i.ba, i64 %.023.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !35
  %3 = add i8 %i.bw, -58
  %i.bx = icmp ult i8 %3, -10
  br i1 %i.bx, label %._crit_edge.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.by = add nuw i64 %.023.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.by, %i.be
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !147

._crit_edge.i.i:                                  ; preds = %bb.ab, %.lr.ph.i.i
  %.0.lcssa.i.i = phi i64 [ %.023.i.i, %.lr.ph.i.i ], [ %i.be, %bb.ab ]
  %.0.lcssa.fr.i.i = freeze i64 %.0.lcssa.i.i     ; 3 uses
  %i.bz = icmp ult i64 %.0.lcssa.fr.i.i, 9
  %i.ca = and i64 %.0.lcssa.fr.i.i, 1
  %..i.i = add nuw nsw i64 %i.ca, 7
  %spec.select.i.i = select i1 %i.bz, i64 %.0.lcssa.fr.i.i, i64 %..i.i
  br label %_find_isoformat_datetime_separator.exit.i

_find_isoformat_datetime_separator.exit.i:        ; preds = %._crit_edge.i.i, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %.preheader.i.i, %bb.s, %bb.r
  %.1.i.i = phi i64 [ 10, %bb.t ], [ 7, %bb.r ], [ -1, %bb.u ], [ -1, %bb.x ], [ 10, %bb.aa ], [ 8, %bb.z ], [ 8, %bb.v ], [ 8, %bb.s ], [ 8, %bb.w ], [ %spec.select.i.i, %._crit_edge.i.i ], [ 7, %.preheader.i.i ] ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !15
  store i32 0, ptr %i.c, align 4, !tbaa !15
  store i32 0, ptr %i.d, align 4, !tbaa !15
  store i32 0, ptr %i.e, align 4, !tbaa !15
  store i32 0, ptr %i.f, align 4, !tbaa !15
  store i32 0, ptr %i.g, align 4, !tbaa !15
  store i32 0, ptr %i.h, align 4, !tbaa !15
  store i32 0, ptr %i.i, align 4, !tbaa !15
  store i32 0, ptr %i.j, align 4, !tbaa !15
  %i.cb = call fastcc i32 @parse_isoformat_date(ptr noundef %i.ba, i64 noundef %.1.i.i, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d), !inline_history !146
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %bb.ac, label %.thread84.i

bb.ac:                                            ; preds = %_find_isoformat_datetime_separator.exit.i
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, %.1.i.i
  br i1 %i.cd, label %bb.ad, label %.thread74.i

bb.ad:                                            ; preds = %bb.ac
  %i.ce = getelementptr i8, ptr %i.ba, i64 %.1.i.i ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !35  ; 3 uses
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ch = and i8 %i.cf, -16
  %switch.selectcmp.i = icmp samesign ugt i8 %i.cf, -17
  %switch.select.i = select i1 %switch.selectcmp.i, i64 4, i64 2
  %switch.selectcmp116.i = icmp eq i8 %i.ch, -32
  %switch.select117.i = select i1 %switch.selectcmp116.i, i64 3, i64 %switch.select.i
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink.i = phi i64 [ %switch.select117.i, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ce, i64 %.sink.i
  %i.cj = add nsw i64 %.1.i.i, %.sink.i
  %i.ck = sub nsw i64 %i.cc, %i.cj                ; 2 uses
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !78
  %i.cl = call fastcc i32 @parse_isoformat_time(ptr noundef %i.ci, i64 noundef %i.ck, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j), !inline_history !146 ; 3 uses
  %i.cm = icmp eq i32 %i.cl, -6
  br i1 %i.cm, label %.thread80.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = icmp slt i32 %i.cl, 0
  br i1 %i.cn, label %.thread84.i, label %..thread74_crit_edge.i

..thread74_crit_edge.i:                           ; preds = %bb.ag
  %.pre.i = load i32, ptr %i.i, align 4, !tbaa !15
  %.pre86.i = load i32, ptr %i.j, align 4, !tbaa !15
  br label %.thread74.i

.thread74.i:                                      ; preds = %..thread74_crit_edge.i, %bb.ac
  %i.co = phi i32 [ %.pre86.i, %..thread74_crit_edge.i ], [ 0, %bb.ac ]
  %i.cp = phi i32 [ %.pre.i, %..thread74_crit_edge.i ], [ 0, %bb.ac ]
  %.04376.i = phi i32 [ %i.cl, %..thread74_crit_edge.i ], [ 0, %bb.ac ]
  %i.cq = call fastcc ptr @tzinfo_from_isoformat_results(i32 noundef %.04376.i, i32 noundef %i.cp, i32 noundef %i.co), !inline_history !146 ; 9 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.thread80.i, label %bb.ah

bb.ah:                                            ; preds = %.thread74.i
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !15  ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 24
  %i.cu = load i32, ptr %i.c, align 4             ; 8 uses
  %i.cv = icmp slt i32 %i.cu, 13
  %or.cond.i = select i1 %i.ct, i1 %i.cv, i1 false
  %.pre87.i = load i32, ptr %i.b, align 4, !tbaa !15 ; 7 uses
  br i1 %or.cond.i, label %bb.ai, label %..thread77_crit_edge.i

..thread77_crit_edge.i:                           ; preds = %bb.ah
  %.pre88.i = load i32, ptr %i.d, align 4, !tbaa !15
  %.pre89.i = load i32, ptr %i.f, align 4, !tbaa !15
  %.pre91.i = load i32, ptr %i.g, align 4, !tbaa !15
  %.pre93.i = load i32, ptr %i.h, align 4, !tbaa !15
  br label %.thread77.i

bb.ai:                                            ; preds = %bb.ah
  %i.cw = icmp eq i32 %i.cu, 2
  %i.cx = and i32 %.pre87.i, 3
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond.i.i = and i1 %i.cw, %i.cy
  br i1 %or.cond.i.i, label %bb.aj, label %is_leap.exit.thread.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.cz = urem i32 %.pre87.i, 100
  %.not.i.i65.i = icmp ne i32 %i.cz, 0
  %i.da = urem i32 %.pre87.i, 400
  %.not.i66.i = icmp eq i32 %i.da, 0
  %or.cond8.i.i = or i1 %.not.i.i65.i, %.not.i66.i
  br i1 %or.cond8.i.i, label %days_in_month.exit.i, label %is_leap.exit.thread.i.i

is_leap.exit.thread.i.i:                          ; preds = %bb.aj, %bb.ai
  %i.db = sext i32 %i.cu to i64
  %i.dc = getelementptr [4 x i8], ptr @_days_in_month, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !15
  br label %days_in_month.exit.i

days_in_month.exit.i:                             ; preds = %is_leap.exit.thread.i.i, %bb.aj
  %.0.i.i = phi i32 [ %i.dd, %is_leap.exit.thread.i.i ], [ 29, %bb.aj ] ; 2 uses
  %i.de = load i32, ptr %i.d, align 4, !tbaa !15  ; 3 uses
  %.not53.i = icmp sgt i32 %i.de, %.0.i.i
  %.pre90.i = load i32, ptr %i.f, align 4, !tbaa !15 ; 2 uses
  %.pre92.i = load i32, ptr %i.g, align 4         ; 2 uses
  %.pre94.i = load i32, ptr %i.h, align 4         ; 2 uses
  br i1 %.not53.i, label %.thread77.i, label %bb.ak

bb.ak:                                            ; preds = %days_in_month.exit.i
  %i.df = icmp eq i32 %.pre90.i, 0
  %i.dg = icmp eq i32 %.pre92.i, 0
  %or.cond3.i = select i1 %i.df, i1 %i.dg, i1 false
  %i.dh = icmp eq i32 %.pre94.i, 0
  %or.cond5.i = select i1 %or.cond3.i, i1 %i.dh, i1 false
  br i1 %or.cond5.i, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.di = add i32 %i.de, 1                        ; 2 uses
  %i.dj = icmp sgt i32 %i.di, %.0.i.i
  br i1 %i.dj, label %bb.am, label %.thread77.i

bb.am:                                            ; preds = %bb.al
  %i.dk = add nsw i32 %i.cu, 1
  %i.dl = icmp sgt i32 %i.cu, 11                  ; 2 uses
  %spec.select.i = select i1 %i.dl, i32 1, i32 %i.dk
  %i.dm = zext i1 %i.dl to i32
  %spec.select115.i = add i32 %.pre87.i, %i.dm
  br label %.thread77.i

.thread77.i:                                      ; preds = %bb.am, %bb.al, %days_in_month.exit.i, %..thread77_crit_edge.i
  %i.dn = phi i32 [ %.pre94.i, %days_in_month.exit.i ], [ 0, %bb.al ], [ %.pre93.i, %..thread77_crit_edge.i ], [ 0, %bb.am ] ; 2 uses
  %i.do = phi i32 [ %.pre92.i, %days_in_month.exit.i ], [ 0, %bb.al ], [ %.pre91.i, %..thread77_crit_edge.i ], [ 0, %bb.am ] ; 2 uses
  %i.dp = phi i32 [ %.pre90.i, %days_in_month.exit.i ], [ 0, %bb.al ], [ %.pre89.i, %..thread77_crit_edge.i ], [ 0, %bb.am ] ; 2 uses
  %i.dq = phi i32 [ 24, %days_in_month.exit.i ], [ 0, %bb.al ], [ %i.cs, %..thread77_crit_edge.i ], [ 0, %bb.am ] ; 2 uses
  %i.dr = phi i32 [ %i.de, %days_in_month.exit.i ], [ %i.di, %bb.al ], [ %.pre88.i, %..thread77_crit_edge.i ], [ 1, %bb.am ] ; 2 uses
  %i.ds = phi i32 [ %i.cu, %days_in_month.exit.i ], [ %i.cu, %bb.al ], [ %i.cu, %..thread77_crit_edge.i ], [ %spec.select.i, %bb.am ] ; 2 uses
  %i.dt = phi i32 [ %.pre87.i, %days_in_month.exit.i ], [ %.pre87.i, %bb.al ], [ %.pre87.i, %..thread77_crit_edge.i ], [ %spec.select115.i, %bb.am ] ; 2 uses
  %i.du = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.du, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread77.i
  %i.dv = call ptr @new_datetime_ex2(i32 noundef %i.dt, i32 noundef %i.ds, i32 noundef %i.dr, i32 noundef %i.dq, i32 noundef %i.dp, i32 noundef %i.do, i32 noundef %i.dn, ptr noundef nonnull %i.cq, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !148
  br label %new_datetime_subclass_ex.exit.i

bb.ao:                                            ; preds = %.thread77.i
  %i.dw = call ptr (ptr, i32, ptr, ...) @call_subclass_fold(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %i.dt, i32 noundef %i.ds, i32 noundef %i.dr, i32 noundef %i.dq, i32 noundef %i.dp, i32 noundef %i.do, i32 noundef %i.dn, ptr noundef nonnull %i.cq), !inline_history !148
  br label %new_datetime_subclass_ex.exit.i

new_datetime_subclass_ex.exit.i:                  ; preds = %bb.ao, %bb.an
  %.0.i.i67.i = phi ptr [ %i.dv, %bb.an ], [ %i.dw, %bb.ao ] ; 3 uses
  %i.dx = load i32, ptr %i.cq, align 8, !tbaa !35 ; 2 uses
  %.not.i59.i = icmp sgt i32 %i.dx, -1
  br i1 %.not.i59.i, label %bb.ap, label %Py_DECREF.exit60.i

bb.ap:                                            ; preds = %new_datetime_subclass_ex.exit.i
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %i.cq, align 8, !tbaa !35
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.aq, label %Py_DECREF.exit60.i

bb.aq:                                            ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull %i.cq) #16, !inline_history !146
  br label %Py_DECREF.exit60.i

Py_DECREF.exit60.i:                               ; preds = %bb.aq, %bb.ap, %new_datetime_subclass_ex.exit.i
  %i.ea = load i32, ptr %.226.i.i, align 8, !tbaa !35 ; 2 uses
  %.not.i57.i = icmp sgt i32 %i.ea, -1
  br i1 %.not.i57.i, label %bb.ar, label %datetime_datetime_fromisoformat_impl.exit

bb.ar:                                            ; preds = %Py_DECREF.exit60.i
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %.226.i.i, align 8, !tbaa !35
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.as, label %datetime_datetime_fromisoformat_impl.exit

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %.226.i.i) #16, !inline_history !146
  br label %datetime_datetime_fromisoformat_impl.exit

bb.at:                                            ; preds = %bb.ak
  %i.ed = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !41
  call void @PyErr_SetString(ptr noundef %i.ed, ptr noundef nonnull @.str.176) #16, !inline_history !146
  %i.ee = load i32, ptr %i.cq, align 8, !tbaa !35 ; 2 uses
  %.not.i55.i = icmp sgt i32 %i.ee, -1
  br i1 %.not.i55.i, label %bb.au, label %Py_DECREF.exit56.i
end_hunk_2
