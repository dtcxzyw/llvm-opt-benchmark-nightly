Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/tls?download=true
inline.NumInlined: 33
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@createSSLContext:bb.a
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.23, ptr noundef %i.b, ptr noundef nonnull %i.a) #16
  br label %bb.aa

bb.m:                                             ; preds = %bb.j
  %i.x = tail call i32 @SSL_CTX_use_PrivateKey_file(ptr noundef nonnull %i.f, ptr noundef %i.c, i32 noundef 1) #16
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i64 @ERR_get_error() #16
  call void @ERR_error_string_n(i64 noundef %i.z, ptr noundef nonnull %i.a, i64 noundef 256) #16
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !484
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.24, ptr noundef %i.c, ptr noundef nonnull %i.a) #16
  br label %bb.aa

bb.p:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !487 ; 2 uses
  %.not58 = icmp eq ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !488 ; 2 uses
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
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !484
  %i.ak = icmp sgt i32 %i.aj, 3
  br i1 %i.ak, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.a) #16
  br label %bb.aa

bb.s:                                             ; preds = %bb.p, %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !579 ; 2 uses
  %.not60 = icmp eq ptr %i.am, null
  br i1 %.not60, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = tail call i32 @SSL_CTX_set_cipher_list(ptr noundef nonnull %i.f, ptr noundef nonnull %i.am) #16
  %.not61 = icmp eq i32 %i.an, 0
  br i1 %.not61, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !484
  %i.ap = icmp sgt i32 %i.ao, 3
  br i1 %i.ap, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !579
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.26, ptr noundef %i.aq) #16
  br label %bb.aa

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !580 ; 2 uses
  %.not62 = icmp eq ptr %i.as, null
  br i1 %.not62, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = tail call i32 @SSL_CTX_set_ciphersuites(ptr noundef nonnull %i.f, ptr noundef nonnull %i.as) #16
  %.not63 = icmp eq i32 %i.at, 0
  br i1 %.not63, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !484
  %i.av = icmp sgt i32 %i.au, 3
  br i1 %i.av, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !580
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.27, ptr noundef %i.aw) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.k, %bb.l, %bb.n, %bb.o, %bb.q, %bb.r, %bb.u, %bb.v, %bb.y, %bb.z
  call void @SSL_CTX_free(ptr noundef nonnull %i.f) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.a, %bb.w, %bb.x
  %.0 = phi ptr [ %i.f, %bb.w ], [ %i.f, %bb.x ], [ null, %bb.a ], [ null, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

declare i64 @SSL_CTX_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @SSL_CTX_set_timeout(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_set_session_id_context(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @SSL_CTX_set_options(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

declare ptr @OSSL_DECODER_CTX_new_for_pkey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @OSSL_DECODER_from_fp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OSSL_DECODER_CTX_free(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_set0_tmp_dh_pkey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_error_string_n(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ERR_get_error() local_unnamed_addr #2

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #2

declare ptr @sdssplitlen(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare void @sdsfreesplitres(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SSL_CTX_new(ptr noundef) local_unnamed_addr #2

declare ptr @TLS_method() local_unnamed_addr #2

declare void @SSL_CTX_set_verify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_CTX_set_default_passwd_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @tlsPasswordCallback(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 %2, ptr nofree noundef readonly captures(address_is_null) %3) #11 !guid !581 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17 ; 3 uses
  %i.b = sext i32 %1 to i64
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %3, i64 %i.a, i1 false)
  %i.d = trunc i64 %i.a to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ %i.d, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

declare void @SSL_CTX_set_default_passwd_cb_userdata(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_use_certificate_chain_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_use_PrivateKey_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_load_verify_locations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_set_cipher_list(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_set_ciphersuites(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @tlsHandleEvent(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !guid !582 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !496
  switch i32 %i.d, label %tlsPendingAdd.exit [
    i32 1, label %bb.b
    i32 2, label %bb.o
    i32 3, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_clear_error() #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !493
  %i.g = tail call i32 @anetGetError(i32 noundef %i.f) #16
  %2 = freeze i32 %i.g                            ; 2 uses
  %.not80 = icmp eq i32 %2, 0
  br i1 %.not80, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = zext i32 %2 to i64
  %4 = shl nuw i64 %3, 32
  %5 = or disjoint i64 %4, 5
  store i64 %5, ptr %i.c, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !506
  %i.j = and i32 %i.i, 4
  %.not81 = icmp eq i32 %i.j, 0
  br i1 %.not81, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !454
  %i.m = load i32, ptr %i.e, align 8, !tbaa !493
  %i.n = tail call i32 @SSL_set_fd(ptr noundef %i.l, i32 noundef %i.m) #16 ; 0 uses
  %i.o = load i32, ptr %i.h, align 8, !tbaa !506
  %i.p = or i32 %i.o, 4
  store i32 %i.p, ptr %i.h, align 8, !tbaa !506
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !454
  %i.s = tail call i32 @SSL_connect(ptr noundef %i.r) #16 ; 2 uses
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !15
  %i.u = call fastcc i32 @handleSSLReturnCode(ptr noundef nonnull %0, i32 noundef %i.s, ptr noundef %i.a)
  %.not82.not = icmp eq i32 %i.u, 0
  br i1 %.not82.not, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.v = load i32, ptr %i.a, align 4, !tbaa !15
  tail call fastcc void @registerSSLEvent(ptr noundef nonnull %0, i32 noundef %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  store i32 5, ptr %i.c, align 8, !tbaa !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  store i32 3, ptr %i.c, align 8, !tbaa !496
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !502  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !503  ; 2 uses
  %i.aa = add i16 %i.z, 1
  store i16 %i.aa, ptr %i.y, align 2, !tbaa !503
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void %i.x(ptr noundef nonnull %0) #16, !inline_history !1
  %.pre.i = load i16, ptr %i.y, align 2, !tbaa !503
  %i.ab = add i16 %.pre.i, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = phi i16 [ %i.ab, %bb.k ], [ %i.z, %bb.j ] ; 2 uses
  store i16 %i.ac, ptr %i.y, align 2, !tbaa !503
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !504
  %i.af = and i16 %i.ae, 1
  %.not9.i = icmp eq i16 %i.af, 0
  br i1 %.not9.i, label %callHandler.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not10.i = icmp eq i16 %i.ac, 0
  br i1 %.not10.i, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %0, align 8, !tbaa !505
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !501
  tail call void %i.ai(ptr noundef nonnull %0) #16, !inline_history !2
  br label %.critedge

callHandler.exit:                                 ; preds = %bb.l
  store ptr null, ptr %i.w, align 8, !tbaa !502
  br label %tlsPendingAdd.exit

bb.o:                                             ; preds = %bb.a
  tail call void @ERR_clear_error() #16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !454
  %i.al = tail call i32 @SSL_accept(ptr noundef %i.ak) #16 ; 2 uses
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !15
  %i.an = call fastcc i32 @handleSSLReturnCode(ptr noundef nonnull %0, i32 noundef %i.al, ptr noundef %i.b)
  %.not78.not = icmp eq i32 %i.an, 0
  br i1 %.not78.not, label %.thread113, label %bb.q

.thread113:                                       ; preds = %bb.p
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !15
  tail call fastcc void @registerSSLEvent(ptr noundef nonnull %0, i32 noundef %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.critedge

bb.q:                                             ; preds = %bb.p
  store i32 5, ptr %i.c, align 8, !tbaa !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  store i32 3, ptr %i.c, align 8, !tbaa !496
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !502 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !503 ; 2 uses
  %i.at = add i16 %i.as, 1
  store i16 %i.at, ptr %i.ar, align 2, !tbaa !503
  %.not.i85 = icmp eq ptr %i.aq, null
  br i1 %.not.i85, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void %i.aq(ptr noundef nonnull %0) #16, !inline_history !1
  %.pre.i86 = load i16, ptr %i.ar, align 2, !tbaa !503
  %i.au = add i16 %.pre.i86, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.av = phi i16 [ %i.au, %bb.t ], [ %i.as, %bb.s ] ; 2 uses
  store i16 %i.av, ptr %i.ar, align 2, !tbaa !503
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !504
  %i.ay = and i16 %i.ax, 1
  %.not9.i87 = icmp eq i16 %i.ay, 0
  br i1 %.not9.i87, label %callHandler.exit90, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not10.i88 = icmp eq i16 %i.av, 0
  br i1 %.not10.i88, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.az = load ptr, ptr %0, align 8, !tbaa !505
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !501
  tail call void %i.bb(ptr noundef nonnull %0) #16, !inline_history !2
  br label %.critedge

callHandler.exit90:                               ; preds = %bb.u
  store ptr null, ptr %i.ap, align 8, !tbaa !502
  br label %tlsPendingAdd.exit

bb.x:                                             ; preds = %bb.a
  %i.bc = and i32 %1, 1
  %.not = icmp eq i32 %i.bc, 0                    ; 3 uses
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !507
  %.not70 = icmp eq ptr %i.be, null
  %i.bf = and i32 %1, 2
  %.not71138 = icmp eq i32 %i.bf, 0               ; 2 uses
  br i1 %.not70, label %.thread137, label %.thread116

bb.z:                                             ; preds = %bb.x
  %i.bg = and i32 %1, 2
  %.not71 = icmp eq i32 %i.bg, 0
  br i1 %.not71, label %callHandler.exit108, label %bb.aa

.thread137:                                       ; preds = %bb.y
  br i1 %.not71138, label %.thread118, label %bb.aa

bb.aa:                                            ; preds = %.thread137, %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !506
  %i.bj = trunc i32 %i.bi to i1
  br label %bb.ab

.thread116:                                       ; preds = %bb.y
  br i1 %.not71138, label %.thread118, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread116
  %i.bk = phi i1 [ true, %.thread116 ], [ %i.bj, %bb.aa ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !508
  %.not73 = icmp ne ptr %i.bm, null               ; 2 uses
  %brmerge = or i1 %.not, %.not73
  br i1 %brmerge, label %bb.ac, label %.thread118

.thread118:                                       ; preds = %.thread137, %.thread116, %bb.ab
  %i.bn = phi i1 [ %i.bk, %bb.ab ], [ true, %.thread116 ], [ false, %.thread137 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !506
end_hunk_0
