Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/statem_dtls?download=true
inline.NumInlined: 28
inline.NumDeleted: 7
begin_hunk_0_@dtls_get_message:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dtls_get_message_body(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85   ; 3 uses
  %i.g = add i64 %i.f, 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.i = load i32, ptr %i.h, align 8, !tbaa !121
  %i.j = icmp eq i32 %i.i, 257
  br i1 %i.j, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.d, align 1, !tbaa !100
  %i.l = icmp eq i8 %i.k, 20
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @ssl3_take_mac(ptr noundef nonnull %0) #8
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105
  %i.p = icmp eq i32 %i.o, 256                    ; 2 uses
  %spec.select.idx = select i1 %i.p, i64 12, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.d, i64 %spec.select.idx
  %spec.select25 = select i1 %i.p, i64 %i.f, i64 %i.g
  %i.q = tail call i32 @ssl3_finish_mac(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, i64 noundef %spec.select25) #8
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95   ; 2 uses
  %.not24 = icmp eq ptr %i.s, null
  %.pre26 = load i64, ptr %i.e, align 8, !tbaa !85 ; 2 uses
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.n, align 8, !tbaa !105
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !98
  %i.x = add i64 %.pre26, 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !106
  tail call void %i.s(i32 noundef 0, i32 noundef %i.t, i32 noundef 22, ptr noundef %i.w, i64 noundef %i.x, ptr noundef %i.z, ptr noundef %i.ab) #8
  %.pre = load i64, ptr %i.e, align 8, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %i.ac = phi i64 [ %.pre26, %bb.e ], [ %.pre, %bb.f ], [ %i.f, %bb.a ]
  store i64 %i.ac, ptr %1, align 8, !tbaa !103
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.g
  %.021 = phi i32 [ 1, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.021
}

declare i32 @ssl3_take_mac(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dtls_construct_change_cipher_spec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp eq i32 %i.b, 256
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 270 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !116
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %i.f, align 2, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 268
  %i.j = load i16, ptr %i.i, align 4, !tbaa !127
  %i.k = zext i16 %i.j to i64
  %i.l = tail call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef %i.k, i64 noundef 2) #8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1015, ptr noundef nonnull @__func__.dtls_construct_change_cipher_spec) #8
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @WPACKET_put_bytes__(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_statem_fatal(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @dtls1_read_failed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1069, ptr noundef nonnull @__func__.dtls1_read_failed) #8
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @dtls1_is_timer_expired(ptr noundef %0) #8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @ossl_statem_in_error(ptr noundef %0) #8
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @SSL_in_init(ptr noundef %0) #8
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = tail call ptr @SSL_get_rbio(ptr noundef %0) #8
  tail call void @BIO_set_flags(ptr noundef %i.e, i32 noundef 1) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.f = tail call i32 @dtls1_handle_timeout(ptr noundef %0) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %1, %bb.f ], [ %i.f, %bb.g ], [ %1, %bb.d ], [ %1, %bb.c ]
  ret i32 %.0
}

declare i32 @dtls1_is_timer_expired(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_statem_in_error(ptr noundef) local_unnamed_addr #1

declare i32 @SSL_in_init(ptr noundef) local_unnamed_addr #1

declare void @BIO_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @SSL_get_rbio(ptr noundef) local_unnamed_addr #1

declare i32 @dtls1_handle_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -2147483647, -2147483648) i32 @dtls1_get_queue_priority(i16 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i16 %0 to i32
  %i.b = shl nuw nsw i32 %i.a, 1
  %i.c = sub nsw i32 %i.b, %1
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @dtls1_retransmit_buffered_messages(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.g = tail call ptr @pqueue_iterator(ptr noundef %i.f) #8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !110
  %i.h = call ptr @pqueue_next(ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not8 = icmp eq ptr %i.h, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.09 = phi ptr [ %i.q, %bb.b ], [ %i.h, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i16, ptr %i.k, align 8, !tbaa !113
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !129
  %1 = zext i16 %i.l to i32
  %2 = shl nuw nsw i32 %1, 1
  %3 = sub nsw i32 %2, %i.n
  %4 = trunc i32 %3 to i16
  %i.o = call i32 @dtls1_retransmit_message(ptr noundef %0, i16 noundef zeroext %4, ptr noundef nonnull %i.b)
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = call ptr @pqueue_next(ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !149

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.07 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ -1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.07
}

declare ptr @pqueue_iterator(ptr noundef) local_unnamed_addr #1

declare ptr @pqueue_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 2) i32 @dtls1_retransmit_message(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8
  %i.b = lshr i16 %1, 8
  %i.c = trunc nuw i16 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.c, ptr %i.d, align 2, !tbaa !100
  %i.e = trunc i16 %1 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.e, ptr %i.f, align 1, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128
  %i.k = call ptr @pqueue_find(ptr noundef %i.j, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1205, ptr noundef nonnull @__func__.dtls1_retransmit_message) #8
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #8
  store i32 0, ptr %2, align 4, !tbaa !126
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !126
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !129
  %.not = icmp eq i32 %i.p, 0
  %. = select i1 %.not, i64 12, i64 1             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !130
  %i.y = add i64 %i.x, %.
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.v, i64 %i.y, i1 false)
  %i.z = load i64, ptr %i.w, align 8, !tbaa !130  ; 2 uses
  %i.aa = add i64 %i.z, %.
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !85
  %i.ac = load i8, ptr %i.n, align 8, !tbaa !131
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !114
  %.val = load ptr, ptr %i.g, align 8, !tbaa !81  ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 312
  store i8 %i.ac, ptr %i.ah, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 320
  store i64 %i.z, ptr %i.ai, align 8, !tbaa !101
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 328
  store i16 %i.ae, ptr %i.aj, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 336
  store i64 0, ptr %i.ak, align 8, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 344
  store i64 %i.ag, ptr %i.al, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3632 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3648 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !90
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 460
  store i32 1, ptr %i.aq, align 4, !tbaa !104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !132 ; 2 uses
  store ptr %i.as, ptr %i.am, align 8, !tbaa !88
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !133 ; 2 uses
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !90
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !150
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !92
  %i.az = call i32 %i.aw(ptr noundef %i.au, ptr noundef %i.ay) #8 ; 0 uses
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !129
  %.not40 = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not40, i8 22, i8 20
  %i.bc = call i32 @dtls1_do_write(ptr noundef nonnull %0, i8 noundef zeroext %i.bb)
  store ptr %i.an, ptr %i.am, align 8, !tbaa !88
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !90
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 460
  store i32 0, ptr %i.be, align 4, !tbaa !104
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !92
  %i.bg = call i64 @BIO_ctrl(ptr noundef %i.bf, i32 noundef 11, i64 noundef 0, ptr noundef null) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.038 = phi i32 [ 0, %bb.b ], [ %i.bc, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dtls1_buffer_message(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load i64, ptr %i.b, align 8, !tbaa !84
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %dtls1_hm_fragment_new.exit.thread, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.g = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 80, ptr noundef nonnull @.str, i32 noundef 76) #8 ; 17 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %dtls1_hm_fragment_new.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.f, ptr noundef nonnull @.str, i32 noundef 80) #8 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @CRYPTO_free(ptr noundef nonnull %i.g, ptr noundef nonnull @.str, i32 noundef 81) #8
  br label %dtls1_hm_fragment_new.exit.thread

bb.f:                                             ; preds = %bb.d, %bb.c
  %.013.i = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 3 uses
  store ptr %.013.i, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 3 uses
  store ptr null, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !98
  %i.q = load i64, ptr %i.e, align 8, !tbaa !85   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.013.i, ptr align 1 %i.p, i64 %i.q, i1 false)
  %.not = icmp eq i32 %1, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  %i.u = load i64, ptr %i.t, align 8, !tbaa !86   ; 4 uses
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !105
  %i.x = icmp eq i32 %i.w, 256
  %i.y = select i1 %i.x, i64 3, i64 1
  %i.z = add i64 %i.y, %i.u
  %i.aa = and i64 %i.q, 4294967295
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.k, label %bb.h, !prof !87

bb.h:                                             ; preds = %bb.g
  tail call void @dtls1_hm_fragment_free(ptr noundef nonnull %i.g)
  br label %dtls1_hm_fragment_new.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.ac = add i64 %i.u, 12
  %i.ad = and i64 %i.q, 4294967295
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !87

bb.j:                                             ; preds = %bb.i
  tail call void @dtls1_hm_fragment_free(ptr noundef nonnull %i.g)
  br label %dtls1_hm_fragment_new.exit.thread

bb.k:                                             ; preds = %bb.i, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.u, ptr %i.af, align 8, !tbaa !130
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 328
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !151 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 16
end_hunk_0
