inline.NumInlined: 175
inline.NumDeleted: 38
begin_hunk_0_@PyInit__testbuffer:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @PyModule_Create2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal ptr @slice_indices(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [4 x i64], align 16               ; 8 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #15
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !10
  %.not15 = icmp eq ptr %.val, @PySlice_Type
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.10) #15
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.j = call i32 @PySlice_Unpack(ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #15
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.c, align 8, !tbaa !17
  %i.m = load i64, ptr %i.i, align 16, !tbaa !17
  %i.n = call i64 @PySlice_AdjustIndices(i64 noundef %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, i64 noundef %i.m) #15
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !17
  %i.p = call ptr @PyTuple_New(i64 noundef 4) #15 ; 9 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %Py_DECREF.exit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.r = load i64, ptr %i.b, align 16, !tbaa !17
  %i.s = call ptr @PyLong_FromSsize_t(i64 noundef %i.r) #15 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.u = getelementptr i8, ptr %i.p, i64 32
  store ptr %i.s, ptr %i.u, align 8, !tbaa !14
  %i.v = load i64, ptr %i.h, align 8, !tbaa !17
  %i.w = call ptr @PyLong_FromSsize_t(i64 noundef %i.v) #15 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.p, i64 40
  store ptr %i.w, ptr %i.y, align 8, !tbaa !14
  %i.z = load i64, ptr %i.i, align 16, !tbaa !17
  %i.aa = call ptr @PyLong_FromSsize_t(i64 noundef %i.z) #15 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.p, i64 48
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !14
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !17
  %i.ae = call ptr @PyLong_FromSsize_t(i64 noundef %i.ad) #15 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %Py_DECREF.exit.loopexit

Py_DECREF.exit.loopexit:                          ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %i.p, i64 56
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !14
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.preheader
  %i.ah = load i32, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %.not.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.p, align 8, !tbaa !16
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit.loopexit, %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.a, %bb.c
  %.011 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.k ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.i ], [ null, %bb.j ], [ %i.p, %Py_DECREF.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define internal ptr @get_pointer(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct.Py_buffer, align 8          ; 9 uses
  %i.c = alloca [128 x i64], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val29 = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr i8, ptr %.val29, i64 168
  %.val33 = load i64, ptr %i.g, align 8, !tbaa !19
  %i.h = and i64 %.val33, 100663296
  %or.cond = icmp eq i64 %i.h, 0
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.12) #15
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.k = call i32 @PyObject_GetBuffer(ptr noundef %i.j, ptr noundef nonnull %2, i32 noundef 284) #15
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 128
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  %i.q = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.13, i32 noundef 128) #15 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !14
  %.in37 = getelementptr i8, ptr %i.r, i64 16
  %i.s = load i64, ptr %.in37, align 8, !tbaa !30
  %i.t = sext i32 %i.n to i64
  %.not22 = icmp eq i64 %i.s, %i.t
  br i1 %.not22, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.g
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.14) #15
  br label %.thread

bb.i:                                             ; preds = %.lr.ph, %bb.p
  %.01740 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.p ] ; 5 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.z = getelementptr i8, ptr %.val, i64 168
  %.val30 = load i64, ptr %i.z, align 8, !tbaa !19
  %i.aa = and i64 %.val30, 33554432
  %.not23 = icmp eq i64 %i.aa, 0
  br i1 %.not23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %i.x, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %i.x, i64 32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi ptr [ %i.ac, %bb.j ], [ %i.ad, %bb.k ]
  %.in = getelementptr [8 x i8], ptr %.pn, i64 %.01740
  %i.ae = load ptr, ptr %.in, align 8, !tbaa !14
  %i.af = call i64 @PyLong_AsSsize_t(ptr noundef %i.ae) #15
  %i.ag = getelementptr [8 x i8], ptr %i.c, i64 %.01740 ; 2 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !17
  %i.ah = call ptr @PyErr_Occurred() #15
  %.not24 = icmp eq ptr %i.ah, null
  br i1 %.not24, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %3 = load i64, ptr %i.ag, align 8, !tbaa !17    ; 3 uses
  %i.ai = icmp slt i64 %3, 0
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %.01740
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !17
  %.not25 = icmp slt i64 %3, %i.al
  br i1 %.not25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.am = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  %i.an = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.am, ptr noundef nonnull @.str.15, i64 noundef %3, i64 noundef %.01740) #15 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.ao = add nuw nsw i64 %.01740, 1              ; 2 uses
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !27
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.i, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %i.as = call ptr @PyBuffer_GetPointer(ptr noundef nonnull %2, ptr noundef nonnull %i.c) #15
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !39
  %i.ax = call fastcc ptr @unpack_single(ptr noundef %i.as, ptr noundef %i.au, i64 noundef %i.aw)
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.o, %._crit_edge, %bb.h, %bb.f
  %.016 = phi ptr [ null, %bb.f ], [ null, %bb.h ], [ %i.ax, %._crit_edge ], [ null, %bb.o ], [ null, %bb.l ]
  call void @PyBuffer_Release(ptr noundef nonnull %2) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.a, %.thread, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %.016, %.thread ], [ null, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @get_sizeof_void_p(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyLong_FromSize_t(i64 noundef 8) #15
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @get_contiguous(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %get_ascii_order.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr i8, ptr %.val, i64 168
  %.val10 = load i64, ptr %i.g, align 8, !tbaa !19
  %i.h = and i64 %.val10, 16777216
  %.not8 = icmp eq i64 %i.h, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.20) #15
  br label %get_ascii_order.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.j = call i64 @PyLong_AsLong(ptr noundef nonnull %i.e) #15 ; 2 uses
  switch i64 %i.j, label %bb.f [
    i64 -1, label %bb.e
    i64 512, label %bb.g
    i64 256, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @PyErr_Occurred() #15
  %.not9 = icmp eq ptr %i.k, null
  br i1 %.not9, label %bb.f, label %get_ascii_order.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.21) #15
  br label %get_ascii_order.exit.thread

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.o = getelementptr i8, ptr %.val.i, i64 168
  %.val15.i = load i64, ptr %i.o, align 8, !tbaa !19
  %i.p = and i64 %.val15.i, 268435456
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = call ptr @PyUnicode_AsASCIIString(ptr noundef nonnull %i.m) #15 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %get_ascii_order.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %i.q, i64 32
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16    ; 2 uses
  %i.u = load i32, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i.i, label %bb.j, label %Py_DECREF.exit.i

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.q, align 8, !tbaa !16
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %Py_DECREF.exit.i

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #15
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.k, %bb.j, %bb.i
  switch i8 %i.t, label %.sink.split.i [
    i8 70, label %get_ascii_order.exit
    i8 67, label %get_ascii_order.exit
    i8 65, label %get_ascii_order.exit
  ]

.sink.split.i:                                    ; preds = %Py_DECREF.exit.i, %bb.g
  %PyExc_ValueError.sink.i = phi ptr [ @PyExc_TypeError, %bb.g ], [ @PyExc_ValueError, %Py_DECREF.exit.i ]
  %.str.23.sink.i = phi ptr [ @.str.22, %bb.g ], [ @.str.23, %Py_DECREF.exit.i ]
  %i.x = load ptr, ptr %PyExc_ValueError.sink.i, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull %.str.23.sink.i) #15
  br label %get_ascii_order.exit.thread

get_ascii_order.exit:                             ; preds = %Py_DECREF.exit.i, %Py_DECREF.exit.i, %Py_DECREF.exit.i
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.z = trunc nuw nsw i64 %i.j to i32
  %i.aa = call ptr @PyMemoryView_GetContiguous(ptr noundef %i.y, i32 noundef %i.z, i8 noundef signext %i.t) #15
  br label %get_ascii_order.exit.thread

get_ascii_order.exit.thread:                      ; preds = %.sink.split.i, %bb.h, %bb.e, %bb.a, %get_ascii_order.exit, %bb.f, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ null, %bb.e ], [ %i.aa, %get_ascii_order.exit ], [ null, %bb.c ], [ null, %bb.h ], [ null, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @py_buffer_to_contiguous(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #15
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.f = load i32, ptr %i.c, align 4, !tbaa !6
  %i.g = call i32 @PyObject_GetBuffer(ptr noundef %i.e, ptr noundef nonnull %2, i32 noundef %i.f) #15
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr i8, ptr %.val.i, i64 168
  %.val15.i = load i64, ptr %i.k, align 8, !tbaa !19
  %i.l = and i64 %.val15.i, 268435456
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @PyUnicode_AsASCIIString(ptr noundef nonnull %i.i) #15 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.m, i64 32
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16    ; 2 uses
  %i.q = load i32, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i.i, label %bb.f, label %Py_DECREF.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.m, align 8, !tbaa !16
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %Py_DECREF.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #15
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.g, %bb.f, %bb.e
end_hunk_0
