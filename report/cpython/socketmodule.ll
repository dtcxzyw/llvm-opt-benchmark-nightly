inline.NumInlined: 287
inline.NumDeleted: 62
begin_hunk_0_@PyUnicode_EncodeFSDefault

declare i32 @PyArg_Parse(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 131073) i32 @idna_converter(ptr noundef %0, ptr noundef captures(none) %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !24     ; 4 uses
  %.not.i50 = icmp eq ptr %i.b, null
  br i1 %.not.i50, label %idna_cleanup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i.i, label %bb.d, label %idna_cleanup.exit

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !23
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %idna_cleanup.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #11
  br label %idna_cleanup.exit

bb.f:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !208
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val43 = load ptr, ptr %i.f, align 8, !tbaa !44 ; 3 uses
  %i.g = getelementptr i8, ptr %.val43, i64 168
  %.val45 = load i64, ptr %i.g, align 8, !tbaa !45
  %i.h = and i64 %.val45, 134217728
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr @PyBytes_AsString(ptr noundef nonnull %0) #11
  %i.j = getelementptr i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !200
  %i.k = tail call i64 @PyBytes_Size(ptr noundef nonnull %0) #11
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %.not.i51 = icmp eq ptr %.val43, @PyByteArray_Type
  br i1 %.not.i51, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.h
  %i.l = tail call i32 @PyType_IsSubtype(ptr noundef %.val43, ptr noundef nonnull @PyByteArray_Type) #11
  %.not56 = icmp eq i32 %i.l, 0
  br i1 %.not56, label %bb.i, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.h, %PyObject_TypeCheck.exit
  %i.m = tail call ptr @PyByteArray_AsString(ptr noundef nonnull %0) #11
  %i.n = getelementptr i8, ptr %1, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !200
  %i.o = tail call i64 @PyByteArray_Size(ptr noundef nonnull %0) #11
  br label %bb.o

bb.i:                                             ; preds = %PyObject_TypeCheck.exit
  %.val42 = load ptr, ptr %i.f, align 8, !tbaa !44 ; 2 uses
  %i.p = getelementptr i8, ptr %.val42, i64 168
  %.val44 = load i64, ptr %i.p, align 8, !tbaa !45
  %i.q = and i64 %.val44, 268435456
  %.not37 = icmp eq i64 %i.q, 0
  br i1 %.not37, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %0, i64 32
  %.val48 = load i32, ptr %i.r, align 8
  %i.s = and i32 %.val48, 96
  %.not38.not = icmp eq i32 %i.s, 96
  br i1 %.not38.not, label %_PyUnicode_DATA.exit, label %bb.k

_PyUnicode_DATA.exit:                             ; preds = %bb.j
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  %i.t = getelementptr i8, ptr %1, i64 8
  store ptr %.0.i.i, ptr %i.t, align 8, !tbaa !200
  %i.u = getelementptr i8, ptr %0, i64 16
  %.val49 = load i64, ptr %i.u, align 8, !tbaa !209
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.v = tail call ptr @PyUnicode_AsEncodedString(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef null) #11 ; 4 uses
  %.not39 = icmp eq ptr %i.v, null
  br i1 %.not39, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.598) #11
  br label %idna_cleanup.exit

bb.m:                                             ; preds = %bb.k
  store ptr %i.v, ptr %1, align 8, !tbaa !208
  %i.x = getelementptr i8, ptr %i.v, i64 32
  %i.y = getelementptr i8, ptr %1, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !200
  %i.z = getelementptr i8, ptr %i.v, i64 16
  %.val46 = load i64, ptr %i.z, align 8, !tbaa !67
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.ab = getelementptr i8, ptr %.val42, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !196
  %i.ad = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.599, ptr noundef %i.ac) #11 ; 0 uses
  br label %idna_cleanup.exit

bb.o:                                             ; preds = %PyObject_TypeCheck.exit.thread, %_PyUnicode_DATA.exit, %bb.m, %bb.g
  %.032 = phi i64 [ %i.k, %bb.g ], [ %i.o, %PyObject_TypeCheck.exit.thread ], [ %.val49, %_PyUnicode_DATA.exit ], [ %.val46, %bb.m ]
  %i.ae = getelementptr i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !200
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #13
  %.not40 = icmp eq i64 %i.ag, %.032
  br i1 %.not40, label %idna_cleanup.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %1, align 8, !tbaa !24    ; 4 uses
  %.not41 = icmp eq ptr %i.ah, null
  br i1 %.not41, label %Py_DECREF.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %1, align 8, !tbaa !24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !23
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.al = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull @.str.600) #11
  br label %idna_cleanup.exit

idna_cleanup.exit:                                ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.o, %Py_DECREF.exit, %bb.n, %bb.l
  %.0 = phi i32 [ 131072, %bb.o ], [ 0, %Py_DECREF.exit ], [ 0, %bb.n ], [ 0, %bb.l ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

declare i64 @PyBytes_Size(ptr noundef) local_unnamed_addr #1

declare ptr @PyByteArray_AsString(ptr noundef) local_unnamed_addr #1

declare i64 @PyByteArray_Size(ptr noundef) local_unnamed_addr #1

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @internal_connect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = tail call ptr @PyEval_SaveThread() #11
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = tail call i32 @connect(i32 noundef %i.d, ptr nonnull %1, i32 noundef %2) #11
  tail call void @PyEval_RestoreThread(ptr noundef %i.b) #11
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #12    ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !6    ; 5 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !6
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @PyErr_CheckSignals() #11
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !93   ; 2 uses
  %.not21 = icmp eq i64 %i.k, 0
  br i1 %.not21, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !93   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  %i.o = icmp eq i32 %i.g, 115
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.not19 = icmp eq i32 %3, 0
  br i1 %.not19, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.g, ptr %i.f, align 4, !tbaa !6
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.r = tail call ptr %i.q() #11                 ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %i.k, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %.not20 = icmp eq i32 %3, 0
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call fastcc i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @sock_connect_impl, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef %i.s)
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.m, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.v = call fastcc i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @sock_connect_impl, ptr noundef null, i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.s)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr %i.a, align 4, !tbaa !6
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.i, %bb.c, %bb.a, %bb.l, %bb.k, %bb.g
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.c ], [ 0, %bb.l ], [ %i.x, %bb.k ], [ -1, %bb.g ], [ -1, %bb.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

declare i32 @connect(i32 noundef, ptr, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_connect_impl(ptr noundef captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 4, ptr %i.b, align 4, !tbaa !6
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = call i32 @getsockopt(i32 noundef %i.d, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  switch i32 %i.f, label %bb.c [
    i32 106, label %bb.d
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #12
  store i32 %i.f, ptr %i.g, align 4, !tbaa !6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr, ptr noundef) local_unnamed_addr #4

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #1

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_FinishWithSize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_recv_impl(ptr noundef captures(none) %0, ptr noundef captures(none) initializes((24, 32)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = load ptr, ptr %1, align 8, !tbaa !139
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !141
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !142
  %i.h = tail call i64 @recv(i32 noundef %i.b, ptr noundef %i.c, i64 noundef %i.e, i32 noundef %i.g) #11 ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 24
  store i64 %i.h, ptr %i.i, align 8, !tbaa !143
  %i.j = icmp sgt i64 %i.h, -1
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @sock_recvfrom_guts(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull writeonly captures(none) initializes((0, 8)) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %union.sock_addr, align 8           ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.sock_recvfrom, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr null, ptr %4, align 8, !tbaa !24
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val = load i32, ptr %i.b, align 4, !tbaa !87
  %switch.tableidx = add i32 %.val, -1            ; 3 uses
  %i.c = icmp ult i32 %switch.tableidx, 42
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 2887024476675, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %getsockaddrlen.exit

getsockaddrlen.exit:                              ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.565) #11
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sock_recvmsg_guts, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  store i32 %switch.load, ptr %i.a, align 4, !tbaa !6
  store ptr %1, ptr %6, align 8, !tbaa !212
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.f, align 8, !tbaa !214
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %3, ptr %i.g, align 8, !tbaa !215
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %5, ptr %i.h, align 8, !tbaa !216
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.a, ptr %i.i, align 8, !tbaa !217
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !93
  %i.l = call fastcc range(i32 -1, 1) i32 @sock_call_ex(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @sock_recvfrom_impl, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null, i64 noundef %i.k)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load atomic i32, ptr %i.n monotonic, align 8
  %i.p = load i32, ptr %i.a, align 4, !tbaa !6
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !91
  %i.t = call fastcc ptr @makesockaddr(i32 noundef %i.o, ptr noundef nonnull %5, i64 noundef %i.q, i32 noundef %i.s) ; 2 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !24
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !218
  br label %bb.d

bb.d:                                             ; preds = %getsockaddrlen.exit, %bb.b, %switch.lookup, %bb.c
  %.0 = phi i64 [ -1, %getsockaddrlen.exit ], [ -1, %switch.lookup ], [ %i.w, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sock_recvfrom_impl(ptr noundef captures(none) %0, ptr noundef captures(none) initializes((40, 48)) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216
  %i.c = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217
  %i.e = load i32, ptr %i.d, align 4, !tbaa !6
  %i.f = zext i32 %i.e to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.f, i1 false)
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
end_hunk_0
