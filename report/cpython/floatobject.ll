inline.NumInlined: 182
inline.NumDeleted: 43
begin_hunk_0_@PyFloat_GetInfo:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.a, align 8, !tbaa !23
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ag, label %Py_DECREF.exit194.thread

bb.ag:                                            ; preds = %bb.af
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #17
  br label %Py_DECREF.exit194.thread

bb.ah:                                            ; preds = %bb.ad
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.a, i64 noundef 6, ptr noundef nonnull %i.bb) #17
  %i.bf = tail call ptr @PyLong_FromLong(i64 noundef 53) #17 ; 2 uses
  %.not168 = icmp eq ptr %i.bf, null
  br i1 %.not168, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i179 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i179, label %bb.aj, label %Py_DECREF.exit194.thread

bb.aj:                                            ; preds = %bb.ai
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !23
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ak, label %Py_DECREF.exit194.thread

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #17
  br label %Py_DECREF.exit194.thread

bb.al:                                            ; preds = %bb.ah
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.a, i64 noundef 7, ptr noundef nonnull %i.bf) #17
  %i.bj = tail call ptr @PyFloat_FromDouble(double noundef f0x3CB0000000000000) ; 2 uses
  %.not170 = icmp eq ptr %i.bj, null
  br i1 %.not170, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i177 = icmp sgt i32 %i.bk, -1
  br i1 %.not.i177, label %bb.an, label %Py_DECREF.exit194.thread

bb.an:                                            ; preds = %bb.am
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !23
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ao, label %Py_DECREF.exit194.thread

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #17
  br label %Py_DECREF.exit194.thread

bb.ap:                                            ; preds = %bb.al
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef nonnull %i.bj) #17
  %i.bn = tail call ptr @PyLong_FromLong(i64 noundef 2) #17 ; 2 uses
  %.not172 = icmp eq ptr %i.bn, null
  br i1 %.not172, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i175 = icmp sgt i32 %i.bo, -1
  br i1 %.not.i175, label %bb.ar, label %Py_DECREF.exit194.thread

bb.ar:                                            ; preds = %bb.aq
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !23
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.as, label %Py_DECREF.exit194.thread

bb.as:                                            ; preds = %bb.ar
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #17
  br label %Py_DECREF.exit194.thread

bb.at:                                            ; preds = %bb.ap
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.a, i64 noundef 9, ptr noundef nonnull %i.bn) #17
  %i.br = tail call i32 @llvm.get.rounding()
  %i.bs = sext i32 %i.br to i64
  %i.bt = tail call ptr @PyLong_FromLong(i64 noundef %i.bs) #17 ; 2 uses
  %.not174 = icmp eq ptr %i.bt, null
  br i1 %.not174, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.bu = load i32, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp sgt i32 %i.bu, -1
  br i1 %.not.i, label %bb.av, label %Py_DECREF.exit194.thread

bb.av:                                            ; preds = %bb.au
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.a, align 8, !tbaa !23
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.aw, label %Py_DECREF.exit194.thread

bb.aw:                                            ; preds = %bb.av
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #17
  br label %Py_DECREF.exit194.thread

bb.ax:                                            ; preds = %bb.at
  tail call void @PyStructSequence_SetItem(ptr noundef nonnull %i.a, i64 noundef 10, ptr noundef nonnull %i.bt) #17
  br label %Py_DECREF.exit194.thread

Py_DECREF.exit194.thread:                         ; preds = %bb.ax, %bb.au, %bb.av, %bb.aw, %bb.aq, %bb.ar, %bb.as, %bb.am, %bb.an, %bb.ao, %bb.ai, %bb.aj, %bb.ak, %bb.ae, %bb.af, %bb.ag, %bb.aa, %bb.ab, %bb.ac, %bb.w, %bb.x, %bb.y, %bb.v, %bb.u, %bb.t, %bb.m, %bb.n, %bb.o, %bb.i, %bb.j, %bb.k, %bb.h, %bb.g, %bb.f, %bb.a
  %.11 = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ null, %bb.aq ], [ null, %bb.am ], [ null, %bb.ai ], [ null, %bb.ae ], [ null, %bb.aa ], [ null, %bb.w ], [ null, %bb.v ], [ null, %bb.m ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.ac ], [ null, %bb.ab ], [ null, %bb.ag ], [ null, %bb.af ], [ null, %bb.ak ], [ null, %bb.aj ], [ null, %bb.ao ], [ null, %bb.an ], [ null, %bb.as ], [ null, %bb.ar ], [ %i.a, %bb.ax ], [ null, %bb.au ], [ null, %bb.av ], [ null, %bb.aw ]
  ret ptr %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @PyStructSequence_New(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyFloat_FromDouble(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 11168    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_PyFreeList_Pop.exit

_PyFreeList_Pop.exit:                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  store ptr %i.e, ptr %i.c, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %i.b, i64 11176    ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !18
  br label %_PyObject_Init.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyObject_Malloc(i64 noundef 24) #17 ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @PyErr_NoMemory() #17
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 8
  store ptr @PyFloat_Type, ptr %i.k, align 8, !tbaa !20
  %i.l = load i32, ptr @PyFloat_Type, align 8, !tbaa !23 ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %_PyObject_Init.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr @PyFloat_Type, align 8, !tbaa !23
  br label %_PyObject_Init.exit

_PyObject_Init.exit:                              ; preds = %bb.e, %bb.d, %_PyFreeList_Pop.exit
  %.sink = phi ptr [ %i.d, %_PyFreeList_Pop.exit ], [ %i.i, %bb.d ], [ %i.i, %bb.e ] ; 3 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink) #17
  %i.o = getelementptr i8, ptr %.sink, i64 16
  store double %0, ptr %i.o, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %_PyObject_Init.exit, %bb.c
  %.07 = phi ptr [ %.sink, %_PyObject_Init.exit ], [ %i.j, %bb.c ]
  ret ptr %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @PyStructSequence_SetItem(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare i32 @llvm.get.rounding() #4

declare ptr @PyObject_Malloc(i64 noundef) local_unnamed_addr #3

declare ptr @PyErr_NoMemory() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyFloat_FromString(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %1 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val28 = load ptr, ptr %i.b, align 8, !tbaa !20 ; 3 uses
  %i.c = getelementptr i8, ptr %.val28, i64 168
  %.val30 = load i64, ptr %i.c, align 8, !tbaa !27 ; 2 uses
  %i.d = and i64 %.val30, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @_PyUnicode_TransformDecimalAndSpaceToASCII(ptr noundef nonnull %0) #17 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #17
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.h = and i64 %.val30, 134217728
  %.not25 = icmp eq i64 %i.h, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val32 = load i64, ptr %i.j, align 8, !tbaa !36
  store i64 %.val32, ptr %i.a, align 8, !tbaa !37
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %.val28, @PyByteArray_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.f
  %i.k = tail call i32 @PyType_IsSubtype(ptr noundef %.val28, ptr noundef nonnull @PyByteArray_Type) #17
  %.not37 = icmp eq i32 %i.k, 0
  br i1 %.not37, label %bb.g, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.f, %PyObject_TypeCheck.exit
  %i.l = getelementptr i8, ptr %0, i64 40
  %.val33 = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val34 = load i64, ptr %i.m, align 8, !tbaa !36
  store i64 %.val34, ptr %i.a, align 8, !tbaa !37
  br label %bb.l

bb.g:                                             ; preds = %PyObject_TypeCheck.exit
  %i.n = call i32 @PyObject_GetBuffer(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #17
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %1, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !37
  %i.s = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.p, i64 noundef %i.r) #17 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @PyBuffer_Release(ptr noundef nonnull %1) #17
  br label %Py_XDECREF.exit

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %i.s, i64 32
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !44
  %.val = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.w = getelementptr i8, ptr %.val, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.y = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str, ptr noundef %i.x) #17 ; 0 uses
  br label %Py_XDECREF.exit

bb.l:                                             ; preds = %bb.e, %bb.j, %PyObject_TypeCheck.exit.thread, %bb.c
  %.021 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ %.val33, %PyObject_TypeCheck.exit.thread ], [ %i.u, %bb.j ]
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.e ], [ null, %PyObject_TypeCheck.exit.thread ], [ %i.s, %bb.j ] ; 4 uses
  %2 = load i64, ptr %i.a, align 8, !tbaa !37
  %i.z = call ptr @_Py_string_to_number_with_underscores(ptr noundef %.021, i64 noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @float_from_string_inner) #17 ; 4 uses
  call void @PyBuffer_Release(ptr noundef nonnull %1) #17
  %.not.i35 = icmp eq ptr %.0, null
  br i1 %.not.i35, label %Py_XDECREF.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = load i32, ptr %.0, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aa, -1
  br i1 %.not.i.i, label %bb.n, label %Py_XDECREF.exit

bb.n:                                             ; preds = %bb.m
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %.0, align 8, !tbaa !23
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %Py_XDECREF.exit

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %.0) #17
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.b, %bb.k, %bb.i
  %.022 = phi ptr [ null, %bb.k ], [ null, %bb.b ], [ null, %bb.i ], [ %i.z, %bb.l ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @_PyUnicode_TransformDecimalAndSpaceToASCII(ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #3

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @_Py_string_to_number_with_underscores(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @float_from_string_inner(ptr noundef %0, i64 noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr i8, ptr %0, i64 %1         ; 6 uses
  %i.c = icmp ult ptr %0, %i.b
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02127 = phi ptr [ %i.i, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.d = load i8, ptr %.02127, align 1, !tbaa !23
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = and i32 %i.g, 8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %.02127, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.i, %i.b
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !46

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.021.lcssa = phi ptr [ %0, %bb.a ], [ %.02127, %.lr.ph ] ; 4 uses
  %i.j = icmp eq ptr %.021.lcssa, %i.b
  br i1 %i.j, label %.critedge.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.k = getelementptr i8, ptr %i.b, i64 -1       ; 2 uses
  %i.l = icmp ult ptr %.021.lcssa, %i.k
  br i1 %i.l, label %.lr.ph42, label %.critedge2

.critedge.thread:                                 ; preds = %bb.b, %.critedge
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !44
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.m, ptr noundef nonnull @.str.13, ptr noundef %2) #17 ; 0 uses
  br label %PyFloat_FromDouble.exit

.preheader:                                       ; preds = %.lr.ph42
  %i.o = getelementptr i8, ptr %i.q, i64 -1       ; 2 uses
  %i.p = icmp ult ptr %.021.lcssa, %i.o
  br i1 %i.p, label %.lr.ph42, label %.critedge2, !llvm.loop !48

.lr.ph42:                                         ; preds = %.preheader.preheader, %.preheader
  %i.q = phi ptr [ %i.o, %.preheader ], [ %i.k, %.preheader.preheader ] ; 4 uses
  %.041 = phi ptr [ %i.q, %.preheader ], [ %i.b, %.preheader.preheader ]
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = and i32 %i.u, 8
  %.not24 = icmp eq i32 %i.v, 0
  br i1 %.not24, label %..critedge2_crit_edge, label %.preheader, !llvm.loop !48

..critedge2_crit_edge:                            ; preds = %.lr.ph42
  br label %.critedge2, !llvm.loop !48

.critedge2:                                       ; preds = %.preheader, %..critedge2_crit_edge, %.preheader.preheader
  %.0.lcssa = phi ptr [ %i.b, %.preheader.preheader ], [ %.041, %..critedge2_crit_edge ], [ %i.q, %.preheader ]
  %i.w = call double @PyOS_string_to_double(ptr noundef %.021.lcssa, ptr noundef nonnull %i.a, ptr noundef null) #17 ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !49
  %.not25 = icmp eq ptr %i.x, %.0.lcssa
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge2
  %i.y = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !44
  %i.z = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.y, ptr noundef nonnull @.str.13, ptr noundef %2) #17 ; 0 uses
  br label %PyFloat_FromDouble.exit

bb.d:                                             ; preds = %.critedge2
  %i.aa = fcmp oeq double %i.w, -1.000000e+00
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = call ptr @PyErr_Occurred() #17
  %.not26 = icmp eq ptr %i.ab, null
  br i1 %.not26, label %bb.f, label %PyFloat_FromDouble.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 11168  ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.g, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.f
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !14
  %i.ah = getelementptr i8, ptr %i.ad, i64 11176  ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !18
  br label %_PyObject_Init.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = call ptr @PyObject_Malloc(i64 noundef 24) #17, !inline_history !19 ; 4 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = call ptr @PyErr_NoMemory() #17, !inline_history !19
  br label %PyFloat_FromDouble.exit

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %i.ak, i64 8
  store ptr @PyFloat_Type, ptr %i.am, align 8, !tbaa !20
  %i.an = load i32, ptr @PyFloat_Type, align 8, !tbaa !23 ; 2 uses
  %i.ao = icmp ugt i32 %i.an, -1073741825
  br i1 %i.ao, label %_PyObject_Init.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add nuw i32 %i.an, 1
  store i32 %i.ap, ptr @PyFloat_Type, align 8, !tbaa !23
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.j, %bb.i, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.af, %_PyFreeList_Pop.exit.i ], [ %i.ak, %bb.i ], [ %i.ak, %bb.j ] ; 3 uses
  call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #17, !inline_history !19
  %i.aq = getelementptr i8, ptr %.sink.i, i64 16
  store double %i.w, ptr %i.aq, align 8, !tbaa !24
  br label %PyFloat_FromDouble.exit

PyFloat_FromDouble.exit:                          ; preds = %_PyObject_Init.exit.i, %bb.h, %bb.e, %bb.c, %.critedge.thread
  %.020 = phi ptr [ null, %.critedge.thread ], [ null, %bb.c ], [ null, %bb.e ], [ %.sink.i, %_PyObject_Init.exit.i ], [ %i.al, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.020
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Py_XDECREF(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not.i = icmp sgt i32 %i.a, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !23
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
end_hunk_0
begin_hunk_1_@float_richcompare:bb.a
  %i.g = tail call double @llvm.fabs.f64(double %.val92)
  %i.h = fcmp ueq double %i.g, +inf
  %.val87 = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %.val87, i64 168
  %.val89 = load i64, ptr %i.i, align 8, !tbaa !27
  %i.j = and i64 %.val89, 16777216
  %.not84 = icmp eq i64 %i.j, 0                   ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not84, label %bb.ae, label %bb.w

bb.d:                                             ; preds = %bb.b
  br i1 %.not84, label %bb.ae, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = fcmp oeq double %.val92, 0.000000e+00
  %i.l = fcmp olt double %.val92, 0.000000e+00
  %i.m = select i1 %i.l, i32 -1, i32 1
  %i.n = select i1 %i.k, i32 0, i32 %i.m          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.o = call i32 @PyLong_GetSign(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %.not86 = icmp eq i32 %i.n, %i.p
  br i1 %.not86, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sitofp i32 %i.n to double
  %i.r = sitofp i32 %i.p to double
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.s = call i64 @_PyLong_NumBits(ptr noundef nonnull %1) #17 ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1024
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = sitofp i32 %i.n to double
  %i.v = load i32, ptr %i.a, align 4, !tbaa !7
  %i.w = sitofp i32 %i.v to double
  %i.x = fmul nnan double %i.w, 2.000000e+00
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.y = trunc i64 %i.s to i32                    ; 3 uses
  %i.z = icmp slt i32 %i.y, 49
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = call double @PyLong_AsDouble(ptr noundef nonnull %1) #17
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.ab = call double @frexp(double noundef %.val92, ptr noundef nonnull %i.b) #17 ; 0 uses
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.y
  br i1 %i.ad, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp samesign ugt i32 %i.ac, %i.y
  br i1 %i.ae, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = call { double, double } @llvm.modf.f64(double %.val92) ; 2 uses
  %i.ag = extractvalue { double, double } %i.af, 0
  %i.ah = extractvalue { double, double } %i.af, 1
  %i.ai = fcmp une double %i.ag, 0.000000e+00
  br i1 %i.ai, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  switch i32 %2, label %bb.r [
    i32 2, label %bb.v
    i32 3, label %bb.o
    i32 0, label %bb.p
    i32 1, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.v

bb.p:                                             ; preds = %bb.n, %bb.n
  %i.aj = fcmp ole double %.val92, 0.000000e+00
  %i.ak = zext i1 %i.aj to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.n
  %i.al = icmp sgt i32 %i.n, 0
  %i.am = select i1 %i.al, i32 5, i32 4
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.q, %bb.m
  %.055 = phi i32 [ %2, %bb.n ], [ %i.ak, %bb.p ], [ %i.am, %bb.q ], [ %2, %bb.m ]
  %i.an = call ptr @PyLong_FromDouble(double noundef %i.ah) #17 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.an, ptr noundef nonnull %1, i32 noundef %.055) #17 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = call ptr @PyBool_FromLong(i64 noundef %i.ar) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.t
  %.050 = phi ptr [ null, %bb.r ], [ null, %bb.s ], [ %i.as, %bb.t ]
  call fastcc void @Py_XDECREF(ptr noundef %i.an)
  br label %bb.v

.thread:                                          ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.k
  %.266.ph = phi double [ %.val92, %bb.k ], [ 0.000000e+00, %bb.l ], [ %i.aa, %bb.j ], [ %i.x, %bb.h ], [ %i.r, %bb.f ]
  %.262.ph = phi double [ 0.000000e+00, %bb.k ], [ %.val92, %bb.l ], [ %.val92, %bb.j ], [ %i.u, %bb.h ], [ %i.q, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.w

bb.v:                                             ; preds = %bb.o, %bb.u, %bb.n
  %.354 = phi ptr [ @_Py_TrueStruct, %bb.o ], [ @_Py_FalseStruct, %bb.n ], [ %.050, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ae

bb.w:                                             ; preds = %.thread, %bb.c, %PyObject_TypeCheck.exit.thread
  %.367 = phi double [ %.val91, %PyObject_TypeCheck.exit.thread ], [ %.266.ph, %.thread ], [ 0.000000e+00, %bb.c ] ; 6 uses
  %.363 = phi double [ %.val92, %PyObject_TypeCheck.exit.thread ], [ %.262.ph, %.thread ], [ %.val92, %bb.c ] ; 6 uses
  switch i32 %2, label %bb.ad [
    i32 2, label %bb.x
    i32 3, label %bb.y
    i32 1, label %bb.z
    i32 5, label %bb.aa
    i32 0, label %bb.ab
    i32 4, label %bb.ac
  ]

bb.x:                                             ; preds = %bb.w
  %i.at = fcmp oeq double %.363, %.367
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.au = fcmp une double %.363, %.367
  br label %bb.ad

bb.z:                                             ; preds = %bb.w
  %i.av = fcmp ole double %.363, %.367
  br label %bb.ad

bb.aa:                                            ; preds = %bb.w
  %i.aw = fcmp oge double %.363, %.367
  br label %bb.ad

bb.ab:                                            ; preds = %bb.w
  %i.ax = fcmp olt double %.363, %.367
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w
  %i.ay = fcmp ogt double %.363, %.367
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.6.shrunk = phi i1 [ false, %bb.w ], [ %i.at, %bb.x ], [ %i.au, %bb.y ], [ %i.av, %bb.z ], [ %i.aw, %bb.aa ], [ %i.ax, %bb.ab ], [ %i.ay, %bb.ac ]
  %i.az = zext i1 %.6.shrunk to i64
  %i.ba = call ptr @PyBool_FromLong(i64 noundef %i.az) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.v, %bb.c, %bb.d, %bb.ad
  %.4 = phi ptr [ %i.ba, %bb.ad ], [ %.354, %bb.v ], [ @_Py_NotImplementedStruct, %bb.d ], [ @_Py_NotImplementedStruct, %bb.c ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal ptr @float_new(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = icmp eq ptr %0, @PyFloat_Type
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyFloat_Type, i64 296), align 8, !tbaa !56
  %i.e = icmp ne ptr %i.c, %i.d
  %i.f = icmp eq ptr %2, null
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.old1 = icmp eq ptr %2, null
  br i1 %.old1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = tail call i32 @_PyArg_NoKeywords(ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #17
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val20 = load i64, ptr %i.h, align 8, !tbaa !36 ; 3 uses
  %or.cond21 = icmp ult i64 %.val20, 2
  br i1 %or.cond21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.1, i64 noundef %.val20, i64 noundef 0, i64 noundef 1) #17
  %.not17 = icmp eq i32 %i.i, 0
  br i1 %.not17, label %bb.j, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.f
  %.val.pr = load i64, ptr %i.h, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %thread-pre-split
  %.val = phi i64 [ %.val.pr, %thread-pre-split ], [ %.val20, %bb.e ]
  %i.j = icmp slt i64 %.val, 1
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi ptr [ null, %bb.g ], [ %i.l, %bb.h ]
  %i.m = tail call fastcc ptr @float_new_impl(ptr noundef %0, ptr noundef %.0)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.d, %bb.i
  %.015 = phi ptr [ %i.m, %bb.i ], [ null, %bb.f ], [ null, %bb.d ]
  ret ptr %.015
}

; Function Attrs: nounwind uwtable
define internal ptr @float_vectorcall(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_NoKwnames(ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = and i64 %2, 9223372036854775807          ; 3 uses
  %i.d = icmp samesign ult i64 %i.c, 2
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.1, i64 noundef %i.c, i64 noundef 0, i64 noundef 1) #17
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.g, label %.thread

bb.e:                                             ; preds = %bb.c
  %.not13 = icmp eq i64 %i.c, 0
  br i1 %.not13, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %i.f = load ptr, ptr %1, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.g = phi ptr [ %i.f, %.thread ], [ null, %bb.e ]
  %i.h = tail call fastcc ptr @float_new_impl(ptr noundef %0, ptr noundef %i.g)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.h, %bb.f ], [ null, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden void @_PyFloat_InitState(ptr noundef readnone captures(address) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_PyInterpreterState_Main() #17
  %.not = icmp eq ptr %0, %i.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10696), align 8, !tbaa !57
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10692), align 4, !tbaa !223
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_PyFloat_InitTypes(ptr dead_on_unwind noalias writable writeonly sret(%struct.PyStatus) align 8 captures(none) initializes((0, 32)) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_PyStructSequence_InitBuiltinWithFlags(ptr noundef %1, ptr noundef nonnull @FloatInfoType, ptr noundef nonnull @floatinfo_desc, i64 noundef 0) #17
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__._PyFloat_InitTypes, ptr %i.d, align 8, !tbaa !224
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.6, ptr %i.e, align 8, !tbaa !226
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !227
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.g, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.c ]
  store i32 %.sink, ptr %0, align 8, !tbaa !228
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_PyFloat_FiniType(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @_PyStructSequence_FiniBuiltin(ptr noundef %0, ptr noundef nonnull @FloatInfoType) #17
  ret void
}

declare void @_PyStructSequence_FiniBuiltin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_PyFloat_DebugMallocStats(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 11176
  %i.d = load i64, ptr %i.c, align 8, !tbaa !229
  %i.e = trunc i64 %i.d to i32
  tail call void @_PyDebugAllocatorStats(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.e, i64 noundef 24) #17
  ret void
}

declare void @_PyDebugAllocatorStats(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyFloat_Pack2(double noundef %0, ptr noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = fcmp oeq double %0, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.d = fcmp oeq double %i.c, -1.000000e+00
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.e = tail call double @llvm.fabs.f64(double %0) #19
  %i.f = fcmp oeq double %i.e, +inf
  %i.g = bitcast double %0 to i64
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = fcmp olt double %0, 0.000000e+00
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.i = fcmp uno double %0, 0.000000e+00
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call double @llvm.copysign.f64(double 1.000000e+00, double %0)
  %i.k = fcmp oeq double %i.j, -1.000000e+00
  %i.l = lshr i64 %i.g, 42
  %i.m = trunc i64 %i.l to i16
  %i.n = and i16 %i.m, 1023                       ; 2 uses
  %.not54 = icmp eq i16 %i.n, 0
  %spec.select = select i1 %.not54, i16 512, i16 %i.n
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.o = fcmp olt double %0, 0.000000e+00         ; 4 uses
  %i.p = fneg double %0
  %.046 = select i1 %i.o, double %i.p, double %0
  %i.q = call double @frexp(double noundef %.046, ptr noundef nonnull %i.a) #17 ; 3 uses
  %i.r = fcmp olt double %i.q, 5.000000e-01
  %i.s = fcmp oge double %i.q, 1.000000e+00
  %or.cond = or i1 %i.r, %i.s
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !44
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.8) #17
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.u = fmul double %i.q, 2.000000e+00           ; 2 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !7    ; 3 uses
  %i.w = add i32 %i.v, -1                         ; 3 uses
  %i.x = icmp sgt i32 %i.w, 15
  br i1 %i.x, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp slt i32 %i.w, -25
  br i1 %i.y, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = icmp slt i32 %i.w, -14
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = add nuw nsw i32 %i.v, 13
  %i.ab = tail call double @ldexp(double noundef %i.u, i32 noundef %i.aa) #17, !tbaa !7
end_hunk_1
begin_hunk_2_@float_as_integer_ratio:bb.a

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr @_Py_NotImplementedStruct, align 8, !tbaa !23
  br label %float_as_integer_ratio_impl.exit

_Py_convert_int_to_double.exit.i:                 ; preds = %bb.c, %PyObject_TypeCheck.exit.thread.i
  %.064.i = phi double [ %.val51.i, %PyObject_TypeCheck.exit.thread.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.n = tail call double @llvm.fabs.f64(double %.064.i) #19
  %i.o = fcmp oeq double %i.n, +inf
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Py_convert_int_to_double.exit.i
  %i.p = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !44
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.36) #17, !inline_history !238
  br label %float_as_integer_ratio_impl.exit

bb.h:                                             ; preds = %_Py_convert_int_to_double.exit.i
  %i.q = fcmp uno double %.064.i, 0.000000e+00
  br i1 %i.q, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !44
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.37) #17, !inline_history !238
  br label %float_as_integer_ratio_impl.exit

.thread.i:                                        ; preds = %bb.h, %bb.d
  %.064124126.i = phi double [ %.064.i, %bb.h ], [ -1.000000e+00, %bb.d ]
  %i.s = call double @frexp(double noundef %.064124126.i, ptr noundef nonnull %i.a) #17, !inline_history !238 ; 4 uses
  %.promoted.i = load i32, ptr %i.a, align 4      ; 2 uses
  %i.t = tail call double @llvm.trunc.f64(double %i.s)
  %i.u = fcmp une double %i.t, %i.s
  br i1 %i.u, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.i
  %.019105.i = phi double [ %i.w, %.lr.ph.i ], [ %i.s, %.thread.i ]
  %.020104.i = phi i32 [ %i.y, %.lr.ph.i ], [ 0, %.thread.i ] ; 2 uses
  %i.v = phi i32 [ %i.x, %.lr.ph.i ], [ %.promoted.i, %.thread.i ]
  %i.w = fmul double %.019105.i, 2.000000e+00     ; 4 uses
  %i.x = add i32 %i.v, -1                         ; 2 uses
  %i.y = add nuw nsw i32 %.020104.i, 1
  %i.z = icmp samesign ult i32 %.020104.i, 299
  %i.aa = tail call double @llvm.trunc.f64(double %i.w)
  %i.ab = fcmp une double %i.aa, %i.w
  %or.cond.i = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !239

.critedge.i:                                      ; preds = %.lr.ph.i, %.thread.i
  %i.ac = phi i32 [ %.promoted.i, %.thread.i ], [ %i.x, %.lr.ph.i ] ; 3 uses
  %.019.lcssa.i = phi double [ %i.s, %.thread.i ], [ %i.w, %.lr.ph.i ]
  store i32 %i.ac, ptr %i.a, align 4
  %i.ad = tail call ptr @PyLong_FromDouble(double noundef %.019.lcssa.i) #17, !inline_history !238 ; 9 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %float_as_integer_ratio_impl.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  %i.af = tail call ptr @PyLong_FromLong(i64 noundef 1) #17, !inline_history !238 ; 8 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %Py_XDECREF.exit57.thread97.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 false)
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call ptr @PyLong_FromLong(i64 noundef %i.ai) #17, !inline_history !238 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %Py_XDECREF.exit.thread86.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = icmp sgt i32 %i.ac, 0
  %i.am = getelementptr i8, ptr %i.b, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !240 ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call ptr %i.an(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.aj) #17, !inline_history !238 ; 2 uses
  %i.ap = load i32, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %.not.i48.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i48.i, label %bb.n, label %Py_DECREF.exit49.i

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.ad, align 8, !tbaa !23
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.o, label %Py_DECREF.exit49.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #17, !inline_history !238
  br label %Py_DECREF.exit49.i

Py_DECREF.exit49.i:                               ; preds = %bb.o, %bb.n, %bb.m
  %i.as = icmp eq ptr %i.ao, null
  br i1 %i.as, label %bb.t, label %bb.s

bb.p:                                             ; preds = %bb.l
  %i.at = tail call ptr %i.an(ptr noundef nonnull %i.af, ptr noundef nonnull %i.aj) #17, !inline_history !238 ; 2 uses
  %i.au = load i32, ptr %i.af, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i.i, label %bb.q, label %Py_DECREF.exit.i

bb.q:                                             ; preds = %bb.p
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.af, align 8, !tbaa !23
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.r, label %Py_DECREF.exit.i

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.af) #17, !inline_history !238
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.r, %bb.q, %bb.p
  %i.ax = icmp eq ptr %i.at, null
  br i1 %i.ax, label %bb.t, label %bb.s

bb.s:                                             ; preds = %Py_DECREF.exit.i, %Py_DECREF.exit49.i
  %.035.i = phi ptr [ %i.af, %Py_DECREF.exit49.i ], [ %i.at, %Py_DECREF.exit.i ] ; 2 uses
  %.034.i = phi ptr [ %i.ao, %Py_DECREF.exit49.i ], [ %i.ad, %Py_DECREF.exit.i ] ; 2 uses
  %i.ay = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %.034.i, ptr noundef nonnull %.035.i) #17, !inline_history !238
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %Py_DECREF.exit.i, %Py_DECREF.exit49.i
  %.136.i = phi ptr [ %i.af, %Py_DECREF.exit49.i ], [ %.035.i, %bb.s ], [ null, %Py_DECREF.exit.i ] ; 2 uses
  %.1.i = phi ptr [ null, %Py_DECREF.exit49.i ], [ %.034.i, %bb.s ], [ %i.ad, %Py_DECREF.exit.i ] ; 2 uses
  %.022.i = phi ptr [ null, %Py_DECREF.exit49.i ], [ %i.ay, %bb.s ], [ null, %Py_DECREF.exit.i ] ; 2 uses
  %i.az = load i32, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.az, -1
  br i1 %.not.i.i.i, label %bb.u, label %Py_XDECREF.exit.i

bb.u:                                             ; preds = %bb.t
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr %i.aj, align 8, !tbaa !23
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.v, label %Py_XDECREF.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #17, !inline_history !238
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.v, %bb.u, %bb.t
  %.not.i55.i = icmp eq ptr %.136.i, null
  br i1 %.not.i55.i, label %Py_XDECREF.exit57.i, label %Py_XDECREF.exit.thread86.i

Py_XDECREF.exit.thread86.i:                       ; preds = %Py_XDECREF.exit.i, %bb.k
  %.1367793.i = phi ptr [ %.136.i, %Py_XDECREF.exit.i ], [ %i.af, %bb.k ] ; 3 uses
  %.17892.i = phi ptr [ %.1.i, %Py_XDECREF.exit.i ], [ %i.ad, %bb.k ] ; 3 uses
  %.0227991.i = phi ptr [ %.022.i, %Py_XDECREF.exit.i ], [ null, %bb.k ] ; 3 uses
  %i.bc = load i32, ptr %.1367793.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i56.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i.i56.i, label %bb.w, label %Py_XDECREF.exit57.i

bb.w:                                             ; preds = %Py_XDECREF.exit.thread86.i
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %.1367793.i, align 8, !tbaa !23
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.x, label %Py_XDECREF.exit57.i

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1367793.i) #17, !inline_history !238
  br label %Py_XDECREF.exit57.i

Py_XDECREF.exit57.i:                              ; preds = %bb.x, %bb.w, %Py_XDECREF.exit.thread86.i, %Py_XDECREF.exit.i
  %.17885.i = phi ptr [ %.17892.i, %bb.x ], [ %.1.i, %Py_XDECREF.exit.i ], [ %.17892.i, %Py_XDECREF.exit.thread86.i ], [ %.17892.i, %bb.w ] ; 2 uses
  %.0227984.i = phi ptr [ %.0227991.i, %bb.x ], [ %.022.i, %Py_XDECREF.exit.i ], [ %.0227991.i, %Py_XDECREF.exit.thread86.i ], [ %.0227991.i, %bb.w ] ; 2 uses
  %.not.i58.i = icmp eq ptr %.17885.i, null
  br i1 %.not.i58.i, label %float_as_integer_ratio_impl.exit, label %Py_XDECREF.exit57.thread97.i

Py_XDECREF.exit57.thread97.i:                     ; preds = %Py_XDECREF.exit57.i, %bb.j
  %.0227984102.i = phi ptr [ %.0227984.i, %Py_XDECREF.exit57.i ], [ null, %bb.j ] ; 3 uses
  %.17885101.i = phi ptr [ %.17885.i, %Py_XDECREF.exit57.i ], [ %i.ad, %bb.j ] ; 3 uses
  %i.bf = load i32, ptr %.17885101.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i59.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i.i59.i, label %bb.y, label %float_as_integer_ratio_impl.exit

bb.y:                                             ; preds = %Py_XDECREF.exit57.thread97.i
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %.17885101.i, align 8, !tbaa !23
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.z, label %float_as_integer_ratio_impl.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %.17885101.i) #17, !inline_history !238
  br label %float_as_integer_ratio_impl.exit

float_as_integer_ratio_impl.exit:                 ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.i, %.critedge.i, %Py_XDECREF.exit57.i, %Py_XDECREF.exit57.thread97.i, %bb.y, %bb.z
  %.0.i = phi ptr [ null, %bb.g ], [ null, %bb.i ], [ @_Py_NotImplementedStruct, %bb.e ], [ %.0227984102.i, %bb.z ], [ @_Py_NotImplementedStruct, %bb.f ], [ %.0227984.i, %Py_XDECREF.exit57.i ], [ %.0227984102.i, %Py_XDECREF.exit57.thread97.i ], [ %.0227984102.i, %bb.y ], [ null, %bb.d ], [ null, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @float_fromhex(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %1, ptr noundef nonnull %i.b) #17, !inline_history !241 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %float_fromhex_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0157.i = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.c ] ; 6 uses
  %i.f = load i8, ptr %.0157.i, align 1, !tbaa !23
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = and i32 %i.i, 8
  %.not.i = icmp eq i32 %i.j, 0
  %i.k = getelementptr i8, ptr %.0157.i, i64 1    ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.c, !llvm.loop !242

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.c, i64 %i.e
  %i.m = call double @_Py_parse_inf_or_nan(ptr noundef nonnull %.0157.i, ptr noundef nonnull %i.a) #17, !inline_history !241
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not186.i = icmp eq ptr %i.n, %.0157.i
  br i1 %.not186.i, label %bb.e, label %.critedge2.thread.i

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %.0157.i, align 1, !tbaa !23 ; 2 uses
  switch i8 %i.o, label %bb.g [
    i8 45, label %thread-pre-split.i
    i8 43, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.f, %bb.e
  %.0152.ph.i = phi i32 [ 0, %bb.f ], [ 1, %bb.e ]
  %.pr.i = load i8, ptr %i.k, align 1, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split.i, %bb.e
  %i.p = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.o, %bb.e ]
  %.1158.i = phi ptr [ %i.k, %thread-pre-split.i ], [ %.0157.i, %bb.e ] ; 4 uses
  %.0152.i = phi i32 [ %.0152.ph.i, %thread-pre-split.i ], [ 0, %bb.e ] ; 4 uses
  %i.q = icmp eq i8 %i.p, 48
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %.1158.i, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !23
  switch i8 %i.s, label %bb.j [
    i8 120, label %bb.i
    i8 88, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.t = getelementptr i8, ptr %.1158.i, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.2159.i = phi ptr [ %i.t, %bb.i ], [ %.1158.i, %bb.g ], [ %.1158.i, %bb.h ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.3160.i = phi ptr [ %.2159.i, %bb.j ], [ %i.z, %bb.k ] ; 6 uses
  %i.u = load i8, ptr %.3160.i, align 1, !tbaa !23 ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = icmp sgt i32 %i.x, -1
  %i.z = getelementptr i8, ptr %.3160.i, i64 1
  br i1 %i.y, label %bb.k, label %bb.l, !llvm.loop !243

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp eq i8 %i.u, 46
  br i1 %i.aa, label %.preheader211.i, label %.loopexit212.i

.preheader211.i:                                  ; preds = %bb.l, %.preheader211.i
  %.3160.pn.i = phi ptr [ %.4.i, %.preheader211.i ], [ %.3160.i, %bb.l ] ; 2 uses
  %.4.i = getelementptr i8, ptr %.3160.pn.i, i64 1 ; 3 uses
  %i.ab = load i8, ptr %.4.i, align 1, !tbaa !23
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %.preheader211.i, label %.loopexit212.i, !llvm.loop !244

.loopexit212.i:                                   ; preds = %.preheader211.i, %bb.l
  %storemerge.i = phi ptr [ %.3160.i, %bb.l ], [ %.3160.pn.i, %.preheader211.i ] ; 2 uses
  %.5.i = phi ptr [ %.3160.i, %bb.l ], [ %.4.i, %.preheader211.i ] ; 4 uses
  store ptr %storemerge.i, ptr %i.a, align 8, !tbaa !49
  %i.ag = ptrtoint ptr %storemerge.i to i64       ; 2 uses
  %i.ah = ptrtoint ptr %.2159.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 5 uses
  %i.aj = ptrtoint ptr %.3160.i to i64
  %i.ak = sub i64 %i.ag, %i.aj                    ; 12 uses
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %bb.ar, label %bb.m

bb.m:                                             ; preds = %.loopexit212.i
  %i.am = icmp sgt i64 %i.ai, 1152921504606846707
  br i1 %i.am, label %bb.as, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load i8, ptr %.5.i, align 1, !tbaa !23
  switch i8 %i.an, label %bb.r [
    i8 112, label %bb.o
    i8 80, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.ao = getelementptr i8, ptr %.5.i, i64 1      ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.ap, label %bb.q [
    i8 45, label %bb.p
    i8 43, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.aq = getelementptr i8, ptr %.5.i, i64 2      ; 2 uses
  %.pre.i = load i8, ptr %i.aq, align 1, !tbaa !23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = phi i8 [ %.pre.i, %bb.p ], [ %i.ap, %bb.o ]
  %.6.i = phi ptr [ %i.aq, %bb.p ], [ %i.ao, %bb.o ]
  %i.as = add i8 %i.ar, -48
  %or.cond199.i = icmp ult i8 %i.as, 10
  br i1 %or.cond199.i, label %.preheader210.i, label %bb.ar

.preheader210.i:                                  ; preds = %bb.q, %.preheader210.i
  %.6.pn.i = phi ptr [ %.7.i, %.preheader210.i ], [ %.6.i, %bb.q ]
  %.7.i = getelementptr i8, ptr %.6.pn.i, i64 1   ; 3 uses
  %i.at = load i8, ptr %.7.i, align 1, !tbaa !23
  %i.au = add i8 %i.at, -48
  %or.cond200.i = icmp ult i8 %i.au, 10
  br i1 %or.cond200.i, label %.preheader210.i, label %.critedge.i, !llvm.loop !245

.critedge.i:                                      ; preds = %.preheader210.i
  %i.av = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ao, ptr noundef null, i32 noundef 10) #17, !inline_history !241
  br label %bb.r

bb.r:                                             ; preds = %.critedge.i, %bb.n
  %.8.i = phi ptr [ %.7.i, %.critedge.i ], [ %.5.i, %bb.n ] ; 4 uses
  %.0150.i = phi i64 [ %i.av, %.critedge.i ], [ 0, %bb.n ] ; 3 uses
  %i.aw = icmp sgt i64 %i.ai, 0
  br i1 %i.aw, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.ax = load ptr, ptr %i.a, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i
  %.0151213.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %i.bc, %bb.t ] ; 5 uses
  %.not187.i = icmp sgt i64 %.0151213.i, %i.ak
  %i.ay = sub nsw i64 1, %.0151213.i
  %.v.idx.i = sext i1 %.not187.i to i64
  %.v.i = getelementptr i8, ptr %i.ax, i64 %.v.idx.i
  %i.az = getelementptr i8, ptr %.v.i, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !23
  %i.bb = icmp eq i8 %i.ba, 48
  br i1 %i.bb, label %bb.t, label %.critedge2.i

bb.t:                                             ; preds = %bb.s
  %i.bc = add nsw i64 %.0151213.i, -1
  %i.bd = icmp sgt i64 %.0151213.i, 1
  br i1 %i.bd, label %bb.s, label %.critedge2.thread.i, !llvm.loop !246

.critedge2.i:                                     ; preds = %bb.s, %bb.r
  %.0151.lcssa.i = phi i64 [ %i.ai, %bb.r ], [ %.0151213.i, %bb.s ] ; 11 uses
  %i.be = icmp eq i64 %.0151.lcssa.i, 0
  %i.bf = icmp slt i64 %.0150.i, -4611686018427387904
  %or.cond.i = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %or.cond.i, label %.critedge2.thread.i, label %bb.u

bb.u:                                             ; preds = %.critedge2.i
  %i.bg = icmp sgt i64 %.0150.i, 4611686018427387903
  br i1 %i.bg, label %bb.aq, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = shl i64 %i.ak, 2
  %i.bi = sub i64 %.0150.i, %i.bh                 ; 7 uses
  %i.bj = add i64 %.0151.lcssa.i, -1              ; 9 uses
  %i.bk = shl i64 %i.bj, 2
  %i.bl = add i64 %i.bk, %i.bi                    ; 2 uses
  %i.bm = icmp slt i64 %i.bj, %i.ak
  %i.bn = load ptr, ptr %i.a, align 8             ; 11 uses
  %i.bo = sub i64 1, %.0151.lcssa.i
  %i.bp = getelementptr i8, ptr %i.bn, i64 -1     ; 10 uses
  %.v204.i = select i1 %i.bm, ptr %i.bn, ptr %i.bp
  %i.bq = getelementptr i8, ptr %.v204.i, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !23  ; 2 uses
  %.not188216.i = icmp eq i8 %i.br, 48
  br i1 %.not188216.i, label %._crit_edge.i, label %.lr.ph219.preheader.i

.lr.ph219.preheader.i:                            ; preds = %bb.v
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr @_CHAR_TO_HEX, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  br label %.lr.ph219.i

.lr.ph219.i:                                      ; preds = %.lr.ph219.i, %.lr.ph219.preheader.i
  %.0155218.i = phi i32 [ %i.bw, %.lr.ph219.i ], [ %i.bu, %.lr.ph219.preheader.i ] ; 2 uses
  %.0156217.i = phi i64 [ %i.bv, %.lr.ph219.i ], [ %i.bl, %.lr.ph219.preheader.i ]
  %i.bv = add i64 %.0156217.i, 1                  ; 2 uses
end_hunk_2
begin_hunk_3_@float_hex:bb.a
  %i.ay = fmul double %i.ax, 1.600000e+01         ; 2 uses
  %i.az = fptosi double %i.ay to i32              ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %i.aj, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !23
  %i.be = sitofp i32 %i.az to double
  %i.bf = fsub double %i.ay, %i.be
  %i.bg = fmul double %i.bf, 1.600000e+01         ; 2 uses
  %i.bh = fptosi double %i.bg to i32              ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %i.aj, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.bk, ptr %i.bl, align 4, !tbaa !23
  %i.bm = sitofp i32 %i.bh to double
  %i.bn = fsub double %i.bg, %i.bm
  %i.bo = fmul double %i.bn, 1.600000e+01         ; 2 uses
  %i.bp = fptosi double %i.bo to i32              ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.aj, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !23
  %i.bu = sitofp i32 %i.bp to double
  %i.bv = fsub double %i.bo, %i.bu
  %i.bw = fmul double %i.bv, 1.600000e+01         ; 2 uses
  %i.bx = fptosi double %i.bw to i32              ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.ca, ptr %i.cb, align 2, !tbaa !23
  %i.cc = sitofp i32 %i.bx to double
  %i.cd = fsub double %i.bw, %i.cc
  %i.ce = fmul double %i.cd, 1.600000e+01         ; 2 uses
  %i.cf = fptosi double %i.ce to i32              ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr i8, ptr %i.aj, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !23
  %i.ck = sitofp i32 %i.cf to double
  %i.cl = fsub double %i.ce, %i.ck
  %i.cm = fmul double %i.cl, 1.600000e+01         ; 2 uses
  %i.cn = fptosi double %i.cm to i32              ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr i8, ptr %i.aj, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.cq, ptr %i.cr, align 8, !tbaa !23
  %i.cs = sitofp i32 %i.cn to double
  %i.ct = fsub double %i.cm, %i.cs
  %i.cu = fmul double %i.ct, 1.600000e+01         ; 2 uses
  %i.cv = fptosi double %i.cu to i32              ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr i8, ptr %i.aj, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !23
  %i.da = sitofp i32 %i.cv to double
  %i.db = fsub double %i.cu, %i.da
  %i.dc = fmul double %i.db, 1.600000e+01         ; 2 uses
  %i.dd = fptosi double %i.dc to i32              ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr i8, ptr %i.aj, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %i.dg, ptr %i.dh, align 2, !tbaa !23
  %i.di = sitofp i32 %i.dd to double
  %i.dj = fsub double %i.dc, %i.di
  %i.dk = fmul double %i.dj, 1.600000e+01         ; 2 uses
  %i.dl = fptosi double %i.dk to i32              ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr i8, ptr %i.aj, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !23
  %i.dq = sitofp i32 %i.dl to double
  %i.dr = fsub double %i.dk, %i.dq
  %i.ds = fmul double %i.dr, 1.600000e+01         ; 2 uses
  %i.dt = fptosi double %i.ds to i32              ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr i8, ptr %i.aj, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !23
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 %i.dw, ptr %i.dx, align 4, !tbaa !23
  %i.dy = sitofp i32 %i.dt to double
  %i.dz = fsub double %i.ds, %i.dy
  %i.ea = fmul double %i.dz, 1.600000e+01         ; 2 uses
  %i.eb = fptosi double %i.ea to i32              ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr i8, ptr %i.aj, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !23
  %i.eg = sitofp i32 %i.eb to double
  %i.eh = fsub double %i.ea, %i.eg
  %i.ei = fmul double %i.eh, 1.600000e+01
  %i.ej = fptosi double %i.ei to i32
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr i8, ptr %i.aj, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !23
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 %i.em, ptr %i.en, align 2, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 0, ptr %i.eo, align 1, !tbaa !23
  %i.ep = icmp slt i32 %i.ah, 0                   ; 2 uses
  %i.eq = sub i32 0, %i.ah
  %.pre = load i32, ptr %i.a, align 4
  %i.er = select i1 %i.ep, i32 %i.eq, i32 %.pre   ; 2 uses
  %.0.i = select i1 %i.ep, i32 45, i32 43         ; 2 uses
  %i.es = fcmp olt double %.038575962.i, 0.000000e+00
  br i1 %i.es, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread60.i
  %i.et = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.b, i32 noundef %.0.i, i32 noundef %i.er) #17, !inline_history !253
  br label %float_hex_impl.exit

bb.p:                                             ; preds = %.thread60.i
  %i.eu = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.44, ptr noundef nonnull %i.b, i32 noundef %.0.i, i32 noundef %i.er) #17, !inline_history !253
  br label %float_hex_impl.exit

float_hex_impl.exit:                              ; preds = %bb.d, %bb.e, %bb.f, %bb.i, %bb.j, %bb.m, %bb.n, %bb.o, %bb.p
  %.023.i = phi ptr [ @_Py_NotImplementedStruct, %bb.e ], [ %i.y, %bb.m ], [ %i.z, %bb.n ], [ %i.et, %bb.o ], [ %i.eu, %bb.p ], [ %i.s, %bb.i ], [ @_Py_NotImplementedStruct, %bb.f ], [ %i.u, %bb.j ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.023.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @float_is_integer(ptr noundef %0, ptr readnone captures(none) %1) #1 {
bb.a:
  %i.a = tail call double @PyFloat_AsDouble(ptr noundef %0), !inline_history !254 ; 4 uses
  %i.b = fcmp oeq double %i.a, -1.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #17, !inline_history !254
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %float_is_integer_impl.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call double @llvm.fabs.f64(double %i.a)
  %i.e = fcmp ueq double %i.d, +inf
  br i1 %i.e, label %float_is_integer_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__errno_location() #20, !inline_history !254
  store i32 0, ptr %i.f, align 4, !tbaa !7
  %i.g = tail call double @llvm.trunc.f64(double %i.a)
  %i.h = fcmp oeq double %i.g, %i.a
  %i.i = select i1 %i.h, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %float_is_integer_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %i.i, align 8, !tbaa !23
  br label %float_is_integer_impl.exit

float_is_integer_impl.exit:                       ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ @_Py_FalseStruct, %bb.c ], [ null, %bb.b ], [ %i.i, %bb.d ], [ %i.i, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @float___getnewargs__(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load double, ptr %i.a, align 8, !tbaa !24
  %i.b = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.45, double noundef %.val) #17
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @float___getformat__(ptr readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val10 = load i64, ptr %i.c, align 8, !tbaa !27
  %i.d = and i64 %.val10, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull %1) #17
  br label %float___getformat___impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #17 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %float___getformat___impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !37
  %.not9 = icmp eq i64 %i.g, %i.h
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !44
  call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.48) #17
  br label %float___getformat___impl.exit

bb.f:                                             ; preds = %bb.d
  %i.j = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(7) @.str.49) #18
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(6) @.str.1) #18
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !44
  call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.50) #17
  br label %float___getformat___impl.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %.0.in.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10696), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10692), %bb.g ]
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !7
  switch i32 %.0.i, label %bb.m [
    i32 0, label %bb.j
    i32 2, label %bb.k
    i32 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.o = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.51) #17
  br label %float___getformat___impl.exit

bb.k:                                             ; preds = %bb.i
  %i.p = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.52) #17
  br label %float___getformat___impl.exit

bb.l:                                             ; preds = %bb.i
  %i.q = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.53) #17
  br label %float___getformat___impl.exit

bb.m:                                             ; preds = %bb.i
  %i.r = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !44
  call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.54) #17
  br label %float___getformat___impl.exit

float___getformat___impl.exit:                    ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.c, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.b ], [ null, %bb.m ], [ %i.o, %bb.j ], [ %i.p, %bb.k ], [ %i.q, %bb.l ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @float___format__(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct._PyUnicodeWriter, align 8   ; 6 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !27
  %i.c = and i64 %.val6, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull %1) #17
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %2) #17
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !255
  %i.e = call i32 @_PyFloat_FormatAdvancedWriter(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %1, i64 noundef 0, i64 noundef %.val.i) #17
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %2) #17
  br label %float___format___impl.exit

bb.e:                                             ; preds = %bb.c
  %i.g = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %2) #17
  br label %float___format___impl.exit

float___format___impl.exit:                       ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.d ], [ %i.g, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.f

bb.f:                                             ; preds = %float___format___impl.exit, %bb.b
  %.0 = phi ptr [ %.0.i, %float___format___impl.exit ], [ null, %bb.b ]
  ret ptr %.0
}

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #7

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i16 @_Py_get_387controlword() local_unnamed_addr #3

declare void @_Py_set_387controlword(i16 noundef zeroext) local_unnamed_addr #3

declare ptr @_Py_dg_dtoa(double noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #3

declare i32 @PyOS_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare double @_Py_dg_strtod(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_dg_freedtoa(ptr noundef) local_unnamed_addr #3

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #3

declare double @_Py_parse_inf_or_nan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #3

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare void @_PyUnicodeWriter_Init(ptr noundef) local_unnamed_addr #3

declare i32 @_PyFloat_FormatAdvancedWriter(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_PyUnicodeWriter_Dealloc(ptr noundef) local_unnamed_addr #3

declare ptr @_PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @float_getreal(ptr noundef captures(ret: address, provenance) %0, ptr readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !20
  %.not.i = icmp eq ptr %.val.i, @PyFloat_Type
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %float_float.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !23
  br label %float_float.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 11168    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i.i

_PyFreeList_Pop.exit.i.i:                         ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  store ptr %i.k, ptr %i.i, align 8, !tbaa !14
  %i.l = getelementptr i8, ptr %i.h, i64 11176    ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !18
  br label %_PyObject_Init.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @PyObject_Malloc(i64 noundef 24) #17, !inline_history !256 ; 4 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyErr_NoMemory() #17, !inline_history !256
  br label %float_float.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.o, i64 8
  store ptr @PyFloat_Type, ptr %i.q, align 8, !tbaa !20
  %i.r = load i32, ptr @PyFloat_Type, align 8, !tbaa !23 ; 2 uses
end_hunk_3
begin_hunk_4_@float_new_impl:bb.a
  br label %float_new_impl.exit

float_new_impl.exit:                              ; preds = %bb.c, %bb.d
  %.09.i = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.c ] ; 8 uses
  %i.e = icmp eq ptr %.09.i, null
  br i1 %i.e, label %float_subtype_new.exit, label %bb.e

bb.e:                                             ; preds = %float_new_impl.exit
  %i.f = getelementptr i8, ptr %0, i64 304
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !258
  %i.h = tail call ptr %i.g(ptr noundef %0, i64 noundef 0) #17, !inline_history !259 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %.09.i, align 8, !tbaa !23 ; 2 uses
  %.not.i13.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i13.i, label %bb.g, label %float_subtype_new.exit

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %.09.i, align 8, !tbaa !23
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %float_subtype_new.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %.09.i) #17, !inline_history !259
  br label %float_subtype_new.exit

bb.i:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %.09.i, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !24
  %i.o = getelementptr i8, ptr %i.h, i64 16
  store double %i.n, ptr %i.o, align 8, !tbaa !24
  %i.p = load i32, ptr %.09.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i, label %bb.j, label %float_subtype_new.exit

bb.j:                                             ; preds = %bb.i
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %.09.i, align 8, !tbaa !23
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.k, label %float_subtype_new.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.09.i) #17, !inline_history !259
  br label %float_subtype_new.exit

bb.l:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 11168    ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.n, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.m
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17
  store ptr %i.w, ptr %i.u, align 8, !tbaa !14
  %i.x = getelementptr i8, ptr %i.t, i64 11176    ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18
  %i.z = add i64 %i.y, -1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !18
  br label %_PyObject_Init.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call ptr @PyObject_Malloc(i64 noundef 24) #17, !inline_history !19 ; 4 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @PyErr_NoMemory() #17, !inline_history !19
  br label %float_subtype_new.exit

bb.p:                                             ; preds = %bb.n
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  store ptr @PyFloat_Type, ptr %i.ac, align 8, !tbaa !20
  %i.ad = load i32, ptr @PyFloat_Type, align 8, !tbaa !23 ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, -1073741825
  br i1 %i.ae, label %_PyObject_Init.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = add nuw i32 %i.ad, 1
  store i32 %i.af, ptr @PyFloat_Type, align 8, !tbaa !23
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.q, %bb.p, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.v, %_PyFreeList_Pop.exit.i ], [ %i.aa, %bb.p ], [ %i.aa, %bb.q ] ; 3 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #17, !inline_history !19
  %i.ag = getelementptr i8, ptr %.sink.i, i64 16
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !24
  br label %float_subtype_new.exit

bb.r:                                             ; preds = %bb.l
  %i.ah = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ah, align 8, !tbaa !20
  %.not15 = icmp eq ptr %.val, @PyUnicode_Type
  br i1 %.not15, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ai = tail call ptr @PyFloat_FromString(ptr noundef nonnull %1)
  br label %float_subtype_new.exit

bb.t:                                             ; preds = %bb.r
  %i.aj = tail call ptr @PyNumber_Float(ptr noundef nonnull %1) #17
  br label %float_subtype_new.exit

float_subtype_new.exit:                           ; preds = %_PyObject_Init.exit.i, %bb.o, %float_new_impl.exit, %bb.h, %bb.g, %bb.f, %bb.k, %bb.j, %bb.i, %bb.t, %bb.s
  %.09 = phi ptr [ %i.aj, %bb.t ], [ %i.h, %bb.i ], [ %i.ai, %bb.s ], [ null, %bb.f ], [ null, %float_new_impl.exit ], [ null, %bb.h ], [ null, %bb.g ], [ %i.h, %bb.k ], [ %i.h, %bb.j ], [ %.sink.i, %_PyObject_Init.exit.i ], [ %i.ab, %bb.o ]
  ret ptr %.09
}

declare ptr @PyNumber_Float(ptr noundef) local_unnamed_addr #3

declare i32 @_PyArg_NoKwnames(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyInterpreterState_Main() local_unnamed_addr #3

declare i32 @_PyStructSequence_InitBuiltinWithFlags(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { memory(none) }
attributes #20 = { nounwind willreturn memory(none) }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS3_is", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !13, i64 0}
!15 = !{!"_Py_freelist", !13, i64 0, !16, i64 8}
!16 = !{!"long", !9, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!15, !16, i64 8}
!19 = !{ptr @PyFloat_FromDouble}
!20 = !{!21, !22, i64 8}
!21 = !{!"_object", !9, i64 0, !22, i64 8}
!22 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!23 = !{!9, !9, i64 0}
!24 = !{!25, !26, i64 16}
!25 = !{!"", !21, i64 0, !26, i64 16}
!26 = !{!"double", !9, i64 0}
!27 = !{!28, !16, i64 168}
!28 = !{!"_typeobject", !29, i64 0, !30, i64 24, !16, i64 32, !16, i64 40, !13, i64 48, !16, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !16, i64 168, !30, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !16, i64 208, !13, i64 216, !13, i64 224, !31, i64 232, !32, i64 240, !33, i64 248, !22, i64 256, !34, i64 264, !13, i64 272, !13, i64 280, !16, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !34, i64 336, !34, i64 344, !34, i64 352, !13, i64 360, !34, i64 368, !13, i64 376, !8, i64 384, !13, i64 392, !13, i64 400, !9, i64 408, !35, i64 410}
!29 = !{!"PyVarObject", !21, i64 0, !16, i64 16}
!30 = !{!"p1 omnipotent char", !13, i64 0}
!31 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!32 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!33 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!34 = !{!"p1 _ZTS7_object", !13, i64 0}
!35 = !{!"short", !9, i64 0}
!36 = !{!29, !16, i64 16}
!37 = !{!16, !16, i64 0}
!38 = !{!39, !30, i64 40}
!39 = !{!"", !29, i64 0, !16, i64 24, !30, i64 32, !30, i64 40, !16, i64 48, !34, i64 56}
!40 = !{!41, !13, i64 0}
!41 = !{!"", !13, i64 0, !34, i64 8, !16, i64 16, !16, i64 24, !8, i64 32, !8, i64 36, !30, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !13, i64 72}
!42 = !{!"p1 long", !13, i64 0}
!43 = !{!41, !16, i64 16}
!44 = !{!34, !34, i64 0}
!45 = !{!28, !30, i64 24}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = !{!30, !30, i64 0}
!50 = !{!28, !13, i64 96}
!51 = !{!52, !13, i64 144}
!52 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280}
!53 = !{!52, !13, i64 264}
!54 = !{!26, !26, i64 0}
!55 = !{!28, !13, i64 320}
!56 = !{!28, !13, i64 296}
!57 = !{!58, !8, i64 10696}
!58 = !{!"pyruntimestate", !59, i64 0, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !8, i64 840, !80, i64 848, !16, i64 856, !81, i64 864, !16, i64 896, !80, i64 904, !83, i64 912, !87, i64 936, !93, i64 1240, !94, i64 1256, !96, i64 1280, !100, i64 1320, !102, i64 2400, !103, i64 2408, !106, i64 2424, !108, i64 2488, !109, i64 2760, !113, i64 2800, !119, i64 10144, !120, i64 10160, !122, i64 10168, !123, i64 10176, !129, i64 10352, !132, i64 10568, !63, i64 10584, !133, i64 10592, !136, i64 10616, !13, i64 10656, !13, i64 10664, !137, i64 10672, !139, i64 10688, !140, i64 10692, !141, i64 10704, !143, i64 10720, !144, i64 14120, !145, i64 14128, !146, i64 14136, !158, i64 119552}
!59 = !{!"_Py_DebugOffsets", !9, i64 0, !16, i64 8, !16, i64 16, !60, i64 24, !61, i64 48, !62, i64 176, !63, i64 296, !64, i64 304, !65, i64 368, !66, i64 456, !67, i64 472, !68, i64 504, !69, i64 528, !70, i64 552, !71, i64 584, !72, i64 608, !73, i64 624, !74, i64 648, !75, i64 672, !76, i64 704, !77, i64 728, !78, i64 760, !79, i64 776}
!60 = !{!"_runtime_state", !16, i64 0, !16, i64 8, !16, i64 16}
!61 = !{!"_interpreter_state", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120}
!62 = !{!"_thread_state", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112}
!63 = !{!"", !16, i64 0}
!64 = !{!"_interpreter_frame", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!65 = !{!"_code_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80}
!66 = !{!"_pyobject", !16, i64 0, !16, i64 8}
!67 = !{!"_type_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!68 = !{!"_tuple_object", !16, i64 0, !16, i64 8, !16, i64 16}
!69 = !{!"_list_object", !16, i64 0, !16, i64 8, !16, i64 16}
!70 = !{!"_set_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!71 = !{!"_dict_object", !16, i64 0, !16, i64 8, !16, i64 16}
!72 = !{!"_float_object", !16, i64 0, !16, i64 8}
!73 = !{!"_long_object", !16, i64 0, !16, i64 8, !16, i64 16}
!74 = !{!"_bytes_object", !16, i64 0, !16, i64 8, !16, i64 16}
!75 = !{!"_unicode_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!76 = !{!"_gc", !16, i64 0, !16, i64 8, !16, i64 16}
!77 = !{!"_gen_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!78 = !{!"_llist_node", !16, i64 0, !16, i64 8}
!79 = !{!"_debugger_support", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!80 = !{!"p1 _ZTS3_ts", !13, i64 0}
!81 = !{!"pyinterpreters", !82, i64 0, !12, i64 8, !12, i64 16, !16, i64 24}
!82 = !{!"PyMutex", !9, i64 0}
!83 = !{!"", !84, i64 0}
!84 = !{!"_xid_lookup_state", !85, i64 0}
!85 = !{!"", !8, i64 0, !8, i64 4, !82, i64 8, !86, i64 16}
!86 = !{!"p1 _ZTS12_xid_regitem", !13, i64 0}
!87 = !{!"_pymem_allocators", !82, i64 0, !88, i64 8, !90, i64 128, !8, i64 272, !8, i64 276, !92, i64 280}
!88 = !{!"", !89, i64 0, !89, i64 40, !89, i64 80}
!89 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!90 = !{!"", !91, i64 0, !91, i64 48, !91, i64 96}
!91 = !{!"", !9, i64 0, !89, i64 8}
!92 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!93 = !{!"_obmalloc_global_state", !8, i64 0, !16, i64 8}
!94 = !{!"pyhash_runtime_state", !95, i64 0}
!95 = !{!"", !8, i64 0, !16, i64 8, !16, i64 16}
!96 = !{!"_pythread_runtime_state", !8, i64 0, !97, i64 8, !98, i64 24}
!97 = !{!"", !13, i64 0, !9, i64 8}
!98 = !{!"llist_node", !99, i64 0, !99, i64 8}
!99 = !{!"p1 _ZTS10llist_node", !13, i64 0}
!100 = !{!"_signals_runtime_state", !9, i64 0, !101, i64 1040, !8, i64 1048, !34, i64 1056, !34, i64 1064, !8, i64 1072}
!101 = !{!"", !8, i64 0, !8, i64 4}
!102 = !{!"_Py_tss_t", !8, i64 0, !8, i64 4}
!103 = !{!"", !16, i64 0, !104, i64 8}
!104 = !{!"p2 int", !105, i64 0}
!105 = !{!"any p2 pointer", !13, i64 0}
!106 = !{!"_parser_runtime_state", !8, i64 0, !107, i64 8}
!107 = !{!"_expr", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!108 = !{!"_atexit_runtime_state", !82, i64 0, !9, i64 8, !8, i64 264}
!109 = !{!"_import_runtime_state", !110, i64 0, !16, i64 8, !111, i64 16, !30, i64 32}
!110 = !{!"p1 _ZTS8_inittab", !13, i64 0}
!111 = !{!"", !82, i64 0, !112, i64 8}
!112 = !{!"p1 _ZTS15_Py_hashtable_t", !13, i64 0}
!113 = !{!"_ceval_runtime_state", !114, i64 0, !118, i64 112}
!114 = !{!"", !8, i64 0, !8, i64 4, !16, i64 8, !115, i64 16, !116, i64 24, !117, i64 72, !16, i64 80, !13, i64 88, !16, i64 96, !8, i64 104}
!115 = !{!"p1 _ZTS13code_arena_st", !13, i64 0}
!116 = !{!"trampoline_api_st", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !16, i64 32, !16, i64 40}
!117 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!118 = !{!"_pending_calls", !80, i64 0, !82, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 7224, !8, i64 7228}
!119 = !{!"_gilstate_runtime_state", !8, i64 0, !12, i64 8}
!120 = !{!"_getargs_runtime_state", !121, i64 0}
!121 = !{!"p1 _ZTS13_PyArg_Parser", !13, i64 0}
!122 = !{!"_fileutils_state", !8, i64 0}
!123 = !{!"_faulthandler_runtime_state", !124, i64 0, !125, i64 40, !127, i64 120, !128, i64 128, !128, i64 152}
!124 = !{!"", !8, i64 0, !34, i64 8, !8, i64 16, !8, i64 20, !12, i64 24, !8, i64 32}
!125 = !{!"", !34, i64 0, !8, i64 8, !126, i64 16, !8, i64 24, !12, i64 32, !8, i64 40, !30, i64 48, !16, i64 56, !13, i64 64, !13, i64 72}
!126 = !{!"long long", !9, i64 0}
!127 = !{!"p1 _ZTS24faulthandler_user_signal", !13, i64 0}
!128 = !{!"", !13, i64 0, !8, i64 8, !16, i64 16}
!129 = !{!"_tracemalloc_runtime_state", !130, i64 0, !88, i64 16, !82, i64 136, !16, i64 144, !16, i64 152, !112, i64 160, !131, i64 168, !112, i64 176, !112, i64 184, !112, i64 192, !131, i64 200, !102, i64 208}
!130 = !{!"_PyTraceMalloc_Config", !8, i64 0, !8, i64 4, !8, i64 8}
!131 = !{!"p1 _ZTS21tracemalloc_traceback", !13, i64 0}
!132 = !{!"_reftracer_runtime_state", !13, i64 0, !13, i64 8}
!133 = !{!"_stoptheworld_state", !82, i64 0, !134, i64 1, !134, i64 2, !134, i64 3, !135, i64 4, !16, i64 8, !80, i64 16}
!134 = !{!"_Bool", !9, i64 0}
!135 = !{!"", !9, i64 0}
!136 = !{!"PyPreConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36}
!137 = !{!"", !82, i64 0, !138, i64 8}
!138 = !{!"p1 _ZTS18_Py_AuditHookEntry", !13, i64 0}
!139 = !{!"_py_object_runtime_state", !8, i64 0}
!140 = !{!"_Py_float_runtime_state", !8, i64 0, !8, i64 4}
!141 = !{!"_Py_unicode_runtime_state", !142, i64 0}
!142 = !{!"_Py_unicode_runtime_ids", !82, i64 0, !16, i64 8}
!143 = !{!"_types_runtime_state", !8, i64 0, !135, i64 8}
!144 = !{!"_Py_time_runtime_state", !9, i64 0}
!145 = !{!"_Py_cached_objects", !112, i64 0}
!146 = !{!"_Py_static_objects", !147, i64 0}
!147 = !{!"", !9, i64 0, !148, i64 32960, !9, i64 33000, !149, i64 45288, !155, i64 105288, !148, i64 105304, !155, i64 105344, !156, i64 105360, !157, i64 105400}
!148 = !{!"", !29, i64 0, !16, i64 24, !9, i64 32}
!149 = !{!"_Py_global_strings", !150, i64 0, !154, i64 1336, !9, i64 45664, !9, i64 51808}
!150 = !{!"", !151, i64 0, !151, i64 56, !151, i64 112, !151, i64 168, !151, i64 224, !151, i64 280, !151, i64 328, !151, i64 384, !151, i64 440, !151, i64 496, !151, i64 544, !151, i64 592, !151, i64 640, !151, i64 696, !151, i64 752, !151, i64 800, !151, i64 848, !151, i64 896, !151, i64 952, !151, i64 1008, !151, i64 1064, !151, i64 1128, !151, i64 1184, !151, i64 1232, !151, i64 1288}
!151 = !{!"", !152, i64 0, !9, i64 40}
!152 = !{!"", !21, i64 0, !16, i64 16, !16, i64 24, !153, i64 32}
!153 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!154 = !{!"", !151, i64 0, !151, i64 56, !151, i64 112, !151, i64 168, !151, i64 224, !151, i64 280, !151, i64 336, !151, i64 392, !151, i64 448, !151, i64 504, !151, i64 552, !151, i64 600, !151, i64 656, !151, i64 704, !151, i64 760, !151, i64 816, !151, i64 872, !151, i64 928, !151, i64 984, !151, i64 1032, !151, i64 1080, !151, i64 1136, !151, i64 1184, !151, i64 1240, !151, i64 1304, !151, i64 1360, !151, i64 1416, !151, i64 1464, !151, i64 1528, !151, i64 1576, !151, i64 1632, !151, i64 1688, !151, i64 1744, !151, i64 1792, !151, i64 1840, !151, i64 1896, !151, i64 1952, !151, i64 2016, !151, i64 2072, !151, i64 2136, !151, i64 2192, !151, i64 2248, !151, i64 2304, !151, i64 2360, !151, i64 2416, !151, i64 2472, !151, i64 2528, !151, i64 2584, !151, i64 2640, !151, i64 2696, !151, i64 2752, !151, i64 2808, !151, i64 2872, !151, i64 2928, !151, i64 2984, !151, i64 3048, !151, i64 3104, !151, i64 3176, !151, i64 3232, !151, i64 3304, !151, i64 3352, !151, i64 3408, !151, i64 3464, !151, i64 3520, !151, i64 3576, !151, i64 3632, !151, i64 3680, !151, i64 3736, !151, i64 3784, !151, i64 3840, !151, i64 3888, !151, i64 3944, !151, i64 4000, !151, i64 4056, !151, i64 4112, !151, i64 4168, !151, i64 4224, !151, i64 4280, !151, i64 4336, !151, i64 4384, !151, i64 4432, !151, i64 4488, !151, i64 4552, !151, i64 4608, !151, i64 4664, !151, i64 4720, !151, i64 4784, !151, i64 4840, !151, i64 4888, !151, i64 4944, !151, i64 5000, !151, i64 5056, !151, i64 5112, !151, i64 5168, !151, i64 5224, !151, i64 5280, !151, i64 5336, !151, i64 5392, !151, i64 5448, !151, i64 5504, !151, i64 5568, !151, i64 5632, !151, i64 5680, !151, i64 5736, !151, i64 5784, !151, i64 5840, !151, i64 5896, !151, i64 5960, !151, i64 6016, !151, i64 6072, !151, i64 6128, !151, i64 6184, !151, i64 6240, !151, i64 6304, !151, i64 6352, !151, i64 6400, !151, i64 6456, !151, i64 6512, !151, i64 6568, !151, i64 6624, !151, i64 6672, !151, i64 6728, !151, i64 6784, !151, i64 6840, !151, i64 6896, !151, i64 6944, !151, i64 7000, !151, i64 7056, !151, i64 7104, !151, i64 7160, !151, i64 7208, !151, i64 7256, !151, i64 7304, !151, i64 7360, !151, i64 7416, !151, i64 7472, !151, i64 7528, !151, i64 7576, !151, i64 7632, !151, i64 7688, !151, i64 7744, !151, i64 7800, !151, i64 7856, !151, i64 7904, !151, i64 7952, !151, i64 8008, !151, i64 8064, !151, i64 8120, !151, i64 8176, !151, i64 8232, !151, i64 8288, !151, i64 8344, !151, i64 8408, !151, i64 8464, !151, i64 8520, !151, i64 8576, !151, i64 8632, !151, i64 8688, !151, i64 8744, !151, i64 8800, !151, i64 8848, !151, i64 8904, !151, i64 8960, !151, i64 9016, !151, i64 9072, !151, i64 9128, !151, i64 9184, !151, i64 9240, !151, i64 9288, !151, i64 9344, !151, i64 9400, !151, i64 9456, !151, i64 9512, !151, i64 9568, !151, i64 9624, !151, i64 9680, !151, i64 9736, !151, i64 9800, !151, i64 9848, !151, i64 9896, !151, i64 9960, !151, i64 10024, !151, i64 10080, !151, i64 10136, !151, i64 10192, !151, i64 10272, !151, i64 10344, !151, i64 10408, !151, i64 10480, !151, i64 10544, !151, i64 10608, !151, i64 10664, !151, i64 10712, !151, i64 10768, !151, i64 10824, !151, i64 10872, !151, i64 10928, !151, i64 10984, !151, i64 11040, !151, i64 11112, !151, i64 11168, !151, i64 11224, !151, i64 11280, !151, i64 11336, !151, i64 11400, !151, i64 11456, !151, i64 11512, !151, i64 11568, !151, i64 11624, !151, i64 11680, !151, i64 11736, !151, i64 11784, !151, i64 11840, !151, i64 11904, !151, i64 11960, !151, i64 12016, !151, i64 12064, !151, i64 12128, !151, i64 12192, !151, i64 12248, !151, i64 12296, !151, i64 12360, !151, i64 12408, !151, i64 12472, !151, i64 12528, !151, i64 12584, !151, i64 12640, !151, i64 12696, !151, i64 12752, !151, i64 12808, !151, i64 12872, !151, i64 12944, !151, i64 13008, !151, i64 13056, !151, i64 13128, !151, i64 13200, !151, i64 13256, !151, i64 13304, !151, i64 13352, !151, i64 13400, !151, i64 13448, !151, i64 13512, !151, i64 13560, !151, i64 13616, !151, i64 13672, !151, i64 13720, !151, i64 13768, !151, i64 13816, !151, i64 13872, !151, i64 13928, !151, i64 13976, !151, i64 14024, !151, i64 14072, !151, i64 14120, !151, i64 14168, !151, i64 14224, !151, i64 14272, !151, i64 14336, !151, i64 14384, !151, i64 14432, !151, i64 14480, !151, i64 14536, !151, i64 14592, !151, i64 14648, !151, i64 14696, !151, i64 14744, !151, i64 14792, !151, i64 14848, !151, i64 14904, !151, i64 14960, !151, i64 15008, !151, i64 15064, !151, i64 15112, !151, i64 15160, !151, i64 15216, !151, i64 15272, !151, i64 15328, !151, i64 15376, !151, i64 15424, !151, i64 15480, !151, i64 15536, !151, i64 15592, !151, i64 15648, !151, i64 15696, !151, i64 15752, !151, i64 15800, !151, i64 15856, !151, i64 15920, !151, i64 15976, !151, i64 16024, !151, i64 16080, !151, i64 16144, !151, i64 16208, !151, i64 16256, !151, i64 16304, !151, i64 16352, !151, i64 16416, !151, i64 16472, !151, i64 16528, !151, i64 16584, !151, i64 16632, !151, i64 16680, !151, i64 16736, !151, i64 16792, !151, i64 16840, !151, i64 16896, !151, i64 16944, !151, i64 17008, !151, i64 17056, !151, i64 17104, !151, i64 17152, !151, i64 17200, !151, i64 17248, !151, i64 17296, !151, i64 17352, !151, i64 17408, !151, i64 17456, !151, i64 17512, !151, i64 17576, !151, i64 17632, !151, i64 17688, !151, i64 17744, !151, i64 17800, !151, i64 17864, !151, i64 17920, !151, i64 17968, !151, i64 18024, !151, i64 18080, !151, i64 18144, !151, i64 18200, !151, i64 18256, !151, i64 18312, !151, i64 18360, !151, i64 18416, !151, i64 18472, !151, i64 18520, !151, i64 18576, !151, i64 18632, !151, i64 18688, !151, i64 18736, !151, i64 18784, !151, i64 18832, !151, i64 18888, !151, i64 18944, !151, i64 18992, !151, i64 19040, !151, i64 19088, !151, i64 19136, !151, i64 19184, !151, i64 19240, !151, i64 19288, !151, i64 19336, !151, i64 19400, !151, i64 19448, !151, i64 19504, !151, i64 19552, !151, i64 19600, !151, i64 19648, !151, i64 19696, !151, i64 19744, !151, i64 19792, !151, i64 19840, !151, i64 19896, !151, i64 19944, !151, i64 19992, !151, i64 20048, !151, i64 20104, !151, i64 20160, !151, i64 20208, !151, i64 20256, !151, i64 20320, !151, i64 20368, !151, i64 20424, !151, i64 20480, !151, i64 20528, !151, i64 20576, !151, i64 20632, !151, i64 20688, !151, i64 20736, !151, i64 20784, !151, i64 20832, !151, i64 20888, !151, i64 20936, !151, i64 20992, !151, i64 21048, !151, i64 21104, !151, i64 21160, !151, i64 21216, !151, i64 21264, !151, i64 21320, !151, i64 21368, !151, i64 21424, !151, i64 21480, !151, i64 21536, !151, i64 21584, !151, i64 21640, !151, i64 21688, !151, i64 21736, !151, i64 21784, !151, i64 21840, !151, i64 21888, !151, i64 21936, !151, i64 21992, !151, i64 22040, !151, i64 22096, !151, i64 22152, !151, i64 22208, !151, i64 22272, !151, i64 22320, !151, i64 22368, !151, i64 22424, !151, i64 22472, !151, i64 22528, !151, i64 22584, !151, i64 22632, !151, i64 22688, !151, i64 22736, !151, i64 22784, !151, i64 22832, !151, i64 22880, !151, i64 22928, !151, i64 22976, !151, i64 23024, !151, i64 23072, !151, i64 23120, !151, i64 23176, !151, i64 23232, !151, i64 23280, !151, i64 23336, !151, i64 23392, !151, i64 23440, !151, i64 23488, !151, i64 23536, !151, i64 23592, !151, i64 23648, !151, i64 23696, !151, i64 23744, !151, i64 23792, !151, i64 23848, !151, i64 23904, !151, i64 23952, !151, i64 24008, !151, i64 24064, !151, i64 24120, !151, i64 24176, !151, i64 24232, !151, i64 24288, !151, i64 24336, !151, i64 24384, !151, i64 24440, !151, i64 24488, !151, i64 24536, !151, i64 24584, !151, i64 24640, !151, i64 24688, !151, i64 24744, !151, i64 24800, !151, i64 24856, !151, i64 24912, !151, i64 24960, !151, i64 25016, !151, i64 25064, !151, i64 25112, !151, i64 25168, !151, i64 25216, !151, i64 25264, !151, i64 25320, !151, i64 25376, !151, i64 25432, !151, i64 25480, !151, i64 25528, !151, i64 25576, !151, i64 25624, !151, i64 25672, !151, i64 25720, !151, i64 25768, !151, i64 25816, !151, i64 25872, !151, i64 25920, !151, i64 25976, !151, i64 26024, !151, i64 26080, !151, i64 26136, !151, i64 26184, !151, i64 26240, !151, i64 26296, !151, i64 26344, !151, i64 26400, !151, i64 26448, !151, i64 26504, !151, i64 26560, !151, i64 26616, !151, i64 26664, !151, i64 26720, !151, i64 26776, !151, i64 26832, !151, i64 26888, !151, i64 26936, !151, i64 26992, !151, i64 27040, !151, i64 27096, !151, i64 27152, !151, i64 27208, !151, i64 27256, !151, i64 27312, !151, i64 27368, !151, i64 27416, !151, i64 27472, !151, i64 27520, !151, i64 27576, !151, i64 27632, !151, i64 27680, !151, i64 27736, !151, i64 27792, !151, i64 27848, !151, i64 27896, !151, i64 27944, !151, i64 27992, !151, i64 28040, !151, i64 28096, !151, i64 28152, !151, i64 28200, !151, i64 28248, !151, i64 28304, !151, i64 28352, !151, i64 28400, !151, i64 28448, !151, i64 28496, !151, i64 28544, !151, i64 28592, !151, i64 28640, !151, i64 28688, !151, i64 28744, !151, i64 28792, !151, i64 28840, !151, i64 28896, !151, i64 28952, !151, i64 29008, !151, i64 29064, !151, i64 29120, !151, i64 29168, !151, i64 29224, !151, i64 29272, !151, i64 29320, !151, i64 29368, !151, i64 29416, !151, i64 29464, !151, i64 29512, !151, i64 29568, !151, i64 29616, !151, i64 29664, !151, i64 29712, !151, i64 29760, !151, i64 29808, !151, i64 29864, !151, i64 29912, !151, i64 29968, !151, i64 30016, !151, i64 30064, !151, i64 30112, !151, i64 30168, !151, i64 30224, !151, i64 30280, !151, i64 30328, !151, i64 30376, !151, i64 30424, !151, i64 30480, !151, i64 30536, !151, i64 30592, !151, i64 30648, !151, i64 30696, !151, i64 30752, !151, i64 30808, !151, i64 30856, !151, i64 30912, !151, i64 30968, !151, i64 31024, !151, i64 31072, !151, i64 31120, !151, i64 31168, !151, i64 31216, !151, i64 31264, !151, i64 31320, !151, i64 31368, !151, i64 31416, !151, i64 31464, !151, i64 31512, !151, i64 31560, !151, i64 31608, !151, i64 31656, !151, i64 31712, !151, i64 31776, !151, i64 31840, !151, i64 31888, !151, i64 31944, !151, i64 32008, !151, i64 32064, !151, i64 32112, !151, i64 32160, !151, i64 32208, !151, i64 32264, !151, i64 32320, !151, i64 32368, !151, i64 32424, !151, i64 32472, !151, i64 32520, !151, i64 32576, !151, i64 32632, !151, i64 32680, !151, i64 32728, !151, i64 32776, !151, i64 32824, !151, i64 32872, !151, i64 32920, !151, i64 32968, !151, i64 33016, !151, i64 33072, !151, i64 33128, !151, i64 33184, !151, i64 33240, !151, i64 33304, !151, i64 33360, !151, i64 33408, !151, i64 33456, !151, i64 33504, !151, i64 33552, !151, i64 33600, !151, i64 33656, !151, i64 33712, !151, i64 33760, !151, i64 33808, !151, i64 33856, !151, i64 33904, !151, i64 33952, !151, i64 34008, !151, i64 34056, !151, i64 34112, !151, i64 34160, !151, i64 34208, !151, i64 34256, !151, i64 34312, !151, i64 34360, !151, i64 34416, !151, i64 34464, !151, i64 34512, !151, i64 34560, !151, i64 34616, !151, i64 34672, !151, i64 34720, !151, i64 34776, !151, i64 34824, !151, i64 34880, !151, i64 34928, !151, i64 34976, !151, i64 35024, !151, i64 35072, !151, i64 35120, !151, i64 35168, !151, i64 35224, !151, i64 35288, !151, i64 35344, !151, i64 35400, !151, i64 35464, !151, i64 35528, !151, i64 35576, !151, i64 35632, !151, i64 35680, !151, i64 35728, !151, i64 35776, !151, i64 35832, !151, i64 35880, !151, i64 35936, !151, i64 35992, !151, i64 36040, !151, i64 36088, !151, i64 36136, !151, i64 36192, !151, i64 36240, !151, i64 36296, !151, i64 36352, !151, i64 36408, !151, i64 36464, !151, i64 36512, !151, i64 36568, !151, i64 36632, !151, i64 36688, !151, i64 36736, !151, i64 36784, !151, i64 36832, !151, i64 36880, !151, i64 36928, !151, i64 36976, !151, i64 37024, !151, i64 37080, !151, i64 37136, !151, i64 37184, !151, i64 37240, !151, i64 37296, !151, i64 37344, !151, i64 37392, !151, i64 37448, !151, i64 37504, !151, i64 37552, !151, i64 37616, !151, i64 37672, !151, i64 37728, !151, i64 37776, !151, i64 37824, !151, i64 37872, !151, i64 37936, !151, i64 37984, !151, i64 38040, !151, i64 38096, !151, i64 38144, !151, i64 38192, !151, i64 38240, !151, i64 38296, !151, i64 38352, !151, i64 38408, !151, i64 38456, !151, i64 38512, !151, i64 38560, !151, i64 38616, !151, i64 38672, !151, i64 38728, !151, i64 38776, !151, i64 38824, !151, i64 38872, !151, i64 38928, !151, i64 38976, !151, i64 39024, !151, i64 39072, !151, i64 39128, !151, i64 39192, !151, i64 39264, !151, i64 39312, !151, i64 39360, !151, i64 39408, !151, i64 39456, !151, i64 39520, !151, i64 39568, !151, i64 39616, !151, i64 39672, !151, i64 39728, !151, i64 39784, !151, i64 39832, !151, i64 39888, !151, i64 39944, !151, i64 39992, !151, i64 40040, !151, i64 40088, !151, i64 40136, !151, i64 40184, !151, i64 40232, !151, i64 40280, !151, i64 40336, !151, i64 40392, !151, i64 40448, !151, i64 40496, !151, i64 40552, !151, i64 40600, !151, i64 40648, !151, i64 40704, !151, i64 40776, !151, i64 40824, !151, i64 40872, !151, i64 40928, !151, i64 40976, !151, i64 41040, !151, i64 41088, !151, i64 41144, !151, i64 41200, !151, i64 41256, !151, i64 41304, !151, i64 41352, !151, i64 41408, !151, i64 41456, !151, i64 41504, !151, i64 41552, !151, i64 41608, !151, i64 41656, !151, i64 41704, !151, i64 41752, !151, i64 41800, !151, i64 41848, !151, i64 41904, !151, i64 41960, !151, i64 42016, !151, i64 42072, !151, i64 42128, !151, i64 42176, !151, i64 42232, !151, i64 42288, !151, i64 42344, !151, i64 42392, !151, i64 42440, !151, i64 42496, !151, i64 42544, !151, i64 42592, !151, i64 42640, !151, i64 42696, !151, i64 42744, !151, i64 42792, !151, i64 42840, !151, i64 42888, !151, i64 42944, !151, i64 42992, !151, i64 43048, !151, i64 43096, !151, i64 43144, !151, i64 43200, !151, i64 43248, !151, i64 43296, !151, i64 43344, !151, i64 43392, !151, i64 43448, !151, i64 43512, !151, i64 43568, !151, i64 43624, !151, i64 43672, !151, i64 43720, !151, i64 43768, !151, i64 43816, !151, i64 43864, !151, i64 43912, !151, i64 43968, !151, i64 44016, !151, i64 44072, !151, i64 44120, !151, i64 44176, !151, i64 44224, !151, i64 44272}
!155 = !{!"", !16, i64 0, !16, i64 8}
!156 = !{!"", !29, i64 0, !8, i64 24, !9, i64 32}
!157 = !{!"", !21, i64 0}
!158 = !{!"_is", !159, i64 0, !12, i64 7264, !16, i64 7272, !16, i64 7280, !8, i64 7288, !16, i64 7296, !8, i64 7304, !8, i64 7308, !8, i64 7312, !16, i64 7320, !161, i64 7328, !163, i64 7376, !80, i64 7384, !16, i64 7392, !164, i64 7400, !34, i64 7680, !34, i64 7688, !167, i64 7696, !170, i64 7832, !16, i64 8040, !171, i64 8048, !172, i64 8080, !16, i64 8536, !34, i64 8544, !34, i64 8552, !34, i64 8560, !13, i64 8568, !9, i64 8576, !9, i64 8640, !16, i64 8648, !9, i64 8656, !174, i64 10696, !34, i64 10744, !34, i64 10752, !34, i64 10760, !176, i64 10768, !177, i64 10832, !133, i64 10848, !179, i64 10872, !98, i64 10928, !82, i64 10944, !182, i64 10952, !34, i64 10960, !9, i64 10968, !9, i64 11032, !9, i64 11096, !9, i64 11160, !9, i64 11161, !183, i64 11168, !185, i64 11832, !189, i64 11888, !190, i64 11896, !192, i64 14336, !193, i64 79880, !194, i64 79896, !195, i64 79968, !196, i64 80000, !197, i64 80024, !198, i64 82008, !202, i64 223296, !9, i64 223328, !134, i64 223384, !134, i64 223385, !203, i64 223386, !204, i64 223400, !204, i64 223408, !204, i64 223416, !204, i64 223424, !16, i64 223432, !205, i64 223440, !13, i64 223448, !206, i64 223456, !135, i64 223472, !135, i64 223473, !16, i64 223480, !16, i64 223488, !9, i64 223496, !9, i64 224712, !9, i64 224776, !207, i64 224840, !208, i64 224928, !16, i64 225064, !212, i64 225072}
!159 = !{!"_ceval_state", !16, i64 0, !8, i64 8, !160, i64 16, !8, i64 24, !118, i64 32}
!160 = !{!"p1 _ZTS18_gil_runtime_state", !13, i64 0}
!161 = !{!"pythreads", !16, i64 0, !80, i64 8, !162, i64 16, !80, i64 24, !16, i64 32, !16, i64 40}
!162 = !{!"p1 _ZTS18_PyThreadStateImpl", !13, i64 0}
!163 = !{!"p1 _ZTS14pyruntimestate", !13, i64 0}
!164 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !165, i64 8, !9, i64 32, !165, i64 80, !9, i64 104, !8, i64 224, !166, i64 232, !34, i64 240, !34, i64 248, !16, i64 256, !16, i64 264, !8, i64 272, !8, i64 276}
!165 = !{!"gc_generation", !155, i64 0, !8, i64 16, !8, i64 20}
!166 = !{!"p1 _ZTS19_PyInterpreterFrame", !13, i64 0}
!167 = !{!"_import_state", !34, i64 0, !34, i64 8, !34, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !34, i64 40, !34, i64 48, !8, i64 56, !34, i64 64, !34, i64 72, !34, i64 80, !168, i64 88, !169, i64 112}
!168 = !{!"", !82, i64 0, !126, i64 8, !16, i64 16}
!169 = !{!"", !8, i64 0, !16, i64 8, !8, i64 16}
!170 = !{!"_gil_runtime_state", !16, i64 0, !80, i64 8, !8, i64 16, !16, i64 24, !9, i64 32, !9, i64 80, !9, i64 120, !9, i64 168}
!171 = !{!"codecs_state", !34, i64 0, !34, i64 8, !34, i64 16, !8, i64 24}
!172 = !{!"PyConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !16, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !173, i64 64, !8, i64 72, !8, i64 76, !173, i64 80, !173, i64 88, !173, i64 96, !8, i64 104, !103, i64 112, !103, i64 128, !103, i64 144, !103, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !173, i64 232, !173, i64 240, !173, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !173, i64 288, !173, i64 296, !173, i64 304, !173, i64 312, !8, i64 320, !103, i64 328, !173, i64 344, !173, i64 352, !173, i64 360, !173, i64 368, !173, i64 376, !173, i64 384, !173, i64 392, !8, i64 400, !173, i64 408, !173, i64 416, !173, i64 424, !173, i64 432, !8, i64 440, !8, i64 444, !8, i64 448}
!173 = !{!"p1 int", !13, i64 0}
!174 = !{!"", !84, i64 0, !175, i64 24}
!175 = !{!"xi_exceptions", !34, i64 0, !34, i64 8, !34, i64 16}
!176 = !{!"_warnings_runtime_state", !34, i64 0, !34, i64 8, !34, i64 16, !168, i64 24, !16, i64 48, !34, i64 56}
!177 = !{!"atexit_state", !178, i64 0, !34, i64 8}
!178 = !{!"p1 _ZTS15atexit_callback", !13, i64 0}
!179 = !{!"_qsbr_shared", !16, i64 0, !16, i64 8, !180, i64 16, !13, i64 24, !16, i64 32, !82, i64 40, !181, i64 48}
!180 = !{!"p1 _ZTS9_qsbr_pad", !13, i64 0}
!181 = !{!"p1 _ZTS18_qsbr_thread_state", !13, i64 0}
!182 = !{!"p1 _ZTS15_obmalloc_state", !13, i64 0}
!183 = !{!"_py_object_state", !184, i64 0, !8, i64 656}
!184 = !{!"_Py_freelists", !15, i64 0, !15, i64 16, !15, i64 32, !9, i64 48, !15, i64 368, !15, i64 384, !15, i64 400, !15, i64 416, !15, i64 432, !15, i64 448, !15, i64 464, !15, i64 480, !15, i64 496, !15, i64 512, !15, i64 528, !15, i64 544, !15, i64 560, !15, i64 576, !15, i64 592, !15, i64 608, !15, i64 624, !15, i64 640}
!185 = !{!"_Py_unicode_state", !186, i64 0, !13, i64 32, !187, i64 40}
!186 = !{!"_Py_unicode_fs_codec", !30, i64 0, !8, i64 8, !30, i64 16, !8, i64 24}
!187 = !{!"_Py_unicode_ids", !16, i64 0, !188, i64 8}
!188 = !{!"p2 _ZTS7_object", !105, i64 0}
!189 = !{!"_Py_long_state", !8, i64 0}
!190 = !{!"_dtoa_state", !9, i64 0, !9, i64 64, !9, i64 128, !191, i64 2432}
!191 = !{!"p1 double", !13, i64 0}
!192 = !{!"_py_func_state", !8, i64 0, !9, i64 8}
!193 = !{!"_py_code_state", !82, i64 0, !112, i64 8}
!194 = !{!"_Py_dict_state", !8, i64 0, !9, i64 8}
!195 = !{!"_Py_exc_state", !34, i64 0, !13, i64 8, !8, i64 16, !34, i64 24}
!196 = !{!"_Py_mem_interp_free_queue", !8, i64 0, !82, i64 4, !98, i64 8}
!197 = !{!"ast_state", !135, i64 0, !8, i64 4, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !34, i64 72, !34, i64 80, !34, i64 88, !34, i64 96, !34, i64 104, !34, i64 112, !34, i64 120, !34, i64 128, !34, i64 136, !34, i64 144, !34, i64 152, !34, i64 160, !34, i64 168, !34, i64 176, !34, i64 184, !34, i64 192, !34, i64 200, !34, i64 208, !34, i64 216, !34, i64 224, !34, i64 232, !34, i64 240, !34, i64 248, !34, i64 256, !34, i64 264, !34, i64 272, !34, i64 280, !34, i64 288, !34, i64 296, !34, i64 304, !34, i64 312, !34, i64 320, !34, i64 328, !34, i64 336, !34, i64 344, !34, i64 352, !34, i64 360, !34, i64 368, !34, i64 376, !34, i64 384, !34, i64 392, !34, i64 400, !34, i64 408, !34, i64 416, !34, i64 424, !34, i64 432, !34, i64 440, !34, i64 448, !34, i64 456, !34, i64 464, !34, i64 472, !34, i64 480, !34, i64 488, !34, i64 496, !34, i64 504, !34, i64 512, !34, i64 520, !34, i64 528, !34, i64 536, !34, i64 544, !34, i64 552, !34, i64 560, !34, i64 568, !34, i64 576, !34, i64 584, !34, i64 592, !34, i64 600, !34, i64 608, !34, i64 616, !34, i64 624, !34, i64 632, !34, i64 640, !34, i64 648, !34, i64 656, !34, i64 664, !34, i64 672, !34, i64 680, !34, i64 688, !34, i64 696, !34, i64 704, !34, i64 712, !34, i64 720, !34, i64 728, !34, i64 736, !34, i64 744, !34, i64 752, !34, i64 760, !34, i64 768, !34, i64 776, !34, i64 784, !34, i64 792, !34, i64 800, !34, i64 808, !34, i64 816, !34, i64 824, !34, i64 832, !34, i64 840, !34, i64 848, !34, i64 856, !34, i64 864, !34, i64 872, !34, i64 880, !34, i64 888, !34, i64 896, !34, i64 904, !34, i64 912, !34, i64 920, !34, i64 928, !34, i64 936, !34, i64 944, !34, i64 952, !34, i64 960, !34, i64 968, !34, i64 976, !34, i64 984, !34, i64 992, !34, i64 1000, !34, i64 1008, !34, i64 1016, !34, i64 1024, !34, i64 1032, !34, i64 1040, !34, i64 1048, !34, i64 1056, !34, i64 1064, !34, i64 1072, !34, i64 1080, !34, i64 1088, !34, i64 1096, !34, i64 1104, !34, i64 1112, !34, i64 1120, !34, i64 1128, !34, i64 1136, !34, i64 1144, !34, i64 1152, !34, i64 1160, !34, i64 1168, !34, i64 1176, !34, i64 1184, !34, i64 1192, !34, i64 1200, !34, i64 1208, !34, i64 1216, !34, i64 1224, !34, i64 1232, !34, i64 1240, !34, i64 1248, !34, i64 1256, !34, i64 1264, !34, i64 1272, !34, i64 1280, !34, i64 1288, !34, i64 1296, !34, i64 1304, !34, i64 1312, !34, i64 1320, !34, i64 1328, !34, i64 1336, !34, i64 1344, !34, i64 1352, !34, i64 1360, !34, i64 1368, !34, i64 1376, !34, i64 1384, !34, i64 1392, !34, i64 1400, !34, i64 1408, !34, i64 1416, !34, i64 1424, !34, i64 1432, !34, i64 1440, !34, i64 1448, !34, i64 1456, !34, i64 1464, !34, i64 1472, !34, i64 1480, !34, i64 1488, !34, i64 1496, !34, i64 1504, !34, i64 1512, !34, i64 1520, !34, i64 1528, !34, i64 1536, !34, i64 1544, !34, i64 1552, !34, i64 1560, !34, i64 1568, !34, i64 1576, !34, i64 1584, !34, i64 1592, !34, i64 1600, !34, i64 1608, !34, i64 1616, !34, i64 1624, !34, i64 1632, !34, i64 1640, !34, i64 1648, !34, i64 1656, !34, i64 1664, !34, i64 1672, !34, i64 1680, !34, i64 1688, !34, i64 1696, !34, i64 1704, !34, i64 1712, !34, i64 1720, !34, i64 1728, !34, i64 1736, !34, i64 1744, !34, i64 1752, !34, i64 1760, !34, i64 1768, !34, i64 1776, !34, i64 1784, !34, i64 1792, !34, i64 1800, !34, i64 1808, !34, i64 1816, !34, i64 1824, !34, i64 1832, !34, i64 1840, !34, i64 1848, !34, i64 1856, !34, i64 1864, !34, i64 1872, !34, i64 1880, !34, i64 1888, !34, i64 1896, !34, i64 1904, !34, i64 1912, !34, i64 1920, !34, i64 1928, !34, i64 1936, !34, i64 1944, !34, i64 1952, !34, i64 1960, !34, i64 1968, !34, i64 1976}
!198 = !{!"types_state", !8, i64 0, !199, i64 8, !200, i64 98312, !201, i64 108016, !82, i64 108512, !9, i64 108520}
!199 = !{!"type_cache", !9, i64 0}
!200 = !{!"", !16, i64 0, !9, i64 8}
!201 = !{!"", !16, i64 0, !16, i64 8, !9, i64 16}
!202 = !{!"callable_cache", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24}
!203 = !{!"_PyOptimizationConfig", !35, i64 0, !35, i64 2, !35, i64 4, !35, i64 6, !134, i64 8, !134, i64 9}
!204 = !{!"p1 _ZTS17_PyExecutorObject", !13, i64 0}
!205 = !{!"_rare_events", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4}
!206 = !{!"_Py_GlobalMonitors", !9, i64 0}
!207 = !{!"_Py_interp_cached_objects", !34, i64 0, !34, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !34, i64 72, !34, i64 80}
!208 = !{!"_Py_interp_static_objects", !209, i64 0}
!209 = !{!"", !8, i64 0, !155, i64 8, !210, i64 24, !211, i64 64}
!210 = !{!"", !21, i64 0, !13, i64 16, !34, i64 24, !16, i64 32}
!211 = !{!"", !21, i64 0, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !9, i64 64}
!212 = !{!"_PyThreadStateImpl", !213, i64 0, !220, i64 848, !16, i64 936, !16, i64 944, !16, i64 952, !16, i64 960, !16, i64 968, !16, i64 976, !34, i64 984, !34, i64 992, !8, i64 1000, !98, i64 1008, !181, i64 1024, !98, i64 1032}
!213 = !{!"_ts", !80, i64 0, !80, i64 8, !12, i64 16, !16, i64 24, !214, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !166, i64 72, !166, i64 80, !166, i64 88, !13, i64 96, !13, i64 104, !34, i64 112, !34, i64 120, !34, i64 128, !215, i64 136, !34, i64 144, !8, i64 152, !34, i64 160, !16, i64 168, !16, i64 176, !34, i64 184, !16, i64 192, !8, i64 200, !34, i64 208, !34, i64 216, !34, i64 224, !16, i64 232, !16, i64 240, !216, i64 248, !188, i64 256, !188, i64 264, !217, i64 272, !34, i64 288, !218, i64 296, !16, i64 304, !34, i64 312, !34, i64 320, !219, i64 328}
!214 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!215 = !{!"p1 _ZTS14_err_stackitem", !13, i64 0}
!216 = !{!"p1 _ZTS12_stack_chunk", !13, i64 0}
!217 = !{!"_err_stackitem", !34, i64 0, !215, i64 8}
!218 = !{!"p1 _ZTS11_PyExitData", !13, i64 0}
!219 = !{!"", !8, i64 0, !9, i64 4}
!220 = !{!"_PyInterpreterFrame", !9, i64 0, !166, i64 8, !9, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !221, i64 48, !13, i64 56, !222, i64 64, !35, i64 72, !9, i64 74, !9, i64 75, !9, i64 80}
!221 = !{!"p1 _ZTS6_frame", !13, i64 0}
!222 = !{!"p1 _ZTS11_PyStackRef", !13, i64 0}
!223 = !{!58, !8, i64 10692}
!224 = !{!225, !30, i64 8}
!225 = !{!"", !8, i64 0, !30, i64 8, !30, i64 16, !8, i64 24}
!226 = !{!225, !30, i64 16}
!227 = !{!225, !8, i64 24}
!228 = !{!225, !8, i64 0}
!229 = !{!184, !16, i64 8}
!230 = !{!52, !13, i64 40}
!231 = distinct !{null}
!232 = distinct !{null, ptr @PyFloat_FromDouble}
!233 = distinct !{null, ptr @float_float, ptr @PyFloat_FromDouble}
!234 = distinct !{null}
!235 = distinct !{null, ptr @PyFloat_FromDouble}
!236 = distinct !{null, null}
!237 = distinct !{null, null, ptr @PyFloat_FromDouble}
end_hunk_4
