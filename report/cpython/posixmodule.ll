inline.NumInlined: 800
inline.NumDeleted: 249
begin_hunk_0_@os_getsid:bb.a
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.split4, label %os_getsid_impl.exit

.split4:                                          ; preds = %bb.d
  %i.j = tail call i32 @getsid(i32 noundef -1) #19 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split4
  %i.l = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.m = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.l) #19
  br label %os_getsid_impl.exit

bb.f:                                             ; preds = %.split4
  %i.n = zext nneg i32 %i.j to i64
  %i.o = tail call ptr @PyLong_FromLong(i64 noundef %i.n) #19
  br label %os_getsid_impl.exit

os_getsid_impl.exit:                              ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.h, %bb.c ], [ %i.f, %bb.b ], [ %i.m, %bb.e ], [ %i.o, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_setsid(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @setsid() #19
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %os_setsid_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.d = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.c) #19
  br label %os_setsid_impl.exit

os_setsid_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @os_setpgid(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.102, i64 noundef %2, i64 noundef 2, i64 noundef 2) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %os_setpgid_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 3 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.e, label %os_setpgid_impl.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call i32 @PyLong_AsInt(ptr noundef %i.g) #19 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.j = tail call i32 @setpgid(i32 noundef %i.c, i32 noundef %i.h) #19
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %os_setpgid_impl.exit.sink.split, label %os_setpgid_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @PyErr_Occurred() #19
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %.split11, label %os_setpgid_impl.exit

.split11:                                         ; preds = %bb.f
  %i.m = tail call i32 @setpgid(i32 noundef %i.c, i32 noundef -1) #19
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %os_setpgid_impl.exit.sink.split, label %os_setpgid_impl.exit

os_setpgid_impl.exit.sink.split:                  ; preds = %.split11, %.split
  %i.o = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.p = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.o) #19
  br label %os_setpgid_impl.exit

os_setpgid_impl.exit:                             ; preds = %os_setpgid_impl.exit.sink.split, %.split11, %.split, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ @_Py_NoneStruct, %.split ], [ @_Py_NoneStruct, %.split11 ], [ %i.p, %os_setpgid_impl.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_tcgetpgrp(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #19 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.d, label %.split

.split:                                           ; preds = %bb.a
  %i.c = tail call i32 @tcgetpgrp(i32 noundef %i.a) #19 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split
  %i.e = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.f = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.e) #19
  br label %os_tcgetpgrp_impl.exit

bb.c:                                             ; preds = %.split
  %i.g = zext nneg i32 %i.c to i64
  %i.h = tail call ptr @PyLong_FromLong(i64 noundef %i.g) #19
  br label %os_tcgetpgrp_impl.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyErr_Occurred() #19
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.split4, label %os_tcgetpgrp_impl.exit

.split4:                                          ; preds = %bb.d
  %i.j = tail call i32 @tcgetpgrp(i32 noundef -1) #19 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split4
  %i.l = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.m = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.l) #19
  br label %os_tcgetpgrp_impl.exit

bb.f:                                             ; preds = %.split4
  %i.n = zext nneg i32 %i.j to i64
  %i.o = tail call ptr @PyLong_FromLong(i64 noundef %i.n) #19
  br label %os_tcgetpgrp_impl.exit

os_tcgetpgrp_impl.exit:                           ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.h, %bb.c ], [ %i.f, %bb.b ], [ %i.m, %bb.e ], [ %i.o, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_tcsetpgrp(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.104, i64 noundef %2, i64 noundef 2, i64 noundef 2) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %os_tcsetpgrp_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 3 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyErr_Occurred() #19
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.e, label %os_tcsetpgrp_impl.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call i32 @PyLong_AsInt(ptr noundef %i.g) #19 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.j = tail call i32 @tcsetpgrp(i32 noundef %i.c, i32 noundef %i.h) #19
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %os_tcsetpgrp_impl.exit.sink.split, label %os_tcsetpgrp_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @PyErr_Occurred() #19
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %.split11, label %os_tcsetpgrp_impl.exit

.split11:                                         ; preds = %bb.f
  %i.m = tail call i32 @tcsetpgrp(i32 noundef %i.c, i32 noundef -1) #19
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %os_tcsetpgrp_impl.exit.sink.split, label %os_tcsetpgrp_impl.exit

os_tcsetpgrp_impl.exit.sink.split:                ; preds = %.split11, %.split
  %i.o = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.p = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.o) #19
  br label %os_tcsetpgrp_impl.exit

os_tcsetpgrp_impl.exit:                           ; preds = %os_tcsetpgrp_impl.exit.sink.split, %.split11, %.split, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.b ], [ @_Py_NoneStruct, %.split ], [ @_Py_NoneStruct, %.split11 ], [ %i.p, %os_tcsetpgrp_impl.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_open(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.path_t, align 8             ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %i.d, %2                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) @__const.os_open.path, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 -100, ptr %i.b, align 4, !tbaa !7
  %i.f = and i64 %2, -2
  %i.g = icmp eq i64 %i.f, 2
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %.not, %i.i
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_open._parser, i32 noundef 2, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not39 = icmp eq ptr %i.j, null
  br i1 %.not39, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = call fastcc i32 @path_converter(ptr noundef %i.l, ptr noundef %4)
  %.not40 = icmp eq i32 %i.m, 0
  br i1 %.not40, label %bb.r, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.p = call i32 @PyLong_AsInt(ptr noundef %i.o) #19 ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = call ptr @PyErr_Occurred() #19
  %.not41 = icmp eq ptr %i.r, null
  br i1 %.not41, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not42 = icmp eq i64 %i.e, 2
  br i1 %.not42, label %thread-pre-split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108  ; 2 uses
  %.not43 = icmp eq ptr %i.t, null
  br i1 %.not43, label %.thread58, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 @PyLong_AsInt(ptr noundef nonnull %i.t) #19 ; 3 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = call ptr @PyErr_Occurred() #19
  %.not44 = icmp eq ptr %i.w, null
  br i1 %.not44, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.x = icmp eq i64 %i.e, 3
  br i1 %i.x, label %thread-pre-split, label %.thread58

.thread58:                                        ; preds = %bb.h, %bb.k
  %.061 = phi i32 [ %i.u, %bb.k ], [ 511, %bb.h ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.k, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !108  ; 4 uses
  %i.aa = icmp eq ptr %i.z, @_Py_NoneStruct
  br i1 %i.aa, label %thread-pre-split, label %bb.l

bb.l:                                             ; preds = %.thread58
  %i.ab = call i32 @PyIndex_Check(ptr noundef %i.z) #19
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %dir_fd_converter.exit.thread, label %dir_fd_converter.exit

dir_fd_converter.exit.thread:                     ; preds = %bb.l
  %i.ac = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !108
  %i.ad = getelementptr i8, ptr %i.z, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !110
  %i.ae = call ptr @_PyType_Name(ptr noundef %.val.i) #19
  %i.af = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ac, ptr noundef nonnull @.str.210, ptr noundef %i.ae) #19 ; 0 uses
  br label %bb.r

dir_fd_converter.exit:                            ; preds = %bb.l
  %i.ag = call fastcc i32 @_fd_converter(ptr noundef %i.z, ptr noundef nonnull %i.b)
  %.not46 = icmp eq i32 %i.ag, 0
  br i1 %.not46, label %bb.r, label %dir_fd_converter.exit.thread-pre-split_crit_edge

dir_fd_converter.exit.thread-pre-split_crit_edge: ; preds = %dir_fd_converter.exit
  %.pr.pre = load i32, ptr %i.b, align 4, !tbaa !7
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.thread58, %bb.k, %bb.g, %dir_fd_converter.exit.thread-pre-split_crit_edge
  %i.ah = phi i32 [ -100, %bb.g ], [ -100, %bb.k ], [ %.pr.pre, %dir_fd_converter.exit.thread-pre-split_crit_edge ], [ -100, %.thread58 ] ; 2 uses
  %.057 = phi i32 [ 511, %bb.g ], [ %i.u, %bb.k ], [ %.061, %dir_fd_converter.exit.thread-pre-split_crit_edge ], [ %.061, %.thread58 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val48 = load ptr, ptr %i.ai, align 8          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.val49 = load ptr, ptr %i.aj, align 8, !tbaa !156 ; 2 uses
  %i.ak = or i32 %i.p, 524288                     ; 3 uses
  %i.al = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.283, ptr noundef %.val49, ptr noundef nonnull @_Py_NoneStruct, i32 noundef %i.ak) #19
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %thread-pre-split
  %.not.i50 = icmp eq i32 %i.ah, -100
  br i1 %.not.i50, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %bb.n
  %i.an = call ptr @PyEval_SaveThread() #19
  %i.ao = call i32 (ptr, i32, ...) @open64(ptr noundef %.val48, i32 noundef %i.ak, i32 noundef %.057) #19 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.an) #19
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %.critedge26.i

bb.m:                                             ; preds = %.preheader.split.us.i
  %i.aq = tail call ptr @__errno_location() #21
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = icmp eq i32 %i.ar, 4
  br i1 %i.as, label %bb.n, label %.split.us.i

bb.n:                                             ; preds = %bb.m
  %i.at = call i32 @PyErr_CheckSignals() #19
  %.not24.us.i = icmp eq i32 %i.at, 0
  br i1 %.not24.us.i, label %.preheader.split.us.i, label %.loopexit, !llvm.loop !182

.preheader.split.i:                               ; preds = %.preheader.i, %bb.p
  %i.au = call ptr @PyEval_SaveThread() #19
  %i.av = call i32 (i32, ptr, i32, ...) @openat64(i32 noundef %i.ah, ptr noundef %.val48, i32 noundef %i.ak, i32 noundef %.057) #19 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.au) #19
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %.critedge26.i

bb.o:                                             ; preds = %.preheader.split.i
  %i.ax = tail call ptr @__errno_location() #21
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.az = icmp eq i32 %i.ay, 4
  br i1 %i.az, label %bb.p, label %.split.us.i

bb.p:                                             ; preds = %bb.o
  %i.ba = call i32 @PyErr_CheckSignals() #19
  %.not24.i = icmp eq i32 %i.ba, 0
  br i1 %.not24.i, label %.preheader.split.i, label %.loopexit, !llvm.loop !182

.split.us.i:                                      ; preds = %bb.o, %bb.m
  %i.bb = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.bc = call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.bb, ptr noundef %.val49) #19 ; 0 uses
  br label %.loopexit

.critedge26.i:                                    ; preds = %.preheader.split.i, %.preheader.split.us.i
  %.us-phi.i = phi i32 [ %i.ao, %.preheader.split.us.i ], [ %i.av, %.preheader.split.i ] ; 3 uses
  %i.bd = call i32 @_Py_set_inheritable(i32 noundef %.us-phi.i, i32 noundef 0, ptr noundef nonnull @_Py_open_cloexec_works) #19
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.q, label %os_open_impl.exit

bb.q:                                             ; preds = %.critedge26.i
  %i.bf = call i32 @close(i32 noundef %.us-phi.i) #19 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.n, %bb.q, %thread-pre-split, %.split.us.i
  %i.bg = call ptr @PyErr_Occurred() #19
  %.not47 = icmp eq ptr %i.bg, null
  br i1 %.not47, label %os_open_impl.exit, label %bb.r

os_open_impl.exit:                                ; preds = %.critedge26.i, %.loopexit
  %.0.i5168 = phi i32 [ -1, %.loopexit ], [ %.us-phi.i, %.critedge26.i ]
  %i.bh = sext i32 %.0.i5168 to i64
  %i.bi = call ptr @PyLong_FromLong(i64 noundef %i.bh) #19
  br label %bb.r

bb.r:                                             ; preds = %dir_fd_converter.exit.thread, %.loopexit, %dir_fd_converter.exit, %bb.j, %bb.f, %.thread, %bb.d, %os_open_impl.exit
  %.032 = phi ptr [ null, %bb.f ], [ null, %bb.j ], [ null, %.loopexit ], [ %i.bi, %os_open_impl.exit ], [ null, %dir_fd_converter.exit ], [ null, %.thread ], [ null, %bb.d ], [ null, %dir_fd_converter.exit.thread ]
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !148
  call void @PyMem_Free(ptr noundef %i.bk) #19
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !108 ; 4 uses
  %.not.i52 = icmp eq ptr %i.bm, null
  br i1 %.not.i52, label %Py_DECREF.exit16.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !118 ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.bn, -1
  br i1 %.not.i15.i, label %bb.t, label %Py_DECREF.exit16.i

bb.t:                                             ; preds = %bb.s
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !118
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.u, label %Py_DECREF.exit16.i

bb.u:                                             ; preds = %bb.t
  call void @_Py_Dealloc(ptr noundef nonnull %i.bm) #19
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 4 uses
  %.not14.i = icmp eq ptr %i.br, null
  br i1 %.not14.i, label %path_cleanup.exit, label %bb.v

bb.v:                                             ; preds = %Py_DECREF.exit16.i
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !118 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bs, -1
  br i1 %.not.i.i, label %bb.w, label %path_cleanup.exit

bb.w:                                             ; preds = %bb.v
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !118
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.x, label %path_cleanup.exit

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.br) #19
  br label %path_cleanup.exit

path_cleanup.exit:                                ; preds = %Py_DECREF.exit16.i, %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.032
}

; Function Attrs: nounwind uwtable
define internal ptr @os_close(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i64 %2, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_close._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %os_close_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = call i32 @PyLong_AsInt(ptr noundef %i.g) #19 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %.split

.split:                                           ; preds = %.thread
  %i.j = call ptr @PyEval_SaveThread() #19
  %i.k = call i32 @close(i32 noundef %i.h) #19
  call void @PyEval_RestoreThread(ptr noundef %i.j) #19
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %os_close_impl.exit.sink.split, label %os_close_impl.exit

bb.c:                                             ; preds = %.thread
  %i.m = call ptr @PyErr_Occurred() #19
  %.not22 = icmp eq ptr %i.m, null
  br i1 %.not22, label %.split18, label %os_close_impl.exit

.split18:                                         ; preds = %bb.c
  %i.n = call ptr @PyEval_SaveThread() #19
  %i.o = call i32 @close(i32 noundef -1) #19
  call void @PyEval_RestoreThread(ptr noundef %i.n) #19
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %os_close_impl.exit.sink.split, label %os_close_impl.exit

os_close_impl.exit.sink.split:                    ; preds = %.split18, %.split
  %i.q = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.r = call ptr @PyErr_SetFromErrno(ptr noundef %i.q) #19
  br label %os_close_impl.exit

os_close_impl.exit:                               ; preds = %os_close_impl.exit.sink.split, %.split18, %.split, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ @_Py_NoneStruct, %.split ], [ @_Py_NoneStruct, %.split18 ], [ %i.r, %os_close_impl.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @os_closerange(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.107, i64 noundef %2, i64 noundef 2, i64 noundef 2) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !108
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %i.b) #19 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@os_fstat:bb.a
  br i1 %.not, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = call i32 @PyLong_AsInt(ptr noundef %i.g) #19 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %.thread
  %i.j = call ptr @PyErr_Occurred() #19
  %.not22 = icmp eq ptr %i.j, null
  br i1 %.not22, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %.thread
  %.sink = phi i32 [ %i.h, %.thread ], [ -1, %bb.c ]
  %i.k = call fastcc ptr @os_fstat_impl(ptr noundef %0, i32 noundef %.sink)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ %i.k, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_isatty(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #19 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #19
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.split, label %bb.e

.split:                                           ; preds = %bb.b, %bb.a
  %.sink10 = phi i32 [ %i.a, %bb.a ], [ -1, %bb.b ]
  %i.d = tail call ptr @PyEval_SaveThread() #19
  %i.e = tail call i32 @isatty(i32 noundef %.sink10) #19 ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.d) #19
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split
  %i.g = tail call ptr @PyErr_Occurred() #19
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.split
  %i.h = sext i32 %i.e to i64
  %i.i = tail call ptr @PyBool_FromLong(i64 noundef %i.h) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.i, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_pipe(ptr readnone captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = tail call ptr @PyEval_SaveThread() #19
  %i.c = call i32 @pipe2(ptr noundef nonnull %i.a, i32 noundef 524288) #19
  call void @PyEval_RestoreThread(ptr noundef %i.b) #19
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #21
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = icmp eq i32 %i.e, 38
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @PyEval_SaveThread() #19
  %i.h = call i32 @pipe(ptr noundef nonnull %i.a) #19
  call void @PyEval_RestoreThread(ptr noundef %i.g) #19
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 4, !tbaa !7
  %i.k = call i32 @_Py_set_inheritable(i32 noundef %i.j, i32 noundef 0, ptr noundef null) #19
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.a, align 4, !tbaa !7
  %i.n = call i32 @close(i32 noundef %i.m) #19    ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = call i32 @close(i32 noundef %i.p) #19    ; 0 uses
  br label %os_pipe_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = call i32 @_Py_set_inheritable(i32 noundef %i.s, i32 noundef 0, ptr noundef null) #19
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.a, align 4, !tbaa !7
  %i.w = call i32 @close(i32 noundef %i.v) #19    ; 0 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !7
  %i.y = call i32 @close(i32 noundef %i.x) #19    ; 0 uses
  br label %os_pipe_impl.exit

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.z = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.aa = call ptr @PyErr_SetFromErrno(ptr noundef %i.z) #19
  br label %os_pipe_impl.exit

.critedge.i:                                      ; preds = %bb.f, %bb.a
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.323, i32 noundef %i.ab, i32 noundef %i.ad) #19
  br label %os_pipe_impl.exit

os_pipe_impl.exit:                                ; preds = %bb.e, %bb.g, %bb.h, %.critedge.i
  %.0.i = phi ptr [ null, %bb.e ], [ null, %bb.g ], [ %i.aa, %bb.h ], [ %i.ae, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @os_pipe2(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = tail call i32 @PyLong_AsInt(ptr noundef %1) #19 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %.split

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.e = call i32 @pipe2(ptr noundef nonnull %i.b, i32 noundef %i.c) #19
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split
  %i.f = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.g = call ptr @PyErr_SetFromErrno(ptr noundef %i.f) #19
  br label %os_pipe2_impl.exit

bb.c:                                             ; preds = %.split
  %i.h = load i32, ptr %i.b, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.323, i32 noundef %i.h, i32 noundef %i.j) #19
  br label %os_pipe2_impl.exit

os_pipe2_impl.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.l = tail call ptr @PyErr_Occurred() #19
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.split4, label %bb.g

.split4:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.m = call i32 @pipe2(ptr noundef nonnull %i.a, i32 noundef -1) #19
  %.not.i6 = icmp eq i32 %i.m, 0
  br i1 %.not.i6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split4
  %i.n = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.o = call ptr @PyErr_SetFromErrno(ptr noundef %i.n) #19
  br label %os_pipe2_impl.exit8

bb.f:                                             ; preds = %.split4
  %i.p = load i32, ptr %i.a, align 4, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.323, i32 noundef %i.p, i32 noundef %i.r) #19
  br label %os_pipe2_impl.exit8

os_pipe2_impl.exit8:                              ; preds = %bb.e, %bb.f
  %.0.i7 = phi ptr [ %i.o, %bb.e ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %os_pipe2_impl.exit, %os_pipe2_impl.exit8, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %.0.i, %os_pipe2_impl.exit ], [ %.0.i7, %os_pipe2_impl.exit8 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_mkfifo(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.path_t, align 8             ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %i.d, %2                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) @__const.os_mkfifo.path, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 -100, ptr %i.b, align 4, !tbaa !7
  %i.f = add i64 %2, -1
  %i.g = icmp ult i64 %i.f, 2
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %.not, %i.i
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_mkfifo._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not34 = icmp eq ptr %i.j, null
  br i1 %.not34, label %os_mkfifo_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = call fastcc i32 @path_converter(ptr noundef %i.l, ptr noundef %4)
  %.not35 = icmp eq i32 %i.m, 0
  br i1 %.not35, label %os_mkfifo_impl.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not36 = icmp eq i64 %i.e, 1
  br i1 %.not36, label %thread-pre-split.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108  ; 2 uses
  %.not37 = icmp eq ptr %i.o, null
  br i1 %.not37, label %.thread51, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @PyLong_AsInt(ptr noundef nonnull %i.o) #19 ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @PyErr_Occurred() #19
  %.not38 = icmp eq ptr %i.r, null
  br i1 %.not38, label %bb.i, label %os_mkfifo_impl.exit

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.s = icmp eq i64 %i.e, 2
  br i1 %i.s, label %thread-pre-split.thread, label %.thread51

.thread51:                                        ; preds = %bb.f, %bb.i
  %.054 = phi i32 [ %i.p, %bb.i ], [ 438, %bb.f ] ; 3 uses
  %i.t = getelementptr i8, ptr %i.k, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108  ; 4 uses
  %i.v = icmp eq ptr %i.u, @_Py_NoneStruct
  br i1 %i.v, label %thread-pre-split.thread, label %bb.j

bb.j:                                             ; preds = %.thread51
  %i.w = call i32 @PyIndex_Check(ptr noundef %i.u) #19
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %dir_fd_converter.exit.thread, label %dir_fd_converter.exit

dir_fd_converter.exit.thread:                     ; preds = %bb.j
  %i.x = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !108
  %i.y = getelementptr i8, ptr %i.u, i64 8
  %.val.i = load ptr, ptr %i.y, align 8, !tbaa !110
  %i.z = call ptr @_PyType_Name(ptr noundef %.val.i) #19
  %i.aa = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.x, ptr noundef nonnull @.str.210, ptr noundef %i.z) #19 ; 0 uses
  br label %os_mkfifo_impl.exit

dir_fd_converter.exit:                            ; preds = %bb.j
  %i.ab = call fastcc i32 @_fd_converter(ptr noundef %i.u, ptr noundef nonnull %i.b)
  %.not40 = icmp eq i32 %i.ab, 0
  br i1 %.not40, label %os_mkfifo_impl.exit, label %thread-pre-split

thread-pre-split.thread:                          ; preds = %.thread51, %bb.i, %bb.e
  %.050.ph = phi i32 [ 438, %bb.e ], [ %i.p, %bb.i ], [ %.054, %.thread51 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val4178 = load ptr, ptr %i.ac, align 8
  br label %.split.us.i.preheader

thread-pre-split:                                 ; preds = %dir_fd_converter.exit
  %.pr.pre = load i32, ptr %i.b, align 4, !tbaa !7 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val41 = load ptr, ptr %i.ad, align 8          ; 2 uses
  %.not.i42 = icmp eq i32 %.pr.pre, -100
  br i1 %.not.i42, label %.split.us.i.preheader, label %.split.i

.split.us.i.preheader:                            ; preds = %thread-pre-split.thread, %thread-pre-split
  %.val4181 = phi ptr [ %.val4178, %thread-pre-split.thread ], [ %.val41, %thread-pre-split ]
  %.05080 = phi i32 [ %.050.ph, %thread-pre-split.thread ], [ %.054, %thread-pre-split ]
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i.preheader, %bb.l
  %i.ae = call ptr @PyEval_SaveThread() #19
  %i.af = call i32 @mkfifo(ptr noundef %.val4181, i32 noundef %.05080) #19
  call void @PyEval_RestoreThread(ptr noundef %i.ae) #19
  %.not14.us.i = icmp eq i32 %i.af, 0
  br i1 %.not14.us.i, label %os_mkfifo_impl.exit, label %bb.k

bb.k:                                             ; preds = %.split.us.i
  %i.ag = tail call ptr @__errno_location() #21
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = icmp eq i32 %i.ah, 4
  br i1 %i.ai, label %bb.l, label %.split4.us.i

bb.l:                                             ; preds = %bb.k
  %i.aj = call i32 @PyErr_CheckSignals() #19
  %.not15.us.i = icmp eq i32 %i.aj, 0
  br i1 %.not15.us.i, label %.split.us.i, label %os_mkfifo_impl.exit, !llvm.loop !196

.split.i:                                         ; preds = %thread-pre-split, %bb.n
  %i.ak = call ptr @PyEval_SaveThread() #19
  %i.al = call i32 @mkfifoat(i32 noundef %.pr.pre, ptr noundef %.val41, i32 noundef %.054) #19
  call void @PyEval_RestoreThread(ptr noundef %i.ak) #19
  %.not14.i = icmp eq i32 %i.al, 0
  br i1 %.not14.i, label %os_mkfifo_impl.exit, label %bb.m

bb.m:                                             ; preds = %.split.i
  %i.am = tail call ptr @__errno_location() #21
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = icmp eq i32 %i.an, 4
  br i1 %i.ao, label %bb.n, label %.split4.us.i

bb.n:                                             ; preds = %bb.m
  %i.ap = call i32 @PyErr_CheckSignals() #19
  %.not15.i = icmp eq i32 %i.ap, 0
  br i1 %.not15.i, label %.split.i, label %os_mkfifo_impl.exit, !llvm.loop !196

.split4.us.i:                                     ; preds = %bb.m, %bb.k
  %i.aq = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.ar = call ptr @PyErr_SetFromErrno(ptr noundef %i.aq) #19
  br label %os_mkfifo_impl.exit

os_mkfifo_impl.exit:                              ; preds = %bb.n, %.split.i, %bb.l, %.split.us.i, %.split4.us.i, %dir_fd_converter.exit.thread, %dir_fd_converter.exit, %bb.h, %.thread, %bb.d
  %.028 = phi ptr [ null, %bb.h ], [ null, %dir_fd_converter.exit.thread ], [ null, %dir_fd_converter.exit ], [ null, %.thread ], [ null, %bb.d ], [ %i.ar, %.split4.us.i ], [ @_Py_NoneStruct, %.split.us.i ], [ null, %bb.l ], [ @_Py_NoneStruct, %.split.i ], [ null, %bb.n ]
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !148
  call void @PyMem_Free(ptr noundef %i.at) #19
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !108 ; 4 uses
  %.not.i44 = icmp eq ptr %i.av, null
  br i1 %.not.i44, label %Py_DECREF.exit16.i, label %bb.o

bb.o:                                             ; preds = %os_mkfifo_impl.exit
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !118 ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.aw, -1
  br i1 %.not.i15.i, label %bb.p, label %Py_DECREF.exit16.i

bb.p:                                             ; preds = %bb.o
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !118
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.q, label %Py_DECREF.exit16.i

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.av) #19
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %bb.q, %bb.p, %bb.o, %os_mkfifo_impl.exit
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !108 ; 4 uses
  %.not14.i45 = icmp eq ptr %i.ba, null
  br i1 %.not14.i45, label %path_cleanup.exit, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit16.i
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !118 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bb, -1
  br i1 %.not.i.i, label %bb.s, label %path_cleanup.exit

bb.s:                                             ; preds = %bb.r
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !118
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.t, label %path_cleanup.exit

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.ba) #19
  br label %path_cleanup.exit

path_cleanup.exit:                                ; preds = %Py_DECREF.exit16.i, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.028
}

; Function Attrs: nounwind uwtable
define internal ptr @os_mknod(ptr readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.path_t, align 8             ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.f = add i64 %i.e, %2                         ; 2 uses
  %i.g = add i64 %i.f, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) @__const.os_mknod.path, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 0, ptr %i.b, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 -100, ptr %i.c, align 4, !tbaa !7
  %i.h = add i64 %2, -1
  %i.i = icmp ult i64 %i.h, 3
  %i.j = icmp ne ptr %1, null
  %i.k = and i1 %i.j, %i.i
  %or.cond5 = and i1 %.not, %i.k
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @os_mknod._parser, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not42 = icmp eq ptr %i.l, null
  br i1 %.not42, label %os_mknod_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.l, %bb.d ], [ %1, %bb.c ]   ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !108
  %i.o = call fastcc i32 @path_converter(ptr noundef %i.n, ptr noundef %4)
  %.not43 = icmp eq i32 %i.o, 0
  br i1 %.not43, label %os_mknod_impl.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not44 = icmp eq i64 %i.g, 0
  br i1 %.not44, label %thread-pre-split.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108  ; 2 uses
  %.not45 = icmp eq ptr %i.q, null
  br i1 %.not45, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = call i32 @PyLong_AsInt(ptr noundef nonnull %i.q) #19 ; 3 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = call ptr @PyErr_Occurred() #19
  %.not46 = icmp eq ptr %i.t, null
  br i1 %.not46, label %bb.i, label %os_mknod_impl.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = add i64 %i.f, -2                         ; 2 uses
  %.not47 = icmp eq i64 %i.u, 0
  br i1 %.not47, label %thread-pre-split.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.030 = phi i64 [ %i.u, %bb.i ], [ %i.g, %bb.f ]
  %.0 = phi i32 [ %i.r, %bb.i ], [ 384, %bb.f ]   ; 4 uses
  %i.v = getelementptr i8, ptr %i.m, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108  ; 2 uses
  %.not48 = icmp eq ptr %i.w, null
  br i1 %.not48, label %.thread61, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = call fastcc i32 @_Py_Dev_Converter(ptr noundef nonnull %i.w, ptr noundef %i.b)
  %.not49 = icmp eq i32 %i.x, 0
  br i1 %.not49, label %os_mknod_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = icmp eq i64 %.030, 1
  br i1 %i.y, label %thread-pre-split.thread, label %.thread61

.thread61:                                        ; preds = %bb.j, %bb.l
  %i.z = getelementptr i8, ptr %i.m, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !108 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, @_Py_NoneStruct
  br i1 %i.ab, label %thread-pre-split.thread, label %bb.m

bb.m:                                             ; preds = %.thread61
  %i.ac = call i32 @PyIndex_Check(ptr noundef %i.aa) #19
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %dir_fd_converter.exit.thread, label %dir_fd_converter.exit

dir_fd_converter.exit.thread:                     ; preds = %bb.m
  %i.ad = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !108
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !110
  %i.af = call ptr @_PyType_Name(ptr noundef %.val.i) #19
  %i.ag = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ad, ptr noundef nonnull @.str.210, ptr noundef %i.af) #19 ; 0 uses
  br label %os_mknod_impl.exit

dir_fd_converter.exit:                            ; preds = %bb.m
  %i.ah = call fastcc i32 @_fd_converter(ptr noundef %i.aa, ptr noundef nonnull %i.c)
  %.not51 = icmp eq i32 %i.ah, 0
  br i1 %.not51, label %os_mknod_impl.exit, label %thread-pre-split

thread-pre-split.thread:                          ; preds = %.thread61, %bb.l, %bb.e, %bb.i
  %.160.ph = phi i32 [ %i.r, %bb.i ], [ 384, %bb.e ], [ %.0, %bb.l ], [ %.0, %.thread61 ]
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !157
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val5291 = load ptr, ptr %i.aj, align 8
  br label %.split.us.i.preheader

thread-pre-split:                                 ; preds = %dir_fd_converter.exit
  %.pr.pre = load i32, ptr %i.c, align 4, !tbaa !7 ; 2 uses
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !157 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val52 = load ptr, ptr %i.al, align 8          ; 2 uses
  %.not.i53 = icmp eq i32 %.pr.pre, -100
  br i1 %.not.i53, label %.split.us.i.preheader, label %.split.i

.split.us.i.preheader:                            ; preds = %thread-pre-split.thread, %thread-pre-split
  %.val5294 = phi ptr [ %.val5291, %thread-pre-split.thread ], [ %.val52, %thread-pre-split ]
  %i.am = phi i64 [ %i.ai, %thread-pre-split.thread ], [ %i.ak, %thread-pre-split ]
  %.16093 = phi i32 [ %.160.ph, %thread-pre-split.thread ], [ %.0, %thread-pre-split ]
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i.preheader, %bb.o
  %i.an = call ptr @PyEval_SaveThread() #19
  %i.ao = call i32 @mknod(ptr noundef %.val5294, i32 noundef %.16093, i64 noundef %i.am) #19
  call void @PyEval_RestoreThread(ptr noundef %i.an) #19
  %.not16.us.i = icmp eq i32 %i.ao, 0
  br i1 %.not16.us.i, label %os_mknod_impl.exit, label %bb.n

bb.n:                                             ; preds = %.split.us.i
  %i.ap = tail call ptr @__errno_location() #21
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = icmp eq i32 %i.aq, 4
  br i1 %i.ar, label %bb.o, label %.split4.us.i

bb.o:                                             ; preds = %bb.n
  %i.as = call i32 @PyErr_CheckSignals() #19
  %.not17.us.i = icmp eq i32 %i.as, 0
  br i1 %.not17.us.i, label %.split.us.i, label %os_mknod_impl.exit, !llvm.loop !197

.split.i:                                         ; preds = %thread-pre-split, %bb.q
  %i.at = call ptr @PyEval_SaveThread() #19
  %i.au = call i32 @mknodat(i32 noundef %.pr.pre, ptr noundef %.val52, i32 noundef %.0, i64 noundef %i.ak) #19
  call void @PyEval_RestoreThread(ptr noundef %i.at) #19
  %.not16.i = icmp eq i32 %i.au, 0
  br i1 %.not16.i, label %os_mknod_impl.exit, label %bb.p

bb.p:                                             ; preds = %.split.i
  %i.av = tail call ptr @__errno_location() #21
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = icmp eq i32 %i.aw, 4
  br i1 %i.ax, label %bb.q, label %.split4.us.i

bb.q:                                             ; preds = %bb.p
  %i.ay = call i32 @PyErr_CheckSignals() #19
  %.not17.i = icmp eq i32 %i.ay, 0
  br i1 %.not17.i, label %.split.i, label %os_mknod_impl.exit, !llvm.loop !197

.split4.us.i:                                     ; preds = %bb.p, %bb.n
  %i.az = load ptr, ptr @PyExc_OSError, align 8, !tbaa !108
  %i.ba = call ptr @PyErr_SetFromErrno(ptr noundef %i.az) #19
  br label %os_mknod_impl.exit

os_mknod_impl.exit:                               ; preds = %bb.q, %.split.i, %bb.o, %.split.us.i, %.split4.us.i, %dir_fd_converter.exit.thread, %dir_fd_converter.exit, %bb.k, %bb.h, %.thread, %bb.d
  %.032 = phi ptr [ null, %bb.h ], [ null, %dir_fd_converter.exit.thread ], [ null, %dir_fd_converter.exit ], [ null, %bb.k ], [ null, %.thread ], [ null, %bb.d ], [ %i.ba, %.split4.us.i ], [ @_Py_NoneStruct, %.split.us.i ], [ null, %bb.o ], [ @_Py_NoneStruct, %.split.i ], [ null, %bb.q ]
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !148
  call void @PyMem_Free(ptr noundef %i.bc) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !108 ; 4 uses
  %.not.i55 = icmp eq ptr %i.be, null
  br i1 %.not.i55, label %Py_DECREF.exit16.i, label %bb.r

bb.r:                                             ; preds = %os_mknod_impl.exit
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !118 ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i15.i, label %bb.s, label %Py_DECREF.exit16.i

bb.s:                                             ; preds = %bb.r
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !118
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.t, label %Py_DECREF.exit16.i

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.be) #19
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %bb.t, %bb.s, %bb.r, %os_mknod_impl.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !108 ; 4 uses
  %.not14.i = icmp eq ptr %i.bj, null
  br i1 %.not14.i, label %path_cleanup.exit, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit16.i
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !118 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bk, -1
  br i1 %.not.i.i, label %bb.v, label %path_cleanup.exit

bb.v:                                             ; preds = %bb.u
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !118
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.w, label %path_cleanup.exit

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.bj) #19
  br label %path_cleanup.exit

path_cleanup.exit:                                ; preds = %Py_DECREF.exit16.i, %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.032
}

; Function Attrs: nounwind uwtable
define internal ptr @os_major(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call fastcc i32 @_Py_Dev_Converter(ptr noundef %1, ptr noundef %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %os_major_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %i.d = lshr i64 %i.c, 8
  %i.e = and i64 %i.d, 4095
  %i.f = lshr i64 %i.c, 32
  %i.g = and i64 %i.f, 4294963200
  %i.h = or disjoint i64 %i.e, %i.g               ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967295
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @PyLong_FromLong(i64 noundef -1) #19
  br label %os_major_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.h) #19
  br label %os_major_impl.exit

os_major_impl.exit:                               ; preds = %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_minor(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call fastcc i32 @_Py_Dev_Converter(ptr noundef %1, ptr noundef %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %os_minor_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %i.d = and i64 %i.c, 255
  %i.e = lshr i64 %i.c, 12
  %i.f = and i64 %i.e, 4294967040
  %i.g = or disjoint i64 %i.f, %i.d               ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967295
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @PyLong_FromLong(i64 noundef -1) #19
  br label %os_minor_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.j = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.g) #19
  br label %os_minor_impl.exit

os_minor_impl.exit:                               ; preds = %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @os_makedev(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.131, i64 noundef %2, i64 noundef 2, i64 noundef 2) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !108
  %i.e = call fastcc i32 @_Py_Dev_Converter(ptr noundef %i.d, ptr noundef %i.a)
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %bb.g, label %bb.d

end_hunk_1
