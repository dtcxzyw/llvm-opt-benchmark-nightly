inline.NumInlined: 71
inline.NumDeleted: 34
begin_hunk_0_@_io_FileIO___init__:bb.a
  %i.ea = tail call ptr @__errno_location() #13
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !7
  %i.ec = icmp eq i32 %i.eb, 9
  br i1 %i.ec, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ed = load ptr, ptr @PyExc_OSError, align 8, !tbaa !32
  %i.ee = call ptr @PyErr_SetFromErrno(ptr noundef %i.ed) #11 ; 0 uses
  br label %.critedge.i

bb.bk:                                            ; preds = %bb.bi
  %i.ef = load ptr, ptr %i.dq, align 8, !tbaa !30
  call void @PyMem_Free(ptr noundef %i.ef) #11
  store ptr null, ptr %i.dq, align 8, !tbaa !30
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bh
  %i.eg = load ptr, ptr %i.dq, align 8, !tbaa !30
  %i.eh = getelementptr i8, ptr %i.eg, i64 24
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !55
  %i.ej = and i32 %i.ei, 61440
  %i.ek = icmp eq i32 %i.ej, 16384
  br i1 %i.ek, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.el = tail call ptr @__errno_location() #13
  store i32 21, ptr %i.el, align 4, !tbaa !7
  %i.em = load ptr, ptr @PyExc_OSError, align 8, !tbaa !32
  %i.en = call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.em, ptr noundef nonnull %i.o) #11 ; 0 uses
  br label %.critedge.i

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.eo = call i32 @PyObject_SetAttr(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 92600), ptr noundef nonnull %i.o) #11
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %.critedge.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.eq = load i8, ptr %i.ay, align 4
  %i.er = and i8 %i.eq, 8
  %.not136.i = icmp eq i8 %i.er, 0
  br i1 %.not136.i, label %Py_DECREF.exit150.thread.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.es = call fastcc ptr @portable_lseek(ptr noundef nonnull %0, ptr noundef null, i32 noundef 2, i1 noundef zeroext true) ; 4 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.critedge.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.eu = load i32, ptr %i.es, align 8, !tbaa !33 ; 2 uses
  %.not.i149.i = icmp sgt i32 %i.eu, -1
  br i1 %.not.i149.i, label %bb.br, label %Py_DECREF.exit150.thread.i

bb.br:                                            ; preds = %bb.bq
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %i.es, align 8, !tbaa !33
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.bs, label %Py_DECREF.exit150.thread.i

bb.bs:                                            ; preds = %bb.br
  call void @_Py_Dealloc(ptr noundef nonnull %i.es) #11
  br label %Py_DECREF.exit150.thread.i

.critedge.i:                                      ; preds = %bb.bp, %bb.bn, %bb.bm, %bb.bj, %bb.bg
  br i1 %i.ca, label %.thread173.i, label %.critedge.thread169.i

.thread173.i:                                     ; preds = %bb.at, %.critedge.i, %bb.be, %bb.bd, %Py_DECREF.exit154.i, %bb.av, %bb.au, %bb.aq, %bb.am, %bb.ak, %.loopexit175.i
  store i32 -1, ptr %i.ag, align 8, !tbaa !11
  br label %bb.bu

.critedge.thread169.i:                            ; preds = %.critedge.i, %.loopexit.i
  %.pr172.i = load i32, ptr %i.ag, align 8, !tbaa !11
  %i.ex = icmp sgt i32 %.pr172.i, -1
  br i1 %i.ex, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.critedge.thread169.i
  %i.ey = call ptr @PyErr_GetRaisedException() #11
  %i.ez = call fastcc i32 @internal_close(ptr noundef nonnull %0) ; 0 uses
  call void @_PyErr_ChainExceptions1(ptr noundef %i.ey) #11
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.critedge.thread169.i, %.thread173.i
  %i.fa = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !30
  call void @PyMem_Free(ptr noundef %i.fb) #11
  store ptr null, ptr %i.fa, align 8, !tbaa !30
  br label %Py_DECREF.exit150.thread.i

Py_DECREF.exit150.thread.i:                       ; preds = %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bo
  %.0103.i = phi i32 [ -1, %bb.bu ], [ 0, %bb.bo ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.bs ] ; 4 uses
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !32  ; 4 uses
  %.not143.i = icmp eq ptr %i.fc, null
  br i1 %.not143.i, label %_io_FileIO___init___impl.exit, label %bb.bv

bb.bv:                                            ; preds = %Py_DECREF.exit150.thread.i
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !33 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.fd, -1
  br i1 %.not.i.i, label %bb.bw, label %_io_FileIO___init___impl.exit

bb.bw:                                            ; preds = %bb.bv
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.fc, align 8, !tbaa !33
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.bx, label %_io_FileIO___init___impl.exit

bb.bx:                                            ; preds = %bb.bw
  call void @_Py_Dealloc(ptr noundef nonnull %i.fc) #11
  br label %_io_FileIO___init___impl.exit

_io_FileIO___init___impl.exit:                    ; preds = %bb.q, %bb.t, %bb.w, %bb.x, %Py_DECREF.exit150.thread.i, %bb.bv, %bb.bw, %bb.bx
  %.0.i = phi i32 [ -1, %bb.w ], [ -1, %bb.q ], [ -1, %bb.x ], [ -1, %bb.t ], [ %.0103.i, %Py_DECREF.exit150.thread.i ], [ %.0103.i, %bb.bv ], [ %.0103.i, %bb.bw ], [ %.0103.i, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.by

bb.by:                                            ; preds = %.thread72, %bb.g, %_io_FileIO___init___impl.exit, %bb.d, %bb.l
  %.048 = phi i32 [ -1, %bb.l ], [ %.0.i, %_io_FileIO___init___impl.exit ], [ -1, %.thread72 ], [ -1, %bb.g ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal ptr @fileio_new(ptr noundef %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = tail call ptr %i.b(ptr noundef %0, i64 noundef 0) #11 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 16
  store i32 -1, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %i.c, i64 20
  %i.g = getelementptr i8, ptr %i.c, i64 24
  store ptr null, ptr %i.g, align 8, !tbaa !30
  store i8 -80, ptr %i.f, align 4
  %i.h = getelementptr i8, ptr %i.c, i64 32
  store ptr null, ptr %i.h, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @_PyIOBase_finalize(ptr noundef) local_unnamed_addr #3

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #3

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #4

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #3

declare i32 @PyObject_GetOptionalAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @Py_ReprEnter(ptr noundef) local_unnamed_addr #3

declare void @Py_ReprLeave(ptr noundef) local_unnamed_addr #3

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_read(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 -1, ptr %i.b, align 8, !tbaa !51
  %i.c = icmp eq ptr %4, null
  %i.d = icmp ult i64 %3, 2
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @_io_FileIO_read._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_io_FileIO_read_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ]
  %i.h = icmp slt i64 %3, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.j = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef %i.i, ptr noundef nonnull %i.b) #11
  %.not20 = icmp eq i32 %i.j, 0
  br i1 %.not20, label %_io_FileIO_read_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %5 = load i64, ptr %i.b, align 8, !tbaa !51     ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !11
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_read_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 20
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, 2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %1, i64 888
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.s = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.t = getelementptr i8, ptr %.val.val.i, i64 8
  %.val22.i = load ptr, ptr %i.t, align 8, !tbaa !70
  %i.u = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val22.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34) #11
  br label %_io_FileIO_read_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.v = icmp slt i64 %5, 0
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = call fastcc ptr @_io_FileIO_readall_impl(ptr noundef nonnull readonly %0, ptr noundef readonly %1)
  br label %_io_FileIO_read_impl.exit

bb.j:                                             ; preds = %bb.h
  %i.x = call ptr @PyBytesWriter_Create(i64 noundef %5) #11 ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_io_FileIO_read_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.x) #11
  %i.aa = load i32, ptr %i.k, align 8, !tbaa !11
  %i.ab = call i64 @_Py_read(i32 noundef %i.aa, ptr noundef %i.z, i64 noundef %5) #11 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call ptr @__errno_location() #13
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.x) #11
  %i.af = icmp eq i32 %i.ae, 11
  br i1 %i.af, label %bb.m, label %_io_FileIO_read_impl.exit

bb.m:                                             ; preds = %bb.l
  call void @PyErr_Clear() #11
  br label %_io_FileIO_read_impl.exit

bb.n:                                             ; preds = %bb.k
  %i.ag = call ptr @PyBytesWriter_FinishWithSize(ptr noundef nonnull %i.x, i64 noundef %i.ab) #11
  br label %_io_FileIO_read_impl.exit

_io_FileIO_read_impl.exit:                        ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.e, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ %i.w, %bb.i ], [ %i.u, %bb.g ], [ null, %bb.j ], [ %i.ag, %bb.n ], [ @_Py_NoneStruct, %bb.m ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_readall(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr readnone captures(none) %2, i64 noundef %3, ptr noundef readonly captures(address_is_null) %4) #1 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !45
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.38) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call fastcc ptr @_io_FileIO_readall_impl(ptr noundef %0, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.c, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_readinto(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #1 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @_io_FileIO_readinto._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_io_FileIO_readinto_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = call i32 @PyObject_GetBuffer(ptr noundef %i.g, ptr noundef nonnull %5, i32 noundef 1) #11
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !32
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef %i.j) #11
  br label %_io_FileIO_readinto_impl.exit

bb.d:                                             ; preds = %.thread
  %.val = load ptr, ptr %5, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val21 = load i64, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.35) #11
  br label %_io_FileIO_readinto_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 20
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, 2
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %1, i64 888
  %.val.i = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.t = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.u = getelementptr i8, ptr %.val.val.i, i64 8
  %.val12.i = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.v = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %.val12.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34) #11
  br label %_io_FileIO_readinto_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.w = call i64 @_Py_read(i32 noundef %i.m, ptr noundef %.val, i64 noundef %.val21) #11 ; 2 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @__errno_location() #13
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = icmp eq i32 %i.z, 11
  br i1 %i.aa, label %bb.j, label %_io_FileIO_readinto_impl.exit

bb.j:                                             ; preds = %bb.i
  call void @PyErr_Clear() #11
  br label %_io_FileIO_readinto_impl.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = call ptr @PyLong_FromSsize_t(i64 noundef %i.w) #11
  br label %_io_FileIO_readinto_impl.exit

_io_FileIO_readinto_impl.exit:                    ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.e, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.e ], [ @_Py_NoneStruct, %bb.j ], [ %i.v, %bb.g ], [ %i.ab, %bb.k ], [ null, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72
  %.not20 = icmp eq ptr %i.ad, null
  br i1 %.not20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_io_FileIO_readinto_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %5) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_io_FileIO_readinto_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_FileIO_write(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #1 {
end_hunk_0
