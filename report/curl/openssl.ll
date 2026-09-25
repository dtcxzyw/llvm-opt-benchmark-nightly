Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/openssl?download=true
inline.NumInlined: 125
inline.NumDeleted: 50
begin_hunk_0_@Curl_ossl_ctx_init:bb.a
  %i.et = tail call i32 @SSL_CTX_set_srp_username(ptr noundef %i.es, ptr noundef %i.eh) #11
  %.not234 = icmp eq i32 %i.et, 0
  br i1 %.not234, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %2, ptr noundef nonnull @.str.9) #11
  br label %ossl_init_method.exit.thread

bb.bj:                                            ; preds = %bb.bh
  %i.eu = load ptr, ptr %0, align 8, !tbaa !84
  %i.ev = tail call i32 @SSL_CTX_set_srp_password(ptr noundef %i.eu, ptr noundef %i.ej) #11
  %.not235 = icmp eq i32 %i.ev, 0
  br i1 %.not235, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %2, ptr noundef nonnull @.str.10) #11
  br label %ossl_init_method.exit.thread

bb.bl:                                            ; preds = %bb.bj
  %i.ew = load ptr, ptr %i.cf, align 8, !tbaa !161
  %.not236 = icmp eq ptr %i.ew, null
  br i1 %.not236, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  %i.ex = load i64, ptr %i.ek, align 1
  %i.ey = and i64 %i.ex, 536870912
  %.not237 = icmp eq i64 %i.ey, 0
  br i1 %.not237, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 4504
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !85 ; 2 uses
  %.not238 = icmp eq ptr %i.fa, null
  br i1 %.not238, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !87
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %2, ptr noundef nonnull @.str.11) #11
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bm
  %i.fe = load ptr, ptr %0, align 8, !tbaa !84
  %i.ff = tail call i32 @SSL_CTX_set_cipher_list(ptr noundef %i.fe, ptr noundef nonnull @.str.12) #11
  %.not239 = icmp eq i32 %i.ff, 0
  br i1 %.not239, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %2, ptr noundef nonnull @.str.13) #11
  br label %ossl_init_method.exit.thread

bb.bs:                                            ; preds = %bb.bq, %bb.bl, %bb.bc, %bb.bb
  %i.fg = load ptr, ptr %0, align 8, !tbaa !84
  tail call void @SSL_CTX_set_verify(ptr noundef %i.fg, i32 noundef 0, ptr noundef null) #11
  %i.fh = tail call zeroext i1 @Curl_tls_keylog_enabled() #11
  br i1 %i.fh, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.fi = load ptr, ptr %0, align 8, !tbaa !84
  tail call void @SSL_CTX_set_keylog_callback(ptr noundef %i.fi, ptr noundef nonnull @ossl_keylog_callback) #11
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.not240 = icmp eq ptr %7, null
  br i1 %.not240, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fj = load ptr, ptr %0, align 8, !tbaa !84
  %i.fk = tail call i64 @SSL_CTX_ctrl(ptr noundef %i.fj, i32 noundef 44, i64 noundef 769, ptr noundef null) #11 ; 0 uses
  %i.fl = load ptr, ptr %0, align 8, !tbaa !84
  tail call void @SSL_CTX_sess_set_new_cb(ptr noundef %i.fl, ptr noundef nonnull %7) #11
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 976 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !171
  %.not241 = icmp eq ptr %i.fn, null
  br i1 %.not241, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.fp = load i8, ptr %i.fo, align 8
  %i.fq = and i8 %i.fp, 1
  %.not242 = icmp eq i8 %i.fq, 0
  br i1 %.not242, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.fr = tail call i32 @Curl_ssl_setup_x509_store(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %0) ; 2 uses
  %.not243 = icmp eq i32 %i.fr, 0
  br i1 %.not243, label %bb.bz, label %ossl_init_method.exit.thread

bb.bz:                                            ; preds = %bb.by
  %i.fs = load i8, ptr %i.fo, align 8
  %i.ft = or i8 %i.fs, 1
  store i8 %i.ft, ptr %i.fo, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bx
  tail call void @Curl_set_in_callback(ptr noundef nonnull %2, i1 noundef zeroext true) #11
  %i.fu = load ptr, ptr %i.fm, align 8, !tbaa !171
  %i.fv = load ptr, ptr %0, align 8, !tbaa !84
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 984
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !172
  %i.fy = tail call i32 %i.fu(ptr noundef nonnull %2, ptr noundef %i.fv, ptr noundef %i.fx) #11 ; 2 uses
  tail call void @Curl_set_in_callback(ptr noundef nonnull %2, i1 noundef zeroext false) #11
  %.not244 = icmp eq i32 %i.fy, 0
  br i1 %.not244, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %2, ptr noundef nonnull @.str.14) #11
  br label %ossl_init_method.exit.thread

bb.cc:                                            ; preds = %bb.ca, %bb.bw
  %i.fz = tail call fastcc i32 @ossl_init_ssl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %8, ptr noundef %9)
  br label %ossl_init_method.exit.thread

ossl_init_method.exit.thread:                     ; preds = %bb.ad, %bb.bk, %bb.br, %bb.bi, %bb.ag, %bb.af, %bb.p, %bb.m, %bb.j, %bb.i, %bb.k, %bb.o, %ossl_seed.exit, %bb.by, %.critedge248, %.critedge246, %bb.aw, %.critedge, %bb.y, %bb.cc, %bb.cb, %bb.ai, %ossl_strerror.exit
  %.4 = phi i32 [ 27, %ossl_strerror.exit ], [ 35, %ossl_seed.exit ], [ %i.fr, %bb.by ], [ 43, %bb.bi ], [ %i.ay, %bb.y ], [ 59, %bb.br ], [ 35, %bb.p ], [ %i.fy, %bb.cb ], [ %i.fz, %bb.cc ], [ %i.du, %bb.aw ], [ 35, %bb.ag ], [ 59, %.critedge248 ], [ 59, %.critedge246 ], [ 59, %.critedge ], [ 59, %bb.ai ], [ 4, %bb.ad ], [ 35, %bb.o ], [ 35, %bb.m ], [ 4, %bb.j ], [ 4, %bb.i ], [ 35, %bb.k ], [ 35, %bb.af ], [ 43, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.4
}

declare ptr @SSL_CTX_new_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SSL_CTX_new(ptr noundef) local_unnamed_addr #2

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef nonnull ptr @ossl_strerror(i64 noundef %0, ptr noundef nonnull initializes((0, 1)) %1, i64 noundef range(i64 256, 1025) %2) unnamed_addr #0 {
bb.a:
  store i8 0, ptr %1, align 1, !tbaa !105
  %i.a = tail call ptr @OpenSSL_version(i32 noundef 6) #11
  %i.b = tail call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef %i.a) #11
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
  %i.k = select i1 %.not23, ptr @.str.46, ptr @.str.45
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114  ; 4 uses
  %.not53 = icmp eq ptr %i.f, null
  br i1 %.not53, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 552
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106
  %.not54 = icmp eq ptr %i.h, null
  br i1 %.not54, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not55 = icmp eq i32 %0, 0                     ; 2 uses
  %or.cond = icmp ugt i32 %0, 1
  br i1 %or.cond, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %switch.tableidx = add i32 %1, -768             ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx, 5
  br i1 %i.i, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.52, i32 noundef %1) #11 ; 0 uses
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
  %.046 = phi ptr [ @.str.54, %bb.h ], [ @.str.64, %bb.i ] ; 3 uses
  switch i32 %2, label %tls_rt_type.exit.thread [
    i32 20, label %tls_rt_type.exit.thread61
    i32 21, label %tls_rt_type.exit.thread64
  ]

tls_rt_type.exit.thread61:                        ; preds = %bb.i, %tls_rt_type.exit
  %.04663 = phi ptr [ %.046, %tls_rt_type.exit ], [ @.str.60, %bb.i ] ; 2 uses
  %.not57 = icmp eq i64 %4, 0
  br i1 %.not57, label %bb.n, label %bb.k

bb.k:                                             ; preds = %tls_rt_type.exit.thread61
  %i.r = load i8, ptr %3, align 1, !tbaa !105
  %i.s = zext i8 %i.r to i32
  br label %bb.n

tls_rt_type.exit.thread64:                        ; preds = %bb.i, %tls_rt_type.exit
  %.04666 = phi ptr [ %.046, %tls_rt_type.exit ], [ @.str.61, %bb.i ] ; 2 uses
  %i.t = icmp ugt i64 %4, 1
  br i1 %i.t, label %bb.l, label %bb.n

bb.l:                                             ; preds = %tls_rt_type.exit.thread64
  %i.u = load i8, ptr %3, align 1, !tbaa !105
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !105
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z              ; 2 uses
  %i.ab = call ptr @SSL_alert_desc_string_long(i32 noundef %i.aa) #11
  br label %bb.n

tls_rt_type.exit.thread:                          ; preds = %bb.i, %bb.j, %tls_rt_type.exit
  %.04660.a = phi ptr [ %.046, %tls_rt_type.exit ], [ @.str.63, %bb.j ], [ @.str.62, %bb.i ] ; 2 uses
  %.not56 = icmp eq i64 %4, 0
  br i1 %.not56, label %bb.n, label %bb.m

bb.m:                                             ; preds = %tls_rt_type.exit.thread
  %i.ac = load i8, ptr %3, align 1, !tbaa !105
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = call fastcc ptr @ssl_msg_type(i32 noundef %i.o, i32 noundef %i.ad)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %tls_rt_type.exit.thread64, %bb.m, %tls_rt_type.exit.thread, %tls_rt_type.exit.thread61, %bb.k
  %.04659 = phi ptr [ %.04663, %bb.k ], [ %.04663, %tls_rt_type.exit.thread61 ], [ %.04666, %bb.l ], [ %.04666, %tls_rt_type.exit.thread64 ], [ %.04660.a, %bb.m ], [ %.04660.a, %tls_rt_type.exit.thread ]
  %.047 = phi ptr [ @.str.55, %bb.k ], [ @.str.53, %tls_rt_type.exit.thread61 ], [ %i.ab, %bb.l ], [ @.str.53, %tls_rt_type.exit.thread64 ], [ %i.ae, %bb.m ], [ @.str.53, %tls_rt_type.exit.thread ]
  %.0 = phi i32 [ %i.s, %bb.k ], [ 0, %tls_rt_type.exit.thread61 ], [ %i.aa, %bb.l ], [ 0, %tls_rt_type.exit.thread64 ], [ %i.ad, %bb.m ], [ 0, %tls_rt_type.exit.thread ]
  %i.af = select i1 %.not55, ptr @.str.58, ptr @.str.57
  %i.ag = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef nonnull @.str.56, ptr noundef nonnull %.048, ptr noundef nonnull %i.af, ptr noundef %.04659, ptr noundef %.047, i32 noundef %.0) #11
  %i.ah = sext i32 %i.ag to i64
  call void @Curl_debug(ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef nonnull %i.b, i64 noundef %i.ah) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  %i.ai = select i1 %.not55, i32 5, i32 6
  call void @Curl_debug(ptr noundef nonnull %i.f, i32 noundef %i.ai, ptr noundef %3, i64 noundef %4) #11
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
  %i.j = tail call i32 @curl_strequal(ptr noundef nonnull %4, ptr noundef nonnull @.str.90) #11
  %.not9.i = icmp eq i32 %i.j, 0
  br i1 %.not9.i, label %bb.d, label %ossl_do_file_type.exit

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @curl_strequal(ptr noundef nonnull %4, ptr noundef nonnull @.str.95) #11
  %.not10.i = icmp eq i32 %i.k, 0
  br i1 %.not10.i, label %bb.e, label %ossl_do_file_type.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @curl_strequal(ptr noundef nonnull %4, ptr noundef nonnull @.str.96) #11
  %.not11.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i, label %bb.f, label %ossl_do_file_type.exit

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @curl_strequal(ptr noundef nonnull %4, ptr noundef nonnull @.str.97) #11
  %.not12.i = icmp eq i32 %i.m, 0
  br i1 %.not12.i, label %bb.g, label %ossl_do_file_type.exit

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @curl_strequal(ptr noundef nonnull %4, ptr noundef nonnull @.str.98) #11
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
  br i1 %.not31.i, label %bb.q, label %.preheader.i, !llvm.loop !173

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
  %i.ah = select i1 %i.p, ptr @.str.85, ptr %2
  %i.ai = tail call i64 @ERR_get_error() #11      ; 2 uses
  store i8 0, ptr %i.h, align 16, !tbaa !105
  %i.aj = tail call ptr @OpenSSL_version(i32 noundef 6) #11
  %i.ak = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.h, i64 noundef 256, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef %i.aj) #11 ; 2 uses
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
  %i.ar = load i8, ptr %.0.i138, align 1, !tbaa !105
  %.not.i139 = icmp eq i8 %i.ar, 0
  br i1 %.not.i139, label %bb.x, label %ossl_strerror.exit

bb.x:                                             ; preds = %bb.w
  %.not23.i = icmp eq i64 %i.ai, 0                ; 2 uses
  %i.as = select i1 %.not23.i, ptr @.str.46, ptr @.str.45
  %i.at = select i1 %.not23.i, i64 8, i64 13
  call void @curlx_strcopy(ptr noundef nonnull %.0.i138, i64 noundef %.021.i, ptr noundef nonnull %i.as, i64 noundef %i.at) #11
  br label %ossl_strerror.exit
end_hunk_0
