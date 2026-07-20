inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0_@redisCreateSSLContextWithOptions:bb.a
  %i.n = tail call ptr @SSL_CTX_new(ptr noundef %i.m) #7 ; 3 uses
  store ptr %i.n, ptr %i.k, align 8, !tbaa !18
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not55 = icmp eq ptr %1, null
  br i1 %.not55, label %bb.s, label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.o = tail call i64 @SSL_CTX_ctrl(ptr noundef nonnull %i.n, i32 noundef 123, i64 noundef 771, ptr noundef null) #7 ; 0 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25
  tail call void @SSL_CTX_set_verify(ptr noundef %i.p, i32 noundef %i.r, ptr noundef null) #7
  %i.s = icmp ne ptr %i.e, null                   ; 2 uses
  %i.t = icmp eq ptr %i.g, null
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ne ptr %i.g, null
  %i.v = icmp eq ptr %i.e, null
  %or.cond3 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not65 = icmp eq ptr %1, null
  br i1 %.not65, label %bb.s, label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ne ptr %i.c, null
  %i.x = icmp ne ptr %i.a, null
  %or.cond5 = select i1 %i.w, i1 true, i1 %i.x
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  br i1 %or.cond5, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i32 @SSL_CTX_load_verify_locations(ptr noundef %i.y, ptr noundef %i.a, ptr noundef %i.c) #7
  %.not58 = icmp eq i32 %i.z, 0
  br i1 %.not58, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not59 = icmp eq ptr %1, null
  br i1 %.not59, label %bb.s, label %.sink.split

bb.j:                                             ; preds = %bb.g
  %i.aa = tail call i32 @SSL_CTX_set_default_verify_paths(ptr noundef %i.y) #7
  %.not56 = icmp eq i32 %i.aa, 0
  br i1 %.not56, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not57 = icmp eq ptr %1, null
  br i1 %.not57, label %bb.s, label %.sink.split

bb.l:                                             ; preds = %bb.j, %bb.h
  br i1 %i.s, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ac = tail call i32 @SSL_CTX_use_certificate_chain_file(ptr noundef %i.ab, ptr noundef nonnull %i.e) #7
  %.not60 = icmp eq i32 %i.ac, 0
  br i1 %.not60, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not61 = icmp eq ptr %1, null
  br i1 %.not61, label %bb.s, label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ae = tail call i32 @SSL_CTX_use_PrivateKey_file(ptr noundef %i.ad, ptr noundef %i.g, i32 noundef 1) #7
  %.not62 = icmp eq i32 %i.ae, 0
  br i1 %.not62, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not63 = icmp eq ptr %1, null
  br i1 %.not63, label %bb.s, label %.sink.split

bb.q:                                             ; preds = %bb.o, %bb.l
  %.not64 = icmp eq ptr %i.i, null
  br i1 %.not64, label %redisFreeSSLContext.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 24), align 8, !tbaa !28
  %i.ag = tail call ptr %i.af(ptr noundef nonnull %i.i) #7, !inline_history !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !10
  br label %redisFreeSSLContext.exit

.sink.split:                                      ; preds = %bb.p, %bb.n, %bb.k, %bb.i, %bb.f, %bb.c
  %.sink = phi i32 [ 4, %bb.n ], [ 5, %bb.k ], [ 3, %bb.i ], [ 2, %bb.f ], [ 1, %bb.c ], [ 6, %bb.p ]
  store i32 %.sink, ptr %1, align 4, !tbaa !6
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.p, %bb.n, %bb.k, %bb.i, %bb.f, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !10 ; 2 uses
  %.not10.i = icmp eq ptr %i.aj, null
  br i1 %.not10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !15
  tail call void %i.ak(ptr noundef nonnull %i.aj) #7, !inline_history !30
  store ptr null, ptr %i.ai, align 8, !tbaa !10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !18  ; 2 uses
  %.not11.i = icmp eq ptr %i.al, null
  br i1 %.not11.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @SSL_CTX_free(ptr noundef nonnull %i.al) #7
  store ptr null, ptr %i.k, align 8, !tbaa !18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !15
  tail call void %i.am(ptr noundef nonnull %i.k) #7, !inline_history !30
  br label %redisFreeSSLContext.exit

redisFreeSSLContext.exit:                         ; preds = %bb.w, %bb.a, %bb.q, %bb.r
  %.0 = phi ptr [ %i.k, %bb.q ], [ %i.k, %bb.r ], [ null, %bb.a ], [ null, %bb.w ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @TLS_client_method() local_unnamed_addr #1

declare ptr @SSL_CTX_new(ptr noundef) local_unnamed_addr #1

declare i64 @SSL_CTX_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @SSL_CTX_set_verify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SSL_CTX_load_verify_locations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SSL_CTX_set_default_verify_paths(ptr noundef) local_unnamed_addr #1

declare i32 @SSL_CTX_use_certificate_chain_file(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SSL_CTX_use_PrivateKey_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @redisInitiateSSL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @redisSSLConnect(ptr noundef %0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @redisSSLConnect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.11) #7
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 8), align 8, !tbaa !26
  %i.e = tail call ptr %i.d(i64 noundef 1, i64 noundef 24) #7, !inline_history !27 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @.str.12) #7
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  store ptr @redisContextSSLFuncs, ptr %0, align 8, !tbaa !40
  store ptr %1, ptr %i.e, align 8, !tbaa !41
  %i.g = tail call i64 @SSL_ctrl(ptr noundef %1, i32 noundef 33, i64 noundef 2, ptr noundef null) #7 ; 0 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44
  %i.k = tail call i32 @SSL_set_fd(ptr noundef %i.h, i32 noundef %i.j) #7 ; 0 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !41
  tail call void @SSL_set_connect_state(ptr noundef %i.l) #7
  tail call void @ERR_clear_error() #7
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.n = tail call i32 @SSL_connect(ptr noundef %i.m) #7 ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.e, ptr %i.b, align 8, !tbaa !31
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.q = tail call i32 @SSL_get_error(ptr noundef %i.p, i32 noundef %i.n) #7 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45
  %2 = and i32 %i.s, 1
  %3 = icmp eq i32 %2, 0
  %i.t = and i32 %i.q, -2
  %or.cond = icmp eq i32 %i.t, 2
  %or.cond30 = select i1 %3, i1 %or.cond, i1 false
  br i1 %or.cond30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.e, ptr %i.b, align 8, !tbaa !31
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !46
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.x = icmp eq i32 %i.q, 5
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = tail call ptr @__errno_location() #8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !6
  %i.aa = tail call ptr @strerror(i32 noundef %i.z) #7
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ab = tail call i64 @ERR_peek_last_error() #7
  %i.ac = tail call ptr @ERR_reason_error_string(i64 noundef %i.ab) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink = phi ptr [ %i.ac, %bb.l ], [ %i.aa, %bb.k ]
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 511, ptr noundef nonnull @.str.13, ptr noundef %.sink) #7 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !15
  call void %i.ae(ptr noundef nonnull %i.e) #7, !inline_history !17
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.n, %bb.h, %bb.f, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ -1, %bb.n ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @redisInitiateSSLWithContext(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !18
  %i.f = tail call ptr @SSL_new(ptr noundef %i.e) #7 ; 4 uses
  %.not20 = icmp eq ptr %i.f, null
  br i1 %.not20, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.9) #7
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  %.not21 = icmp eq ptr %i.h, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i64 @SSL_ctrl(ptr noundef nonnull %i.f, i32 noundef 55, i64 noundef 0, ptr noundef nonnull %i.h) #7
  %.not22 = icmp eq i64 %i.i, 0
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = tail call fastcc i32 @redisSSLConnect(ptr noundef nonnull %0, ptr noundef nonnull %i.f)
  %.not23 = icmp eq i32 %i.j, 0
  br i1 %.not23, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.10) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @SSL_free(ptr noundef nonnull %i.f) #7
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.f, %bb.h, %bb.b, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ 0, %bb.f ], [ -1, %bb.h ], [ -1, %.thread ]
  ret i32 %.1
}

declare ptr @SSL_new(ptr noundef) local_unnamed_addr #1

declare void @__redisSetError(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @SSL_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @SSL_free(ptr noundef) local_unnamed_addr #1

declare void @redisNetClose(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @redisSSLFree(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %.not7 = icmp eq ptr %i.a, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SSL_free(ptr noundef nonnull %i.a) #7
  store ptr null, ptr %0, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !15
  tail call void %i.b(ptr noundef nonnull %0) #7, !inline_history !17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @redisSSLAsyncRead(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !55
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.e, align 4, !tbaa !55
  %i.g = call i32 @redisBufferWrite(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #7
  %.not24 = icmp eq i32 %i.g, -1
  br i1 %.not24, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !6
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  %i.k = and i32 %i.j, 2
  %.not.i = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 3 uses
  %.not16.i = icmp eq ptr %i.n, null              ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not16.i, label %refreshTimeout.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 3 uses
  %.not21.i = icmp eq ptr %i.p, null
  br i1 %.not21.i, label %refreshTimeout.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59   ; 2 uses
  %.not22.i = icmp eq i64 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %.not23.i = icmp eq i64 %i.s, 0
  %or.cond.i = select i1 %.not22.i, i1 %.not23.i, i1 false
  br i1 %or.cond.i, label %refreshTimeout.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !61
  call void %i.n(ptr noundef %i.t, i64 %i.q, i64 %i.s) #7, !inline_history !62
  br label %refreshTimeout.exit

bb.h:                                             ; preds = %bb.d
  br i1 %.not16.i, label %refreshTimeout.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63   ; 3 uses
  %.not17.i = icmp eq ptr %i.v, null
  br i1 %.not17.i, label %refreshTimeout.exit, label %bb.j

end_hunk_0
begin_hunk_1_@redisSSLAsyncWrite:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54
  %.not24 = icmp eq i32 %i.i, 0
  br i1 %.not24, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.d, align 4, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66   ; 2 uses
  %.not26 = icmp eq ptr %i.k, null
  br i1 %.not26, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  call void %i.k(ptr noundef %i.m) #7
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56
  %i.p = and i32 %i.o, 2
  %.not.i = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 3 uses
  %.not16.i = icmp eq ptr %i.s, null              ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not16.i, label %refreshTimeout.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58   ; 3 uses
  %.not21.i = icmp eq ptr %i.u, null
  br i1 %.not21.i, label %refreshTimeout.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  %.not22.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %.not23.i = icmp eq i64 %i.x, 0
  %or.cond.i = select i1 %.not22.i, i1 %.not23.i, i1 false
  br i1 %or.cond.i, label %refreshTimeout.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !61
  call void %i.s(ptr noundef %i.y, i64 %i.v, i64 %i.x) #7, !inline_history !62
  br label %refreshTimeout.exit

bb.k:                                             ; preds = %bb.g
  br i1 %.not16.i, label %refreshTimeout.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63  ; 3 uses
  %.not17.i = icmp eq ptr %i.aa, null
  br i1 %.not17.i, label %refreshTimeout.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %.not18.i = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %.not19.i = icmp eq i64 %i.ad, 0
  %or.cond32.i = select i1 %.not18.i, i1 %.not19.i, i1 false
  br i1 %or.cond32.i, label %refreshTimeout.exit, label %._crit_edge24.i

._crit_edge24.i:                                  ; preds = %bb.m
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !61
  call void %i.s(ptr noundef %i.ae, i64 %i.ab, i64 %i.ad) #7, !inline_history !62
  br label %refreshTimeout.exit

refreshTimeout.exit:                              ; preds = %bb.h, %bb.i, %bb.j, %._crit_edge.i, %bb.k, %bb.l, %bb.m, %._crit_edge24.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64 ; 2 uses
  %.not25 = icmp eq ptr %i.ag, null
  br i1 %.not25, label %bb.q, label %bb.n

bb.n:                                             ; preds = %refreshTimeout.exit
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !61
  call void %i.ag(ptr noundef %i.ah) #7
  br label %bb.q

bb.o:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66 ; 2 uses
  %.not27 = icmp eq ptr %i.aj, null
  br i1 %.not27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !61
  call void %i.aj(ptr noundef %i.al) #7
  br label %bb.q

bb.q:                                             ; preds = %refreshTimeout.exit, %bb.n, %bb.e, %bb.f, %bb.p, %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = load i32, ptr %i.am, align 8, !tbaa !56
  %i.ao = and i32 %i.an, 2
  %.not.i29 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !57 ; 3 uses
  %.not16.i30 = icmp eq ptr %i.ar, null           ; 2 uses
  br i1 %.not.i29, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not16.i30, label %refreshTimeout.exit41, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 3 uses
  %.not21.i31 = icmp eq ptr %i.at, null
  br i1 %.not21.i31, label %refreshTimeout.exit41, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = load i64, ptr %i.at, align 8, !tbaa !59 ; 2 uses
  %.not22.i32 = icmp eq i64 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %.not23.i33 = icmp eq i64 %i.aw, 0
  %or.cond.i34 = select i1 %.not22.i32, i1 %.not23.i33, i1 false
  br i1 %or.cond.i34, label %refreshTimeout.exit41, label %._crit_edge.i35

._crit_edge.i35:                                  ; preds = %bb.t
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !61
  call void %i.ar(ptr noundef %i.ax, i64 %i.au, i64 %i.aw) #7, !inline_history !62
  br label %refreshTimeout.exit41

bb.u:                                             ; preds = %bb.q
  br i1 %.not16.i30, label %refreshTimeout.exit41, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63 ; 3 uses
  %.not17.i36 = icmp eq ptr %i.az, null
  br i1 %.not17.i36, label %refreshTimeout.exit41, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59 ; 2 uses
  %.not18.i37 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %.not19.i38 = icmp eq i64 %i.bc, 0
  %or.cond32.i39 = select i1 %.not18.i37, i1 %.not19.i38, i1 false
  br i1 %or.cond32.i39, label %refreshTimeout.exit41, label %._crit_edge24.i40

._crit_edge24.i40:                                ; preds = %bb.w
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !61
  call void %i.ar(ptr noundef %i.bd, i64 %i.ba, i64 %i.bc) #7, !inline_history !62
  br label %refreshTimeout.exit41

refreshTimeout.exit41:                            ; preds = %bb.r, %bb.s, %bb.t, %._crit_edge.i35, %bb.u, %bb.v, %bb.w, %._crit_edge24.i40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !65 ; 2 uses
  %.not28 = icmp eq ptr %i.bf, null
  br i1 %.not28, label %bb.y, label %bb.x

bb.x:                                             ; preds = %refreshTimeout.exit41
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !61
  call void %i.bf(ptr noundef %i.bg) #7
  br label %bb.y

bb.y:                                             ; preds = %refreshTimeout.exit41, %bb.x, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i64 -1, 2147483648) i64 @redisSSLRead(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = trunc i64 %2 to i32
  %i.e = tail call i32 @SSL_read(ptr noundef %i.c, ptr noundef %1, i32 noundef %i.d) #7 ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.e to i64
  br label %maybeCheckWant.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.e, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.14) #7
  br label %maybeCheckWant.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.j = tail call i32 @SSL_get_error(ptr noundef %i.i, i32 noundef %i.e) #7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !45
  %3 = and i32 %i.l, 1
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__errno_location() #8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !6    ; 2 uses
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %maybeCheckWant.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq i32 %i.n, 11
  %spec.store.select = select i1 %i.p, ptr @.str.15, ptr null
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %spec.store.select) #7
  br label %maybeCheckWant.exit.thread

bb.h:                                             ; preds = %bb.e
  switch i32 %i.j, label %maybeCheckWant.exit [
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1, ptr %i.q, align 8, !tbaa !54
  br label %maybeCheckWant.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 1, ptr %i.r, align 4, !tbaa !55
  br label %maybeCheckWant.exit.thread

maybeCheckWant.exit:                              ; preds = %bb.h
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null) #7
  br label %maybeCheckWant.exit.thread

maybeCheckWant.exit.thread:                       ; preds = %bb.j, %bb.i, %bb.g, %maybeCheckWant.exit, %bb.f, %bb.d, %bb.b
  %.1 = phi i64 [ %i.g, %bb.b ], [ -1, %bb.d ], [ -1, %maybeCheckWant.exit ], [ -1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i64 -1, 2147483648) i64 @redisSSLWrite(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68   ; 6 uses
  br i1 %.not, label %bb.b, label %hi_sdslen.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !69
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 7
  switch i32 %i.j, label %hi_sdslen.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = lshr i32 %i.i, 3
  %i.l = zext nneg i32 %i.k to i64
  br label %hi_sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !69
  %i.o = zext i8 %i.n to i64
  br label %hi_sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.q = load i16, ptr %i.p, align 1, !tbaa !70
  %i.r = zext i16 %i.q to i64
  br label %hi_sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -9
  %i.t = load i32, ptr %i.s, align 1, !tbaa !6
  %i.u = zext i32 %i.t to i64
  br label %hi_sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.w = load i64, ptr %i.v, align 1, !tbaa !72
  br label %hi_sdslen.exit

hi_sdslen.exit:                                   ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.x = phi i64 [ 0, %bb.b ], [ %i.w, %bb.g ], [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ %i.u, %bb.f ], [ %i.d, %bb.a ] ; 2 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.z = trunc i64 %i.x to i32
  %i.aa = tail call i32 @SSL_write(ptr noundef %i.y, ptr noundef %i.f, i32 noundef %i.z) #7 ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %hi_sdslen.exit
  store i64 0, ptr %i.c, align 8, !tbaa !67
  br label %bb.n

bb.i:                                             ; preds = %hi_sdslen.exit
  %i.ac = icmp slt i32 %i.aa, 0
  br i1 %i.ac, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  store i64 %i.x, ptr %i.c, align 8, !tbaa !67
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.ae = tail call i32 @SSL_get_error(ptr noundef %i.ad, i32 noundef %i.aa) #7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !45
  %1 = and i32 %i.ag, 1
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb.k, label %maybeCheckWant.exit

bb.k:                                             ; preds = %bb.j
  switch i32 %i.ae, label %maybeCheckWant.exit [
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1, ptr %i.ah, align 8, !tbaa !54
  br label %maybeCheckWant.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 1, ptr %i.ai, align 4, !tbaa !55
  br label %maybeCheckWant.exit.thread

maybeCheckWant.exit:                              ; preds = %bb.k, %bb.j
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null) #7
  br label %maybeCheckWant.exit.thread

bb.n:                                             ; preds = %bb.i, %bb.h
  %i.aj = zext nneg i32 %i.aa to i64
  br label %maybeCheckWant.exit.thread

maybeCheckWant.exit.thread:                       ; preds = %bb.m, %bb.l, %maybeCheckWant.exit, %bb.n
  %.1 = phi i64 [ %i.aj, %bb.n ], [ -1, %maybeCheckWant.exit ], [ 0, %bb.l ], [ 0, %bb.m ]
  ret i64 %.1
}

declare i32 @SSL_set_fd(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @SSL_set_connect_state(ptr noundef) local_unnamed_addr #1

declare void @ERR_clear_error() local_unnamed_addr #1

declare i32 @SSL_connect(ptr noundef) local_unnamed_addr #1

declare i32 @SSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare i64 @ERR_peek_last_error() local_unnamed_addr #1

declare ptr @ERR_reason_error_string(i64 noundef) local_unnamed_addr #1

declare i32 @redisBufferWrite(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @__redisAsyncDisconnect(ptr noundef) local_unnamed_addr #1

declare i32 @redisBufferRead(ptr noundef) local_unnamed_addr #1

declare void @redisProcessCallbacks(ptr noundef) local_unnamed_addr #1

declare i32 @SSL_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @SSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !14, i64 8}
!11 = !{!"redisSSLContext", !12, i64 0, !14, i64 8}
!12 = !{!"p1 _ZTS10ssl_ctx_st", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!16, !13, i64 32}
!16 = !{!"hiredisAllocFuncs", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!17 = distinct !{null}
!18 = !{!11, !12, i64 0}
!19 = !{!20, !14, i64 0}
!20 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !7, i64 40}
!21 = !{!20, !14, i64 8}
!22 = !{!20, !14, i64 16}
!23 = !{!20, !14, i64 24}
!24 = !{!20, !14, i64 32}
!25 = !{!20, !7, i64 40}
!26 = !{!16, !13, i64 8}
!27 = distinct !{null}
!28 = !{!16, !13, i64 24}
!29 = distinct !{null}
!30 = distinct !{ptr @redisFreeSSLContext, null}
!31 = !{!32, !13, i64 256}
!32 = !{!"redisContext", !33, i64 0, !7, i64 8, !8, i64 12, !7, i64 140, !7, i64 144, !14, i64 152, !34, i64 160, !7, i64 168, !35, i64 176, !35, i64 184, !36, i64 192, !37, i64 216, !38, i64 224, !39, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264}
!33 = !{!"p1 _ZTS17redisContextFuncs", !13, i64 0}
!34 = !{!"p1 _ZTS11redisReader", !13, i64 0}
!35 = !{!"p1 _ZTS7timeval", !13, i64 0}
!36 = !{!"", !14, i64 0, !14, i64 8, !7, i64 16}
!37 = !{!"", !14, i64 0}
!38 = !{!"p1 _ZTS8sockaddr", !13, i64 0}
!39 = !{!"long", !8, i64 0}
!40 = !{!32, !33, i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"redisSSL", !43, i64 0, !39, i64 8, !7, i64 16, !7, i64 20}
!43 = !{!"p1 _ZTS6ssl_st", !13, i64 0}
!44 = !{!32, !7, i64 140}
!45 = !{!32, !7, i64 144}
!46 = !{!32, !7, i64 8}
!47 = !{!48, !13, i64 256}
!48 = !{!"redisAsyncContext", !32, i64 0, !7, i64 272, !14, i64 280, !13, i64 288, !13, i64 296, !49, i64 304, !13, i64 360, !13, i64 368, !13, i64 376, !50, i64 384, !38, i64 400, !39, i64 408, !52, i64 416, !13, i64 456}
!49 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!50 = !{!"redisCallbackList", !51, i64 0, !51, i64 8}
!51 = !{!"p1 _ZTS13redisCallback", !13, i64 0}
!52 = !{!"", !50, i64 0, !53, i64 16, !53, i64 24, !7, i64 32}
!53 = !{!"p1 _ZTS4dict", !13, i64 0}
!54 = !{!42, !7, i64 16}
!55 = !{!42, !7, i64 20}
!56 = !{!48, !7, i64 144}
!57 = !{!48, !13, i64 352}
!58 = !{!48, !35, i64 184}
!59 = !{!60, !39, i64 0}
!60 = !{!"timeval", !39, i64 0, !39, i64 8}
!61 = !{!48, !13, i64 304}
!62 = distinct !{null}
!63 = !{!48, !35, i64 176}
!64 = !{!48, !13, i64 328}
!65 = !{!48, !13, i64 312}
!66 = !{!48, !13, i64 336}
!67 = !{!42, !39, i64 8}
!68 = !{!32, !14, i64 152}
!69 = !{!8, !8, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"short", !8, i64 0}
!72 = !{!39, !39, i64 0}
end_hunk_1
