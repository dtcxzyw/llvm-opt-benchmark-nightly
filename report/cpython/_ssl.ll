inline.NumInlined: 471
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ssl__SSLSocket_do_handshake:bb.a
bb.o:                                             ; preds = %bb.n
  store i32 %i.ai, ptr %3, align 4, !tbaa !150
  store i16 1, ptr %i.o, align 4, !tbaa !152
  %i.ak = call i64 @_PyTime_AsMilliseconds(i64 noundef %.1.i, i32 noundef 1) #10
  %i.al = trunc i64 %i.ak to i32
  %i.am = call ptr @PyEval_SaveThread() #10
  %i.an = call i32 @poll(ptr noundef nonnull %3, i64 noundef 1, i32 noundef %i.al) #10
  call void @PyEval_RestoreThread(ptr noundef %i.am) #10
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %PySSL_select.exit.jt2.i, label %PySSL_select.exit.jt1.i

PySSL_select.exit.jt1.i:                          ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.thread46.i

PySSL_select.exit.jt3.i:                          ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.v

PySSL_select.exit.jt0.i:                          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.loopexit96.i

PySSL_select.exit.jt2.i:                          ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.u

bb.p:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.ap = icmp eq i64 %.1.i, 0
  %or.cond.i38.i = or i1 %.not.i, %i.ap
  br i1 %or.cond.i38.i, label %PySSL_select.exit41.jt0.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = icmp slt i64 %.1.i, 0
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !135
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %PySSL_select.exit41.jt2.i, label %PySSL_select.exit41.jt1.i

bb.s:                                             ; preds = %bb.q
  %i.at = load i32, ptr %i.l, align 8, !tbaa !128 ; 2 uses
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %PySSL_select.exit41.jt3.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.at, ptr %2, align 4, !tbaa !150
  store i16 4, ptr %i.m, align 4, !tbaa !152
  %i.av = call i64 @_PyTime_AsMilliseconds(i64 noundef %.1.i, i32 noundef 1) #10
  %i.aw = trunc i64 %i.av to i32
  %i.ax = call ptr @PyEval_SaveThread() #10
  %i.ay = call i32 @poll(ptr noundef nonnull %2, i64 noundef 1, i32 noundef %i.aw) #10
  call void @PyEval_RestoreThread(ptr noundef %i.ax) #10
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %PySSL_select.exit41.jt2.i, label %PySSL_select.exit41.jt1.i

PySSL_select.exit41.jt1.i:                        ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %.thread46.i

PySSL_select.exit41.jt3.i:                        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.v

PySSL_select.exit41.jt0.i:                        ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %.loopexit96.i

PySSL_select.exit41.jt2.i:                        ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.u

bb.u:                                             ; preds = %PySSL_select.exit41.jt2.i, %PySSL_select.exit.jt2.i
  %i.ba = load ptr, ptr @PyExc_TimeoutError, align 8, !tbaa !31
  call void @PyErr_SetString(ptr noundef %i.ba, ptr noundef nonnull @.str.261) #10
  br label %.loopexit.thread.i

bb.v:                                             ; preds = %PySSL_select.exit41.jt3.i, %PySSL_select.exit.jt3.i
  %i.bb = getelementptr i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !126
  %i.bd = getelementptr i8, ptr %i.bc, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !108
  %i.bf = getelementptr i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.bg, ptr noundef nonnull @.str.262) #10
  br label %.loopexit.thread.i

.thread46.i:                                      ; preds = %PySSL_select.exit41.jt1.i, %PySSL_select.exit.jt1.i, %bb.j
  %i.bh = and i32 %.sroa.015.0.extract.trunc.i, -2
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.e, label %.loopexit96.i, !llvm.loop !153

.loopexit96.i:                                    ; preds = %.thread46.i, %_PySSL_errno.exit.i, %PySSL_select.exit41.jt0.i, %PySSL_select.exit.jt0.i
  %.not36.i140 = phi i1 [ true, %PySSL_select.exit.jt0.i ], [ true, %PySSL_select.exit41.jt0.i ], [ %.not36.i, %_PySSL_errno.exit.i ], [ %.not36.i, %.thread46.i ]
  br i1 %.not.i, label %Py_XDECREF.exit.i, label %bb.w

bb.w:                                             ; preds = %.loopexit96.i
  %i.bj = load i32, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.bj, -1
  br i1 %.not.i.i.i, label %bb.x, label %Py_XDECREF.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.d, align 8, !tbaa !30
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.y, label %Py_XDECREF.exit.i

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.y, %bb.x, %bb.w, %.loopexit96.i
  br i1 %i.s, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %Py_XDECREF.exit.i
  %i.bm = call fastcc ptr @PySSL_SetError(ptr noundef nonnull readonly %0, i64 %.sroa.0.0.insert.insert.i.i, ptr noundef %i.ab, i32 noundef 1097)
  br label %_ssl__SSLSocket_do_handshake_impl.exit

bb.aa:                                            ; preds = %Py_XDECREF.exit.i
  br i1 %.not36.i140, label %_ssl__SSLSocket_do_handshake_impl.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @PyErr_SetRaisedException(ptr noundef nonnull %i.ab) #10
  br label %_ssl__SSLSocket_do_handshake_impl.exit

.loopexit.i:                                      ; preds = %bb.g
  br i1 %.not.i, label %_ssl__SSLSocket_do_handshake_impl.exit, label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.loopexit.i, %bb.v, %bb.u
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !30  ; 2 uses
  %.not.i.i44.i = icmp sgt i32 %i.bn, -1
  br i1 %.not.i.i44.i, label %bb.ac, label %_ssl__SSLSocket_do_handshake_impl.exit

bb.ac:                                            ; preds = %.loopexit.thread.i
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.d, align 8, !tbaa !30
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.ad, label %_ssl__SSLSocket_do_handshake_impl.exit

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #10
  br label %_ssl__SSLSocket_do_handshake_impl.exit

_ssl__SSLSocket_do_handshake_impl.exit:           ; preds = %bb.a, %bb.z, %bb.aa, %bb.ab, %.loopexit.i, %.loopexit.thread.i, %bb.ac, %bb.ad
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.aa ], [ %i.bm, %bb.z ], [ null, %bb.ab ], [ null, %bb.a ], [ null, %.loopexit.i ], [ null, %.loopexit.thread.i ], [ null, %bb.ac ], [ null, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @_ssl__SSLSocket_uses_ktls_for_send(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.b = tail call ptr @SSL_get_wbio(ptr noundef %.val) #10
  %i.c = tail call i64 @BIO_ctrl(ptr noundef %i.b, i32 noundef 73, i64 noundef 0, ptr noundef null) #10
  %i.d = icmp sgt i64 %i.c, 0
  %i.e = select i1 %i.d, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_ssl__SSLSocket_uses_ktls_for_send_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %i.e, align 8, !tbaa !30
  br label %_ssl__SSLSocket_uses_ktls_for_send_impl.exit

_ssl__SSLSocket_uses_ktls_for_send_impl.exit:     ; preds = %bb.a, %bb.b
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @_ssl__SSLSocket_uses_ktls_for_recv(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.b = tail call ptr @SSL_get_rbio(ptr noundef %.val) #10
  %i.c = tail call i64 @BIO_ctrl(ptr noundef %i.b, i32 noundef 76, i64 noundef 0, ptr noundef null) #10
  %i.d = icmp sgt i64 %i.c, 0
  %i.e = select i1 %i.d, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_ssl__SSLSocket_uses_ktls_for_recv_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %i.e, align 8, !tbaa !30
  br label %_ssl__SSLSocket_uses_ktls_for_recv_impl.exit

_ssl__SSLSocket_uses_ktls_for_recv_impl.exit:     ; preds = %bb.a, %bb.b
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_ssl__SSLSocket_sendfile(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.pollfd, align 4             ; 8 uses
  %4 = alloca %struct.pollfd, align 4             ; 8 uses
  %5 = alloca %struct.pollfd, align 4             ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = add i64 %2, -3
  %or.cond = icmp ult i64 %i.c, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.245, i64 noundef %2, i64 noundef 3, i64 noundef 4) #10
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.au, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !31
  %i.f = tail call i32 @PyLong_AsInt(ptr noundef %i.e) #10 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyErr_Occurred() #10
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %bb.e, label %bb.au

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = tail call i64 @PyLong_AsLong(ptr noundef %i.j) #10
  %i.l = tail call ptr @PyErr_Occurred() #10
  %.not.i.not = icmp eq ptr %i.l, null
  br i1 %.not.i.not, label %bb.f, label %bb.au

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.o = call i32 @_PyLong_Size_t_Converter(ptr noundef %i.n, ptr noundef nonnull %i.b) #10
  %.not18 = icmp eq i32 %i.o, 0
  br i1 %.not18, label %bb.au, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp slt i64 %2, 4
  br i1 %i.p, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = call i32 @PyLong_AsInt(ptr noundef %i.r) #10 ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = call ptr @PyErr_Occurred() #10
  %.not19 = icmp eq ptr %i.u, null
  br i1 %.not19, label %bb.j, label %bb.au

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -1, %bb.i ], [ %i.s, %bb.h ]
  %i.v = load i64, ptr %i.b, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.w = call fastcc i32 @get_socket(ptr noundef readonly %0, ptr noundef %i.a, i32 noundef 2623)
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %_ssl__SSLSocket_sendfile_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !149  ; 11 uses
  %.not.i20 = icmp eq ptr %i.y, null              ; 5 uses
  br i1 %.not.i20, label %.thread66.i, label %bb.l

.thread66.i:                                      ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  br label %PySSL_select.exit.i

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %i.y, i64 40       ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !135 ; 6 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %6

6:                                                ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %7 = icmp eq i64 %i.aa, 0
  br i1 %7, label %PySSL_select.exit.i, label %8

8:                                                ; preds = %6
  %9 = load i64, ptr %i.z, align 8, !tbaa !135
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %select.unfold.i, label %PySSL_select.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ac = call i64 @_PyDeadline_Init(i64 noundef %i.aa) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.ad = getelementptr i8, ptr %i.y, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !128 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.ae, ptr %5, align 4, !tbaa !150
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 4, ptr %i.ag, align 4, !tbaa !152
  %i.ah = call i64 @_PyTime_AsMilliseconds(i64 noundef %i.aa, i32 noundef 1) #10
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = call ptr @PyEval_SaveThread() #10
  %i.ak = call i32 @poll(ptr noundef nonnull %5, i64 noundef 1, i32 noundef %i.ai) #10
  call void @PyEval_RestoreThread(ptr noundef %i.aj) #10
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %select.unfold.i, label %PySSL_select.exit.i

PySSL_select.exit.i:                              ; preds = %bb.n, %8, %6, %.thread66.i
  %.04269.i = phi i64 [ %i.ac, %bb.n ], [ 0, %8 ], [ 0, %6 ], [ 0, %.thread66.i ]
  %11 = phi i64 [ %i.aa, %bb.n ], [ %i.aa, %8 ], [ 0, %6 ], [ 0, %.thread66.i ]
  %12 = phi i1 [ true, %bb.n ], [ false, %8 ], [ false, %6 ], [ false, %.thread66.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.am = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.an = getelementptr i8, ptr %i.y, i64 16      ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ap = getelementptr i8, ptr %i.y, i64 40      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.p

select.unfold.i:                                  ; preds = %bb.n, %8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.ar = load ptr, ptr @PyExc_TimeoutError, align 8, !tbaa !31
  call void @PyErr_SetString(ptr noundef %i.ar, ptr noundef nonnull @.str.273) #10
  br label %.thread79.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.as = getelementptr i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !126
  %i.au = getelementptr i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !108
  %i.aw = getelementptr i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.ax, ptr noundef nonnull @.str.274) #10
  br label %.thread79.i

bb.p:                                             ; preds = %.thread76.i, %PySSL_select.exit.i
  %.043.i = phi i64 [ %11, %PySSL_select.exit.i ], [ %.1.i, %.thread76.i ]
  %i.ay = call ptr @PyEval_SaveThread() #10
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !74
  %i.ba = call i64 @SSL_sendfile(ptr noundef %i.az, i32 noundef %i.f, i64 noundef %i.k, i64 noundef %i.v, i32 noundef %.0) #10 ; 4 uses
  %.not.i.i = icmp sgt i64 %i.ba, -1
  br i1 %.not.i.i, label %_PySSL_errno.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !74
  %i.bd = tail call ptr @__errno_location() #12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !6
  %i.bf = call i32 @SSL_get_error(ptr noundef %i.bc, i32 noundef %i.bb) #10
  %i.bg = zext i32 %i.be to i64
  %i.bh = shl nuw i64 %i.bg, 32
  %i.bi = zext i32 %i.bf to i64
  %i.bj = or disjoint i64 %i.bh, %i.bi
  br label %_PySSL_errno.exit.i

_PySSL_errno.exit.i:                              ; preds = %bb.q, %bb.p
  %.sroa.0.0.insert.insert.i.i = phi i64 [ %i.bj, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %.sroa.014.0.extract.trunc.i = trunc i64 %.sroa.0.0.insert.insert.i.i to i32 ; 3 uses
  call void @PyEval_RestoreThread(ptr noundef %i.ay) #10
  %i.bk = call ptr @PyErr_GetRaisedException() #10 ; 5 uses
  %.not49.i = icmp eq ptr %i.bk, null             ; 3 uses
  br i1 %.not49.i, label %bb.r, label %bb.ah

bb.r:                                             ; preds = %_PySSL_errno.exit.i
  %i.bl = call i32 @PyErr_CheckSignals() #10
  %.not50.i = icmp eq i32 %i.bl, 0
  br i1 %.not50.i, label %bb.s, label %.loopexit.i

bb.s:                                             ; preds = %bb.r
  br i1 %12, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = call i64 @_PyDeadline_Get(i64 noundef %.04269.i) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i = phi i64 [ %i.bm, %bb.t ], [ %.043.i, %bb.s ] ; 7 uses
  switch i32 %.sroa.014.0.extract.trunc.i, label %.thread76.i [
    i32 2, label %bb.v
    i32 3, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bn = icmp eq i64 %.1.i, 0
  %or.cond.i52.i = or i1 %.not.i20, %i.bn
  br i1 %or.cond.i52.i, label %PySSL_select.exit55.jt0.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = icmp slt i64 %.1.i, 0
  br i1 %i.bo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bp = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %PySSL_select.exit55.jt2.i, label %PySSL_select.exit55.jt1.i

bb.y:                                             ; preds = %bb.w
  %i.br = load i32, ptr %i.an, align 8, !tbaa !128 ; 2 uses
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %PySSL_select.exit55.jt3.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.br, ptr %4, align 4, !tbaa !150
  store i16 1, ptr %i.aq, align 4, !tbaa !152
  %i.bt = call i64 @_PyTime_AsMilliseconds(i64 noundef %.1.i, i32 noundef 1) #10
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = call ptr @PyEval_SaveThread() #10
  %i.bw = call i32 @poll(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %i.bu) #10
  call void @PyEval_RestoreThread(ptr noundef %i.bv) #10
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %PySSL_select.exit55.jt2.i, label %PySSL_select.exit55.jt1.i

PySSL_select.exit55.jt1.i:                        ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.thread76.i

PySSL_select.exit55.jt3.i:                        ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ag

PySSL_select.exit55.jt0.i:                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.thread78.i

PySSL_select.exit55.jt2.i:                        ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.af

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.by = icmp eq i64 %.1.i, 0
  %or.cond.i56.i = or i1 %.not.i20, %i.by
  br i1 %or.cond.i56.i, label %PySSL_select.exit59.jt0.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = icmp slt i64 %.1.i, 0
  br i1 %i.bz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ca = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.cb = icmp sgt i64 %i.ca, 0
  br i1 %i.cb, label %PySSL_select.exit59.jt2.i, label %PySSL_select.exit59.jt1.i

bb.ad:                                            ; preds = %bb.ab
  %i.cc = load i32, ptr %i.an, align 8, !tbaa !128 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %PySSL_select.exit59.jt3.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.cc, ptr %3, align 4, !tbaa !150
  store i16 4, ptr %i.ao, align 4, !tbaa !152
  %i.ce = call i64 @_PyTime_AsMilliseconds(i64 noundef %.1.i, i32 noundef 1) #10
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = call ptr @PyEval_SaveThread() #10
  %i.ch = call i32 @poll(ptr noundef nonnull %3, i64 noundef 1, i32 noundef %i.cf) #10
  call void @PyEval_RestoreThread(ptr noundef %i.cg) #10
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %PySSL_select.exit59.jt2.i, label %PySSL_select.exit59.jt1.i

PySSL_select.exit59.jt1.i:                        ; preds = %bb.ae, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.thread76.i

PySSL_select.exit59.jt3.i:                        ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.ag

PySSL_select.exit59.jt0.i:                        ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.thread78.i

PySSL_select.exit59.jt2.i:                        ; preds = %bb.ae, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.af

bb.af:                                            ; preds = %PySSL_select.exit59.jt2.i, %PySSL_select.exit55.jt2.i
  %i.cj = load ptr, ptr @PyExc_TimeoutError, align 8, !tbaa !31
  call void @PyErr_SetString(ptr noundef %i.cj, ptr noundef nonnull @.str.276) #10
  br label %.thread79.i

bb.ag:                                            ; preds = %PySSL_select.exit59.jt3.i, %PySSL_select.exit55.jt3.i
  %i.ck = getelementptr i8, ptr %0, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !126
  %i.cm = getelementptr i8, ptr %i.cl, i64 88
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !108
  %i.co = getelementptr i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.cp, ptr noundef nonnull @.str.274) #10
  br label %.thread79.i

.thread76.i:                                      ; preds = %PySSL_select.exit59.jt1.i, %PySSL_select.exit55.jt1.i, %bb.u
  %i.cq = and i32 %.sroa.014.0.extract.trunc.i, -2
  %i.cr = icmp eq i32 %i.cq, 2
  br i1 %i.cr, label %bb.p, label %bb.ah, !llvm.loop !154

bb.ah:                                            ; preds = %.thread76.i, %_PySSL_errno.exit.i
  %i.cs = icmp eq i32 %.sroa.014.0.extract.trunc.i, 1
  br i1 %i.cs, label %bb.ai, label %.thread78.i

bb.ai:                                            ; preds = %bb.ah
  %i.ct = call i64 @ERR_peek_error() #10          ; 2 uses
  %i.cu = and i64 %i.ct, 2147483648
  %.not.i60.i = icmp eq i64 %i.cu, 0
  %i.cv = trunc i64 %i.ct to i32
  %.0.v.i.i = select i1 %.not.i60.i, i32 8388607, i32 2147483647
  %.0.i61.i = and i32 %.0.v.i.i, %i.cv
  %i.cw = icmp eq i32 %.0.i61.i, 276
  br i1 %i.cw, label %bb.aj, label %.thread78.i

bb.aj:                                            ; preds = %bb.ai
  %i.cx = getelementptr i8, ptr %0, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !126
  %i.cz = getelementptr i8, ptr %i.cy, i64 88
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !108
  call fastcc void @_setSSLError(ptr noundef %i.da, ptr noundef nonnull @.str.277, i32 noundef 2705)
  br label %.loopexit.i

.thread78.i:                                      ; preds = %bb.ai, %bb.ah, %PySSL_select.exit59.jt0.i, %PySSL_select.exit55.jt0.i
  %.not49.i122 = phi i1 [ %.not49.i, %bb.ai ], [ %.not49.i, %bb.ah ], [ true, %PySSL_select.exit59.jt0.i ], [ true, %PySSL_select.exit55.jt0.i ]
  %i.db = icmp slt i64 %i.ba, 0
  br i1 %.not.i20, label %Py_XDECREF.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.thread78.i
  %i.dc = load i32, ptr %i.y, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.dc, -1
  br i1 %.not.i.i.i, label %bb.al, label %Py_XDECREF.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.y, align 8, !tbaa !30
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.am, label %Py_XDECREF.exit.i

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull %i.y) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.am, %bb.al, %bb.ak, %.thread78.i
  br i1 %i.db, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %Py_XDECREF.exit.i
  %i.df = call fastcc ptr @PySSL_SetError(ptr noundef nonnull readonly %0, i64 %.sroa.0.0.insert.insert.i.i, ptr noundef %i.bk, i32 noundef 2710)
  br label %_ssl__SSLSocket_sendfile_impl.exit

bb.ao:                                            ; preds = %Py_XDECREF.exit.i
  br i1 %.not49.i122, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @PyErr_SetRaisedException(ptr noundef nonnull %i.bk) #10
  br label %_ssl__SSLSocket_sendfile_impl.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dg = call ptr @PyLong_FromSize_t(i64 noundef %i.ba) #10
  br label %_ssl__SSLSocket_sendfile_impl.exit

.loopexit.i:                                      ; preds = %bb.r, %bb.aj
  br i1 %.not.i20, label %Py_XDECREF.exit65.i, label %.thread79.i

.thread79.i:                                      ; preds = %.loopexit.i, %bb.ag, %bb.af, %bb.o, %select.unfold.i
  %.04181.i = phi ptr [ %i.bk, %.loopexit.i ], [ null, %bb.o ], [ null, %select.unfold.i ], [ null, %bb.ag ], [ null, %bb.af ] ; 3 uses
  %i.dh = load i32, ptr %i.y, align 8, !tbaa !30  ; 2 uses
  %.not.i.i64.i = icmp sgt i32 %i.dh, -1
  br i1 %.not.i.i64.i, label %bb.ar, label %Py_XDECREF.exit65.i

bb.ar:                                            ; preds = %.thread79.i
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.y, align 8, !tbaa !30
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.as, label %Py_XDECREF.exit65.i

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %i.y) #10
  br label %Py_XDECREF.exit65.i

Py_XDECREF.exit65.i:                              ; preds = %bb.as, %bb.ar, %.thread79.i, %.loopexit.i
  %.04182.i = phi ptr [ %i.bk, %.loopexit.i ], [ %.04181.i, %.thread79.i ], [ %.04181.i, %bb.ar ], [ %.04181.i, %bb.as ] ; 2 uses
  %.not51.i = icmp eq ptr %.04182.i, null
  br i1 %.not51.i, label %_ssl__SSLSocket_sendfile_impl.exit, label %bb.at

bb.at:                                            ; preds = %Py_XDECREF.exit65.i
  call void @_PyErr_ChainExceptions1(ptr noundef nonnull %.04182.i) #10
  br label %_ssl__SSLSocket_sendfile_impl.exit

_ssl__SSLSocket_sendfile_impl.exit:               ; preds = %bb.j, %bb.an, %bb.ap, %bb.aq, %Py_XDECREF.exit65.i, %bb.at
  %.0.i = phi ptr [ %i.dg, %bb.aq ], [ null, %bb.j ], [ %i.df, %bb.an ], [ null, %bb.ap ], [ null, %bb.at ], [ null, %Py_XDECREF.exit65.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.au

bb.au:                                            ; preds = %bb.i, %bb.f, %bb.e, %bb.d, %bb.b, %_ssl__SSLSocket_sendfile_impl.exit
  %.014 = phi ptr [ null, %bb.d ], [ %.0.i, %_ssl__SSLSocket_sendfile_impl.exit ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret ptr %.014
}

; Function Attrs: nounwind uwtable
define internal ptr @_ssl__SSLSocket_write(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.pollfd, align 4             ; 8 uses
  %3 = alloca %struct.pollfd, align 4             ; 8 uses
  %4 = alloca %struct.pollfd, align 4             ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.c = call i32 @PyObject_GetBuffer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 0) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.d = call fastcc i32 @get_socket(ptr noundef readonly %0, ptr noundef %i.b, i32 noundef 2750)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %_ssl__SSLSocket_write_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !149  ; 11 uses
  %.not.i = icmp eq ptr %i.f, null                ; 5 uses
  br i1 %.not.i, label %.thread57.i, label %bb.d

.thread57.i:                                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  br label %PySSL_select.exit.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 40       ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135  ; 6 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %6

6:                                                ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %7 = icmp eq i64 %i.h, 0
  br i1 %7, label %PySSL_select.exit.i, label %8

8:                                                ; preds = %6
  %9 = load i64, ptr %i.g, align 8, !tbaa !135
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %select.unfold.i, label %PySSL_select.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = call i64 @_PyDeadline_Init(i64 noundef %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.k = getelementptr i8, ptr %i.f, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.l, ptr %4, align 4, !tbaa !150
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 4, ptr %i.n, align 4, !tbaa !152
  %i.o = call i64 @_PyTime_AsMilliseconds(i64 noundef %i.h, i32 noundef 1) #10
  %i.p = trunc i64 %i.o to i32
  %i.q = call ptr @PyEval_SaveThread() #10
  %i.r = call i32 @poll(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %i.p) #10
  call void @PyEval_RestoreThread(ptr noundef %i.q) #10
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %select.unfold.i, label %PySSL_select.exit.i

PySSL_select.exit.i:                              ; preds = %bb.f, %8, %6, %.thread57.i
  %.03760.i = phi i64 [ %i.j, %bb.f ], [ 0, %8 ], [ 0, %6 ], [ 0, %.thread57.i ]
  %11 = phi i64 [ %i.h, %bb.f ], [ %i.h, %8 ], [ 0, %6 ], [ 0, %.thread57.i ]
  %12 = phi i1 [ true, %bb.f ], [ false, %8 ], [ false, %6 ], [ false, %.thread57.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.t = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = getelementptr i8, ptr %i.f, i64 40       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.h

select.unfold.i:                                  ; preds = %bb.f, %8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.z = load ptr, ptr @PyExc_TimeoutError, align 8, !tbaa !31
  call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.273) #10
  br label %.thread69.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !126
  %i.ac = getelementptr i8, ptr %i.ab, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !108
  %i.ae = getelementptr i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.af, ptr noundef nonnull @.str.274) #10
  br label %.thread69.i

bb.h:                                             ; preds = %.thread67.i, %PySSL_select.exit.i
  %.038.i = phi i64 [ %11, %PySSL_select.exit.i ], [ %.1.i, %.thread67.i ]
  %i.ag = call ptr @PyEval_SaveThread() #10
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.ai = load ptr, ptr %5, align 8, !tbaa !48
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !51
  %i.ak = call i32 @SSL_write_ex(ptr noundef %i.ah, ptr noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull %i.a) #10
  %.not70.i = icmp eq i32 %i.ak, 0                ; 2 uses
  br i1 %.not70.i, label %bb.i, label %_PySSL_errno.exit.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.am = tail call ptr @__errno_location() #12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !6
  %i.ao = call i32 @SSL_get_error(ptr noundef %i.al, i32 noundef 0) #10
  %i.ap = zext i32 %i.an to i64
  %i.aq = shl nuw i64 %i.ap, 32
  %i.ar = zext i32 %i.ao to i64
  %i.as = or disjoint i64 %i.aq, %i.ar
  br label %_PySSL_errno.exit.i

_PySSL_errno.exit.i:                              ; preds = %bb.i, %bb.h
  %.sroa.0.0.insert.insert.i.i = phi i64 [ %i.as, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.012.0.extract.trunc.i = trunc i64 %.sroa.0.0.insert.insert.i.i to i32 ; 2 uses
  call void @PyEval_RestoreThread(ptr noundef %i.ag) #10
  %i.at = call ptr @PyErr_GetRaisedException() #10 ; 3 uses
  %.not43.i = icmp eq ptr %i.at, null             ; 3 uses
  br i1 %.not43.i, label %bb.j, label %.loopexit114.i

bb.j:                                             ; preds = %_PySSL_errno.exit.i
  %i.au = call i32 @PyErr_CheckSignals() #10
  %.not44.i = icmp eq i32 %i.au, 0
  br i1 %.not44.i, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %bb.j
  br i1 %12, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = call i64 @_PyDeadline_Get(i64 noundef %.03760.i) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi i64 [ %i.av, %bb.l ], [ %.038.i, %bb.k ] ; 7 uses
  switch i32 %.sroa.012.0.extract.trunc.i, label %.thread67.i [
    i32 2, label %bb.n
    i32 3, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.aw = icmp eq i64 %.1.i, 0
  %or.cond.i45.i = or i1 %.not.i, %i.aw
  br i1 %or.cond.i45.i, label %PySSL_select.exit48.jt0.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp slt i64 %.1.i, 0
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !135
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %PySSL_select.exit48.jt2.i, label %PySSL_select.exit48.jt1.i

bb.q:                                             ; preds = %bb.o
  %i.ba = load i32, ptr %i.v, align 8, !tbaa !128 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %PySSL_select.exit48.jt3.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.ba, ptr %3, align 4, !tbaa !150
  store i16 1, ptr %i.y, align 4, !tbaa !152
  %i.bc = call i64 @_PyTime_AsMilliseconds(i64 noundef %.1.i, i32 noundef 1) #10
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call ptr @PyEval_SaveThread() #10
  %i.bf = call i32 @poll(ptr noundef nonnull %3, i64 noundef 1, i32 noundef %i.bd) #10
  call void @PyEval_RestoreThread(ptr noundef %i.be) #10
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %PySSL_select.exit48.jt2.i, label %PySSL_select.exit48.jt1.i

PySSL_select.exit48.jt1.i:                        ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.thread67.i

PySSL_select.exit48.jt3.i:                        ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.y

PySSL_select.exit48.jt0.i:                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.loopexit114.i

PySSL_select.exit48.jt2.i:                        ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.x

bb.s:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.bh = icmp eq i64 %.1.i, 0
  %or.cond.i49.i = or i1 %.not.i, %i.bh
  br i1 %or.cond.i49.i, label %PySSL_select.exit52.jt0.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = icmp slt i64 %.1.i, 0
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bj = load i64, ptr %i.x, align 8, !tbaa !135
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %PySSL_select.exit52.jt2.i, label %PySSL_select.exit52.jt1.i

bb.v:                                             ; preds = %bb.t
  %i.bl = load i32, ptr %i.v, align 8, !tbaa !128 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %PySSL_select.exit52.jt3.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.bl, ptr %2, align 4, !tbaa !150
  store i16 4, ptr %i.w, align 4, !tbaa !152
  %i.bn = call i64 @_PyTime_AsMilliseconds(i64 noundef %.1.i, i32 noundef 1) #10
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = call ptr @PyEval_SaveThread() #10
  %i.bq = call i32 @poll(ptr noundef nonnull %2, i64 noundef 1, i32 noundef %i.bo) #10
  call void @PyEval_RestoreThread(ptr noundef %i.bp) #10
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %PySSL_select.exit52.jt2.i, label %PySSL_select.exit52.jt1.i

PySSL_select.exit52.jt1.i:                        ; preds = %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %.thread67.i

PySSL_select.exit52.jt3.i:                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.y

PySSL_select.exit52.jt0.i:                        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %.loopexit114.i

PySSL_select.exit52.jt2.i:                        ; preds = %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.x

bb.x:                                             ; preds = %PySSL_select.exit52.jt2.i, %PySSL_select.exit48.jt2.i
  %i.bs = load ptr, ptr @PyExc_TimeoutError, align 8, !tbaa !31
  call void @PyErr_SetString(ptr noundef %i.bs, ptr noundef nonnull @.str.273) #10
  br label %.thread69.i

bb.y:                                             ; preds = %PySSL_select.exit52.jt3.i, %PySSL_select.exit48.jt3.i
  %i.bt = getelementptr i8, ptr %0, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !126
  %i.bv = getelementptr i8, ptr %i.bu, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !108
  %i.bx = getelementptr i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.by, ptr noundef nonnull @.str.274) #10
  br label %.thread69.i

.thread67.i:                                      ; preds = %PySSL_select.exit52.jt1.i, %PySSL_select.exit48.jt1.i, %bb.m
  %i.bz = and i32 %.sroa.012.0.extract.trunc.i, -2
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.h, label %.loopexit114.i, !llvm.loop !155

.loopexit114.i:                                   ; preds = %.thread67.i, %_PySSL_errno.exit.i, %PySSL_select.exit52.jt0.i, %PySSL_select.exit48.jt0.i
  %.not43.i144 = phi i1 [ true, %PySSL_select.exit48.jt0.i ], [ true, %PySSL_select.exit52.jt0.i ], [ %.not43.i, %_PySSL_errno.exit.i ], [ %.not43.i, %.thread67.i ]
  br i1 %.not.i, label %Py_XDECREF.exit.i, label %bb.z

bb.z:                                             ; preds = %.loopexit114.i
  %i.cb = load i32, ptr %i.f, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i.i.i, label %bb.aa, label %Py_XDECREF.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.f, align 8, !tbaa !30
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ab, label %Py_XDECREF.exit.i

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.ab, %bb.aa, %bb.z, %.loopexit114.i
  br i1 %.not70.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %Py_XDECREF.exit.i
  %i.ce = call fastcc ptr @PySSL_SetError(ptr noundef nonnull readonly %0, i64 %.sroa.0.0.insert.insert.i.i, ptr noundef %i.at, i32 noundef 2818)
  br label %_ssl__SSLSocket_write_impl.exit

bb.ad:                                            ; preds = %Py_XDECREF.exit.i
  br i1 %.not43.i144, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @PyErr_SetRaisedException(ptr noundef nonnull %i.at) #10
  br label %_ssl__SSLSocket_write_impl.exit

bb.af:                                            ; preds = %bb.ad
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !44
  %i.cg = call ptr @PyLong_FromSize_t(i64 noundef %i.cf) #10
  br label %_ssl__SSLSocket_write_impl.exit

.loopexit.i:                                      ; preds = %bb.j
  br i1 %.not.i, label %_ssl__SSLSocket_write_impl.exit, label %.thread69.i

.thread69.i:                                      ; preds = %.loopexit.i, %bb.y, %bb.x, %bb.g, %select.unfold.i
  %i.ch = load i32, ptr %i.f, align 8, !tbaa !30  ; 2 uses
  %.not.i.i55.i = icmp sgt i32 %i.ch, -1
  br i1 %.not.i.i55.i, label %bb.ag, label %_ssl__SSLSocket_write_impl.exit

bb.ag:                                            ; preds = %.thread69.i
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.f, align 8, !tbaa !30
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.ah, label %_ssl__SSLSocket_write_impl.exit

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #10
  br label %_ssl__SSLSocket_write_impl.exit

_ssl__SSLSocket_write_impl.exit:                  ; preds = %bb.b, %bb.ac, %bb.ae, %bb.af, %.loopexit.i, %.thread69.i, %bb.ag, %bb.ah
  %.0.i = phi ptr [ %i.cg, %bb.af ], [ null, %bb.b ], [ %i.ce, %bb.ac ], [ null, %bb.ae ], [ null, %.loopexit.i ], [ null, %.thread69.i ], [ null, %bb.ag ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %_ssl__SSLSocket_write_impl.exit
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i, %_ssl__SSLSocket_write_impl.exit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !54
  %.not3 = icmp eq ptr %i.cl, null
  br i1 %.not3, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @PyBuffer_Release(ptr noundef nonnull %5) #10
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
end_hunk_0
