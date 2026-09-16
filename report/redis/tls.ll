Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/tls?download=true
inline.NumInlined: 33
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@connTLSSyncReadLine:bb.a
  %.not26 = icmp eq i64 %.02046, 0
  br i1 %.not26, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds i8, ptr %.02445, i64 -1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !112
  %i.ad = icmp eq i8 %i.ac, 13
  br i1 %i.ad, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.ab, align 1, !tbaa !112
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.n, %bb.m, %bb.c, %bb.l
  %.1.ph = phi i64 [ 0, %bb.m ], [ %.02046, %bb.n ], [ %.02046, %bb.o ], [ -1, %bb.c ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.loopexit

bb.p:                                             ; preds = %updateStateAfterSSLIO.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.02445, i64 1 ; 2 uses
  store i8 %i.z, ptr %.02445, align 1, !tbaa !112
  store i8 0, ptr %i.ae, align 1, !tbaa !112
  %i.af = add nuw nsw i64 %.02046, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.022 = add nsw i64 %.02247, -1                 ; 2 uses
  %.not = icmp eq i64 %.022, 0
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.p, %bb.a, %.thread
  %.2 = phi i64 [ %.1.ph, %.thread ], [ 0, %bb.a ], [ %.02243, %bb.p ]
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !64
  %i.ah = call i32 @anetNonBlock(ptr noundef null, i32 noundef %i.ag) #16 ; 0 uses
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !64
  %i.aj = call i32 @anetSendTimeout(ptr noundef null, i32 noundef %i.ai, i64 noundef 0) #16 ; 0 uses
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !64
  %i.al = call i32 @anetRecvTimeout(ptr noundef null, i32 noundef %i.ak, i64 noundef 0) #16 ; 0 uses
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal void @connTLSUnbindEventLoop(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64
  %i.e = tail call i32 @aeGetFileEvents(ptr noundef nonnull %i.b, i32 noundef %i.d) #16 ; 2 uses
  %i.f = and i32 %i.e, 1
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.h = load i32, ptr %i.c, align 8, !tbaa !64
  tail call void @aeDeleteFileEvent(ptr noundef %i.g, i32 noundef %i.h, i32 noundef 1) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = and i32 %i.e, 2
  %.not13 = icmp eq i32 %i.i, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.k = load i32, ptr %i.c, align 8, !tbaa !64
  tail call void @aeDeleteFileEvent(ptr noundef %i.j, i32 noundef %i.k, i32 noundef 2) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70   ; 2 uses
  %.not14 = icmp eq ptr %i.m, null
  br i1 %.not14, label %bb.g, label %tlsPendingRemove.exit

tlsPendingRemove.exit:                            ; preds = %bb.f
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  tail call void @listDelNode(ptr noundef %i.p, ptr noundef nonnull %i.m) #16
  store ptr null, ptr %i.l, align 8, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %tlsPendingRemove.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @connTLSRebindEventLoop(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %bb.c, label %.critedge, !prof !113

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %bb.d, label %.critedge, !prof !113

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %.not13 = icmp eq ptr %i.h, null
  br i1 %.not13, label %bb.e, label %.critedge, !prof !113

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29, i32 noundef 959) #16
  tail call void @abort() #20
  unreachable

bb.e:                                             ; preds = %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !65
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %tlsPendingAdd.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = tail call i32 @SSL_pending(ptr noundef %i.j) #16
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %tlsPendingAdd.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @listCreate() #16
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store ptr %i.o, ptr %i.q, align 8, !tbaa !71
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !70
  %.not8.i = icmp eq ptr %i.r, null
  br i1 %.not8.i, label %bb.j, label %tlsPendingAdd.exit

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71   ; 2 uses
  %i.v = tail call ptr @listAddNodeTail(ptr noundef %i.u, ptr noundef nonnull %0) #16 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  store ptr %i.x, ptr %i.g, align 8, !tbaa !70
  br label %tlsPendingAdd.exit

tlsPendingAdd.exit:                               ; preds = %bb.j, %bb.i, %bb.f, %bb.e
  tail call fastcc void @updateSSLEvent(ptr noundef nonnull %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @tlsHasPendingData(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !82
  %i.e = icmp ne i64 %i.d, 0
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @tlsProcessPendingData(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !82
  %2 = trunc i64 %i.d to i32                      ; 2 uses
  call void @listRewind(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #16
  %i.e = call ptr @listNext(ptr noundef nonnull %1) #16 ; 2 uses
  %.not910 = icmp eq ptr %i.e, null
  br i1 %.not910, label %.loopexit.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.f = phi ptr [ %i.i, %.lr.ph ], [ %i.e, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !116
  call fastcc void @tlsHandleEvent(ptr noundef %i.h, i32 noundef 1)
  %i.i = call ptr @listNext(ptr noundef nonnull %1) #16 ; 2 uses
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %.loopexit.a, label %.lr.ph, !llvm.loop !114

.loopexit.a:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %2, %bb.b ], [ %2, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @connTLSGetPeerCert(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !76
  %i.c = tail call ptr @connectionTypeTls() #16
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %.not18 = icmp eq ptr %i.e, null
  br i1 %.not18, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @SSL_get1_peer_certificate(ptr noundef nonnull %i.e) #16 ; 2 uses
  %.not19 = icmp eq ptr %i.f, null
  br i1 %.not19, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @BIO_s_mem() #16
  %i.h = tail call ptr @BIO_new(ptr noundef %i.g) #16 ; 5 uses
  %cond = icmp eq ptr %i.h, null
  br i1 %cond, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @PEM_write_bio_X509(ptr noundef nonnull %i.h, ptr noundef nonnull %i.f) #16
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @BIO_free(ptr noundef nonnull %i.h) #16 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.k = call i64 @BIO_ctrl(ptr noundef nonnull %i.h, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.a) #16
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.m = call ptr @sdsnewlen(ptr noundef %i.l, i64 noundef %i.k) #16
  %i.n = call i32 @BIO_free(ptr noundef nonnull %i.h) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.f, %bb.g, %bb.a, %bb.b
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ %i.m, %bb.g ], [ null, %bb.d ], [ null, %bb.f ]
  ret ptr %.2
}

declare i32 @OPENSSL_init_crypto(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RAND_poll() local_unnamed_addr #2

declare void @SSL_CTX_free(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanup() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @createSSLContext(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, -1) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  %.not = icmp eq i32 %2, 0                       ; 3 uses
  %.in.idx = select i1 %.not, i64 0, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.idx
  %i.b = load ptr, ptr %.in, align 8, !tbaa !60   ; 2 uses
  %.in51.v = select i1 %.not, i64 8, i64 32
  %.in51 = getelementptr inbounds nuw i8, ptr %0, i64 %.in51.v
  %i.c = load ptr, ptr %.in51, align 8, !tbaa !60 ; 2 uses
  %.in52.v = select i1 %.not, i64 16, i64 40
  %.in52 = getelementptr inbounds nuw i8, ptr %0, i64 %.in52.v
  %i.d = load ptr, ptr %.in52, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.e = tail call ptr @TLS_method() #16
  %i.f = tail call ptr @SSL_CTX_new(ptr noundef %i.e) #16 ; 20 uses
  %.not53 = icmp eq ptr %i.f, null
  br i1 %.not53, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @SSL_CTX_set_options(ptr noundef nonnull %i.f, i64 noundef 33554432) #16 ; 0 uses
  %i.h = tail call i64 @SSL_CTX_set_options(ptr noundef nonnull %i.f, i64 noundef 2048) #16 ; 0 uses
  %i.i = and i32 %1, 1
  %.not54 = icmp eq i32 %i.i, 0
  br i1 %.not54, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @SSL_CTX_set_options(ptr noundef nonnull %i.f, i64 noundef 67108864) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = and i32 %1, 2
  %.not55 = icmp eq i32 %i.k, 0
  br i1 %.not55, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i64 @SSL_CTX_set_options(ptr noundef nonnull %i.f, i64 noundef 268435456) #16 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = and i32 %1, 4
  %.not56 = icmp eq i32 %i.m, 0
  br i1 %.not56, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i64 @SSL_CTX_set_options(ptr noundef nonnull %i.f, i64 noundef 134217728) #16 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = and i32 %1, 8
  %.not57 = icmp eq i32 %i.o, 0
  br i1 %.not57, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i64 @SSL_CTX_set_options(ptr noundef nonnull %i.f, i64 noundef 536870912) #16 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = tail call i64 @SSL_CTX_set_options(ptr noundef nonnull %i.f, i64 noundef 131072) #16 ; 0 uses
  %i.r = tail call i64 @SSL_CTX_ctrl(ptr noundef nonnull %i.f, i32 noundef 33, i64 noundef 3, ptr noundef null) #16 ; 0 uses
  tail call void @SSL_CTX_set_verify(ptr noundef nonnull %i.f, i32 noundef 3, ptr noundef null) #16
  tail call void @SSL_CTX_set_default_passwd_cb(ptr noundef nonnull %i.f, ptr noundef nonnull @tlsPasswordCallback) #16
  tail call void @SSL_CTX_set_default_passwd_cb_userdata(ptr noundef nonnull %i.f, ptr noundef %i.d) #16
  %i.s = tail call i32 @SSL_CTX_use_certificate_chain_file(ptr noundef nonnull %i.f, ptr noundef %i.b) #16
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i64 @ERR_get_error() #16
  call void @ERR_error_string_n(i64 noundef %i.u, ptr noundef nonnull %i.a, i64 noundef 256) #16
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.w = icmp sgt i32 %i.v, 3
  br i1 %i.w, label %bb.aa, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.23, ptr noundef %i.b, ptr noundef nonnull %i.a) #16
  br label %bb.aa

bb.m:                                             ; preds = %bb.j
  %i.x = tail call i32 @SSL_CTX_use_PrivateKey_file(ptr noundef nonnull %i.f, ptr noundef %i.c, i32 noundef 1) #16
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i64 @ERR_get_error() #16
  call void @ERR_error_string_n(i64 noundef %i.z, ptr noundef nonnull %i.a, i64 noundef 256) #16
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.24, ptr noundef %i.c, ptr noundef nonnull %i.a) #16
  br label %bb.aa

bb.p:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %.not58 = icmp eq ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !59 ; 2 uses
  %.not59 = icmp eq ptr %i.af, null
  %or.cond = select i1 %.not58, i1 %.not59, i1 false
  br i1 %or.cond, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %i.ag = tail call i32 @SSL_CTX_load_verify_locations(ptr noundef nonnull %i.f, ptr noundef %i.ad, ptr noundef %i.af) #16
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge
  %i.ai = tail call i64 @ERR_get_error() #16
  call void @ERR_error_string_n(i64 noundef %i.ai, ptr noundef nonnull %i.a, i64 noundef 256) #16
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.ak = icmp sgt i32 %i.aj, 3
  br i1 %i.ak, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.a) #16
  br label %bb.aa

bb.s:                                             ; preds = %bb.p, %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !117 ; 2 uses
  %.not60 = icmp eq ptr %i.am, null
  br i1 %.not60, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = tail call i32 @SSL_CTX_set_cipher_list(ptr noundef nonnull %i.f, ptr noundef nonnull %i.am) #16
  %.not61 = icmp eq i32 %i.an, 0
  br i1 %.not61, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !55
  %i.ap = icmp sgt i32 %i.ao, 3
  br i1 %i.ap, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !117
end_hunk_0
