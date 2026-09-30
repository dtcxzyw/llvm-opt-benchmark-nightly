Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ssl_lib?download=true
inline.NumInlined: 313
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@SSL_get_rfd:bb.a
  %i.g = and i32 %.pre.i, 128
  %.not15.i = icmp eq i32 %i.g, 0
  br i1 %.not15.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @ossl_quic_conn_get_net_rbio(ptr noundef nonnull %0) #18
  br label %SSL_get_rbio.exit

bb.f:                                             ; preds = %bb.d
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %SSL_get_rbio.exit, label %.thread22.i

.thread22.i:                                      ; preds = %bb.f, %bb.b
  %.ph2124.i = phi ptr [ %i.f, %bb.f ], [ %0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.ph2124.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !261
  br label %SSL_get_rbio.exit

SSL_get_rbio.exit:                                ; preds = %bb.c, %bb.a, %bb.e, %bb.f, %.thread22.i
  %.0.i = phi ptr [ %i.h, %bb.e ], [ %i.k, %.thread22.i ], [ null, %bb.f ], [ null, %bb.a ], [ null, %bb.c ]
  %i.l = tail call ptr @BIO_find_type(ptr noundef %.0.i, i32 noundef 256) #18 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %SSL_get_rbio.exit
  %i.m = call i64 @BIO_ctrl(ptr noundef nonnull %i.l, i32 noundef 105, i64 noundef 0, ptr noundef nonnull %i.a) #18 ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !157
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %SSL_get_rbio.exit
  %i.n = phi i32 [ %.pre, %bb.g ], [ -1, %SSL_get_rbio.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.n
}

declare ptr @BIO_find_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @SSL_get_wfd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 -1, ptr %i.a, align 4, !tbaa !157
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %SSL_get_wbio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread27.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 128
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %SSL_get_wbio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i = load i32, ptr %0, align 8, !tbaa !19
  %i.g = and i32 %.pre.i, 128
  %.not18.i = icmp eq i32 %i.g, 0
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @ossl_quic_conn_get_net_wbio(ptr noundef nonnull %0) #18
  br label %SSL_get_wbio.exit

bb.f:                                             ; preds = %bb.d
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %SSL_get_wbio.exit, label %.thread27.i

.thread27.i:                                      ; preds = %bb.f, %bb.b
  %.ph2629.i = phi ptr [ %i.f, %bb.f ], [ %0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.ph2629.i, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !240  ; 2 uses
  %.not19.i = icmp eq ptr %i.k, null
  br i1 %.not19.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread27.i
  %i.l = tail call ptr @BIO_next(ptr noundef nonnull %i.k) #18
  br label %SSL_get_wbio.exit

bb.h:                                             ; preds = %.thread27.i
  %i.m = getelementptr inbounds nuw i8, ptr %.ph2629.i, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !241
  br label %SSL_get_wbio.exit

SSL_get_wbio.exit:                                ; preds = %bb.c, %bb.a, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.h, %bb.e ], [ %i.n, %bb.h ], [ %i.l, %bb.g ], [ null, %bb.f ], [ null, %bb.a ], [ null, %bb.c ]
  %i.o = tail call ptr @BIO_find_type(ptr noundef %.0.i, i32 noundef 256) #18 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %SSL_get_wbio.exit
  %i.p = call i64 @BIO_ctrl(ptr noundef nonnull %i.o, i32 noundef 105, i64 noundef 0, ptr noundef nonnull %i.a) #18 ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !157
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %SSL_get_wbio.exit
  %i.q = phi i32 [ %.pre, %bb.i ], [ -1, %SSL_get_wbio.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.q
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SSL_set_fd(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.b = icmp eq i32 %i.a, 129
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1773, ptr noundef nonnull @__func__.SSL_set_fd) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 356, ptr noundef null) #18
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 128
  %.not4.i = icmp eq i32 %i.c, 0
  br i1 %.not4.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @BIO_s_datagram() #18
  br label %fd_method.exit

bb.e:                                             ; preds = %bb.c
  %i.e = tail call ptr @BIO_s_socket() #18
  br label %fd_method.exit

fd_method.exit:                                   ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  %i.f = tail call ptr @BIO_new(ptr noundef %.0.i) #18 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %fd_method.exit
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1780, ptr noundef nonnull @__func__.SSL_set_fd) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, ptr noundef null) #18
  br label %bb.h

bb.g:                                             ; preds = %fd_method.exit
  %i.h = tail call i64 @BIO_int_ctrl(ptr noundef nonnull %i.f, i32 noundef 104, i64 noundef 0, i32 noundef %1) #18 ; 0 uses
  tail call void @SSL_set_bio(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ 1, %bb.g ]
  ret i32 %.0
}

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #1

declare i64 @BIO_int_ctrl(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SSL_set_wfd(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %SSL_get_rbio.exit.thread38, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread22.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %SSL_get_rbio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i = load i32, ptr %0, align 8, !tbaa !19  ; 3 uses
  %i.f = and i32 %.pre.i, 128
  %.not15.i = icmp eq i32 %i.f, 0
  br i1 %.not15.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @ossl_quic_conn_get_net_rbio(ptr noundef nonnull %0) #18
  %.pre = load i32, ptr %0, align 8, !tbaa !19
  br label %SSL_get_rbio.exit

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %SSL_get_rbio.exit, label %.thread22.i

.thread22.i:                                      ; preds = %bb.f, %bb.b
  %i.i = phi i32 [ %.pre.i, %bb.f ], [ 0, %bb.b ]
  %.ph2124.i = phi ptr [ %i.e, %bb.f ], [ %0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.ph2124.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !261
  br label %SSL_get_rbio.exit

SSL_get_rbio.exit:                                ; preds = %bb.c, %.thread22.i, %bb.f, %bb.e
  %i.l = phi i32 [ %.pre, %bb.e ], [ %.pre.i, %bb.f ], [ %i.i, %.thread22.i ], [ %i.b, %bb.c ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.g, %bb.e ], [ null, %bb.f ], [ %i.k, %.thread22.i ], [ null, %bb.c ] ; 5 uses
  %2 = and i32 %i.l, 128
  %.not23 = icmp eq i32 %2, 0
  %3 = select i1 %.not23, i32 1285, i32 1301
  %i.m = icmp eq i32 %i.l, 129
  br i1 %i.m, label %SSL_get_rbio.exit.thread38, label %bb.g

SSL_get_rbio.exit.thread38:                       ; preds = %bb.a, %SSL_get_rbio.exit
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1796, ptr noundef nonnull @__func__.SSL_set_wfd) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 356, ptr noundef null) #18
  br label %bb.o

bb.g:                                             ; preds = %SSL_get_rbio.exit
  %i.n = icmp eq ptr %.0.i.ph, null
  br i1 %i.n, label %.thread41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @BIO_method_type(ptr noundef nonnull %.0.i.ph) #18
  %.not24.a = icmp eq i32 %i.o, %3
  br i1 %.not24.a, label %bb.i, label %.thread41

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i64 @BIO_ctrl(ptr noundef nonnull %.0.i.ph, i32 noundef 105, i64 noundef 0, ptr noundef null) #18
  %i.q = trunc i64 %i.p to i32
  %.not25.a = icmp eq i32 %1, %i.q
  br i1 %.not25.a, label %bb.m, label %.thread41

.thread41:                                        ; preds = %bb.g, %bb.h, %bb.i
  %i.r = load i32, ptr %0, align 8, !tbaa !19
  %i.s = and i32 %i.r, 128
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread41
  %i.t = tail call ptr @BIO_s_datagram() #18
  br label %fd_method.exit

bb.k:                                             ; preds = %.thread41
  %i.u = tail call ptr @BIO_s_socket() #18
  br label %fd_method.exit

fd_method.exit:                                   ; preds = %bb.j, %bb.k
  %.0.i29 = phi ptr [ %i.t, %bb.j ], [ %i.u, %bb.k ]
  %i.v = tail call ptr @BIO_new(ptr noundef %.0.i29) #18 ; 3 uses
  %.not27 = icmp eq ptr %i.v, null
  br i1 %.not27, label %.thread43, label %bb.l

.thread43:                                        ; preds = %fd_method.exit
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1805, ptr noundef nonnull @__func__.SSL_set_wfd) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, ptr noundef null) #18
  br label %bb.o

bb.l:                                             ; preds = %fd_method.exit
  %i.w = tail call i64 @BIO_int_ctrl(ptr noundef nonnull %i.v, i32 noundef 104, i64 noundef 0, i32 noundef %1) #18 ; 0 uses
  tail call void @SSL_set0_wbio(ptr noundef nonnull %0, ptr noundef nonnull %i.v)
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.x = tail call i32 @BIO_up_ref(ptr noundef nonnull %.0.i.ph) #18
  %.not26 = icmp eq i32 %i.x, 0
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @SSL_set0_wbio(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.ph)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %.thread43, %bb.m, %SSL_get_rbio.exit.thread38
  %.1 = phi i32 [ 0, %SSL_get_rbio.exit.thread38 ], [ 0, %bb.m ], [ 0, %.thread43 ], [ 1, %bb.l ], [ 1, %bb.n ]
  ret i32 %.1
}

declare i32 @BIO_method_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SSL_set_rfd(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %SSL_get_wbio.exit.thread49, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread27.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %SSL_get_wbio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i = load i32, ptr %0, align 8, !tbaa !19  ; 2 uses
  %i.f = and i32 %.pre.i, 128
  %.not18.i = icmp eq i32 %i.f, 0
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @ossl_quic_conn_get_net_wbio(ptr noundef nonnull %0) #18
  br label %SSL_get_wbio.exitthread-pre-split

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %SSL_get_wbio.exit, label %.thread27.i

.thread27.i:                                      ; preds = %bb.f, %bb.b
  %.ph2629.i = phi ptr [ %i.e, %bb.f ], [ %0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.ph2629.i, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !240  ; 2 uses
  %.not19.i = icmp eq ptr %i.j, null
  br i1 %.not19.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread27.i
  %i.k = tail call ptr @BIO_next(ptr noundef nonnull %i.j) #18
  br label %SSL_get_wbio.exitthread-pre-split

bb.h:                                             ; preds = %.thread27.i
  %i.l = getelementptr inbounds nuw i8, ptr %.ph2629.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !241
  br label %SSL_get_wbio.exitthread-pre-split

SSL_get_wbio.exitthread-pre-split:                ; preds = %bb.e, %bb.g, %bb.h
  %.0.i.ph.ph = phi ptr [ %i.m, %bb.h ], [ %i.k, %bb.g ], [ %i.g, %bb.e ]
  %.pr = load i32, ptr %0, align 8, !tbaa !19
  br label %SSL_get_wbio.exit

SSL_get_wbio.exit:                                ; preds = %SSL_get_wbio.exitthread-pre-split, %bb.c, %bb.f
  %i.n = phi i32 [ %.pr, %SSL_get_wbio.exitthread-pre-split ], [ %i.b, %bb.c ], [ %.pre.i, %bb.f ] ; 2 uses
  %.0.i.ph = phi ptr [ %.0.i.ph.ph, %SSL_get_wbio.exitthread-pre-split ], [ null, %bb.c ], [ null, %bb.f ] ; 7 uses
  %2 = and i32 %i.n, 128
  %.not23 = icmp eq i32 %2, 0
  %3 = select i1 %.not23, i32 1285, i32 1301
  %i.o = icmp eq i32 %i.n, 129
  br i1 %i.o, label %SSL_get_wbio.exit.thread49, label %bb.i

SSL_get_wbio.exit.thread49:                       ; preds = %bb.a, %SSL_get_wbio.exit
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1824, ptr noundef nonnull @__func__.SSL_set_rfd) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 356, ptr noundef null) #18
  br label %SSL_set0_rbio.exit40

bb.i:                                             ; preds = %SSL_get_wbio.exit
  %i.p = icmp eq ptr %.0.i.ph, null
  br i1 %i.p, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i32 @BIO_method_type(ptr noundef nonnull %.0.i.ph) #18
  %.not24.a = icmp eq i32 %i.q, %3
  br i1 %.not24.a, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = tail call i64 @BIO_ctrl(ptr noundef nonnull %.0.i.ph, i32 noundef 105, i64 noundef 0, ptr noundef null) #18
  %i.s = trunc i64 %i.r to i32
  %.not25.a = icmp eq i32 %1, %i.s
  br i1 %.not25.a, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.t = load i32, ptr %0, align 8, !tbaa !19
  %i.u = and i32 %i.t, 128
  %.not4.i = icmp eq i32 %i.u, 0
  br i1 %.not4.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = tail call ptr @BIO_s_datagram() #18
  br label %fd_method.exit

bb.n:                                             ; preds = %bb.l
  %i.w = tail call ptr @BIO_s_socket() #18
  br label %fd_method.exit

fd_method.exit:                                   ; preds = %bb.m, %bb.n
  %.0.i29 = phi ptr [ %i.v, %bb.m ], [ %i.w, %bb.n ]
  %i.x = tail call ptr @BIO_new(ptr noundef %.0.i29) #18 ; 5 uses
  %.not27 = icmp eq ptr %i.x, null
  br i1 %.not27, label %SSL_set0_rbio.exit, label %bb.o

bb.o:                                             ; preds = %fd_method.exit
  %i.y = tail call i64 @BIO_int_ctrl(ptr noundef nonnull %i.x, i32 noundef 104, i64 noundef 0, i32 noundef %1) #18 ; 0 uses
  %i.z = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread25.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = and i32 %i.z, 128
  %.not.i30 = icmp eq i32 %i.ab, 0
  br i1 %.not.i30, label %SSL_set0_rbio.exit40, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i31 = load i32, ptr %0, align 8, !tbaa !19
  %i.ad = and i32 %.pre.i31, 128
  %.not19.i33 = icmp eq i32 %i.ad, 0
  br i1 %.not19.i33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @ossl_quic_conn_set0_net_rbio(ptr noundef nonnull %0, ptr noundef nonnull %i.x) #18
  br label %SSL_set0_rbio.exit40

bb.s:                                             ; preds = %bb.q
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %SSL_set0_rbio.exit40, label %.thread25.i

.thread25.i:                                      ; preds = %bb.s, %bb.o
  %.ph2427.i = phi ptr [ %i.ac, %bb.s ], [ %0, %bb.o ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.ph2427.i, i64 80 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !261
  tail call void @BIO_free_all(ptr noundef %i.ag) #18
  store ptr %i.x, ptr %i.af, align 8, !tbaa !261
  %i.ah = getelementptr inbounds nuw i8, ptr %.ph2427.i, i64 3624
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !263
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !244
  %i.al = getelementptr inbounds nuw i8, ptr %.ph2427.i, i64 3640
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !264
  %i.an = tail call i32 %i.ak(ptr noundef %i.am, ptr noundef nonnull %i.x) #18, !inline_history !265 ; 0 uses
  br label %SSL_set0_rbio.exit40

SSL_set0_rbio.exit:                               ; preds = %fd_method.exit
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1833, ptr noundef nonnull @__func__.SSL_set_rfd) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, ptr noundef null) #18
  br label %SSL_set0_rbio.exit40

bb.t:                                             ; preds = %bb.k
  %i.ao = tail call i32 @BIO_up_ref(ptr noundef nonnull %.0.i.ph) #18
  %.not26 = icmp eq i32 %i.ao, 0
  br i1 %.not26, label %SSL_set0_rbio.exit40, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.thread25.i38, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = and i32 %i.ap, 128
  %.not.i34 = icmp eq i32 %i.ar, 0
  br i1 %.not.i34, label %SSL_set0_rbio.exit40, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i35 = load i32, ptr %0, align 8, !tbaa !19
  %i.at = and i32 %.pre.i35, 128
  %.not19.i37 = icmp eq i32 %i.at, 0
  br i1 %.not19.i37, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @ossl_quic_conn_set0_net_rbio(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.ph) #18
  br label %SSL_set0_rbio.exit40

bb.y:                                             ; preds = %bb.w
  %i.au = icmp eq ptr %i.as, null
  br i1 %i.au, label %SSL_set0_rbio.exit40, label %.thread25.i38

.thread25.i38:                                    ; preds = %bb.y, %bb.u
  %.ph2427.i39 = phi ptr [ %i.as, %bb.y ], [ %0, %bb.u ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.ph2427.i39, i64 80 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !261
  tail call void @BIO_free_all(ptr noundef %i.aw) #18
  store ptr %.0.i.ph, ptr %i.av, align 8, !tbaa !261
  %i.ax = getelementptr inbounds nuw i8, ptr %.ph2427.i39, i64 3624
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !263
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !244
  %i.bb = getelementptr inbounds nuw i8, ptr %.ph2427.i39, i64 3640
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !264
  %i.bd = tail call i32 %i.ba(ptr noundef %i.bc, ptr noundef nonnull %.0.i.ph) #18, !inline_history !265 ; 0 uses
  br label %SSL_set0_rbio.exit40

SSL_set0_rbio.exit40:                             ; preds = %bb.v, %bb.p, %bb.r, %bb.s, %.thread25.i, %bb.x, %bb.y, %.thread25.i38, %SSL_set0_rbio.exit, %bb.t, %SSL_get_wbio.exit.thread49
  %.1 = phi i32 [ 0, %SSL_get_wbio.exit.thread49 ], [ 0, %bb.t ], [ 0, %SSL_set0_rbio.exit ], [ 1, %.thread25.i38 ], [ 1, %bb.y ], [ 1, %bb.x ], [ 1, %bb.p ], [ 1, %.thread25.i ], [ 1, %bb.s ], [ 1, %bb.r ], [ 1, %bb.v ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i64 @SSL_get_finished(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread20, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread20

.thread20:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 608
  %i.j = load i64, ptr %i.i, align 8, !tbaa !266  ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.h, i64 %spec.select, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread20
  %.014 = phi i64 [ %i.j, %.thread20 ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i64 %.014
}

; Function Attrs: nounwind uwtable
define i64 @SSL_get_peer_finished(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread20, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread20

.thread20:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 744
  %i.i = load i64, ptr %i.h, align 8, !tbaa !267  ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.j, i64 %spec.select, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread20
  %.014 = phi i64 [ %i.i, %.thread20 ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i64 %.014
}

; Function Attrs: nounwind uwtable
define i32 @SSL_get_verify_mode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b
end_hunk_0
begin_hunk_1_@SSL_CTX_set_verify:bb.a
  store ptr %2, ptr %i.b, align 8, !tbaa !177
  ret void
}

; Function Attrs: nounwind uwtable
define void @SSL_CTX_set_verify_depth(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  tail call void @X509_VERIFY_PARAM_set_depth(ptr noundef %i.b, i32 noundef %1) #18
  ret void
}

; Function Attrs: nounwind uwtable
define void @SSL_CTX_set_cert_cb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119
  tail call void @ssl_cert_set_cert_cb(ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #18
  ret void
}

declare void @ssl_cert_set_cert_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @SSL_set_cert_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread11, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread11

.thread11:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167
  tail call void @ssl_cert_set_cert_cb(ptr noundef %i.i, ptr noundef %1, ptr noundef %2) #18
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread11
  ret void
}

; Function Attrs: nounwind uwtable
define void @ssl_set_masks(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262  ; 10 uses
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !324
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !470
  %.not87 = icmp eq ptr %i.i, null
  br i1 %.not87, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !471
  %.not88 = icmp eq i32 %i.k, 0
  br i1 %.not88, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call zeroext i16 @tls1_shared_group(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 0) #18
  %i.m = icmp ne i16 %i.l, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.n = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ %i.m, %bb.e ]
  %i.o = load i32, ptr %i.d, align 4, !tbaa !157
  %i.p = and i32 %i.o, 1                          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !157
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !157
  %i.u = and i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !206
  %i.x = trunc i64 %i.w to i32                    ; 4 uses
  %.not.i = icmp sgt i32 %i.x, 6
  br i1 %.not.i, label %bb.g, label %ssl_has_cert.exit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load i32, ptr %i.y, align 8, !tbaa !196
  %.not.i.i = icmp eq i32 %i.z, 0                 ; 2 uses
  %.09.in.v.i.i = select i1 %.not.i.i, i64 5968, i64 5984
  %.09.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.09.in.v.i.i
  %.09.i.i = load ptr, ptr %.09.in.i.i, align 8, !tbaa !237 ; 2 uses
  %i.aa = icmp eq ptr %.09.i.i, null
  br i1 %i.aa, label %.ssl_has_cert_type.exit.thread.i_crit_edge, label %ssl_has_cert_type.exit.i

.ssl_has_cert_type.exit.thread.i_crit_edge:       ; preds = %bb.g
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !167
  br label %ssl_has_cert_type.exit.thread.i

ssl_has_cert_type.exit.i:                         ; preds = %bb.g
  %.0.in.v.i.i = select i1 %.not.i.i, i64 5976, i64 5992
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i.i
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !173
  %i.ab = tail call ptr @memchr(ptr noundef nonnull %.09.i.i, i32 noundef 2, i64 noundef %.0.i.i) #19
  %.not15.i = icmp eq ptr %i.ab, null
  %.pre325 = load ptr, ptr %i.a, align 8, !tbaa !167 ; 2 uses
  br i1 %.not15.i, label %ssl_has_cert_type.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %ssl_has_cert_type.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre325, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !472
  br label %.sink.split.i

ssl_has_cert_type.exit.thread.i:                  ; preds = %.ssl_has_cert_type.exit.thread.i_crit_edge, %ssl_has_cert_type.exit.i
  %i.ae = phi ptr [ %.pre, %.ssl_has_cert_type.exit.thread.i_crit_edge ], [ %.pre325, %ssl_has_cert_type.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !472 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !275
  %.not12.i = icmp eq ptr %i.ai, null
  br i1 %.not12.i, label %ssl_has_cert.exit.thread, label %.sink.split.i

.sink.split.i:                                    ; preds = %ssl_has_cert_type.exit.thread.i, %bb.h
  %i.aj = phi ptr [ %i.ad, %bb.h ], [ %i.ag, %ssl_has_cert_type.exit.thread.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !276
  %.not318 = icmp eq ptr %i.al, null
  br label %ssl_has_cert.exit.thread

ssl_has_cert.exit:                                ; preds = %bb.f
  %.not.i126 = icmp eq i32 %i.x, 6
  br i1 %.not.i126, label %ssl_has_cert.exit.thread, label %ssl_has_cert.exit141

ssl_has_cert.exit.thread:                         ; preds = %.sink.split.i, %ssl_has_cert_type.exit.thread.i, %ssl_has_cert.exit
  %.0.shrunk.i350 = phi i1 [ true, %ssl_has_cert.exit ], [ %.not318, %.sink.split.i ], [ true, %ssl_has_cert_type.exit.thread.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = load i32, ptr %i.am, align 8, !tbaa !196
  %.not.i.i128 = icmp eq i32 %i.an, 0             ; 2 uses
  %.09.in.v.i.i129 = select i1 %.not.i.i128, i64 5968, i64 5984
  %.09.in.i.i130 = getelementptr inbounds nuw i8, ptr %0, i64 %.09.in.v.i.i129
  %.09.i.i131 = load ptr, ptr %.09.in.i.i130, align 8, !tbaa !237 ; 2 uses
  %i.ao = icmp eq ptr %.09.i.i131, null
  br i1 %i.ao, label %.ssl_has_cert_type.exit.thread.i139_crit_edge, label %ssl_has_cert_type.exit.i132

.ssl_has_cert_type.exit.thread.i139_crit_edge:    ; preds = %ssl_has_cert.exit.thread
  %.pre326 = load ptr, ptr %i.a, align 8, !tbaa !167
  br label %ssl_has_cert_type.exit.thread.i139

ssl_has_cert_type.exit.i132:                      ; preds = %ssl_has_cert.exit.thread
  %.0.in.v.i.i133 = select i1 %.not.i.i128, i64 5976, i64 5992
  %.0.in.i.i134 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i.i133
  %.0.i.i135 = load i64, ptr %.0.in.i.i134, align 8, !tbaa !173
  %i.ap = tail call ptr @memchr(ptr noundef nonnull %.09.i.i131, i32 noundef 2, i64 noundef %.0.i.i135) #19
  %.not15.i136 = icmp eq ptr %i.ap, null
  %.pre327 = load ptr, ptr %i.a, align 8, !tbaa !167 ; 2 uses
  br i1 %.not15.i136, label %ssl_has_cert_type.exit.thread.i139, label %bb.i

bb.i:                                             ; preds = %ssl_has_cert_type.exit.i132
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre327, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !472
  br label %.sink.split.i137

ssl_has_cert_type.exit.thread.i139:               ; preds = %.ssl_has_cert_type.exit.thread.i139_crit_edge, %ssl_has_cert_type.exit.i132
  %i.as = phi ptr [ %.pre326, %.ssl_has_cert_type.exit.thread.i139_crit_edge ], [ %.pre327, %ssl_has_cert_type.exit.i132 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !472 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 200
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !275
  %.not12.i140 = icmp eq ptr %i.aw, null
  br i1 %.not12.i140, label %ssl_has_cert.exit141.thread, label %.sink.split.i137

.sink.split.i137:                                 ; preds = %ssl_has_cert_type.exit.thread.i139, %bb.i
  %i.ax = phi ptr [ %i.ar, %bb.i ], [ %i.au, %ssl_has_cert_type.exit.thread.i139 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !276
  %.not319 = icmp eq ptr %i.az, null
  %i.ba = select i1 %.not319, i1 %.0.shrunk.i350, i1 false
  br label %ssl_has_cert.exit141.thread

ssl_has_cert.exit141.thread:                      ; preds = %ssl_has_cert_type.exit.thread.i139, %.sink.split.i137
  %.0.shrunk.i127.ph = phi i1 [ %i.ba, %.sink.split.i137 ], [ %.0.shrunk.i350, %ssl_has_cert_type.exit.thread.i139 ] ; 2 uses
  %.178352 = select i1 %.0.shrunk.i127.ph, i64 0, i64 528
  %.1353 = select i1 %.0.shrunk.i127.ph, i64 0, i64 128
  br label %bb.j

ssl_has_cert.exit141:                             ; preds = %ssl_has_cert.exit
  %.not.i142 = icmp sgt i32 %i.x, 4
  br i1 %.not.i142, label %bb.j, label %.thread

bb.j:                                             ; preds = %ssl_has_cert.exit141.thread, %ssl_has_cert.exit141
  %.1358 = phi i64 [ %.1353, %ssl_has_cert.exit141.thread ], [ 0, %ssl_has_cert.exit141 ] ; 3 uses
  %.178356 = phi i64 [ %.178352, %ssl_has_cert.exit141.thread ], [ 0, %ssl_has_cert.exit141 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !196
  %.not.i.i144 = icmp eq i32 %i.bc, 0             ; 2 uses
  %.09.in.v.i.i145 = select i1 %.not.i.i144, i64 5968, i64 5984
  %.09.in.i.i146 = getelementptr inbounds nuw i8, ptr %0, i64 %.09.in.v.i.i145
  %.09.i.i147 = load ptr, ptr %.09.in.i.i146, align 8, !tbaa !237 ; 2 uses
  %i.bd = icmp eq ptr %.09.i.i147, null
  br i1 %i.bd, label %.ssl_has_cert_type.exit.thread.i155_crit_edge, label %ssl_has_cert_type.exit.i148

.ssl_has_cert_type.exit.thread.i155_crit_edge:    ; preds = %bb.j
  %.pre328 = load ptr, ptr %i.a, align 8, !tbaa !167
  br label %ssl_has_cert_type.exit.thread.i155

ssl_has_cert_type.exit.i148:                      ; preds = %bb.j
  %.0.in.v.i.i149 = select i1 %.not.i.i144, i64 5976, i64 5992
  %.0.in.i.i150 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i.i149
  %.0.i.i151 = load i64, ptr %.0.in.i.i150, align 8, !tbaa !173
  %i.be = tail call ptr @memchr(ptr noundef nonnull %.09.i.i147, i32 noundef 2, i64 noundef %.0.i.i151) #19
  %.not15.i152 = icmp eq ptr %i.be, null
  %.pre329 = load ptr, ptr %i.a, align 8, !tbaa !167 ; 2 uses
  br i1 %.not15.i152, label %ssl_has_cert_type.exit.thread.i155, label %bb.k

bb.k:                                             ; preds = %ssl_has_cert_type.exit.i148
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre329, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !472
  br label %ssl_has_cert.exit157

ssl_has_cert_type.exit.thread.i155:               ; preds = %.ssl_has_cert_type.exit.thread.i155_crit_edge, %ssl_has_cert_type.exit.i148
  %i.bh = phi ptr [ %.pre328, %.ssl_has_cert_type.exit.thread.i155_crit_edge ], [ %.pre329, %ssl_has_cert_type.exit.i148 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !472 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !275
  %.not12.i156 = icmp eq ptr %i.bl, null
  br i1 %.not12.i156, label %.thread, label %ssl_has_cert.exit157

ssl_has_cert.exit157:                             ; preds = %bb.k, %ssl_has_cert_type.exit.thread.i155
  %i.bm = phi ptr [ %i.bg, %bb.k ], [ %i.bj, %ssl_has_cert_type.exit.thread.i155 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 168
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !276
  %.fr395 = freeze ptr %i.bo
  %.not320 = icmp eq ptr %.fr395, null
  br i1 %.not320, label %.thread, label %bb.l

bb.l:                                             ; preds = %ssl_has_cert.exit157
  %i.bp = or disjoint i64 %.1358, 32
  %1 = or i64 %.178356, 16
  br label %.thread

.thread:                                          ; preds = %bb.l, %ssl_has_cert_type.exit.thread.i155, %ssl_has_cert.exit141, %ssl_has_cert.exit157
  %2 = phi i64 [ %1, %bb.l ], [ 0, %ssl_has_cert.exit141 ], [ %.178356, %ssl_has_cert_type.exit.thread.i155 ], [ %.178356, %ssl_has_cert.exit157 ]
  %i.bq = phi i64 [ %i.bp, %bb.l ], [ 0, %ssl_has_cert.exit141 ], [ %.1358, %ssl_has_cert_type.exit.thread.i155 ], [ %.1358, %ssl_has_cert.exit157 ] ; 12 uses
  %.not92 = icmp eq i32 %i.p, 0
  %3 = zext nneg i32 %i.p to i64
  %.380 = or disjoint i64 %2, %3                  ; 2 uses
  %4 = or disjoint i64 %.380, 2
  %.481 = select i1 %i.n, i64 %4, i64 %.380       ; 2 uses
  br i1 %.not92, label %bb.m, label %bb.w

bb.m:                                             ; preds = %.thread
  %.not.i158 = icmp sgt i32 %i.x, 1
  br i1 %.not.i158, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !196
  %.not.i.i160 = icmp eq i32 %i.bs, 0             ; 2 uses
  %.09.in.v.i.i161 = select i1 %.not.i.i160, i64 5968, i64 5984
  %.09.in.i.i162 = getelementptr inbounds nuw i8, ptr %0, i64 %.09.in.v.i.i161
  %.09.i.i163 = load ptr, ptr %.09.in.i.i162, align 8, !tbaa !237 ; 2 uses
  %i.bt = icmp eq ptr %.09.i.i163, null
  br i1 %i.bt, label %.ssl_has_cert_type.exit.thread.i171_crit_edge, label %ssl_has_cert_type.exit.i164

.ssl_has_cert_type.exit.thread.i171_crit_edge:    ; preds = %bb.n
  %.pre330 = load ptr, ptr %i.a, align 8, !tbaa !167
  br label %ssl_has_cert_type.exit.thread.i171

ssl_has_cert_type.exit.i164:                      ; preds = %bb.n
  %.0.in.v.i.i165 = select i1 %.not.i.i160, i64 5976, i64 5992
  %.0.in.i.i166 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i.i165
  %.0.i.i167 = load i64, ptr %.0.in.i.i166, align 8, !tbaa !173
  %i.bu = tail call ptr @memchr(ptr noundef nonnull %.09.i.i163, i32 noundef 2, i64 noundef %.0.i.i167) #19
  %.not15.i168 = icmp eq ptr %i.bu, null
  %.pre331 = load ptr, ptr %i.a, align 8, !tbaa !167 ; 2 uses
  br i1 %.not15.i168, label %ssl_has_cert_type.exit.thread.i171, label %bb.o

bb.o:                                             ; preds = %ssl_has_cert_type.exit.i164
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre331, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !472
  br label %ssl_has_cert.exit173

ssl_has_cert_type.exit.thread.i171:               ; preds = %.ssl_has_cert_type.exit.thread.i171_crit_edge, %ssl_has_cert_type.exit.i164
  %i.bx = phi ptr [ %.pre330, %.ssl_has_cert_type.exit.thread.i171_crit_edge ], [ %.pre331, %ssl_has_cert_type.exit.i164 ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !472 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !275
  %.not12.i172 = icmp eq ptr %i.cb, null
  br i1 %.not12.i172, label %.critedge, label %ssl_has_cert.exit173

ssl_has_cert.exit173:                             ; preds = %bb.o, %ssl_has_cert_type.exit.thread.i171
  %i.cc = phi ptr [ %i.bw, %bb.o ], [ %i.bz, %ssl_has_cert_type.exit.thread.i171 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !276
  %.not321 = icmp eq ptr %i.ce, null
  br i1 %.not321, label %.critedge, label %bb.p

bb.p:                                             ; preds = %ssl_has_cert.exit173
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !157
  %i.ch = and i32 %i.cg, 256
  %.not94 = icmp eq i32 %i.ch, 0
  br i1 %.not94, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.pre13.i = load i32, ptr %0, align 8, !tbaa !19 ; 2 uses
  %i.ci = icmp eq i32 %.pre13.i, 0
  br i1 %i.ci, label %SSL_version.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = and i32 %.pre13.i, 128
  %.not.i174 = icmp eq i32 %i.cj, 0
  br i1 %.not.i174, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i = load i32, ptr %0, align 8, !tbaa !19  ; 3 uses
  %i.cl = and i32 %.pre.i, -2
  %switch.i = icmp eq i32 %i.cl, 128
  %i.cm = icmp eq ptr %i.ck, null
  %or.cond = select i1 %switch.i, i1 true, i1 %i.cm
  br i1 %or.cond, label %.critedge, label %SSL_version.exit

SSL_version.exit:                                 ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !92
  %.mask = and i32 %i.co, -256
  %i.cp = icmp eq i32 %.mask, 768
  br i1 %i.cp, label %bb.t, label %.critedge

SSL_version.exit.thread:                          ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !92
  %.mask376 = and i32 %i.cr, -256
  %i.cs = icmp eq i32 %.mask376, 768
  br i1 %i.cs, label %SSL_version.exit181, label %.critedge

bb.t:                                             ; preds = %SSL_version.exit
  %i.ct = icmp eq i32 %.pre.i, 0
  br i1 %i.ct, label %SSL_version.exit181, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = and i32 %.pre.i, 128
  %.not.i176 = icmp eq i32 %i.cu, 0
  br i1 %.not.i176, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i177 = load i32, ptr %0, align 8, !tbaa !19
  %i.cw = and i32 %.pre.i177, -2
  %switch.i178 = icmp eq i32 %i.cw, 128
  %i.cx = icmp eq ptr %i.cv, null
  %or.cond309 = select i1 %switch.i178, i1 true, i1 %i.cx
  br i1 %or.cond309, label %.critedge, label %SSL_version.exit181

SSL_version.exit181:                              ; preds = %SSL_version.exit.thread, %bb.v, %bb.t
  %i.cy = phi ptr [ %i.cv, %bb.v ], [ %0, %bb.t ], [ %0, %SSL_version.exit.thread ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !92
  %i.db = icmp eq i32 %i.da, 771
  br i1 %i.db, label %bb.w, label %.critedge

bb.w:                                             ; preds = %SSL_version.exit181, %.thread
  %i.dc = or disjoint i64 %i.bq, 1
  br label %.critedge

.critedge:                                        ; preds = %SSL_version.exit.thread, %bb.u, %bb.r, %bb.v, %bb.s, %ssl_has_cert_type.exit.thread.i171, %bb.m, %SSL_version.exit, %bb.w, %SSL_version.exit181, %bb.p, %ssl_has_cert.exit173
  %.3 = phi i64 [ %i.dc, %bb.w ], [ %i.bq, %SSL_version.exit181 ], [ %i.bq, %bb.p ], [ %i.bq, %ssl_has_cert.exit173 ], [ %i.bq, %SSL_version.exit ], [ %i.bq, %bb.u ], [ %i.bq, %ssl_has_cert_type.exit.thread.i171 ], [ %i.bq, %bb.m ], [ %i.bq, %bb.r ], [ %i.bq, %bb.s ], [ %i.bq, %bb.v ], [ %i.bq, %SSL_version.exit.thread ]
  %i.dd = shl i32 %i.r, 1
  %i.de = and i32 %i.dd, 2
  %i.df = zext nneg i32 %i.de to i64
  %spec.select118 = or i64 %.3, %i.df
  %i.dg = load i32, ptr %i.d, align 4, !tbaa !157
  %i.dh = and i32 %i.dg, 4096                     ; 2 uses
  %.not96.not = icmp eq i32 %i.dh, 0
  %.lobit = lshr exact i32 %i.dh, 12
  %5 = zext nneg i32 %.lobit to i64
  %.582 = or i64 %.481, %5                        ; 2 uses
  %.5.v = select i1 %.not96.not, i64 4, i64 5
  %.5 = or i64 %spec.select118, %.5.v
  %i.di = load i32, ptr %i.s, align 4, !tbaa !157
  %i.dj = lshr i32 %i.di, 9
  %i.dk = and i32 %i.dj, 8
  %i.dl = zext nneg i32 %i.dk to i64
  %.6 = or i64 %.5, %i.dl                         ; 8 uses
  %.pre13.i182 = load i32, ptr %0, align 8, !tbaa !19 ; 2 uses
  %i.dm = icmp eq i32 %.pre13.i182, 0
  br i1 %i.dm, label %SSL_version.exit188.thread, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.dn = and i32 %.pre13.i182, 128
  %.not.i183 = icmp eq i32 %i.dn, 0
  br i1 %.not.i183, label %.critedge120, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i184 = load i32, ptr %0, align 8, !tbaa !19 ; 3 uses
  %i.dp = and i32 %.pre.i184, -2
  %switch.i185 = icmp eq i32 %i.dp, 128
  %i.dq = icmp eq ptr %i.do, null
  %or.cond310 = select i1 %switch.i185, i1 true, i1 %i.dq
  br i1 %or.cond310, label %.critedge120, label %SSL_version.exit188

SSL_version.exit188:                              ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !92
  %.mask98 = and i32 %i.ds, -256
  %i.dt = icmp eq i32 %.mask98, 768
  br i1 %i.dt, label %bb.z, label %.critedge120

SSL_version.exit188.thread:                       ; preds = %.critedge
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !92
  %.mask98381 = and i32 %i.dv, -256
  %i.dw = icmp eq i32 %.mask98381, 768
  br i1 %i.dw, label %SSL_version.exit195, label %.critedge120

bb.z:                                             ; preds = %SSL_version.exit188
  %i.dx = icmp eq i32 %.pre.i184, 0
  br i1 %i.dx, label %SSL_version.exit195, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dy = and i32 %.pre.i184, 128
  %.not.i190 = icmp eq i32 %i.dy, 0
  br i1 %.not.i190, label %.critedge120, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i191 = load i32, ptr %0, align 8, !tbaa !19
  %i.ea = and i32 %.pre.i191, -2
  %switch.i192 = icmp eq i32 %i.ea, 128
  %i.eb = icmp eq ptr %i.dz, null
  %or.cond311 = select i1 %switch.i192, i1 true, i1 %i.eb
  br i1 %or.cond311, label %.critedge120, label %SSL_version.exit195

SSL_version.exit195:                              ; preds = %SSL_version.exit188.thread, %bb.ab, %bb.z
  %i.ec = phi ptr [ %i.dz, %bb.ab ], [ %0, %bb.z ], [ %0, %SSL_version.exit188.thread ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !92
  %i.ef = icmp eq i32 %i.ee, 771
  br i1 %i.ef, label %bb.ac, label %.critedge120

bb.ac:                                            ; preds = %SSL_version.exit195
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !157
  %i.ei = lshr i32 %i.eh, 12
  %i.ej = and i32 %i.ei, 1
  %i.ek = zext nneg i32 %i.ej to i64
  %spec.select121 = or i64 %.6, %i.ek             ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !157
  %i.en = and i32 %i.em, 4096
  %.not100 = icmp eq i32 %i.en, 0
  br i1 %.not100, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !157
  %i.eq = and i32 %i.ep, 4096
  %.not101 = icmp eq i32 %i.eq, 0
  br i1 %.not101, label %.critedge120, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.er = or i64 %spec.select121, 8
  br label %.critedge120

.critedge120:                                     ; preds = %SSL_version.exit188.thread, %bb.aa, %bb.x, %bb.ab, %bb.y, %SSL_version.exit188, %bb.ad, %bb.ae, %SSL_version.exit195
  %.8 = phi i64 [ %i.er, %bb.ae ], [ %spec.select121, %bb.ad ], [ %.6, %SSL_version.exit195 ], [ %.6, %SSL_version.exit188 ], [ %.6, %bb.aa ], [ %.6, %bb.x ], [ %.6, %bb.y ], [ %.6, %bb.ab ], [ %.6, %SSL_version.exit188.thread ] ; 3 uses
  %.not102 = icmp eq i32 %i.u, 0
  br i1 %.not102, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.critedge120
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !472
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 120
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !275
  %i.ew = tail call i32 @X509_get_key_usage(ptr noundef %i.ev) #18
  %i.ex = and i32 %i.ew, 128
  %i.ey = load i32, ptr %i.s, align 4, !tbaa !157
  %i.ez = and i32 %i.ey, 2
  %.not103 = icmp eq i32 %i.ez, 0
  %.not104105 = icmp eq i32 %i.ex, 0
  %.not104 = select i1 %.not103, i1 true, i1 %.not104105
  %i.fa = or i64 %.8, 8
  %spec.select122 = select i1 %.not104, i64 %.8, i64 %i.fa
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.critedge120
  %.10 = phi i64 [ %spec.select122, %bb.af ], [ %.8, %.critedge120 ] ; 14 uses
  %i.fb = and i64 %.10, 8
  %.not106 = icmp eq i64 %i.fb, 0
  br i1 %.not106, label %bb.ah, label %ssl_has_cert.exit211.thread

bb.ah:                                            ; preds = %bb.ag
  %i.fc = load i64, ptr %i.v, align 8, !tbaa !206
  %i.fd = trunc i64 %i.fc to i32
  %.not.i196 = icmp sgt i32 %i.fd, 7
  br i1 %.not.i196, label %bb.ai, label %ssl_has_cert.exit211.thread

bb.ai:                                            ; preds = %bb.ah
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !196
  %.not.i.i198 = icmp eq i32 %i.ff, 0             ; 2 uses
  %.09.in.v.i.i199 = select i1 %.not.i.i198, i64 5968, i64 5984
  %.09.in.i.i200 = getelementptr inbounds nuw i8, ptr %0, i64 %.09.in.v.i.i199
  %.09.i.i201 = load ptr, ptr %.09.in.i.i200, align 8, !tbaa !237 ; 2 uses
  %i.fg = icmp eq ptr %.09.i.i201, null
  br i1 %i.fg, label %.ssl_has_cert_type.exit.thread.i209_crit_edge, label %ssl_has_cert_type.exit.i202

.ssl_has_cert_type.exit.thread.i209_crit_edge:    ; preds = %bb.ai
  %.pre334 = load ptr, ptr %i.a, align 8, !tbaa !167
  br label %ssl_has_cert_type.exit.thread.i209

ssl_has_cert_type.exit.i202:                      ; preds = %bb.ai
  %.0.in.v.i.i203 = select i1 %.not.i.i198, i64 5976, i64 5992
  %.0.in.i.i204 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i.i203
  %.0.i.i205 = load i64, ptr %.0.in.i.i204, align 8, !tbaa !173
  %i.fh = tail call ptr @memchr(ptr noundef nonnull %.09.i.i201, i32 noundef 2, i64 noundef %.0.i.i205) #19
  %.not15.i206 = icmp eq ptr %i.fh, null
  %.pre335 = load ptr, ptr %i.a, align 8, !tbaa !167 ; 2 uses
  br i1 %.not15.i206, label %ssl_has_cert_type.exit.thread.i209, label %bb.aj

bb.aj:                                            ; preds = %ssl_has_cert_type.exit.i202
  %i.fi = getelementptr inbounds nuw i8, ptr %.pre335, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !472
  br label %ssl_has_cert.exit211

ssl_has_cert_type.exit.thread.i209:               ; preds = %.ssl_has_cert_type.exit.thread.i209_crit_edge, %ssl_has_cert_type.exit.i202
  %i.fk = phi ptr [ %.pre334, %.ssl_has_cert_type.exit.thread.i209_crit_edge ], [ %.pre335, %ssl_has_cert_type.exit.i202 ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !472 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 280
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !275
  %.not12.i210 = icmp eq ptr %i.fo, null
  br i1 %.not12.i210, label %ssl_has_cert.exit211.thread, label %ssl_has_cert.exit211

ssl_has_cert.exit211:                             ; preds = %bb.aj, %ssl_has_cert_type.exit.thread.i209
  %i.fp = phi ptr [ %i.fj, %bb.aj ], [ %i.fm, %ssl_has_cert_type.exit.thread.i209 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 288
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !276
  %.not322 = icmp eq ptr %i.fr, null
  br i1 %.not322, label %ssl_has_cert.exit211.thread, label %bb.ak

bb.ak:                                            ; preds = %ssl_has_cert.exit211
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !157
  %i.fu = and i32 %i.ft, 256
  %.not108 = icmp eq i32 %i.fu, 0
  br i1 %.not108, label %ssl_has_cert.exit211.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.pre13.i212 = load i32, ptr %0, align 8, !tbaa !19 ; 2 uses
  %i.fv = icmp eq i32 %.pre13.i212, 0
  br i1 %i.fv, label %SSL_version.exit218.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fw = and i32 %.pre13.i212, 128
  %.not.i213 = icmp eq i32 %i.fw, 0
  br i1 %.not.i213, label %ssl_has_cert.exit211.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fx = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i214 = load i32, ptr %0, align 8, !tbaa !19 ; 3 uses
  %i.fy = and i32 %.pre.i214, -2
  %switch.i215 = icmp eq i32 %i.fy, 128
  %i.fz = icmp eq ptr %i.fx, null
  %or.cond312 = select i1 %switch.i215, i1 true, i1 %i.fz
  br i1 %or.cond312, label %ssl_has_cert.exit211.thread, label %SSL_version.exit218

SSL_version.exit218:                              ; preds = %bb.an
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !92
  %.mask109 = and i32 %i.gb, -256
  %i.gc = icmp eq i32 %.mask109, 768
  br i1 %i.gc, label %bb.ao, label %ssl_has_cert.exit211.thread

SSL_version.exit218.thread:                       ; preds = %bb.al
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !92
  %.mask109386 = and i32 %i.ge, -256
  %i.gf = icmp eq i32 %.mask109386, 768
  br i1 %i.gf, label %.thread388, label %ssl_has_cert.exit211.thread

bb.ao:                                            ; preds = %SSL_version.exit218
  %i.gg = icmp eq i32 %.pre.i214, 0
  br i1 %i.gg, label %.thread388, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gh = and i32 %.pre.i214, 128
  %.not.i220 = icmp eq i32 %i.gh, 0
  br i1 %.not.i220, label %ssl_has_cert.exit211.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gi = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i221 = load i32, ptr %0, align 8, !tbaa !19
  %i.gj = and i32 %.pre.i221, -2
  %switch.i222 = icmp eq i32 %i.gj, 128
  %i.gk = icmp eq ptr %i.gi, null
  %or.cond313 = select i1 %switch.i222, i1 true, i1 %i.gk
  br i1 %or.cond313, label %ssl_has_cert.exit211.thread, label %.thread388

.thread388:                                       ; preds = %SSL_version.exit218.thread, %bb.aq, %bb.ao
  %i.gl = phi ptr [ %i.gi, %bb.aq ], [ %0, %bb.ao ], [ %0, %SSL_version.exit218.thread ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 72
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !92
  %.fr = freeze i32 %i.gn
  %i.go = icmp eq i32 %.fr, 771
  %i.gp = or disjoint i64 %.10, 8
  %spec.select314 = select i1 %i.go, i64 %i.gp, i64 %.10
  br label %ssl_has_cert.exit211.thread

ssl_has_cert.exit211.thread:                      ; preds = %SSL_version.exit218.thread, %.thread388, %bb.ap, %bb.am, %bb.aq, %bb.an, %SSL_version.exit218, %ssl_has_cert_type.exit.thread.i209, %bb.ah, %bb.ak, %ssl_has_cert.exit211, %bb.ag
  %.11 = phi i64 [ %.10, %bb.ag ], [ %.10, %ssl_has_cert.exit211 ], [ %.10, %bb.ap ], [ %.10, %bb.ak ], [ %.10, %bb.aq ], [ %spec.select314, %.thread388 ], [ %.10, %ssl_has_cert_type.exit.thread.i209 ], [ %.10, %bb.ah ], [ %.10, %SSL_version.exit218 ], [ %.10, %bb.am ], [ %.10, %bb.an ], [ %.10, %SSL_version.exit218.thread ] ; 14 uses
  %i.gq = and i64 %.11, 8
  %.not110 = icmp eq i64 %i.gq, 0
  br i1 %.not110, label %bb.ar, label %ssl_has_cert.exit241.thread

bb.ar:                                            ; preds = %ssl_has_cert.exit211.thread
  %i.gr = load i64, ptr %i.v, align 8, !tbaa !206
  %i.gs = trunc i64 %i.gr to i32
  %.not.i226 = icmp sgt i32 %i.gs, 8
  br i1 %.not.i226, label %bb.as, label %ssl_has_cert.exit241.thread

bb.as:                                            ; preds = %bb.ar
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !196
  %.not.i.i228 = icmp eq i32 %i.gu, 0             ; 2 uses
  %.09.in.v.i.i229 = select i1 %.not.i.i228, i64 5968, i64 5984
  %.09.in.i.i230 = getelementptr inbounds nuw i8, ptr %0, i64 %.09.in.v.i.i229
  %.09.i.i231 = load ptr, ptr %.09.in.i.i230, align 8, !tbaa !237 ; 2 uses
  %i.gv = icmp eq ptr %.09.i.i231, null
  br i1 %i.gv, label %.ssl_has_cert_type.exit.thread.i239_crit_edge, label %ssl_has_cert_type.exit.i232

.ssl_has_cert_type.exit.thread.i239_crit_edge:    ; preds = %bb.as
  %.pre337 = load ptr, ptr %i.a, align 8, !tbaa !167
  br label %ssl_has_cert_type.exit.thread.i239

ssl_has_cert_type.exit.i232:                      ; preds = %bb.as
  %.0.in.v.i.i233 = select i1 %.not.i.i228, i64 5976, i64 5992
  %.0.in.i.i234 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i.i233
  %.0.i.i235 = load i64, ptr %.0.in.i.i234, align 8, !tbaa !173
  %i.gw = tail call ptr @memchr(ptr noundef nonnull %.09.i.i231, i32 noundef 2, i64 noundef %.0.i.i235) #19
  %.not15.i236 = icmp eq ptr %i.gw, null
  %.pre338 = load ptr, ptr %i.a, align 8, !tbaa !167 ; 2 uses
  br i1 %.not15.i236, label %ssl_has_cert_type.exit.thread.i239, label %bb.at

bb.at:                                            ; preds = %ssl_has_cert_type.exit.i232
  %i.gx = getelementptr inbounds nuw i8, ptr %.pre338, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !472
  br label %ssl_has_cert.exit241

ssl_has_cert_type.exit.thread.i239:               ; preds = %.ssl_has_cert_type.exit.thread.i239_crit_edge, %ssl_has_cert_type.exit.i232
  %i.gz = phi ptr [ %.pre337, %.ssl_has_cert_type.exit.thread.i239_crit_edge ], [ %.pre338, %ssl_has_cert_type.exit.i232 ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !472 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 320
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !275
  %.not12.i240 = icmp eq ptr %i.hd, null
  br i1 %.not12.i240, label %ssl_has_cert.exit241.thread, label %ssl_has_cert.exit241

ssl_has_cert.exit241:                             ; preds = %bb.at, %ssl_has_cert_type.exit.thread.i239
  %i.he = phi ptr [ %i.gy, %bb.at ], [ %i.hb, %ssl_has_cert_type.exit.thread.i239 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 328
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !276
  %.not323 = icmp eq ptr %i.hg, null
  br i1 %.not323, label %ssl_has_cert.exit241.thread, label %bb.au

bb.au:                                            ; preds = %ssl_has_cert.exit241
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !157
  %i.hj = and i32 %i.hi, 256
  %.not112 = icmp eq i32 %i.hj, 0
  br i1 %.not112, label %ssl_has_cert.exit241.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.pre13.i242 = load i32, ptr %0, align 8, !tbaa !19 ; 2 uses
  %i.hk = icmp eq i32 %.pre13.i242, 0
  br i1 %i.hk, label %SSL_version.exit248.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hl = and i32 %.pre13.i242, 128
  %.not.i243 = icmp eq i32 %i.hl, 0
  br i1 %.not.i243, label %ssl_has_cert.exit241.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hm = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i244 = load i32, ptr %0, align 8, !tbaa !19 ; 3 uses
  %i.hn = and i32 %.pre.i244, -2
  %switch.i245 = icmp eq i32 %i.hn, 128
  %i.ho = icmp eq ptr %i.hm, null
  %or.cond315 = select i1 %switch.i245, i1 true, i1 %i.ho
  br i1 %or.cond315, label %ssl_has_cert.exit241.thread, label %SSL_version.exit248

SSL_version.exit248:                              ; preds = %bb.ax
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !92
  %.mask113 = and i32 %i.hq, -256
  %i.hr = icmp eq i32 %.mask113, 768
  br i1 %i.hr, label %bb.ay, label %ssl_has_cert.exit241.thread

SSL_version.exit248.thread:                       ; preds = %bb.av
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !92
  %.mask113391 = and i32 %i.ht, -256
  %i.hu = icmp eq i32 %.mask113391, 768
  br i1 %i.hu, label %.thread393, label %ssl_has_cert.exit241.thread

bb.ay:                                            ; preds = %SSL_version.exit248
  %i.hv = icmp eq i32 %.pre.i244, 0
  br i1 %i.hv, label %.thread393, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hw = and i32 %.pre.i244, 128
  %.not.i250 = icmp eq i32 %i.hw, 0
  br i1 %.not.i250, label %ssl_has_cert.exit241.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hx = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i251 = load i32, ptr %0, align 8, !tbaa !19
  %i.hy = and i32 %.pre.i251, -2
  %switch.i252 = icmp eq i32 %i.hy, 128
  %i.hz = icmp eq ptr %i.hx, null
  %or.cond316 = select i1 %switch.i252, i1 true, i1 %i.hz
  br i1 %or.cond316, label %ssl_has_cert.exit241.thread, label %.thread393

.thread393:                                       ; preds = %SSL_version.exit248.thread, %bb.ba, %bb.ay
  %i.ia = phi ptr [ %i.hx, %bb.ba ], [ %0, %bb.ay ], [ %0, %SSL_version.exit248.thread ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 72
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !92
  %.fr324 = freeze i32 %i.ic
  %i.id = icmp eq i32 %.fr324, 771
  %i.ie = or disjoint i64 %.11, 8
  %spec.select317 = select i1 %i.id, i64 %i.ie, i64 %.11
  br label %ssl_has_cert.exit241.thread

ssl_has_cert.exit241.thread:                      ; preds = %SSL_version.exit248.thread, %.thread393, %bb.az, %bb.aw, %bb.ba, %bb.ax, %SSL_version.exit248, %ssl_has_cert_type.exit.thread.i239, %bb.ar, %bb.au, %ssl_has_cert.exit241, %ssl_has_cert.exit211.thread
  %.12 = phi i64 [ %.11, %ssl_has_cert.exit211.thread ], [ %.11, %ssl_has_cert.exit241 ], [ %.11, %bb.az ], [ %.11, %bb.au ], [ %.11, %bb.ba ], [ %spec.select317, %.thread393 ], [ %.11, %ssl_has_cert_type.exit.thread.i239 ], [ %.11, %bb.ar ], [ %.11, %SSL_version.exit248 ], [ %.11, %bb.aw ], [ %.11, %bb.ax ], [ %.11, %SSL_version.exit248.thread ]
  %6 = and i64 %.582, 1
  %.not114 = icmp eq i64 %6, 0
  %spec.select125.v = select i1 %.not114, i64 12, i64 76
  %7 = shl nuw nsw i64 %.481, 7
  %8 = and i64 %7, 256
  %9 = or disjoint i64 %8, %spec.select125.v
  %.784 = or i64 %9, %.582
  %10 = trunc nuw nsw i64 %.784 to i32
  %i.if = or i32 %10, 128
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i32 %i.if, ptr %i.ig, align 8, !tbaa !473
  %i.ih = trunc nuw nsw i64 %.12 to i32
  %i.ii = or i32 %i.ih, 16
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1044
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !474
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %ssl_has_cert.exit241.thread
  ret void
}

declare zeroext i16 @tls1_shared_group(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @SSL_version(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.pre13 = load i32, ptr %0, align 8, !tbaa !19  ; 3 uses
  %i.a = icmp eq i32 %.pre13, 0
  br i1 %i.a, label %.thread17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %.pre13, 128
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18
  %.pre = load i32, ptr %0, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = phi i32 [ %.pre, %bb.c ], [ %.pre13, %bb.b ]
  %i.e = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.f = and i32 %i.d, -2
  %switch = icmp eq i32 %i.f, 128
  br i1 %switch, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.f, label %.thread17

.thread17:                                        ; preds = %bb.a, %bb.e
  %i.h = phi ptr [ %i.e, %bb.e ], [ %0, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %.thread17
  %.0 = phi i32 [ %i.j, %.thread17 ], [ 0, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

declare i32 @X509_get_key_usage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ssl_check_srvr_ecc_cert_and_alg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !475
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @X509_get_key_usage(ptr noundef %0) #18
  %i.g = and i32 %i.f, 128
  %.not2 = icmp eq i32 %i.g, 0
  br i1 %.not2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 4898, ptr noundef nonnull @__func__.ssl_check_srvr_ecc_cert_and_alg) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 318, ptr noundef null) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ssl_get_server_cert_serverinfo(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !476  ; 3 uses
  store i64 0, ptr %2, align 8, !tbaa !173
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !477  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %1, align 8, !tbaa !237
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !478
  store i64 %i.h, ptr %2, align 8, !tbaa !173
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @ssl_update_cache(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.d = load i64, ptr %i.c, align 8, !tbaa !219
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  %i.g = load i32, ptr %i.f, align 8, !tbaa !479
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i32, ptr %i.h, align 8, !tbaa !196
  %.not41 = icmp eq i32 %i.i, 0                   ; 2 uses
  br i1 %.not41, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  %i.k = load i64, ptr %i.j, align 8, !tbaa !480
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.n = load i32, ptr %i.m, align 8, !tbaa !172
  %i.o = and i32 %i.n, 1
  %.not42 = icmp eq i32 %i.o, 0
  br i1 %.not42, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3392 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !186  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i32, ptr %i.r, align 8, !tbaa !303  ; 3 uses
  %i.t = and i32 %i.s, %1                         ; 2 uses
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.v = load i32, ptr %i.u, align 8, !tbaa !88
  %.not44 = icmp eq i32 %i.v, 0
  br i1 %.not44, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !212  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !213
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !215
  %i.ac = and i32 %i.ab, 8
  %.not45 = icmp eq i32 %i.ac, 0
  br i1 %.not45, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !91  ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 772
  %.not46 = icmp eq i32 %i.ad, 65536
  %or.cond = or i1 %i.ae, %.not46
  br i1 %or.cond, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.af = and i32 %i.s, 512
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !212 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 216
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !213
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load i32, ptr %i.al, align 8, !tbaa !215
  %i.an = and i32 %i.am, 8
  %.not47 = icmp eq i32 %i.an, 0
  br i1 %.not47, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !91 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 772
  %.not48 = icmp eq i32 %i.ao, 65536
  %or.cond58 = or i1 %i.ap, %.not48
  %brmerge = or i1 %.not41, %or.cond58
end_hunk_1
