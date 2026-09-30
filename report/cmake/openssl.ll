Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/openssl?download=true
inline.NumInlined: 125
inline.NumDeleted: 50
begin_hunk_0_@Curl_ossl_ctx_init:bb.a

bb.bd:                                            ; preds = %bb.bc
  %i.eg = load ptr, ptr %0, align 8, !tbaa !84
  %i.eh = tail call i64 @SSL_CTX_ctrl(ptr noundef %i.eg, i32 noundef 44, i64 noundef 769, ptr noundef null) #11 ; 0 uses
  %i.ei = load ptr, ptr %0, align 8, !tbaa !84
  tail call void @SSL_CTX_sess_set_new_cb(ptr noundef %i.ei, ptr noundef nonnull %7) #11
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 904 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !165
  %.not198 = icmp eq ptr %i.ek, null
  br i1 %.not198, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.em = load i8, ptr %i.el, align 8
  %i.en = and i8 %i.em, 1
  %.not199 = icmp eq i8 %i.en, 0
  br i1 %.not199, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.eo = tail call i32 @Curl_ssl_setup_x509_store(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %0) ; 2 uses
  %.not200 = icmp eq i32 %i.eo, 0
  br i1 %.not200, label %bb.bh, label %ossl_init_method.exit.thread

bb.bh:                                            ; preds = %bb.bg
  %i.ep = load i8, ptr %i.el, align 8
  %i.eq = or i8 %i.ep, 1
  store i8 %i.eq, ptr %i.el, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  tail call void @Curl_set_in_callback(ptr noundef nonnull %2, i1 noundef zeroext true) #11
  %i.er = load ptr, ptr %i.ej, align 8, !tbaa !165
  %i.es = load ptr, ptr %0, align 8, !tbaa !84
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !166
  %i.ev = tail call i32 %i.er(ptr noundef nonnull %2, ptr noundef %i.es, ptr noundef %i.eu) #11 ; 2 uses
  tail call void @Curl_set_in_callback(ptr noundef nonnull %2, i1 noundef zeroext false) #11
  %.not201 = icmp eq i32 %i.ev, 0
  br i1 %.not201, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #11
  br label %ossl_init_method.exit.thread

bb.bk:                                            ; preds = %bb.bi, %bb.be
  %i.ew = tail call fastcc i32 @ossl_init_ssl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %8, ptr noundef %9)
  br label %ossl_init_method.exit.thread

ossl_init_method.exit.thread:                     ; preds = %bb.ac, %bb.af, %bb.ae, %bb.p, %bb.m, %bb.j, %bb.i, %bb.k, %bb.o, %ossl_seed.exit, %bb.bg, %.critedge205, %.critedge203, %bb.av, %.critedge, %bb.y, %bb.bk, %bb.bj, %bb.ah, %ossl_strerror.exit
  %.3 = phi i32 [ 27, %ossl_strerror.exit ], [ 35, %ossl_seed.exit ], [ %i.eo, %bb.bg ], [ 35, %bb.af ], [ %i.ay, %bb.y ], [ 35, %bb.ae ], [ 35, %bb.p ], [ %i.ev, %bb.bj ], [ %i.ew, %bb.bk ], [ %i.dt, %bb.av ], [ 59, %.critedge205 ], [ 59, %.critedge203 ], [ 59, %.critedge ], [ 59, %bb.ah ], [ 4, %bb.ac ], [ 35, %bb.o ], [ 35, %bb.m ], [ 4, %bb.j ], [ 4, %bb.i ], [ 35, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.3
}

declare ptr @SSL_CTX_new_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SSL_CTX_new(ptr noundef) local_unnamed_addr #2

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef nonnull ptr @ossl_strerror(i64 noundef %0, ptr noundef nonnull initializes((0, 1)) %1, i64 noundef range(i64 256, 1025) %2) unnamed_addr #0 {
bb.a:
  store i8 0, ptr %1, align 1, !tbaa !105
  %i.a = tail call ptr @OpenSSL_version(i32 noundef 6) #11
  %i.b = tail call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %i.a) #11
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = add nsw i64 %2, -2                       ; 2 uses
  %i.e = icmp ugt i64 %i.d, %i.c
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 3 uses
  %i.g = sub nuw nsw i64 %i.d, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 58, ptr %i.f, align 1, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  store i8 32, ptr %i.h, align 1, !tbaa !105
  store i8 0, ptr %i.i, align 1, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.021 = phi i64 [ %i.g, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %.0 = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ]    ; 4 uses
  tail call void @ERR_error_string_n(i64 noundef %0, ptr noundef nonnull %.0, i64 noundef %.021) #11
  %i.j = load i8, ptr %.0, align 1, !tbaa !105
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not23 = icmp eq i64 %0, 0                     ; 2 uses
  %i.k = select i1 %.not23, ptr @.str.40, ptr @.str.39
  %i.l = select i1 %.not23, i64 8, i64 13
  tail call void @curlx_strcopy(ptr noundef nonnull %.0, i64 noundef %.021, ptr noundef nonnull %i.k, i64 noundef %i.l) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret ptr %.0
}

declare i64 @ERR_peek_error() local_unnamed_addr #2

declare void @SSL_CTX_set_msg_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ossl_trace(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly captures(address_is_null) %6) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 4 uses
  %.not53 = icmp eq ptr %i.f, null
  br i1 %.not53, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 544
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  %.not54 = icmp eq ptr %i.h, null
  br i1 %.not54, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not55 = icmp eq i32 %0, 0
  %or.cond = icmp ugt i32 %0, 1
  br i1 %or.cond, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %switch.tableidx = add i32 %1, -768             ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx, 5
  br i1 %i.i, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.46, i32 noundef %1) #11 ; 0 uses
  br label %bb.g

switch.lookup:                                    ; preds = %bb.e
  %i.k = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ossl_trace, i64 %i.k
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup, %bb.f
  %.048 = phi ptr [ %i.a, %bb.f ], [ %switch.load, %switch.lookup ]
  %i.l = icmp ne i32 %1, 0
  %i.m = add i32 %2, -258
  %i.n = icmp ult i32 %i.m, -2
  %or.cond5 = and i1 %i.l, %i.n
  br i1 %or.cond5, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.o = ashr i32 %1, 8                           ; 2 uses
  %i.p = icmp eq i32 %i.o, 3
  %i.q = icmp ne i32 %2, 0
  %or.cond7 = and i1 %i.p, %i.q
  br i1 %or.cond7, label %bb.i, label %tls_rt_type.exit

bb.i:                                             ; preds = %bb.h
  switch i32 %2, label %tls_rt_type.exit [
    i32 23, label %bb.j
    i32 20, label %tls_rt_type.exit.thread61
    i32 21, label %tls_rt_type.exit.thread64
    i32 22, label %tls_rt_type.exit.thread
  ]

bb.j:                                             ; preds = %bb.i
  br label %tls_rt_type.exit.thread

tls_rt_type.exit:                                 ; preds = %bb.i, %bb.h
  %.046 = phi ptr [ @.str.48, %bb.h ], [ @.str.58, %bb.i ] ; 3 uses
  switch i32 %2, label %tls_rt_type.exit.thread [
    i32 20, label %tls_rt_type.exit.thread61
    i32 21, label %tls_rt_type.exit.thread64
  ]

tls_rt_type.exit.thread61:                        ; preds = %bb.i, %tls_rt_type.exit
  %.04663 = phi ptr [ %.046, %tls_rt_type.exit ], [ @.str.54, %bb.i ] ; 2 uses
  %.not57 = icmp eq i64 %4, 0
  br i1 %.not57, label %bb.n, label %bb.k

bb.k:                                             ; preds = %tls_rt_type.exit.thread61
  %i.r = load i8, ptr %3, align 1, !tbaa !105
  %i.s = zext i8 %i.r to i32
  br label %bb.n

tls_rt_type.exit.thread64:                        ; preds = %bb.i, %tls_rt_type.exit
  %.04666 = phi ptr [ %.046, %tls_rt_type.exit ], [ @.str.55, %bb.i ] ; 2 uses
  %i.t = icmp ugt i64 %4, 1
  br i1 %i.t, label %bb.l, label %bb.n

bb.l:                                             ; preds = %tls_rt_type.exit.thread64
  %7 = load i16, ptr %3, align 1
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %i.u = zext i16 %8 to i32                       ; 2 uses
  %i.v = call ptr @SSL_alert_desc_string_long(i32 noundef %i.u) #11
  br label %bb.n

tls_rt_type.exit.thread:                          ; preds = %bb.i, %bb.j, %tls_rt_type.exit
  %.04660 = phi ptr [ %.046, %tls_rt_type.exit ], [ @.str.57, %bb.j ], [ @.str.56, %bb.i ] ; 2 uses
  %.not56 = icmp eq i64 %4, 0
  br i1 %.not56, label %bb.n, label %bb.m

bb.m:                                             ; preds = %tls_rt_type.exit.thread
  %i.w = load i8, ptr %3, align 1, !tbaa !105
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = call fastcc ptr @ssl_msg_type(i32 noundef %i.o, i32 noundef %i.x)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %tls_rt_type.exit.thread64, %bb.m, %tls_rt_type.exit.thread, %tls_rt_type.exit.thread61, %bb.k
  %.04659 = phi ptr [ %.04663, %bb.k ], [ %.04663, %tls_rt_type.exit.thread61 ], [ %.04666, %bb.l ], [ %.04666, %tls_rt_type.exit.thread64 ], [ %.04660, %bb.m ], [ %.04660, %tls_rt_type.exit.thread ]
  %.047 = phi ptr [ @.str.49, %bb.k ], [ @.str.47, %tls_rt_type.exit.thread61 ], [ %i.v, %bb.l ], [ @.str.47, %tls_rt_type.exit.thread64 ], [ %i.y, %bb.m ], [ @.str.47, %tls_rt_type.exit.thread ]
  %.0 = phi i32 [ %i.s, %bb.k ], [ 0, %tls_rt_type.exit.thread61 ], [ %i.u, %bb.l ], [ 0, %tls_rt_type.exit.thread64 ], [ %i.x, %bb.m ], [ 0, %tls_rt_type.exit.thread ]
  %i.z = select i1 %.not55, ptr @.str.52, ptr @.str.51
  %i.aa = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef nonnull @.str.50, ptr noundef nonnull %.048, ptr noundef nonnull %i.z, ptr noundef %.04659, ptr noundef %.047, i32 noundef %.0) #11
  %i.ab = sext i32 %i.aa to i64
  call void @Curl_debug(ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef nonnull %i.b, i64 noundef %i.ab) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  %i.ac = icmp eq i32 %0, 1
  %i.ad = select i1 %i.ac, i32 6, i32 5
  call void @Curl_debug(ptr noundef nonnull %i.f, i32 noundef %i.ad, ptr noundef %3, i64 noundef %4) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare i64 @SSL_CTX_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @SSL_CTX_set_options(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @SSL_CTX_set_default_read_buffer_len(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_set_cipher_list(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_infof(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @SSL_CTX_set_ciphersuites(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 59) i32 @client_cert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(address) %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 19 uses
  %i.b = alloca [256 x i8], align 16              ; 20 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  %i.f = alloca [256 x i8], align 16              ; 19 uses
  %i.g = alloca [256 x i8], align 16              ; 11 uses
  %9 = alloca %struct.anon.0, align 8             ; 6 uses
  %i.h = alloca [256 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %ossl_do_file_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %4, align 1, !tbaa !105
  %.not8.i = icmp eq i8 %i.i, 0
  br i1 %.not8.i, label %ossl_do_file_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @curl_strequal(ptr noundef nonnull %4, ptr noundef nonnull @.str.84) #11
  %.not9.i = icmp eq i32 %i.j, 0
  br i1 %.not9.i, label %bb.d, label %ossl_do_file_type.exit

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @curl_strequal(ptr noundef nonnull %4, ptr noundef nonnull @.str.89) #11
  %.not10.i = icmp eq i32 %i.k, 0
  br i1 %.not10.i, label %bb.e, label %ossl_do_file_type.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @curl_strequal(ptr noundef nonnull %4, ptr noundef nonnull @.str.90) #11
  %.not11.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i, label %bb.f, label %ossl_do_file_type.exit

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @curl_strequal(ptr noundef nonnull %4, ptr noundef nonnull @.str.91) #11
  %.not12.i = icmp eq i32 %i.m, 0
  br i1 %.not12.i, label %bb.g, label %ossl_do_file_type.exit

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @curl_strequal(ptr noundef nonnull %4, ptr noundef nonnull @.str.92) #11
  %.not13.i = icmp eq i32 %i.n, 0
  %..i = select i1 %.not13.i, i32 -1, i32 43
  br label %ossl_do_file_type.exit

ossl_do_file_type.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ], [ 44, %bb.e ], [ %..i, %bb.g ], [ 42, %bb.f ], [ 1, %bb.b ] ; 6 uses
  %i.o = icmp ne ptr %2, null                     ; 3 uses
  %i.p = icmp ne ptr %3, null                     ; 5 uses
  %or.cond = or i1 %i.o, %i.p
  %i.q = icmp eq i32 %.0.i, 42
  %i.r = icmp eq i32 %.0.i, 44
  %i.s = or i1 %i.q, %i.r
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.s
  br i1 %or.cond5, label %bb.h, label %.thread

bb.h:                                             ; preds = %ossl_do_file_type.exit
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @SSL_CTX_set_default_passwd_cb_userdata(ptr noundef %1, ptr noundef nonnull %8) #11
  tail call void @SSL_CTX_set_default_passwd_cb(ptr noundef %1, ptr noundef nonnull @passwd_callback) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  switch i32 %.0.i, label %bb.dl [
    i32 1, label %bb.k
    i32 2, label %bb.y
    i32 42, label %bb.ah
    i32 44, label %bb.ba
    i32 43, label %bb.cd
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %i.p, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %.val = load ptr, ptr %3, align 8, !tbaa !96
  %i.t = getelementptr i8, ptr %3, i64 8
  %.val133 = load i64, ptr %i.t, align 8, !tbaa !95
  %i.u = trunc i64 %.val133 to i32
  %i.v = tail call ptr @BIO_new_mem_buf(ptr noundef %.val, i32 noundef %i.u) #11 ; 4 uses
  %.not.i137 = icmp eq ptr %i.v, null
  br i1 %.not.i137, label %use_certificate_chain_blob.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @ERR_clear_error() #11
  %i.w = tail call ptr @PEM_read_bio_X509_AUX(ptr noundef nonnull %i.v, ptr noundef null, ptr noundef nonnull @passwd_callback, ptr noundef %8) #11 ; 3 uses
  %.not26.i = icmp eq ptr %i.w, null
  br i1 %.not26.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = tail call i32 @SSL_CTX_use_certificate(ptr noundef %1, ptr noundef nonnull %i.w) #11
  %i.y = tail call i64 @ERR_peek_error() #11
  %.not27.i = icmp eq i64 %i.y, 0
  %spec.select.i = select i1 %.not27.i, i32 %i.x, i32 0 ; 2 uses
  %.not28.i = icmp eq i32 %spec.select.i, 0
  br i1 %.not28.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = tail call i64 @SSL_CTX_ctrl(ptr noundef %1, i32 noundef 88, i64 noundef 0, ptr noundef null) #11
  %.not29.i = icmp eq i64 %i.z, 0
  br i1 %.not29.i, label %bb.t, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %bb.p
  %i.aa = tail call ptr @PEM_read_bio_X509(ptr noundef nonnull %i.v, ptr noundef null, ptr noundef nonnull @passwd_callback, ptr noundef %8) #11 ; 3 uses
  %.not30.i = icmp eq ptr %i.aa, null
  br i1 %.not30.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.ab = tail call i64 @SSL_CTX_ctrl(ptr noundef %1, i32 noundef 89, i64 noundef 0, ptr noundef nonnull %i.aa) #11
  %.not31.i = icmp eq i64 %i.ab, 0
  br i1 %.not31.i, label %bb.q, label %.preheader.i, !llvm.loop !167

bb.q:                                             ; preds = %bb.p
  tail call void @X509_free(ptr noundef nonnull %i.aa) #11
  br label %bb.t

bb.r:                                             ; preds = %.preheader.i
  %i.ac = tail call i64 @ERR_peek_last_error() #11
  %i.ad = and i64 %i.ac, 4294967295
  %or.cond.i = icmp eq i64 %i.ad, 75497580
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @ERR_clear_error() #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m
  %.3.i = phi i32 [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.o ], [ %spec.select.i, %bb.s ], [ 0, %bb.r ]
  tail call void @X509_free(ptr noundef %i.w) #11
  %i.ae = tail call i32 @BIO_free(ptr noundef nonnull %i.v) #11 ; 0 uses
  br label %use_certificate_chain_blob.exit

bb.u:                                             ; preds = %bb.k
  %i.af = tail call i32 @SSL_CTX_use_certificate_chain_file(ptr noundef %1, ptr noundef %2) #11
  br label %use_certificate_chain_blob.exit

use_certificate_chain_blob.exit:                  ; preds = %bb.t, %bb.u
  %i.ag = phi i32 [ %i.af, %bb.u ], [ %.3.i, %bb.t ]
  %.not122 = icmp eq i32 %i.ag, 1
  br i1 %.not122, label %bb.dm, label %use_certificate_chain_blob.exit.thread

use_certificate_chain_blob.exit.thread:           ; preds = %bb.l, %use_certificate_chain_blob.exit
  %i.ah = select i1 %i.p, ptr @.str.79, ptr %2
  %i.ai = tail call i64 @ERR_get_error() #11      ; 2 uses
  store i8 0, ptr %i.h, align 16, !tbaa !105
  %i.aj = tail call ptr @OpenSSL_version(i32 noundef 6) #11
  %i.ak = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.h, i64 noundef 256, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %i.aj) #11 ; 2 uses
  %i.al = icmp ult i32 %i.ak, 254
  br i1 %i.al, label %bb.v, label %bb.w

bb.v:                                             ; preds = %use_certificate_chain_blob.exit.thread
  %i.am = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.am ; 3 uses
  %i.ao = sub nuw nsw i64 254, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 58, ptr %i.an, align 1, !tbaa !105
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 2 ; 2 uses
  store i8 32, ptr %i.ap, align 1, !tbaa !105
  store i8 0, ptr %i.aq, align 1, !tbaa !105
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %use_certificate_chain_blob.exit.thread
  %.021.i = phi i64 [ %i.ao, %bb.v ], [ 256, %use_certificate_chain_blob.exit.thread ] ; 2 uses
  %.0.i138 = phi ptr [ %i.aq, %bb.v ], [ %i.h, %use_certificate_chain_blob.exit.thread ] ; 4 uses
  call void @ERR_error_string_n(i64 noundef %i.ai, ptr noundef nonnull %.0.i138, i64 noundef %.021.i) #11
end_hunk_0
begin_hunk_1_@ossl_bio_cf_in_read:bb.a
  %i.ad = load i8, ptr %i.ac, align 8             ; 2 uses
  %i.ae = or i8 %i.ad, 4
  store i8 %i.ae, ptr %i.ac, align 8
  %i.af = load i64, ptr %i.a, align 8, !tbaa !99
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = or i8 %i.ad, 5
  store i8 %i.ah, ptr %i.ac, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = and i8 %i.aj, 1
  %.not50 = icmp eq i8 %i.ak, 0
  br i1 %.not50, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.al = call i32 @Curl_ssl_setup_x509_store(ptr noundef nonnull %i.b, ptr noundef %i.h, ptr noundef nonnull %i.f) ; 2 uses
  %.not51 = icmp eq i32 %i.al, 0
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #11
  store i32 %i.al, ptr %i.aa, align 8, !tbaa !128
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.am = load i8, ptr %i.ai, align 8
  %i.an = or i8 %i.am, 1
  store i8 %i.an, ptr %i.ai, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.ao = load i64, ptr %i.a, align 8
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = select i1 %.not49, i32 %i.ap, i32 -1
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q, %bb.o
  %.0 = phi i32 [ 0, %bb.a ], [ %i.aq, %bb.q ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

declare i32 @BIO_meth_set_ctrl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i64 -2147483648, 2147483648) i64 @ossl_bio_cf_ctrl(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @BIO_get_data(ptr noundef %0) #11
  switch i32 %1, label %bb.e [
    i32 8, label %bb.b
    i32 9, label %bb.c
    i32 11, label %bb.f
    i32 12, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @BIO_get_shutdown(ptr noundef %0) #11
  %i.c = sext i32 %i.b to i64
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i32
  tail call void @BIO_set_shutdown(ptr noundef %0, i32 noundef %i.d) #11
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 1
  %i.j = zext nneg i8 %i.i to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.a, %bb.a, %bb.d
  %.0 = phi i64 [ %i.j, %bb.d ], [ 0, %bb.e ], [ %i.c, %bb.b ], [ 1, %bb.c ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i64 %.0
}

declare i32 @BIO_meth_set_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @ossl_bio_cf_create(ptr noundef %0) #0 {
bb.a:
  tail call void @BIO_set_shutdown(ptr noundef %0, i32 noundef 1) #11
  tail call void @BIO_set_init(ptr noundef %0, i32 noundef 1) #11
  tail call void @BIO_set_data(ptr noundef %0, ptr noundef null) #11
  ret i32 1
}

declare i32 @BIO_meth_set_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @ossl_bio_cf_destroy(ptr nofree noundef readnone captures(address_is_null) %0) #4 {
bb.a:
  %.not = icmp ne ptr %0, null
  %. = zext i1 %.not to i32
  ret i32 %.
}

declare ptr @BIO_get_data(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_conn_cf_send(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @BIO_clear_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Curl_conn_cf_recv(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_get_shutdown(ptr noundef) local_unnamed_addr #2

declare void @BIO_set_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_set_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_bufq_peek(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_write_early_data(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @curlx_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Curl_bufq_skip(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_connect(ptr noundef) local_unnamed_addr #2

declare i32 @Curl_xfer_pause_recv(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @SSL_get0_alpn_selected(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_alpn_set_negotiated(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Curl_ssl_scache_remove_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_CTX_free(ptr noundef) local_unnamed_addr #2

declare void @BIO_meth_free(ptr noundef) local_unnamed_addr #2

declare i32 @ENGINE_finish(ptr noundef) local_unnamed_addr #2

declare i32 @ENGINE_free(ptr noundef) local_unnamed_addr #2

declare ptr @ENGINE_by_id(ptr noundef) local_unnamed_addr #2

declare i32 @ENGINE_init(ptr noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_default(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ENGINE_get_id(ptr noundef) local_unnamed_addr #2

declare ptr @ENGINE_get_first() local_unnamed_addr #2

declare ptr @curl_slist_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @curl_slist_free_all(ptr noundef) local_unnamed_addr #2

declare ptr @ENGINE_get_next(ptr noundef) local_unnamed_addr #2

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_DigestInit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_sha256() local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_get_signature_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_get_digestbyname(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_default_digest_name(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @X509_digest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS16Curl_ssl_session", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"p1 _ZTS11connectdata", !9, i64 0}
!17 = !{!"p1 _ZTS10Curl_llist", !9, i64 0}
!18 = !{!"p1 _ZTS15Curl_llist_node", !9, i64 0}
!19 = !{!"Curl_llist_node", !17, i64 0, !9, i64 8, !18, i64 16, !18, i64 24}
!20 = !{!"CURLMsg", !6, i64 0, !9, i64 8, !5, i64 16}
!21 = !{!"Curl_message", !19, i64 0, !20, i64 32}
!22 = !{!"p1 _ZTS10Curl_multi", !9, i64 0}
!23 = !{!"p1 _ZTS10Curl_share", !9, i64 0}
!24 = !{!"any p2 pointer", !9, i64 0}
!25 = !{!"p2 _ZTS17Curl_hash_element", !24, i64 0}
!26 = !{!"Curl_hash", !25, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !15, i64 32, !15, i64 40}
!27 = !{!"curltime", !15, i64 0, !6, i64 8}
!28 = !{!"p1 _ZTS12Curl_cwriter", !9, i64 0}
!29 = !{!"p1 _ZTS12Curl_creader", !9, i64 0}
!30 = !{!"p1 _ZTS9buf_chunk", !9, i64 0}
!31 = !{!"p1 _ZTS9bufc_pool", !9, i64 0}
!32 = !{!"bufq", !30, i64 0, !30, i64 8, !30, i64 16, !31, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !6, i64 56}
!33 = !{!"SingleRequest", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !27, i64 40, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !5, i64 76, !5, i64 77, !6, i64 80, !28, i64 88, !29, i64 96, !32, i64 104, !15, i64 168, !15, i64 176, !13, i64 184, !13, i64 192, !5, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !5, i64 232, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 233, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 234, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235, !6, i64 235}
!34 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!35 = !{!"p1 _ZTS10curl_slist", !9, i64 0}
!36 = !{!"p1 _ZTS13curl_httppost", !9, i64 0}
!37 = !{!"p1 _ZTS13curl_mimepart", !9, i64 0}
!38 = !{!"p1 _ZTS9curl_blob", !9, i64 0}
!39 = !{!"ssl_primary_config", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !13, i64 96, !6, i64 104, !5, i64 108, !5, i64 109, !6, i64 110, !6, i64 110, !6, i64 110, !6, i64 110}
!40 = !{!"ssl_config_data", !39, i64 0, !15, i64 112, !9, i64 120, !9, i64 128, !13, i64 136, !13, i64 144, !38, i64 152, !13, i64 160, !13, i64 168, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 176, !6, i64 177, !6, i64 177, !6, i64 177}
!41 = !{!"short", !5, i64 0}
!42 = !{!"ssl_general_config", !6, i64 0}
!43 = !{!"p1 _ZTS9Curl_easy", !9, i64 0}
!44 = !{!"p1 _ZTS19Curl_data_prio_node", !9, i64 0}
!45 = !{!"Curl_data_priority", !43, i64 0, !44, i64 8, !6, i64 16, !6, i64 20}
!46 = !{!"p1 _ZTS8Curl_URL", !9, i64 0}
!47 = !{!"UserDefined", !34, i64 0, !9, i64 8, !13, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !6, i64 52, !9, i64 56, !9, i64 64, !15, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !35, i64 320, !36, i64 328, !37, i64 336, !35, i64 344, !35, i64 352, !15, i64 360, !40, i64 368, !40, i64 552, !35, i64 736, !41, i64 744, !5, i64 746, !5, i64 747, !42, i64 748, !15, i64 752, !6, i64 760, !6, i64 764, !9, i64 768, !35, i64 776, !15, i64 784, !15, i64 792, !5, i64 800, !5, i64 801, !5, i64 802, !35, i64 808, !35, i64 816, !35, i64 824, !6, i64 832, !5, i64 840, !5, i64 1352, !6, i64 1416, !15, i64 1424, !15, i64 1432, !9, i64 1440, !9, i64 1448, !9, i64 1456, !9, i64 1464, !9, i64 1472, !15, i64 1480, !15, i64 1488, !15, i64 1496, !15, i64 1504, !15, i64 1512, !6, i64 1520, !6, i64 1524, !6, i64 1528, !45, i64 1536, !9, i64 1560, !9, i64 1568, !15, i64 1576, !46, i64 1584, !9, i64 1592, !9, i64 1600, !6, i64 1608, !41, i64 1612, !41, i64 1614, !41, i64 1616, !41, i64 1618, !41, i64 1620, !41, i64 1622, !5, i64 1624, !5, i64 1625, !5, i64 1626, !5, i64 1627, !5, i64 1628, !5, i64 1629, !5, i64 1630, !5, i64 1631, !5, i64 1632, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1633, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1634, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1635, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1636, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1637, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1638, !6, i64 1639, !6, i64 1639, !6, i64 1639, !6, i64 1639, !6, i64 1639, !6, i64 1639}
!48 = !{!"p1 _ZTS10CookieInfo", !9, i64 0}
!49 = !{!"p1 _ZTS4hsts", !9, i64 0}
!50 = !{!"Curl_rlimit", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !27, i64 56, !6, i64 72}
!51 = !{!"pgrs_dir", !15, i64 0, !15, i64 8, !15, i64 16, !50, i64 24}
!52 = !{!"Progress", !27, i64 0, !15, i64 16, !51, i64 24, !51, i64 128, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !27, i64 328, !27, i64 344, !27, i64 360, !27, i64 376, !27, i64 392, !5, i64 408, !5, i64 456, !6, i64 552, !6, i64 556, !6, i64 556, !6, i64 556, !6, i64 556, !6, i64 556, !6, i64 556}
!53 = !{!"dynbuf", !13, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!54 = !{!"digestdata", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !6, i64 48, !5, i64 52, !6, i64 53, !6, i64 53}
!55 = !{!"auth", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 12, !6, i64 12}
!56 = !{!"p1 _ZTS17Curl_resolv_async", !9, i64 0}
!57 = !{!"p1 _ZTS9Curl_tree", !9, i64 0}
!58 = !{!"Curl_tree", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !27, i64 32, !9, i64 48}
!59 = !{!"Curl_llist", !18, i64 0, !18, i64 8, !9, i64 16, !15, i64 24}
!60 = !{!"urlpieces", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!61 = !{!"bufref", !9, i64 0, !13, i64 8, !15, i64 16}
!62 = !{!"p1 _ZTS17Curl_header_store", !9, i64 0}
!63 = !{!"p1 _ZTS13curl_trc_feat", !9, i64 0}
!64 = !{!"store_netrc", !53, i64 0, !13, i64 32, !6, i64 40}
!65 = !{!"dynamically_allocated_data", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!66 = !{!"http_negotiation", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !6, i64 4, !6, i64 4, !6, i64 4, !6, i64 4}
!67 = !{!"UrlState", !27, i64 0, !15, i64 16, !15, i64 24, !53, i64 32, !35, i64 64, !15, i64 72, !13, i64 80, !6, i64 88, !15, i64 96, !6, i64 104, !6, i64 108, !9, i64 112, !54, i64 120, !54, i64 176, !55, i64 232, !55, i64 248, !56, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !13, i64 304, !6, i64 312, !27, i64 320, !58, i64 336, !59, i64 392, !5, i64 424, !13, i64 1264, !13, i64 1272, !15, i64 1280, !15, i64 1288, !45, i64 1296, !9, i64 1320, !9, i64 1328, !46, i64 1336, !60, i64 1344, !61, i64 1408, !61, i64 1432, !35, i64 1456, !37, i64 1464, !37, i64 1472, !15, i64 1480, !53, i64 1488, !59, i64 1520, !5, i64 1552, !62, i64 1648, !35, i64 1656, !63, i64 1664, !64, i64 1672, !65, i64 1720, !66, i64 1792, !41, i64 1800, !5, i64 1802, !5, i64 1803, !6, i64 1804, !6, i64 1804, !6, i64 1804, !6, i64 1804, !6, i64 1804, !6, i64 1804, !6, i64 1804, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1805, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1806, !6, i64 1807}
!68 = !{!"p1 _ZTS12WildcardData", !9, i64 0}
!69 = !{!"ip_quadruple", !5, i64 0, !5, i64 46, !41, i64 92, !41, i64 94, !5, i64 96}
!70 = !{!"p2 _ZTS10curl_slist", !24, i64 0}
!71 = !{!"curl_certinfo", !6, i64 0, !70, i64 8}
!72 = !{!"PureInfo", !6, i64 0, !6, i64 4, !6, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !13, i64 56, !13, i64 64, !15, i64 72, !6, i64 80, !69, i64 84, !6, i64 184, !13, i64 192, !6, i64 200, !71, i64 208, !6, i64 224, !6, i64 228, !6, i64 228}
!73 = !{!"curl_tlssessioninfo", !6, i64 0, !9, i64 8}
!74 = !{!"Curl_easy", !6, i64 0, !15, i64 8, !6, i64 16, !6, i64 20, !9, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !21, i64 48, !22, i64 104, !22, i64 112, !23, i64 120, !26, i64 128, !33, i64 176, !47, i64 416, !48, i64 2056, !49, i64 2064, !52, i64 2072, !67, i64 2632, !68, i64 4440, !72, i64 4448, !73, i64 4680}
!75 = !{!74, !22, i64 104}
!76 = !{!"p1 _ZTS13x509_store_st", !9, i64 0}
!77 = !{!"ossl_x509_share", !13, i64 0, !76, i64 8, !27, i64 16, !6, i64 32, !6, i64 32}
!78 = !{!77, !76, i64 8}
!79 = !{!77, !13, i64 0}
!80 = !{!"p1 _ZTS10ssl_ctx_st", !9, i64 0}
!81 = !{!"p1 _ZTS6ssl_st", !9, i64 0}
!82 = !{!"p1 _ZTS13bio_method_st", !9, i64 0}
!83 = !{!"ossl_ctx", !80, i64 0, !81, i64 8, !82, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 32, !6, i64 32}
!84 = !{!83, !80, i64 0}
!85 = !{!74, !63, i64 4296}
!86 = !{!"curl_trc_feat", !13, i64 0, !6, i64 8}
!87 = !{!86, !6, i64 8}
!88 = !{!"p1 _ZTS11Curl_cftype", !9, i64 0}
!89 = !{!"p1 _ZTS12Curl_cfilter", !9, i64 0}
!90 = !{!"Curl_cfilter", !88, i64 0, !89, i64 8, !9, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 36}
!91 = !{!90, !88, i64 0}
!92 = !{!"Curl_cftype", !13, i64 0, !6, i64 8, !6, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104}
!93 = !{!92, !6, i64 12}
!94 = !{!"curl_blob", !9, i64 0, !15, i64 8, !6, i64 16}
!95 = !{!94, !15, i64 8}
!96 = !{!94, !9, i64 0}
!97 = !{!"p1 _ZTS7x509_st", !9, i64 0}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!15, !15, i64 0}
!100 = !{!6, !6, i64 0}
!101 = !{!40, !15, i64 112}
!102 = !{!"ssl_peer", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !6, i64 32, !41, i64 36, !5, i64 38}
!103 = !{!74, !9, i64 2928}
!104 = !{!74, !13, i64 2936}
!105 = !{!5, !5, i64 0}
!106 = !{!74, !9, i64 544}
!107 = !{!90, !9, i64 16}
!108 = !{!"p1 _ZTS8Curl_ssl", !9, i64 0}
!109 = !{!"p1 _ZTS9alpn_spec", !9, i64 0}
!110 = !{!"cf_call_data", !43, i64 0}
!111 = !{!"", !13, i64 0}
!112 = !{!"ssl_connect_data", !108, i64 0, !102, i64 8, !109, i64 48, !9, i64 56, !110, i64 64, !27, i64 72, !111, i64 88, !32, i64 96, !15, i64 160, !15, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 192, !6, i64 192}
!113 = !{!112, !43, i64 64}
!114 = !{!74, !9, i64 2904}
!115 = !{!83, !81, i64 8}
!116 = !{!"Curl_ssl_session", !9, i64 0, !15, i64 8, !15, i64 16, !6, i64 24, !13, i64 32, !15, i64 40, !13, i64 48, !15, i64 56, !19, i64 64}
!117 = !{!"_Bool", !5, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!"p1 _ZTS10buf_mem_st", !9, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"buf_mem_st", !15, i64 0, !13, i64 8, !15, i64 16, !15, i64 24}
!122 = !{!121, !13, i64 8}
!123 = !{!121, !15, i64 0}
!124 = !{!112, !9, i64 56}
!125 = !{!112, !6, i64 188}
!126 = !{!90, !89, i64 8}
!127 = !{!83, !82, i64 16}
!128 = !{!83, !6, i64 24}
!129 = !{!112, !13, i64 32}
!130 = !{!74, !9, i64 2920}
!131 = !{!74, !9, i64 2912}
!132 = !{ptr @ossl_provider_cleanup}
!133 = !{!"p1 _ZTS9bignum_st", !9, i64 0}
!134 = !{!133, !133, i64 0}
!135 = distinct !{!135, !98}
!136 = distinct !{null}
!137 = !{!74, !6, i64 1164}
!138 = !{!39, !13, i64 0}
!139 = !{!39, !38, i64 80}
!140 = !{!40, !13, i64 64}
!141 = !{!42, !6, i64 0}
!142 = !{!39, !13, i64 8}
!143 = !{!"p1 _ZTS11X509_crl_st", !9, i64 0}
!144 = !{!"p1 _ZTS14private_key_st", !9, i64 0}
!145 = !{!"p1 _ZTS13evp_cipher_st", !9, i64 0}
!146 = !{!"evp_cipher_info_st", !145, i64 0, !5, i64 8}
!147 = !{!"X509_info_st", !97, i64 0, !143, i64 8, !144, i64 16, !146, i64 24, !6, i64 48, !13, i64 56}
!148 = !{!147, !97, i64 0}
!149 = !{!147, !143, i64 8}
!150 = !{i64 0, i64 8, !99, i64 8, i64 4, !100}
!151 = !{!40, !13, i64 24}
!152 = !{!40, !38, i64 72}
!153 = !{!40, !13, i64 136}
!154 = !{!39, !5, i64 109}
!155 = !{!102, !5, i64 38}
!156 = !{!39, !6, i64 104}
!157 = !{!39, !13, i64 32}
!158 = !{!39, !13, i64 40}
!159 = !{!40, !13, i64 144}
!160 = !{!40, !38, i64 152}
!161 = !{!40, !13, i64 160}
!162 = !{!40, !13, i64 168}
!163 = !{!39, !13, i64 96}
!164 = !{!39, !13, i64 48}
!165 = !{!74, !9, i64 904}
!166 = !{!74, !9, i64 912}
!167 = distinct !{!167, !98}
!168 = !{!"", !13, i64 0, !97, i64 8}
!169 = !{!168, !13, i64 0}
!170 = !{!168, !97, i64 8}
!171 = !{!"p1 _ZTS13stack_st_X509", !9, i64 0}
!172 = !{!171, !171, i64 0}
!173 = !{!97, !97, i64 0}
!174 = !{!"p1 _ZTS11evp_pkey_st", !9, i64 0}
!175 = !{!174, !174, i64 0}
!176 = distinct !{null}
!177 = !{!102, !13, i64 16}
!178 = !{!102, !13, i64 24}
!179 = !{!116, !9, i64 0}
!180 = !{!116, !15, i64 8}
end_hunk_1
