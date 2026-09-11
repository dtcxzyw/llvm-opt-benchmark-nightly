Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bltinmodule?download=true
inline.NumInlined: 272
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@filter_vectorcall:bb.a
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 4 uses
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  tail call void %i.m(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @map_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #10 ; 2 uses
  %.not21 = icmp eq i32 %i.c, 0
  br i1 %.not21, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #10 ; 2 uses
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @map_next(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !37  ; 7 uses
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
  %.057118 = phi ptr [ %i.a, %bb.d ], [ %i.i, %bb.b ] ; 9 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.05293 = phi i64 [ %i.y, %bb.f ], [ 0, %.lr.ph.preheader ] ; 10 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %.05293
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val78 = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.r = getelementptr i8, ptr %.val78, i64 224
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.t = tail call ptr %i.s(ptr noundef %i.p) #10 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !38
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %_PyObject_VectorcallTstate.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.x = getelementptr [8 x i8], ptr %.057118, i64 %.05293
  store ptr %i.t, ptr %i.x, align 8, !tbaa !30
  %i.y = add nuw nsw i64 %.05293, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %.val
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.057117 = phi ptr [ %i.a, %bb.d ], [ %.057118, %bb.f ] ; 4 uses
  %.052.lcssa = phi i64 [ 0, %bb.d ], [ %.val, %bb.f ] ; 4 uses
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 5 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val.i.i = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
  %i.ac = getelementptr i8, ptr %.val.i.i, i64 168
  %.val6.i.i = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.ad = and i64 %.val6.i.i, 2048
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i, label %_PyVectorcall_FunctionInline.exit.i

_PyVectorcall_FunctionInline.exit.i:              ; preds = %._crit_edge
  %i.ae = getelementptr i8, ptr %.val.i.i, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !67
  %i.ag = getelementptr i8, ptr %i.aa, i64 %i.af
  %.0.copyload.i.i = load ptr, ptr %i.ag, align 1 ; 2 uses
  %i.ah = icmp eq ptr %.0.copyload.i.i, null
  br i1 %i.ah, label %_PyVectorcall_FunctionInline.exit.thread.i, label %bb.g

_PyVectorcall_FunctionInline.exit.thread.i:       ; preds = %_PyVectorcall_FunctionInline.exit.i, %._crit_edge
  %i.ai = call ptr @_PyObject_MakeTpCall(ptr noundef %i.c, ptr noundef nonnull %i.aa, ptr noundef nonnull %.057117, i64 noundef %.052.lcssa, ptr noundef null) #10
  br label %_PyObject_VectorcallTstate.exit

bb.g:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i
  %i.aj = call ptr %.0.copyload.i.i(ptr noundef nonnull %i.aa, ptr noundef nonnull %.057117, i64 noundef %.052.lcssa, ptr noundef null) #10, !inline_history !64
  %i.ak = call ptr @_Py_CheckFunctionResult(ptr noundef %i.c, ptr noundef nonnull %i.aa, ptr noundef %i.aj, ptr noundef null) #10
  br label %_PyObject_VectorcallTstate.exit

bb.h:                                             ; preds = %bb.e
  %i.al = tail call ptr @PyErr_Occurred() #10
  %.not66 = icmp eq ptr %i.al, null
  br i1 %.not66, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !30
  %i.an = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.am) #10
  %.not67 = icmp eq i32 %i.an, 0
  br i1 %.not67, label %_PyObject_VectorcallTstate.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @PyErr_Clear() #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.not68 = icmp eq i64 %.05293, 0
  br i1 %.not68, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %.not100 = icmp eq i64 %.val, 1
  br i1 %.not100, label %._crit_edge99, label %.lr.ph95

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq i64 %.05293, 1
  %i.ap = select i1 %i.ao, ptr @.str.36, ptr @.str.37
  %i.aq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !30
  %i.ar = add nuw nsw i64 %.05293, 1
  %i.as = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aq, ptr noundef nonnull @.str.38, i64 noundef %i.ar, ptr noundef nonnull %i.ap, i64 noundef %.05293) #10 ; 0 uses
  br label %_PyObject_VectorcallTstate.exit

.lr.ph95:                                         ; preds = %.preheader, %bb.s
  %.15994 = phi i64 [ %i.bm, %bb.s ], [ 1, %.preheader ] ; 5 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.au = getelementptr i8, ptr %i.at, i64 32
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.15994
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !30 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val77 = load ptr, ptr %i.ax, align 8, !tbaa !19
  %i.ay = getelementptr i8, ptr %.val77, i64 224
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29
  %i.ba = tail call ptr %i.az(ptr noundef %i.aw) #10 ; 4 uses
  %.not69 = icmp eq ptr %i.ba, null
  br i1 %.not69, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph95
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !17 ; 2 uses
  %.not.i74 = icmp sgt i32 %i.bb, -1
  br i1 %.not.i74, label %bb.n, label %Py_DECREF.exit75

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !17
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %Py_DECREF.exit75

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ba) #10
  br label %Py_DECREF.exit75

Py_DECREF.exit75:                                 ; preds = %bb.m, %bb.n, %bb.o
  %i.be = icmp eq i64 %.15994, 1
  %i.bf = select i1 %i.be, ptr @.str.36, ptr @.str.37
  %i.bg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !30
  %i.bh = add nuw nsw i64 %.15994, 1
  %i.bi = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bg, ptr noundef nonnull @.str.39, i64 noundef %i.bh, ptr noundef nonnull %i.bf, i64 noundef %.15994) #10 ; 0 uses
  br label %._crit_edge99

bb.p:                                             ; preds = %.lr.ph95
  %i.bj = tail call ptr @PyErr_Occurred() #10
  %.not70 = icmp eq ptr %i.bj, null
  br i1 %.not70, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !30
  %i.bl = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.bk) #10
  %.not71 = icmp eq i32 %i.bl, 0
  br i1 %.not71, label %._crit_edge99, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @PyErr_Clear() #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.bm = add nuw nsw i64 %.15994, 1              ; 2 uses
  %exitcond106.not = icmp eq i64 %i.bm, %.val
  br i1 %exitcond106.not, label %._crit_edge99, label %.lr.ph95, !llvm.loop !65

_PyObject_VectorcallTstate.exit:                  ; preds = %bb.g, %_PyVectorcall_FunctionInline.exit.thread.i, %bb.e, %bb.l, %bb.i
  %.057116 = phi ptr [ %.057118, %bb.l ], [ %.057117, %bb.g ], [ %.057117, %_PyVectorcall_FunctionInline.exit.thread.i ], [ %.057118, %bb.i ], [ %.057118, %bb.e ] ; 3 uses
  %.05290 = phi i64 [ %.05293, %bb.l ], [ %.052.lcssa, %bb.g ], [ %.052.lcssa, %_PyVectorcall_FunctionInline.exit.thread.i ], [ %.05293, %bb.i ], [ %.05293, %bb.e ] ; 2 uses
  %.056 = phi ptr [ null, %bb.l ], [ %i.ak, %bb.g ], [ %i.ai, %_PyVectorcall_FunctionInline.exit.thread.i ], [ null, %bb.i ], [ null, %bb.e ] ; 2 uses
  %i.bn = icmp sgt i64 %.05290, 0
  br i1 %i.bn, label %.lr.ph98, label %._crit_edge99

.lr.ph98:                                         ; preds = %_PyObject_VectorcallTstate.exit, %Py_DECREF.exit
  %.26097 = phi i64 [ %i.bt, %Py_DECREF.exit ], [ 0, %_PyObject_VectorcallTstate.exit ] ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %.057116, i64 %.26097
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !30 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp sgt i32 %i.bq, -1
  br i1 %.not.i, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %.lr.ph98
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !17
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.u, label %Py_DECREF.exit

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %i.bp) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.lr.ph98, %bb.t, %bb.u
  %i.bt = add nuw nsw i64 %.26097, 1              ; 2 uses
  %exitcond107.not = icmp eq i64 %i.bt, %.05290
  br i1 %exitcond107.not, label %._crit_edge99, label %.lr.ph98, !llvm.loop !66

._crit_edge99:                                    ; preds = %bb.s, %bb.q, %Py_DECREF.exit, %.preheader, %Py_DECREF.exit75, %_PyObject_VectorcallTstate.exit
  %.056123 = phi ptr [ %.056, %Py_DECREF.exit ], [ %.056, %_PyObject_VectorcallTstate.exit ], [ null, %Py_DECREF.exit75 ], [ null, %.preheader ], [ null, %bb.q ], [ null, %bb.s ] ; 2 uses
  %.057116122 = phi ptr [ %.057116, %Py_DECREF.exit ], [ %.057116, %_PyObject_VectorcallTstate.exit ], [ %.057118, %Py_DECREF.exit75 ], [ %.057118, %.preheader ], [ %.057118, %bb.q ], [ %.057118, %bb.s ] ; 2 uses
  %.not72 = icmp eq ptr %.057116122, %i.a
  br i1 %.not72, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge99
  call void @PyMem_Free(ptr noundef nonnull %.057116122) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge99, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %.056123, %._crit_edge99 ], [ %.056123, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @map_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyTuple_New(i64 noundef 0) #10 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef nonnull %i.b, ptr noundef nonnull %2, ptr noundef nonnull @.str.45, ptr noundef nonnull @map_new.kwlist, ptr noundef nonnull %i.a) #10
  %i.e = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i44 = icmp sgt i32 %i.e, -1
  br i1 %.not.i44, label %bb.d, label %Py_DECREF.exit45

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.b, align 8, !tbaa !17
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %Py_DECREF.exit45

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit45

Py_DECREF.exit45:                                 ; preds = %bb.c, %bb.d, %bb.e
  %.not41.not = icmp eq i32 %i.d, 0
  br i1 %.not41.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit45, %bb.a
  %i.h = call i64 @PyTuple_Size(ptr noundef %1) #10 ; 3 uses
  %i.i = icmp slt i64 %i.h, 2
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !30
  call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.46) #10
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.k = add nsw i64 %i.h, -1
  %i.l = call ptr @PyTuple_New(i64 noundef %i.k) #10 ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.n = getelementptr i8, ptr %1, i64 32
  %i.o = getelementptr i8, ptr %i.l, i64 24
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.m
  %.03248 = phi i64 [ 1, %.lr.ph ], [ %i.x, %bb.m ] ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %.03248
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = call ptr @PyObject_GetIter(ptr noundef %i.q) #10 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.t = load i32, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  %.not.i42 = icmp sgt i32 %i.t, -1
  br i1 %.not.i42, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.l, align 8, !tbaa !17
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #10
  br label %.critedge

bb.m:                                             ; preds = %bb.i
  %i.w = getelementptr [8 x i8], ptr %i.o, i64 %.03248
  store ptr %i.r, ptr %i.w, align 8, !tbaa !30
  %i.x = add nuw nsw i64 %.03248, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.m
  %i.y = getelementptr i8, ptr %0, i64 304
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = call ptr %i.z(ptr noundef %0, i64 noundef 0) #10 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.n, label %bb.q

bb.n:                                             ; preds = %._crit_edge
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.l, align 8, !tbaa !17
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #10
  br label %.critedge

bb.q:                                             ; preds = %._crit_edge
  %i.af = getelementptr i8, ptr %i.aa, i64 16
  store ptr %i.l, ptr %i.af, align 8, !tbaa !33
  %i.ag = getelementptr i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !30 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !17 ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, -1073741825
  br i1 %i.aj, label %_Py_NewRef.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = add nuw i32 %i.ai, 1
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !17
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.q, %bb.r
  %i.al = getelementptr i8, ptr %i.aa, i64 24
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !34
  %i.am = load i32, ptr %i.a, align 4, !tbaa !10
  %i.an = getelementptr i8, ptr %i.aa, i64 32
  store i32 %i.am, ptr %i.an, align 8, !tbaa !38
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.b, %bb.h, %Py_DECREF.exit45, %_Py_NewRef.exit, %bb.g
  %.2 = phi ptr [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.b ], [ null, %bb.l ], [ %i.aa, %_Py_NewRef.exit ], [ null, %Py_DECREF.exit45 ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @map_vectorcall(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = and i64 %2, 9223372036854775807          ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !37
  %.not44 = icmp eq i64 %.val, 0
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = tail call ptr @_PyObject_MakeTpCall(ptr noundef %i.d, ptr noundef %0, ptr noundef %1, i64 noundef %i.a, ptr noundef nonnull %3) #10
end_hunk_0
begin_hunk_1_@min_max:bb.a
  br i1 %i.bj, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %.loopexit
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !30  ; 5 uses
  %.not79 = icmp eq ptr %i.bk, null
  br i1 %.not79, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !17 ; 2 uses
  %i.bm = icmp ugt i32 %i.bl, -1073741825
  br i1 %i.bm, label %_Py_NewRef.exit105, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bn = add nuw i32 %i.bl, 1
  store i32 %i.bn, ptr %i.bk, align 8, !tbaa !17
  br label %_Py_NewRef.exit105

bb.ao:                                            ; preds = %bb.al
  %i.bo = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !30
  %i.bp = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bo, ptr noundef nonnull @.str.165, ptr noundef nonnull %i.d) #10 ; 0 uses
  br label %_Py_NewRef.exit105

bb.ap:                                            ; preds = %.loopexit
  %i.bq = load i32, ptr %.050.ph, align 8, !tbaa !17 ; 2 uses
  %.not.i82 = icmp sgt i32 %i.bq, -1
  br i1 %.not.i82, label %bb.aq, label %_Py_NewRef.exit105

bb.aq:                                            ; preds = %bb.ap
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %.050.ph, align 8, !tbaa !17
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.ar, label %_Py_NewRef.exit105

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %.050.ph) #10
  br label %_Py_NewRef.exit105

_Py_NewRef.exit105:                               ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.ao
  %.455 = phi ptr [ %i.bk, %bb.an ], [ %.051.ph, %bb.ao ], [ %i.bk, %bb.am ], [ %.051.ph, %bb.ap ], [ %.051.ph, %bb.aq ], [ %.051.ph, %bb.ar ] ; 4 uses
  br i1 %i.u, label %Py_XDECREF.exit104, label %bb.as

bb.as:                                            ; preds = %_Py_NewRef.exit105
  %i.bt = load i32, ptr %.059, align 8, !tbaa !17 ; 2 uses
  %.not.i.i107 = icmp sgt i32 %i.bt, -1
  br i1 %.not.i.i107, label %bb.at, label %Py_XDECREF.exit104

bb.at:                                            ; preds = %bb.as
  %i.bu = add nsw i32 %i.bt, -1                   ; 2 uses
  store i32 %i.bu, ptr %.059, align 8, !tbaa !17
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.au, label %Py_XDECREF.exit104

bb.au:                                            ; preds = %bb.at
  call void @_Py_Dealloc(ptr noundef nonnull %.059) #10
  br label %Py_XDECREF.exit104

Py_DECREF.exit89:                                 ; preds = %bb.ab
  %i.bw = load i32, ptr %.057, align 8, !tbaa !17 ; 2 uses
  %.not.i80 = icmp sgt i32 %i.bw, -1
  br i1 %.not.i80, label %bb.av, label %.split

bb.av:                                            ; preds = %Py_DECREF.exit89
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.bx, ptr %.057, align 8, !tbaa !17
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.aw, label %.split

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %.057) #10
  br label %.split

.split:                                           ; preds = %bb.y, %bb.aw, %bb.av, %Py_DECREF.exit89
  %i.bz = load i32, ptr %.058, align 8, !tbaa !17 ; 2 uses
  %.not.i = icmp sgt i32 %i.bz, -1
  br i1 %.not.i, label %bb.ax, label %Py_DECREF.exit

bb.ax:                                            ; preds = %.split
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %.058, align 8, !tbaa !17
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ay, label %Py_DECREF.exit

bb.ay:                                            ; preds = %bb.ax
  call void @_Py_Dealloc(ptr noundef nonnull %.058) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.split, %bb.ax, %bb.ay
  %.not.i109 = icmp eq ptr %.050.ph, null
  br i1 %.not.i109, label %Py_XDECREF.exit111, label %bb.az

bb.az:                                            ; preds = %Py_DECREF.exit
  %i.cc = load i32, ptr %.050.ph, align 8, !tbaa !17 ; 2 uses
  %.not.i.i110 = icmp sgt i32 %i.cc, -1
  br i1 %.not.i.i110, label %bb.ba, label %Py_XDECREF.exit111

bb.ba:                                            ; preds = %bb.az
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %.050.ph, align 8, !tbaa !17
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.bb, label %Py_XDECREF.exit111

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %.050.ph) #10
  br label %Py_XDECREF.exit111

Py_XDECREF.exit111:                               ; preds = %Py_DECREF.exit, %bb.az, %bb.ba, %bb.bb
  %.not.i112 = icmp eq ptr %.051.ph, null
  br i1 %.not.i112, label %Py_XDECREF.exit114, label %bb.bc

bb.bc:                                            ; preds = %Py_XDECREF.exit111
  %i.cf = load i32, ptr %.051.ph, align 8, !tbaa !17 ; 2 uses
  %.not.i.i113 = icmp sgt i32 %i.cf, -1
  br i1 %.not.i.i113, label %bb.bd, label %Py_XDECREF.exit114

bb.bd:                                            ; preds = %bb.bc
  %i.cg = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cg, ptr %.051.ph, align 8, !tbaa !17
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.be, label %Py_XDECREF.exit114

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %.051.ph) #10
  br label %Py_XDECREF.exit114

Py_XDECREF.exit114:                               ; preds = %Py_XDECREF.exit111, %bb.bc, %bb.bd, %bb.be
  br i1 %i.u, label %Py_XDECREF.exit104, label %bb.bf

bb.bf:                                            ; preds = %Py_XDECREF.exit114
  %i.ci = load i32, ptr %.059, align 8, !tbaa !17 ; 2 uses
  %.not.i.i116 = icmp sgt i32 %i.ci, -1
  br i1 %.not.i.i116, label %bb.bg, label %Py_XDECREF.exit104

bb.bg:                                            ; preds = %bb.bf
  %i.cj = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cj, ptr %.059, align 8, !tbaa !17
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.bh, label %Py_XDECREF.exit104

bb.bh:                                            ; preds = %bb.bg
  call void @_Py_Dealloc(ptr noundef nonnull %.059) #10
  br label %Py_XDECREF.exit104

Py_XDECREF.exit104:                               ; preds = %bb.bh, %bb.bg, %bb.bf, %Py_XDECREF.exit114, %bb.au, %bb.at, %bb.as, %_Py_NewRef.exit105, %bb.x, %bb.w, %Py_XDECREF.exit101, %bb.f, %bb.h, %bb.d, %bb.b
  %.161 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.x ], [ null, %bb.h ], [ %.455, %bb.au ], [ null, %Py_XDECREF.exit101 ], [ null, %bb.w ], [ %.455, %_Py_NewRef.exit105 ], [ %.455, %bb.as ], [ %.455, %bb.at ], [ null, %Py_XDECREF.exit114 ], [ null, %bb.bf ], [ null, %bb.bg ], [ null, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.161
}

declare i32 @_PyArg_ParseStackAndKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyIter_Check(ptr noundef) local_unnamed_addr #1

declare ptr @PyAnextAwaitable_New(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyNumber_Power(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyFile_WriteString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #1

declare ptr @_PyObject_MaybeCallSpecialNoArgs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyObject_MaybeCallSpecialOneArg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_SetAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyArg_UnpackStack(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ...) local_unnamed_addr #1

declare ptr @PySequence_List(ptr noundef) local_unnamed_addr #1

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #1

declare void @_PyFloat_ExactDealloc(ptr noundef) local_unnamed_addr #1

declare double @PyLong_AsDouble(ptr noundef) local_unnamed_addr #1

declare { double, double } @PyComplex_AsCComplex(ptr noundef) local_unnamed_addr #1

declare ptr @PyComplex_FromDoubles(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS11_typeobject", !11, i64 0}
!13 = !{!"_object", !8, i64 0, !12, i64 8}
!14 = !{!"p1 _ZTS7_object", !11, i64 0}
!15 = !{!"", !13, i64 0, !14, i64 16, !14, i64 24}
!16 = !{!15, !14, i64 16}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !14, i64 24}
!19 = !{!13, !12, i64 8}
!20 = !{!"long", !8, i64 0}
!21 = !{!"PyVarObject", !13, i64 0, !20, i64 16}
!22 = !{!"p1 omnipotent char", !11, i64 0}
!23 = !{!"p1 _ZTS11PyMethodDef", !11, i64 0}
!24 = !{!"p1 _ZTS11PyMemberDef", !11, i64 0}
!25 = !{!"p1 _ZTS11PyGetSetDef", !11, i64 0}
!26 = !{!"short", !8, i64 0}
!27 = !{!"_typeobject", !21, i64 0, !22, i64 24, !20, i64 32, !20, i64 40, !11, i64 48, !20, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !20, i64 168, !22, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !20, i64 208, !11, i64 216, !11, i64 224, !23, i64 232, !24, i64 240, !25, i64 248, !12, i64 256, !14, i64 264, !11, i64 272, !11, i64 280, !20, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !11, i64 360, !14, i64 368, !11, i64 376, !9, i64 384, !11, i64 392, !11, i64 400, !8, i64 408, !26, i64 410}
!28 = !{!27, !11, i64 320}
!29 = !{!27, !11, i64 224}
!30 = !{!14, !14, i64 0}
!31 = !{!27, !11, i64 304}
!32 = !{!"", !13, i64 0, !14, i64 16, !14, i64 24, !9, i64 32}
!33 = !{!32, !14, i64 16}
!34 = !{!32, !14, i64 24}
!35 = !{!"p1 _ZTS3_ts", !11, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!21, !20, i64 16}
!38 = !{!32, !9, i64 32}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!27, !20, i64 168}
!41 = !{!"", !13, i64 0, !20, i64 16, !14, i64 24, !14, i64 32, !9, i64 40}
!42 = !{!41, !14, i64 24}
!43 = !{!41, !14, i64 32}
!44 = !{!41, !20, i64 16}
!45 = !{!41, !9, i64 40}
!46 = !{!"p1 _ZTS3_is", !11, i64 0}
!47 = !{!"p1 _ZTS19_PyInterpreterFrame", !11, i64 0}
!48 = !{!"any p2 pointer", !11, i64 0}
!49 = !{!"p2 _ZTS7_object", !48, i64 0}
!50 = !{!27, !22, i64 24}
!51 = !{!"", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!52 = !{!"p1 _ZTS14_err_stackitem", !11, i64 0}
!53 = !{!"p1 _ZTS12_stack_chunk", !11, i64 0}
!54 = !{!"_err_stackitem", !14, i64 0, !52, i64 8}
!55 = !{!"p1 _ZTS11_PyExitData", !11, i64 0}
!56 = !{!"", !9, i64 0, !8, i64 4}
!57 = !{!"_ts", !35, i64 0, !35, i64 8, !46, i64 16, !20, i64 24, !51, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !47, i64 72, !47, i64 80, !47, i64 88, !11, i64 96, !11, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !52, i64 136, !14, i64 144, !9, i64 152, !14, i64 160, !20, i64 168, !20, i64 176, !14, i64 184, !20, i64 192, !9, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !20, i64 232, !20, i64 240, !53, i64 248, !49, i64 256, !49, i64 264, !54, i64 272, !14, i64 288, !55, i64 296, !20, i64 304, !14, i64 312, !14, i64 320, !56, i64 328}
!58 = !{!57, !14, i64 128}
!59 = !{!"p1 _ZTS19_PyCoMonitoringData", !11, i64 0}
!60 = !{!"PyCodeObject", !21, i64 0, !14, i64 24, !14, i64 32, !14, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !11, i64 152, !11, i64 160, !20, i64 168, !59, i64 176, !20, i64 184, !9, i64 192, !11, i64 200, !8, i64 208}
!61 = !{!60, !9, i64 88}
!62 = !{!27, !11, i64 296}
!63 = distinct !{!63, !39}
!64 = distinct !{null}
!65 = distinct !{!65, !39}
!66 = distinct !{!66, !39}
!67 = !{!27, !20, i64 56}
!68 = distinct !{!68, !39}
!69 = distinct !{!69, !39}
!70 = distinct !{!70, !39}
!71 = distinct !{!71, !39}
!72 = distinct !{!72, !39}
!73 = !{!"", !21, i64 0, !20, i64 24, !8, i64 32}
!74 = !{!73, !20, i64 24}
!75 = !{!"", !20, i64 0, !20, i64 8}
!76 = !{!75, !20, i64 0}
!77 = !{!46, !46, i64 0}
!78 = !{!75, !20, i64 8}
!79 = !{!"gc_generation", !75, i64 0, !9, i64 16, !9, i64 20}
!80 = !{!"_gc_runtime_state", !9, i64 0, !9, i64 4, !79, i64 8, !8, i64 32, !79, i64 80, !8, i64 104, !9, i64 224, !47, i64 232, !14, i64 240, !14, i64 248, !20, i64 256, !20, i64 264, !9, i64 272, !9, i64 276}
!81 = !{!80, !9, i64 272}
!82 = !{!80, !9, i64 28}
!83 = !{!80, !20, i64 256}
!84 = !{!80, !9, i64 24}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = !{!"p1 int", !11, i64 0}
!88 = !{!"p2 int", !48, i64 0}
!89 = !{!"", !20, i64 0, !88, i64 8}
!90 = !{!"PyConfig", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !20, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !87, i64 64, !9, i64 72, !9, i64 76, !87, i64 80, !87, i64 88, !87, i64 96, !9, i64 104, !89, i64 112, !89, i64 128, !89, i64 144, !89, i64 160, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !87, i64 232, !87, i64 240, !87, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !87, i64 288, !87, i64 296, !87, i64 304, !87, i64 312, !9, i64 320, !89, i64 328, !87, i64 344, !87, i64 352, !87, i64 360, !87, i64 368, !87, i64 376, !87, i64 384, !87, i64 392, !9, i64 400, !87, i64 408, !87, i64 416, !87, i64 424, !87, i64 432, !9, i64 440, !9, i64 444, !9, i64 448}
!91 = !{!90, !9, i64 196}
!92 = distinct !{!92, !39}
!93 = distinct !{!93, !39}
!94 = distinct !{!94, !39}
!95 = !{!"", !21, i64 0, !49, i64 24, !20, i64 32}
!96 = !{!95, !49, i64 24}
!97 = !{!"", !13, i64 0, !14, i64 16}
!98 = !{!97, !14, i64 16}
!99 = !{!20, !20, i64 0}
!100 = !{!"", !9, i64 0, !9, i64 4}
!101 = !{!100, !9, i64 0}
!102 = !{!100, !9, i64 4}
!103 = distinct !{!103, !39}
!104 = distinct !{!104, !39}
!105 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!106 = !{!105, !105, i64 0}
!107 = distinct !{null}
!108 = !{!27, !11, i64 80}
!109 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!110 = !{!109, !11, i64 16}
!111 = !{!"_PyUnicodeObject_state", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!112 = !{!"", !13, i64 0, !20, i64 16, !20, i64 24, !111, i64 32}
!113 = !{!112, !20, i64 16}
!114 = !{!26, !26, i64 0}
!115 = !{!"", !21, i64 0, !20, i64 24, !22, i64 32, !22, i64 40, !20, i64 48, !14, i64 56}
!116 = !{!115, !22, i64 40}
!117 = distinct !{!117, !39}
!118 = distinct !{!118, !39}
!119 = distinct !{null, null}
!120 = distinct !{!120, !39}
!121 = distinct !{!121, !39}
!122 = !{!"_PyLongValue", !20, i64 0, !8, i64 8}
!123 = !{!"_longobject", !13, i64 0, !122, i64 16}
!124 = !{!123, !20, i64 16}
!125 = !{!"double", !8, i64 0}
!126 = !{!"", !13, i64 0, !125, i64 16}
!127 = !{!126, !125, i64 16}
!128 = !{!"_reftracer_runtime_state", !11, i64 0, !11, i64 8}
!129 = !{!128, !11, i64 0}
!130 = !{!128, !11, i64 8}
end_hunk_1
