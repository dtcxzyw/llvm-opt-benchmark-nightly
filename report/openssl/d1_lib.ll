Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/d1_lib?download=true
inline.NumInlined: 87
inline.NumDeleted: 33
begin_hunk_0_@dtls1_ctrl
define range(i64 -2147483648, -9223372036854775808) i64 @dtls1_ctrl(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %bb.k [
    i32 73, label %bb.d
    i32 74, label %bb.f
    i32 120, label %bb.g
    i32 121, label %.thread
    i32 17, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.g = load i64, ptr %i.f, align 8
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %dtls1_get_timeout.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i64 @ossl_time_now() #8
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 448
  %i.k = load i64, ptr %i.j, align 8
  %..i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.h) ; 2 uses
  %i.l = icmp ult i64 %..i.i, 15000001
  %i.m = tail call i64 @llvm.uadd.sat.i64(i64 %..i.i, i64 999)
  %.sroa.01.0.i = select i1 %i.l, i64 999, i64 %i.m ; 2 uses
  %i.n = udiv i64 %.sroa.01.0.i, 1000000000
  %i.o = urem i64 %.sroa.01.0.i, 1000000000
  %.lhs.trunc.i = trunc nuw nsw i64 %i.o to i32
  %i.p = udiv i32 %.lhs.trunc.i, 1000
  %.zext.i = zext nneg i32 %i.p to i64
  store i64 %i.n, ptr %3, align 8, !tbaa !103
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.zext.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !103
  br label %dtls1_get_timeout.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.q = tail call i32 @dtls1_handle_timeout(ptr noundef nonnull %0)
  br label %dtls1_get_timeout.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.r = icmp slt i64 %2, 256
  br i1 %i.r, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  store i64 %2, ptr %i.u, align 8, !tbaa !108
  br label %.thread

bb.i:                                             ; preds = %bb.c
  %i.v = icmp slt i64 %2, 208
  br i1 %i.v, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 304
  store i64 %2, ptr %i.y, align 8, !tbaa !109
  br label %.thread

bb.k:                                             ; preds = %bb.c
  %i.z = tail call i64 @ssl3_ctrl(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) #8
  %i.aa = trunc i64 %i.z to i32
  br label %dtls1_get_timeout.exit.thread

dtls1_get_timeout.exit.thread:                    ; preds = %bb.d, %bb.e, %bb.k, %bb.f
  %.020 = phi i32 [ %i.aa, %bb.k ], [ 1, %bb.e ], [ %i.q, %bb.f ], [ 0, %bb.d ]
  %i.ab = sext i32 %.020 to i64
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.i, %bb.g, %dtls1_get_timeout.exit.thread, %bb.j, %bb.h
  %.0 = phi i64 [ %2, %bb.j ], [ %i.ab, %dtls1_get_timeout.exit.thread ], [ 256, %bb.c ], [ 1, %bb.h ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dtls1_get_timeout(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @ossl_time_now() #8
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.h = load i64, ptr %i.g, align 8
  %..i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.e) ; 2 uses
  %i.i = icmp ult i64 %..i, 15000001
  %spec.store.select = select i1 %i.i, i64 0, i64 %..i
  store i64 %spec.store.select, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i32 @dtls1_handle_timeout(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %dtls1_is_timer_expired.exit.thread, label %dtls1_is_timer_expired.exit

dtls1_is_timer_expired.exit:                      ; preds = %bb.a
  %i.e = tail call i64 @ossl_time_now() #8
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.h = load i64, ptr %i.g, align 8
  %..i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.e)
  %i.i = icmp ugt i64 %..i.i.i, 15000000
  br i1 %i.i, label %dtls1_is_timer_expired.exit.thread, label %bb.b

bb.b:                                             ; preds = %dtls1_is_timer_expired.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101  ; 2 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.o = load i32, ptr %i.n, align 8, !tbaa !111
  %i.p = tail call i32 %i.k(ptr noundef %i.m, i32 noundef %i.o) #8
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 456
  store i32 %i.p, ptr %i.r, align 8, !tbaa !111
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 456 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !111
  %i.u = shl i32 %i.t, 1
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.u, i32 60000000)
  store i32 %spec.store.select.i, ptr %i.s, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call i32 @dtls1_check_timeout_num(ptr noundef nonnull %0)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %dtls1_is_timer_expired.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 448
  %i.z = load i64, ptr %i.y, align 8
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 456
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !111
  br label %dtls1_start_timer.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 464
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101 ; 2 uses
  %.not14.i = icmp eq ptr %i.ab, null
  br i1 %.not14.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull %0, i32 noundef 0) #8, !inline_history !112 ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 456
  store i32 %i.ac, ptr %i.ae, align 8, !tbaa !111
  br label %dtls1_start_timer.exit

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 456
  store i32 1000000, ptr %i.af, align 8, !tbaa !111
  br label %dtls1_start_timer.exit

dtls1_start_timer.exit:                           ; preds = %._crit_edge.i, %bb.h, %bb.i
  %i.ag = phi i32 [ %i.ac, %bb.h ], [ 1000000, %bb.i ], [ %.pre.i, %._crit_edge.i ]
  %i.ah = phi ptr [ %i.ad, %bb.h ], [ %i.x, %bb.i ], [ %i.x, %._crit_edge.i ]
  %i.ai = zext i32 %i.ag to i64
  %i.aj = mul nuw nsw i64 %i.ai, 1000             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 448
  %i.al = tail call i64 @ossl_time_now() #8       ; 2 uses
  %2 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.al, i64 range(i64 -1, 7200000000001) %i.aj)
  %3 = extractvalue { i64, i1 } %2, 1
  %.0.i.i.i = add i64 %i.aj, %i.al
  %..0.i.i.i = select i1 %3, i64 -1, i64 %.0.i.i.i
  store i64 %..0.i.i.i, ptr %i.ak, align 8, !tbaa !103
  %i.am = tail call ptr @SSL_get_rbio(ptr noundef nonnull %0) #8
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ao = getelementptr i8, ptr %i.an, i64 448
  %.val.i = load i64, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %.sroa.01.0.i.i.i = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 999) ; 2 uses
  %i.ap = udiv i64 %.sroa.01.0.i.i.i, 1000000000
  %i.aq = urem i64 %.sroa.01.0.i.i.i, 1000000000
  %.lhs.trunc.i.i.i = trunc nuw nsw i64 %i.aq to i32
  %i.ar = udiv i32 %.lhs.trunc.i.i.i, 1000
  %.zext.i.i.i = zext nneg i32 %i.ar to i64
  store i64 %i.ap, ptr %1, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.zext.i.i.i, ptr %i.as, align 8
  %i.at = call i64 @BIO_ctrl(ptr noundef %i.am, i32 noundef 45, i64 noundef 0, ptr noundef nonnull %1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.au = call i32 @dtls1_retransmit_buffered_messages(ptr noundef nonnull %0) #8
  br label %dtls1_is_timer_expired.exit.thread

dtls1_is_timer_expired.exit.thread:               ; preds = %bb.a, %bb.e, %dtls1_is_timer_expired.exit, %dtls1_start_timer.exit
  %.0 = phi i32 [ 0, %dtls1_is_timer_expired.exit ], [ %i.au, %dtls1_start_timer.exit ], [ -1, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i64 @ssl3_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @dtls1_start_timer(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !111
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, i32 noundef 0) #8 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 456
  store i32 %i.g, ptr %i.i, align 8, !tbaa !111
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  store i32 1000000, ptr %i.j, align 8, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c, %bb.d
  %i.k = phi i32 [ %i.g, %bb.c ], [ 1000000, %bb.d ], [ %.pre, %._crit_edge ]
  %i.l = phi ptr [ %i.h, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %._crit_edge ]
  %i.m = zext i32 %i.k to i64
  %i.n = mul nuw nsw i64 %i.m, 1000               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 448
  %i.p = tail call i64 @ossl_time_now() #8        ; 2 uses
  %2 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.p, i64 range(i64 -1, 7200000000001) %i.n)
  %3 = extractvalue { i64, i1 } %2, 1
  %.0.i.i = add i64 %i.n, %i.p
  %..0.i.i = select i1 %3, i64 -1, i64 %.0.i.i
  store i64 %..0.i.i, ptr %i.o, align 8, !tbaa !103
  %i.q = tail call ptr @SSL_get_rbio(ptr noundef nonnull %0) #8
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.s = getelementptr i8, ptr %i.r, i64 448
  %.val = load i64, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %.sroa.01.0.i.i = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 999) ; 2 uses
  %i.t = udiv i64 %.sroa.01.0.i.i, 1000000000
  %i.u = urem i64 %.sroa.01.0.i.i, 1000000000
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.u to i32
  %i.v = udiv i32 %.lhs.trunc.i.i, 1000
  %.zext.i.i = zext nneg i32 %i.v to i64
  store i64 %i.t, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.zext.i.i, ptr %i.w, align 8
  %i.x = call i64 @BIO_ctrl(ptr noundef %i.q, i32 noundef 45, i64 noundef 0, ptr noundef nonnull %1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

declare i64 @ossl_time_now() local_unnamed_addr #0

declare ptr @SSL_get_rbio(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dtls1_is_timer_expired(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load i64, ptr %i.c, align 8
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %dtls1_get_timeout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @ossl_time_now() #8
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.h = load i64, ptr %i.g, align 8
  %..i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.e)
  %i.i = icmp ult i64 %..i.i, 15000001
  %. = zext i1 %i.i to i32
  br label %dtls1_get_timeout.exit.thread

dtls1_get_timeout.exit.thread:                    ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @dtls1_stop_timer(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store i32 0, ptr %i.c, align 8, !tbaa !113
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store i64 0, ptr %i.d, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  store i32 1000000, ptr %i.e, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.h = call i64 @BIO_ctrl(ptr noundef %i.g, i32 noundef 45, i64 noundef 0, ptr noundef nonnull %1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = call ptr @pqueue_pop(ptr noundef %i.k) #8 ; 2 uses
  %.not15.i = icmp eq ptr %i.l, null
  br i1 %.not15.i, label %dtls1_clear_sent_buffer.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3648
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.n = phi ptr [ %i.l, %.lr.ph.i ], [ %i.ad, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !92
  %.not12.i = icmp eq i32 %i.r, 0
  br i1 %.not12.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94   ; 2 uses
  %.not13.i = icmp eq ptr %i.t, null
  br i1 %.not13.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !96   ; 2 uses
  %.not14.i = icmp eq ptr %i.u, %i.w
  br i1 %.not14.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.z = call i32 %i.y(ptr noundef %i.w) #8, !inline_history !100 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  call void @dtls1_hm_fragment_free(ptr noundef nonnull %i.p) #8
  call void @pitem_free(ptr noundef nonnull %i.n) #8
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ad = call ptr @pqueue_pop(ptr noundef %i.ac) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %dtls1_clear_sent_buffer.exit, label %bb.b, !llvm.loop !99

dtls1_clear_sent_buffer.exit:                     ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @dtls1_check_timeout_num(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 440 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !113
  %i.e = add i32 %i.d, 1                          ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !113
  %i.f = icmp ugt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @SSL_get_options(ptr noundef nonnull %0) #8
  %i.h = and i64 %i.g, 4096
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @SSL_get_wbio(ptr noundef nonnull %0) #8
  %i.j = tail call i64 @BIO_ctrl(ptr noundef %i.i, i32 noundef 47, i64 noundef 0, ptr noundef null) #8 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 304 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !109
  %i.n = icmp ult i64 %i.j, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.j, ptr %i.l, align 8, !tbaa !109
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c, %bb.d, %bb.a
  %i.o = phi ptr [ %.pre, %._crit_edge ], [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %i.b, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 440
  %i.q = load i32, ptr %i.p, align 8, !tbaa !113
  %i.r = icmp ugt i32 %i.q, 12
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.2, i32 noundef 372, ptr noundef nonnull @__func__.dtls1_check_timeout_num) #8
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 312, ptr noundef null) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i32 [ -1, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare ptr @SSL_get_wbio(ptr noundef) local_unnamed_addr #0

declare void @ERR_new() local_unnamed_addr #0

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @ossl_statem_fatal(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

declare i32 @dtls1_retransmit_buffered_messages(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @DTLSv1_listen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [255 x i8], align 16              ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.wpacket_st, align 8         ; 19 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !8
end_hunk_0
begin_hunk_1_@dtls1_shutdown:bb.a
}

declare i32 @ssl3_shutdown(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dtls1_query_mtu(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.d = load i64, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !109
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @SSL_get_wbio(ptr noundef nonnull %0) #8
  %i.f = tail call i64 @BIO_ctrl(ptr noundef %i.e, i32 noundef 49, i64 noundef 0, ptr noundef null) #8
  %i.g = and i64 %i.f, 4294967295
  %i.h = sub i64 %i.d, %i.g                       ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  store i64 %i.h, ptr %i.j, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  store i64 0, ptr %i.k, align 8, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %._crit_edge ]
  %i.m = tail call ptr @SSL_get_wbio(ptr noundef nonnull %0) #8
  %i.n = tail call i64 @BIO_ctrl(ptr noundef %i.m, i32 noundef 49, i64 noundef 0, ptr noundef null) #8
  %i.o = and i64 %i.n, 4294967295
  %i.p = sub nsw i64 256, %i.o
  %i.q = icmp ult i64 %i.l, %i.p
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i64 @SSL_get_options(ptr noundef nonnull %0) #8
  %i.s = and i64 %i.r, 4096
  %.not18 = icmp eq i64 %i.s, 0
  br i1 %.not18, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @SSL_get_wbio(ptr noundef nonnull %0) #8
  %i.u = tail call i64 @BIO_ctrl(ptr noundef %i.t, i32 noundef 40, i64 noundef 0, ptr noundef null) #8 ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 304
  store i64 %i.u, ptr %i.w, align 8, !tbaa !109
  %i.x = tail call ptr @SSL_get_wbio(ptr noundef nonnull %0) #8
  %i.y = tail call i64 @BIO_ctrl(ptr noundef %i.x, i32 noundef 49, i64 noundef 0, ptr noundef null) #8
  %i.z = and i64 %i.y, 4294967295
  %i.aa = sub nsw i64 256, %i.z
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call ptr @SSL_get_wbio(ptr noundef nonnull %0) #8
  %i.ad = tail call i64 @BIO_ctrl(ptr noundef %i.ac, i32 noundef 49, i64 noundef 0, ptr noundef null) #8
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = sub nsw i64 256, %i.ae
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 304
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !109
  %i.ai = tail call ptr @SSL_get_wbio(ptr noundef nonnull %0) #8
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 304
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !109
  %i.am = tail call i64 @BIO_ctrl(ptr noundef %i.ai, i32 noundef 42, i64 noundef %i.al, ptr noundef null) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 -4294967039, 257) i64 @dtls1_min_mtu(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @SSL_get_wbio(ptr noundef %0) #8
  %i.b = tail call i64 @BIO_ctrl(ptr noundef %i.a, i32 noundef 49, i64 noundef 0, ptr noundef null) #8
  %i.c = and i64 %i.b, 4294967295
  %i.d = sub nsw i64 256, %i.c
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define i64 @DTLS_get_data_mtu(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = tail call ptr @SSL_get_current_cipher(ptr noundef %0) #8 ; 2 uses
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %0, align 8, !tbaa !8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 304
  %i.l = load i64, ptr %i.k, align 8, !tbaa !109  ; 2 uses
  %i.m = icmp eq ptr %i.e, null
  br i1 %i.m, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @ssl_cipher_get_overhead(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.p = load i64, ptr %i.o, align 8, !tbaa !144
  %i.q = and i64 %i.p, 256
  %.not24 = icmp eq i64 %i.q, 0
  %i.r = load i64, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.d, align 8, !tbaa !103
  %i.t = add i64 %i.s, %i.r
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.b, align 8, !tbaa !103
  %i.v = add i64 %i.u, %i.r
  store i64 %i.v, ptr %i.b, align 8, !tbaa !103
  %.pre = load i64, ptr %i.d, align 8, !tbaa !103
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = phi i64 [ %.pre, %bb.g ], [ %i.t, %bb.f ]
  %i.x = add i64 %i.w, 13                         ; 2 uses
  %.not25 = icmp ult i64 %i.x, %i.l
  br i1 %.not25, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.y = sub nuw i64 %i.l, %i.x                   ; 3 uses
  %i.z = load i64, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %.not26 = icmp eq i64 %i.z, 0
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = urem i64 %i.y, %i.z
  %i.ab = sub i64 %i.y, %i.aa
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i64 [ %i.ab, %bb.j ], [ %i.y, %bb.i ]
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !103
  %spec.select = call i64 @llvm.usub.sat.i64(i64 %.0, i64 %i.ac)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.k, %bb.h, %bb.d, %bb.c
  %.016 = phi i64 [ 0, %bb.c ], [ %spec.select, %bb.k ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.016
}

declare ptr @SSL_get_current_cipher(ptr noundef) local_unnamed_addr #0

declare i32 @ssl_cipher_get_overhead(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @DTLS_set_timer_cb(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  store ptr %1, ptr %i.f, align 8, !tbaa !101
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

declare i32 @dtls1_do_write(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"ssl_st", !5, i64 0, !10, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !11, i64 40, !14, i64 48}
!10 = !{!"p1 _ZTS10ssl_ctx_st", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS13ssl_method_st", !11, i64 0}
!13 = !{!"", !6, i64 0}
!14 = !{!"crypto_ex_data_st", !15, i64 0, !16, i64 8}
!15 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!16 = !{!"p1 _ZTS13stack_st_void", !11, i64 0}
!17 = !{!18, !21, i64 280}
!18 = !{!"dtls1_state_st", !6, i64 0, !19, i64 256, !5, i64 264, !20, i64 268, !20, i64 270, !20, i64 272, !21, i64 280, !21, i64 288, !19, i64 296, !19, i64 304, !22, i64 312, !22, i64 376, !5, i64 440, !26, i64 448, !5, i64 456, !5, i64 460, !11, i64 464}
!19 = !{!"long", !6, i64 0}
!20 = !{!"short", !6, i64 0}
!21 = !{!"p1 _ZTS9pqueue_st", !11, i64 0}
!22 = !{!"hm_header_st", !6, i64 0, !19, i64 8, !20, i64 16, !19, i64 24, !19, i64 32, !5, i64 40, !23, i64 48}
!23 = !{!"dtls1_retransmit_state", !24, i64 0, !25, i64 8}
!24 = !{!"p1 _ZTS21ossl_record_method_st", !11, i64 0}
!25 = !{!"p1 _ZTS20ossl_record_layer_st", !11, i64 0}
!26 = !{!"", !19, i64 0}
!27 = !{!18, !21, i64 288}
!28 = !{!29, !50, i64 1264}
!29 = !{!"ssl_connection_st", !9, i64 0, !30, i64 64, !5, i64 72, !31, i64 80, !31, i64 88, !31, i64 96, !5, i64 104, !11, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !26, i64 136, !26, i64 144, !32, i64 152, !5, i64 240, !33, i64 248, !11, i64 256, !19, i64 264, !19, i64 272, !19, i64 280, !34, i64 288, !11, i64 336, !35, i64 344, !36, i64 352, !50, i64 1264, !11, i64 1272, !11, i64 1280, !5, i64 1288, !51, i64 1296, !52, i64 1304, !58, i64 1368, !58, i64 1376, !58, i64 1384, !58, i64 1392, !5, i64 1400, !6, i64 1404, !6, i64 1468, !6, i64 1532, !6, i64 1596, !6, i64 1660, !6, i64 1724, !6, i64 1788, !6, i64 1852, !6, i64 1916, !6, i64 1980, !6, i64 2044, !6, i64 2108, !59, i64 2176, !6, i64 2184, !19, i64 2248, !5, i64 2256, !19, i64 2264, !6, i64 2272, !60, i64 2304, !60, i64 2312, !41, i64 2320, !19, i64 2328, !11, i64 2336, !6, i64 2344, !19, i64 2376, !5, i64 2384, !11, i64 2392, !11, i64 2400, !5, i64 2408, !5, i64 2412, !11, i64 2416, !11, i64 2424, !11, i64 2432, !11, i64 2440, !55, i64 2448, !19, i64 2456, !42, i64 2464, !42, i64 2472, !19, i64 2480, !5, i64 2488, !5, i64 2492, !5, i64 2496, !19, i64 2504, !5, i64 2512, !5, i64 2516, !19, i64 2520, !19, i64 2528, !19, i64 2536, !61, i64 2544, !11, i64 3344, !5, i64 3352, !11, i64 3360, !11, i64 3368, !71, i64 3376, !5, i64 3384, !10, i64 3392, !72, i64 3400, !73, i64 3408, !5, i64 3416, !5, i64 3420, !5, i64 3424, !5, i64 3428, !41, i64 3432, !19, i64 3440, !5, i64 3448, !37, i64 3456, !74, i64 3464, !11, i64 3592, !76, i64 3600, !11, i64 5840, !11, i64 5848, !79, i64 5856, !80, i64 5864, !19, i64 5872, !5, i64 5880, !5, i64 5884, !5, i64 5888, !19, i64 5896, !19, i64 5904, !19, i64 5912, !11, i64 5920, !11, i64 5928, !11, i64 5936, !11, i64 5944, !81, i64 5952, !19, i64 5960, !41, i64 5968, !19, i64 5976, !41, i64 5984, !19, i64 5992}
!30 = !{!"p1 _ZTS6ssl_st", !11, i64 0}
!31 = !{!"p1 _ZTS6bio_st", !11, i64 0}
!32 = !{!"ossl_statem_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !11, i64 56, !11, i64 64, !11, i64 72, !5, i64 80}
!33 = !{!"p1 _ZTS10buf_mem_st", !11, i64 0}
!34 = !{!"ossl_quic_tls_callbacks_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!35 = !{!"p1 _ZTS11quic_tls_st", !11, i64 0}
!36 = !{!"", !19, i64 0, !6, i64 8, !6, i64 40, !31, i64 72, !37, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !6, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !38, i64 128, !6, i64 704, !19, i64 768, !6, i64 776, !19, i64 840, !5, i64 848, !5, i64 852, !41, i64 856, !19, i64 864, !41, i64 872, !19, i64 880, !5, i64 888, !6, i64 892, !6, i64 893, !20, i64 894, !40, i64 896, !20, i64 904}
!37 = !{!"p1 _ZTS13evp_md_ctx_st", !11, i64 0}
!38 = !{!"", !6, i64 0, !19, i64 128, !6, i64 136, !19, i64 264, !19, i64 272, !5, i64 280, !39, i64 288, !40, i64 296, !6, i64 304, !6, i64 336, !19, i64 344, !5, i64 352, !41, i64 360, !19, i64 368, !42, i64 376, !19, i64 384, !41, i64 392, !43, i64 400, !44, i64 408, !5, i64 416, !19, i64 424, !45, i64 432, !5, i64 440, !41, i64 448, !19, i64 456, !41, i64 464, !19, i64 472, !41, i64 480, !19, i64 488, !46, i64 496, !47, i64 504, !48, i64 512, !48, i64 520, !19, i64 528, !19, i64 536, !46, i64 544, !49, i64 552, !5, i64 560, !5, i64 564, !5, i64 568, !5, i64 572}
!39 = !{!"p1 _ZTS13ssl_cipher_st", !11, i64 0}
!40 = !{!"p1 _ZTS11evp_pkey_st", !11, i64 0}
!41 = !{!"p1 omnipotent char", !11, i64 0}
!42 = !{!"p1 _ZTS18stack_st_X509_NAME", !11, i64 0}
!43 = !{!"p1 _ZTS13evp_cipher_st", !11, i64 0}
!44 = !{!"p1 _ZTS9evp_md_st", !11, i64 0}
!45 = !{!"p1 _ZTS11ssl_comp_st", !11, i64 0}
!46 = !{!"p1 _ZTS16sigalg_lookup_st", !11, i64 0}
!47 = !{!"p1 _ZTS12cert_pkey_st", !11, i64 0}
!48 = !{!"p1 short", !11, i64 0}
!49 = !{!"p1 int", !11, i64 0}
!50 = !{!"p1 _ZTS14dtls1_state_st", !11, i64 0}
!51 = !{!"p1 _ZTS20X509_VERIFY_PARAM_st", !11, i64 0}
!52 = !{!"ssl_dane_st", !53, i64 0, !54, i64 8, !55, i64 16, !56, i64 24, !57, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !19, i64 56}
!53 = !{!"p1 _ZTS11dane_ctx_st", !11, i64 0}
!54 = !{!"p1 _ZTS23stack_st_danetls_record", !11, i64 0}
!55 = !{!"p1 _ZTS13stack_st_X509", !11, i64 0}
!56 = !{!"p1 _ZTS17danetls_record_st", !11, i64 0}
!57 = !{!"p1 _ZTS7x509_st", !11, i64 0}
!58 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !11, i64 0}
!59 = !{!"p1 _ZTS7cert_st", !11, i64 0}
!60 = !{!"p1 _ZTS14ssl_session_st", !11, i64 0}
!61 = !{!"", !6, i64 0, !11, i64 32, !11, i64 40, !41, i64 48, !5, i64 56, !41, i64 64, !20, i64 72, !5, i64 76, !62, i64 80, !5, i64 120, !5, i64 124, !19, i64 128, !41, i64 136, !19, i64 144, !41, i64 152, !19, i64 160, !48, i64 168, !19, i64 176, !48, i64 184, !19, i64 192, !48, i64 200, !19, i64 208, !66, i64 216, !67, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !41, i64 264, !19, i64 272, !41, i64 280, !19, i64 288, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !41, i64 312, !19, i64 320, !5, i64 328, !6, i64 332, !5, i64 336, !6, i64 340, !5, i64 356, !6, i64 360, !6, i64 361, !6, i64 362, !6, i64 363, !68, i64 368}
!62 = !{!"", !63, i64 0, !64, i64 8, !41, i64 16, !19, i64 24, !65, i64 32}
!63 = !{!"p1 _ZTS20stack_st_OCSP_RESPID", !11, i64 0}
!64 = !{!"p1 _ZTS23stack_st_X509_EXTENSION", !11, i64 0}
!65 = !{!"p1 _ZTS22stack_st_OCSP_RESPONSE", !11, i64 0}
!66 = !{!"p1 long", !11, i64 0}
!67 = !{!"p1 _ZTS25tls_session_ticket_ext_st", !11, i64 0}
!68 = !{!"ossl_ech_conn_st", !69, i64 0, !5, i64 8, !41, i64 16, !41, i64 24, !19, i64 32, !11, i64 40, !41, i64 48, !41, i64 56, !19, i64 64, !41, i64 72, !19, i64 80, !41, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !6, i64 128, !19, i64 168, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !20, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !41, i64 224, !41, i64 232, !19, i64 240, !41, i64 248, !19, i64 256, !41, i64 264, !19, i64 272, !70, i64 280, !5, i64 288, !19, i64 296, !19, i64 304, !19, i64 312, !19, i64 320, !5, i64 328, !5, i64 332, !41, i64 336, !6, i64 344, !6, i64 352, !6, i64 384, !19, i64 392, !6, i64 400}
!69 = !{!"p1 _ZTS16ossl_echstore_st", !11, i64 0}
!70 = !{!"p1 _ZTS16ossl_hpke_ctx_st", !11, i64 0}
!71 = !{!"p1 _ZTS12stack_st_SCT", !11, i64 0}
!72 = !{!"p1 _ZTS32stack_st_SRTP_PROTECTION_PROFILE", !11, i64 0}
!73 = !{!"p1 _ZTS26srtp_protection_profile_st", !11, i64 0}
!74 = !{!"srp_ctx_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !41, i64 32, !75, i64 40, !75, i64 48, !75, i64 56, !75, i64 64, !75, i64 72, !75, i64 80, !75, i64 88, !75, i64 96, !41, i64 104, !5, i64 112, !19, i64 120}
!75 = !{!"p1 _ZTS9bignum_st", !11, i64 0}
!76 = !{!"record_layer_st", !77, i64 0, !24, i64 8, !11, i64 16, !24, i64 24, !24, i64 32, !25, i64 40, !25, i64 48, !31, i64 56, !19, i64 64, !5, i64 72, !19, i64 80, !6, i64 88, !19, i64 96, !19, i64 104, !6, i64 112, !41, i64 120, !5, i64 128, !78, i64 136, !11, i64 144, !11, i64 152, !19, i64 160, !19, i64 168, !19, i64 176, !19, i64 184, !6, i64 192}
!77 = !{!"p1 _ZTS17ssl_connection_st", !11, i64 0}
!78 = !{!"p1 _ZTS20dtls_record_layer_st", !11, i64 0}
!79 = !{!"p1 _ZTS12async_job_st", !11, i64 0}
!80 = !{!"p1 _ZTS17async_wait_ctx_st", !11, i64 0}
!81 = !{!"p2 _ZTS16sigalg_lookup_st", !82, i64 0}
!82 = !{!"any p2 pointer", !11, i64 0}
!83 = !{!9, !12, i64 24}
!84 = !{!85, !11, i64 48}
!85 = !{!"ssl_method_st", !5, i64 0, !5, i64 4, !19, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !86, i64 216, !11, i64 224, !11, i64 232, !11, i64 240}
!86 = !{!"p1 _ZTS15ssl3_enc_method", !11, i64 0}
!87 = !{!88, !11, i64 8}
!88 = !{!"pitem_st", !6, i64 0, !11, i64 8, !89, i64 16}
!89 = !{!"p1 _ZTS8pitem_st", !11, i64 0}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!93, !5, i64 40}
!93 = !{!"hm_fragment_st", !22, i64 0, !41, i64 64, !41, i64 72}
!94 = !{!93, !24, i64 48}
!95 = !{!29, !25, i64 3648}
!96 = !{!93, !25, i64 56}
!97 = !{!98, !11, i64 8}
!98 = !{!"ossl_record_method_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192}
!99 = distinct !{!99, !91}
!100 = !{ptr @dtls1_clear_sent_buffer}
!101 = !{!18, !11, i64 464}
!102 = !{!21, !21, i64 0}
!103 = !{!19, !19, i64 0}
!104 = !{!85, !5, i64 0}
!105 = !{!29, !5, i64 72}
!106 = !{!29, !19, i64 2480}
!107 = !{!29, !5, i64 2516}
!108 = !{!18, !19, i64 296}
!109 = !{!18, !19, i64 304}
!110 = !{!29, !30, i64 64}
!111 = !{!18, !5, i64 456}
!112 = !{ptr @dtls1_start_timer}
!113 = !{!18, !5, i64 440}
!114 = !{!29, !31, i64 80}
!115 = !{!29, !11, i64 112}
!116 = !{!5, !5, i64 0}
!117 = !{!6, !6, i64 0}
!118 = !{!29, !11, i64 1272}
!119 = !{!29, !11, i64 1280}
!120 = !{!9, !10, i64 8}
!121 = !{!122, !11, i64 216}
!122 = !{!"ssl_ctx_st", !15, i64 0, !12, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !123, i64 40, !124, i64 48, !19, i64 56, !60, i64 64, !60, i64 72, !5, i64 80, !26, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !125, i64 120, !13, i64 164, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !14, i64 240, !44, i64 256, !44, i64 264, !55, i64 272, !126, i64 280, !11, i64 288, !42, i64 296, !42, i64 304, !19, i64 312, !5, i64 320, !5, i64 324, !5, i64 328, !19, i64 336, !59, i64 344, !11, i64 352, !5, i64 360, !11, i64 368, !11, i64 376, !5, i64 384, !19, i64 392, !6, i64 400, !11, i64 432, !11, i64 440, !51, i64 448, !5, i64 456, !127, i64 464, !11, i64 472, !11, i64 480, !19, i64 488, !19, i64 496, !19, i64 504, !19, i64 512, !11, i64 520, !11, i64 528, !11, i64 536, !11, i64 544, !128, i64 552, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !74, i64 856, !131, i64 984, !72, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !5, i64 1048, !5, i64 1052, !11, i64 1056, !11, i64 1064, !19, i64 1072, !19, i64 1080, !11, i64 1088, !11, i64 1096, !11, i64 1104, !19, i64 1112, !11, i64 1120, !11, i64 1128, !5, i64 1136, !11, i64 1144, !11, i64 1152, !41, i64 1160, !6, i64 1168, !6, i64 1232, !6, i64 1440, !6, i64 1560, !19, i64 1680, !19, i64 1688, !46, i64 1696, !48, i64 1704, !133, i64 1712, !19, i64 1720, !19, i64 1728, !134, i64 1736, !19, i64 1744, !19, i64 1752, !5, i64 1760, !5, i64 1764, !5, i64 1768, !5, i64 1772, !41, i64 1776, !19, i64 1784, !41, i64 1792, !19, i64 1800, !19, i64 1808, !135, i64 1816, !41, i64 1824}
!123 = !{!"p1 _ZTS13x509_store_st", !11, i64 0}
!124 = !{!"p1 _ZTS20lhash_st_SSL_SESSION", !11, i64 0}
!125 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!126 = !{!"p1 _ZTS17stack_st_SSL_COMP", !11, i64 0}
!127 = !{!"p1 _ZTS14ctlog_store_st", !11, i64 0}
!128 = !{!"", !11, i64 0, !11, i64 8, !6, i64 16, !129, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !5, i64 72, !6, i64 76, !19, i64 80, !41, i64 88, !19, i64 96, !48, i64 104, !19, i64 112, !48, i64 120, !19, i64 128, !66, i64 136, !11, i64 144, !11, i64 152, !41, i64 160, !19, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !6, i64 208, !130, i64 240}
!129 = !{!"p1 _ZTS21ssl_ctx_ext_secure_st", !11, i64 0}
!130 = !{!"ossl_ech_ctx_st", !69, i64 0, !41, i64 8, !19, i64 16, !11, i64 24}
!131 = !{!"dane_ctx_st", !132, i64 0, !41, i64 8, !6, i64 16, !19, i64 24}
!132 = !{!"p2 _ZTS9evp_md_st", !82, i64 0}
!133 = !{!"p1 _ZTS17tls_group_info_st", !11, i64 0}
!134 = !{!"p1 _ZTS18tls_sigalg_info_st", !11, i64 0}
!135 = !{!"p1 _ZTS18ssl_token_store_st", !11, i64 0}
!136 = !{!122, !11, i64 208}
!137 = distinct !{!137, !91}
!138 = !{!18, !20, i64 272}
!139 = !{!18, !20, i64 268}
!140 = !{!18, !20, i64 270}
!141 = !{!29, !24, i64 3632}
!142 = !{!98, !11, i64 176}
!143 = !{!29, !31, i64 3656}
!144 = !{!29, !19, i64 352}
end_hunk_1
