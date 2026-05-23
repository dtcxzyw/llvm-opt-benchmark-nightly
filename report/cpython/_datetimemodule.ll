inline.NumInlined: 579
inline.NumDeleted: 127
begin_hunk_0_@_Py_Dealloc
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
  %3 = lshr i32 %i.aa, 2
  %i.ab = and i32 %3, 7
  %i.ac = and i32 %i.aa, 32
  %.not.i19.i = icmp eq i32 %i.ac, 0              ; 3 uses
  switch i32 %i.ab, label %bb.p [
    i32 1, label %bb.j
    i32 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = and i32 %i.aa, 64
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %i.e, i64 56
  %.val4.i.i = load ptr, ptr %i.ae, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.k ], [ %.val4.i.i, %bb.l ]
  %i.af = getelementptr i8, ptr %.0.i.i, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  br label %PyUnicode_READ_CHAR.exit

bb.m:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = and i32 %i.aa, 64
  %.not.i.i12.i = icmp eq i32 %i.ai, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.o:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %i.e, i64 56
  %.val4.i16.i = load ptr, ptr %i.aj, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.o, %bb.n
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.n ], [ %.val4.i16.i, %bb.o ]
  %i.ak = getelementptr i8, ptr %.0.i15.i, i64 4
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !88
  %i.am = zext i16 %i.al to i32
  br label %PyUnicode_READ_CHAR.exit

bb.p:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = and i32 %i.aa, 64
  %.not.i.i20.i = icmp eq i32 %i.an, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.r:                                             ; preds = %bb.p
  %i.ao = getelementptr i8, ptr %i.e, i64 56
  %.val4.i24.i = load ptr, ptr %i.ao, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.r, %bb.q
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.q ], [ %.val4.i24.i, %bb.r ]
  %i.ap = getelementptr i8, ptr %.0.i23.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.ah, %_PyUnicode_DATA.exit.i ], [ %i.am, %_PyUnicode_DATA.exit17.i ], [ %i.aq, %_PyUnicode_DATA.exit25.i ]
  %i.ar = add i32 %.0.i, -1
  %i.as = icmp ult i32 %i.ar, 12
  br i1 %i.as, label %bb.s, label %date_from_pickle.exit.thread43

bb.s:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.at = tail call ptr @PyUnicode_AsLatin1String(ptr noundef nonnull %i.e) #16 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !43
  %i.aw = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.av) #16
  %.not23 = icmp eq i32 %i.aw, 0
  br i1 %.not23, label %date_from_pickle.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.ax, ptr noundef nonnull @.str.159) #16
  br label %date_from_pickle.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.ay = getelementptr i8, ptr %0, i64 304
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11
  %i.ba = tail call ptr %i.az(ptr noundef %0, i64 noundef 0) #16, !inline_history !87 ; 6 uses
  %.not.i31 = icmp eq ptr %i.ba, null
  br i1 %.not.i31, label %date_from_pickle.exit32, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr i8, ptr %i.at, i64 32
  %i.bc = getelementptr i8, ptr %i.ba, i64 25
  %i.bd = load i32, ptr %i.bb, align 1
  store i32 %i.bd, ptr %i.bc, align 1
  %i.be = getelementptr i8, ptr %i.ba, i64 16
  store i64 -1, ptr %i.be, align 8, !tbaa !37
  br label %date_from_pickle.exit32

date_from_pickle.exit32:                          ; preds = %bb.v, %bb.w
  %i.bf = load i32, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i, label %bb.x, label %date_from_pickle.exit.thread

bb.x:                                             ; preds = %date_from_pickle.exit32
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !35
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.y, label %date_from_pickle.exit.thread

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.at) #16
  br label %date_from_pickle.exit.thread

date_from_pickle.exit.thread43:                   ; preds = %bb.g, %PyUnicode_READ_CHAR.exit, %bb.h, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bi = getelementptr i8, ptr %1, i64 32
  br label %bb.z

date_from_pickle.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bj = icmp eq ptr %2, null
  %i.bk = icmp eq i64 %.val25, 3
  %or.cond3.i = and i1 %i.bj, %i.bk
  %i.bl = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.bm = icmp ne ptr %i.bl, null
  %or.cond7.i = and i1 %i.bm, %or.cond3.i
  br i1 %or.cond7.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %date_from_pickle.exit.thread43, %date_from_pickle.exit
  %i.bn = phi ptr [ %i.bi, %date_from_pickle.exit.thread43 ], [ %i.bl, %date_from_pickle.exit ]
  %i.bo = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.bn, i64 noundef %.val25, ptr noundef %2, ptr noundef null, ptr noundef nonnull @datetime_date._parser, i32 noundef 3, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.bo, null
  br i1 %.not.i33, label %datetime_date.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.z, %date_from_pickle.exit
  %i.bp = phi ptr [ %i.bo, %bb.z ], [ %i.bl, %date_from_pickle.exit ] ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !43
  %i.br = call i32 @PyLong_AsInt(ptr noundef %i.bq) #16 ; 7 uses
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread.i
  %i.bt = call ptr @PyErr_Occurred() #16
  %.not31.i = icmp eq ptr %i.bt, null
  br i1 %.not31.i, label %bb.ab, label %datetime_date.exit

bb.ab:                                            ; preds = %bb.aa, %.thread.i
  %i.bu = getelementptr i8, ptr %i.bp, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bw = call i32 @PyLong_AsInt(ptr noundef %i.bv) #16 ; 7 uses
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.by = call ptr @PyErr_Occurred() #16
  %.not32.i = icmp eq ptr %i.by, null
  br i1 %.not32.i, label %bb.ad, label %datetime_date.exit

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bz = getelementptr i8, ptr %i.bp, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  %i.cb = call i32 @PyLong_AsInt(ptr noundef %i.ca) #16 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %bb.ae, label %.split.i

.split.i:                                         ; preds = %bb.ad
  %i.cd = call ptr @new_date_ex(i32 noundef %i.br, i32 noundef %i.bw, i32 noundef %i.cb, ptr noundef %0)
  br label %datetime_date.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ce = call ptr @PyErr_Occurred() #16
  %.not33.i = icmp eq ptr %i.ce, null
  br i1 %.not33.i, label %.split27.i, label %datetime_date.exit

.split27.i:                                       ; preds = %bb.ae
  %i.cf = add i32 %i.br, -10000
  %or.cond.i.i.i = icmp ult i32 %i.cf, -9999
  br i1 %or.cond.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.split27.i
  %i.cg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.ch = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cg, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef 9999, i32 noundef %i.br) #16 ; 0 uses
  br label %datetime_date.exit

bb.ag:                                            ; preds = %.split27.i
  %i.ci = add i32 %i.bw, -13
  %or.cond3.i.i.i = icmp ult i32 %i.ci, -12
  br i1 %or.cond3.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.ck = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cj, ptr noundef nonnull @.str.161, i32 noundef %i.bw) #16 ; 0 uses
  br label %datetime_date.exit
end_hunk_0
begin_hunk_1_@iso_to_ymd:bb.a
  %.neg.i.i.i3839 = udiv i16 %.neg.i.i.i38.lhs.trunc, 100
  %.neg.i.i.i38.zext = zext nneg i16 %.neg.i.i.i3839 to i32
  %i.g = udiv i16 %.neg.i.i.i38.lhs.trunc, 400
  %.zext41 = zext nneg i16 %i.g to i32
  %i.h = add nuw nsw i32 %i.e, 7
  %i.i = add nuw nsw i32 %i.h, %i.f
  %i.j = sub nsw i32 %i.i, %.neg.i.i.i38.zext
  %i.k = add nsw i32 %i.j, %.zext41
  %i.l = srem i32 %i.k, 7
  switch i32 %i.l, label %.thread [
    i32 3, label %is_leap.exit.thread34
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %0, 3
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc49 = trunc nuw nsw i32 %0 to i16     ; 2 uses
  %i.o = urem i16 %.lhs.trunc49, 100
  %.not.i = icmp ne i16 %i.o, 0
  %i.p = urem i16 %.lhs.trunc49, 400
  %.not = icmp eq i16 %i.p, 0
  %or.cond53 = or i1 %.not.i, %.not
  br i1 %or.cond53, label %is_leap.exit.thread34, label %.thread

is_leap.exit.thread34:                            ; preds = %bb.d, %bb.f, %bb.b
  %i.q = add i32 %2, -8
  %or.cond5 = icmp ult i32 %i.q, -7
  br i1 %or.cond5, label %.thread, label %bb.g

bb.g:                                             ; preds = %is_leap.exit.thread34
  %i.r = add nsw i32 %0, -1                       ; 3 uses
  %i.s = mul nuw nsw i32 %i.r, 365
  %i.t = lshr i32 %i.r, 2
  %i.u = add nuw nsw i32 %i.t, %i.s
  %.neg.i.i.i3245.lhs.trunc = trunc nuw nsw i32 %i.r to i16 ; 2 uses
  %.neg.i.i.i324546 = udiv i16 %.neg.i.i.i3245.lhs.trunc, 100
  %.neg.i.i.i3245.zext = zext nneg i16 %.neg.i.i.i324546 to i32
  %i.v = sub nsw i32 %i.u, %.neg.i.i.i3245.zext
  %i.w = udiv i16 %.neg.i.i.i3245.lhs.trunc, 400
  %.zext48 = zext nneg i16 %i.w to i32
  %i.x = add nsw i32 %i.v, %.zext48               ; 2 uses
  %i.y = add nsw i32 %i.x, 1
  %i.z = add nsw i32 %i.x, 7
  %i.aa = srem i32 %i.z, 7                        ; 2 uses
  %i.ab = sub nsw i32 %i.y, %i.aa                 ; 2 uses
  %i.ac = icmp sgt i32 %i.aa, 3
  %i.ad = add nsw i32 %i.ab, 7
  %spec.select.i = select i1 %i.ac, i32 %i.ad, i32 %i.ab
  %i.ae = mul nuw nsw i32 %1, 7
  %i.af = add nsw i32 %i.ae, -8
  %i.ag = add nsw i32 %i.af, %2
  %i.ah = add nsw i32 %i.ag, %spec.select.i
  tail call fastcc void @ord_to_ymd(i32 noundef %i.ah, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %is_leap.exit.thread34, %bb.a, %bb.g
  %.1 = phi i32 [ -3, %is_leap.exit.thread34 ], [ -4, %bb.a ], [ 0, %bb.g ], [ -2, %bb.c ], [ -2, %bb.f ], [ -2, %bb.d ], [ -2, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @datetime_date_fromisocalendar_impl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !7
  store i32 %3, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = call fastcc i32 @iso_to_ymd(i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  switch i32 %i.d, label %bb.e [
    i32 -4, label %bb.b
    i32 -2, label %bb.c
    i32 -3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.f = load i32, ptr %i.a, align 4, !tbaa !7
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef 9999, i32 noundef %i.f) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.110, i32 noundef %2) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.k = load i32, ptr %i.b, align 4, !tbaa !7
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.111, i32 noundef %i.k) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.e:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.a, align 4, !tbaa !7    ; 3 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !7    ; 3 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %i.p = icmp eq ptr %0, @PyDateTime_DateType
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @new_date_ex(i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull @PyDateTime_DateType), !inline_history !89
  br label %new_date_subclass_ex.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = tail call ptr @new_datetime_ex2(i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !90
  br label %new_date_subclass_ex.exit

bb.i:                                             ; preds = %bb.g
  %i.t = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o) #16, !inline_history !89
  br label %new_date_subclass_ex.exit

new_date_subclass_ex.exit:                        ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.q, %bb.f ], [ %i.s, %bb.h ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret ptr %.0
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyImport_Import(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #9

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wrap_strftime(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  %4 = alloca %struct.tm, align 8                 ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  %i.d = alloca [28 x i8], align 16               ; 5 uses
  %i.e = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.84) #16 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_XDECREF.exit227, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyUnicodeWriter_Create(i64 noundef 0) #16 ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread240, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !60  ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = getelementptr i8, ptr %1, i64 56         ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.bw, %bb.c
  %.0138.ph.ph = phi ptr [ %.2140, %bb.bw ], [ null, %bb.c ] ; 32 uses
  %.0132.ph.ph = phi ptr [ %.2134, %bb.bw ], [ null, %bb.c ] ; 24 uses
  %.0124.ph.ph = phi i64 [ %.1130, %bb.bw ], [ 0, %bb.c ] ; 2 uses
  %.0118.ph.ph = phi ptr [ %.2120, %bb.bw ], [ null, %bb.c ] ; 32 uses
  %.0114.ph.ph = phi ptr [ %.2116, %bb.bw ], [ null, %bb.c ] ; 32 uses
  br label %.outer

.outer.loopexit:                                  ; preds = %normalize_century.exit, %bb.bf, %bb.bl
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %.outer.loopexit
  %.0129.ph = phi i64 [ %i.ai, %.outer.loopexit ], [ %.0124.ph.ph, %.outer.outer ]
  %.0124.ph = phi i64 [ %.0124, %.outer.loopexit ], [ %.0124.ph.ph, %.outer.outer ]
  br label %bb.d

bb.d:                                             ; preds = %.outer, %bb.bv
  %.0129 = phi i64 [ %i.ai, %bb.bv ], [ %.0129.ph, %.outer ] ; 2 uses
  %.0124 = phi i64 [ %i.ai, %bb.bv ], [ %.0124.ph, %.outer ] ; 5 uses
  %.not = icmp eq i64 %.0129, %.val
  br i1 %.not, label %bb.bx, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i64 @PyUnicode_FindChar(ptr noundef nonnull %1, i32 noundef 37, i64 noundef %.0129, i64 noundef %.val, i32 noundef 1) #16 ; 6 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.bx, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nuw i64 %i.q, 1                      ; 4 uses
  %i.t = icmp eq i64 %i.s, %.val
  br i1 %i.t, label %bb.bx, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.j, align 8              ; 8 uses
  %5 = lshr i32 %i.u, 2
  %i.v = and i32 %5, 7                            ; 2 uses
  %i.w = and i32 %i.u, 32
  %.not.i19.i = icmp eq i32 %i.w, 0               ; 6 uses
  switch i32 %i.v, label %bb.n [
    i32 1, label %bb.h
    i32 2, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i32 %i.u, 64
  %.not.i.i.i = icmp eq i32 %i.x, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.j:                                             ; preds = %bb.h
  %.val4.i.i = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  %i.y = getelementptr i8, ptr %.0.i.i, i64 %i.s
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = zext i8 %i.z to i32
  br label %PyUnicode_READ_CHAR.exit

bb.k:                                             ; preds = %bb.g
  br i1 %.not.i19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = and i32 %i.u, 64
  %.not.i.i12.i = icmp eq i32 %i.ab, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.m:                                             ; preds = %bb.k
  %.val4.i16.i = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.m, %bb.l
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.l ], [ %.val4.i16.i, %bb.m ]
  %i.ac = getelementptr [2 x i8], ptr %.0.i15.i, i64 %i.s
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !88
  %i.ae = zext i16 %i.ad to i32
  br label %PyUnicode_READ_CHAR.exit

bb.n:                                             ; preds = %bb.g
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = and i32 %i.u, 64
  %.not.i.i20.i = icmp eq i32 %i.af, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.p:                                             ; preds = %bb.n
  %.val4.i24.i = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.p, %bb.o
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.o ], [ %.val4.i24.i, %bb.p ]
  %i.ag = getelementptr [4 x i8], ptr %.0.i23.i, i64 %i.s
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.aa, %_PyUnicode_DATA.exit.i ], [ %i.ae, %_PyUnicode_DATA.exit17.i ], [ %i.ah, %_PyUnicode_DATA.exit25.i ] ; 5 uses
  %i.ai = add nuw i64 %i.q, 2                     ; 17 uses
  switch i32 %.0.i, label %bb.bb [
    i32 122, label %bb.q
    i32 58, label %bb.s
    i32 90, label %bb.af
    i32 102, label %bb.ay
  ]

bb.q:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.aj = icmp eq ptr %.0114.ph.ph, null
  br i1 %i.aj, label %bb.r, label %make_Zreplacement.exit.thread230

bb.r:                                             ; preds = %bb.q
  %i.ak = call fastcc ptr @make_somezreplacement(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %3) ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.thread240, label %make_Zreplacement.exit.thread230

bb.s:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.am = icmp slt i64 %i.ai, %.val
  br i1 %i.am, label %bb.t, label %bb.bb

bb.t:                                             ; preds = %bb.s
  switch i32 %i.v, label %bb.aa [
    i32 1, label %bb.u
    i32 2, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i19.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = and i32 %i.u, 64
  %.not.i.i.i193 = icmp eq i32 %i.an, 0
  %.0.v.i.i.i194 = select i1 %.not.i.i.i193, i64 56, i64 40
  %.0.i.i.i195 = getelementptr i8, ptr %1, i64 %.0.v.i.i.i194
  br label %_PyUnicode_DATA.exit.i196

bb.w:                                             ; preds = %bb.u
  %.val4.i.i198 = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i196

_PyUnicode_DATA.exit.i196:                        ; preds = %bb.w, %bb.v
  %.0.i.i197 = phi ptr [ %.0.i.i.i195, %bb.v ], [ %.val4.i.i198, %bb.w ]
  %i.ao = getelementptr i8, ptr %.0.i.i197, i64 %i.ai
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i32
  br label %PyUnicode_READ_CHAR.exit205

bb.x:                                             ; preds = %bb.t
  br i1 %.not.i19.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ar = and i32 %i.u, 64
  %.not.i.i12.i186 = icmp eq i32 %i.ar, 0
  %.0.v.i.i13.i187 = select i1 %.not.i.i12.i186, i64 56, i64 40
  %.0.i.i14.i188 = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i187
  br label %_PyUnicode_DATA.exit17.i189

bb.z:                                             ; preds = %bb.x
  %.val4.i16.i192 = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i189

_PyUnicode_DATA.exit17.i189:                      ; preds = %bb.z, %bb.y
  %.0.i15.i190 = phi ptr [ %.0.i.i14.i188, %bb.y ], [ %.val4.i16.i192, %bb.z ]
  %i.as = getelementptr [2 x i8], ptr %.0.i15.i190, i64 %i.ai
  %i.at = load i16, ptr %i.as, align 2, !tbaa !88
  %i.au = zext i16 %i.at to i32
  br label %PyUnicode_READ_CHAR.exit205

bb.aa:                                            ; preds = %bb.t
  br i1 %.not.i19.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = and i32 %i.u, 64
  %.not.i.i20.i199 = icmp eq i32 %i.av, 0
  %.0.v.i.i21.i200 = select i1 %.not.i.i20.i199, i64 56, i64 40
  %.0.i.i22.i201 = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i200
  br label %_PyUnicode_DATA.exit25.i202

bb.ac:                                            ; preds = %bb.aa
  %.val4.i24.i204 = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i202

_PyUnicode_DATA.exit25.i202:                      ; preds = %bb.ac, %bb.ab
  %.0.i23.i203 = phi ptr [ %.0.i.i22.i201, %bb.ab ], [ %.val4.i24.i204, %bb.ac ]
  %i.aw = getelementptr [4 x i8], ptr %.0.i23.i203, i64 %i.ai
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit205

PyUnicode_READ_CHAR.exit205:                      ; preds = %_PyUnicode_DATA.exit.i196, %_PyUnicode_DATA.exit17.i189, %_PyUnicode_DATA.exit25.i202
  %.0.i191 = phi i32 [ %i.aq, %_PyUnicode_DATA.exit.i196 ], [ %i.au, %_PyUnicode_DATA.exit17.i189 ], [ %i.ax, %_PyUnicode_DATA.exit25.i202 ]
  %i.ay = icmp eq i32 %.0.i191, 122
  br i1 %i.ay, label %bb.ad, label %bb.bb

bb.ad:                                            ; preds = %PyUnicode_READ_CHAR.exit205
  %i.az = add nuw i64 %i.q, 3                     ; 2 uses
  %i.ba = icmp eq ptr %.0118.ph.ph, null
  br i1 %i.ba, label %bb.ae, label %make_Zreplacement.exit.thread230

bb.ae:                                            ; preds = %bb.ad
  %i.bb = call fastcc ptr @make_somezreplacement(ptr noundef %0, ptr noundef nonnull @.str.137, ptr noundef %3) ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread240, label %make_Zreplacement.exit.thread230

bb.af:                                            ; preds = %PyUnicode_READ_CHAR.exit
  %i.bd = icmp eq ptr %.0132.ph.ph, null
  br i1 %i.bd, label %bb.ag, label %make_Zreplacement.exit.thread230

bb.ag:                                            ; preds = %bb.af
  %.val10.i.i = load ptr, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %.val10.i.i, @PyDateTime_DateTimeType
  br i1 %.not.i.i.i206, label %PyObject_TypeCheck.exit.thread.i.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.ag
  %i.be = call i32 @PyType_IsSubtype(ptr noundef %.val10.i.i, ptr noundef nonnull @PyDateTime_DateTimeType) #16, !inline_history !107
  %.not15.i.i = icmp eq i32 %i.be, 0
  br i1 %.not15.i.i, label %bb.ah, label %PyObject_TypeCheck.exit.thread.i.i

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %bb.ag
  %i.bf = load i8, ptr %i.m, align 8, !tbaa !57
  %.not7.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not7.i.i, label %bb.ah, label %.sink.split.i.i

bb.ah:                                            ; preds = %PyObject_TypeCheck.exit.thread.i.i, %PyObject_TypeCheck.exit.i.i
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %.val.i.i, @PyDateTime_TimeType
  br i1 %.not.i11.i.i, label %PyObject_TypeCheck.exit12.thread.i.i, label %PyObject_TypeCheck.exit12.i.i

PyObject_TypeCheck.exit12.i.i:                    ; preds = %bb.ah
  %i.bg = call i32 @PyType_IsSubtype(ptr noundef %.val.i.i, ptr noundef nonnull @PyDateTime_TimeType) #16, !inline_history !107
  %.not.i35.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i35.i, label %get_tzinfo_member.exit.i, label %PyObject_TypeCheck.exit12.thread.i.i

PyObject_TypeCheck.exit12.thread.i.i:             ; preds = %PyObject_TypeCheck.exit12.i.i, %bb.ah
  %i.bh = load i8, ptr %i.m, align 8, !tbaa !57
  %.not9.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not9.i.i, label %get_tzinfo_member.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %PyObject_TypeCheck.exit12.thread.i.i, %PyObject_TypeCheck.exit.thread.i.i
  %.sink16.i.i = phi i64 [ 40, %PyObject_TypeCheck.exit.thread.i.i ], [ 32, %PyObject_TypeCheck.exit12.thread.i.i ]
  %i.bi = getelementptr i8, ptr %0, i64 %.sink16.i.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43
  br label %get_tzinfo_member.exit.i

get_tzinfo_member.exit.i:                         ; preds = %.sink.split.i.i, %PyObject_TypeCheck.exit12.thread.i.i, %PyObject_TypeCheck.exit12.i.i
  %.0.i.i207 = phi ptr [ null, %PyObject_TypeCheck.exit12.thread.i.i ], [ null, %PyObject_TypeCheck.exit12.i.i ], [ %i.bj, %.sink.split.i.i ] ; 3 uses
  %i.bk = call ptr @Py_GetConstant(i32 noundef 7) #16, !inline_history !108 ; 16 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.thread240, label %bb.ai

bb.ai:                                            ; preds = %get_tzinfo_member.exit.i
  %i.bm = icmp eq ptr %.0.i.i207, @_Py_NoneStruct
  %i.bn = icmp eq ptr %.0.i.i207, null
  %or.cond.i = or i1 %i.bm, %i.bn
  br i1 %or.cond.i, label %make_Zreplacement.exit.thread230, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr %.0.i.i207, ptr %i.c, align 16, !tbaa !43
  store ptr %3, ptr %i.n, align 8, !tbaa !43
  %i.bo = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 103552), ptr noundef nonnull %i.c, i64 noundef -9223372036854775806, ptr noundef null) #16, !inline_history !108 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.bp = icmp eq ptr %i.bo, null                 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, @_Py_NoneStruct      ; 2 uses
  %or.cond.i.i = or i1 %i.bp, %i.bq
  br i1 %or.cond.i.i, label %call_tzname.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.br = getelementptr i8, ptr %i.bo, i64 8
  %.val17.i.i = load ptr, ptr %i.br, align 8, !tbaa !44 ; 2 uses
  %i.bs = getelementptr i8, ptr %.val17.i.i, i64 168
  %.val18.i.i = load i64, ptr %i.bs, align 8, !tbaa !81
  %i.bt = and i64 %.val18.i.i, 268435456
  %.not.i36.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i36.i, label %bb.al, label %call_tzname.exit.thread40.i

bb.al:                                            ; preds = %bb.ak
  %i.bu = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.bv = getelementptr i8, ptr %.val17.i.i, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !46
  %i.bx = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bu, ptr noundef nonnull @.str.149, ptr noundef %i.bw) #16, !inline_history !108 ; 0 uses
  %i.by = load i32, ptr %i.bo, align 8, !tbaa !35 ; 2 uses
  %.not.i.i38.i = icmp sgt i32 %i.by, -1
  br i1 %.not.i.i38.i, label %bb.am, label %call_tzname.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.bo, align 8, !tbaa !35
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.an, label %call_tzname.exit.thread.i

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.bo) #16, !inline_history !108
  br label %call_tzname.exit.thread.i

call_tzname.exit.i:                               ; preds = %bb.aj
  br i1 %i.bp, label %call_tzname.exit.thread.i, label %call_tzname.exit.thread40.i

call_tzname.exit.thread40.i:                      ; preds = %call_tzname.exit.i, %bb.ak
  br i1 %i.bq, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %call_tzname.exit.thread40.i
  %i.cb = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i29.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i29.i, label %bb.ap, label %make_Zreplacement.exit.thread230

bb.ap:                                            ; preds = %bb.ao
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %make_Zreplacement.exit, label %make_Zreplacement.exit.thread230

bb.aq:                                            ; preds = %call_tzname.exit.thread40.i
  %i.ce = load i32, ptr %i.bk, align 8, !tbaa !35 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.ce, -1
  br i1 %.not.i27.i, label %bb.ar, label %Py_DECREF.exit28.i

bb.ar:                                            ; preds = %bb.aq
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.cf, ptr %i.bk, align 8, !tbaa !35
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.as, label %Py_DECREF.exit28.i

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %i.bk) #16, !inline_history !108
end_hunk_1
begin_hunk_2_@time_richcompare:bb.a

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
  %3 = lshr i32 %i.w, 2
  %i.x = and i32 %3, 7
  %i.y = and i32 %i.w, 32
  %.not.i19.i = icmp eq i32 %i.y, 0               ; 3 uses
  switch i32 %i.x, label %bb.q [
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = and i32 %i.w, 64
  %.not.i.i.i = icmp eq i32 %i.z, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %i.e, i64 56
  %.val4.i.i = load ptr, ptr %i.aa, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.l ], [ %.val4.i.i, %bb.m ]
  %i.ab = load i8, ptr %.0.i.i, align 1, !tbaa !35
  %i.ac = zext i8 %i.ab to i32
  br label %PyUnicode_READ_CHAR.exit

bb.n:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = and i32 %i.w, 64
  %.not.i.i12.i = icmp eq i32 %i.ad, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.p:                                             ; preds = %bb.n
  %i.ae = getelementptr i8, ptr %i.e, i64 56
  %.val4.i16.i = load ptr, ptr %i.ae, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.p, %bb.o
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.o ], [ %.val4.i16.i, %bb.p ]
  %i.af = load i16, ptr %.0.i15.i, align 2, !tbaa !88
  %i.ag = zext i16 %i.af to i32
  br label %PyUnicode_READ_CHAR.exit

bb.q:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = and i32 %i.w, 64
  %.not.i.i20.i = icmp eq i32 %i.ah, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.s:                                             ; preds = %bb.q
  %i.ai = getelementptr i8, ptr %i.e, i64 56
  %.val4.i24.i = load ptr, ptr %i.ai, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.s, %bb.r
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.r ], [ %.val4.i24.i, %bb.s ]
  %i.aj = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.ac, %_PyUnicode_DATA.exit.i ], [ %i.ag, %_PyUnicode_DATA.exit17.i ], [ %i.aj, %_PyUnicode_DATA.exit25.i ]
  %i.ak = and i32 %.0.i, 120
  %i.al = icmp samesign ult i32 %i.ak, 24
  br i1 %i.al, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.am = tail call ptr @PyUnicode_AsLatin1String(ptr noundef nonnull %i.e) #16 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ao = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !43
  %i.ap = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.ao) #16
  %.not29 = icmp eq i32 %i.ap, 0
  br i1 %.not29, label %Py_DECREF.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.aq, ptr noundef nonnull @.str.198) #16
  br label %Py_DECREF.exit.thread

bb.w:                                             ; preds = %bb.t
  %i.ar = tail call fastcc ptr @time_from_pickle(ptr noundef %0, ptr noundef nonnull %i.am, ptr noundef %.026) ; 3 uses
  %i.as = load i32, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i, label %bb.x, label %Py_DECREF.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.am, align 8, !tbaa !35
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.y, label %Py_DECREF.exit.thread

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.am) #16
  br label %Py_DECREF.exit.thread

Py_DECREF.exit:                                   ; preds = %bb.h, %PyUnicode_READ_CHAR.exit, %bb.i, %bb.e, %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.not.i38 = icmp eq ptr %2, null
  br i1 %.not.i38, label %bb.z, label %.thread.i

.thread.i:                                        ; preds = %Py_DECREF.exit
  %i.av = getelementptr i8, ptr %2, i64 16
  %.val99.i = load i64, ptr %i.av, align 8, !tbaa !64
  %i.aw = add i64 %.val99.i, %.val33
  %i.ax = getelementptr i8, ptr %1, i64 32
  br label %bb.aa

bb.z:                                             ; preds = %Py_DECREF.exit
  %i.ay = icmp ult i64 %.val33, 6
  %i.az = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.ba = icmp ne ptr %i.az, null
  %or.cond7.i = and i1 %i.ba, %i.ay
  br i1 %or.cond7.i, label %.thread102.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread.i
  %i.bb = phi ptr [ %i.ax, %.thread.i ], [ %i.az, %bb.z ]
  %i.bc = phi i64 [ %i.aw, %.thread.i ], [ %.val33, %bb.z ]
  %i.bd = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.bb, i64 noundef %.val33, ptr noundef %2, ptr noundef null, ptr noundef nonnull @datetime_time._parser, i32 noundef 0, i32 noundef 5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16, !inline_history !114 ; 2 uses
  %.not81.i = icmp eq ptr %i.bd, null
  br i1 %.not81.i, label %datetime_time.exit, label %.thread102.i

.thread102.i:                                     ; preds = %bb.aa, %bb.z
  %i.be = phi ptr [ %i.bd, %bb.aa ], [ %i.az, %bb.z ] ; 6 uses
  %i.bf = phi i64 [ %i.bc, %bb.aa ], [ %.val33, %bb.z ] ; 3 uses
  %.not82.i = icmp eq i64 %i.bf, 0
  br i1 %.not82.i, label %.thread104.i, label %bb.ab

bb.ab:                                            ; preds = %.thread102.i
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !43 ; 2 uses
  %.not83.i = icmp eq ptr %i.bg, null
  br i1 %.not83.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bg) #16, !inline_history !114 ; 3 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bj = call ptr @PyErr_Occurred() #16, !inline_history !114
  %.not84.i = icmp eq ptr %i.bj, null
  br i1 %.not84.i, label %bb.ae, label %datetime_time.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bk = add i64 %i.bf, -1                       ; 2 uses
  %.not85.i = icmp eq i64 %i.bk, 0
  br i1 %.not85.i, label %.thread104.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.058.i = phi i64 [ %i.bk, %bb.ae ], [ %i.bf, %bb.ab ] ; 2 uses
  %.056.i = phi i32 [ %i.bh, %bb.ae ], [ 0, %bb.ab ] ; 6 uses
  %i.bl = getelementptr i8, ptr %i.be, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !43 ; 2 uses
  %.not86.i = icmp eq ptr %i.bm, null
  br i1 %.not86.i, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bn = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bm) #16, !inline_history !114 ; 3 uses
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bp = call ptr @PyErr_Occurred() #16, !inline_history !114
  %.not87.i = icmp eq ptr %i.bp, null
  br i1 %.not87.i, label %bb.ai, label %datetime_time.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bq = add i64 %.058.i, -1                     ; 2 uses
  %.not88.i = icmp eq i64 %i.bq, 0
  br i1 %.not88.i, label %.thread104.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.159.i = phi i64 [ %i.bq, %bb.ai ], [ %.058.i, %bb.af ] ; 2 uses
  %.054.i = phi i32 [ %i.bn, %bb.ai ], [ 0, %bb.af ] ; 5 uses
  %i.br = getelementptr i8, ptr %i.be, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !43 ; 2 uses
  %.not89.i = icmp eq ptr %i.bs, null
  br i1 %.not89.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bs) #16, !inline_history !114 ; 3 uses
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bv = call ptr @PyErr_Occurred() #16, !inline_history !114
  %.not90.i = icmp eq ptr %i.bv, null
  br i1 %.not90.i, label %bb.am, label %datetime_time.exit

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.bw = add i64 %.159.i, -1                     ; 2 uses
  %.not91.i = icmp eq i64 %i.bw, 0
  br i1 %.not91.i, label %.thread104.i, label %bb.an

end_hunk_2
begin_hunk_3_@datetime_richcompare:bb.a
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
  %3 = lshr i32 %i.x, 2
  %i.y = and i32 %3, 7
  %i.z = and i32 %i.x, 32
  %.not.i19.i = icmp eq i32 %i.z, 0               ; 3 uses
  switch i32 %i.y, label %bb.q [
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = and i32 %i.x, 64
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
  %i.ac = getelementptr i8, ptr %.0.i.i, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  br label %PyUnicode_READ_CHAR.exit

bb.n:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = and i32 %i.x, 64
  %.not.i.i12.i = icmp eq i32 %i.af, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.p:                                             ; preds = %bb.n
  %i.ag = getelementptr i8, ptr %i.e, i64 56
  %.val4.i16.i = load ptr, ptr %i.ag, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.p, %bb.o
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.o ], [ %.val4.i16.i, %bb.p ]
  %i.ah = getelementptr i8, ptr %.0.i15.i, i64 4
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !88
  %i.aj = zext i16 %i.ai to i32
  br label %PyUnicode_READ_CHAR.exit

bb.q:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = and i32 %i.x, 64
  %.not.i.i20.i = icmp eq i32 %i.ak, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.s:                                             ; preds = %bb.q
  %i.al = getelementptr i8, ptr %i.e, i64 56
  %.val4.i24.i = load ptr, ptr %i.al, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.s, %bb.r
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.r ], [ %.val4.i24.i, %bb.s ]
  %i.am = getelementptr i8, ptr %.0.i23.i, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.ae, %_PyUnicode_DATA.exit.i ], [ %i.aj, %_PyUnicode_DATA.exit17.i ], [ %i.an, %_PyUnicode_DATA.exit25.i ]
  %i.ao = and i32 %.0.i, 127
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = icmp ult i32 %i.ap, 12
  br i1 %i.aq, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.ar = tail call ptr @PyUnicode_AsLatin1String(ptr noundef nonnull %i.e) #16 ; 5 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.at = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !43
  %i.au = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.at) #16
  %.not29 = icmp eq i32 %i.au, 0
  br i1 %.not29, label %Py_DECREF.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.av, ptr noundef nonnull @.str.240) #16
  br label %Py_DECREF.exit.thread

bb.w:                                             ; preds = %bb.t
  %i.aw = tail call fastcc ptr @datetime_from_pickle(ptr noundef %0, ptr noundef nonnull %i.ar, ptr noundef %.026) ; 3 uses
  %i.ax = load i32, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i, label %bb.x, label %Py_DECREF.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.ar, align 8, !tbaa !35
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.y, label %Py_DECREF.exit.thread

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ar) #16
  br label %Py_DECREF.exit.thread

Py_DECREF.exit:                                   ; preds = %bb.h, %PyUnicode_READ_CHAR.exit, %bb.i, %bb.e, %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.not.i38 = icmp eq ptr %2, null                ; 2 uses
  br i1 %.not.i38, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %Py_DECREF.exit
  %i.ba = getelementptr i8, ptr %2, i64 16
  %.val111.i = load i64, ptr %i.ba, align 8, !tbaa !64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %Py_DECREF.exit
  %i.bb = phi i64 [ %.val111.i, %bb.z ], [ 0, %Py_DECREF.exit ]
  %i.bc = add i64 %i.bb, %.val33                  ; 2 uses
  %i.bd = add i64 %i.bc, -3                       ; 2 uses
  %i.be = add i64 %.val33, -3
  %i.bf = icmp ult i64 %i.be, 6
  %i.bg = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = and i1 %i.bf, %i.bh
  %or.cond7.i = and i1 %i.bi, %.not.i38
  br i1 %or.cond7.i, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = call ptr @_PyArg_UnpackKeywords(ptr noundef %i.bg, i64 noundef %.val33, ptr noundef %2, ptr noundef null, ptr noundef nonnull @datetime_datetime._parser, i32 noundef 3, i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16, !inline_history !124 ; 2 uses
  %.not90.i = icmp eq ptr %i.bj, null
  br i1 %.not90.i, label %datetime_datetime.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.ab, %bb.aa
  %i.bk = phi ptr [ %i.bj, %bb.ab ], [ %i.bg, %bb.aa ] ; 9 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !43
  %i.bm = call i32 @PyLong_AsInt(ptr noundef %i.bl) #16, !inline_history !124 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread.i
  %i.bo = call ptr @PyErr_Occurred() #16, !inline_history !124
  %.not91.i = icmp eq ptr %i.bo, null
  br i1 %.not91.i, label %bb.ad, label %datetime_datetime.exit

bb.ad:                                            ; preds = %bb.ac, %.thread.i
  %i.bp = getelementptr i8, ptr %i.bk, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !43
  %i.br = call i32 @PyLong_AsInt(ptr noundef %i.bq) #16, !inline_history !124 ; 2 uses
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bt = call ptr @PyErr_Occurred() #16, !inline_history !124
  %.not92.i = icmp eq ptr %i.bt, null
  br i1 %.not92.i, label %bb.af, label %datetime_datetime.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bu = getelementptr i8, ptr %i.bk, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bw = call i32 @PyLong_AsInt(ptr noundef %i.bv) #16, !inline_history !124 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.by = call ptr @PyErr_Occurred() #16, !inline_history !124
  %.not93.i = icmp eq ptr %i.by, null
  br i1 %.not93.i, label %bb.ah, label %datetime_datetime.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not94.i = icmp eq i64 %i.bd, 0
  br i1 %.not94.i, label %.thread113.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bz = getelementptr i8, ptr %i.bk, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43 ; 2 uses
  %.not95.i = icmp eq ptr %i.ca, null
  br i1 %.not95.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = call i32 @PyLong_AsInt(ptr noundef nonnull %i.ca) #16, !inline_history !124 ; 3 uses
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cd = call ptr @PyErr_Occurred() #16, !inline_history !124
  %.not96.i = icmp eq ptr %i.cd, null
  br i1 %.not96.i, label %bb.al, label %datetime_datetime.exit

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ce = add i64 %i.bc, -4                       ; 2 uses
  %.not97.i = icmp eq i64 %i.ce, 0
  br i1 %.not97.i, label %.thread113.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.068.i = phi i64 [ %i.ce, %bb.al ], [ %i.bd, %bb.ai ] ; 2 uses
  %.065.i = phi i32 [ %i.cb, %bb.al ], [ 0, %bb.ai ] ; 6 uses
  %i.cf = getelementptr i8, ptr %i.bk, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !43 ; 2 uses
  %.not98.i = icmp eq ptr %i.cg, null
end_hunk_3
begin_hunk_4_@datetime_datetime_combine:bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !63
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %2, -2
  %i.e = icmp eq i64 %i.d, 2
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread44, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_datetime_combine._parser, i32 noundef 2, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not33 = icmp eq ptr %i.h, null
  br i1 %.not33, label %datetime_datetime_combine_impl.exit, label %.thread44

.thread44:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]   ; 4 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %2, %bb.b ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !43   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val38 = load ptr, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %.val38, @PyDateTime_DateType
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %.thread44
  %i.m = call i32 @PyType_IsSubtype(ptr noundef %.val38, ptr noundef nonnull @PyDateTime_DateType) #16
  %.not50 = icmp eq i32 %i.m, 0
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  br i1 %.not50, label %bb.d, label %PyObject_TypeCheck.exit.thread

bb.d:                                             ; preds = %PyObject_TypeCheck.exit
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DateType, i64 24), align 8, !tbaa !46
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.227, ptr noundef %i.n, ptr noundef %.pre) #16
  br label %datetime_datetime_combine_impl.exit

PyObject_TypeCheck.exit.thread:                   ; preds = %.thread44, %PyObject_TypeCheck.exit
  %i.o = phi ptr [ %i.k, %.thread44 ], [ %.pre, %PyObject_TypeCheck.exit ] ; 4 uses
  %i.p = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val37 = load ptr, ptr %i.r, align 8, !tbaa !44 ; 2 uses
  %.not.i39 = icmp eq ptr %.val37, @PyDateTime_TimeType
  br i1 %.not.i39, label %PyObject_TypeCheck.exit40.thread, label %PyObject_TypeCheck.exit40

PyObject_TypeCheck.exit40:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.s = call i32 @PyType_IsSubtype(ptr noundef %.val37, ptr noundef nonnull @PyDateTime_TimeType) #16
  %.not51 = icmp eq i32 %i.s, 0
  %.pre52 = load ptr, ptr %i.p, align 8, !tbaa !43 ; 2 uses
  br i1 %.not51, label %bb.e, label %PyObject_TypeCheck.exit40.thread

bb.e:                                             ; preds = %PyObject_TypeCheck.exit40
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_TimeType, i64 24), align 8, !tbaa !46
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.228, ptr noundef %i.t, ptr noundef %.pre52) #16
  br label %datetime_datetime_combine_impl.exit

PyObject_TypeCheck.exit40.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit40
  %i.u = phi ptr [ %i.q, %PyObject_TypeCheck.exit.thread ], [ %.pre52, %PyObject_TypeCheck.exit40 ] ; 9 uses
  %.not36 = icmp eq i64 %i.j, 2
  br i1 %.not36, label %.thread48, label %bb.f

bb.f:                                             ; preds = %PyObject_TypeCheck.exit40.thread
  %i.v = getelementptr i8, ptr %i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.thread48, label %bb.h

.thread48:                                        ; preds = %PyObject_TypeCheck.exit40.thread, %bb.f
  %i.y = getelementptr i8, ptr %i.u, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !57
  %.not.i41 = icmp eq i8 %i.z, 0
  br i1 %.not.i41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread48
  %i.aa = getelementptr i8, ptr %i.u, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread48, %bb.f
  %.0.i = phi ptr [ %i.ab, %bb.g ], [ %i.w, %bb.f ], [ @_Py_NoneStruct, %.thread48 ] ; 2 uses
  %i.ac = getelementptr i8, ptr %i.o, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr i8, ptr %i.o, i64 26
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai            ; 2 uses
  %i.ak = getelementptr i8, ptr %i.o, i64 27
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = getelementptr i8, ptr %i.o, i64 28
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.u, i64 25
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = getelementptr i8, ptr %i.u, i64 26
  %i.au = load i8, ptr %i.at, align 1, !tbaa !35
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.u, i64 27
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !35
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = getelementptr i8, ptr %i.u, i64 28
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !35
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 16
  %i.bd = getelementptr i8, ptr %i.u, i64 29
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = or disjoint i32 %i.bg, %i.bc
  %i.bi = getelementptr i8, ptr %i.u, i64 30
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, %i.bk            ; 2 uses
  %i.bm = getelementptr i8, ptr %i.u, i64 31
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !48
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = call ptr @new_datetime_ex2(i32 noundef %i.aj, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.as, i32 noundef %i.av, i32 noundef %i.ay, i32 noundef %i.bl, ptr noundef %.0.i, i32 noundef %i.bo, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !142
  br label %datetime_datetime_combine_impl.exit

bb.j:                                             ; preds = %bb.h
  %i.br = call ptr (ptr, i32, ptr, ...) @call_subclass_fold(ptr noundef %0, i32 noundef %i.bo, ptr noundef nonnull @.str.29, i32 noundef %i.aj, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.as, i32 noundef %i.av, i32 noundef %i.ay, i32 noundef %i.bl, ptr noundef %.0.i), !inline_history !142
  br label %datetime_datetime_combine_impl.exit

datetime_datetime_combine_impl.exit:              ; preds = %bb.j, %bb.i, %bb.c, %bb.e, %bb.d
  %.029 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.d ], [ %i.bq, %bb.i ], [ %i.br, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.029
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_fromisoformat(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.l, align 8, !tbaa !81
  %i.m = and i64 %.val6, 268435456
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull %1) #16
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
  %i.n = tail call i64 @PyUnicode_GetLength(ptr noundef nonnull %1) #16, !inline_history !143 ; 5 uses
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
  %2 = lshr i32 %.val.i.fr.i.i, 2
  %i.t = and i32 %2, 7
  switch i32 %i.t, label %_PyUnicode_DATA.exit.split.preheader.i.i [
    i32 1, label %bb.k
    i32 2, label %_PyUnicode_DATA.exit.split.us36.preheader.i.i
  ]

_PyUnicode_DATA.exit.split.us36.1.i.i:            ; preds = %_PyUnicode_DATA.exit.split.us36.preheader.i.i
  %i.u = icmp eq i64 %i.n, 7
  br i1 %i.u, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_PyUnicode_DATA.exit.split.us36.1.i.i
  %i.v = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.w = load i16, ptr %i.v, align 2, !tbaa !88
  %i.x = and i16 %i.w, -2048
  %.not.us40.1.i.i = icmp eq i16 %i.x, -10240
  br i1 %.not.us40.1.i.i, label %.thread.i.i, label %_PyUnicode_DATA.exit.split.us36.2.i.i

_PyUnicode_DATA.exit.split.us36.2.i.i:            ; preds = %bb.g
  %i.y = icmp samesign ult i64 %i.n, 10
  br i1 %i.y, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_PyUnicode_DATA.exit.split.us36.2.i.i
  %i.z = getelementptr i8, ptr %.0.i.i.i, i64 20
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !88
  %i.ab = and i16 %i.aa, -2048
  %.not.us40.2.i.i = icmp eq i16 %i.ab, -10240
  br i1 %.not.us40.2.i.i, label %.thread.i.i, label %bb.k

_PyUnicode_DATA.exit.split.us36.preheader.i.i:    ; preds = %_PyUnicode_DATA.exit.i.i
  %i.ac = getelementptr i8, ptr %.0.i.i.i, i64 14
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !88
  %i.ae = and i16 %i.ad, -2048
  %.not.us40.i.i = icmp eq i16 %i.ae, -10240
  br i1 %.not.us40.i.i, label %.thread.i.i, label %_PyUnicode_DATA.exit.split.us36.1.i.i

_PyUnicode_DATA.exit.split.1.i.i:                 ; preds = %_PyUnicode_DATA.exit.split.preheader.i.i
  %i.af = icmp eq i64 %i.n, 7
  br i1 %i.af, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_PyUnicode_DATA.exit.split.1.i.i
  %i.ag = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = and i32 %i.ah, -2048
  %.not.1.i.i = icmp eq i32 %i.ai, 55296
  br i1 %.not.1.i.i, label %.thread.i.i, label %_PyUnicode_DATA.exit.split.2.i.i

_PyUnicode_DATA.exit.split.2.i.i:                 ; preds = %bb.i
  %i.aj = icmp samesign ult i64 %i.n, 10
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_PyUnicode_DATA.exit.split.2.i.i
  %i.ak = getelementptr i8, ptr %.0.i.i.i, i64 40
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = and i32 %i.al, -2048
  %.not.2.i.i = icmp eq i32 %i.am, 55296
  br i1 %.not.2.i.i, label %.thread.i.i, label %bb.k

_PyUnicode_DATA.exit.split.preheader.i.i:         ; preds = %_PyUnicode_DATA.exit.i.i
  %i.an = getelementptr i8, ptr %.0.i.i.i, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = and i32 %i.ao, -2048
  %.not.i65.i = icmp eq i32 %i.ap, 55296
  br i1 %.not.i65.i, label %.thread.i.i, label %_PyUnicode_DATA.exit.split.1.i.i

bb.k:                                             ; preds = %bb.j, %_PyUnicode_DATA.exit.split.2.i.i, %_PyUnicode_DATA.exit.split.1.i.i, %bb.h, %_PyUnicode_DATA.exit.split.us36.2.i.i, %_PyUnicode_DATA.exit.split.us36.1.i.i, %_PyUnicode_DATA.exit.i.i
  %i.aq = load i32, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, -1073741825
  br i1 %i.ar, label %_sanitize_isoformat_str.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nuw i32 %i.aq, 1
  store i32 %i.as, ptr %1, align 8, !tbaa !35
  br label %_sanitize_isoformat_str.exit.i

.thread.i.i:                                      ; preds = %_PyUnicode_DATA.exit.split.preheader.i.i, %bb.j, %bb.i, %_PyUnicode_DATA.exit.split.us36.preheader.i.i, %bb.h, %bb.g
  %.us-phi.i.i = phi i64 [ 8, %bb.i ], [ 10, %bb.j ], [ 10, %bb.h ], [ 7, %_PyUnicode_DATA.exit.split.us36.preheader.i.i ], [ 7, %_PyUnicode_DATA.exit.split.preheader.i.i ], [ 8, %bb.g ]
  %i.at = tail call ptr @_PyUnicode_Copy(ptr noundef nonnull %1) #16, !inline_history !143 ; 6 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.ay, label %bb.m

bb.m:                                             ; preds = %.thread.i.i
  %i.av = tail call i32 @PyUnicode_WriteChar(ptr noundef nonnull %i.at, i64 noundef %.us-phi.i.i, i32 noundef 84) #16, !inline_history !143
  %.not30.i.i = icmp eq i32 %i.av, 0
  br i1 %.not30.i.i, label %_sanitize_isoformat_str.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.aw, -1
  br i1 %.not.i.i.i, label %bb.o, label %bb.ay

bb.o:                                             ; preds = %bb.n
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.at, align 8, !tbaa !35
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %bb.ay

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.at) #16, !inline_history !143
  br label %bb.ay

_sanitize_isoformat_str.exit.i:                   ; preds = %bb.m, %bb.l, %bb.k
  %.2.i.i = phi ptr [ %1, %bb.l ], [ %i.at, %bb.m ], [ %1, %bb.k ] ; 10 uses
  %i.az = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %.2.i.i, ptr noundef nonnull %i.a) #16, !inline_history !143 ; 8 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_sanitize_isoformat_str.exit.i
  %i.bb = load ptr, ptr @PyExc_UnicodeEncodeError, align 8, !tbaa !43
  %i.bc = call i32 @PyErr_ExceptionMatches(ptr noundef %i.bb) #16, !inline_history !143
  %.not54.i = icmp eq i32 %i.bc, 0
  br i1 %.not54.i, label %.thread81.i, label %.thread85.i

bb.r:                                             ; preds = %_sanitize_isoformat_str.exit.i
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !94  ; 8 uses
  %i.be = icmp eq i64 %i.bd, 7
  br i1 %i.be, label %_find_isoformat_datetime_separator.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr i8, ptr %i.az, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !35
  switch i8 %i.bg, label %_find_isoformat_datetime_separator.exit.i [
    i8 45, label %bb.t
    i8 87, label %.preheader.i.i
  ]

.preheader.i.i:                                   ; preds = %bb.s
  %i.bh = icmp ugt i64 %i.bd, 7
  br i1 %i.bh, label %.lr.ph.i.i, label %_find_isoformat_datetime_separator.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr i8, ptr %i.az, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  %i.bk = icmp eq i8 %i.bj, 87
  br i1 %i.bk, label %bb.u, label %_find_isoformat_datetime_separator.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bl = icmp slt i64 %i.bd, 8
  br i1 %i.bl, label %_find_isoformat_datetime_separator.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not21.i.i = icmp eq i64 %i.bd, 8
  br i1 %.not21.i.i, label %_find_isoformat_datetime_separator.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr i8, ptr %i.az, i64 8
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !35
  %i.bo = icmp eq i8 %i.bn, 45
  br i1 %i.bo, label %bb.x, label %_find_isoformat_datetime_separator.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bp = icmp eq i64 %i.bd, 9
  br i1 %i.bp, label %_find_isoformat_datetime_separator.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = icmp samesign ugt i64 %i.bd, 10
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr i8, ptr %i.az, i64 10
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !35
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add nsw i32 %i.bt, -58
  %i.bv = icmp ult i32 %i.bu, -10
  br i1 %i.bv, label %bb.aa, label %_find_isoformat_datetime_separator.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  br label %_find_isoformat_datetime_separator.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.ab
  %.023.i.i = phi i64 [ %i.cb, %bb.ab ], [ 7, %.preheader.i.i ] ; 3 uses
  %i.bw = getelementptr i8, ptr %i.az, i64 %.023.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !35
  %i.by = sext i8 %i.bx to i32
  %i.bz = add nsw i32 %i.by, -58
  %i.ca = icmp ult i32 %i.bz, -10
  br i1 %i.ca, label %._crit_edge.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.cb = add nuw i64 %.023.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cb, %i.bd
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !144

._crit_edge.i.i:                                  ; preds = %bb.ab, %.lr.ph.i.i
  %.0.lcssa.i.i = phi i64 [ %.023.i.i, %.lr.ph.i.i ], [ %i.bd, %bb.ab ]
  %.0.lcssa.fr.i.i = freeze i64 %.0.lcssa.i.i     ; 3 uses
  %i.cc = icmp ult i64 %.0.lcssa.fr.i.i, 9
  %i.cd = and i64 %.0.lcssa.fr.i.i, 1
  %..i.i = add nuw nsw i64 %i.cd, 7
  %spec.select.i.i = select i1 %i.cc, i64 %.0.lcssa.fr.i.i, i64 %..i.i
  br label %_find_isoformat_datetime_separator.exit.i

_find_isoformat_datetime_separator.exit.i:        ; preds = %._crit_edge.i.i, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %.preheader.i.i, %bb.s, %bb.r
  %.1.i.i = phi i64 [ 10, %bb.t ], [ 7, %bb.r ], [ -1, %bb.u ], [ -1, %bb.x ], [ 10, %bb.aa ], [ 8, %bb.z ], [ 8, %bb.v ], [ 8, %bb.s ], [ 8, %bb.w ], [ %spec.select.i.i, %._crit_edge.i.i ], [ 7, %.preheader.i.i ] ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !7
  store i32 0, ptr %i.c, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.f, align 4, !tbaa !7
  store i32 0, ptr %i.g, align 4, !tbaa !7
  store i32 0, ptr %i.h, align 4, !tbaa !7
  store i32 0, ptr %i.i, align 4, !tbaa !7
  store i32 0, ptr %i.j, align 4, !tbaa !7
  %i.ce = call fastcc i32 @parse_isoformat_date(ptr noundef %i.az, i64 noundef %.1.i.i, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d), !inline_history !143
  %.not.i = icmp eq i32 %i.ce, 0
end_hunk_4
begin_hunk_5_@datetime_timestamp:bb.a
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
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq ptr %i.i, @_Py_NoneStruct
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i39 = icmp sgt i32 %i.l, -1
  br i1 %.not.i39, label %bb.g, label %Py_DECREF.exit40

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit40

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #16
  br label %Py_DECREF.exit40

Py_DECREF.exit40:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.o = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %Py_DECREF.exit40
  %i.q = add nuw i32 %i.o, 1                      ; 2 uses
  store i32 %i.q, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit

bb.j:                                             ; preds = %bb.e
  %i.r = tail call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef -1) ; 3 uses
  %i.s = load i32, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %.not.i37 = icmp sgt i32 %i.s, -1
  br i1 %.not.i37, label %bb.k, label %Py_DECREF.exit38

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.i, align 8, !tbaa !35
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %Py_DECREF.exit38

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #16
  br label %Py_DECREF.exit38

Py_DECREF.exit38:                                 ; preds = %bb.j, %bb.k, %bb.l
  %i.v = icmp eq ptr %i.r, null
  br i1 %i.v, label %.critedge, label %Py_DECREF.exit38._Py_NewRef.exit_crit_edge

Py_DECREF.exit38._Py_NewRef.exit_crit_edge:       ; preds = %Py_DECREF.exit38
  %.pre = load i32, ptr %i.r, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %Py_DECREF.exit38._Py_NewRef.exit_crit_edge, %bb.i, %Py_DECREF.exit40, %bb.c, %.thread
  %i.w = phi i32 [ %.pre, %Py_DECREF.exit38._Py_NewRef.exit_crit_edge ], [ %i.h, %bb.c ], [ %i.f, %.thread ], [ %i.o, %Py_DECREF.exit40 ], [ %i.q, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %i.r, %Py_DECREF.exit38._Py_NewRef.exit_crit_edge ], [ %0, %bb.c ], [ %0, %.thread ], [ %0, %Py_DECREF.exit40 ], [ %0, %bb.i ] ; 9 uses
  %i.x = getelementptr i8, ptr %.2, i64 25
  %i.y = load i8, ptr %i.x, align 1, !tbaa !35
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = getelementptr i8, ptr %.2, i64 26
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad
  %i.af = getelementptr i8, ptr %.2, i64 27
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr i8, ptr %.2, i64 28
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr i8, ptr %.2, i64 29
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %.2, i64 30
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr i8, ptr %.2, i64 31
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = zext i8 %i.as to i32
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %_Py_NewRef.exit
  %i.au = add nsw i32 %i.w, -1                    ; 2 uses
  store i32 %i.au, ptr %.2, align 8, !tbaa !35
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %_Py_NewRef.exit, %bb.m, %bb.n
  %i.aw = tail call fastcc ptr @build_struct_time(i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %i.at, i32 noundef 0)
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %Py_DECREF.exit38, %Py_DECREF.exit
  %.1 = phi ptr [ %i.aw, %Py_DECREF.exit ], [ null, %Py_DECREF.exit38 ], [ null, %bb.d ]
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
  br i1 %.not45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.s = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.r, ptr noundef nonnull @.str.232, i64 noundef %.val54) #16 ; 0 uses
  br label %bb.ai

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.m, i64 32
  %i.u = load i32, ptr %i.t, align 8              ; 5 uses
  %4 = lshr i32 %i.u, 2
  %i.v = and i32 %4, 7
  %i.w = and i32 %i.u, 32
  %.not.i19.i = icmp eq i32 %i.w, 0               ; 3 uses
  switch i32 %i.v, label %bb.p [
    i32 1, label %bb.j
    i32 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = and i32 %i.u, 64
  %.not.i.i.i = icmp eq i32 %i.x, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.m, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.l:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %i.m, i64 56
  %.val4.i.i = load ptr, ptr %i.y, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.k ], [ %.val4.i.i, %bb.l ]
  %i.z = load i8, ptr %.0.i.i, align 1, !tbaa !35
  %i.aa = zext i8 %i.z to i32
  br label %PyUnicode_READ_CHAR.exit

bb.m:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = and i32 %i.u, 64
  %.not.i.i12.i = icmp eq i32 %i.ab, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.m, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.o:                                             ; preds = %bb.m
  %i.ac = getelementptr i8, ptr %i.m, i64 56
  %.val4.i16.i = load ptr, ptr %i.ac, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.o, %bb.n
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.n ], [ %.val4.i16.i, %bb.o ]
  %i.ad = load i16, ptr %.0.i15.i, align 2, !tbaa !88
  %i.ae = zext i16 %i.ad to i32
  br label %PyUnicode_READ_CHAR.exit

bb.p:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = and i32 %i.u, 64
  %.not.i.i20.i = icmp eq i32 %i.af, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.m, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.r:                                             ; preds = %bb.p
  %i.ag = getelementptr i8, ptr %i.m, i64 56
  %.val4.i24.i = load ptr, ptr %i.ag, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.r, %bb.q
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.q ], [ %.val4.i24.i, %bb.r ]
  %i.ah = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.aa, %_PyUnicode_DATA.exit.i ], [ %i.ae, %_PyUnicode_DATA.exit17.i ], [ %i.ah, %_PyUnicode_DATA.exit25.i ] ; 2 uses
  %.not46 = icmp eq i64 %i.l, 1
  br i1 %.not46, label %bb.x, label %bb.s

bb.s:                                             ; preds = %PyUnicode_READ_CHAR.exit, %bb.d
  %.033 = phi i32 [ %.0.i, %PyUnicode_READ_CHAR.exit ], [ 84, %bb.d ]
  %i.ai = getelementptr i8, ptr %i.k, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %.val = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.al = getelementptr i8, ptr %.val, i64 168
  %.val51 = load i64, ptr %i.al, align 8, !tbaa !81
  %i.am = and i64 %.val51, 268435456
  %.not47 = icmp eq i64 %i.am, 0
  br i1 %.not47, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.aj) #16
  br label %bb.ai

bb.u:                                             ; preds = %bb.s
  %i.an = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.d) #16 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.ai, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #17
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !94
  %.not48 = icmp eq i64 %i.ap, %i.aq
  br i1 %.not48, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  call void @PyErr_SetString(ptr noundef %i.ar, ptr noundef nonnull @.str.184) #16
  br label %bb.ai

bb.x:                                             ; preds = %bb.v, %PyUnicode_READ_CHAR.exit, %.thread57
  %.1 = phi i32 [ %.033, %bb.v ], [ %.0.i, %PyUnicode_READ_CHAR.exit ], [ 84, %.thread57 ]
  %.0 = phi ptr [ %i.an, %bb.v ], [ null, %PyUnicode_READ_CHAR.exit ], [ null, %.thread57 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.as = getelementptr i8, ptr %0, i64 25
  %i.at = getelementptr i8, ptr %0, i64 32
  %i.au = load i8, ptr %i.at, align 1, !tbaa !35
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 16
  %i.ax = getelementptr i8, ptr %0, i64 33
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 8
  %i.bb = or disjoint i32 %i.ba, %i.aw
  %i.bc = getelementptr i8, ptr %0, i64 34
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !35
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bb, %i.be            ; 7 uses
  %i.bg = icmp eq ptr %.0, null
  br i1 %i.bg, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(5) @.str.190) #17
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.z, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.y
  %i.bj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(6) @.str.67) #17
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.thread.i, label %.preheader.1.i

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bl = icmp eq i32 %i.bf, 0
  %.32.i = select i1 %i.bl, i64 2, i64 4
  br label %.thread.i

bb.aa:                                            ; preds = %.preheader.3.i
  %i.bm = udiv i32 %i.bf, 1000
  br label %.thread.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.bn = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(8) @.str.66) #17
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.thread.i, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.bp = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(8) @.str.60) #17
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.thread.i, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.br = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(13) @.str.65) #17
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.aa, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.bt = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(13) @.str.62) #17
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.4.i
  %i.bv = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.bw = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bv, ptr noundef nonnull @.str.191) #16 ; 0 uses
  br label %datetime_datetime_isoformat_impl.exit

.thread.i:                                        ; preds = %.preheader.4.i, %.preheader.2.i, %.preheader.1.i, %bb.aa, %bb.z, %.preheader.preheader.i
  %.136.i = phi i64 [ %.32.i, %bb.z ], [ 3, %bb.aa ], [ 4, %.preheader.4.i ], [ 2, %.preheader.2.i ], [ 1, %.preheader.1.i ], [ 0, %.preheader.preheader.i ]
  %.02635.i = phi i32 [ %i.bf, %bb.z ], [ %i.bm, %bb.aa ], [ %i.bf, %.preheader.4.i ], [ %i.bf, %.preheader.2.i ], [ %i.bf, %.preheader.1.i ], [ %i.bf, %.preheader.preheader.i ]
  %i.bx = getelementptr [16 x i8], ptr @datetime_datetime_isoformat_impl.specs, i64 %.136.i
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !102
  %i.ca = load i8, ptr %i.as, align 1, !tbaa !35
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 8
  %i.cd = getelementptr i8, ptr %0, i64 26
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !35
  %i.cf = zext i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cc, %i.cf
  %i.ch = getelementptr i8, ptr %0, i64 27
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !35
  %i.cj = zext i8 %i.ci to i32
  %i.ck = getelementptr i8, ptr %0, i64 28
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !35
  %i.cm = zext i8 %i.cl to i32
  %i.cn = getelementptr i8, ptr %0, i64 29
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !35
  %i.cp = zext i8 %i.co to i32
  %i.cq = getelementptr i8, ptr %0, i64 30
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !35
  %i.cs = zext i8 %i.cr to i32
  %i.ct = getelementptr i8, ptr %0, i64 31
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !35
  %i.cv = zext i8 %i.cu to i32
  %i.cw = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef %i.bz, i32 noundef %i.cg, i32 noundef %i.cj, i32 noundef %i.cm, i32 noundef %.1, i32 noundef %i.cp, i32 noundef %i.cs, i32 noundef %i.cv, i32 noundef %.02635.i) #16 ; 6 uses
  store ptr %i.cw, ptr %i.b, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.cw, null
  br i1 %.not.i, label %datetime_datetime_isoformat_impl.exit, label %bb.ac

end_hunk_5
