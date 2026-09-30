Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ssl_lib?download=true
inline.NumInlined: 300
inline.NumDeleted: 75
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !257
  br label %SSL_get_rbio.exit

SSL_get_rbio.exit:                                ; preds = %bb.c, %bb.a, %bb.e, %bb.f, %.thread22.i
  %.0.i = phi ptr [ %i.h, %bb.e ], [ %i.k, %.thread22.i ], [ null, %bb.f ], [ null, %bb.a ], [ null, %bb.c ]
  %i.l = tail call ptr @BIO_find_type(ptr noundef %.0.i, i32 noundef 256) #18 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %SSL_get_rbio.exit
  %i.m = call i64 @BIO_ctrl(ptr noundef nonnull %i.l, i32 noundef 105, i64 noundef 0, ptr noundef nonnull %i.a) #18 ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !153
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %SSL_get_rbio.exit
  %i.n = phi i32 [ %.pre, %bb.g ], [ -1, %SSL_get_rbio.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.n
}

declare ptr @BIO_find_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_get_wfd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 -1, ptr %i.a, align 4, !tbaa !153
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %SSL_get_wbio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread27.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 128
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %SSL_get_wbio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i = load i32, ptr %0, align 8, !tbaa !26
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !236  ; 2 uses
  %.not19.i = icmp eq ptr %i.k, null
  br i1 %.not19.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread27.i
  %i.l = tail call ptr @BIO_next(ptr noundef nonnull %i.k) #18
  br label %SSL_get_wbio.exit

bb.h:                                             ; preds = %.thread27.i
  %i.m = getelementptr inbounds nuw i8, ptr %.ph2629.i, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !237
  br label %SSL_get_wbio.exit

SSL_get_wbio.exit:                                ; preds = %bb.c, %bb.a, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.h, %bb.e ], [ %i.n, %bb.h ], [ %i.l, %bb.g ], [ null, %bb.f ], [ null, %bb.a ], [ null, %bb.c ]
  %i.o = tail call ptr @BIO_find_type(ptr noundef %.0.i, i32 noundef 256) #18 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %SSL_get_wbio.exit
  %i.p = call i64 @BIO_ctrl(ptr noundef nonnull %i.o, i32 noundef 105, i64 noundef 0, ptr noundef nonnull %i.a) #18 ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !153
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %SSL_get_wbio.exit
  %i.q = phi i32 [ %.pre, %bb.i ], [ -1, %SSL_get_wbio.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.q
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SSL_set_fd(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = icmp eq i32 %i.a, 129
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1716, ptr noundef nonnull @__func__.SSL_set_fd) #18
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
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1723, ptr noundef nonnull @__func__.SSL_set_fd) #18
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
define dso_local range(i32 0, 2) i32 @SSL_set_wfd(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %SSL_get_rbio.exit.thread38, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread22.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %SSL_get_rbio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i = load i32, ptr %0, align 8, !tbaa !26  ; 3 uses
  %i.f = and i32 %.pre.i, 128
  %.not15.i = icmp eq i32 %i.f, 0
  br i1 %.not15.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @ossl_quic_conn_get_net_rbio(ptr noundef nonnull %0) #18
  %.pre = load i32, ptr %0, align 8, !tbaa !26
  br label %SSL_get_rbio.exit

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %SSL_get_rbio.exit, label %.thread22.i

.thread22.i:                                      ; preds = %bb.f, %bb.b
  %i.i = phi i32 [ %.pre.i, %bb.f ], [ 0, %bb.b ]
  %.ph2124.i = phi ptr [ %i.e, %bb.f ], [ %0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.ph2124.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !257
  br label %SSL_get_rbio.exit

SSL_get_rbio.exit:                                ; preds = %bb.c, %.thread22.i, %bb.f, %bb.e
  %i.l = phi i32 [ %.pre, %bb.e ], [ %.pre.i, %bb.f ], [ %i.i, %.thread22.i ], [ %i.b, %bb.c ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.g, %bb.e ], [ null, %bb.f ], [ %i.k, %.thread22.i ], [ null, %bb.c ] ; 5 uses
  %2 = lshr i32 %i.l, 3
  %3 = and i32 %2, 16
  %4 = or disjoint i32 %3, 1285
  %i.m = icmp eq i32 %i.l, 129
  br i1 %i.m, label %SSL_get_rbio.exit.thread38, label %bb.g

SSL_get_rbio.exit.thread38:                       ; preds = %bb.a, %SSL_get_rbio.exit
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1739, ptr noundef nonnull @__func__.SSL_set_wfd) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 356, ptr noundef null) #18
  br label %bb.o

bb.g:                                             ; preds = %SSL_get_rbio.exit
  %i.n = icmp eq ptr %.0.i.ph, null
  br i1 %i.n, label %.thread41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @BIO_method_type(ptr noundef nonnull %.0.i.ph) #18
  %.not24.a = icmp eq i32 %i.o, %4
  br i1 %.not24.a, label %bb.i, label %.thread41

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i64 @BIO_ctrl(ptr noundef nonnull %.0.i.ph, i32 noundef 105, i64 noundef 0, ptr noundef null) #18
  %i.q = trunc i64 %i.p to i32
  %.not25.a = icmp eq i32 %1, %i.q
  br i1 %.not25.a, label %bb.m, label %.thread41

.thread41:                                        ; preds = %bb.g, %bb.h, %bb.i
  %i.r = load i32, ptr %0, align 8, !tbaa !26
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
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1748, ptr noundef nonnull @__func__.SSL_set_wfd) #18
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
define dso_local range(i32 0, 2) i32 @SSL_set_rfd(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %SSL_get_wbio.exit.thread49, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread27.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %SSL_get_wbio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i = load i32, ptr %0, align 8, !tbaa !26  ; 2 uses
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !236  ; 2 uses
  %.not19.i = icmp eq ptr %i.j, null
  br i1 %.not19.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread27.i
  %i.k = tail call ptr @BIO_next(ptr noundef nonnull %i.j) #18
  br label %SSL_get_wbio.exitthread-pre-split

bb.h:                                             ; preds = %.thread27.i
  %i.l = getelementptr inbounds nuw i8, ptr %.ph2629.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !237
  br label %SSL_get_wbio.exitthread-pre-split

SSL_get_wbio.exitthread-pre-split:                ; preds = %bb.e, %bb.g, %bb.h
  %.0.i.ph.ph = phi ptr [ %i.m, %bb.h ], [ %i.k, %bb.g ], [ %i.g, %bb.e ]
  %.pr = load i32, ptr %0, align 8, !tbaa !26
  br label %SSL_get_wbio.exit

SSL_get_wbio.exit:                                ; preds = %SSL_get_wbio.exitthread-pre-split, %bb.c, %bb.f
  %i.n = phi i32 [ %.pr, %SSL_get_wbio.exitthread-pre-split ], [ %i.b, %bb.c ], [ %.pre.i, %bb.f ] ; 2 uses
  %.0.i.ph = phi ptr [ %.0.i.ph.ph, %SSL_get_wbio.exitthread-pre-split ], [ null, %bb.c ], [ null, %bb.f ] ; 7 uses
  %2 = lshr i32 %i.n, 3
  %3 = and i32 %2, 16
  %4 = or disjoint i32 %3, 1285
  %i.o = icmp eq i32 %i.n, 129
  br i1 %i.o, label %SSL_get_wbio.exit.thread49, label %bb.i

SSL_get_wbio.exit.thread49:                       ; preds = %bb.a, %SSL_get_wbio.exit
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1767, ptr noundef nonnull @__func__.SSL_set_rfd) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 356, ptr noundef null) #18
  br label %SSL_set0_rbio.exit40

bb.i:                                             ; preds = %SSL_get_wbio.exit
  %i.p = icmp eq ptr %.0.i.ph, null
  br i1 %i.p, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i32 @BIO_method_type(ptr noundef nonnull %.0.i.ph) #18
  %.not24.a = icmp eq i32 %i.q, %4
  br i1 %.not24.a, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = tail call i64 @BIO_ctrl(ptr noundef nonnull %.0.i.ph, i32 noundef 105, i64 noundef 0, ptr noundef null) #18
  %i.s = trunc i64 %i.r to i32
  %.not25.a = icmp eq i32 %1, %i.s
  br i1 %.not25.a, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.t = load i32, ptr %0, align 8, !tbaa !26
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
  %i.z = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread25.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = and i32 %i.z, 128
  %.not.i30 = icmp eq i32 %i.ab, 0
  br i1 %.not.i30, label %SSL_set0_rbio.exit40, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i31 = load i32, ptr %0, align 8, !tbaa !26
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
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !257
  tail call void @BIO_free_all(ptr noundef %i.ag) #18
  store ptr %i.x, ptr %i.af, align 8, !tbaa !257
  %i.ah = getelementptr inbounds nuw i8, ptr %.ph2427.i, i64 3184
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !259
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !240
  %i.al = getelementptr inbounds nuw i8, ptr %.ph2427.i, i64 3200
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !260
  %i.an = tail call i32 %i.ak(ptr noundef %i.am, ptr noundef nonnull %i.x) #18, !inline_history !261 ; 0 uses
  br label %SSL_set0_rbio.exit40

SSL_set0_rbio.exit:                               ; preds = %fd_method.exit
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1776, ptr noundef nonnull @__func__.SSL_set_rfd) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, ptr noundef null) #18
  br label %SSL_set0_rbio.exit40

bb.t:                                             ; preds = %bb.k
  %i.ao = tail call i32 @BIO_up_ref(ptr noundef nonnull %.0.i.ph) #18
  %.not26 = icmp eq i32 %i.ao, 0
  br i1 %.not26, label %SSL_set0_rbio.exit40, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.thread25.i38, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = and i32 %i.ap, 128
  %.not.i34 = icmp eq i32 %i.ar, 0
  br i1 %.not.i34, label %SSL_set0_rbio.exit40, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i35 = load i32, ptr %0, align 8, !tbaa !26
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
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !257
  tail call void @BIO_free_all(ptr noundef %i.aw) #18
  store ptr %.0.i.ph, ptr %i.av, align 8, !tbaa !257
  %i.ax = getelementptr inbounds nuw i8, ptr %.ph2427.i39, i64 3184
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !259
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !240
  %i.bb = getelementptr inbounds nuw i8, ptr %.ph2427.i39, i64 3200
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !260
  %i.bd = tail call i32 %i.ba(ptr noundef %i.bc, ptr noundef nonnull %.0.i.ph) #18, !inline_history !261 ; 0 uses
  br label %SSL_set0_rbio.exit40

SSL_set0_rbio.exit40:                             ; preds = %bb.v, %bb.p, %bb.r, %bb.s, %.thread25.i, %bb.x, %bb.y, %.thread25.i38, %SSL_set0_rbio.exit, %bb.t, %SSL_get_wbio.exit.thread49
  %.1 = phi i32 [ 0, %SSL_get_wbio.exit.thread49 ], [ 0, %bb.t ], [ 0, %SSL_set0_rbio.exit ], [ 1, %.thread25.i38 ], [ 1, %bb.y ], [ 1, %bb.x ], [ 1, %bb.p ], [ 1, %.thread25.i ], [ 1, %bb.s ], [ 1, %bb.r ], [ 1, %bb.v ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i64 @SSL_get_finished(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
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
  %i.j = load i64, ptr %i.i, align 8, !tbaa !262  ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.j)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.h, i64 %spec.select, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread20
  %.014 = phi i64 [ %i.j, %.thread20 ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i64 %.014
}

; Function Attrs: nounwind uwtable
define dso_local i64 @SSL_get_peer_finished(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !263  ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %i.j, i64 %spec.select, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread20
  %.014 = phi i64 [ %i.i, %.thread20 ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i64 %.014
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_get_verify_mode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b
end_hunk_0
begin_hunk_1_@SSL_set_default_passwd_cb:bb.a
}

; Function Attrs: nounwind uwtable
define dso_local void @SSL_set_default_passwd_cb_userdata(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread10, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread10

.thread10:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5408
  store ptr %1, ptr %i.h, align 8, !tbaa !319
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SSL_get_default_passwd_cb(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
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
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5400
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !318
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread11
  %.0 = phi ptr [ %i.i, %.thread11 ], [ null, %bb.d ], [ null, %bb.a ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SSL_get_default_passwd_cb_userdata(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
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
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5408
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !319
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread11
  %.0 = phi ptr [ %i.i, %.thread11 ], [ null, %bb.d ], [ null, %bb.a ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SSL_CTX_set_cert_verify_callback(ptr nofree noundef writeonly captures(none) initializes((168, 184)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %1, ptr %i.a, align 8, !tbaa !462
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %2, ptr %i.b, align 8, !tbaa !463
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SSL_CTX_set_verify(ptr nofree noundef writeonly captures(none) initializes((384, 388), (432, 440)) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 %1, ptr %i.a, align 8, !tbaa !167
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %2, ptr %i.b, align 8, !tbaa !173
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SSL_CTX_set_verify_depth(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  tail call void @X509_VERIFY_PARAM_set_depth(ptr noundef %i.b, i32 noundef %1) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SSL_CTX_set_cert_cb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  tail call void @ssl_cert_set_cert_cb(ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #18
  ret void
}

declare void @ssl_cert_set_cert_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @SSL_set_cert_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163
  tail call void @ssl_cert_set_cert_cb(ptr noundef %i.i, ptr noundef %1, ptr noundef %2) #18
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %.thread11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ssl_set_masks(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !258  ; 13 uses
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !320
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !464
  %.not74 = icmp eq ptr %i.i, null
  br i1 %.not74, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %i.j = load i32, ptr %i.d, align 4, !tbaa !153  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !153  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !153
  %i.o = and i32 %i.n, 1                          ; 2 uses
  %.not75276 = trunc i32 %i.j to i1
  %.not75.mask277 = and i32 %i.j, 1
  %i.p = or disjoint i32 %.not75.mask277, 2       ; 2 uses
  br i1 %.not75276, label %.critedge, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !465
  %.fr = freeze i32 %i.r
  %i.s = icmp ne i32 %.fr, 0                      ; 3 uses
  %i.t = load i32, ptr %i.d, align 4, !tbaa !153  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !153  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !153
  %i.y = and i32 %i.x, 1                          ; 2 uses
  %.not75 = trunc i32 %i.t to i1
  %.not75.mask = and i32 %i.t, 1                  ; 2 uses
  %1 = or disjoint i32 %.not75.mask, 2
  %..not75.mask = select i1 %i.s, i32 %1, i32 %.not75.mask ; 2 uses
  br i1 %.not75, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %2 = phi i32 [ %i.p, %.thread ], [ %..not75.mask, %bb.d ] ; 11 uses
  %cond.fr279287 = phi i1 [ true, %.thread ], [ %i.s, %bb.d ] ; 11 uses
  %i.z = phi i32 [ %i.l, %.thread ], [ %i.v, %bb.d ] ; 11 uses
  %i.aa = phi ptr [ %i.m, %.thread ], [ %i.w, %bb.d ] ; 11 uses
  %i.ab = phi i32 [ %i.o, %.thread ], [ %i.y, %bb.d ] ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !202
  %i.ae = trunc i64 %i.ad to i32
  %.not.i = icmp sgt i32 %i.ae, 1
  br i1 %.not.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !192
  %.not.i.i = icmp eq i32 %i.ag, 0                ; 2 uses
  %.09.in.v.i.i = select i1 %.not.i.i, i64 5528, i64 5544
  %.09.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.09.in.v.i.i
  %.09.i.i = load ptr, ptr %.09.in.i.i, align 8, !tbaa !233 ; 2 uses
  %i.ah = icmp eq ptr %.09.i.i, null
  br i1 %i.ah, label %ssl_has_cert_type.exit.thread.i, label %ssl_has_cert_type.exit.i

ssl_has_cert_type.exit.i:                         ; preds = %bb.f
  %.0.in.v.i.i = select i1 %.not.i.i, i64 5536, i64 5552
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i.i
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !169
  %i.ai = tail call ptr @memchr(ptr noundef nonnull %.09.i.i, i32 noundef 2, i64 noundef %.0.i.i) #19
  %.not15.i = icmp eq ptr %i.ai, null
  br i1 %.not15.i, label %ssl_has_cert_type.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %ssl_has_cert_type.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !466
  br label %ssl_has_cert.exit

ssl_has_cert_type.exit.thread.i:                  ; preds = %ssl_has_cert_type.exit.i, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !466 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !271
  %.not12.i = icmp eq ptr %i.ao, null
  br i1 %.not12.i, label %.critedge, label %ssl_has_cert.exit

ssl_has_cert.exit:                                ; preds = %bb.g, %ssl_has_cert_type.exit.thread.i
  %i.ap = phi ptr [ %i.ak, %bb.g ], [ %i.am, %ssl_has_cert_type.exit.thread.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !272
  %.not254 = icmp eq ptr %i.ar, null
  br i1 %.not254, label %.critedge, label %bb.h

bb.h:                                             ; preds = %ssl_has_cert.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !153
  %i.au = and i32 %i.at, 256
  %.not77 = icmp eq i32 %i.au, 0
  br i1 %.not77, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.pre13.i = load i32, ptr %0, align 8, !tbaa !26 ; 2 uses
  %i.av = icmp eq i32 %.pre13.i, 0
  br i1 %i.av, label %SSL_version.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = and i32 %.pre13.i, 128
  %.not.i108 = icmp eq i32 %i.aw, 0
  br i1 %.not.i108, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i = load i32, ptr %0, align 8, !tbaa !26  ; 3 uses
  %i.ay = and i32 %.pre.i, -2
  %switch.i = icmp eq i32 %i.ay, 128
  %i.az = icmp eq ptr %i.ax, null
  %or.cond = select i1 %switch.i, i1 true, i1 %i.az
  br i1 %or.cond, label %.critedge, label %SSL_version.exit

SSL_version.exit:                                 ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !88
  %.mask = and i32 %i.bb, -256
  %i.bc = icmp eq i32 %.mask, 768
  br i1 %i.bc, label %bb.l, label %.critedge

SSL_version.exit.thread:                          ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !88
  %.mask293 = and i32 %i.be, -256
  %i.bf = icmp eq i32 %.mask293, 768
  br i1 %i.bf, label %SSL_version.exit115, label %.critedge

bb.l:                                             ; preds = %SSL_version.exit
  %i.bg = icmp eq i32 %.pre.i, 0
  br i1 %i.bg, label %SSL_version.exit115, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = and i32 %.pre.i, 128
  %.not.i110 = icmp eq i32 %i.bh, 0
  br i1 %.not.i110, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i111 = load i32, ptr %0, align 8, !tbaa !26
  %i.bj = and i32 %.pre.i111, -2
  %switch.i112 = icmp eq i32 %i.bj, 128
  %i.bk = icmp eq ptr %i.bi, null
  %or.cond245 = select i1 %switch.i112, i1 true, i1 %i.bk
  br i1 %or.cond245, label %.critedge, label %SSL_version.exit115

SSL_version.exit115:                              ; preds = %SSL_version.exit.thread, %bb.n, %bb.l
  %i.bl = phi ptr [ %i.bi, %bb.n ], [ %0, %bb.l ], [ %0, %SSL_version.exit.thread ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !88
  %i.bo = icmp eq i32 %i.bn, 771
  %spec.select312 = zext i1 %i.bo to i64
  br label %.critedge

.critedge:                                        ; preds = %SSL_version.exit115, %bb.d, %.thread, %SSL_version.exit.thread, %bb.m, %bb.j, %bb.n, %bb.k, %ssl_has_cert_type.exit.thread.i, %bb.e, %SSL_version.exit, %bb.h, %ssl_has_cert.exit
  %3 = phi i32 [ %2, %SSL_version.exit.thread ], [ %2, %SSL_version.exit115 ], [ %2, %bb.h ], [ %2, %ssl_has_cert.exit ], [ %2, %SSL_version.exit ], [ %2, %bb.m ], [ %2, %ssl_has_cert_type.exit.thread.i ], [ %2, %bb.e ], [ %2, %bb.j ], [ %2, %bb.k ], [ %2, %bb.n ], [ %i.p, %.thread ], [ %..not75.mask, %bb.d ]
  %cond.fr279286 = phi i1 [ %cond.fr279287, %SSL_version.exit.thread ], [ %cond.fr279287, %SSL_version.exit115 ], [ %cond.fr279287, %bb.h ], [ %cond.fr279287, %ssl_has_cert.exit ], [ %cond.fr279287, %SSL_version.exit ], [ %cond.fr279287, %bb.m ], [ %cond.fr279287, %ssl_has_cert_type.exit.thread.i ], [ %cond.fr279287, %bb.e ], [ %cond.fr279287, %bb.j ], [ %cond.fr279287, %bb.k ], [ %cond.fr279287, %bb.n ], [ true, %.thread ], [ %i.s, %bb.d ]
  %i.bp = phi i32 [ %i.z, %SSL_version.exit.thread ], [ %i.z, %SSL_version.exit115 ], [ %i.z, %bb.h ], [ %i.z, %ssl_has_cert.exit ], [ %i.z, %SSL_version.exit ], [ %i.z, %bb.m ], [ %i.z, %ssl_has_cert_type.exit.thread.i ], [ %i.z, %bb.e ], [ %i.z, %bb.j ], [ %i.z, %bb.k ], [ %i.z, %bb.n ], [ %i.l, %.thread ], [ %i.v, %bb.d ]
  %i.bq = phi ptr [ %i.aa, %SSL_version.exit.thread ], [ %i.aa, %SSL_version.exit115 ], [ %i.aa, %bb.h ], [ %i.aa, %ssl_has_cert.exit ], [ %i.aa, %SSL_version.exit ], [ %i.aa, %bb.m ], [ %i.aa, %ssl_has_cert_type.exit.thread.i ], [ %i.aa, %bb.e ], [ %i.aa, %bb.j ], [ %i.aa, %bb.k ], [ %i.aa, %bb.n ], [ %i.m, %.thread ], [ %i.w, %bb.d ] ; 2 uses
  %i.br = phi i32 [ %i.ab, %SSL_version.exit.thread ], [ %i.ab, %SSL_version.exit115 ], [ %i.ab, %bb.h ], [ %i.ab, %ssl_has_cert.exit ], [ %i.ab, %SSL_version.exit ], [ %i.ab, %bb.m ], [ %i.ab, %ssl_has_cert_type.exit.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ], [ %i.ab, %bb.n ], [ %i.o, %.thread ], [ %i.y, %bb.d ]
  %.0 = phi i64 [ 0, %SSL_version.exit.thread ], [ %spec.select312, %SSL_version.exit115 ], [ 0, %bb.h ], [ 0, %ssl_has_cert.exit ], [ 0, %SSL_version.exit ], [ 0, %bb.m ], [ 0, %ssl_has_cert_type.exit.thread.i ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.n ], [ 1, %.thread ], [ 1, %bb.d ]
  %i.bs = shl i32 %i.bp, 1
  %i.bt = and i32 %i.bs, 2
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %spec.select100 = or disjoint i64 %.0, %i.bu
  %i.bv = or disjoint i64 %spec.select100, 4
  %i.bw = load i32, ptr %i.d, align 4, !tbaa !153
  %i.bx = and i32 %i.bw, 4096                     ; 2 uses
  %.not79.not = icmp eq i32 %i.bx, 0
  %i.by = or disjoint i64 %i.bu, 5
  %.lobit = lshr exact i32 %i.bx, 12
  %.269 = or i32 %.lobit, %3                      ; 2 uses
  %.2 = select i1 %.not79.not, i64 %i.bv, i64 %i.by
  %i.bz = load i32, ptr %i.bq, align 4, !tbaa !153
  %i.ca = lshr i32 %i.bz, 9
  %i.cb = and i32 %i.ca, 8
  %i.cc = zext nneg i32 %i.cb to i64
  %.3 = or disjoint i64 %.2, %i.cc                ; 8 uses
  %.pre13.i116 = load i32, ptr %0, align 8, !tbaa !26 ; 2 uses
  %i.cd = icmp eq i32 %.pre13.i116, 0
  br i1 %i.cd, label %SSL_version.exit122.thread, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.ce = and i32 %.pre13.i116, 128
  %.not.i117 = icmp eq i32 %i.ce, 0
  br i1 %.not.i117, label %.critedge102, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i118 = load i32, ptr %0, align 8, !tbaa !26 ; 3 uses
  %i.cg = and i32 %.pre.i118, -2
  %switch.i119 = icmp eq i32 %i.cg, 128
  %i.ch = icmp eq ptr %i.cf, null
  %or.cond246 = select i1 %switch.i119, i1 true, i1 %i.ch
  br i1 %or.cond246, label %.critedge102, label %SSL_version.exit122

SSL_version.exit122:                              ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !88
  %.mask81 = and i32 %i.cj, -256
  %i.ck = icmp eq i32 %.mask81, 768
  br i1 %i.ck, label %bb.q, label %.critedge102

SSL_version.exit122.thread:                       ; preds = %.critedge
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !88
  %.mask81298 = and i32 %i.cm, -256
  %i.cn = icmp eq i32 %.mask81298, 768
  br i1 %i.cn, label %SSL_version.exit129, label %.critedge102

bb.q:                                             ; preds = %SSL_version.exit122
  %i.co = icmp eq i32 %.pre.i118, 0
  br i1 %i.co, label %SSL_version.exit129, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = and i32 %.pre.i118, 128
  %.not.i124 = icmp eq i32 %i.cp, 0
  br i1 %.not.i124, label %.critedge102, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i125 = load i32, ptr %0, align 8, !tbaa !26
  %i.cr = and i32 %.pre.i125, -2
  %switch.i126 = icmp eq i32 %i.cr, 128
  %i.cs = icmp eq ptr %i.cq, null
  %or.cond247 = select i1 %switch.i126, i1 true, i1 %i.cs
  br i1 %or.cond247, label %.critedge102, label %SSL_version.exit129

SSL_version.exit129:                              ; preds = %SSL_version.exit122.thread, %bb.s, %bb.q
  %i.ct = phi ptr [ %i.cq, %bb.s ], [ %0, %bb.q ], [ %0, %SSL_version.exit122.thread ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !88
  %i.cw = icmp eq i32 %i.cv, 771
  br i1 %i.cw, label %bb.t, label %.critedge102

bb.t:                                             ; preds = %SSL_version.exit129
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !153
  %i.cz = lshr i32 %i.cy, 12
  %i.da = and i32 %i.cz, 1
  %i.db = zext nneg i32 %i.da to i64
  %spec.select103 = or i64 %.3, %i.db             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !153
  %i.de = and i32 %i.dd, 4096
  %.not83 = icmp eq i32 %i.de, 0
  br i1 %.not83, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !153
  %i.dh = and i32 %i.dg, 4096
  %.not84 = icmp eq i32 %i.dh, 0
  br i1 %.not84, label %.critedge102, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.di = or i64 %spec.select103, 8
  br label %.critedge102

.critedge102:                                     ; preds = %SSL_version.exit122.thread, %bb.r, %bb.o, %bb.s, %bb.p, %SSL_version.exit122, %bb.u, %bb.v, %SSL_version.exit129
  %.5 = phi i64 [ %i.di, %bb.v ], [ %spec.select103, %bb.u ], [ %.3, %SSL_version.exit129 ], [ %.3, %SSL_version.exit122 ], [ %.3, %bb.r ], [ %.3, %bb.o ], [ %.3, %bb.p ], [ %.3, %bb.s ], [ %.3, %SSL_version.exit122.thread ] ; 3 uses
  %.not85 = icmp eq i32 %i.br, 0
  br i1 %.not85, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge102
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !466
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 120
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !271
  %i.dn = tail call i32 @X509_get_key_usage(ptr noundef %i.dm) #18
  %i.do = and i32 %i.dn, 128
  %i.dp = load i32, ptr %i.bq, align 4, !tbaa !153
  %i.dq = and i32 %i.dp, 2
  %.not86 = icmp eq i32 %i.dq, 0
  %.not8788 = icmp eq i32 %i.do, 0
  %.not87 = select i1 %.not86, i1 true, i1 %.not8788
  %i.dr = or i64 %.5, 8
  %spec.select104 = select i1 %.not87, i64 %.5, i64 %i.dr
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.critedge102
  %.7 = phi i64 [ %spec.select104, %bb.w ], [ %.5, %.critedge102 ] ; 14 uses
  %i.ds = and i64 %.7, 8
  %.not89 = icmp eq i64 %i.ds, 0
  br i1 %.not89, label %bb.y, label %ssl_has_cert.exit145.thread

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !202
  %i.dv = trunc i64 %i.du to i32
  %.not.i130 = icmp sgt i32 %i.dv, 7
  br i1 %.not.i130, label %bb.z, label %ssl_has_cert.exit145.thread

bb.z:                                             ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !192
  %.not.i.i132 = icmp eq i32 %i.dx, 0             ; 2 uses
  %.09.in.v.i.i133 = select i1 %.not.i.i132, i64 5528, i64 5544
  %.09.in.i.i134 = getelementptr inbounds nuw i8, ptr %0, i64 %.09.in.v.i.i133
  %.09.i.i135 = load ptr, ptr %.09.in.i.i134, align 8, !tbaa !233 ; 2 uses
  %i.dy = icmp eq ptr %.09.i.i135, null
  br i1 %i.dy, label %.ssl_has_cert_type.exit.thread.i143_crit_edge, label %ssl_has_cert_type.exit.i136

.ssl_has_cert_type.exit.thread.i143_crit_edge:    ; preds = %bb.z
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !163
  br label %ssl_has_cert_type.exit.thread.i143

ssl_has_cert_type.exit.i136:                      ; preds = %bb.z
  %.0.in.v.i.i137 = select i1 %.not.i.i132, i64 5536, i64 5552
  %.0.in.i.i138 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i.i137
  %.0.i.i139 = load i64, ptr %.0.in.i.i138, align 8, !tbaa !169
  %i.dz = tail call ptr @memchr(ptr noundef nonnull %.09.i.i135, i32 noundef 2, i64 noundef %.0.i.i139) #19
  %.not15.i140 = icmp eq ptr %i.dz, null
  %.pre261 = load ptr, ptr %i.a, align 8, !tbaa !163 ; 2 uses
  br i1 %.not15.i140, label %ssl_has_cert_type.exit.thread.i143, label %bb.aa

bb.aa:                                            ; preds = %ssl_has_cert_type.exit.i136
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre261, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !466
  br label %ssl_has_cert.exit145

ssl_has_cert_type.exit.thread.i143:               ; preds = %.ssl_has_cert_type.exit.thread.i143_crit_edge, %ssl_has_cert_type.exit.i136
  %i.ec = phi ptr [ %.pre, %.ssl_has_cert_type.exit.thread.i143_crit_edge ], [ %.pre261, %ssl_has_cert_type.exit.i136 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !466 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 280
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !271
  %.not12.i144 = icmp eq ptr %i.eg, null
  br i1 %.not12.i144, label %ssl_has_cert.exit145.thread, label %ssl_has_cert.exit145

ssl_has_cert.exit145:                             ; preds = %bb.aa, %ssl_has_cert_type.exit.thread.i143
  %i.eh = phi ptr [ %i.eb, %bb.aa ], [ %i.ee, %ssl_has_cert_type.exit.thread.i143 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 288
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !272
  %.not255 = icmp eq ptr %i.ej, null
  br i1 %.not255, label %ssl_has_cert.exit145.thread, label %bb.ab

bb.ab:                                            ; preds = %ssl_has_cert.exit145
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !153
  %i.em = and i32 %i.el, 256
  %.not91 = icmp eq i32 %i.em, 0
  br i1 %.not91, label %ssl_has_cert.exit145.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.pre13.i146 = load i32, ptr %0, align 8, !tbaa !26 ; 2 uses
  %i.en = icmp eq i32 %.pre13.i146, 0
  br i1 %i.en, label %SSL_version.exit152.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = and i32 %.pre13.i146, 128
  %.not.i147 = icmp eq i32 %i.eo, 0
  br i1 %.not.i147, label %ssl_has_cert.exit145.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ep = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i148 = load i32, ptr %0, align 8, !tbaa !26 ; 3 uses
  %i.eq = and i32 %.pre.i148, -2
  %switch.i149 = icmp eq i32 %i.eq, 128
  %i.er = icmp eq ptr %i.ep, null
  %or.cond248 = select i1 %switch.i149, i1 true, i1 %i.er
  br i1 %or.cond248, label %ssl_has_cert.exit145.thread, label %SSL_version.exit152

SSL_version.exit152:                              ; preds = %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.et = load i32, ptr %i.es, align 8, !tbaa !88
  %.mask92 = and i32 %i.et, -256
  %i.eu = icmp eq i32 %.mask92, 768
  br i1 %i.eu, label %bb.af, label %ssl_has_cert.exit145.thread

SSL_version.exit152.thread:                       ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !88
  %.mask92303 = and i32 %i.ew, -256
  %i.ex = icmp eq i32 %.mask92303, 768
  br i1 %i.ex, label %.thread305, label %ssl_has_cert.exit145.thread

bb.af:                                            ; preds = %SSL_version.exit152
  %i.ey = icmp eq i32 %.pre.i148, 0
  br i1 %i.ey, label %.thread305, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = and i32 %.pre.i148, 128
  %.not.i154 = icmp eq i32 %i.ez, 0
  br i1 %.not.i154, label %ssl_has_cert.exit145.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fa = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i155 = load i32, ptr %0, align 8, !tbaa !26
  %i.fb = and i32 %.pre.i155, -2
  %switch.i156 = icmp eq i32 %i.fb, 128
  %i.fc = icmp eq ptr %i.fa, null
  %or.cond249 = select i1 %switch.i156, i1 true, i1 %i.fc
  br i1 %or.cond249, label %ssl_has_cert.exit145.thread, label %.thread305

.thread305:                                       ; preds = %SSL_version.exit152.thread, %bb.ah, %bb.af
  %i.fd = phi ptr [ %i.fa, %bb.ah ], [ %0, %bb.af ], [ %0, %SSL_version.exit152.thread ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !88
  %.fr256 = freeze i32 %i.ff
  %i.fg = icmp eq i32 %.fr256, 771
  %i.fh = or disjoint i64 %.7, 8
  %spec.select250 = select i1 %i.fg, i64 %i.fh, i64 %.7
  br label %ssl_has_cert.exit145.thread

ssl_has_cert.exit145.thread:                      ; preds = %SSL_version.exit152.thread, %.thread305, %bb.ag, %bb.ad, %bb.ah, %bb.ae, %SSL_version.exit152, %ssl_has_cert_type.exit.thread.i143, %bb.y, %bb.ab, %ssl_has_cert.exit145, %bb.x
  %.8 = phi i64 [ %.7, %bb.x ], [ %.7, %ssl_has_cert.exit145 ], [ %.7, %bb.ag ], [ %.7, %bb.ab ], [ %.7, %bb.ah ], [ %spec.select250, %.thread305 ], [ %.7, %ssl_has_cert_type.exit.thread.i143 ], [ %.7, %bb.y ], [ %.7, %SSL_version.exit152 ], [ %.7, %bb.ad ], [ %.7, %bb.ae ], [ %.7, %SSL_version.exit152.thread ] ; 14 uses
  %i.fi = and i64 %.8, 8
  %.not93 = icmp eq i64 %i.fi, 0
  br i1 %.not93, label %bb.ai, label %ssl_has_cert.exit175.thread

bb.ai:                                            ; preds = %ssl_has_cert.exit145.thread
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !202
  %i.fl = trunc i64 %i.fk to i32
  %.not.i160 = icmp sgt i32 %i.fl, 8
  br i1 %.not.i160, label %bb.aj, label %ssl_has_cert.exit175.thread

bb.aj:                                            ; preds = %bb.ai
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !192
  %.not.i.i162 = icmp eq i32 %i.fn, 0             ; 2 uses
  %.09.in.v.i.i163 = select i1 %.not.i.i162, i64 5528, i64 5544
  %.09.in.i.i164 = getelementptr inbounds nuw i8, ptr %0, i64 %.09.in.v.i.i163
  %.09.i.i165 = load ptr, ptr %.09.in.i.i164, align 8, !tbaa !233 ; 2 uses
  %i.fo = icmp eq ptr %.09.i.i165, null
  br i1 %i.fo, label %.ssl_has_cert_type.exit.thread.i173_crit_edge, label %ssl_has_cert_type.exit.i166

.ssl_has_cert_type.exit.thread.i173_crit_edge:    ; preds = %bb.aj
  %.pre263 = load ptr, ptr %i.a, align 8, !tbaa !163
  br label %ssl_has_cert_type.exit.thread.i173

ssl_has_cert_type.exit.i166:                      ; preds = %bb.aj
  %.0.in.v.i.i167 = select i1 %.not.i.i162, i64 5536, i64 5552
  %.0.in.i.i168 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.v.i.i167
  %.0.i.i169 = load i64, ptr %.0.in.i.i168, align 8, !tbaa !169
  %i.fp = tail call ptr @memchr(ptr noundef nonnull %.09.i.i165, i32 noundef 2, i64 noundef %.0.i.i169) #19
  %.not15.i170 = icmp eq ptr %i.fp, null
  %.pre264 = load ptr, ptr %i.a, align 8, !tbaa !163 ; 2 uses
  br i1 %.not15.i170, label %ssl_has_cert_type.exit.thread.i173, label %bb.ak

bb.ak:                                            ; preds = %ssl_has_cert_type.exit.i166
  %i.fq = getelementptr inbounds nuw i8, ptr %.pre264, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !466
  br label %ssl_has_cert.exit175

ssl_has_cert_type.exit.thread.i173:               ; preds = %.ssl_has_cert_type.exit.thread.i173_crit_edge, %ssl_has_cert_type.exit.i166
  %i.fs = phi ptr [ %.pre263, %.ssl_has_cert_type.exit.thread.i173_crit_edge ], [ %.pre264, %ssl_has_cert_type.exit.i166 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !466 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 320
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !271
  %.not12.i174 = icmp eq ptr %i.fw, null
  br i1 %.not12.i174, label %ssl_has_cert.exit175.thread, label %ssl_has_cert.exit175

ssl_has_cert.exit175:                             ; preds = %bb.ak, %ssl_has_cert_type.exit.thread.i173
  %i.fx = phi ptr [ %i.fr, %bb.ak ], [ %i.fu, %ssl_has_cert_type.exit.thread.i173 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 328
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !272
  %.not257 = icmp eq ptr %i.fz, null
  br i1 %.not257, label %ssl_has_cert.exit175.thread, label %bb.al

bb.al:                                            ; preds = %ssl_has_cert.exit175
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !153
  %i.gc = and i32 %i.gb, 256
  %.not95 = icmp eq i32 %i.gc, 0
  br i1 %.not95, label %ssl_has_cert.exit175.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.pre13.i176 = load i32, ptr %0, align 8, !tbaa !26 ; 2 uses
  %i.gd = icmp eq i32 %.pre13.i176, 0
  br i1 %i.gd, label %SSL_version.exit182.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = and i32 %.pre13.i176, 128
  %.not.i177 = icmp eq i32 %i.ge, 0
  br i1 %.not.i177, label %ssl_has_cert.exit175.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gf = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i178 = load i32, ptr %0, align 8, !tbaa !26 ; 3 uses
  %i.gg = and i32 %.pre.i178, -2
  %switch.i179 = icmp eq i32 %i.gg, 128
  %i.gh = icmp eq ptr %i.gf, null
  %or.cond251 = select i1 %switch.i179, i1 true, i1 %i.gh
  br i1 %or.cond251, label %ssl_has_cert.exit175.thread, label %SSL_version.exit182

SSL_version.exit182:                              ; preds = %bb.ao
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !88
  %.mask96 = and i32 %i.gj, -256
  %i.gk = icmp eq i32 %.mask96, 768
  br i1 %i.gk, label %bb.ap, label %ssl_has_cert.exit175.thread

SSL_version.exit182.thread:                       ; preds = %bb.am
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !88
  %.mask96308 = and i32 %i.gm, -256
  %i.gn = icmp eq i32 %.mask96308, 768
  br i1 %i.gn, label %.thread310, label %ssl_has_cert.exit175.thread

bb.ap:                                            ; preds = %SSL_version.exit182
  %i.go = icmp eq i32 %.pre.i178, 0
  br i1 %i.go, label %.thread310, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gp = and i32 %.pre.i178, 128
  %.not.i184 = icmp eq i32 %i.gp, 0
  br i1 %.not.i184, label %ssl_has_cert.exit175.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gq = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %.pre.i185 = load i32, ptr %0, align 8, !tbaa !26
  %i.gr = and i32 %.pre.i185, -2
  %switch.i186 = icmp eq i32 %i.gr, 128
  %i.gs = icmp eq ptr %i.gq, null
  %or.cond252 = select i1 %switch.i186, i1 true, i1 %i.gs
  br i1 %or.cond252, label %ssl_has_cert.exit175.thread, label %.thread310

.thread310:                                       ; preds = %SSL_version.exit182.thread, %bb.ar, %bb.ap
  %i.gt = phi ptr [ %i.gq, %bb.ar ], [ %0, %bb.ap ], [ %0, %SSL_version.exit182.thread ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !88
  %.fr258 = freeze i32 %i.gv
  %i.gw = icmp eq i32 %.fr258, 771
  %i.gx = or disjoint i64 %.8, 8
  %spec.select253 = select i1 %i.gw, i64 %i.gx, i64 %.8
  br label %ssl_has_cert.exit175.thread

ssl_has_cert.exit175.thread:                      ; preds = %SSL_version.exit182.thread, %.thread310, %bb.aq, %bb.an, %bb.ar, %bb.ao, %SSL_version.exit182, %ssl_has_cert_type.exit.thread.i173, %bb.ai, %bb.al, %ssl_has_cert.exit175, %ssl_has_cert.exit145.thread
  %.9 = phi i64 [ %.8, %ssl_has_cert.exit145.thread ], [ %.8, %ssl_has_cert.exit175 ], [ %.8, %bb.aq ], [ %.8, %bb.al ], [ %.8, %bb.ar ], [ %spec.select253, %.thread310 ], [ %.8, %ssl_has_cert_type.exit.thread.i173 ], [ %.8, %bb.ai ], [ %.8, %SSL_version.exit182 ], [ %.8, %bb.an ], [ %.8, %bb.ao ], [ %.8, %SSL_version.exit182.thread ]
  %4 = shl nuw nsw i32 %.269, 6
  %5 = and i32 %4, 64
  %spec.select107.v = select i1 %cond.fr279286, i32 396, i32 140
  %6 = or disjoint i32 %spec.select107.v, %5
  %7 = or disjoint i32 %6, %.269
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i32 %7, ptr %i.gy, align 8, !tbaa !467
  %i.gz = trunc nuw nsw i64 %.9 to i32
  %i.ha = or i32 %i.gz, 16
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 1044
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !468
  br label %bb.as

bb.as:                                            ; preds = %bb.a, %ssl_has_cert.exit175.thread
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_version(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.pre13 = load i32, ptr %0, align 8, !tbaa !26  ; 3 uses
  %i.a = icmp eq i32 %.pre13, 0
  br i1 %i.a, label %.thread17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %.pre13, 128
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18
  %.pre = load i32, ptr %0, align 8, !tbaa !26
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
  %i.j = load i32, ptr %i.i, align 8, !tbaa !88
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %.thread17
  %.0 = phi i32 [ %i.j, %.thread17 ], [ 0, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

declare i32 @X509_get_key_usage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ssl_check_srvr_ecc_cert_and_alg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !469
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
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 4685, ptr noundef nonnull @__func__.ssl_check_srvr_ecc_cert_and_alg) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 318, ptr noundef null) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ssl_get_server_cert_serverinfo(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !470  ; 3 uses
  store i64 0, ptr %2, align 8, !tbaa !169
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !471  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %1, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !472
  store i64 %i.h, ptr %2, align 8, !tbaa !169
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ssl_update_cache(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.d = load i64, ptr %i.c, align 8, !tbaa !215
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  %i.g = load i32, ptr %i.f, align 8, !tbaa !473
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i32, ptr %i.h, align 8, !tbaa !192
  %.not41 = icmp eq i32 %i.i, 0                   ; 2 uses
  br i1 %.not41, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  %i.k = load i64, ptr %i.j, align 8, !tbaa !474
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.n = load i32, ptr %i.m, align 8, !tbaa !168
  %i.o = and i32 %i.n, 1
  %.not42 = icmp eq i32 %i.o, 0
  br i1 %.not42, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2952 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !182  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i32, ptr %i.r, align 8, !tbaa !299  ; 3 uses
  %i.t = and i32 %i.s, %1                         ; 2 uses
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.v = load i32, ptr %i.u, align 8, !tbaa !84
  %.not44 = icmp eq i32 %i.v, 0
  br i1 %.not44, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !208  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !211
  %i.ac = and i32 %i.ab, 8
  %.not45 = icmp eq i32 %i.ac, 0
  br i1 %.not45, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !87  ; 2 uses
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
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !208 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 216
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !209
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load i32, ptr %i.al, align 8, !tbaa !211
  %i.an = and i32 %i.am, 8
  %.not47 = icmp eq i32 %i.an, 0
  br i1 %.not47, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !87 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 772
  %.not48 = icmp eq i32 %i.ao, 65536
  %or.cond58 = or i1 %i.ap, %.not48
  %brmerge = or i1 %.not41, %or.cond58
  br i1 %brmerge, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5440
end_hunk_1
