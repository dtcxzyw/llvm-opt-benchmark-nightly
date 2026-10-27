Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_ctypes?download=true
inline.NumInlined: 552
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@PyCArrayType_init:bb.a
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !53 ; 3 uses
  %.not46 = icmp eq i64 %i.cl, 0
  br i1 %.not46, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cm = sdiv i64 9223372036854775807, %i.cl
  %i.cn = icmp sgt i64 %i.u, %i.cm
  br i1 %i.cn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.co = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.co, ptr noundef nonnull @.str.118) #17
  br label %PyStgInfo_Init.exit.thread

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.cp = getelementptr i8, ptr %i.bk, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !151
  %i.cr = getelementptr i8, ptr %i.bk, i64 136
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !118
  %i.ct = and i32 %i.cs, 768
  %.not47 = icmp eq i32 %i.ct, 0
  br i1 %.not47, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cu = getelementptr i8, ptr %i.at, i64 136    ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !118
  %i.cw = or i32 %i.cv, 512
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !118
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cx = mul i64 %i.cl, %i.u
  %i.cy = getelementptr i8, ptr %i.at, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !53
  %i.cz = getelementptr i8, ptr %i.at, i64 16
  store i64 %i.cq, ptr %i.cz, align 8, !tbaa !151
  %i.da = getelementptr i8, ptr %i.at, i64 24
  store i64 %i.u, ptr %i.da, align 8, !tbaa !49
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.dc = getelementptr i8, ptr %i.at, i64 56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !71
  store ptr null, ptr %i.b, align 8, !tbaa !36
  %i.dd = getelementptr i8, ptr %i.at, i64 80
  store ptr @PyCArrayType_paramfunc, ptr %i.dd, align 8, !tbaa !142
  %i.de = getelementptr i8, ptr %i.at, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) @ffi_type_pointer, i64 24, i1 false), !tbaa.struct !154
  %i.df = getelementptr i8, ptr %i.bk, i64 72     ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !63
  %i.dh = call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.119) #17
  %i.di = getelementptr i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !155
  %i.dk = icmp eq ptr %i.dg, %i.dj
  br i1 %i.dk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dl = call fastcc i32 @add_getset(ptr noundef nonnull %0, ptr noundef nonnull @CharArray_getsets)
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %PyStgInfo_Init.exit.thread, label %Py_XDECREF.exit

bb.ap:                                            ; preds = %bb.an
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !63
  %i.do = call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.120) #17
  %i.dp = getelementptr i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !155
  %i.dr = icmp eq ptr %i.dn, %i.dq
  br i1 %i.dr, label %bb.aq, label %Py_XDECREF.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ds = call fastcc i32 @add_getset(ptr noundef nonnull %0, ptr noundef nonnull @WCharArray_getsets)
  %i.dt = icmp eq i32 %i.ds, -1
  br i1 %i.dt, label %PyStgInfo_Init.exit.thread, label %Py_XDECREF.exit

PyStgInfo_Init.exit.thread:                       ; preds = %bb.y, %bb.x, %bb.v, %bb.aq, %bb.ao, %PyStgInfo_FromType.exit, %bb.r, %bb.p, %bb.q, %bb.a, %bb.ak, %bb.af, %bb.ad, %bb.t, %Py_DECREF.exit50, %Py_DECREF.exit52, %bb.c
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !36  ; 4 uses
  %.not.i59 = icmp eq ptr %i.du, null
  br i1 %.not.i59, label %Py_XDECREF.exit, label %bb.ar

bb.ar:                                            ; preds = %PyStgInfo_Init.exit.thread
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !32 ; 2 uses
  %.not.i.i60 = icmp sgt i32 %i.dv, -1
  br i1 %.not.i.i60, label %bb.as, label %Py_XDECREF.exit

bb.as:                                            ; preds = %bb.ar
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !32
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.at, label %Py_XDECREF.exit

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.du) #17
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.at, %bb.as, %bb.ar, %PyStgInfo_Init.exit.thread, %bb.ao, %bb.aq, %bb.ap
  %.0 = phi i32 [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ -1, %PyStgInfo_Init.exit.thread ], [ -1, %bb.ar ], [ -1, %bb.as ], [ -1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @PyCArrayType_paramfunc(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @PyCArgObject_new(ptr noundef %0) #17 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 24
  store i8 80, ptr %i.c, align 8, !tbaa !146
  %i.d = getelementptr i8, ptr %i.a, i64 16
  store ptr @ffi_type_pointer, ptr %i.d, align 16, !tbaa !147
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !55
  %i.g = getelementptr i8, ptr %i.a, i64 32
  store ptr %i.f, ptr %i.g, align 16, !tbaa !32
  %i.h = load i32, ptr %1, align 16, !tbaa !32    ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %1, align 16, !tbaa !32
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.b, %bb.c
  %i.k = getelementptr i8, ptr %i.a, i64 64
  store ptr %1, ptr %i.k, align 16, !tbaa !122
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_Py_NewRef.exit
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @add_getset(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156
  %i.c = load ptr, ptr %1, align 8, !tbaa !201
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %Py_DECREF.exit
  %i.d = getelementptr i8, ptr %.01216, i64 40    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !199

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01216 = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %i.f = tail call ptr @PyDescr_NewGetSet(ptr noundef %0, ptr noundef nonnull %.01216) #17 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %.01216, align 8, !tbaa !201
  %i.i = tail call i32 @PyDict_SetItemString(ptr noundef %i.b, ptr noundef %i.h, ptr noundef nonnull %i.f) #17
  %i.j = icmp sgt i32 %i.i, -1
  %i.k = load i32, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.f, align 8, !tbaa !32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  br i1 %i.j, label %bb.b, label %.critedge

.critedge:                                        ; preds = %Py_DECREF.exit, %bb.b, %.lr.ph, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -1, %.lr.ph ], [ -1, %Py_DECREF.exit ]
  ret i32 %.2
}

declare ptr @PyDescr_NewGetSet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_PyCArrayType_Type_raw_get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 16, !tbaa !55
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val2 = load i64, ptr %i.b, align 8, !tbaa !54
  %i.c = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %.val, i64 noundef %.val2) #17
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_ctypes_PyCArrayType_Type_raw_set(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !36
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.123) #17
  br label %_ctypes_PyCArrayType_Type_raw_set_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.c = call i32 @PyObject_GetBuffer(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef 0) #17
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %_ctypes_PyCArrayType_Type_raw_set_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !114  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54
  %i.i = icmp sgt i64 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !36
  call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.124) #17
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %3, align 8, !tbaa !112
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.k, i64 %i.f, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  %.0.ph.i = phi i32 [ -1, %bb.e ], [ 0, %bb.f ]
  call void @PyBuffer_Release(ptr noundef nonnull %3) #17
  br label %_ctypes_PyCArrayType_Type_raw_set_impl.exit

_ctypes_PyCArrayType_Type_raw_set_impl.exit:      ; preds = %bb.b, %bb.c, %.sink.split.i
  %.0.i = phi i32 [ -1, %bb.b ], [ -1, %bb.c ], [ %.0.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_PyCArrayType_Type_value_get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !55  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ctypes_PyCArrayType_Type_value_get_impl.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.09.i = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.078.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.f = load i8, ptr %.09.i, align 1, !tbaa !32
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_ctypes_PyCArrayType_Type_value_get_impl.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr i8, ptr %.09.i, i64 1
  %i.i = add nuw nsw i64 %.078.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.d
  br i1 %exitcond.not.i, label %_ctypes_PyCArrayType_Type_value_get_impl.exit, label %.lr.ph.i, !llvm.loop !202

_ctypes_PyCArrayType_Type_value_get_impl.exit:    ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.07.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ], [ %.078.i, %.lr.ph.i ]
  %i.j = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef %.07.lcssa.i) #17
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_ctypes_PyCArrayType_Type_value_set(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.125) #17
  br label %_ctypes_PyCArrayType_Type_value_set_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val22.i = load ptr, ptr %i.c, align 8, !tbaa !21 ; 2 uses
  %i.d = getelementptr i8, ptr %.val22.i, i64 168
  %.val23.i = load i64, ptr %i.d, align 8, !tbaa !30
  %i.e = and i64 %.val23.i, 134217728
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  %i.g = getelementptr i8, ptr %.val22.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.126, ptr noundef %i.h) #17 ; 0 uses
  br label %_ctypes_PyCArrayType_Type_value_set_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %Py_INCREF.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %1, align 8, !tbaa !32
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.f, %bb.e
  %i.m = getelementptr i8, ptr %1, i64 16
  %.val24.i = load i64, ptr %i.m, align 8, !tbaa !98 ; 4 uses
  %i.n = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !54
  %i.p = icmp sgt i64 %.val24.i, %i.o
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %Py_INCREF.exit.i
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !36
  tail call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.124) #17
  %i.r = load i32, ptr %1, align 8, !tbaa !32     ; 2 uses
  %.not.i19.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i19.i, label %bb.h, label %_ctypes_PyCArrayType_Type_value_set_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %1, align 8, !tbaa !32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %_ctypes_PyCArrayType_Type_value_set_impl.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #17
  br label %_ctypes_PyCArrayType_Type_value_set_impl.exit

bb.j:                                             ; preds = %Py_INCREF.exit.i
  %i.u = getelementptr i8, ptr %1, i64 32
  %i.v = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 8 %i.u, i64 %.val24.i, i1 false)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !54
  %i.y = icmp slt i64 %.val24.i, %i.x
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.v, align 16, !tbaa !55
  %i.aa = getelementptr i8, ptr %i.z, i64 %.val24.i
  store i8 0, ptr %i.aa, align 1, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = load i32, ptr %1, align 8, !tbaa !32    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i.i, label %bb.m, label %_ctypes_PyCArrayType_Type_value_set_impl.exit

bb.m:                                             ; preds = %bb.l
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %1, align 8, !tbaa !32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %_ctypes_PyCArrayType_Type_value_set_impl.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #17
  br label %_ctypes_PyCArrayType_Type_value_set_impl.exit

_ctypes_PyCArrayType_Type_value_set_impl.exit:    ; preds = %bb.b, %bb.d, %bb.g, %bb.h, %bb.i, %bb.l, %bb.m, %bb.n
  %.0.i = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %bb.g ], [ -1, %bb.h ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @WCharArray_get_value(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !55  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.e = sdiv i64 %i.d, 4                         ; 2 uses
  %i.f = icmp sgt i64 %i.d, 3
  br i1 %i.f, label %.lr.ph.i, label %WCharArray_get_value_lock_held.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.010.i = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.089.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = load i32, ptr %.010.i, align 4, !tbaa !14
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %WCharArray_get_value_lock_held.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %.010.i, i64 4
  %i.j = add nuw nsw i64 %.089.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.e
  br i1 %exitcond.not.i, label %WCharArray_get_value_lock_held.exit, label %.lr.ph.i, !llvm.loop !203

WCharArray_get_value_lock_held.exit:              ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.08.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ], [ %.089.i, %.lr.ph.i ]
  %i.k = tail call ptr @PyUnicode_FromWideChar(ptr noundef %i.b, i64 noundef %.08.lcssa.i) #17
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @WCharArray_set_value(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.125) #17
  br label %WCharArray_set_value_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val16.i = load ptr, ptr %i.c, align 8, !tbaa !21 ; 2 uses
  %i.d = getelementptr i8, ptr %.val16.i, i64 168
  %.val17.i = load i64, ptr %i.d, align 8, !tbaa !30
  %i.e = and i64 %.val17.i, 268435456
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !36
  %i.g = getelementptr i8, ptr %.val16.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.128, ptr noundef %i.h) #17 ; 0 uses
  br label %WCharArray_set_value_lock_held.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = lshr i64 %i.k, 2                         ; 2 uses
  %i.m = tail call i64 @PyUnicode_AsWideChar(ptr noundef nonnull %1, ptr noundef null, i64 noundef 0) #17 ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %WCharArray_set_value_lock_held.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i64 %i.m, -1
  %i.p = icmp sgt i64 %i.o, %i.l
  br i1 %i.p, label %bb.g, label %bb.h

end_hunk_0
