Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/socketmodule?download=true
inline.NumInlined: 287
inline.NumDeleted: 62
begin_hunk_0_@sock_shutdown:bb.a
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #11 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #11
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @PyEval_SaveThread() #11
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load atomic i32, ptr %i.e monotonic, align 4
  %i.g = tail call i32 @shutdown(i32 noundef %i.f, i32 noundef %i.a) #11
  tail call void @PyEval_RestoreThread(ptr noundef %i.d) #11
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = tail call ptr %i.j() #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ null, %bb.b ], [ %i.k, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_recvmsg(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.iovec, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %i.e = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.630, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.631) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.i = call ptr @PyBytesWriter_Create(i64 noundef %i.f) #11 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !130
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.k = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.i) #11
  store ptr %i.k, ptr %2, align 8, !tbaa !132
  %i.l = load i64, ptr %i.a, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !133
  %i.n = load i32, ptr %i.c, align 4, !tbaa !9
  %i.o = load i64, ptr %i.b, align 8, !tbaa !47
  %i.p = call fastcc ptr @sock_recvmsg_guts(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @makeval_recvmsg, ptr noundef nonnull %i.d)
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !130
  call void @PyBytesWriter_Discard(ptr noundef %i.q) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %.0, %bb.f ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @sock_recvmsg_into(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.637, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.f = call ptr @PySequence_Fast(ptr noundef %i.e, ptr noundef nonnull @.str.638) #11 ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.in61 = getelementptr i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %.in61, align 8, !tbaa !60 ; 7 uses
  %i.j = icmp sgt i64 %i.i, 2147483647
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.639) #11
  br label %._crit_edge67

bb.e:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %i.i, 0
  br i1 %i.l, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw nsw i64 %i.i, 4
  %i.n = call ptr @PyMem_Malloc(i64 noundef %i.m) #11 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.i, 80
  %i.q = call ptr @PyMem_Malloc(i64 noundef %i.p) #11 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %.lr.ph

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = call ptr @PyErr_NoMemory() #11           ; 0 uses
  br label %._crit_edge67

.lr.ph:                                           ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.f, i64 24
  %i.u = getelementptr i8, ptr %i.f, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.04263 = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.l ] ; 5 uses
  %.val56 = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.v = getelementptr i8, ptr %.val56, i64 168
  %.val58 = load i64, ptr %i.v, align 8, !tbaa !46
  %i.w = and i64 %.val58, 33554432
  %.not54 = icmp eq i64 %i.w, 0
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !136
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pn = phi ptr [ %i.x, %bb.j ], [ %i.u, %bb.i ]
  %.in = getelementptr [8 x i8], ptr %.pn, i64 %.04263
  %i.y = load ptr, ptr %.in, align 8, !tbaa !24
  %i.z = getelementptr [80 x i8], ptr %i.q, i64 %.04263 ; 3 uses
  %i.aa = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.y, ptr noundef nonnull @.str.640, ptr noundef %i.z) #11
  %.not55 = icmp eq i32 %i.aa, 0
  br i1 %.not55, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ac = getelementptr [16 x i8], ptr %i.n, i64 %.04263 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !132
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !133
  %i.ag = add nuw nsw i64 %.04263, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !195

._crit_edge:                                      ; preds = %bb.l, %bb.e
  %.182 = phi ptr [ null, %bb.e ], [ %i.q, %bb.l ]
  %.04580 = phi ptr [ null, %bb.e ], [ %i.n, %bb.l ] ; 2 uses
  %.042.lcssa = phi i64 [ 0, %bb.e ], [ %i.i, %bb.l ]
  %i.ah = trunc i64 %i.i to i32
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !9
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !47
  %i.ak = call fastcc ptr @sock_recvmsg_guts(ptr noundef %0, ptr noundef %.04580, i32 noundef %i.ah, i32 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @makeval_recvmsg_into, ptr noundef null)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %._crit_edge
  %.146 = phi ptr [ %.04580, %._crit_edge ], [ %i.n, %bb.k ] ; 2 uses
  %.143 = phi i64 [ %.042.lcssa, %._crit_edge ], [ %.04263, %bb.k ] ; 2 uses
  %.2 = phi ptr [ %.182, %._crit_edge ], [ %i.q, %bb.k ] ; 3 uses
  %.0 = phi ptr [ %i.ak, %._crit_edge ], [ null, %bb.k ] ; 2 uses
  %.not68 = icmp eq i64 %.143, 0
  br i1 %.not68, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %.loopexit, %.lr.ph66
  %.04464 = phi i64 [ %i.am, %.lr.ph66 ], [ 0, %.loopexit ] ; 2 uses
  %i.al = getelementptr [80 x i8], ptr %.2, i64 %.04464
  call void @PyBuffer_Release(ptr noundef %i.al) #11
  %i.am = add nuw i64 %.04464, 1                  ; 2 uses
  %exitcond70.not = icmp eq i64 %i.am, %.143
  br i1 %exitcond70.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !196

._crit_edge67:                                    ; preds = %.lr.ph66, %bb.h, %bb.d, %.loopexit
  %.090 = phi ptr [ null, %bb.h ], [ %.0, %.loopexit ], [ null, %bb.d ], [ %.0, %.lr.ph66 ] ; 3 uses
  %.289 = phi ptr [ null, %bb.h ], [ %.2, %.loopexit ], [ null, %bb.d ], [ %.2, %.lr.ph66 ]
  %.14688 = phi ptr [ %i.n, %bb.h ], [ %.146, %.loopexit ], [ null, %bb.d ], [ %.146, %.lr.ph66 ]
  call void @PyMem_Free(ptr noundef %.289) #11
  call void @PyMem_Free(ptr noundef %.14688) #11
  %i.an = load i32, ptr %i.f, align 8, !tbaa !23  ; 2 uses
  %.not.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %._crit_edge67
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.f, align 8, !tbaa !23
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.n, %bb.m, %._crit_edge67, %bb.b, %bb.a
  %.047 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.090, %._crit_edge67 ], [ %.090, %bb.m ], [ %.090, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.047
}

; Function Attrs: nounwind uwtable
define internal ptr @_socket_socket_sendmsg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %union.sock_addr, align 8           ; 4 uses
  %4 = alloca %struct.msghdr, align 8             ; 10 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.sock_sendmsg, align 8       ; 6 uses
  %i.d = add i64 %2, -1
  %or.cond = icmp ult i64 %i.d, 4
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.562, i64 noundef %2, i64 noundef 1, i64 noundef 4) #11
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.am, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !24
  %i.g = icmp slt i64 %2, 2
  br i1 %i.g, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = tail call i32 @PyLong_AsInt(ptr noundef %i.l) #11 ; 3 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @PyErr_Occurred() #11
  %.not21 = icmp eq ptr %i.o, null
  br i1 %.not21, label %bb.g, label %bb.am

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = icmp samesign ult i64 %2, 4
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.h
  %.018 = phi ptr [ null, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.g ], [ %i.i, %bb.h ] ; 2 uses
  %.017 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.g ], [ %i.r, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.s = icmp ne ptr %.0, null
  %i.t = icmp ne ptr %.0, @_Py_NoneStruct
  %or.cond.i = and i1 %i.s, %i.t
  br i1 %or.cond.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.u = call fastcc i32 @getsockaddrarg(ptr noundef %0, ptr noundef nonnull %.0, ptr noundef %3, ptr noundef %i.c, ptr noundef nonnull @.str.562)
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %.thread144.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.641, ptr noundef nonnull @.str.568, ptr noundef %0, ptr noundef nonnull %.0) #11
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %_socket_socket_sendmsg_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %3, ptr %4, align 8, !tbaa !140
  %i.x = load i32, ptr %i.c, align 4, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !141
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.z = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.641, ptr noundef nonnull @.str.568, ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct) #11
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %_socket_socket_sendmsg_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = call fastcc i32 @sock_sendmsg_iovec(ptr noundef %i.f, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a)
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %.thread144.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = icmp eq ptr %.018, null
  br i1 %i.ad, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = call ptr @PySequence_Tuple(ptr noundef nonnull %.018) #11 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str.642) #11
  br label %.thread144.thread.i

bb.r:                                             ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %i.ae, i64 16
  %.val.i = load i64, ptr %i.ah, align 8, !tbaa !60 ; 5 uses
  %i.ai = icmp sgt i64 %.val.i, 0
  br i1 %i.ai, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.aj = icmp samesign ugt i64 %.val.i, 104811045873349725
  br i1 %i.aj, label %.thread140.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = mul nuw nsw i64 %.val.i, 88
  %i.al = call ptr @PyMem_Malloc(i64 noundef %i.ak) #11 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.thread140.i, label %.thread.i

.thread140.i:                                     ; preds = %bb.t, %bb.s
  %i.an = call ptr @PyErr_NoMemory() #11          ; 0 uses
  br label %.thread144.thread.i

.thread.i:                                        ; preds = %bb.t, %bb.r, %bb.o
  %.089139.i = phi ptr [ %i.ae, %bb.t ], [ %i.ae, %bb.r ], [ null, %bb.o ] ; 3 uses
  %.0102138.i = phi i64 [ %.val.i, %bb.t ], [ %.val.i, %bb.r ], [ 0, %bb.o ] ; 5 uses
  %.097.i = phi ptr [ %i.al, %bb.t ], [ null, %bb.r ], [ null, %bb.o ] ; 9 uses
  %i.ao = getelementptr i8, ptr %.089139.i, i64 32
  %smax.i = call i64 @llvm.smax.i64(i64 %.0102138.i, i64 0) ; 7 uses
  %exitcond.not.i72 = icmp slt i64 %.0102138.i, 1
  br i1 %exitcond.not.i72, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %get_CMSG_SPACE.exit.i
  %exitcond.not.i = icmp eq i64 %i.aw, %smax.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread.i, %bb.u
  %i.ap = phi i64 [ %i.bf, %bb.u ], [ 0, %.thread.i ]
  %.099.i73 = phi i64 [ %i.aw, %bb.u ], [ 0, %.thread.i ] ; 4 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ao, i64 %.099.i73
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !24
  %i.as = getelementptr [88 x i8], ptr %.097.i, i64 %.099.i73 ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = getelementptr i8, ptr %i.as, i64 8
  %i.av = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %i.ar, ptr noundef nonnull @.str.643, ptr noundef %i.as, ptr noundef %i.at, ptr noundef %i.au) #11
  %.not121.i = icmp eq i32 %i.av, 0
  br i1 %.not121.i, label %.thread144.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.aw = add nuw i64 %.099.i73, 1                ; 4 uses
  %i.ax = getelementptr i8, ptr %i.as, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !201 ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 2147483623
  br i1 %i.az, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = add nuw nsw i64 %i.ay, 7
  %i.bb = and i64 %i.ba, 4294967288
  %i.bc = add nuw nsw i64 %i.bb, 16               ; 2 uses
  %i.bd = icmp samesign ult i64 %i.bc, %i.ay
  br i1 %i.bd, label %bb.x, label %get_CMSG_SPACE.exit.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.be = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
end_hunk_0
