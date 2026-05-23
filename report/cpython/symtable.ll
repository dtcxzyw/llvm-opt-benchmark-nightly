inline.NumInlined: 193
inline.NumDeleted: 37
begin_hunk_0_@_PyST_GetSymbol:bb.a
  %i.n = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !49
  call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.3) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %Py_DECREF.exit, %bb.b, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ 0, %bb.b ], [ -1, %bb.f ], [ -1, %bb.g ], [ %i.g, %Py_DECREF.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.1
}

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 16) i32 @_PyST_GetScope(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = call i32 @PyDict_GetItemRef(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.a) #7
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_PyST_GetSymbol.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i64 @PyLong_AsLong(ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i, label %bb.d, label %Py_DECREF.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !22
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %Py_DECREF.exit.i

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.h) #7
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.e, %bb.d, %bb.c
  %i.l = icmp slt i64 %i.g, 0
  br i1 %i.l, label %bb.f, label %_PyST_GetSymbol.exit

bb.f:                                             ; preds = %Py_DECREF.exit.i
  %i.m = call ptr @PyErr_Occurred() #7
  %.not6.i = icmp eq ptr %i.m, null
  br i1 %.not6.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !49
  call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.3) #7
  br label %bb.h

_PyST_GetSymbol.exit:                             ; preds = %bb.b, %Py_DECREF.exit.i
  %.1.i = phi i64 [ %i.g, %Py_DECREF.exit.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.o = trunc i64 %.1.i to i32
  %i.p = lshr i32 %i.o, 12
  %i.q = and i32 %i.p, 15
  br label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.i

bb.i:                                             ; preds = %_PyST_GetSymbol.exit, %bb.h
  %i.r = phi i32 [ -1, %bb.h ], [ %i.q, %_PyST_GetSymbol.exit ]
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @_PyST_IsFunctionLike(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
switch.lookup:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = icmp ult i32 %i.b, 7
  %switch.maskindex = trunc i32 %i.b to i8
  %switch.shifted = lshr i8 89, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  %i.d = icmp eq i32 %i.b, 5
  %narrow = or i1 %or.cond, %i.d
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_SymtableStringObjectFlags(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._PyFutureFeatures, align 4  ; 6 uses
  %i.a = tail call ptr @_PyArena_New() #7         ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_PyParser_ASTFromString(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %4) #7 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_PyArena_Free(ptr noundef nonnull %i.a) #7
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.e = call i32 @_PyFuture_FromAST(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %5) #7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %3, align 4, !tbaa !139
  %i.g = load i32, ptr %5, align 4, !tbaa !57
  %i.h = or i32 %i.g, %i.f
  store i32 %i.h, ptr %5, align 4, !tbaa !57
  %i.i = call ptr @_PySymtable_Build(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.i, %bb.e ], [ null, %bb.d ]
  call void @_PyArena_Free(ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.c
  %.1 = phi ptr [ %.0, %bb.f ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.1
}

declare ptr @_PyArena_New() local_unnamed_addr #1

declare ptr @_PyParser_ASTFromString(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyArena_Free(ptr noundef) local_unnamed_addr #1

declare i32 @_PyFuture_FromAST(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_MaybeMangle(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @PySet_Contains(ptr noundef nonnull %i.b, ptr noundef %2) #7 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %_Py_NewRef.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %bb.d, label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %2, align 8, !tbaa !22
  br label %_Py_NewRef.exit.thread

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.a
  %i.i = tail call ptr @_Py_Mangle(ptr noundef %0, ptr noundef %2)
  br label %_Py_NewRef.exit.thread

_Py_NewRef.exit.thread:                           ; preds = %bb.e, %bb.d, %bb.b, %_Py_NewRef.exit
  %.1 = phi ptr [ %i.i, %_Py_NewRef.exit ], [ %2, %bb.e ], [ %2, %bb.d ], [ null, %bb.b ]
  ret ptr %.1
}

declare i32 @PySet_Contains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @_Py_Mangle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val44 = load i64, ptr %i.c, align 8, !tbaa !142
  %i.d = and i64 %.val44, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8              ; 14 uses
  %i.g = and i32 %i.f, 28                         ; 4 uses
  %i.h = and i32 %i.f, 32
  %.not.i19.i = icmp eq i32 %i.h, 0               ; 12 uses
  switch i32 %i.g, label %bb.j [
    i32 4, label %bb.d
    i32 8, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i19.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.f, 64
  %.not.i.i.i = icmp eq i32 %i.i, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %1, i64 56
  %.val4.i.i = load ptr, ptr %i.j, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.e ], [ %.val4.i.i, %bb.f ]
  %i.k = load i8, ptr %.0.i.i, align 1, !tbaa !22
  %i.l = zext i8 %i.k to i32
  br label %PyUnicode_READ_CHAR.exit

bb.g:                                             ; preds = %bb.c
  br i1 %.not.i19.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = and i32 %i.f, 64
  %.not.i.i12.i = icmp eq i32 %i.m, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %1, i64 56
  %.val4.i16.i = load ptr, ptr %i.n, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.i, %bb.h
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.h ], [ %.val4.i16.i, %bb.i ]
  %i.o = load i16, ptr %.0.i15.i, align 2, !tbaa !148
  %i.p = zext i16 %i.o to i32
  br label %PyUnicode_READ_CHAR.exit

bb.j:                                             ; preds = %bb.c
  br i1 %.not.i19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = and i32 %i.f, 64
  %.not.i.i20.i = icmp eq i32 %i.q, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.l:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %1, i64 56
  %.val4.i24.i = load ptr, ptr %i.r, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.l, %bb.k
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.k ], [ %.val4.i24.i, %bb.l ]
  %i.s = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.l, %_PyUnicode_DATA.exit.i ], [ %i.p, %_PyUnicode_DATA.exit17.i ], [ %i.s, %_PyUnicode_DATA.exit25.i ]
  %.not40 = icmp eq i32 %.0.i, 95
  br i1 %.not40, label %bb.m, label %bb.w

bb.m:                                             ; preds = %PyUnicode_READ_CHAR.exit
  switch i32 %i.g, label %bb.t [
    i32 4, label %bb.n
    i32 8, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = and i32 %i.f, 64
  %.not.i.i.i55 = icmp eq i32 %i.t, 0
  %.0.v.i.i.i56 = select i1 %.not.i.i.i55, i64 56, i64 40
  %.0.i.i.i57 = getelementptr i8, ptr %1, i64 %.0.v.i.i.i56
  br label %_PyUnicode_DATA.exit.i58

bb.p:                                             ; preds = %bb.n
  %i.u = getelementptr i8, ptr %1, i64 56
  %.val4.i.i60 = load ptr, ptr %i.u, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit.i58

_PyUnicode_DATA.exit.i58:                         ; preds = %bb.p, %bb.o
  %.0.i.i59 = phi ptr [ %.0.i.i.i57, %bb.o ], [ %.val4.i.i60, %bb.p ]
  %i.v = getelementptr i8, ptr %.0.i.i59, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22
  %i.x = zext i8 %i.w to i32
  br label %PyUnicode_READ_CHAR.exit67

bb.q:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = and i32 %i.f, 64
  %.not.i.i12.i48 = icmp eq i32 %i.y, 0
  %.0.v.i.i13.i49 = select i1 %.not.i.i12.i48, i64 56, i64 40
  %.0.i.i14.i50 = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i49
  br label %_PyUnicode_DATA.exit17.i51

bb.s:                                             ; preds = %bb.q
  %i.z = getelementptr i8, ptr %1, i64 56
  %.val4.i16.i54 = load ptr, ptr %i.z, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit17.i51

_PyUnicode_DATA.exit17.i51:                       ; preds = %bb.s, %bb.r
  %.0.i15.i52 = phi ptr [ %.0.i.i14.i50, %bb.r ], [ %.val4.i16.i54, %bb.s ]
  %i.aa = getelementptr i8, ptr %.0.i15.i52, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !148
  %i.ac = zext i16 %i.ab to i32
  br label %PyUnicode_READ_CHAR.exit67

bb.t:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ad = and i32 %i.f, 64
  %.not.i.i20.i61 = icmp eq i32 %i.ad, 0
  %.0.v.i.i21.i62 = select i1 %.not.i.i20.i61, i64 56, i64 40
  %.0.i.i22.i63 = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i62
  br label %_PyUnicode_DATA.exit25.i64

bb.v:                                             ; preds = %bb.t
  %i.ae = getelementptr i8, ptr %1, i64 56
  %.val4.i24.i66 = load ptr, ptr %i.ae, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit25.i64

_PyUnicode_DATA.exit25.i64:                       ; preds = %bb.v, %bb.u
  %.0.i23.i65 = phi ptr [ %.0.i.i22.i63, %bb.u ], [ %.val4.i24.i66, %bb.v ]
  %i.af = getelementptr i8, ptr %.0.i23.i65, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit67

PyUnicode_READ_CHAR.exit67:                       ; preds = %_PyUnicode_DATA.exit.i58, %_PyUnicode_DATA.exit17.i51, %_PyUnicode_DATA.exit25.i64
  %.0.i53 = phi i32 [ %i.x, %_PyUnicode_DATA.exit.i58 ], [ %i.ac, %_PyUnicode_DATA.exit17.i51 ], [ %i.ag, %_PyUnicode_DATA.exit25.i64 ]
  %.not41 = icmp eq i32 %.0.i53, 95
  br i1 %.not41, label %bb.y, label %bb.w

bb.w:                                             ; preds = %PyUnicode_READ_CHAR.exit67, %PyUnicode_READ_CHAR.exit, %bb.b, %bb.a
  %i.ah = load i32, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, -1073741825
  br i1 %i.ai, label %_Py_NewRef.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = add nuw i32 %i.ah, 1
  store i32 %i.aj, ptr %1, align 8, !tbaa !22
  br label %_Py_NewRef.exit

bb.y:                                             ; preds = %PyUnicode_READ_CHAR.exit67
  %i.ak = getelementptr i8, ptr %1, i64 16
  %.val46 = load i64, ptr %i.ak, align 8, !tbaa !149 ; 5 uses
  %i.al = getelementptr i8, ptr %0, i64 16
  %.val45 = load i64, ptr %i.al, align 8, !tbaa !149 ; 3 uses
  %i.am = add i64 %.val46, -1                     ; 3 uses
  switch i32 %i.g, label %bb.af [
    i32 4, label %bb.z
    i32 8, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i19.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = and i32 %i.f, 64
  %.not.i.i.i76 = icmp eq i32 %i.an, 0
  %.0.v.i.i.i77 = select i1 %.not.i.i.i76, i64 56, i64 40
  %.0.i.i.i78 = getelementptr i8, ptr %1, i64 %.0.v.i.i.i77
  br label %_PyUnicode_DATA.exit.i79

bb.ab:                                            ; preds = %bb.z
  %i.ao = getelementptr i8, ptr %1, i64 56
  %.val4.i.i81 = load ptr, ptr %i.ao, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit.i79

_PyUnicode_DATA.exit.i79:                         ; preds = %bb.ab, %bb.aa
  %.0.i.i80 = phi ptr [ %.0.i.i.i78, %bb.aa ], [ %.val4.i.i81, %bb.ab ]
  %i.ap = getelementptr i8, ptr %.0.i.i80, i64 %i.am
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !22
  %i.ar = zext i8 %i.aq to i32
  br label %PyUnicode_READ_CHAR.exit88

bb.ac:                                            ; preds = %bb.y
  br i1 %.not.i19.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.as = and i32 %i.f, 64
  %.not.i.i12.i69 = icmp eq i32 %i.as, 0
  %.0.v.i.i13.i70 = select i1 %.not.i.i12.i69, i64 56, i64 40
  %.0.i.i14.i71 = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i70
  br label %_PyUnicode_DATA.exit17.i72

bb.ae:                                            ; preds = %bb.ac
  %i.at = getelementptr i8, ptr %1, i64 56
  %.val4.i16.i75 = load ptr, ptr %i.at, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit17.i72

_PyUnicode_DATA.exit17.i72:                       ; preds = %bb.ae, %bb.ad
  %.0.i15.i73 = phi ptr [ %.0.i.i14.i71, %bb.ad ], [ %.val4.i16.i75, %bb.ae ]
  %i.au = getelementptr [2 x i8], ptr %.0.i15.i73, i64 %i.am
  %i.av = load i16, ptr %i.au, align 2, !tbaa !148
  %i.aw = zext i16 %i.av to i32
  br label %PyUnicode_READ_CHAR.exit88

bb.af:                                            ; preds = %bb.y
  br i1 %.not.i19.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ax = and i32 %i.f, 64
  %.not.i.i20.i82 = icmp eq i32 %i.ax, 0
  %.0.v.i.i21.i83 = select i1 %.not.i.i20.i82, i64 56, i64 40
  %.0.i.i22.i84 = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i83
  br label %_PyUnicode_DATA.exit25.i85

bb.ah:                                            ; preds = %bb.af
  %i.ay = getelementptr i8, ptr %1, i64 56
  %.val4.i24.i87 = load ptr, ptr %i.ay, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit25.i85

_PyUnicode_DATA.exit25.i85:                       ; preds = %bb.ah, %bb.ag
  %.0.i23.i86 = phi ptr [ %.0.i.i22.i84, %bb.ag ], [ %.val4.i24.i87, %bb.ah ]
  %i.az = getelementptr [4 x i8], ptr %.0.i23.i86, i64 %i.am
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit88

PyUnicode_READ_CHAR.exit88:                       ; preds = %_PyUnicode_DATA.exit.i79, %_PyUnicode_DATA.exit17.i72, %_PyUnicode_DATA.exit25.i85
  %.0.i74 = phi i32 [ %i.ar, %_PyUnicode_DATA.exit.i79 ], [ %i.aw, %_PyUnicode_DATA.exit17.i72 ], [ %i.ba, %_PyUnicode_DATA.exit25.i85 ]
  %i.bb = icmp eq i32 %.0.i74, 95
  br i1 %i.bb, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %PyUnicode_READ_CHAR.exit88
  %i.bc = add i64 %.val46, -2                     ; 3 uses
  switch i32 %i.g, label %bb.ap [
    i32 4, label %bb.aj
    i32 8, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not.i19.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bd = and i32 %i.f, 64
  %.not.i.i.i97 = icmp eq i32 %i.bd, 0
  %.0.v.i.i.i98 = select i1 %.not.i.i.i97, i64 56, i64 40
  %.0.i.i.i99 = getelementptr i8, ptr %1, i64 %.0.v.i.i.i98
  br label %_PyUnicode_DATA.exit.i100

bb.al:                                            ; preds = %bb.aj
  %i.be = getelementptr i8, ptr %1, i64 56
  %.val4.i.i102 = load ptr, ptr %i.be, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit.i100

_PyUnicode_DATA.exit.i100:                        ; preds = %bb.al, %bb.ak
  %.0.i.i101 = phi ptr [ %.0.i.i.i99, %bb.ak ], [ %.val4.i.i102, %bb.al ]
  %i.bf = getelementptr i8, ptr %.0.i.i101, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bh = zext i8 %i.bg to i32
  br label %PyUnicode_READ_CHAR.exit109

bb.am:                                            ; preds = %bb.ai
  br i1 %.not.i19.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bi = and i32 %i.f, 64
  %.not.i.i12.i90 = icmp eq i32 %i.bi, 0
  %.0.v.i.i13.i91 = select i1 %.not.i.i12.i90, i64 56, i64 40
  %.0.i.i14.i92 = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i91
  br label %_PyUnicode_DATA.exit17.i93

bb.ao:                                            ; preds = %bb.am
  %i.bj = getelementptr i8, ptr %1, i64 56
  %.val4.i16.i96 = load ptr, ptr %i.bj, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit17.i93

_PyUnicode_DATA.exit17.i93:                       ; preds = %bb.ao, %bb.an
  %.0.i15.i94 = phi ptr [ %.0.i.i14.i92, %bb.an ], [ %.val4.i16.i96, %bb.ao ]
  %i.bk = getelementptr [2 x i8], ptr %.0.i15.i94, i64 %i.bc
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !148
  %i.bm = zext i16 %i.bl to i32
  br label %PyUnicode_READ_CHAR.exit109

bb.ap:                                            ; preds = %bb.ai
  br i1 %.not.i19.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bn = and i32 %i.f, 64
  %.not.i.i20.i103 = icmp eq i32 %i.bn, 0
  %.0.v.i.i21.i104 = select i1 %.not.i.i20.i103, i64 56, i64 40
  %.0.i.i22.i105 = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i104
  br label %_PyUnicode_DATA.exit25.i106

bb.ar:                                            ; preds = %bb.ap
  %i.bo = getelementptr i8, ptr %1, i64 56
  %.val4.i24.i108 = load ptr, ptr %i.bo, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit25.i106

_PyUnicode_DATA.exit25.i106:                      ; preds = %bb.ar, %bb.aq
  %.0.i23.i107 = phi ptr [ %.0.i.i22.i105, %bb.aq ], [ %.val4.i24.i108, %bb.ar ]
  %i.bp = getelementptr [4 x i8], ptr %.0.i23.i107, i64 %i.bc
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit109

PyUnicode_READ_CHAR.exit109:                      ; preds = %_PyUnicode_DATA.exit.i100, %_PyUnicode_DATA.exit17.i93, %_PyUnicode_DATA.exit25.i106
  %.0.i95 = phi i32 [ %i.bh, %_PyUnicode_DATA.exit.i100 ], [ %i.bm, %_PyUnicode_DATA.exit17.i93 ], [ %i.bq, %_PyUnicode_DATA.exit25.i106 ]
  %i.br = icmp eq i32 %.0.i95, 95
  br i1 %i.br, label %bb.at, label %bb.as

bb.as:                                            ; preds = %PyUnicode_READ_CHAR.exit109, %PyUnicode_READ_CHAR.exit88
  %i.bs = tail call i64 @PyUnicode_FindChar(ptr noundef nonnull %1, i32 noundef 46, i64 noundef 0, i64 noundef %.val46, i32 noundef 1) #7
  %.not42 = icmp eq i64 %i.bs, -1
  br i1 %.not42, label %.preheader, label %bb.at

.preheader:                                       ; preds = %bb.as
  %i.bt = getelementptr i8, ptr %0, i64 32
  %i.bu = load i32, ptr %i.bt, align 8            ; 3 uses
  %i.bv = and i32 %i.bu, 28
  %i.bw = and i32 %i.bu, 32
  %.not.i19.i111 = icmp eq i32 %i.bw, 0           ; 3 uses
  %i.bx = and i32 %i.bu, 64
  %.not.i.i12.i112 = icmp eq i32 %i.bx, 0
  %.0.v.i.i13.i113 = select i1 %.not.i.i12.i112, i64 56, i64 40
  %.0.i.i14.i114 = getelementptr i8, ptr %0, i64 %.0.v.i.i13.i113 ; 3 uses
  %i.by = getelementptr i8, ptr %0, i64 56        ; 3 uses
  switch i32 %i.bv, label %.preheader.split [
    i32 4, label %.preheader.split.us
    i32 8, label %.preheader.split.us133
  ]

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not.i19.i111, label %.preheader.split.us.split.us, label %_PyUnicode_DATA.exit.i122.us

.preheader.split.us.split.us:                     ; preds = %.preheader.split.us
  %.val4.i.i124.us.us = load ptr, ptr %i.by, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit.i122.us.us

_PyUnicode_DATA.exit.i122.us.us:                  ; preds = %_PyUnicode_DATA.exit.i122.us.us, %.preheader.split.us.split.us
  %.036.us.us = phi i64 [ %i.cc, %_PyUnicode_DATA.exit.i122.us.us ], [ 0, %.preheader.split.us.split.us ] ; 3 uses
  %i.bz = getelementptr i8, ptr %.val4.i.i124.us.us, i64 %.036.us.us
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !22
  %i.cb = icmp eq i8 %i.ca, 95
  %i.cc = add i64 %.036.us.us, 1
  br i1 %i.cb, label %_PyUnicode_DATA.exit.i122.us.us, label %.split.us, !llvm.loop !152

_PyUnicode_DATA.exit.i122.us:                     ; preds = %.preheader.split.us, %_PyUnicode_DATA.exit.i122.us
  %.036.us = phi i64 [ %i.cg, %_PyUnicode_DATA.exit.i122.us ], [ 0, %.preheader.split.us ] ; 3 uses
  %i.cd = getelementptr i8, ptr %.0.i.i14.i114, i64 %.036.us
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !22
  %i.cf = icmp eq i8 %i.ce, 95
  %i.cg = add i64 %.036.us, 1
  br i1 %i.cf, label %_PyUnicode_DATA.exit.i122.us, label %.split.us, !llvm.loop !152

.preheader.split.us133:                           ; preds = %.preheader
  br i1 %.not.i19.i111, label %.preheader.split.us133.split.us, label %_PyUnicode_DATA.exit17.i115.us

.preheader.split.us133.split.us:                  ; preds = %.preheader.split.us133
  %.val4.i16.i118.us.us = load ptr, ptr %i.by, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit17.i115.us.us

_PyUnicode_DATA.exit17.i115.us.us:                ; preds = %_PyUnicode_DATA.exit17.i115.us.us, %.preheader.split.us133.split.us
  %.036.us134.us = phi i64 [ %i.ck, %_PyUnicode_DATA.exit17.i115.us.us ], [ 0, %.preheader.split.us133.split.us ] ; 3 uses
  %i.ch = getelementptr [2 x i8], ptr %.val4.i16.i118.us.us, i64 %.036.us134.us
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !148
  %i.cj = icmp eq i16 %i.ci, 95
  %i.ck = add i64 %.036.us134.us, 1
  br i1 %i.cj, label %_PyUnicode_DATA.exit17.i115.us.us, label %.split.us, !llvm.loop !152

_PyUnicode_DATA.exit17.i115.us:                   ; preds = %.preheader.split.us133, %_PyUnicode_DATA.exit17.i115.us
  %.036.us134 = phi i64 [ %i.co, %_PyUnicode_DATA.exit17.i115.us ], [ 0, %.preheader.split.us133 ] ; 3 uses
  %i.cl = getelementptr [2 x i8], ptr %.0.i.i14.i114, i64 %.036.us134
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !148
  %i.cn = icmp eq i16 %i.cm, 95
  %i.co = add i64 %.036.us134, 1
  br i1 %i.cn, label %_PyUnicode_DATA.exit17.i115.us, label %.split.us, !llvm.loop !152

.preheader.split:                                 ; preds = %.preheader
  br i1 %.not.i19.i111, label %.preheader.split.split.us, label %_PyUnicode_DATA.exit25.i128

.preheader.split.split.us:                        ; preds = %.preheader.split
  %.val4.i24.i130.us = load ptr, ptr %i.by, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit25.i128.us

_PyUnicode_DATA.exit25.i128.us:                   ; preds = %_PyUnicode_DATA.exit25.i128.us, %.preheader.split.split.us
  %.036.us139 = phi i64 [ %i.cs, %_PyUnicode_DATA.exit25.i128.us ], [ 0, %.preheader.split.split.us ] ; 3 uses
  %i.cp = getelementptr [4 x i8], ptr %.val4.i24.i130.us, i64 %.036.us139
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cr = icmp eq i32 %i.cq, 95
  %i.cs = add i64 %.036.us139, 1
  br i1 %i.cr, label %_PyUnicode_DATA.exit25.i128.us, label %.split.us, !llvm.loop !152

bb.at:                                            ; preds = %bb.as, %PyUnicode_READ_CHAR.exit109
  %i.ct = load i32, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.cu = icmp ugt i32 %i.ct, -1073741825
  br i1 %i.cu, label %_Py_NewRef.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cv = add nuw i32 %i.ct, 1
  store i32 %i.cv, ptr %1, align 8, !tbaa !22
  br label %_Py_NewRef.exit

_PyUnicode_DATA.exit25.i128:                      ; preds = %.preheader.split, %_PyUnicode_DATA.exit25.i128
  %.036 = phi i64 [ %i.cz, %_PyUnicode_DATA.exit25.i128 ], [ 0, %.preheader.split ] ; 3 uses
  %i.cw = getelementptr [4 x i8], ptr %.0.i.i14.i114, i64 %.036
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %i.cy = icmp eq i32 %i.cx, 95
  %i.cz = add i64 %.036, 1
  br i1 %i.cy, label %_PyUnicode_DATA.exit25.i128, label %.split.us, !llvm.loop !152

.split.us:                                        ; preds = %_PyUnicode_DATA.exit17.i115.us, %_PyUnicode_DATA.exit17.i115.us.us, %_PyUnicode_DATA.exit.i122.us, %_PyUnicode_DATA.exit.i122.us.us, %_PyUnicode_DATA.exit25.i128, %_PyUnicode_DATA.exit25.i128.us
  %.us-phi = phi i64 [ %.036.us139, %_PyUnicode_DATA.exit25.i128.us ], [ %.036.us134.us, %_PyUnicode_DATA.exit17.i115.us.us ], [ %.036.us.us, %_PyUnicode_DATA.exit.i122.us.us ], [ %.036, %_PyUnicode_DATA.exit25.i128 ], [ %.036.us, %_PyUnicode_DATA.exit.i122.us ], [ %.036.us134, %_PyUnicode_DATA.exit17.i115.us ] ; 3 uses
  %i.da = icmp eq i64 %.us-phi, %.val45
  br i1 %i.da, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %.split.us
  %i.db = load i32, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.dc = icmp ugt i32 %i.db, -1073741825
  br i1 %i.dc, label %_Py_NewRef.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dd = add nuw i32 %i.db, 1
  store i32 %i.dd, ptr %1, align 8, !tbaa !22
  br label %_Py_NewRef.exit

bb.ax:                                            ; preds = %.split.us
  %i.de = sub i64 %.val45, %.us-phi               ; 2 uses
  %i.df = add i64 %i.de, %.val46
  %i.dg = icmp ugt i64 %i.df, 9223372036854775805
  br i1 %i.dg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dh = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.dh, ptr noundef nonnull @.str.4) #7
  br label %_Py_NewRef.exit

bb.az:                                            ; preds = %bb.ax
  %i.di = add i64 %.val46, 1
  %i.dj = add i64 %i.di, %i.de
  %i.dk = tail call ptr @PyUnicodeWriter_Create(i64 noundef %i.dj) #7 ; 6 uses
  %.not43 = icmp eq ptr %i.dk, null
  br i1 %.not43, label %_Py_NewRef.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dl = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %i.dk, i32 noundef 95) #7
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dn = tail call i32 @PyUnicodeWriter_WriteSubstring(ptr noundef nonnull %i.dk, ptr noundef nonnull %0, i64 noundef %.us-phi, i64 noundef %.val45) #7
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dp = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %i.dk, ptr noundef nonnull %1) #7
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dr = tail call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.dk) #7
  br label %_Py_NewRef.exit

bb.be:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  tail call void @PyUnicodeWriter_Discard(ptr noundef nonnull %i.dk) #7
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.x, %bb.w, %bb.bd, %bb.be, %bb.az, %bb.ay
  %.3 = phi ptr [ null, %bb.az ], [ %1, %bb.x ], [ %1, %bb.au ], [ null, %bb.ay ], [ null, %bb.be ], [ %i.dr, %bb.bd ], [ %1, %bb.w ], [ %1, %bb.at ], [ %1, %bb.av ], [ %1, %bb.aw ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @_Py_IsPrivateName(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val12 = load i64, ptr %i.b, align 8, !tbaa !142
  %i.c = and i64 %.val12, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.d, align 8, !tbaa !149 ; 3 uses
  %i.e = icmp slt i64 %.val13, 3
  br i1 %i.e, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 14 uses
  %i.h = and i32 %i.g, 28                         ; 4 uses
  %i.i = and i32 %i.g, 32
  %.not.i19.i = icmp eq i32 %i.i, 0               ; 12 uses
  switch i32 %i.h, label %bb.j [
    i32 4, label %bb.d
    i32 8, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i19.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.g, 64
  %.not.i.i.i = icmp eq i32 %i.j, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.k, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.e ], [ %.val4.i.i, %bb.f ]
  %i.l = load i8, ptr %.0.i.i, align 1, !tbaa !22
  %i.m = zext i8 %i.l to i32
  br label %PyUnicode_READ_CHAR.exit

bb.g:                                             ; preds = %bb.c
  br i1 %.not.i19.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = and i32 %i.g, 64
  %.not.i.i12.i = icmp eq i32 %i.n, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %0, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %0, i64 56
  %.val4.i16.i = load ptr, ptr %i.o, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.i, %bb.h
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.h ], [ %.val4.i16.i, %bb.i ]
  %i.p = load i16, ptr %.0.i15.i, align 2, !tbaa !148
  %i.q = zext i16 %i.p to i32
  br label %PyUnicode_READ_CHAR.exit

bb.j:                                             ; preds = %bb.c
  br i1 %.not.i19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = and i32 %i.g, 64
  %.not.i.i20.i = icmp eq i32 %i.r, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %0, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.l:                                             ; preds = %bb.j
  %i.s = getelementptr i8, ptr %0, i64 56
  %.val4.i24.i = load ptr, ptr %i.s, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.l, %bb.k
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.k ], [ %.val4.i24.i, %bb.l ]
  %i.t = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.m, %_PyUnicode_DATA.exit.i ], [ %i.q, %_PyUnicode_DATA.exit17.i ], [ %i.t, %_PyUnicode_DATA.exit25.i ]
  %.not10 = icmp eq i32 %.0.i, 95
  br i1 %.not10, label %bb.m, label %bb.ar

bb.m:                                             ; preds = %PyUnicode_READ_CHAR.exit
  switch i32 %i.h, label %bb.t [
    i32 4, label %bb.n
    i32 8, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = and i32 %i.g, 64
  %.not.i.i.i22 = icmp eq i32 %i.u, 0
  %.0.v.i.i.i23 = select i1 %.not.i.i.i22, i64 56, i64 40
  %.0.i.i.i24 = getelementptr i8, ptr %0, i64 %.0.v.i.i.i23
  br label %_PyUnicode_DATA.exit.i25

bb.p:                                             ; preds = %bb.n
  %i.v = getelementptr i8, ptr %0, i64 56
  %.val4.i.i27 = load ptr, ptr %i.v, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit.i25

_PyUnicode_DATA.exit.i25:                         ; preds = %bb.p, %bb.o
  %.0.i.i26 = phi ptr [ %.0.i.i.i24, %bb.o ], [ %.val4.i.i27, %bb.p ]
  %i.w = getelementptr i8, ptr %.0.i.i26, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22
  %i.y = zext i8 %i.x to i32
  br label %PyUnicode_READ_CHAR.exit34

bb.q:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = and i32 %i.g, 64
  %.not.i.i12.i15 = icmp eq i32 %i.z, 0
  %.0.v.i.i13.i16 = select i1 %.not.i.i12.i15, i64 56, i64 40
  %.0.i.i14.i17 = getelementptr i8, ptr %0, i64 %.0.v.i.i13.i16
  br label %_PyUnicode_DATA.exit17.i18

bb.s:                                             ; preds = %bb.q
  %i.aa = getelementptr i8, ptr %0, i64 56
  %.val4.i16.i21 = load ptr, ptr %i.aa, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit17.i18

_PyUnicode_DATA.exit17.i18:                       ; preds = %bb.s, %bb.r
  %.0.i15.i19 = phi ptr [ %.0.i.i14.i17, %bb.r ], [ %.val4.i16.i21, %bb.s ]
  %i.ab = getelementptr i8, ptr %.0.i15.i19, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !148
  %i.ad = zext i16 %i.ac to i32
  br label %PyUnicode_READ_CHAR.exit34

bb.t:                                             ; preds = %bb.m
  br i1 %.not.i19.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = and i32 %i.g, 64
  %.not.i.i20.i28 = icmp eq i32 %i.ae, 0
  %.0.v.i.i21.i29 = select i1 %.not.i.i20.i28, i64 56, i64 40
  %.0.i.i22.i30 = getelementptr i8, ptr %0, i64 %.0.v.i.i21.i29
  br label %_PyUnicode_DATA.exit25.i31

bb.v:                                             ; preds = %bb.t
  %i.af = getelementptr i8, ptr %0, i64 56
  %.val4.i24.i33 = load ptr, ptr %i.af, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit25.i31

_PyUnicode_DATA.exit25.i31:                       ; preds = %bb.v, %bb.u
  %.0.i23.i32 = phi ptr [ %.0.i.i22.i30, %bb.u ], [ %.val4.i24.i33, %bb.v ]
  %i.ag = getelementptr i8, ptr %.0.i23.i32, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit34

PyUnicode_READ_CHAR.exit34:                       ; preds = %_PyUnicode_DATA.exit.i25, %_PyUnicode_DATA.exit17.i18, %_PyUnicode_DATA.exit25.i31
  %.0.i20 = phi i32 [ %i.y, %_PyUnicode_DATA.exit.i25 ], [ %i.ad, %_PyUnicode_DATA.exit17.i18 ], [ %i.ah, %_PyUnicode_DATA.exit25.i31 ]
  %.not11 = icmp eq i32 %.0.i20, 95
  br i1 %.not11, label %bb.w, label %bb.ar

bb.w:                                             ; preds = %PyUnicode_READ_CHAR.exit34
  %i.ai = add nsw i64 %.val13, -1                 ; 3 uses
  switch i32 %i.h, label %bb.ad [
    i32 4, label %bb.x
    i32 8, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  br i1 %.not.i19.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aj = and i32 %i.g, 64
  %.not.i.i.i43 = icmp eq i32 %i.aj, 0
  %.0.v.i.i.i44 = select i1 %.not.i.i.i43, i64 56, i64 40
  %.0.i.i.i45 = getelementptr i8, ptr %0, i64 %.0.v.i.i.i44
  br label %_PyUnicode_DATA.exit.i46

bb.z:                                             ; preds = %bb.x
  %i.ak = getelementptr i8, ptr %0, i64 56
  %.val4.i.i48 = load ptr, ptr %i.ak, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit.i46

_PyUnicode_DATA.exit.i46:                         ; preds = %bb.z, %bb.y
  %.0.i.i47 = phi ptr [ %.0.i.i.i45, %bb.y ], [ %.val4.i.i48, %bb.z ]
  %i.al = getelementptr i8, ptr %.0.i.i47, i64 %i.ai
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22
  %i.an = zext i8 %i.am to i32
  br label %PyUnicode_READ_CHAR.exit55

bb.aa:                                            ; preds = %bb.w
  br i1 %.not.i19.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ao = and i32 %i.g, 64
  %.not.i.i12.i36 = icmp eq i32 %i.ao, 0
  %.0.v.i.i13.i37 = select i1 %.not.i.i12.i36, i64 56, i64 40
  %.0.i.i14.i38 = getelementptr i8, ptr %0, i64 %.0.v.i.i13.i37
  br label %_PyUnicode_DATA.exit17.i39

bb.ac:                                            ; preds = %bb.aa
  %i.ap = getelementptr i8, ptr %0, i64 56
  %.val4.i16.i42 = load ptr, ptr %i.ap, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit17.i39

_PyUnicode_DATA.exit17.i39:                       ; preds = %bb.ac, %bb.ab
  %.0.i15.i40 = phi ptr [ %.0.i.i14.i38, %bb.ab ], [ %.val4.i16.i42, %bb.ac ]
  %i.aq = getelementptr [2 x i8], ptr %.0.i15.i40, i64 %i.ai
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !148
  %i.as = zext i16 %i.ar to i32
  br label %PyUnicode_READ_CHAR.exit55

bb.ad:                                            ; preds = %bb.w
  br i1 %.not.i19.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.at = and i32 %i.g, 64
  %.not.i.i20.i49 = icmp eq i32 %i.at, 0
  %.0.v.i.i21.i50 = select i1 %.not.i.i20.i49, i64 56, i64 40
  %.0.i.i22.i51 = getelementptr i8, ptr %0, i64 %.0.v.i.i21.i50
  br label %_PyUnicode_DATA.exit25.i52

bb.af:                                            ; preds = %bb.ad
  %i.au = getelementptr i8, ptr %0, i64 56
  %.val4.i24.i54 = load ptr, ptr %i.au, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit25.i52

_PyUnicode_DATA.exit25.i52:                       ; preds = %bb.af, %bb.ae
  %.0.i23.i53 = phi ptr [ %.0.i.i22.i51, %bb.ae ], [ %.val4.i24.i54, %bb.af ]
  %i.av = getelementptr [4 x i8], ptr %.0.i23.i53, i64 %i.ai
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit55

PyUnicode_READ_CHAR.exit55:                       ; preds = %_PyUnicode_DATA.exit.i46, %_PyUnicode_DATA.exit17.i39, %_PyUnicode_DATA.exit25.i52
  %.0.i41 = phi i32 [ %i.an, %_PyUnicode_DATA.exit.i46 ], [ %i.as, %_PyUnicode_DATA.exit17.i39 ], [ %i.aw, %_PyUnicode_DATA.exit25.i52 ]
  %i.ax = icmp eq i32 %.0.i41, 95
  br i1 %i.ax, label %bb.ag, label %bb.aq

bb.ag:                                            ; preds = %PyUnicode_READ_CHAR.exit55
  %i.ay = add nsw i64 %.val13, -2                 ; 3 uses
  switch i32 %i.h, label %bb.an [
    i32 4, label %bb.ah
    i32 8, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not.i19.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.az = and i32 %i.g, 64
  %.not.i.i.i64 = icmp eq i32 %i.az, 0
  %.0.v.i.i.i65 = select i1 %.not.i.i.i64, i64 56, i64 40
  %.0.i.i.i66 = getelementptr i8, ptr %0, i64 %.0.v.i.i.i65
  br label %_PyUnicode_DATA.exit.i67

bb.aj:                                            ; preds = %bb.ah
  %i.ba = getelementptr i8, ptr %0, i64 56
  %.val4.i.i69 = load ptr, ptr %i.ba, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit.i67

_PyUnicode_DATA.exit.i67:                         ; preds = %bb.aj, %bb.ai
  %.0.i.i68 = phi ptr [ %.0.i.i.i66, %bb.ai ], [ %.val4.i.i69, %bb.aj ]
  %i.bb = getelementptr i8, ptr %.0.i.i68, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !22
  %i.bd = zext i8 %i.bc to i32
  br label %PyUnicode_READ_CHAR.exit76

bb.ak:                                            ; preds = %bb.ag
  br i1 %.not.i19.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.be = and i32 %i.g, 64
  %.not.i.i12.i57 = icmp eq i32 %i.be, 0
  %.0.v.i.i13.i58 = select i1 %.not.i.i12.i57, i64 56, i64 40
  %.0.i.i14.i59 = getelementptr i8, ptr %0, i64 %.0.v.i.i13.i58
  br label %_PyUnicode_DATA.exit17.i60

bb.am:                                            ; preds = %bb.ak
  %i.bf = getelementptr i8, ptr %0, i64 56
  %.val4.i16.i63 = load ptr, ptr %i.bf, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit17.i60

_PyUnicode_DATA.exit17.i60:                       ; preds = %bb.am, %bb.al
  %.0.i15.i61 = phi ptr [ %.0.i.i14.i59, %bb.al ], [ %.val4.i16.i63, %bb.am ]
  %i.bg = getelementptr [2 x i8], ptr %.0.i15.i61, i64 %i.ay
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !148
  %i.bi = zext i16 %i.bh to i32
  br label %PyUnicode_READ_CHAR.exit76

bb.an:                                            ; preds = %bb.ag
  br i1 %.not.i19.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bj = and i32 %i.g, 64
  %.not.i.i20.i70 = icmp eq i32 %i.bj, 0
  %.0.v.i.i21.i71 = select i1 %.not.i.i20.i70, i64 56, i64 40
  %.0.i.i22.i72 = getelementptr i8, ptr %0, i64 %.0.v.i.i21.i71
  br label %_PyUnicode_DATA.exit25.i73

bb.ap:                                            ; preds = %bb.an
  %i.bk = getelementptr i8, ptr %0, i64 56
  %.val4.i24.i75 = load ptr, ptr %i.bk, align 8, !tbaa !22
  br label %_PyUnicode_DATA.exit25.i73

_PyUnicode_DATA.exit25.i73:                       ; preds = %bb.ap, %bb.ao
  %.0.i23.i74 = phi ptr [ %.0.i.i22.i72, %bb.ao ], [ %.val4.i24.i75, %bb.ap ]
  %i.bl = getelementptr [4 x i8], ptr %.0.i23.i74, i64 %i.ay
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit76

PyUnicode_READ_CHAR.exit76:                       ; preds = %_PyUnicode_DATA.exit.i67, %_PyUnicode_DATA.exit17.i60, %_PyUnicode_DATA.exit25.i73
  %.0.i62 = phi i32 [ %i.bd, %_PyUnicode_DATA.exit.i67 ], [ %i.bi, %_PyUnicode_DATA.exit17.i60 ], [ %i.bm, %_PyUnicode_DATA.exit25.i73 ]
  %i.bn = icmp eq i32 %.0.i62, 95
  br i1 %i.bn, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %PyUnicode_READ_CHAR.exit76, %PyUnicode_READ_CHAR.exit55
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %PyUnicode_READ_CHAR.exit34, %PyUnicode_READ_CHAR.exit, %bb.b, %PyUnicode_READ_CHAR.exit76, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.aq ], [ 0, %bb.b ], [ 0, %PyUnicode_READ_CHAR.exit34 ], [ 0, %PyUnicode_READ_CHAR.exit ], [ 0, %PyUnicode_READ_CHAR.exit76 ]
  ret i32 %.1
}

declare i64 @PyUnicode_FindChar(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyUnicodeWriter_Create(i64 noundef) local_unnamed_addr #1

declare i32 @PyUnicodeWriter_WriteChar(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyUnicodeWriter_WriteSubstring(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyUnicodeWriter_WriteStr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #1

declare void @PyUnicodeWriter_Discard(ptr noundef) local_unnamed_addr #1

declare void @PyObject_Free(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare ptr @PyDict_New() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #5

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PySet_New(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @analyze_block(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef readonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  store i64 0, ptr %i.g, align 8, !tbaa !153
  %i.h = tail call ptr @PySet_New(ptr noundef null) #7 ; 6 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %Py_XDECREF.exit235, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyDict_New() #7           ; 15 uses
  %.not147 = icmp eq ptr %i.i, null
  br i1 %.not147, label %Py_XDECREF.exit.thread334, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @PySet_New(ptr noundef null) #7 ; 7 uses
  %.not148 = icmp eq ptr %i.j, null
  br i1 %.not148, label %Py_DECREF.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @PySet_New(ptr noundef null) #7 ; 70 uses
  %.not149 = icmp eq ptr %i.k, null
  br i1 %.not149, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @PySet_New(ptr noundef null) #7 ; 70 uses
  %.not150 = icmp eq ptr %i.l, null
  br i1 %.not150, label %Py_DECREF.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @PySet_New(ptr noundef null) #7 ; 65 uses
  %.not151 = icmp eq ptr %i.m, null
  br i1 %.not151, label %Py_DECREF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 72         ; 8 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.h, label %Py_DECREF.exit196

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @PyNumber_InPlaceOr(ptr noundef nonnull %i.j, ptr noundef nonnull %3) #7 ; 4 uses
  %.not152 = icmp eq ptr %i.q, null
  br i1 %.not152, label %Py_DECREF.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22   ; 2 uses
  %.not.i197 = icmp sgt i32 %i.r, -1
  br i1 %.not.i197, label %bb.j, label %Py_DECREF.exit198

bb.j:                                             ; preds = %bb.i
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !22
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %Py_DECREF.exit198

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #7
  br label %Py_DECREF.exit198

Py_DECREF.exit198:                                ; preds = %bb.i, %bb.j, %bb.k
  %.not153 = icmp eq ptr %1, null
  br i1 %.not153, label %Py_DECREF.exit196, label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit198
  %i.u = tail call ptr @PyNumber_InPlaceOr(ptr noundef nonnull %i.l, ptr noundef nonnull %1) #7 ; 4 uses
  %.not154 = icmp eq ptr %i.u, null
  br i1 %.not154, label %Py_DECREF.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load i32, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %.not.i195 = icmp sgt i32 %i.v, -1
  br i1 %.not.i195, label %bb.n, label %Py_DECREF.exit196

bb.n:                                             ; preds = %bb.m
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !22
  %i.x = icmp eq i32 %i.w, 0
end_hunk_0
