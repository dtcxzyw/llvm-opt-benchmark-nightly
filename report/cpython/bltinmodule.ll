inline.NumInlined: 272
inline.NumDeleted: 70
begin_hunk_0_@filter_vectorcall:bb.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i64 %2, 9223372036854775807          ; 2 uses
  %or.cond3 = icmp eq i64 %i.d, 2
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str, i64 noundef %i.d, i64 noundef 2, i64 noundef 2) #10
  %.not25 = icmp eq i32 %i.e, 0
  br i1 %.not25, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = tail call ptr @PyObject_GetIter(ptr noundef %i.g) #10 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 304
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.l = tail call ptr %i.k(ptr noundef %0, i64 noundef 0) #10 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.h, align 8, !tbaa !17
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #10
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %1, align 8, !tbaa !31     ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_Py_NewRef.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %i.q, align 8, !tbaa !17
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.j, %bb.k
  %i.u = getelementptr i8, ptr %i.l, i64 16
  store ptr %i.q, ptr %i.u, align 8, !tbaa !11
  %i.v = getelementptr i8, ptr %i.l, i64 24
  store ptr %i.h, ptr %i.v, align 8, !tbaa !18
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.d, %_Py_NewRef.exit, %bb.e, %bb.b
  %.3 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.e ], [ %i.l, %_Py_NewRef.exit ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal void @map_dealloc(ptr noundef %0) #0 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #10
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i.i, label %bb.c, label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !17
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 4 uses
  %.not.i6 = icmp eq ptr %i.g, null
  br i1 %.not.i6, label %Py_XDECREF.exit8, label %bb.e

bb.e:                                             ; preds = %Py_XDECREF.exit
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.not.i.i7 = icmp sgt i32 %i.h, -1
  br i1 %.not.i.i7, label %bb.f, label %Py_XDECREF.exit8

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !17
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_XDECREF.exit8

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #10
  br label %Py_XDECREF.exit8

Py_XDECREF.exit8:                                 ; preds = %Py_XDECREF.exit, %bb.e, %bb.f, %bb.g
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr i8, ptr %.val, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  tail call void %i.m(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @map_traverse(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #10 ; 2 uses
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #10 ; 2 uses
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @map_next(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !38  ; 7 uses
  %i.g = icmp slt i64 %.val, 6
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %.val, 3
  %i.i = tail call ptr @PyMem_Malloc(i64 noundef %i.h) #10 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @_PyErr_NoMemory(ptr noundef %i.c) #10 ; 0 uses
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  %i.l = icmp sgt i64 %.val, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.d
  %.054119 = phi ptr [ %i.a, %bb.d ], [ %i.i, %bb.b ] ; 9 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.05294 = phi i64 [ %i.y, %bb.f ], [ 0, %.lr.ph.preheader ] ; 10 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %.05294
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val79 = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.r = getelementptr i8, ptr %.val79, i64 224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.t = tail call ptr %i.s(ptr noundef %i.p) #10 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !39
  %.fr = freeze i32 %i.w
  %.not = icmp eq i32 %.fr, 0
  br i1 %.not, label %_PyObject_VectorcallTstate.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.x = getelementptr [8 x i8], ptr %.054119, i64 %.05294
  store ptr %i.t, ptr %i.x, align 8, !tbaa !31
  %i.y = add nuw nsw i64 %.05294, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %.val
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.054118 = phi ptr [ %i.a, %bb.d ], [ %.054119, %bb.f ] ; 4 uses
  %.058.lcssa = phi i64 [ 0, %bb.d ], [ %.val, %bb.f ] ; 4 uses
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 5 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val.i.i = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
  %i.ac = getelementptr i8, ptr %.val.i.i, i64 168
  %.val6.i.i = load i64, ptr %i.ac, align 8, !tbaa !42
  %i.ad = and i64 %.val6.i.i, 2048
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i, label %_PyVectorcall_FunctionInline.exit.i

_PyVectorcall_FunctionInline.exit.i:              ; preds = %._crit_edge
  %i.ae = getelementptr i8, ptr %.val.i.i, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr i8, ptr %i.aa, i64 %i.af
  %.0.copyload.i.i = load ptr, ptr %i.ag, align 1 ; 2 uses
  %i.ah = icmp eq ptr %.0.copyload.i.i, null
  br i1 %i.ah, label %_PyVectorcall_FunctionInline.exit.thread.i, label %bb.g

_PyVectorcall_FunctionInline.exit.thread.i:       ; preds = %_PyVectorcall_FunctionInline.exit.i, %._crit_edge
  %i.ai = call ptr @_PyObject_MakeTpCall(ptr noundef %i.c, ptr noundef nonnull %i.aa, ptr noundef nonnull %.054118, i64 noundef %.058.lcssa, ptr noundef null) #10
  br label %_PyObject_VectorcallTstate.exit

bb.g:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i
  %i.aj = call ptr %.0.copyload.i.i(ptr noundef nonnull %i.aa, ptr noundef nonnull %.054118, i64 noundef %.058.lcssa, ptr noundef null) #10, !inline_history !44
  %i.ak = call ptr @_Py_CheckFunctionResult(ptr noundef %i.c, ptr noundef nonnull %i.aa, ptr noundef %i.aj, ptr noundef null) #10
  br label %_PyObject_VectorcallTstate.exit

bb.h:                                             ; preds = %bb.e
  %i.al = tail call ptr @PyErr_Occurred() #10
  %.not66 = icmp eq ptr %i.al, null
  br i1 %.not66, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !31
  %i.an = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.am) #10
  %.not67 = icmp eq i32 %i.an, 0
  br i1 %.not67, label %_PyObject_VectorcallTstate.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @PyErr_Clear() #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.not68 = icmp eq i64 %.05294, 0
  br i1 %.not68, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %.not101 = icmp eq i64 %.val, 1
  br i1 %.not101, label %._crit_edge100, label %.lr.ph96.preheader

.lr.ph96.preheader:                               ; preds = %.preheader
  %smax = tail call i64 @llvm.smax.i64(i64 %.val, i64 2)
  br label %.lr.ph96

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq i64 %.05294, 1
  %i.ap = select i1 %i.ao, ptr @.str.36, ptr @.str.37
  %i.aq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !31
  %i.ar = add nuw nsw i64 %.05294, 1
  %i.as = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aq, ptr noundef nonnull @.str.38, i64 noundef %i.ar, ptr noundef nonnull %i.ap, i64 noundef %.05294) #10 ; 0 uses
  br label %_PyObject_VectorcallTstate.exit

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %bb.s
  %.15395 = phi i64 [ %i.bm, %bb.s ], [ 1, %.lr.ph96.preheader ] ; 5 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.au = getelementptr i8, ptr %i.at, i64 32
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.15395
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val78 = load ptr, ptr %i.ax, align 8, !tbaa !19
  %i.ay = getelementptr i8, ptr %.val78, i64 224
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29
  %i.ba = tail call ptr %i.az(ptr noundef %i.aw) #10 ; 4 uses
  %.not69 = icmp eq ptr %i.ba, null
  br i1 %.not69, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph96
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !17 ; 2 uses
  %.not.i75 = icmp sgt i32 %i.bb, -1
  br i1 %.not.i75, label %bb.n, label %Py_DECREF.exit76

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !17
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %Py_DECREF.exit76

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ba) #10
  br label %Py_DECREF.exit76

Py_DECREF.exit76:                                 ; preds = %bb.m, %bb.n, %bb.o
  %i.be = icmp eq i64 %.15395, 1
  %i.bf = select i1 %i.be, ptr @.str.36, ptr @.str.37
  %i.bg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !31
  %i.bh = add nuw nsw i64 %.15395, 1
  %i.bi = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bg, ptr noundef nonnull @.str.39, i64 noundef %i.bh, ptr noundef nonnull %i.bf, i64 noundef %.15395) #10 ; 0 uses
  br label %._crit_edge100

bb.p:                                             ; preds = %.lr.ph96
  %i.bj = tail call ptr @PyErr_Occurred() #10
  %.not70 = icmp eq ptr %i.bj, null
  br i1 %.not70, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !31
  %i.bl = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.bk) #10
  %.not71 = icmp eq i32 %i.bl, 0
  br i1 %.not71, label %._crit_edge100, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @PyErr_Clear() #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.bm = add nuw nsw i64 %.15395, 1              ; 2 uses
  %exitcond107.not = icmp eq i64 %i.bm, %smax
  br i1 %exitcond107.not, label %._crit_edge100, label %.lr.ph96, !llvm.loop !45

_PyObject_VectorcallTstate.exit:                  ; preds = %bb.g, %_PyVectorcall_FunctionInline.exit.thread.i, %bb.e, %bb.l, %bb.i
  %.054117 = phi ptr [ %.054119, %bb.l ], [ %.054118, %bb.g ], [ %.054118, %_PyVectorcall_FunctionInline.exit.thread.i ], [ %.054119, %bb.i ], [ %.054119, %bb.e ] ; 3 uses
  %.05892 = phi i64 [ %.05294, %bb.l ], [ %.058.lcssa, %bb.g ], [ %.058.lcssa, %_PyVectorcall_FunctionInline.exit.thread.i ], [ %.05294, %bb.i ], [ %.05294, %bb.e ] ; 2 uses
  %.055 = phi ptr [ null, %bb.l ], [ %i.ak, %bb.g ], [ %i.ai, %_PyVectorcall_FunctionInline.exit.thread.i ], [ null, %bb.i ], [ null, %bb.e ] ; 2 uses
  %i.bn = icmp sgt i64 %.05892, 0
  br i1 %i.bn, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %_PyObject_VectorcallTstate.exit, %Py_DECREF.exit
  %.298 = phi i64 [ %i.bt, %Py_DECREF.exit ], [ 0, %_PyObject_VectorcallTstate.exit ] ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %.054117, i64 %.298
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp sgt i32 %i.bq, -1
  br i1 %.not.i, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %.lr.ph99
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !17
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.u, label %Py_DECREF.exit

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %i.bp) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.lr.ph99, %bb.t, %bb.u
  %i.bt = add nuw nsw i64 %.298, 1                ; 2 uses
  %exitcond108.not = icmp eq i64 %i.bt, %.05892
  br i1 %exitcond108.not, label %._crit_edge100, label %.lr.ph99, !llvm.loop !46

._crit_edge100:                                   ; preds = %bb.s, %bb.q, %Py_DECREF.exit, %.preheader, %Py_DECREF.exit76, %_PyObject_VectorcallTstate.exit
  %.055124 = phi ptr [ %.055, %Py_DECREF.exit ], [ %.055, %_PyObject_VectorcallTstate.exit ], [ null, %Py_DECREF.exit76 ], [ null, %.preheader ], [ null, %bb.q ], [ null, %bb.s ] ; 2 uses
  %.054117123 = phi ptr [ %.054117, %Py_DECREF.exit ], [ %.054117, %_PyObject_VectorcallTstate.exit ], [ %.054119, %Py_DECREF.exit76 ], [ %.054119, %.preheader ], [ %.054119, %bb.q ], [ %.054119, %bb.s ] ; 2 uses
  %.not72 = icmp eq ptr %.054117123, %i.a
  br i1 %.not72, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge100
  call void @PyMem_Free(ptr noundef nonnull %.054117123) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge100, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %.055124, %._crit_edge100 ], [ %.055124, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @map_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyTuple_New(i64 noundef 0) #10 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef nonnull %i.b, ptr noundef nonnull %2, ptr noundef nonnull @.str.45, ptr noundef nonnull @map_new.kwlist, ptr noundef nonnull %i.a) #10
  %i.e = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i43 = icmp sgt i32 %i.e, -1
  br i1 %.not.i43, label %bb.d, label %Py_DECREF.exit44

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.b, align 8, !tbaa !17
end_hunk_0
begin_hunk_1_@builtin_locals:bb.a
  %.1.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.g ], [ %i.e, %bb.f ], [ %i.k, %bb.e ], [ @_Py_NoneStruct, %bb.d ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_max(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc ptr @min_max(ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_min(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc ptr @min_max(ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_next(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.85, i64 noundef %2, i64 noundef 1, i64 noundef 2) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !31     ; 4 uses
  %i.d = tail call i32 @PyIter_Check(ptr noundef %i.c) #10
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !31
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val20 = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr i8, ptr %.val20, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.166, ptr noundef %i.h) #10 ; 0 uses
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr i8, ptr %.val, i64 224
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.m = tail call ptr %i.l(ptr noundef %i.c) #10 ; 2 uses
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.f, label %_Py_NewRef.exit

bb.f:                                             ; preds = %bb.e
  %i.n = icmp sgt i64 %2, 1
  br i1 %i.n, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 4 uses
  %i.q = tail call ptr @PyErr_Occurred() #10
  %.not18 = icmp eq ptr %i.q, null
  br i1 %.not18, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !31
  %i.s = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.r) #10
  %.not19 = icmp eq i32 %i.s, 0
  br i1 %.not19, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @PyErr_Clear() #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.t = load i32, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %i.u = icmp ugt i32 %i.t, -1073741825
  br i1 %i.u, label %_Py_NewRef.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = add nuw i32 %i.t, 1
  store i32 %i.v, ptr %i.p, align 8, !tbaa !17
  br label %_Py_NewRef.exit

bb.l:                                             ; preds = %bb.f
  %i.w = tail call ptr @PyErr_Occurred() #10
  %.not17 = icmp eq ptr %i.w, null
  br i1 %.not17, label %bb.m, label %_Py_NewRef.exit

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !31
  tail call void @PyErr_SetNone(ptr noundef %i.x) #10
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.k, %bb.j, %bb.l, %bb.h, %bb.e, %bb.b, %bb.m, %bb.d
  %.1 = phi ptr [ null, %bb.b ], [ %i.m, %bb.e ], [ null, %bb.h ], [ null, %bb.m ], [ null, %bb.d ], [ null, %bb.l ], [ %i.p, %bb.j ], [ %i.p, %bb.k ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_anext(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.86, i64 noundef %2, i64 noundef 1, i64 noundef 2) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %builtin_anext_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.d = icmp slt i64 %2, 2
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ null, %bb.c ], [ %i.f, %bb.d ]  ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %i.h = getelementptr i8, ptr %.val.i, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !31
  %i.o = getelementptr i8, ptr %.val.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.167, ptr noundef %i.p) #10 ; 0 uses
  br label %builtin_anext_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.r = tail call ptr %i.l(ptr noundef nonnull %i.c) #10, !inline_history !110 ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %builtin_anext_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = icmp eq ptr %.0, null
  br i1 %i.t, label %builtin_anext_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr @PyAnextAwaitable_New(ptr noundef nonnull %i.r, ptr noundef nonnull %.0) #10 ; 3 uses
  %i.v = load i32, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i.i, label %bb.k, label %builtin_anext_impl.exit

bb.k:                                             ; preds = %bb.j
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.r, align 8, !tbaa !17
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %builtin_anext_impl.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #10
  br label %builtin_anext_impl.exit

builtin_anext_impl.exit:                          ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.b
  %.010 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ %i.r, %bb.i ], [ null, %bb.h ], [ %i.u, %bb.j ], [ %i.u, %bb.k ], [ %i.u, %bb.l ]
  ret ptr %.010
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_oct(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @PyNumber_ToBase(ptr noundef %1, i32 noundef 8) #10
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_ord(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !19 ; 3 uses
  %i.b = getelementptr i8, ptr %.val24, i64 168
  %.val26 = load i64, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %i.c = and i64 %.val26, 134217728
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val28 = load i64, ptr %i.d, align 8, !tbaa !38 ; 2 uses
  %i.e = icmp eq i64 %.val28, 1
  br i1 %i.e, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !17
  %i.h = zext i8 %i.g to i64
  %i.i = tail call ptr @PyLong_FromLong(i64 noundef %i.h) #10
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.j = and i64 %.val26, 268435456
  %.not21 = icmp eq i64 %i.j, 0
  br i1 %.not21, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 16
  %.val29 = load i64, ptr %i.k, align 8, !tbaa !111 ; 2 uses
  %i.l = icmp eq i64 %.val29, 1
  br i1 %i.l, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %1, i64 32
  %i.n = load i32, ptr %i.m, align 8              ; 5 uses
  %i.o = lshr i32 %i.n, 2
  %i.p = and i32 %i.o, 7
  %i.q = and i32 %i.n, 32
  %.not.i19.i = icmp eq i32 %i.q, 0               ; 3 uses
  switch i32 %i.p, label %bb.m [
    i32 1, label %bb.g
    i32 2, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i19.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = and i32 %i.n, 64
  %.not.i.i.i = icmp eq i32 %i.r, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %1, i64 56
  %.val4.i.i = load ptr, ptr %i.s, align 8, !tbaa !17
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.h ], [ %.val4.i.i, %bb.i ]
  %i.t = load i8, ptr %.0.i.i, align 1, !tbaa !17
  %i.u = zext i8 %i.t to i32
  br label %PyUnicode_READ_CHAR.exit

bb.j:                                             ; preds = %bb.f
  br i1 %.not.i19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = and i32 %i.n, 64
  %.not.i.i12.i = icmp eq i32 %i.v, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.l:                                             ; preds = %bb.j
  %i.w = getelementptr i8, ptr %1, i64 56
  %.val4.i16.i = load ptr, ptr %i.w, align 8, !tbaa !17
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.l, %bb.k
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.k ], [ %.val4.i16.i, %bb.l ]
  %i.x = load i16, ptr %.0.i15.i, align 2, !tbaa !114
  %i.y = zext i16 %i.x to i32
  br label %PyUnicode_READ_CHAR.exit

bb.m:                                             ; preds = %bb.f
  br i1 %.not.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = and i32 %i.n, 64
  %.not.i.i20.i = icmp eq i32 %i.z, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.o:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %1, i64 56
  %.val4.i24.i = load ptr, ptr %i.aa, align 8, !tbaa !17
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.o, %bb.n
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.n ], [ %.val4.i24.i, %bb.o ]
  %i.ab = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.u, %_PyUnicode_DATA.exit.i ], [ %i.y, %_PyUnicode_DATA.exit17.i ], [ %i.ab, %_PyUnicode_DATA.exit25.i ]
  %i.ac = zext i32 %.0.i to i64
  %i.ad = tail call ptr @PyLong_FromLong(i64 noundef %i.ac) #10
  br label %bb.t

bb.p:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %.val24, @PyByteArray_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.p
  %i.ae = tail call i32 @PyType_IsSubtype(ptr noundef %.val24, ptr noundef nonnull @PyByteArray_Type) #10
  %.not33 = icmp eq i32 %i.ae, 0
  br i1 %.not33, label %bb.r, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.p, %PyObject_TypeCheck.exit
  %i.af = getelementptr i8, ptr %1, i64 16
  %.val30 = load i64, ptr %i.af, align 8, !tbaa !38 ; 2 uses
  %i.ag = icmp eq i64 %.val30, 1
  br i1 %i.ag, label %bb.q, label %bb.s

bb.q:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.ah = getelementptr i8, ptr %1, i64 40
  %.val31 = load ptr, ptr %i.ah, align 8, !tbaa !115
  %i.ai = load i8, ptr %.val31, align 1, !tbaa !17
  %i.aj = zext i8 %i.ai to i64
  %i.ak = tail call ptr @PyLong_FromLong(i64 noundef %i.aj) #10
  br label %bb.t

bb.r:                                             ; preds = %PyObject_TypeCheck.exit
  %i.al = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !31
  %.val = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.am = getelementptr i8, ptr %.val, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.ao = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.al, ptr noundef nonnull @.str.168, ptr noundef %i.an) #10 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.e, %PyObject_TypeCheck.exit.thread, %bb.b
  %.0 = phi i64 [ %.val28, %bb.b ], [ %.val29, %bb.e ], [ %.val30, %PyObject_TypeCheck.exit.thread ]
  %i.ap = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !31
  %i.aq = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ap, ptr noundef nonnull @.str.169, i64 noundef %.0) #10 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %PyUnicode_READ_CHAR.exit, %bb.c
  %.017 = phi ptr [ %i.i, %bb.c ], [ null, %bb.s ], [ %i.ad, %PyUnicode_READ_CHAR.exit ], [ %i.ak, %bb.q ], [ null, %bb.r ]
  ret ptr %.017
}

; Function Attrs: nounwind uwtable
define internal ptr @builtin_pow(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !38
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %2, -2
  %i.e = icmp eq i64 %i.d, 2
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread33, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @builtin_pow._parser, i32 noundef 2, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %bb.f, label %.thread33

.thread33:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]   ; 3 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %2, %bb.b ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %.not30 = icmp eq i64 %i.j, 2
  br i1 %.not30, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread33
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %.thread33, %bb.d
  %.0 = phi ptr [ %i.o, %bb.d ], [ @_Py_NoneStruct, %.thread33 ]
  %i.p = call ptr @PyNumber_Power(ptr noundef %i.k, ptr noundef %i.m, ptr noundef %.0) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.025 = phi ptr [ %i.p, %bb.e ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.025
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @builtin_print(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %2, -1
  %i.c = icmp ne ptr %1, null
end_hunk_1
