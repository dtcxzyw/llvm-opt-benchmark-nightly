Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_ctypes?download=true
inline.NumInlined: 552
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@CDataType_in_dll:bb.a
  br label %CDataType_in_dll_impl.exit

bb.m:                                             ; preds = %bb.i
  %i.ac = call ptr @PyLong_AsVoidPtr(ptr noundef nonnull %i.u) #17, !inline_history !191
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !32  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i.i, label %bb.n, label %Py_DECREF.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.u, align 8, !tbaa !32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.o, label %Py_DECREF.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.u) #17, !inline_history !191
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.o, %bb.n, %bb.m
  %i.ag = call ptr @PyErr_Occurred() #17, !inline_history !191
  %.not22.i = icmp eq ptr %i.ag, null
  br i1 %.not22.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %Py_DECREF.exit.i
  %i.ah = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.86) #17, !inline_history !191
  br label %CDataType_in_dll_impl.exit

bb.q:                                             ; preds = %Py_DECREF.exit.i
  %i.ai = call ptr @dlerror() #17, !inline_history !191 ; 0 uses
  %i.aj = call ptr @dlsym(ptr noundef %i.ac, ptr noundef nonnull %i.n) #17, !inline_history !191 ; 3 uses
  %.not23.i = icmp eq ptr %i.aj, null
  br i1 %.not23.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.al = call ptr @PyType_GetModuleByDef(ptr noundef %.val.i, ptr noundef nonnull @_ctypesmodule) #17, !inline_history !192
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %.val.i.i = load ptr, ptr %i.am, align 8, !tbaa !76
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i64 noundef %i.an) #17, !inline_history !191
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %CDataType_in_dll_impl.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr i8, ptr %.val.i.i, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.as = call i32 @PyObject_IsInstance(ptr noundef nonnull %0, ptr noundef %i.ar) #17, !inline_history !191
  %.not.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.au = call ptr @PyObject_GetTypeData(ptr noundef nonnull %0, ptr noundef %i.at) #17, !inline_history !191 ; 4 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !46
  %.not8.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not8.i.i.i.i, label %bb.u, label %PyStgInfo_FromType.exit.i.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.aw = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.aw, ptr noundef nonnull @.str.1) #17, !inline_history !191
  br label %CDataType_in_dll_impl.exit

PyStgInfo_FromType.exit.i.i:                      ; preds = %bb.t
  %i.ax = getelementptr i8, ptr %i.au, i64 140    ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ax, align 4, !tbaa !47
  %i.ay = icmp eq i8 %.val.i.i.i, 1
  br i1 %i.ay, label %stginfo_set_dict_final.exit.i.i, label %bb.v

bb.v:                                             ; preds = %PyStgInfo_FromType.exit.i.i
  store i8 1, ptr %i.ax, align 4, !tbaa !47
  br label %stginfo_set_dict_final.exit.i.i

stginfo_set_dict_final.exit.i.i:                  ; preds = %bb.v, %PyStgInfo_FromType.exit.i.i
  %i.az = getelementptr i8, ptr %0, i64 304
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !48
  %i.bb = call ptr %i.ba(ptr noundef nonnull %0, i64 noundef 0) #17, !inline_history !193 ; 5 uses
  %.not14.i.i = icmp eq ptr %i.bb, null
  br i1 %.not14.i.i, label %CDataType_in_dll_impl.exit, label %bb.w

bb.w:                                             ; preds = %stginfo_set_dict_final.exit.i.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.aj, ptr %i.bc, align 16, !tbaa !55
  %i.bd = getelementptr i8, ptr %i.au, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !49
  %i.bf = getelementptr i8, ptr %i.bb, i64 48
  store i64 %i.be, ptr %i.bf, align 16, !tbaa !52
  %i.bg = getelementptr i8, ptr %i.au, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !53
  %i.bi = getelementptr i8, ptr %i.bb, i64 40
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !54
  br label %CDataType_in_dll_impl.exit

bb.x:                                             ; preds = %bb.q
  %i.bj = call ptr @dlerror() #17, !inline_history !191 ; 2 uses
  %.not24.i = icmp eq ptr %i.bj, null
  %i.bk = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !36 ; 2 uses
  br i1 %.not24.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_PyErr_SetLocaleString(ptr noundef %i.bk, ptr noundef nonnull %i.bj) #17, !inline_history !191
  br label %CDataType_in_dll_impl.exit

bb.z:                                             ; preds = %bb.x
  %i.bl = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bk, ptr noundef nonnull @.str.87, ptr noundef nonnull %i.n) #17, !inline_history !191 ; 0 uses
  br label %CDataType_in_dll_impl.exit

CDataType_in_dll_impl.exit:                       ; preds = %bb.z, %bb.y, %bb.w, %stginfo_set_dict_final.exit.i.i, %bb.u, %bb.r, %bb.p, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.d, %bb.b, %bb.f, %bb.c
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.p ], [ null, %bb.l ], [ null, %bb.h ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.r ], [ null, %bb.u ], [ %i.bb, %bb.w ], [ null, %stginfo_set_dict_final.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @CDataType_from_param_impl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call i32 @PyObject_IsInstance(ptr noundef %2, ptr noundef %0) #17
  switch i32 %i.b, label %bb.b [
    i32 -1, label %_Py_NewRef.exit
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %2, align 8, !tbaa !32
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 888
  %.val42 = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.g = getelementptr i8, ptr %.val42, i64 24
  %.val42.val = load ptr, ptr %i.g, align 8, !tbaa !76 ; 2 uses
  %i.h = getelementptr i8, ptr %.val42.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val41 = load ptr, ptr %i.j, align 8, !tbaa !21
  %.not = icmp eq ptr %.val41, %i.i
  br i1 %.not, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %2, i64 64
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !122 ; 4 uses
  %i.m = getelementptr i8, ptr %.val42.val, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.o = tail call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.n) #17
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %PyStgInfo_FromType.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.q = tail call ptr @PyObject_GetTypeData(ptr noundef %0, ptr noundef %i.p) #17 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !46
  %.not8.i.i = icmp eq i32 %i.r, 0
  br i1 %.not8.i.i, label %PyStgInfo_FromType.exit.thread, label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit.thread:                   ; preds = %bb.e, %bb.f
  %.not49 = icmp eq ptr %i.l, null
  br i1 %.not49, label %.critedge, label %bb.j

PyStgInfo_FromType.exit:                          ; preds = %bb.f
  %.not48 = icmp eq ptr %i.l, null
  br i1 %.not48, label %.critedge, label %bb.g

bb.g:                                             ; preds = %PyStgInfo_FromType.exit
  %i.s = getelementptr i8, ptr %i.q, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.u = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %i.l, ptr noundef %i.t) #17
  switch i32 %i.u, label %bb.h [
    i32 -1, label %_Py_NewRef.exit
    i32 0, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %2, align 16, !tbaa !32    ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %2, align 16, !tbaa !32
  br label %_Py_NewRef.exit

bb.j:                                             ; preds = %bb.g, %PyStgInfo_FromType.exit.thread
  %i.y = getelementptr i8, ptr %i.l, i64 8
  %.val40 = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr i8, ptr %.val40, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !66
  br label %.critedge

.critedge:                                        ; preds = %PyStgInfo_FromType.exit, %PyStgInfo_FromType.exit.thread, %bb.j
  %i.ab = phi ptr [ %i.aa, %bb.j ], [ @.str.68, %PyStgInfo_FromType.exit.thread ], [ @.str.68, %PyStgInfo_FromType.exit ]
  %i.ac = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  %i.ad = getelementptr i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66
  %i.af = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ac, ptr noundef nonnull @.str.69, ptr noundef %i.ae, ptr noundef %i.ab) #17 ; 0 uses
  br label %_Py_NewRef.exit

bb.k:                                             ; preds = %bb.d
  %i.ag = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71744), ptr noundef nonnull %i.a) #17
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %_Py_NewRef.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !36
  %.not34 = icmp eq ptr %i.ai, null
  br i1 %.not34, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = call ptr @_PyThreadState_GetCurrent() #17 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 952
  %.val.i.i = load i64, ptr %i.ak, align 8, !tbaa !141 ; 2 uses
  %i.al = call ptr @llvm.frameaddress.p0(i32 0)
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = icmp ule i64 %.val.i.i, %i.am
  %i.ao = add i64 %.val.i.i, -32768
  %i.ap = icmp ugt i64 %i.ao, %i.am
  %narrow.i.not.i.i = or i1 %i.an, %i.ap
  br i1 %narrow.i.not.i.i, label %_Py_EnterRecursiveCall.exit.thread, label %_Py_EnterRecursiveCall.exit

_Py_EnterRecursiveCall.exit:                      ; preds = %bb.m
  %i.aq = call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.70) #17
  %.not50 = icmp eq i32 %i.aq, 0
  br i1 %.not50, label %_Py_EnterRecursiveCall.exit.thread, label %bb.n

bb.n:                                             ; preds = %_Py_EnterRecursiveCall.exit
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !32 ; 2 uses
  %.not.i37 = icmp sgt i32 %i.as, -1
  br i1 %.not.i37, label %bb.o, label %_Py_NewRef.exit

bb.o:                                             ; preds = %bb.n
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.p, label %_Py_NewRef.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ar) #17
  br label %_Py_NewRef.exit

_Py_EnterRecursiveCall.exit.thread:               ; preds = %bb.m, %_Py_EnterRecursiveCall.exit
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.aw = call fastcc ptr @CDataType_from_param_impl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.av) ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i, label %bb.q, label %_Py_NewRef.exit

bb.q:                                             ; preds = %_Py_EnterRecursiveCall.exit.thread
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.r, label %_Py_NewRef.exit

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.ax) #17
  br label %_Py_NewRef.exit

bb.s:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  %i.bc = getelementptr i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !66
  %.val = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.be = getelementptr i8, ptr %.val, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !66
  %i.bg = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bb, ptr noundef nonnull @.str.71, ptr noundef %i.bd, ptr noundef %i.bf) #17 ; 0 uses
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.r, %bb.q, %_Py_EnterRecursiveCall.exit.thread, %bb.p, %bb.o, %bb.n, %.critedge, %bb.g, %bb.h, %bb.i, %bb.c, %bb.b, %bb.s, %bb.k, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.k ], [ %2, %bb.c ], [ null, %bb.s ], [ %2, %bb.i ], [ null, %bb.p ], [ %2, %bb.b ], [ null, %.critedge ], [ null, %bb.g ], [ %2, %bb.h ], [ null, %bb.n ], [ null, %bb.o ], [ %i.aw, %_Py_EnterRecursiveCall.exit.thread ], [ %i.aw, %bb.q ], [ %i.aw, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.2
}

declare i32 @PyObject_GetOptionalAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_Py_EnterRecursiveCall() unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @_PyThreadState_GetCurrent() #17 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 952
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !141 ; 2 uses
  %i.c = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = icmp ule i64 %.val.i, %i.d
  %i.f = add i64 %.val.i, -32768
  %i.g = icmp ugt i64 %i.f, %i.d
  %narrow.i.not.i = or i1 %i.e, %i.g
  br i1 %narrow.i.not.i, label %_Py_EnterRecursiveCallTstate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.70) #17
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  br label %_Py_EnterRecursiveCallTstate.exit

_Py_EnterRecursiveCallTstate.exit:                ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ 0, %bb.a ], [ %i.j, %bb.b ]
  ret i32 %i.k
}

declare i32 @_Py_CheckRecursiveCall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

declare ptr @PyLong_AsVoidPtr(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #2

declare ptr @PyMemoryView_FromObject(ptr noundef) local_unnamed_addr #2

declare i32 @PyBuffer_IsContiguous(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @generic_pycdata_new(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = tail call i32 @PyObject_IsInstance(ptr noundef %1, ptr noundef %i.b) #17
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.e = tail call ptr @PyObject_GetTypeData(ptr noundef %1, ptr noundef %i.d) #17 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46
  %.not8.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i, label %bb.c, label %PyStgInfo_FromType.exit

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.1) #17
  br label %Py_DECREF.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.e, i64 140      ; 2 uses
  %.val.i = load i8, ptr %i.h, align 4, !tbaa !47
  %i.i = icmp eq i8 %.val.i, 1
  br i1 %i.i, label %stginfo_set_dict_final.exit, label %bb.d

bb.d:                                             ; preds = %PyStgInfo_FromType.exit
  store i8 1, ptr %i.h, align 4, !tbaa !47
  br label %stginfo_set_dict_final.exit

stginfo_set_dict_final.exit:                      ; preds = %PyStgInfo_FromType.exit, %bb.d
  %i.j = getelementptr i8, ptr %1, i64 304
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = tail call ptr %i.k(ptr noundef %1, i64 noundef 0) #17 ; 13 uses
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %stginfo_set_dict_final.exit
  %i.m = getelementptr i8, ptr %i.l, i64 32
  store ptr null, ptr %i.m, align 16, !tbaa !57
  %i.n = getelementptr i8, ptr %i.l, i64 56
  %i.o = getelementptr i8, ptr %i.e, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %i.q = getelementptr i8, ptr %i.l, i64 48
  store i64 %i.p, ptr %i.q, align 16, !tbaa !52
  %i.r = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !53   ; 3 uses
  %i.t = icmp ult i64 %i.s, 17
  %i.u = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.l, i64 80
  store ptr %i.v, ptr %i.u, align 16, !tbaa !55
  %i.w = getelementptr i8, ptr %i.l, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !56
  br label %PyCData_MallocBuffer.exit

bb.g:                                             ; preds = %bb.e
  %i.x = tail call ptr @PyMem_Malloc(i64 noundef %i.s) #17 ; 3 uses
  store ptr %i.x, ptr %i.u, align 16, !tbaa !55
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.l, i64 24
  store i32 1, ptr %i.z, align 8, !tbaa !56
end_hunk_0
begin_hunk_1_@PyCFuncPtr_call:bb.a
  %i.p = getelementptr i8, ptr %.0168, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94   ; 4 uses
  %.not.i.i116 = icmp eq ptr %i.q, null
  br i1 %.not.i.i116, label %_Py_XNewRef.exit, label %bb.d

bb.d:                                             ; preds = %atomic_xgetref.exit
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_Py_XNewRef.exit, label %_Py_XNewRef.exit.sink.split

_Py_XNewRef.exit.sink.split:                      ; preds = %bb.d, %bb.c
  %.sink307 = phi i32 [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  %.val114.sink = phi ptr [ %.val114, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %i.t = add nuw i32 %.sink307, 1
  store i32 %i.t, ptr %.val114.sink, align 8, !tbaa !32
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %_Py_XNewRef.exit.sink.split, %bb.c, %bb.d, %atomic_xgetref.exit
  %.072 = phi ptr [ %.val114, %bb.c ], [ null, %atomic_xgetref.exit ], [ %i.q, %bb.d ], [ %.val114.sink, %_Py_XNewRef.exit.sink.split ] ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 112
  %.val113 = load ptr, ptr %i.u, align 8, !tbaa !36 ; 4 uses
  %.not.i.i.i117 = icmp eq ptr %.val113, null
  br i1 %.not.i.i.i117, label %atomic_xgetref.exit118, label %bb.e

bb.e:                                             ; preds = %_Py_XNewRef.exit
  %i.v = load i32, ptr %.val113, align 8, !tbaa !32 ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %_Py_XNewRef.exit120, label %_Py_XNewRef.exit120.sink.split

atomic_xgetref.exit118:                           ; preds = %_Py_XNewRef.exit
  %i.x = getelementptr i8, ptr %.0168, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !93   ; 4 uses
  %.not.i.i119 = icmp eq ptr %i.y, null
  br i1 %.not.i.i119, label %_Py_XNewRef.exit120, label %bb.f

bb.f:                                             ; preds = %atomic_xgetref.exit118
  %i.z = load i32, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %i.aa = icmp ugt i32 %i.z, -1073741825
  br i1 %i.aa, label %_Py_XNewRef.exit120, label %_Py_XNewRef.exit120.sink.split

_Py_XNewRef.exit120.sink.split:                   ; preds = %bb.f, %bb.e
  %.sink308 = phi i32 [ %i.v, %bb.e ], [ %i.z, %bb.f ]
  %.val113.sink = phi ptr [ %.val113, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  %i.ab = add nuw i32 %.sink308, 1
  store i32 %i.ab, ptr %.val113.sink, align 8, !tbaa !32
  br label %_Py_XNewRef.exit120

_Py_XNewRef.exit120:                              ; preds = %_Py_XNewRef.exit120.sink.split, %bb.e, %bb.f, %atomic_xgetref.exit118
  %.071 = phi ptr [ %.val113, %bb.e ], [ null, %atomic_xgetref.exit118 ], [ %i.y, %bb.f ], [ %.val113.sink, %_Py_XNewRef.exit120.sink.split ] ; 7 uses
  %i.ac = getelementptr i8, ptr %0, i64 136
  %.val112 = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 4 uses
  %.not.i.i.i121 = icmp eq ptr %.val112, null
  br i1 %.not.i.i.i121, label %atomic_xgetref.exit122, label %bb.g

bb.g:                                             ; preds = %_Py_XNewRef.exit120
  %i.ad = load i32, ptr %.val112, align 8, !tbaa !32 ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, -1073741825
  br i1 %i.ae, label %_Py_XNewRef.exit124, label %_Py_XNewRef.exit124.sink.split

atomic_xgetref.exit122:                           ; preds = %_Py_XNewRef.exit120
  %i.af = getelementptr i8, ptr %.0168, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !95 ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i123, label %_Py_XNewRef.exit124, label %bb.h

bb.h:                                             ; preds = %atomic_xgetref.exit122
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, -1073741825
  br i1 %i.ai, label %_Py_XNewRef.exit124, label %_Py_XNewRef.exit124.sink.split

_Py_XNewRef.exit124.sink.split:                   ; preds = %bb.h, %bb.g
  %.sink309 = phi i32 [ %i.ad, %bb.g ], [ %i.ah, %bb.h ]
  %.val112.sink = phi ptr [ %.val112, %bb.g ], [ %i.ag, %bb.h ] ; 2 uses
  %i.aj = add nuw i32 %.sink309, 1
  store i32 %i.aj, ptr %.val112.sink, align 8, !tbaa !32
  br label %_Py_XNewRef.exit124

_Py_XNewRef.exit124:                              ; preds = %_Py_XNewRef.exit124.sink.split, %bb.g, %bb.h, %atomic_xgetref.exit122
  %.070 = phi ptr [ %.val112, %bb.g ], [ null, %atomic_xgetref.exit122 ], [ %i.ag, %bb.h ], [ %.val112.sink, %_Py_XNewRef.exit124.sink.split ] ; 5 uses
  %i.ak = getelementptr i8, ptr %0, i64 120
  %.val111 = load ptr, ptr %i.ak, align 8, !tbaa !36 ; 4 uses
  %.not.i.i.i125 = icmp eq ptr %.val111, null
  br i1 %.not.i.i.i125, label %atomic_xgetref.exit126, label %bb.i

bb.i:                                             ; preds = %_Py_XNewRef.exit124
  %i.al = load i32, ptr %.val111, align 8, !tbaa !32 ; 2 uses
  %i.am = icmp ugt i32 %i.al, -1073741825
  br i1 %i.am, label %_Py_XNewRef.exit128, label %_Py_XNewRef.exit128.sink.split

atomic_xgetref.exit126:                           ; preds = %_Py_XNewRef.exit124
  %i.an = getelementptr i8, ptr %.0168, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !92 ; 4 uses
  %.not.i.i127 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i127, label %_Py_XNewRef.exit128, label %bb.j

bb.j:                                             ; preds = %atomic_xgetref.exit126
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !32 ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, -1073741825
  br i1 %i.aq, label %_Py_XNewRef.exit128, label %_Py_XNewRef.exit128.sink.split

_Py_XNewRef.exit128.sink.split:                   ; preds = %bb.j, %bb.i
  %.sink310 = phi i32 [ %i.al, %bb.i ], [ %i.ap, %bb.j ]
  %.val111.sink = phi ptr [ %.val111, %bb.i ], [ %i.ao, %bb.j ] ; 2 uses
  %i.ar = add nuw i32 %.sink310, 1
  store i32 %i.ar, ptr %.val111.sink, align 8, !tbaa !32
  br label %_Py_XNewRef.exit128

_Py_XNewRef.exit128:                              ; preds = %_Py_XNewRef.exit128.sink.split, %bb.i, %bb.j, %atomic_xgetref.exit126
  %.0 = phi ptr [ %.val111, %bb.i ], [ null, %atomic_xgetref.exit126 ], [ %i.ao, %bb.j ], [ %.val111.sink, %_Py_XNewRef.exit128.sink.split ] ; 6 uses
  %i.as = getelementptr i8, ptr %0, i64 144
  %.val110 = load ptr, ptr %i.as, align 8, !tbaa !36 ; 7 uses
  %.not.i.i.i129 = icmp ne ptr %.val110, null     ; 3 uses
  br i1 %.not.i.i.i129, label %bb.k, label %atomic_xgetref.exit130

bb.k:                                             ; preds = %_Py_XNewRef.exit128
  %i.at = load i32, ptr %.val110, align 8, !tbaa !32 ; 2 uses
  %i.au = icmp ugt i32 %i.at, -1073741825
  br i1 %i.au, label %atomic_xgetref.exit130, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = add nuw i32 %i.at, 1
  store i32 %i.av, ptr %.val110, align 8, !tbaa !32
  br label %atomic_xgetref.exit130

atomic_xgetref.exit130:                           ; preds = %_Py_XNewRef.exit128, %bb.k, %bb.l
  %i.aw = getelementptr i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !160
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !59
  %i.az = getelementptr i8, ptr %0, i64 152
  %.val115 = load ptr, ptr %i.az, align 8, !tbaa !165 ; 2 uses
  %i.ba = icmp eq ptr %.0, null                   ; 2 uses
  %i.bb = icmp eq ptr %.val115, null
  %or.cond.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %atomic_xgetref.exit130
  %i.bc = getelementptr i8, ptr %.0, i64 16
  %.val94.i = load i64, ptr %i.bc, align 8, !tbaa !98 ; 4 uses
  %i.bd = icmp eq i64 %.val94.i, 0
  br i1 %i.bd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %atomic_xgetref.exit130
  %i.be = load i32, ptr %1, align 8, !tbaa !32    ; 2 uses
  %i.bf = icmp ugt i32 %i.be, -1073741825
  br i1 %i.bf, label %_build_callargs.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = add nuw i32 %i.be, 1
  store i32 %i.bg, ptr %1, align 8, !tbaa !32
  br label %_build_callargs.exit

bb.p:                                             ; preds = %bb.m
  %i.bh = tail call ptr @PyTuple_New(i64 noundef %.val94.i) #17 ; 6 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %Py_DECREF.exit96, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %i.bj = icmp sgt i64 %.val94.i, 0
  br i1 %i.bj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bk = getelementptr i8, ptr %.val115, i64 32
  %i.bl = getelementptr i8, ptr %i.bh, i64 32     ; 4 uses
  %i.bm = getelementptr i8, ptr %.0, i64 32
  %i.bn = getelementptr i8, ptr %.val.i, i64 72
  %i.bo = getelementptr i8, ptr %1, i64 16
  %i.bp = icmp ne ptr %2, null
  %i.bq = getelementptr i8, ptr %1, i64 32
  br label %bb.q

bb.q:                                             ; preds = %bb.ax, %.lr.ph.i
  %.2178 = phi i32 [ 0, %.lr.ph.i ], [ %.3179, %bb.ax ] ; 6 uses
  %.2173 = phi i32 [ 0, %.lr.ph.i ], [ %.3174, %bb.ax ] ; 4 uses
  %.2 = phi i32 [ 0, %.lr.ph.i ], [ %.3, %bb.ax ] ; 6 uses
  %.07440.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fp, %bb.ax ] ; 10 uses
  %.0539.i = phi i32 [ 0, %.lr.ph.i ], [ %.2.i, %bb.ax ] ; 8 uses
  %i.br = getelementptr [8 x i8], ptr %i.bk, i64 %.07440.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !36 ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %.val92.i = load i64, ptr %i.bt, align 8, !tbaa !98 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36
  %i.bw = call i64 @PyLong_AsUnsignedLongMask(ptr noundef %i.bv) #17
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %i.by = icmp sgt i64 %.val92.i, 1
  br i1 %i.by, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr i8, ptr %i.bs, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !36 ; 2 uses
  %.not15.i = icmp eq i64 %.val92.i, 2
  br i1 %.not15.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr i8, ptr %i.bs, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !36
  br label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = phi ptr [ %i.ca, %bb.s ], [ %i.ca, %bb.r ], [ null, %bb.q ] ; 3 uses
  %i.ce = phi ptr [ %i.cc, %bb.s ], [ null, %bb.r ], [ null, %bb.q ] ; 12 uses
  %i.cf = and i32 %i.bx, 7
  switch i32 %i.cf, label %bb.aw [
    i32 5, label %bb.t
    i32 3, label %bb.v
    i32 0, label %bb.w
    i32 1, label %bb.w
    i32 2, label %bb.ak
  ]

bb.t:                                             ; preds = %.thread.i
  %i.cg = icmp eq ptr %i.ce, null
  %spec.select.i = select i1 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), ptr %i.ce ; 3 uses
  %i.ch = load i32, ptr %spec.select.i, align 8, !tbaa !32 ; 2 uses
  %i.ci = icmp ugt i32 %i.ch, -1073741825
  br i1 %i.ci, label %Py_INCREF.exit88.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = add nuw i32 %i.ch, 1
  store i32 %i.cj, ptr %spec.select.i, align 8, !tbaa !32
  br label %Py_INCREF.exit88.i

Py_INCREF.exit88.i:                               ; preds = %bb.u, %bb.t
  %i.ck = getelementptr [8 x i8], ptr %i.bl, i64 %.07440.i
  store ptr %spec.select.i, ptr %i.ck, align 8, !tbaa !36
  br label %bb.ax

bb.v:                                             ; preds = %.thread.i
  %i.cl = trunc i64 %.07440.i to i32
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = or i32 %i.cm, %.2178
  %i.co = add i32 %.2, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i, %.thread.i
  %.4180 = phi i32 [ %i.cn, %bb.v ], [ %.2178, %.thread.i ], [ %.2178, %.thread.i ]
  %.4 = phi i32 [ %i.co, %bb.v ], [ %.2, %.thread.i ], [ %.2, %.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cp = sext i32 %.0539.i to i64                ; 2 uses
  %.val.i.i = load i64, ptr %i.bo, align 8, !tbaa !98
  %i.cq = icmp sgt i64 %.val.i.i, %i.cp
  br i1 %i.cq, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr [8 x i8], ptr %i.bq, i64 %i.cp
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !36 ; 4 uses
  %i.ct = add i32 %.0539.i, 1                     ; 2 uses
  %i.cu = load i32, ptr %i.cs, align 8, !tbaa !32 ; 2 uses
  %i.cv = icmp ugt i32 %i.cu, -1073741825
  br i1 %i.cv, label %bb.aj, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = add nuw i32 %i.cu, 1
  store i32 %i.cw, ptr %i.cs, align 8, !tbaa !32
  br label %bb.aj

bb.z:                                             ; preds = %bb.w
  %i.cx = icmp ne ptr %i.cd, null                 ; 2 uses
  %or.cond.i.i = and i1 %i.bp, %i.cx
  br i1 %or.cond.i.i, label %bb.aa, label %3

bb.aa:                                            ; preds = %bb.z
  %i.cy = call i32 @PyDict_GetItemRef(ptr noundef nonnull %2, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.b) #17
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %_get_arg.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %.not.i96.i = icmp eq ptr %i.da, null
  br i1 %.not.i96.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = add i32 %.0539.i, 1
  br label %bb.aj

3:                                                ; preds = %bb.z
  %.not19.i.i = icmp eq ptr %i.ce, null
  br i1 %.not19.i.i, label %bb.ag, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %.not19.i.i.a = icmp eq ptr %i.ce, null
  br i1 %.not19.i.i.a, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %3
  %i.dc = load i32, ptr %i.ce, align 8, !tbaa !32 ; 2 uses
  %i.dd = icmp ugt i32 %i.dc, -1073741825
  br i1 %i.dd, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.de = add nuw i32 %i.dc, 1
  store i32 %i.de, ptr %i.ce, align 8, !tbaa !32
  br label %bb.aj

bb.ag:                                            ; preds = %3
  br i1 %i.cx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  %4 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  %i.df = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %4, ptr noundef nonnull @.str.216, ptr noundef nonnull %i.cd) #17 ; 0 uses
  br label %_get_arg.exit.i

bb.ai:                                            ; preds = %bb.ag
  %5 = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  %i.dg = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %5, ptr noundef nonnull @.str.217) #17 ; 0 uses
  br label %_get_arg.exit.i

_get_arg.exit.i:                                  ; preds = %bb.aa, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.thread12.i

bb.aj:                                            ; preds = %bb.af, %bb.ae, %bb.ac, %bb.y, %bb.x
  %.1.ph.i = phi i32 [ %i.db, %bb.ac ], [ %.0539.i, %bb.af ], [ %.0539.i, %bb.ae ], [ %i.ct, %bb.y ], [ %i.ct, %bb.x ]
  %.0.i.ph.i = phi ptr [ %i.da, %bb.ac ], [ %i.ce, %bb.af ], [ %i.ce, %bb.ae ], [ %i.cs, %bb.y ], [ %i.cs, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.dh = getelementptr [8 x i8], ptr %i.bl, i64 %.07440.i
  store ptr %.0.i.ph.i, ptr %i.dh, align 8, !tbaa !36
  br label %bb.ax

bb.ak:                                            ; preds = %.thread.i
  %.not85.i = icmp eq ptr %i.ce, null
  br i1 %.not85.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.di = load i32, ptr %i.ce, align 8, !tbaa !32 ; 2 uses
  %i.dj = icmp ugt i32 %i.di, -1073741825
  br i1 %i.dj, label %Py_INCREF.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dk = add nuw i32 %i.di, 1
  store i32 %i.dk, ptr %i.ce, align 8, !tbaa !32
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.am, %bb.al
  %i.dl = getelementptr [8 x i8], ptr %i.bl, i64 %.07440.i
  store ptr %i.ce, ptr %i.dl, align 8, !tbaa !36
  %i.dm = trunc i64 %.07440.i to i32
  %i.dn = shl nuw i32 1, %i.dm
  %i.do = or i32 %i.dn, %.2173
  %i.dp = add i32 %.2, 1
  br label %bb.ax

bb.an:                                            ; preds = %bb.ak
  %i.dq = getelementptr [8 x i8], ptr %i.bm, i64 %.07440.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !36 ; 8 uses
  %i.ds = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.dt = call i32 @PyObject_IsInstance(ptr noundef %i.dr, ptr noundef %i.ds) #17
  %.not.i.i.i133 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i.i133, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.dv = call ptr @PyObject_GetTypeData(ptr noundef %i.dr, ptr noundef %i.du) #17 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !46
  %.not8.i.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not8.i.i.i, label %bb.ap, label %PyStgInfo_FromType.exit.i

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dx = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !36
  %i.dy = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dx, ptr noundef nonnull @.str.212) #17 ; 0 uses
  br label %.thread12.i

PyStgInfo_FromType.exit.i:                        ; preds = %bb.ao
  %i.dz = getelementptr i8, ptr %i.dv, i64 56     ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !71
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %.val.i134 = load ptr, ptr %i.eb, align 8, !tbaa !21
  %i.ec = getelementptr i8, ptr %.val.i134, i64 168
  %.val89.i = load i64, ptr %i.ec, align 8, !tbaa !30
  %i.ed = and i64 %.val89.i, 268435456
  %.not86.i = icmp eq i64 %i.ed, 0
  br i1 %.not86.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %PyStgInfo_FromType.exit.i
  %i.ee = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  %i.ef = getelementptr i8, ptr %i.dr, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !66
  %i.eh = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ee, ptr noundef nonnull @.str.213, ptr noundef %i.eg) #17 ; 0 uses
  br label %.thread12.i

bb.ar:                                            ; preds = %PyStgInfo_FromType.exit.i
  %i.ei = load ptr, ptr %i.bn, align 8, !tbaa !73 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dr, i64 8      ; 2 uses
  %.val90.i = load ptr, ptr %i.ej, align 8, !tbaa !21 ; 2 uses
  %.not.i97.i = icmp eq ptr %.val90.i, %i.ei
  br i1 %.not.i97.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.ar
  %i.ek = call i32 @PyType_IsSubtype(ptr noundef %.val90.i, ptr noundef %i.ei) #17
  %.not16.i = icmp eq i32 %i.ek, 0
  br i1 %.not16.i, label %bb.at, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.ar
  %i.el = call ptr @_PyThreadState_GetCurrent() #17 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.ej, align 8, !tbaa !21 ; 2 uses
  %i.em = getelementptr i8, ptr %.val.i.i.i.i, i64 168
  %.val6.i.i.i.i = load i64, ptr %i.em, align 8, !tbaa !30
  %i.en = and i64 %.val6.i.i.i.i, 2048
  %.not.i.i.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.i.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i, label %_PyVectorcall_FunctionInline.exit.i.i.i

_PyVectorcall_FunctionInline.exit.i.i.i:          ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.eo = getelementptr i8, ptr %.val.i.i.i.i, i64 56
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !31
  %i.eq = getelementptr i8, ptr %i.dr, i64 %i.ep
  %.0.copyload.i.i.i.i = load ptr, ptr %i.eq, align 1 ; 2 uses
  %i.er = icmp eq ptr %.0.copyload.i.i.i.i, null
  br i1 %i.er, label %_PyVectorcall_FunctionInline.exit.thread.i.i.i, label %bb.as

_PyVectorcall_FunctionInline.exit.thread.i.i.i:   ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i, %PyObject_TypeCheck.exit.thread.i
  %i.es = call ptr @_PyObject_MakeTpCall(ptr noundef %i.el, ptr noundef nonnull %i.dr, ptr noundef null, i64 noundef 0, ptr noundef null) #17
  br label %_PyObject_CallNoArgs.exit.i

bb.as:                                            ; preds = %_PyVectorcall_FunctionInline.exit.i.i.i
  %i.et = call ptr %.0.copyload.i.i.i.i(ptr noundef nonnull %i.dr, ptr noundef null, i64 noundef 0, ptr noundef null) #17, !inline_history !259
  %i.eu = call ptr @_Py_CheckFunctionResult(ptr noundef %i.el, ptr noundef nonnull %i.dr, ptr noundef %i.et, ptr noundef null) #17
  br label %_PyObject_CallNoArgs.exit.i

bb.at:                                            ; preds = %PyObject_TypeCheck.exit.i
  %i.ev = load ptr, ptr %i.dz, align 8, !tbaa !71 ; 5 uses
  %i.ew = call ptr @_PyThreadState_GetCurrent() #17 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ev, i64 8
  %.val.i.i.i = load ptr, ptr %i.ex, align 8, !tbaa !21 ; 2 uses
  %i.ey = getelementptr i8, ptr %.val.i.i.i, i64 168
  %.val6.i.i.i = load i64, ptr %i.ey, align 8, !tbaa !30
  %i.ez = and i64 %.val6.i.i.i, 2048
  %.not.i.i.i154 = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i154, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %_PyVectorcall_FunctionInline.exit.i.i

_PyVectorcall_FunctionInline.exit.i.i:            ; preds = %bb.at
  %i.fa = getelementptr i8, ptr %.val.i.i.i, i64 56
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !31
  %i.fc = getelementptr i8, ptr %i.ev, i64 %i.fb
  %.0.copyload.i.i.i = load ptr, ptr %i.fc, align 1 ; 2 uses
  %i.fd = icmp eq ptr %.0.copyload.i.i.i, null
  br i1 %i.fd, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %bb.au

_PyVectorcall_FunctionInline.exit.thread.i.i:     ; preds = %_PyVectorcall_FunctionInline.exit.i.i, %bb.at
  %i.fe = call ptr @_PyObject_MakeTpCall(ptr noundef %i.ew, ptr noundef nonnull %i.ev, ptr noundef null, i64 noundef 0, ptr noundef null) #17
  br label %_PyObject_CallNoArgs.exit.i

bb.au:                                            ; preds = %_PyVectorcall_FunctionInline.exit.i.i
  %i.ff = call ptr %.0.copyload.i.i.i(ptr noundef nonnull %i.ev, ptr noundef null, i64 noundef 0, ptr noundef null) #17, !inline_history !0
  %i.fg = call ptr @_Py_CheckFunctionResult(ptr noundef %i.ew, ptr noundef nonnull %i.ev, ptr noundef %i.ff, ptr noundef null) #17
  br label %_PyObject_CallNoArgs.exit.i

_PyObject_CallNoArgs.exit.i:                      ; preds = %bb.au, %_PyVectorcall_FunctionInline.exit.thread.i.i, %bb.as, %_PyVectorcall_FunctionInline.exit.thread.i.i.i
  %.072.i = phi ptr [ %i.eu, %bb.as ], [ %i.es, %_PyVectorcall_FunctionInline.exit.thread.i.i.i ], [ %i.fe, %_PyVectorcall_FunctionInline.exit.thread.i.i ], [ %i.fg, %bb.au ] ; 2 uses
  %i.fh = icmp eq ptr %.072.i, null
  br i1 %i.fh, label %.thread12.i, label %bb.av

bb.av:                                            ; preds = %_PyObject_CallNoArgs.exit.i
  %i.fi = getelementptr [8 x i8], ptr %i.bl, i64 %.07440.i
  store ptr %.072.i, ptr %i.fi, align 8, !tbaa !36
  %i.fj = trunc i64 %.07440.i to i32
  %i.fk = shl nuw i32 1, %i.fj
  %i.fl = or i32 %i.fk, %.2173
  %i.fm = add i32 %.2, 1
  br label %bb.ax

bb.aw:                                            ; preds = %.thread.i
  %i.fn = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !36
  %i.fo = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fn, ptr noundef nonnull @.str.214, i32 noundef %i.bx) #17 ; 0 uses
  br label %.thread12.i

bb.ax:                                            ; preds = %bb.av, %Py_INCREF.exit.i, %bb.aj, %Py_INCREF.exit88.i
  %.3179 = phi i32 [ %.2178, %Py_INCREF.exit88.i ], [ %.4180, %bb.aj ], [ %.2178, %bb.av ], [ %.2178, %Py_INCREF.exit.i ] ; 2 uses
  %.3174 = phi i32 [ %.2173, %Py_INCREF.exit88.i ], [ %.2173, %bb.aj ], [ %i.fl, %bb.av ], [ %i.do, %Py_INCREF.exit.i ] ; 2 uses
  %.3 = phi i32 [ %.2, %Py_INCREF.exit88.i ], [ %.4, %bb.aj ], [ %i.fm, %bb.av ], [ %i.dp, %Py_INCREF.exit.i ] ; 2 uses
  %.2.i = phi i32 [ %.0539.i, %Py_INCREF.exit88.i ], [ %.1.ph.i, %bb.aj ], [ %.0539.i, %bb.av ], [ %.0539.i, %Py_INCREF.exit.i ] ; 2 uses
  %i.fp = add nuw nsw i64 %.07440.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fp, %.val94.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.q, !llvm.loop !260

._crit_edge.i:                                    ; preds = %bb.ax, %.preheader.i
  %.0176 = phi i32 [ 0, %.preheader.i ], [ %.3179, %bb.ax ]
  %.0171 = phi i32 [ 0, %.preheader.i ], [ %.3174, %bb.ax ]
  %.0169 = phi i32 [ 0, %.preheader.i ], [ %.3, %bb.ax ]
  %.05.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.2.i, %bb.ax ] ; 2 uses
  %i.fq = getelementptr i8, ptr %1, i64 16
  %.val91.i = load i64, ptr %i.fq, align 8, !tbaa !98
  %.not.i131 = icmp eq ptr %2, null
  br i1 %.not.i131, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i
  %i.fr = getelementptr i8, ptr %2, i64 16
  %.val95.i = load i64, ptr %i.fr, align 8, !tbaa !264
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge.i
  %i.fs = phi i64 [ %.val95.i, %bb.ay ], [ 0, %._crit_edge.i ]
  %i.ft = add i64 %i.fs, %.val91.i                ; 2 uses
  %i.fu = sext i32 %.05.lcssa.i to i64
  %.not84.i = icmp eq i64 %i.ft, %i.fu
  br i1 %.not84.i, label %_build_callargs.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fv = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  %i.fw = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fv, ptr noundef nonnull @.str.215, i32 noundef %.05.lcssa.i, i64 noundef %i.ft) #17 ; 0 uses
  br label %.thread12.i

.thread12.i:                                      ; preds = %_PyObject_CallNoArgs.exit.i, %bb.ba, %bb.aw, %bb.aq, %bb.ap, %_get_arg.exit.i
  %i.fx = load i32, ptr %i.bh, align 8, !tbaa !32 ; 2 uses
  %.not.i.i132 = icmp sgt i32 %i.fx, -1
  br i1 %.not.i.i132, label %bb.bb, label %Py_DECREF.exit96
end_hunk_1
