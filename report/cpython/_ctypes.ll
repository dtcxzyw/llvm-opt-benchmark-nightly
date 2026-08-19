inline.NumInlined: 552
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@PyType_GetModule
declare ptr @PyType_GetModule(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #10

declare ptr @PyCArgObject_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @UnionType_setattro(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr i8, ptr %.val.i, i64 168
  %.val9.i = load i64, ptr %i.b, align 8, !tbaa !17
  %i.c = and i64 %.val9.i, 268435456
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %1, ptr noundef nonnull @.str.60) #17
  %.not8.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @PyCStructUnionType_update_stginfo(ptr noundef %0, ptr noundef %2, i32 noundef 0) #17
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %_structunion_setattro.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyType_Type, i64 152), align 8, !tbaa !136
  %i.h = tail call i32 %i.g(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #17, !inline_history !137
  br label %_structunion_setattro.exit

_structunion_setattro.exit:                       ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.h, %bb.d ], [ -1, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal i32 @UnionType_init(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @StructUnionType_init(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @PyCPointerType_init(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call ptr @PyTuple_GetItem(ptr noundef %1, i64 noundef 2) #17 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit22, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.d = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @_ctypesmodule) #17, !inline_history !101
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !72 ; 2 uses
  %i.f = getelementptr i8, ptr %.val.i, i64 40    ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = tail call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.g) #17
  %.not.i24 = icmp eq i32 %i.h, 0
  br i1 %.not.i24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !32
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.88, ptr noundef %i.k) #17 ; 0 uses
  br label %Py_DECREF.exit22

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.n = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %0, ptr noundef %i.m) #17 ; 11 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42
  %.not16.i = icmp eq i32 %i.o, 0
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !32
  %i.q = getelementptr i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.89, ptr noundef %i.r) #17 ; 0 uses
  br label %Py_DECREF.exit22

bb.f:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.u = tail call ptr @PyType_GetModule(ptr noundef %i.t) #17 ; 4 uses
  %.not17.i = icmp eq ptr %i.u, null
  br i1 %.not17.i, label %Py_DECREF.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.n, i64 120
  store ptr null, ptr %i.v, align 8, !tbaa !96
  %i.w = load i32, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %i.x = icmp ugt i32 %i.w, -1073741825
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw i32 %i.w, 1
  store i32 %i.y, ptr %i.u, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr i8, ptr %i.n, i64 128
  store ptr %i.u, ptr %i.z, align 8, !tbaa !97
  store i32 1, ptr %i.n, align 8, !tbaa !42
  %i.aa = getelementptr i8, ptr %i.n, i64 8
  store i64 8, ptr %i.aa, align 8, !tbaa !49
  %i.ab = tail call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.107) #17
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !172
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !174
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.n, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !175
  %i.ai = getelementptr i8, ptr %i.n, i64 24
  store i64 1, ptr %i.ai, align 8, !tbaa !45
  %i.aj = getelementptr i8, ptr %i.n, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) @ffi_type_pointer, i64 24, i1 false), !tbaa.struct !176
  %i.ak = getelementptr i8, ptr %i.n, i64 80
  store ptr @PyCPointerType_paramfunc, ptr %i.ak, align 8, !tbaa !165
  %i.al = getelementptr i8, ptr %i.n, i64 136     ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !135
  %i.an = or i32 %i.am, 256
  store i32 %i.an, ptr %i.al, align 8, !tbaa !135
  %i.ao = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 73768), ptr noundef nonnull %i.a) #17
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %Py_DECREF.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %.not20 = icmp eq ptr %i.aq, null
  br i1 %.not20, label %Py_DECREF.exit22, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = call fastcc i32 @PyCPointerType_SetProto(ptr noundef nonnull %.val.i, ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull %i.aq)
  %i.as = icmp slt i32 %i.ar, 0
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !32  ; 5 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !28 ; 3 uses
  %.not.i21 = icmp sgt i32 %i.au, -1              ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %.not.i21, label %bb.m, label %Py_DECREF.exit22

bb.m:                                             ; preds = %bb.l
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.at, align 8, !tbaa !28
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.n, label %Py_DECREF.exit22

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.at) #17
  br label %Py_DECREF.exit22

bb.o:                                             ; preds = %bb.k
  br i1 %.not.i21, label %bb.p, label %Py_DECREF.exit22

bb.p:                                             ; preds = %bb.o
  %i.ax = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.at, align 8, !tbaa !28
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.q, label %Py_DECREF.exit22

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.at) #17
  br label %Py_DECREF.exit22

Py_DECREF.exit22:                                 ; preds = %bb.f, %bb.e, %bb.c, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.j, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ 0, %bb.q ], [ 0, %bb.j ], [ -1, %bb.i ], [ -1, %bb.n ], [ -1, %bb.l ], [ -1, %bb.m ], [ 0, %bb.o ], [ 0, %bb.p ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @PyCPointerType_from_param(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @PyCPointerType_from_param._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #17 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %PyCPointerType_from_param_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 16 uses
  %i.h = icmp eq ptr %i.g, @_Py_NoneStruct
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.thread
  %i.i = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !28 ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %PyCPointerType_from_param_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr @_Py_NoneStruct, align 8, !tbaa !28
  br label %PyCPointerType_from_param_impl.exit

bb.e:                                             ; preds = %.thread
  %i.l = getelementptr i8, ptr %1, i64 888
  %.val34.i = load ptr, ptr %i.l, align 8, !tbaa !103
  %i.m = getelementptr i8, ptr %.val34.i, i64 24
  %.val34.val.i = load ptr, ptr %i.m, align 8, !tbaa !72 ; 5 uses
  %i.n = getelementptr i8, ptr %.val34.val.i, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.o) #17
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.r = call ptr @PyObject_GetTypeData(ptr noundef %0, ptr noundef %i.q) #17 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !42
  %.not8.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not8.i.i.i, label %bb.g, label %PyStgInfo_FromType.exit.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.1) #17
  br label %PyCPointerType_from_param_impl.exit

PyStgInfo_FromType.exit.i:                        ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.r, i64 56       ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %PyStgInfo_FromType.exit.i
  %i.x = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.100) #17
  br label %PyCPointerType_from_param_impl.exit

bb.i:                                             ; preds = %PyStgInfo_FromType.exit.i
  %i.y = call i32 @PyObject_IsInstance(ptr noundef %i.g, ptr noundef nonnull %i.v) #17
  switch i32 %i.y, label %bb.q [
    i32 1, label %bb.j
    i32 -1, label %PyCPointerType_from_param_impl.exit
  ]

bb.j:                                             ; preds = %bb.i
  %i.z = load i32, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.aa = icmp ugt i32 %i.z, -1073741825
  br i1 %i.aa, label %Py_INCREF.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr %i.g, align 8, !tbaa !28
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.k, %bb.j
  %i.ac = getelementptr i8, ptr %.val34.val.i, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.g, i64 8
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !15 ; 2 uses
  %.not.i14.i.i = icmp eq ptr %.val.i.i, %i.ad
  br i1 %.not.i14.i.i, label %PyObject_TypeCheck.exit.thread.i.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %Py_INCREF.exit.i
  %i.af = call i32 @PyType_IsSubtype(ptr noundef %.val.i.i, ptr noundef %i.ad) #17
  %.not16.i.i = icmp eq i32 %i.af, 0
  br i1 %.not16.i.i, label %bb.l, label %PyObject_TypeCheck.exit.thread.i.i

bb.l:                                             ; preds = %PyObject_TypeCheck.exit.i.i
  %i.ag = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str.101) #17
  br label %PyCPointerType_from_param_impl.exit

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %Py_INCREF.exit.i
  %i.ah = call ptr @PyCArgObject_new(ptr noundef nonnull %.val34.val.i) #17 ; 6 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %bb.p

bb.m:                                             ; preds = %PyObject_TypeCheck.exit.thread.i.i
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !28  ; 2 uses
  %.not.i.i35.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i.i35.i, label %bb.n, label %PyCPointerType_from_param_impl.exit

bb.n:                                             ; preds = %bb.m
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.g, align 8, !tbaa !28
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.o, label %PyCPointerType_from_param_impl.exit

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #17
  br label %PyCPointerType_from_param_impl.exit

bb.p:                                             ; preds = %PyObject_TypeCheck.exit.thread.i.i
  %i.am = getelementptr i8, ptr %i.ah, i64 24
  store i8 80, ptr %i.am, align 8, !tbaa !169
  %i.an = getelementptr i8, ptr %i.ah, i64 16
  store ptr @ffi_type_pointer, ptr %i.an, align 16, !tbaa !170
  %i.ao = getelementptr i8, ptr %i.ah, i64 64
  store ptr %i.g, ptr %i.ao, align 16, !tbaa !143
  %i.ap = getelementptr i8, ptr %i.g, i64 16
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !51
  %i.ar = getelementptr i8, ptr %i.ah, i64 32
  store ptr %i.aq, ptr %i.ar, align 16, !tbaa !28
  br label %PyCPointerType_from_param_impl.exit

bb.q:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %.val34.val.i, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !88 ; 2 uses
  %i.au = getelementptr i8, ptr %i.g, i64 8       ; 3 uses
  %.val32.i = load ptr, ptr %i.au, align 8, !tbaa !15 ; 3 uses
  %.not.i.i = icmp eq ptr %.val32.i, %i.at
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.q
  %i.av = call i32 @PyType_IsSubtype(ptr noundef %.val32.i, ptr noundef %i.at) #17
  %.not.i = icmp eq i32 %i.av, 0
  %.val33.pre52.i = load ptr, ptr %i.au, align 8, !tbaa !15 ; 4 uses
  br i1 %.not.i, label %bb.r, label %PyObject_TypeCheck.exit.thread.i

bb.r:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.aw = getelementptr i8, ptr %.val34.val.i, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !67 ; 2 uses
  %.not.i36.i = icmp eq ptr %.val33.pre52.i, %i.ax
  br i1 %.not.i36.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit37.i

PyObject_TypeCheck.exit37.i:                      ; preds = %bb.r
  %i.ay = call i32 @PyType_IsSubtype(ptr noundef %.val33.pre52.i, ptr noundef %i.ax) #17
  %.not51.i = icmp eq i32 %i.ay, 0
  br i1 %.not51.i, label %_Py_NewRef.exit41.i, label %PyObject_TypeCheck.exit37.PyObject_TypeCheck.exit.thread_crit_edge.i

PyObject_TypeCheck.exit37.PyObject_TypeCheck.exit.thread_crit_edge.i: ; preds = %PyObject_TypeCheck.exit37.i
  %.val33.pre.i = load ptr, ptr %i.au, align 8, !tbaa !15
  br label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit37.PyObject_TypeCheck.exit.thread_crit_edge.i, %bb.r, %PyObject_TypeCheck.exit.i, %bb.q
  %.val33.i = phi ptr [ %.val33.pre.i, %PyObject_TypeCheck.exit37.PyObject_TypeCheck.exit.thread_crit_edge.i ], [ %.val33.pre52.i, %bb.r ], [ %.val32.i, %bb.q ], [ %.val33.pre52.i, %PyObject_TypeCheck.exit.i ] ; 2 uses
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.ba = call i32 @PyObject_IsInstance(ptr noundef %.val33.i, ptr noundef %i.az) #17 ; 0 uses
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.bc = call ptr @PyObject_GetTypeData(ptr noundef %.val33.i, ptr noundef %i.bb) #17
  %i.bd = getelementptr i8, ptr %i.bc, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !68
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.bg = call i32 @PyObject_IsSubclass(ptr noundef %i.be, ptr noundef %i.bf) #17 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %PyCPointerType_from_param_impl.exit, label %bb.s

bb.s:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %.not31.i = icmp eq i32 %i.bg, 0
  br i1 %.not31.i, label %_Py_NewRef.exit41.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !28  ; 2 uses
  %i.bj = icmp ugt i32 %i.bi, -1073741825
  br i1 %i.bj, label %PyCPointerType_from_param_impl.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = add nuw i32 %i.bi, 1
  store i32 %i.bk, ptr %i.g, align 8, !tbaa !28
  br label %PyCPointerType_from_param_impl.exit

_Py_NewRef.exit41.i:                              ; preds = %bb.s, %PyObject_TypeCheck.exit37.i
  %i.bl = call fastcc ptr @CDataType_from_param_impl(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef %i.g)
  br label %PyCPointerType_from_param_impl.exit

PyCPointerType_from_param_impl.exit:              ; preds = %_Py_NewRef.exit41.i, %bb.u, %bb.t, %PyObject_TypeCheck.exit.thread.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.c ], [ null, %bb.g ], [ null, %bb.h ], [ %i.bl, %_Py_NewRef.exit41.i ], [ null, %bb.o ], [ null, %bb.i ], [ null, %bb.l ], [ %i.ah, %bb.p ], [ null, %bb.m ], [ null, %bb.n ], [ %i.g, %bb.u ], [ %i.g, %bb.t ], [ null, %PyObject_TypeCheck.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @PyCPointerType_set_type(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @PyCPointerType_set_type._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #17 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %PyCPointerType_set_type_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.h, align 8, !tbaa !103
  %i.i = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !72 ; 2 uses
  %i.j = getelementptr i8, ptr %.val.val, i64 40  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.k) #17
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

end_hunk_0
