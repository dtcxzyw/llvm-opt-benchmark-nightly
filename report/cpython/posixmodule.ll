Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/posixmodule?download=true
inline.NumInlined: 800
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@os_lchown:bb.a
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1581
  %i.m = call i32 @_Py_Uid_Converter(ptr noundef %i.l, ptr noundef nonnull %i.b)
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %os_lchown_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1581
  %i.p = call i32 @_Py_Gid_Converter(ptr noundef %i.o, ptr noundef nonnull %i.c)
  %.not22 = icmp eq i32 %i.p, 0
  br i1 %.not22, label %os_lchown_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.b, align 4, !tbaa !16   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !16   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.val23 = load ptr, ptr %i.t, align 8, !tbaa !1616 ; 2 uses
  %i.u = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.232, ptr noundef %.val23, i32 noundef %i.q, i32 noundef %i.r, i32 noundef -1) #19
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %os_lchown_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @PyEval_SaveThread() #19
  %i.x = call i32 @lchown(ptr noundef readonly %.val, i32 noundef %i.q, i32 noundef %i.r) #19
  call void @PyEval_RestoreThread(ptr noundef %i.w) #19
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %os_lchown_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.aa = call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.z, ptr noundef %.val23) #19
  br label %os_lchown_impl.exit

os_lchown_impl.exit:                              ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.c ], [ null, %.thread ], [ null, %bb.e ], [ %i.aa, %bb.g ], [ @_Py_NoneStruct, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1611
  call void @PyMem_Free(ptr noundef %i.ac) #19
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1581 ; 4 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %Py_DECREF.exit16.i, label %bb.h

bb.h:                                             ; preds = %os_lchown_impl.exit
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1590 ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i15.i, label %bb.i, label %Py_DECREF.exit16.i

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !1590
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %Py_DECREF.exit16.i

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #19
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %bb.j, %bb.i, %bb.h, %os_lchown_impl.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1581 ; 4 uses
  %.not14.i = icmp eq ptr %i.aj, null
  br i1 %.not14.i, label %path_cleanup.exit, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit16.i
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1590 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i.i, label %bb.l, label %path_cleanup.exit

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !1590
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %path_cleanup.exit

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #19
  br label %path_cleanup.exit

path_cleanup.exit:                                ; preds = %Py_DECREF.exit16.i, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_chroot(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !1692 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  %4 = alloca %struct.path_t, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) @__const.os_chroot.path, i64 96, i1 false)
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i64 %2, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_chroot._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %os_chroot_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1581
  %i.h = call fastcc i32 @path_converter(ptr noundef %i.g, ptr noundef %4)
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %.thread.os_chroot_impl.exit_crit_edge, label %bb.c

.thread.os_chroot_impl.exit_crit_edge:            ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1581
  br label %os_chroot_impl.exit

bb.c:                                             ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.val19 = load ptr, ptr %i.j, align 8           ; 3 uses
  %i.k = call ptr @PyEval_SaveThread() #19
  %i.l = call i32 @chroot(ptr noundef %.val) #19
  call void @PyEval_RestoreThread(ptr noundef %i.k) #19
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %os_chroot_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.o = call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.n, ptr noundef %.val19) #19
  br label %os_chroot_impl.exit

os_chroot_impl.exit:                              ; preds = %.thread.os_chroot_impl.exit_crit_edge, %bb.d, %bb.c, %bb.b
  %i.p = phi ptr [ null, %bb.b ], [ %.pre, %.thread.os_chroot_impl.exit_crit_edge ], [ %.val19, %bb.d ], [ %.val19, %bb.c ] ; 4 uses
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread.os_chroot_impl.exit_crit_edge ], [ %i.o, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1611
  call void @PyMem_Free(ptr noundef %i.r) #19
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %Py_DECREF.exit16.i, label %bb.e

bb.e:                                             ; preds = %os_chroot_impl.exit
  %i.s = load i32, ptr %i.p, align 8, !tbaa !1590 ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i15.i, label %bb.f, label %Py_DECREF.exit16.i

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.p, align 8, !tbaa !1590
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %Py_DECREF.exit16.i

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #19
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %bb.g, %bb.f, %bb.e, %os_chroot_impl.exit
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1581 ; 4 uses
  %.not14.i = icmp eq ptr %i.w, null
  br i1 %.not14.i, label %path_cleanup.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit16.i
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1590 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i, label %bb.i, label %path_cleanup.exit

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !1590
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %path_cleanup.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.w) #19
  br label %path_cleanup.exit

path_cleanup.exit:                                ; preds = %Py_DECREF.exit16.i, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_ctermid(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !1693 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call ptr @ctermid(ptr noundef nonnull %i.a) #19
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %2 = call ptr @PyErr_SetFromErrno(ptr noundef %i.d) #19
  br label %os_ctermid_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call ptr @PyUnicode_DecodeFSDefault(ptr noundef nonnull %i.a) #19
  br label %os_ctermid_impl.exit

os_ctermid_impl.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @os_getcwd(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !1694 {
bb.a:
  %i.a = tail call fastcc ptr @posix_getcwd(i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @os_getcwdb(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !1695 {
bb.a:
  %i.a = tail call fastcc ptr @posix_getcwd(i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @os_link(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !1696 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.path_t, align 8             ; 9 uses
  %5 = alloca %struct.path_t, align 8             ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !1578
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.f = add i64 %i.e, %2                         ; 2 uses
  %i.g = add i64 %i.f, -2                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) @__const.os_link.src, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(96) @__const.os_link.dst, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 -100, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 -100, ptr %i.c, align 4, !tbaa !16
  %i.h = icmp eq i64 %2, 2
  %i.i = icmp ne ptr %1, null
  %i.j = and i1 %i.i, %i.h
  %or.cond5 = and i1 %i.j, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_link._parser, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not40 = icmp eq ptr %i.k, null
  br i1 %.not40, label %os_link_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ %1, %bb.c ]   ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1581
  %i.n = call fastcc i32 @path_converter(ptr noundef %i.m, ptr noundef %4)
  %.not41 = icmp eq i32 %i.n, 0
  br i1 %.not41, label %os_link_impl.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1581
  %i.q = call fastcc i32 @path_converter(ptr noundef %i.p, ptr noundef %5)
  %.not42 = icmp eq i32 %i.q, 0
  br i1 %.not42, label %os_link_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43 = icmp eq i64 %i.g, 0
  br i1 %.not43, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.l, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1581 ; 5 uses
  %.not44 = icmp eq ptr %i.s, null
  br i1 %.not44, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq ptr %i.s, @_Py_NoneStruct
  br i1 %i.t, label %dir_fd_converter.exit.thread69, label %bb.i

dir_fd_converter.exit.thread69:                   ; preds = %bb.h
  store i32 -100, ptr %i.b, align 4, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 @PyIndex_Check(ptr noundef nonnull %i.s) #19
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %dir_fd_converter.exit.thread, label %dir_fd_converter.exit

dir_fd_converter.exit.thread:                     ; preds = %bb.i
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !1581
  %i.w = getelementptr i8, ptr %i.s, i64 8
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !1583
  %i.x = call ptr @_PyType_Name(ptr noundef %.val.i) #19
  %i.y = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.210, ptr noundef %i.x) #19 ; 0 uses
  br label %os_link_impl.exit

dir_fd_converter.exit:                            ; preds = %bb.i
  %i.z = call fastcc i32 @_fd_converter(ptr noundef nonnull %i.s, ptr noundef nonnull %i.b)
  %.not45 = icmp eq i32 %i.z, 0
  br i1 %.not45, label %os_link_impl.exit, label %bb.j

bb.j:                                             ; preds = %dir_fd_converter.exit.thread69, %dir_fd_converter.exit
  %i.aa = add i64 %i.f, -3                        ; 2 uses
  %.not46 = icmp eq i64 %i.aa, 0
  br i1 %.not46, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.030 = phi i64 [ %i.aa, %bb.j ], [ %i.g, %bb.g ]
  %i.ab = getelementptr i8, ptr %i.l, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1581 ; 5 uses
  %.not47 = icmp eq ptr %i.ac, null
  br i1 %.not47, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp eq ptr %i.ac, @_Py_NoneStruct
  br i1 %i.ad, label %dir_fd_converter.exit56.thread74, label %bb.m

dir_fd_converter.exit56.thread74:                 ; preds = %bb.l
  store i32 -100, ptr %i.c, align 4, !tbaa !16
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = call i32 @PyIndex_Check(ptr noundef nonnull %i.ac) #19
  %.not.i53 = icmp eq i32 %i.ae, 0
  br i1 %.not.i53, label %dir_fd_converter.exit56.thread, label %dir_fd_converter.exit56

dir_fd_converter.exit56.thread:                   ; preds = %bb.m
  %i.af = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !1581
  %i.ag = getelementptr i8, ptr %i.ac, i64 8
  %.val.i55 = load ptr, ptr %i.ag, align 8, !tbaa !1583
  %i.ah = call ptr @_PyType_Name(ptr noundef %.val.i55) #19
  %i.ai = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.af, ptr noundef nonnull @.str.210, ptr noundef %i.ah) #19 ; 0 uses
  br label %os_link_impl.exit

dir_fd_converter.exit56:                          ; preds = %bb.m
  %i.aj = call fastcc i32 @_fd_converter(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.c)
  %.not48 = icmp eq i32 %i.aj, 0
  br i1 %.not48, label %os_link_impl.exit, label %bb.n

bb.n:                                             ; preds = %dir_fd_converter.exit56.thread74, %dir_fd_converter.exit56
  %i.ak = icmp ugt i64 %.030, 1
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.al = getelementptr i8, ptr %i.l, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1581
  %i.an = call i32 @PyObject_IsTrue(ptr noundef %i.am) #19 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %os_link_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.j, %bb.f
  %.0 = phi i32 [ %i.an, %bb.o ], [ -1, %bb.n ], [ -1, %bb.j ], [ -1, %bb.f ]
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !16  ; 3 uses
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !16  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val49 = load ptr, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.val50 = load ptr, ptr %i.as, align 8, !tbaa !1616 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.val51 = load ptr, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.val52 = load ptr, ptr %i.au, align 8, !tbaa !1616 ; 2 uses
  %i.av = icmp eq i32 %i.ap, -100
  %i.aw = select i1 %i.av, i32 -1, i32 %i.ap
  %i.ax = icmp eq i32 %i.aq, -100
  %i.ay = select i1 %i.ax, i32 -1, i32 %i.aq
  %i.az = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.239, ptr noundef %.val50, ptr noundef %.val52, i32 noundef %i.aw, i32 noundef %i.ay) #19
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %os_link_impl.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = call ptr @PyEval_SaveThread() #19
  %.not16.i = icmp eq i32 %.0, 0
  %i.bc = select i1 %.not16.i, i32 0, i32 1024
  %i.bd = call i32 @linkat(i32 noundef %i.ap, ptr noundef %.val49, i32 noundef %i.aq, ptr noundef %.val51, i32 noundef %i.bc) #19
  call void @PyEval_RestoreThread(ptr noundef %i.bb) #19
  %.not.i57 = icmp eq i32 %i.bd, 0
  br i1 %.not.i57, label %os_link_impl.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.bf = call ptr @PyErr_SetFromErrnoWithFilenameObjects(ptr noundef %i.be, ptr noundef %.val50, ptr noundef %.val52) #19
  br label %os_link_impl.exit

os_link_impl.exit:                                ; preds = %bb.r, %bb.q, %bb.p, %dir_fd_converter.exit56.thread, %dir_fd_converter.exit.thread, %bb.o, %dir_fd_converter.exit56, %dir_fd_converter.exit, %bb.e, %.thread, %bb.d
end_hunk_0
begin_hunk_1_@stat_nanosecond_timestamp:bb.a
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.e, align 8, !tbaa !1590
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %Py_XDECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #19
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.f, %.thread, %bb.g, %bb.h
  %.037 = phi ptr [ null, %bb.f ], [ %.036, %.thread ], [ %.036, %bb.g ], [ %.036, %bb.h ] ; 4 uses
  %.02035 = phi ptr [ null, %bb.f ], [ %.02034, %.thread ], [ %.02034, %bb.g ], [ %.02034, %bb.h ] ; 4 uses
  br i1 %i.h, label %Py_XDECREF.exit28, label %bb.i

bb.i:                                             ; preds = %Py_XDECREF.exit
  %i.p = load i32, ptr %i.f, align 8, !tbaa !1590 ; 2 uses
  %.not.i.i27 = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i27, label %bb.j, label %Py_XDECREF.exit28

bb.j:                                             ; preds = %bb.i
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.f, align 8, !tbaa !1590
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.k, label %Py_XDECREF.exit28

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #19
  br label %Py_XDECREF.exit28

Py_XDECREF.exit28:                                ; preds = %Py_XDECREF.exit, %bb.i, %bb.j, %bb.k
  %.not.i29 = icmp eq ptr %.037, null
  br i1 %.not.i29, label %Py_XDECREF.exit31, label %bb.l

bb.l:                                             ; preds = %Py_XDECREF.exit28
  %i.s = load i32, ptr %.037, align 8, !tbaa !1590 ; 2 uses
  %.not.i.i30 = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i30, label %bb.m, label %Py_XDECREF.exit31

bb.m:                                             ; preds = %bb.l
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %.037, align 8, !tbaa !1590
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.n, label %Py_XDECREF.exit31

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %.037) #19
  br label %Py_XDECREF.exit31

Py_XDECREF.exit31:                                ; preds = %bb.n, %bb.m, %bb.l, %Py_XDECREF.exit28, %bb.b
  %.021 = phi ptr [ %i.d, %bb.b ], [ %.02035, %Py_XDECREF.exit28 ], [ %.02035, %bb.l ], [ %.02035, %bb.m ], [ %.02035, %bb.n ]
  ret ptr %.021
}

declare ptr @PyNumber_Multiply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsNativeBytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare extern_weak i32 @statx(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @faccessat(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc ptr @os_ttyname_impl(i32 noundef %0) unnamed_addr #0 !guid !1938 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 72) #19 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.d = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.c) #19
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyMem_RawMalloc(i64 noundef %i.a) #19 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyErr_NoMemory() #19
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i32 @ttyname_r(i32 noundef %0, ptr noundef nonnull %i.e, i64 noundef %i.a) #19 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.e) #19
  %i.i = tail call ptr @__errno_location() #21
  store i32 %i.h, ptr %i.i, align 4, !tbaa !16
  %i.j = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.k = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.j) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef nonnull %i.e) #19
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.e) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.2 = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  ret ptr %.2
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #4

declare ptr @PyMem_RawMalloc(i64 noundef) local_unnamed_addr #2

declare ptr @PyErr_NoMemory() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ttyname_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @PyMem_RawFree(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_DecodeFSDefault(ptr noundef) local_unnamed_addr #2

declare i32 @PySys_Audit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchdir(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fchmodat(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc ptr @os_fchmod_impl(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !guid !1940 {
bb.a:
  %i.a = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.228, i32 noundef %0, i32 noundef %1, i32 noundef -1) #19
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.critedge12, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %i.c = tail call ptr @PyEval_SaveThread() #19
  %i.d = tail call i32 @fchmod(i32 noundef %0, i32 noundef %1) #19
  tail call void @PyEval_RestoreThread(ptr noundef %i.c) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge12, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = tail call ptr @__errno_location() #21
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @PyErr_CheckSignals() #19
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %.preheader, label %.critedge12, !llvm.loop !1939

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.j = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.i) #19
  br label %.critedge12

.critedge12:                                      ; preds = %bb.c, %.preheader, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.j, %bb.d ], [ null, %bb.c ], [ @_Py_NoneStruct, %.preheader ]
  ret ptr %.1
}

declare i32 @PyErr_CheckSignals() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @lchown(ptr noundef readonly captures(none), i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @fchownat(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @chown(ptr noundef readonly captures(none), i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @chroot(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef ptr @ctermid(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc ptr @posix_getcwd(i32 noundef range(i32 0, 2) %0) unnamed_addr #0 !guid !1942 {
bb.a:
  %i.a = tail call ptr @PyEval_SaveThread() #19   ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %.not54 = icmp eq i64 %i.b, 9223372036854774784
  br i1 %.not54, label %.thread, label %bb.c, !llvm.loop !1941

bb.c:                                             ; preds = %bb.a, %bb.b
  %.02670 = phi i64 [ 0, %bb.a ], [ %i.b, %bb.b ]
  %.02969 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.b = add nuw nsw i64 %.02670, 1024            ; 4 uses
  %i.c = tail call ptr @PyMem_RawRealloc(ptr noundef %.02969, i64 noundef %i.b) #19 ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @getcwd(ptr noundef nonnull %i.c, i64 noundef %i.b) #19
  %.not55 = icmp eq ptr %i.e, null
  br i1 %.not55, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @__errno_location() #21
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = icmp eq i32 %i.g, 34
  br i1 %i.h, label %bb.b, label %.thread53, !llvm.loop !1941

.thread53:                                        ; preds = %bb.e
  tail call void @PyEval_RestoreThread(ptr noundef %i.a) #19
  %i.i = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.j = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.i) #19 ; 0 uses
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.c) #19
  br label %bb.l

.thread:                                          ; preds = %bb.b, %bb.c
  %.029.lcssa = phi ptr [ %i.c, %bb.b ], [ %.02969, %bb.c ]
  tail call void @PyMem_RawFree(ptr noundef %.029.lcssa) #19
  tail call void @PyEval_RestoreThread(ptr noundef %i.a) #19
  %i.k = tail call ptr @PyErr_NoMemory() #19
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  tail call void @PyEval_RestoreThread(ptr noundef %i.a) #19
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #22
  %i.m = tail call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.c, i64 noundef %i.l) #19
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef nonnull %i.c) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi ptr [ %i.m, %bb.g ], [ %i.n, %bb.h ]  ; 2 uses
  %i.o = load i8, ptr %i.c, align 1, !tbaa !1590
  %.not33 = icmp eq i8 %i.o, 47
  br i1 %.not33, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @__errno_location() #21
  store i32 2, ptr %i.p, align 4, !tbaa !16
  %i.q = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.r = tail call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.q, ptr noundef %.0) #19 ; 0 uses
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.c) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.c) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.thread53, %.thread
  %.132 = phi ptr [ %i.k, %.thread ], [ null, %.thread53 ], [ null, %bb.j ], [ %.0, %bb.k ]
  ret ptr %.132
}

declare ptr @PyMem_RawRealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @linkat(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @PyErr_SetFromErrnoWithFilenameObjects(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_Py_dup(i32 noundef) local_unnamed_addr #2

declare noalias ptr @fdopendir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #10

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #2

declare ptr @readdir64(ptr noundef) local_unnamed_addr #2

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @rewinddir(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @mkdirat(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @nice(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getpriority(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @py_posix_spawn(i32 noundef range(i32 0, 2) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef range(i32 0, -2147483648) %7, i32 noundef range(i32 0, -2147483648) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) unnamed_addr #0 !guid !1943 {
bb.a:
  %12 = alloca %struct.__sigset_t, align 8        ; 5 uses
  %13 = alloca %struct.__sigset_t, align 8        ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %struct.sched_param, align 4       ; 5 uses
  %15 = alloca %struct.posix_spawn_file_actions_t, align 8 ; 4 uses
  %16 = alloca %struct.posix_spawnattr_t, align 8 ; 15 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq i32 %0, 0                       ; 2 uses
  %i.f = select i1 %.not, ptr @.str.34, ptr @.str.35 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.g = getelementptr i8, ptr %3, i64 8
  %.val97 = load ptr, ptr %i.g, align 8, !tbaa !1583
  %i.h = getelementptr i8, ptr %.val97, i64 168
  %.val100 = load i64, ptr %i.h, align 8, !tbaa !1588
  %i.i = and i64 %.val100, 100663296
  %or.cond162 = icmp eq i64 %i.i, 0
  br i1 %or.cond162, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !1581
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.253, ptr noundef nonnull %i.f) #19 ; 0 uses
  br label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i64 @PySequence_Size(ptr noundef nonnull %3) #19 ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !1617
  %i.m = icmp slt i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !1581
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.254, ptr noundef nonnull %i.f) #19 ; 0 uses
  br label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call i32 @PyMapping_Check(ptr noundef %4) #19
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp ne ptr %4, @_Py_NoneStruct          ; 2 uses
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !1581
  %i.t = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.s, ptr noundef nonnull @.str.255, ptr noundef nonnull %i.f) #19 ; 0 uses
  br label %Py_XDECREF.exit

bb.g:                                             ; preds = %bb.e
  %.not84 = icmp ne ptr %11, null                 ; 2 uses
  br i1 %.not84, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %11, i64 8
  %.val = load ptr, ptr %i.u, align 8, !tbaa !1583
  %i.v = getelementptr i8, ptr %.val, i64 168
  %.val98 = load i64, ptr %i.v, align 8, !tbaa !1588
  %i.w = and i64 %.val98, 67108864
  %i.x = icmp eq i64 %i.w, 0
  %i.y = icmp ne ptr %11, @_Py_NoneStruct
  %or.cond3 = and i1 %i.y, %i.x
  br i1 %or.cond3, label %bb.i, label %bb.j

end_hunk_1
