inline.NumInlined: 471
inline.NumDeleted: 148
begin_hunk_0_@_ssl__SSLContext_session_stats:bb.a
  store i32 %i.bk, ptr %i.bg, align 8, !tbaa !30
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.ac, label %Py_DECREF.exit99.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bg) #10
  br label %Py_DECREF.exit99.i

Py_DECREF.exit99.i:                               ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.bm = icmp slt i32 %i.bi, 0
  br i1 %i.bm, label %bb.ax, label %bb.ad

bb.ad:                                            ; preds = %Py_DECREF.exit99.i
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.bo = tail call i64 @SSL_CTX_ctrl(ptr noundef %i.bn, i32 noundef 24, i64 noundef 0, ptr noundef null) #10
  %i.bp = tail call ptr @PyLong_FromLong(i64 noundef %i.bo) #10 ; 5 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.ax, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.br = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.144, ptr noundef nonnull %i.bp) #10
  %i.bs = load i32, ptr %i.bp, align 8, !tbaa !30 ; 2 uses
  %.not.i96.i = icmp sgt i32 %i.bs, -1
  br i1 %.not.i96.i, label %bb.af, label %Py_DECREF.exit97.i

bb.af:                                            ; preds = %bb.ae
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.bp, align 8, !tbaa !30
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.ag, label %Py_DECREF.exit97.i

bb.ag:                                            ; preds = %bb.af
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bp) #10
  br label %Py_DECREF.exit97.i

Py_DECREF.exit97.i:                               ; preds = %bb.ag, %bb.af, %bb.ae
  %i.bv = icmp slt i32 %i.br, 0
  br i1 %i.bv, label %bb.ax, label %bb.ah

bb.ah:                                            ; preds = %Py_DECREF.exit97.i
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.bx = tail call i64 @SSL_CTX_ctrl(ptr noundef %i.bw, i32 noundef 27, i64 noundef 0, ptr noundef null) #10
  %i.by = tail call ptr @PyLong_FromLong(i64 noundef %i.bx) #10 ; 5 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.ax, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ca = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.by) #10
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %.not.i94.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i94.i, label %bb.aj, label %Py_DECREF.exit95.i

bb.aj:                                            ; preds = %bb.ai
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.by, align 8, !tbaa !30
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ak, label %Py_DECREF.exit95.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.by) #10
  br label %Py_DECREF.exit95.i

Py_DECREF.exit95.i:                               ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ce = icmp slt i32 %i.ca, 0
  br i1 %i.ce, label %bb.ax, label %bb.al

bb.al:                                            ; preds = %Py_DECREF.exit95.i
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.cg = tail call i64 @SSL_CTX_ctrl(ptr noundef %i.cf, i32 noundef 29, i64 noundef 0, ptr noundef null) #10
  %i.ch = tail call ptr @PyLong_FromLong(i64 noundef %i.cg) #10 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ax, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cj = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.148, ptr noundef nonnull %i.ch) #10
  %i.ck = load i32, ptr %i.ch, align 8, !tbaa !30 ; 2 uses
  %.not.i92.i = icmp sgt i32 %i.ck, -1
  br i1 %.not.i92.i, label %bb.an, label %Py_DECREF.exit93.i

bb.an:                                            ; preds = %bb.am
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.ch, align 8, !tbaa !30
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.ao, label %Py_DECREF.exit93.i

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ch) #10
  br label %Py_DECREF.exit93.i

Py_DECREF.exit93.i:                               ; preds = %bb.ao, %bb.an, %bb.am
  %i.cn = icmp slt i32 %i.cj, 0
  br i1 %i.cn, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %Py_DECREF.exit93.i
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.cp = tail call i64 @SSL_CTX_ctrl(ptr noundef %i.co, i32 noundef 30, i64 noundef 0, ptr noundef null) #10
  %i.cq = tail call ptr @PyLong_FromLong(i64 noundef %i.cp) #10 ; 5 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.149, ptr noundef nonnull %i.cq) #10
  %i.ct = load i32, ptr %i.cq, align 8, !tbaa !30 ; 2 uses
  %.not.i90.i = icmp sgt i32 %i.ct, -1
  br i1 %.not.i90.i, label %bb.ar, label %Py_DECREF.exit91.i

bb.ar:                                            ; preds = %bb.aq
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.cq, align 8, !tbaa !30
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.as, label %Py_DECREF.exit91.i

bb.as:                                            ; preds = %bb.ar
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cq) #10
  br label %Py_DECREF.exit91.i

Py_DECREF.exit91.i:                               ; preds = %bb.as, %bb.ar, %bb.aq
  %i.cw = icmp slt i32 %i.cs, 0
  br i1 %i.cw, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %Py_DECREF.exit91.i
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.cy = tail call i64 @SSL_CTX_ctrl(ptr noundef %i.cx, i32 noundef 31, i64 noundef 0, ptr noundef null) #10
  %i.cz = tail call ptr @PyLong_FromLong(i64 noundef %i.cy) #10 ; 5 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.db = tail call i32 @PyDict_SetItemString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.150, ptr noundef nonnull %i.cz) #10
  %i.dc = load i32, ptr %i.cz, align 8, !tbaa !30 ; 2 uses
  %.not.i88.i = icmp sgt i32 %i.dc, -1
  br i1 %.not.i88.i, label %bb.av, label %Py_DECREF.exit89.i

bb.av:                                            ; preds = %bb.au
  %i.dd = add nsw i32 %i.dc, -1                   ; 2 uses
  store i32 %i.dd, ptr %i.cz, align 8, !tbaa !30
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.aw, label %Py_DECREF.exit89.i

bb.aw:                                            ; preds = %bb.av
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cz) #10
  br label %Py_DECREF.exit89.i

Py_DECREF.exit89.i:                               ; preds = %bb.aw, %bb.av, %bb.au
  %i.df = icmp slt i32 %i.db, 0
  br i1 %i.df, label %bb.ax, label %_ssl__SSLContext_session_stats_impl.exit

bb.ax:                                            ; preds = %Py_DECREF.exit89.i, %bb.at, %Py_DECREF.exit91.i, %bb.ap, %Py_DECREF.exit93.i, %bb.al, %Py_DECREF.exit95.i, %bb.ah, %Py_DECREF.exit97.i, %bb.ad, %Py_DECREF.exit99.i, %bb.z, %Py_DECREF.exit101.i, %bb.v, %Py_DECREF.exit103.i, %bb.r, %Py_DECREF.exit105.i, %bb.n, %Py_DECREF.exit107.i, %bb.j, %Py_DECREF.exit109.i, %bb.f, %Py_DECREF.exit111.i, %bb.b
  %i.dg = load i32, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.dg, -1
  br i1 %.not.i.i, label %bb.ay, label %_ssl__SSLContext_session_stats_impl.exit

bb.ay:                                            ; preds = %bb.ax
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.a, align 8, !tbaa !30
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.az, label %_ssl__SSLContext_session_stats_impl.exit

bb.az:                                            ; preds = %bb.ay
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #10
  br label %_ssl__SSLContext_session_stats_impl.exit

_ssl__SSLContext_session_stats_impl.exit:         ; preds = %bb.a, %Py_DECREF.exit89.i, %bb.ax, %bb.ay, %bb.az
  %.0.i = phi ptr [ %i.a, %Py_DECREF.exit89.i ], [ null, %bb.a ], [ null, %bb.ax ], [ null, %bb.ay ], [ null, %bb.az ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_ssl__SSLContext_set_default_verify_paths(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyEval_SaveThread() #10
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.d = tail call i32 @SSL_CTX_set_default_verify_paths(ptr noundef %i.c) #10
  tail call void @PyEval_RestoreThread(ptr noundef %i.a) #10
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ssl__SSLContext_set_default_verify_paths_impl.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.g = tail call i64 @ERR_peek_last_error() #10 ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr i8, ptr %i.f, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %sext.i.i = shl i64 %i.g, 32
  %i.k = ashr exact i64 %sext.i.i, 32
  tail call fastcc void @fill_and_set_sslerror(ptr noundef readonly %i.f, ptr noundef null, ptr noundef %i.j, i32 noundef %i.h, ptr noundef null, i32 noundef 5043, i64 noundef %i.k)
  tail call void @ERR_clear_error() #10
  br label %_ssl__SSLContext_set_default_verify_paths_impl.exit

_ssl__SSLContext_set_default_verify_paths_impl.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_ssl__SSLContext_set_ecdh_curve(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = call i32 @PyUnicode_FSConverter(ptr noundef %1, ptr noundef nonnull %i.a) #10
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ssl__SSLContext_set_ecdh_curve_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = call i32 @OBJ_sn2nid(ptr noundef %i.e) #10 ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !6
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i.i, label %bb.c, label %Py_DECREF.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !30
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %Py_DECREF.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #10
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.d, %bb.c, %bb.b
  %i.k = icmp eq i32 %i.f, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %Py_DECREF.exit.i
  %i.l = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !31
  %i.m = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.151, ptr noundef %1) #10 ; 0 uses
  br label %_ssl__SSLContext_set_ecdh_curve_impl.exit

bb.f:                                             ; preds = %Py_DECREF.exit.i
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95
  %i.p = call i64 @SSL_CTX_ctrl(ptr noundef %i.o, i32 noundef 91, i64 noundef 1, ptr noundef nonnull %i.b) #10
  %.not5.i = icmp eq i64 %i.p, 0
  br i1 %.not5.i, label %bb.g, label %_ssl__SSLContext_set_ecdh_curve_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108  ; 2 uses
  %i.s = call i64 @ERR_peek_last_error() #10      ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr i8, ptr %i.r, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  %sext.i.i = shl i64 %i.s, 32
  %i.w = ashr exact i64 %sext.i.i, 32
  call fastcc void @fill_and_set_sslerror(ptr noundef readonly %i.r, ptr noundef null, ptr noundef %i.v, i32 noundef %i.t, ptr noundef null, i32 noundef 5083, i64 noundef %i.w)
  call void @ERR_clear_error() #10
  br label %_ssl__SSLContext_set_ecdh_curve_impl.exit

_ssl__SSLContext_set_ecdh_curve_impl.exit:        ; preds = %bb.a, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.g ], [ @_Py_NoneStruct, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_ssl__SSLContext_cert_store_stats(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.b = tail call ptr @SSL_CTX_get_cert_store(ptr noundef %.val) #10 ; 3 uses
  %i.c = tail call i32 @X509_STORE_lock(ptr noundef %i.b) #10
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %X509_STORE_get1_objects.exit.thread.i, label %X509_STORE_get1_objects.exit.i

X509_STORE_get1_objects.exit.i:                   ; preds = %bb.a
  %i.d = tail call ptr @X509_STORE_get0_objects(ptr noundef %i.b) #10
  %i.e = tail call ptr @OPENSSL_sk_deep_copy(ptr noundef %i.d, ptr noundef nonnull @x509_object_dup, ptr noundef nonnull @X509_OBJECT_free) #10 ; 5 uses
  %i.f = tail call i32 @X509_STORE_unlock(ptr noundef %i.b) #10 ; 0 uses
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %X509_STORE_get1_objects.exit.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %X509_STORE_get1_objects.exit.i
  %i.h = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.e) #10
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

X509_STORE_get1_objects.exit.thread.i:            ; preds = %X509_STORE_get1_objects.exit.i, %bb.a
  %i.j = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !31
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.152) #10
  br label %_ssl__SSLContext_cert_store_stats_impl.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %.05.i = phi i32 [ %i.r, %bb.d ], [ 0, %.preheader.i ] ; 2 uses
  %.0174.i = phi i32 [ %.1.i, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %.0183.i = phi i32 [ %.119.i, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %.0202.i = phi i32 [ %.121.i, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %i.k = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.e, i32 noundef %.05.i) #10 ; 2 uses
  %i.l = tail call i32 @X509_OBJECT_get_type(ptr noundef %i.k) #10
  switch i32 %i.l, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = add i32 %.0202.i, 1
  %i.n = tail call ptr @X509_OBJECT_get0_X509(ptr noundef %i.k) #10
  %i.o = tail call i32 @X509_check_ca(ptr noundef %i.n) #10
  %.not.i = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not.i to i32
  %spec.select.i = add i32 %.0174.i, %i.p
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = add i32 %.0183.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.121.i = phi i32 [ %.0202.i, %.lr.ph.i ], [ %.0202.i, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.119.i = phi i32 [ %.0183.i, %.lr.ph.i ], [ %i.q, %bb.c ], [ %.0183.i, %bb.b ] ; 2 uses
  %.1.i = phi i32 [ %.0174.i, %.lr.ph.i ], [ %.0174.i, %bb.c ], [ %spec.select.i, %bb.b ] ; 2 uses
  %i.r = add nuw nsw i32 %.05.i, 1                ; 2 uses
  %i.s = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.e) #10
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !118

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.i
  %.020.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.121.i, %bb.d ]
  %.018.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.119.i, %bb.d ]
  %.017.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %bb.d ]
  tail call void @OPENSSL_sk_pop_free(ptr noundef nonnull %i.e, ptr noundef nonnull @X509_OBJECT_free) #10
  %i.u = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, i32 noundef %.020.lcssa.i, ptr noundef nonnull @.str.155, i32 noundef %.018.lcssa.i, ptr noundef nonnull @.str.156, i32 noundef %.017.lcssa.i) #10
  br label %_ssl__SSLContext_cert_store_stats_impl.exit

_ssl__SSLContext_cert_store_stats_impl.exit:      ; preds = %X509_STORE_get1_objects.exit.thread.i, %._crit_edge.i
  %.022.i = phi ptr [ null, %X509_STORE_get1_objects.exit.thread.i ], [ %i.u, %._crit_edge.i ]
  ret ptr %.022.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_ssl__SSLContext_get_ca_certs(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !55
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %i.c
  br i1 %or.cond5, label %.thread31, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.e = phi i64 [ %.val, %.thread ], [ 0, %bb.b ]
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @_ssl__SSLContext_get_ca_certs._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not27 = icmp eq ptr %i.f, null
  br i1 %.not27, label %_ssl__SSLContext_get_ca_certs_impl.exit, label %.thread31

.thread31:                                        ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]
  %i.h = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ]
  %i.i = sub i64 0, %i.h
  %.not28 = icmp eq i64 %2, %i.i
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread31
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.k = call i32 @PyObject_IsTrue(ptr noundef %i.j) #10 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_ssl__SSLContext_get_ca_certs_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread31
  %.0 = phi i32 [ %i.k, %bb.d ], [ 0, %.thread31 ]
  %i.m = call ptr @PyList_New(i64 noundef 0) #10  ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ssl__SSLContext_get_ca_certs_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95
  %i.q = call ptr @SSL_CTX_get_cert_store(ptr noundef %i.p) #10 ; 3 uses
  %i.r = call i32 @X509_STORE_lock(ptr noundef %i.q) #10
  %.not.i38.i = icmp eq i32 %i.r, 0
  br i1 %.not.i38.i, label %.split.i, label %X509_STORE_get1_objects.exit.i

X509_STORE_get1_objects.exit.i:                   ; preds = %bb.f
  %i.s = call ptr @X509_STORE_get0_objects(ptr noundef %i.q) #10
  %i.t = call ptr @OPENSSL_sk_deep_copy(ptr noundef %i.s, ptr noundef nonnull @x509_object_dup, ptr noundef nonnull @X509_OBJECT_free) #10 ; 10 uses
  %i.u = call i32 @X509_STORE_unlock(ptr noundef %i.q) #10 ; 0 uses
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %X509_STORE_get1_objects.exit.i
  %i.w = call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.t) #10
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.not36.i = icmp eq i32 %.0, 0
  %i.y = getelementptr i8, ptr %0, i64 88         ; 2 uses
  br i1 %.not36.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.m
  %.02651.us.i = phi i32 [ %i.al, %bb.m ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.z = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.t, i32 noundef %.02651.us.i) #10 ; 2 uses
  %i.aa = call i32 @X509_OBJECT_get_type(ptr noundef %i.z) #10
  %.not.us.i = icmp eq i32 %i.aa, 1
  br i1 %.not.us.i, label %bb.g, label %bb.m

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.ab = call ptr @X509_OBJECT_get0_X509(ptr noundef %i.z) #10 ; 2 uses
  %i.ac = call i32 @X509_check_ca(ptr noundef %i.ab) #10
  %.not35.us.i = icmp eq i32 %i.ac, 0
  br i1 %.not35.us.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !108
  %i.ae = call fastcc ptr @_decode_certificate(ptr noundef %i.ad, ptr noundef %i.ab) ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.split32.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call i32 @PyList_Append(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ae) #10
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %.split53.us.i, label %bb.j
end_hunk_0
