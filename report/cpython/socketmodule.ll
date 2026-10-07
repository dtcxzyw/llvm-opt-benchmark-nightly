Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/socketmodule?download=true
inline.NumInlined: 287
inline.NumDeleted: 62
begin_hunk_0_@setipaddr:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.bb = getelementptr i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  call void @PyErr_SetObject(ptr noundef %i.bc, ptr noundef nonnull %i.ba) #11
  %i.bd = load i32, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %.not.i.i68 = icmp sgt i32 %i.bd, -1
  br i1 %.not.i.i68, label %bb.ad, label %set_gaierror.exit

bb.ad:                                            ; preds = %bb.ac
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %i.ba, align 8, !tbaa !23
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.ae, label %set_gaierror.exit

bb.ae:                                            ; preds = %bb.ad
  call void @_Py_Dealloc(ptr noundef nonnull %i.ba) #11
  br label %set_gaierror.exit

bb.af:                                            ; preds = %.thread
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !50  ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !58
  %i.bj = zext i32 %i.bi to i64
  %spec.select66 = call i64 @llvm.umin.i64(i64 %3, i64 %i.bj)
  %i.bk = getelementptr i8, ptr %i.bg, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr align 2 %i.bl, i64 %spec.select66, i1 false)
  call void @freeaddrinfo(ptr noundef %i.bg) #11
  %i.bm = load i16, ptr %2, align 2, !tbaa !31
  switch i16 %i.bm, label %bb.ah [
    i16 2, label %set_gaierror.exit
    i16 10, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  br label %set_gaierror.exit

bb.ah:                                            ; preds = %bb.af
  %i.bn = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.bn, ptr noundef nonnull @.str.40) #11
  br label %set_gaierror.exit

set_gaierror.exit:                                ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.v, %bb.af, %bb.r, %bb.s, %bb.k, %bb.m, %bb.n, %bb.ah, %bb.ag
  %.5 = phi i32 [ 4, %bb.v ], [ %.056, %bb.n ], [ -1, %bb.h ], [ -1, %bb.ah ], [ 4, %bb.s ], [ 16, %bb.ag ], [ 16, %bb.y ], [ 4, %bb.af ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.r ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.aa ], [ -1, %bb.ab ], [ -1, %bb.ac ], [ -1, %bb.ad ], [ -1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.5
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @PyEval_SaveThread() local_unnamed_addr #1

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @set_gaierror(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, -11
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.c = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.b) #11 ; 0 uses
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @gai_strerror(i32 noundef %1) #11
  %i.e = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.41, i32 noundef %1, ptr noundef %i.d) #11 ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  tail call void @PyErr_SetObject(ptr noundef %i.g, ptr noundef nonnull %i.e) #11
  %i.h = load i32, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.e, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #4

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @inet_pton(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal ptr @set_error() #0 {
bb.a:
  %i.a = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.b = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.a) #11
  ret ptr %i.b
}

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @gai_strerror(i32 noundef) local_unnamed_addr #4

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_SetFromErrno(ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #1

declare i32 @gethostbyname_r(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @gethost_common(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef nonnull writeonly captures(none) %2, i32 noundef range(i32 0, 65536) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [46 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %4 = alloca %struct.sockaddr_in, align 4        ; 6 uses
  %5 = alloca %struct.sockaddr_in6, align 4       ; 6 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__h_errno_location() #12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.f = tail call ptr @hstrerror(i32 noundef %i.e) #11
  %i.g = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.41, i32 noundef %i.e, ptr noundef %i.f) #11 ; 5 uses
  %.not.i77 = icmp eq ptr %i.g, null
  br i1 %.not.i77, label %set_herror.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  tail call void @PyErr_SetObject(ptr noundef %i.i, ptr noundef nonnull %i.g) #11
  %i.j = load i32, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.d, label %set_herror.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.g, align 8, !tbaa !23
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %set_herror.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #11
  br label %set_herror.exit

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !178
  %.not = icmp eq i32 %i.n, %3
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @__errno_location() #12
  store i32 97, ptr %i.o, align 4, !tbaa !9
  %i.p = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.q = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.p) #11 ; 0 uses
  br label %set_herror.exit

bb.h:                                             ; preds = %bb.f
  %i.r = tail call ptr @PyList_New(i64 noundef 0) #11 ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %set_herror.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @PyList_New(i64 noundef 0) #11 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread96, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !179  ; 3 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.j
  %.0.copyload8113 = load ptr, ptr %i.w, align 8  ; 2 uses
  %i.x = icmp eq ptr %.0.copyload8113, null
  br i1 %i.x, label %.loopexit, label %.lr.ph

bb.k:                                             ; preds = %Py_DECREF.exit75
  %i.y = getelementptr i8, ptr %.057114, i64 8    ; 2 uses
  %.0.copyload8 = load ptr, ptr %i.y, align 8     ; 2 uses
  %i.z = icmp eq ptr %.0.copyload8, null
  br i1 %i.z, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %.0.copyload8115 = phi ptr [ %.0.copyload8, %bb.k ], [ %.0.copyload8113, %.preheader ]
  %.057114 = phi ptr [ %i.y, %bb.k ], [ %i.w, %.preheader ]
  %i.aa = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %.0.copyload8115) #11 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread96, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ac = tail call i32 @PyList_Append(ptr noundef nonnull %i.r, ptr noundef nonnull %i.aa) #11
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %.not.i74 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i74, label %bb.m, label %Py_DECREF.exit75

bb.m:                                             ; preds = %bb.l
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.aa, align 8, !tbaa !23
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.n, label %Py_DECREF.exit75

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #11
  br label %Py_DECREF.exit75

Py_DECREF.exit75:                                 ; preds = %bb.l, %bb.m, %bb.n
  %.not70 = icmp eq i32 %i.ac, 0
  br i1 %.not70, label %bb.k, label %.thread96

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.j
  %i.ag = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !180 ; 3 uses
  %.0.copyload116 = load ptr, ptr %i.ah, align 8  ; 3 uses
  %i.ai = icmp eq ptr %.0.copyload116, null
  br i1 %i.ai, label %._crit_edge, label %.lr.ph119

.lr.ph119:                                        ; preds = %.loopexit
  %trunc71 = trunc nuw i32 %3 to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  switch i16 %trunc71, label %.thread91 [
    i16 2, label %.lr.ph119.split.split.us
    i16 10, label %.lr.ph119.split.split
  ]

.lr.ph119.split.split.us:                         ; preds = %.lr.ph119, %bb.o
  %.0.copyload118.us = phi ptr [ %.0.copyload.us, %bb.o ], [ %.0.copyload116, %.lr.ph119 ]
  %.158117.us = phi ptr [ %i.ao, %bb.o ], [ %i.ah, %.lr.ph119 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i16 2, ptr %4, align 4, !tbaa !67
  %i.al = load i32, ptr %.0.copyload118.us, align 1
  store i32 %i.al, ptr %i.ak, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.am = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b, i32 noundef 16) #11
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.q, label %bb.p

bb.o:                                             ; preds = %Py_DECREF.exit.us
  %i.ao = getelementptr i8, ptr %.158117.us, i64 8 ; 2 uses
  %.0.copyload.us = load ptr, ptr %i.ao, align 8  ; 2 uses
  %i.ap = icmp eq ptr %.0.copyload.us, null
  br i1 %i.ap, label %._crit_edge, label %.lr.ph119.split.split.us

bb.p:                                             ; preds = %.lr.ph119.split.split.us
  %i.aq = call ptr @PyUnicode_FromString(ptr noundef nonnull %i.b) #11
  br label %make_ipv4_addr.exit.us

bb.q:                                             ; preds = %.lr.ph119.split.split.us
  %i.ar = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.as = call ptr @PyErr_SetFromErrno(ptr noundef %i.ar) #11 ; 0 uses
  br label %make_ipv4_addr.exit.us

make_ipv4_addr.exit.us:                           ; preds = %bb.q, %bb.p
  %.0.i.us = phi ptr [ null, %bb.q ], [ %i.aq, %bb.p ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !180
  %i.au = icmp eq ptr %.158117.us, %i.at
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %make_ipv4_addr.exit.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %make_ipv4_addr.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.av = icmp eq ptr %.0.i.us, null
  br i1 %i.av, label %.thread96, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = call i32 @PyList_Append(ptr noundef nonnull %i.t, ptr noundef nonnull %.0.i.us) #11
  %i.ax = load i32, ptr %.0.i.us, align 8, !tbaa !23 ; 2 uses
  %.not.i.us = icmp sgt i32 %i.ax, -1
  br i1 %.not.i.us, label %bb.u, label %Py_DECREF.exit.us

bb.u:                                             ; preds = %bb.t
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %.0.i.us, align 8, !tbaa !23
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.v, label %Py_DECREF.exit.us

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i.us) #11
  br label %Py_DECREF.exit.us

Py_DECREF.exit.us:                                ; preds = %bb.v, %bb.u, %bb.t
  %.not72.us = icmp eq i32 %i.aw, 0
  br i1 %.not72.us, label %bb.o, label %.thread96

bb.w:                                             ; preds = %Py_DECREF.exit
  %i.ba = getelementptr i8, ptr %.158117, i64 8   ; 2 uses
  %.0.copyload = load ptr, ptr %i.ba, align 8     ; 2 uses
  %i.bb = icmp eq ptr %.0.copyload, null
  br i1 %i.bb, label %._crit_edge, label %.lr.ph119.split.split

.lr.ph119.split.split:                            ; preds = %.lr.ph119, %bb.w
  %.0.copyload118 = phi ptr [ %.0.copyload, %bb.w ], [ %.0.copyload116, %.lr.ph119 ]
  %.158117 = phi ptr [ %i.ba, %bb.w ], [ %i.ah, %.lr.ph119 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  store i16 10, ptr %5, align 4, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(16) %.0.copyload118, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bc = call ptr @inet_ntop(i32 noundef 10, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a, i32 noundef 46) #11
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph119.split.split
  %i.be = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.bf = call ptr @PyErr_SetFromErrno(ptr noundef %i.be) #11 ; 0 uses
  br label %make_ipv6_addr.exit

bb.y:                                             ; preds = %.lr.ph119.split.split
  %i.bg = call ptr @PyUnicode_FromString(ptr noundef nonnull %i.a) #11
  br label %make_ipv6_addr.exit

make_ipv6_addr.exit:                              ; preds = %bb.x, %bb.y
  %.0.i78 = phi ptr [ null, %bb.x ], [ %i.bg, %bb.y ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !180
  %i.bi = icmp eq ptr %.158117, %i.bh
  br i1 %i.bi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %make_ipv6_addr.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %make_ipv6_addr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.bj = icmp eq ptr %.0.i78, null
  br i1 %i.bj, label %.thread96, label %bb.ab

.thread91:                                        ; preds = %.lr.ph119
  %i.bk = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  tail call void @PyErr_SetString(ptr noundef %i.bk, ptr noundef nonnull @.str.35) #11
  br label %set_herror.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bl = call i32 @PyList_Append(ptr noundef nonnull %i.t, ptr noundef nonnull %.0.i78) #11
  %i.bm = load i32, ptr %.0.i78, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp sgt i32 %i.bm, -1
  br i1 %.not.i, label %bb.ac, label %Py_DECREF.exit

bb.ac:                                            ; preds = %bb.ab
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %.0.i78, align 8, !tbaa !23
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.ad, label %Py_DECREF.exit

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i78) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ab, %bb.ac, %bb.ad
  %.not72 = icmp eq i32 %i.bl, 0
  br i1 %.not72, label %bb.w, label %.thread96

._crit_edge:                                      ; preds = %bb.w, %bb.o, %.loopexit
  %i.bp = load ptr, ptr %1, align 8, !tbaa !181
  %i.bq = call ptr @PyUnicode_FromString(ptr noundef %i.bp) #11 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.thread96, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.bs = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.r, ptr noundef nonnull %i.t) #11
  br label %.thread96

.thread96:                                        ; preds = %.lr.ph, %Py_DECREF.exit75, %Py_DECREF.exit, %bb.aa, %Py_DECREF.exit.us, %bb.s, %._crit_edge, %bb.ae, %bb.i
  %.05699 = phi ptr [ null, %._crit_edge ], [ %i.bs, %bb.ae ], [ null, %bb.i ], [ null, %Py_DECREF.exit ], [ null, %Py_DECREF.exit.us ], [ null, %bb.s ], [ null, %bb.aa ], [ null, %Py_DECREF.exit75 ], [ null, %.lr.ph ] ; 4 uses
  %i.bt = load i32, ptr %i.r, align 8, !tbaa !23  ; 2 uses
  %.not.i.i80 = icmp sgt i32 %i.bt, -1
  br i1 %.not.i.i80, label %bb.af, label %Py_XDECREF.exit

bb.af:                                            ; preds = %.thread96
  %i.bu = add nsw i32 %i.bt, -1                   ; 2 uses
  store i32 %i.bu, ptr %i.r, align 8, !tbaa !23
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.ag, label %Py_XDECREF.exit

bb.ag:                                            ; preds = %bb.af
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.thread96, %bb.af, %bb.ag
  %.not.i81 = icmp eq ptr %i.t, null
  br i1 %.not.i81, label %set_herror.exit, label %bb.ah

bb.ah:                                            ; preds = %Py_XDECREF.exit
  %i.bw = load i32, ptr %i.t, align 8, !tbaa !23  ; 2 uses
  %.not.i.i82 = icmp sgt i32 %i.bw, -1
  br i1 %.not.i.i82, label %bb.ai, label %set_herror.exit

bb.ai:                                            ; preds = %bb.ah
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.bx, ptr %i.t, align 8, !tbaa !23
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.aj, label %set_herror.exit

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #11
  br label %set_herror.exit

set_herror.exit:                                  ; preds = %bb.h, %bb.aj, %bb.ai, %bb.ah, %Py_XDECREF.exit, %.thread91, %bb.e, %bb.d, %bb.c, %bb.b, %bb.g
  %.2 = phi ptr [ null, %.thread91 ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %.05699, %bb.aj ], [ %.05699, %Py_XDECREF.exit ], [ %.05699, %bb.ah ], [ %.05699, %bb.ai ], [ null, %bb.h ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__h_errno_location() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Py_XDECREF(ptr noundef %0) unnamed_addr #7 {
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
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare ptr @hstrerror(i32 noundef) local_unnamed_addr #4

declare i32 @gethostbyaddr_r(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @gethostname(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @PyErr_Clear() local_unnamed_addr #1

declare i32 @PyUnicode_FSConverter(ptr noundef, ptr noundef) #1

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @sethostname(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #1

declare ptr @getservbyname(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

declare ptr @getservbyport(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @getprotobyname(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

declare i32 @_Py_dup(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @socketpair(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_Py_set_inheritable(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @new_sockobject(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = tail call ptr %i.d(ptr noundef %i.b, i64 noundef 0) #11 ; 13 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  store atomic i32 %1, ptr %i.g monotonic, align 4
  %i.h = getelementptr i8, ptr %i.e, i64 20
  store i32 %2, ptr %i.h, align 4, !tbaa !72
  %i.i = getelementptr i8, ptr %i.e, i64 24
  %i.j = and i32 %3, -526337
  store i32 %i.j, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr i8, ptr %i.e, i64 28
  store i32 %4, ptr %i.k, align 4, !tbaa !74
  %i.l = getelementptr i8, ptr %i.e, i64 32
  store ptr @set_error, ptr %i.l, align 8, !tbaa !75
  %i.m = and i32 %3, 2048
  %.not.i13 = icmp eq i32 %i.m, 0
  br i1 %.not.i13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.e, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !76
  br label %init_sockobject.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load atomic i64, ptr %i.o monotonic, align 8 ; 2 uses
  %i.q = getelementptr i8, ptr %i.e, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !76
  %i.r = icmp sgt i64 %i.p, -1
  br i1 %i.r, label %bb.e, label %init_sockobject.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = tail call ptr @PyEval_SaveThread() #11
  store i32 1, ptr %i.a, align 4, !tbaa !9
  %i.t = load atomic i32, ptr %i.g monotonic, align 8
  %i.u = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.t, i64 noundef 21537, ptr noundef nonnull %i.a) #11
  %.not4.i.i = icmp eq i32 %i.u, -1
  call void @PyEval_RestoreThread(ptr noundef %i.s) #11
  br i1 %.not4.i.i, label %bb.f, label %internal_setblocking.exit.i

internal_setblocking.exit.i:                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %init_sockobject.exit

init_sockobject.exit:                             ; preds = %bb.c, %bb.d, %internal_setblocking.exit.i
  %i.v = getelementptr i8, ptr %i.e, i64 48
  store ptr %0, ptr %i.v, align 8, !tbaa !77
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  %i.x = call ptr @PyErr_SetFromErrno(ptr noundef %i.w) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = load i32, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.e, align 8, !tbaa !23
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %init_sockobject.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %init_sockobject.exit ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  ret ptr %.0
}

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #4

declare i32 @_PyLong_UInt16_Converter(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

declare i32 @_PyLong_UInt32_Converter(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @inet_aton(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1
end_hunk_0
