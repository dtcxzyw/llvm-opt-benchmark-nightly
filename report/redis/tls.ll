inline.NumInlined: 33
inline.NumDeleted: 14
begin_hunk_0_@tlsConfigure:bb.a
  %i.bz = call i32 @fclose(ptr noundef nonnull %i.bk) ; 0 uses
  br label %.thread93

bb.an:                                            ; preds = %bb.aj
  call void @OSSL_DECODER_CTX_free(ptr noundef nonnull %i.br) #16
  %i.ca = call i32 @fclose(ptr noundef nonnull %i.bk) ; 0 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.cc = call i32 @SSL_CTX_set0_tmp_dh_pkey(ptr noundef nonnull %i.aq, ptr noundef %i.cb) #16
  %i.cd = icmp slt i32 %i.cc, 1
  br i1 %i.cd, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ce = call i64 @ERR_get_error() #16
  call void @ERR_error_string_n(i64 noundef %i.ce, ptr noundef nonnull %i.b, i64 noundef 256) #16
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !23
  %i.cg = icmp sgt i32 %i.cf, 3
  br i1 %i.cg, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ch = load ptr, ptr %i.bi, align 8, !tbaa !68
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.15, ptr noundef %i.ch, ptr noundef nonnull %i.b) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !69
  call void @EVP_PKEY_free(ptr noundef %i.ci) #16
  br label %.thread93

.thread93:                                        ; preds = %bb.aq, %bb.ai, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.thread

bb.ar:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.at

bb.as:                                            ; preds = %bb.ab
  %i.cj = call i64 @SSL_CTX_ctrl(ptr noundef nonnull %i.aq, i32 noundef 118, i64 noundef 1, ptr noundef null) #16 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !71
  %.not77 = icmp eq ptr %i.cl, null
  br i1 %.not77, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !72
  %.not78 = icmp eq ptr %i.cn, null
  br i1 %.not78, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.co = call fastcc ptr @createSSLContext(ptr noundef nonnull %0, i32 noundef %.1.i85, i32 noundef 1) ; 2 uses
  %.not79 = icmp eq ptr %i.co, null
  br i1 %.not79, label %.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.056 = phi ptr [ %i.co, %bb.av ], [ null, %bb.au ], [ null, %bb.at ]
  %i.cp = load ptr, ptr @redis_tls_ctx, align 8, !tbaa !53
  call void @SSL_CTX_free(ptr noundef %i.cp) #16
  %i.cq = load ptr, ptr @redis_tls_client_ctx, align 8, !tbaa !53
  call void @SSL_CTX_free(ptr noundef %i.cq) #16
  store ptr %i.aq, ptr @redis_tls_ctx, align 8, !tbaa !53
  store ptr %.056, ptr @redis_tls_client_ctx, align 8, !tbaa !53
  br label %.thread96

.thread:                                          ; preds = %bb.ae, %bb.ad, %bb.av, %.thread93
  call void @SSL_CTX_free(ptr noundef nonnull %i.aq) #16
  br label %.thread96

.thread96:                                        ; preds = %parseProtocolsConfig.exit.thread87, %parseProtocolsConfig.exit.thread, %bb.d, %bb.c, %bb.g, %bb.f, %bb.l, %bb.k, %parseProtocolsConfig.exit.thread83, %.thread, %bb.a, %bb.aw
  %.0 = phi i32 [ 0, %bb.aw ], [ 0, %bb.a ], [ -1, %.thread ], [ -1, %parseProtocolsConfig.exit.thread87 ], [ -1, %parseProtocolsConfig.exit.thread83 ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %parseProtocolsConfig.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @tlsEventHandler(ptr readnone captures(none) %0, i32 %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  tail call fastcc void @tlsHandleEvent(ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tlsAcceptHandler(ptr noundef %0, i32 noundef %1, ptr readnone captures(none) %2, i32 %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [46 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6648), align 8, !tbaa !73 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.in = phi i32 [ %i.d, %.backedge ], [ %i.c, %bb.a ]
  %i.d = add nsw i32 %.in, -1                     ; 2 uses
  %i.e = call i32 @anetTcpAccept(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 1624), i32 noundef %1, ptr noundef nonnull %i.b, i64 noundef 46, ptr noundef nonnull %i.a) #16 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @__errno_location() #18    ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = call i32 @anetAcceptFailureNeedsRetry(i32 noundef %i.h) #16
  %.not6 = icmp eq i32 %i.i, 0
  br i1 %.not6, label %bb.c, label %.backedge

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.g, align 4, !tbaa !9
  %i.k = icmp eq i32 %i.j, 11
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.m = icmp sgt i32 %i.l, 3
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.31, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 1624)) #16
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !23
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.a, align 4, !tbaa !9
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.b, i32 noundef %i.p) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.q = call ptr @connCreateAcceptedTLS(ptr noundef %0, i32 noundef %i.e, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 8496))
  call void @acceptCommonHandler(ptr noundef %i.q, i32 noundef 0, ptr noundef nonnull %i.b) #16
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.b
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !74

.loopexit:                                        ; preds = %.backedge, %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @connTLSAddr(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75
  %i.c = tail call i32 @anetFdToString(i32 noundef %i.b, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #16
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @connTLSIsLocal(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @connectionTypeTcp() #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = tail call i32 %i.c(ptr noundef %0) #16
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @connTLSListen(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @listenToPort(ptr noundef %0) #16
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @connCreateTLS(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @redis_tls_ctx, align 8, !tbaa !53
  %i.b = load ptr, ptr @redis_tls_client_ctx, align 8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select.i = select i1 %.not, ptr %i.a, ptr %i.b
  %i.c = tail call noalias dereferenceable_or_null(104) ptr @zcalloc(i64 noundef 104) #19, !inline_history !78 ; 6 uses
  store ptr @CT_TLS, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -1, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 1024, ptr %i.f, align 8, !tbaa !82
  %i.g = tail call ptr @SSL_new(ptr noundef %spec.select.i) #16, !inline_history !78
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.g, ptr %i.h, align 8, !tbaa !13
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @connCreateAcceptedTLS(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.b = load ptr, ptr @redis_tls_ctx, align 8, !tbaa !53
  %i.c = tail call noalias dereferenceable_or_null(104) ptr @zcalloc(i64 noundef 104) #19, !inline_history !78 ; 9 uses
  store ptr @CT_TLS, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 1024, ptr %i.f, align 8, !tbaa !82
  %i.g = tail call ptr @SSL_new(ptr noundef %i.b) #16, !inline_history !78 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %i.g, ptr %i.h, align 8, !tbaa !13
  store i32 %1, ptr %i.d, align 8, !tbaa !80
  store ptr %0, ptr %i.e, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 2, ptr %i.i, align 8, !tbaa !83
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %updateTLSError.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @zfree(ptr noundef nonnull %i.l) #16
  br label %updateTLSError.exit

updateTLSError.exit:                              ; preds = %bb.b, %bb.c
  %i.m = tail call noalias dereferenceable_or_null(512) ptr @zmalloc(i64 noundef 512) #19 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !85
  %i.n = tail call i64 @ERR_get_error() #16
  tail call void @ERR_error_string_n(i64 noundef %i.n, ptr noundef %i.m, i64 noundef 512) #16
  store i32 5, ptr %i.i, align 8, !tbaa !83
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %switch.selectcmp = icmp eq i32 %i.a, 2
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 3
  %switch.selectcmp20 = icmp eq i32 %i.a, 0
  %switch.select21 = select i1 %switch.selectcmp20, i32 0, i32 %switch.select
  tail call void @SSL_set_verify(ptr noundef nonnull %i.g, i32 noundef %switch.select21, ptr noundef null) #16
  %i.o = tail call i32 @SSL_set_fd(ptr noundef nonnull %i.g, i32 noundef %1) #16 ; 0 uses
  tail call void @SSL_set_accept_state(ptr noundef nonnull %i.g) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %updateTLSError.exit
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal void @connTLSShutdown(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !83
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @SSL_shutdown(ptr noundef nonnull %i.b) #16 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  tail call void @SSL_free(ptr noundef %i.g) #16
  store ptr null, ptr %i.a, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = tail call ptr @connectionTypeTcp() #16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  tail call void %i.j(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @connTLSClose(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !83
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @SSL_shutdown(ptr noundef nonnull %i.b) #16 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  tail call void @SSL_free(ptr noundef %i.g) #16
  store ptr null, ptr %i.a, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85   ; 2 uses
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @zfree(ptr noundef nonnull %i.i) #16
  store ptr null, ptr %i.h, align 8, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87   ; 2 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88
  tail call void @listDelNode(ptr noundef %i.o, ptr noundef nonnull %i.k) #16
  store ptr null, ptr %i.j, align 8, !tbaa !87
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = tail call ptr @connectionTypeTcp() #16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89
  tail call void %i.r(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @connTLSConnect(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_clear_error() #16
  %i.d = call i32 @inet_pton(i32 noundef 2, ptr noundef %1, ptr noundef nonnull %i.a) #16
  %.not11 = icmp eq i32 %i.d, 1
  br i1 %.not11, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @inet_pton(i32 noundef 10, ptr noundef %1, ptr noundef nonnull %i.a) #16
  %.not12 = icmp eq i32 %i.e, 1
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = call i64 @SSL_ctrl(ptr noundef %i.g, i32 noundef 55, i64 noundef 0, ptr noundef %1) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = call ptr @connectionTypeTcp() #16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.l = call i32 %i.k(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #16
  %i.m = icmp eq i32 %i.l, -1
  %. = sext i1 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %., %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @connTLSBlockingConnect(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @connectionTypeTcp() #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #16
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80
  %i.l = tail call i32 @SSL_set_fd(ptr noundef %i.i, i32 noundef %i.k) #16 ; 0 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !80
  %i.n = tail call i32 @anetBlock(ptr noundef null, i32 noundef %i.m) #16 ; 0 uses
  %i.o = load i32, ptr %i.j, align 8, !tbaa !80
  %i.p = tail call i32 @anetSendTimeout(ptr noundef null, i32 noundef %i.o, i64 noundef %3) #16 ; 0 uses
  %i.q = load i32, ptr %i.j, align 8, !tbaa !80
  %i.r = tail call i32 @anetRecvTimeout(ptr noundef null, i32 noundef %i.q, i64 noundef %3) #16 ; 0 uses
  tail call void @ERR_clear_error() #16
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.t = tail call i32 @SSL_connect(ptr noundef %i.s) #16
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.j, align 8, !tbaa !80
  %i.w = tail call i32 @anetNonBlock(ptr noundef null, i32 noundef %i.v) #16 ; 0 uses
  %i.x = load i32, ptr %i.j, align 8, !tbaa !80
  %i.y = tail call i32 @anetSendTimeout(ptr noundef null, i32 noundef %i.x, i64 noundef 0) #16 ; 0 uses
  %i.z = load i32, ptr %i.j, align 8, !tbaa !80
  %i.aa = tail call i32 @anetRecvTimeout(ptr noundef null, i32 noundef %i.z, i64 noundef 0) #16 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ 3, %bb.d ], [ 5, %bb.c ]
  %.0.ph = phi i32 [ 0, %bb.d ], [ -1, %bb.c ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !83
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @connTLSAccept(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83
end_hunk_0
