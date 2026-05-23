inline.NumInlined: 419
inline.NumDeleted: 97
begin_hunk_0_@ossl_quic_conn_shutdown:bb.a
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !117
  %i.ao = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.an) #10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  %i.aq = load i16, ptr %i.ap, align 8
  %i.ar = and i16 %i.aq, 32
  %.not.i51 = icmp eq i16 %i.ar, 0
  br i1 %.not.i51, label %qc_shutdown_flush_finished.exit52.thread, label %qc_shutdown_flush_finished.exit52

qc_shutdown_flush_finished.exit52:                ; preds = %bb.l
  %i.as = call i32 @ossl_quic_stream_map_is_shutdown_flush_finished(ptr noundef %i.ao) #10
  %.not56 = icmp eq i32 %i.as, 0
  br i1 %.not56, label %qc_shutdown_flush_finished.exit52.thread, label %bb.m

qc_shutdown_flush_finished.exit52.thread:         ; preds = %bb.l, %qc_shutdown_flush_finished.exit52
  %.val48 = load ptr, ptr %4, align 8, !tbaa !161
  %i.at = getelementptr i8, ptr %.val48, i64 88
  %.val48.val = load ptr, ptr %i.at, align 8, !tbaa !147
  %i.au = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val48.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.au) #10
  br label %bb.ac

bb.m:                                             ; preds = %qc_shutdown_flush_finished.exit52, %bb.f
  br i1 %.not22, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !117
  %i.ay = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.ax) #10
  %.not29 = icmp eq i32 %i.ay, 0
  br i1 %.not29, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %.val38 = load ptr, ptr %4, align 8, !tbaa !161
  %i.az = call i32 @ossl_quic_obj_blocking(ptr noundef %.val38) #10
  %.not30 = icmp eq i32 %i.az, 0
  br i1 %.not30, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !138
  %.val44 = load ptr, ptr %4, align 8, !tbaa !161
  %i.bb = getelementptr i8, ptr %.val44, i64 88
  %.val44.val = load ptr, ptr %i.bb, align 8, !tbaa !147
  %i.bc = call fastcc i32 @block_until_pred(ptr %.val44.val, ptr noundef nonnull @quic_shutdown_peer_wait, ptr noundef %i.ba)
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %bb.ab, label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %.val41 = load ptr, ptr %4, align 8, !tbaa !161
  call fastcc void @qctx_maybe_autotick(ptr %.val41)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 160
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !117
  %i.bh = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.bg) #10
  %.not31 = icmp eq i32 %i.bh, 0
  br i1 %.not31, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n, %bb.m
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !138 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 336 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 8
  %i.bl = or i16 %i.bk, 32
  store i16 %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !117
  %.not32 = icmp eq ptr %2, null
  br i1 %.not32, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load i64, ptr %2, align 8, !tbaa !174
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !176
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.u
  %i.br = phi i64 [ %i.bo, %bb.u ], [ 0, %bb.t ]
  %i.bs = phi ptr [ %i.bq, %bb.u ], [ null, %bb.t ]
  call void @ossl_quic_channel_local_close(ptr noundef %i.bn, i64 noundef %i.br, ptr noundef %i.bs) #10
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !64
  call void @SSL_set_shutdown(ptr noundef %i.bv, i32 noundef 1) #10
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 160
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !117
  %i.bz = call i32 @ossl_quic_channel_is_terminated(ptr noundef %i.by) #10
  %.not33 = icmp eq i32 %i.bz, 0
  br i1 %.not33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread
  %.val47 = load ptr, ptr %4, align 8, !tbaa !161
  %i.ca = getelementptr i8, ptr %.val47, i64 88
  %.val47.val = load ptr, ptr %i.ca, align 8, !tbaa !147
  %i.cb = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val47.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.cb) #10
  br label %bb.ac

bb.w:                                             ; preds = %.thread
  br i1 %.not, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %.val37 = load ptr, ptr %4, align 8, !tbaa !161
  %i.cc = call i32 @ossl_quic_obj_blocking(ptr noundef %.val37) #10
  %.not34 = icmp ne i32 %i.cc, 0
  %i.cd = and i64 %1, 1
  %i.ce = icmp eq i64 %i.cd, 0
  %or.cond36 = and i1 %i.ce, %.not34
  br i1 %or.cond36, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !138
  %.val43 = load ptr, ptr %4, align 8, !tbaa !161
  %i.cg = getelementptr i8, ptr %.val43, i64 88
  %.val43.val = load ptr, ptr %i.cg, align 8, !tbaa !147
  %i.ch = call fastcc i32 @block_until_pred(ptr %.val43.val, ptr noundef nonnull @quic_shutdown_wait, ptr noundef %i.cf)
  %i.ci = icmp slt i32 %i.ch, 1
  br i1 %i.ci, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.x, %bb.w
  %.val40 = load ptr, ptr %4, align 8, !tbaa !161
  call fastcc void @qctx_maybe_autotick(ptr %.val40)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 160
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !117
  %i.cm = call i32 @ossl_quic_channel_is_terminated(ptr noundef %i.cl) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.s, %bb.q, %bb.j, %bb.aa
  %.020 = phi i32 [ %i.cm, %bb.aa ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.j ], [ 0, %bb.y ]
  %.val46 = load ptr, ptr %4, align 8, !tbaa !161
  %i.cn = getelementptr i8, ptr %.val46, i64 88
  %.val46.val = load ptr, ptr %i.cn, align 8, !tbaa !147
  %i.co = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val46.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.co) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab, %bb.v, %qc_shutdown_flush_finished.exit52.thread, %bb.e, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.v ], [ %.020, %bb.ab ], [ 0, %qc_shutdown_flush_finished.exit52.thread ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0
}

declare i32 @ossl_quic_channel_is_terminated(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @block_until_pred(ptr %.0.val.88.val, ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @ossl_quic_engine_set_inhibit_tick(ptr noundef %.0.val.88.val, i32 noundef 0) #10
  %i.a = tail call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.0.val.88.val) #10
  %i.b = tail call i32 @ossl_quic_reactor_block_until_pred(ptr noundef %i.a, ptr noundef %0, ptr noundef %1, i32 noundef 0) #10
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @quic_shutdown_flush_wait(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.c = tail call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.b) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %qc_shutdown_flush_finished.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.e = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.d) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 32
  %.not.i = icmp eq i16 %i.h, 0
  br i1 %.not.i, label %qc_shutdown_flush_finished.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @ossl_quic_stream_map_is_shutdown_flush_finished(ptr noundef %i.e) #10
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  br label %qc_shutdown_flush_finished.exit

qc_shutdown_flush_finished.exit:                  ; preds = %bb.c, %bb.b, %bb.a
  %i.l = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ %i.k, %bb.c ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qctx_maybe_autotick(ptr readonly captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi ptr [ %.0.val, %bb.a ], [ %i.e, %bb.c ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 96
  switch i8 %i.c, label %qctx_should_autotick.exit.thread [
    i8 0, label %bb.c
    i8 64, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %qctx_should_autotick.exit.thread, label %bb.b, !llvm.loop !177

qctx_should_autotick.exit.thread:                 ; preds = %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %.0.val, i64 88
  %.val2 = load ptr, ptr %i.f, align 8, !tbaa !147
  %i.g = tail call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.val2) #10
  %i.h = tail call i32 @ossl_quic_reactor_tick(ptr noundef %i.g, i32 noundef 0) #10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %qctx_should_autotick.exit.thread
  ret void
}

declare i32 @ossl_quic_channel_is_term_any(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @quic_shutdown_peer_wait(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.c = tail call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.b) #10
  ret i32 %i.c
}

declare void @ossl_quic_channel_local_close(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_set_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @quic_shutdown_wait(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.c = tail call i32 @ossl_quic_channel_is_terminated(ptr noundef %i.b) #10
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ossl_quic_ctrl(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.qctx_st, align 8            ; 16 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.h = icmp eq ptr %0, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 277, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786690, ptr noundef null)
  br label %expect_quic_as.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr %0, align 8, !tbaa !65
  switch i32 %i.i, label %bb.h [
    i32 131, label %bb.d
    i32 130, label %bb.e
    i32 128, label %bb.f
    i32 129, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 225, ptr noundef nonnull @__func__.wrong_type, i32 noundef 524556, ptr noundef null)
  br label %expect_quic_as.exit.thread

bb.e:                                             ; preds = %bb.c
  store ptr %0, ptr %4, align 8, !tbaa !161
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !145
  store ptr %i.k, ptr %i.b, align 8, !tbaa !165
  store ptr %0, ptr %i.c, align 8, !tbaa !166
  store i32 1, ptr %i.g, align 4, !tbaa !167
  br label %expect_quic_as.exit

bb.f:                                             ; preds = %bb.c
  store ptr %0, ptr %4, align 8, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !168
  %i.n = shufflevector <2 x ptr> %i.m, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.n, ptr %i.b, align 8, !tbaa !168
  store ptr %0, ptr %i.d, align 8, !tbaa !138
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128  ; 2 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !134
  br label %expect_quic_as.exit

bb.g:                                             ; preds = %bb.c
  store ptr %0, ptr %4, align 8, !tbaa !161
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !140  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !168
  %i.u = shufflevector <2 x ptr> %i.t, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.u, ptr %i.b, align 8, !tbaa !168
  store ptr %i.r, ptr %i.d, align 8, !tbaa !138
  store ptr %0, ptr %i.e, align 8, !tbaa !134
  store i32 1, ptr %i.f, align 8, !tbaa !133
  br label %expect_quic_as.exit

bb.h:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 368, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786691, ptr noundef null)
  br label %expect_quic_as.exit.thread

expect_quic_as.exit:                              ; preds = %bb.g, %bb.f, %bb.e
  %i.v = phi ptr [ %0, %bb.g ], [ %i.p, %bb.f ], [ null, %bb.e ] ; 5 uses
  %.not26 = phi i1 [ false, %bb.g ], [ true, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.w = phi ptr [ %i.r, %bb.g ], [ %0, %bb.f ], [ null, %bb.e ] ; 7 uses
  %.not24 = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.e ] ; 4 uses
  switch i32 %1, label %bb.ab [
    i32 33, label %bb.i
    i32 78, label %bb.p
    i32 16, label %bb.w
    i32 73, label %bb.z
    i32 74, label %bb.aa
    i32 40, label %expect_quic_as.exit.thread
    i32 41, label %expect_quic_as.exit.thread
    i32 52, label %expect_quic_as.exit.thread
    i32 125, label %expect_quic_as.exit.thread
    i32 126, label %expect_quic_as.exit.thread
  ]

bb.i:                                             ; preds = %expect_quic_as.exit
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %4, ptr nonnull poison, i32 noundef 1622, ptr noundef nonnull @__func__.ossl_quic_ctrl, i32 noundef 524556, ptr noundef null)
  br label %expect_quic_as.exit.thread

bb.k:                                             ; preds = %bb.i
  br i1 %.not26, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = trunc i64 %2 to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 344 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !123
  %i.aa = or i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !123
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not30 = icmp eq ptr %i.v, null
  br i1 %.not30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = and i8 %i.ac, 4
  %.not31 = icmp eq i8 %i.ad, 0
  %i.ae = and i64 %2, 4294967294
  %spec.select = select i1 %.not31, i64 %2, i64 %i.ae
  %i.af = trunc i64 %spec.select to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 168 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !179
  %i.ai = or i32 %i.ah, %i.af                     ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !179
  %i.aj = zext i32 %i.ai to i64
  br label %expect_quic_as.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 344
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !123
  %i.am = zext i32 %i.al to i64
  br label %expect_quic_as.exit.thread

bb.p:                                             ; preds = %expect_quic_as.exit
  br i1 %.not24, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %4, ptr nonnull poison, i32 noundef 1644, ptr noundef nonnull @__func__.ossl_quic_ctrl, i32 noundef 524556, ptr noundef null)
  br label %expect_quic_as.exit.thread

bb.r:                                             ; preds = %bb.p
  br i1 %.not26, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = trunc i64 %2 to i32
  %i.ao = xor i32 %i.an, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 344 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !123
  %i.ar = and i32 %i.aq, %i.ao
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !123
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not27 = icmp eq ptr %i.v, null
  br i1 %.not27, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = trunc i64 %2 to i32
end_hunk_0
begin_hunk_1_@ossl_quic_get_error:bb.a
  %.sroa.11.0 = phi ptr [ %0, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %.sroa.15.0 = phi ptr [ %i.d, %bb.d ], [ %0, %bb.e ]
  %.not3 = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %i.g = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.h = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  tail call void @ossl_crypto_mutex_lock(ptr noundef %i.h) #10
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 160
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117
  %i.k = tail call i32 @ossl_quic_channel_net_error(ptr noundef %i.j) #10
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.15.0, i64 184
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 376
  %spec.select15 = select i1 %.not3, ptr %i.m, ptr %i.l
  %i.n = load i32, ptr %spec.select15, align 8, !tbaa !5
  %.val5.val = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.o = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val5.val) #10
  tail call void @ossl_crypto_mutex_unlock(ptr noundef %i.o) #10
  %.not4 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not4, i32 %i.n, i32 5
  br label %is_quic_cs.exit.thread

is_quic_cs.exit.thread:                           ; preds = %bb.f, %bb.b, %bb.c, %bb.c, %is_quic_cs.exit
  %.0 = phi i32 [ %spec.select, %is_quic_cs.exit ], [ 1, %bb.c ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.f ]
  ret i32 %.0
}

declare i32 @ossl_quic_channel_net_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 9) i32 @ossl_quic_want(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.qctx_st, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !161
  %i.b = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.c = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !133
  %.not2 = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 376
  %.in = select i1 %.not2, ptr %i.k, ptr %i.h
  %i.l = load i32, ptr %.in, align 8, !tbaa !5
  %switch.tableidx = add i32 %i.l, -2             ; 2 uses
  %i.m = icmp ult i32 %switch.tableidx, 11
  br i1 %i.m, label %switch.lookup, label %error_to_want.exit

switch.lookup:                                    ; preds = %bb.b
  %i.n = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.ossl_quic_want, i64 %i.n
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %error_to_want.exit

error_to_want.exit:                               ; preds = %switch.lookup, %bb.b
  %.0.i = phi i32 [ 1, %bb.b ], [ %switch.load, %switch.lookup ]
  %.val3 = load ptr, ptr %1, align 8, !tbaa !161
  %i.o = getelementptr i8, ptr %.val3, i64 88
  %.val3.val = load ptr, ptr %i.o, align 8, !tbaa !147
  %i.p = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val3.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.p) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %error_to_want.exit
  %.0 = phi i32 [ %.0.i, %error_to_want.exit ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_write_flags(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef initializes((0, 8)) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.quic_write_again_args, align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %struct.qctx_st, align 8            ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 0, ptr %4, align 8, !tbaa !173
  %i.b = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 3)
  %.not26 = icmp eq i32 %i.c, 0
  br i1 %.not26, label %bb.aq, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %6, align 8, !tbaa !161
  %i.d = getelementptr i8, ptr %.val.i, i64 88
  %.val.val.i = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.e = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 1, ptr %i.f, align 4, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !133
  %.not9.i.i = icmp eq i32 %i.h, 0
  br i1 %.not9.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i, label %qctx_lock_for_io.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  store i32 0, ptr %i.k, align 8, !tbaa !135
  br label %qctx_lock_for_io.exit

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !138  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.m, null
  br i1 %.not12.i.i, label %qctx_lock_for_io.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 376
  store i32 0, ptr %i.n, align 8, !tbaa !127
  br label %qctx_lock_for_io.exit

bb.h:                                             ; preds = %bb.a
  %i.o = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 106)
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.aq, label %qctx_lock_for_io.exit

qctx_lock_for_io.exit:                            ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134  ; 2 uses
  %.not27 = icmp eq ptr %i.q, null
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %qctx_lock_for_io.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.s = load i32, ptr %i.r, align 8, !tbaa !179
  %i.t = and i32 %i.s, 1
  %i.u = icmp eq i32 %i.t, 0
  br label %bb.j

bb.j:                                             ; preds = %qctx_lock_for_io.exit, %bb.i
  %.not33 = phi i1 [ %i.u, %bb.i ], [ true, %qctx_lock_for_io.exit ]
  %i.v = and i64 %3, 4294967294
  %.not28 = icmp eq i64 %i.v, 0
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %6, ptr nonnull poison, i32 noundef 2831, ptr noundef nonnull @__func__.ossl_quic_write_flags, i32 noundef 412, ptr noundef null)
  br label %bb.ap

bb.l:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !138  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 336
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = and i16 %i.z, 32
  %.not.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.ad = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.ac) #10
  %.not4.i = icmp eq i32 %i.ad, 0
  br i1 %.not4.i, label %quic_mutation_allowed.exit, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %6, ptr nonnull poison, i32 noundef 2836, ptr noundef nonnull @__func__.ossl_quic_write_flags, i32 noundef 207, ptr noundef null)
  br label %bb.ap

quic_mutation_allowed.exit:                       ; preds = %bb.m
  %i.ae = call fastcc i32 @quic_do_handshake(ptr noundef %6)
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.ap, label %bb.o

bb.o:                                             ; preds = %quic_mutation_allowed.exit
  br i1 %i.b, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !134 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.sink.split.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 128 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !149 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.sink.split.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 256
  %i.am = load i64, ptr %i.al, align 8
  %7 = trunc i64 %i.am to i16
  %8 = add i16 %7, -256
  %9 = lshr i16 %8, 8
  %trunc.i = trunc nuw i16 %9 to i8
  switch i8 %trunc.i, label %.sink.split.i [
    i8 5, label %bb.v
    i8 0, label %bb.s
    i8 1, label %bb.t
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !140
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !117
  %i.ar = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.aq) #10
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !149
  %i.at = call i32 @ossl_quic_stream_map_ensure_send_part_id(ptr noundef %i.ar, ptr noundef %i.as) #10
  %.not.i38 = icmp eq i32 %i.at, 0
  br i1 %.not.i38, label %.sink.split.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load ptr, ptr %i.ai, align 8, !tbaa !149
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i, %bb.r, %bb.r
  %i.au = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.aj, %bb.r ], [ %i.aj, %bb.r ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !150
  %i.ax = call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.aw, ptr noundef null) #10
  %.not15.i = icmp eq i32 %i.ax, 0
  br i1 %.not15.i, label %quic_validate_for_write.exit, label %.sink.split.i

bb.u:                                             ; preds = %bb.r
  br label %.sink.split.i

bb.v:                                             ; preds = %bb.r, %bb.r
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p
  %.045.ph = phi i32 [ 375, %bb.v ], [ 786691, %bb.q ], [ 786691, %bb.p ], [ 366, %bb.r ], [ 786691, %bb.s ], [ 365, %bb.u ], [ 365, %bb.t ]
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %6, ptr nonnull poison, i32 noundef 2851, ptr noundef nonnull @__func__.ossl_quic_write_flags, i32 noundef %.045.ph, ptr noundef null)
  br label %bb.ap

bb.w:                                             ; preds = %bb.o
  %i.ay = and i64 %3, 1
  %.not34 = icmp eq i64 %i.ay, 0
  br i1 %.not34, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !134
  %.val35 = load ptr, ptr %6, align 8, !tbaa !161
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.0.i39 = phi ptr [ %.val35, %bb.x ], [ %i.bg, %bb.z ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i39, i64 112
  %i.bb = load i8, ptr %i.ba, align 8
  %i.bc = lshr i8 %i.bb, 5
  %i.bd = and i8 %i.bc, 3                         ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.z, label %qctx_should_autotick.exit

bb.z:                                             ; preds = %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i39, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !169 ; 2 uses
  %.not.i40 = icmp eq ptr %i.bg, null
  br i1 %.not.i40, label %qctx_should_autotick.exit, label %bb.y, !llvm.loop !177

qctx_should_autotick.exit:                        ; preds = %bb.y, %bb.z
  %i.bh = icmp ne i8 %i.bd, 2
  %i.bi = zext i1 %i.bh to i32
  call fastcc void @quic_post_write(ptr noundef %i.az, i32 noundef 0, i32 noundef 1, i64 noundef %3, i32 noundef %i.bi)
  br label %bb.ap

quic_validate_for_write.exit:                     ; preds = %bb.t
  %.val = load ptr, ptr %6, align 8, !tbaa !161
  %i.bj = call i32 @ossl_quic_obj_blocking(ptr noundef %.val) #10
  %.not32 = icmp eq i32 %i.bj, 0
  br i1 %.not32, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %quic_validate_for_write.exit
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !134 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !173
  %i.bl = call fastcc i32 @xso_sstream_append(ptr noundef %i.bk, ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef nonnull %i.a)
  %.not.i41 = icmp eq i32 %i.bl, 0
  br i1 %.not.i41, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i64 0, ptr %4, align 8, !tbaa !173
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %6, ptr nonnull poison, i32 noundef 2580, ptr noundef nonnull @__func__.quic_write_blocking, i32 noundef 786691, ptr noundef null)
  br label %quic_write_blocking.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !173 ; 2 uses
  %.not26.i = icmp eq i64 %i.bm, 0
  %i.bn = icmp ne i64 %i.bm, %2
  br i1 %.not26.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !140
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !117
  %i.bs = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.br) #10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !149
  call void @ossl_quic_stream_map_update_state(ptr noundef %i.bs, ptr noundef %i.bu) #10
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bv = and i64 %3, 1
  %.not8.i.i = icmp eq i64 %i.bv, 0
  %or.cond.i.i = or i1 %.not8.i.i, %i.bn
  br i1 %or.cond.i.i, label %quic_post_write.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !149
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 112
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !150
  call void @ossl_quic_sstream_fin(ptr noundef %i.bz) #10
  br label %quic_post_write.exit.i

quic_post_write.exit.i:                           ; preds = %bb.af, %bb.ae
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 120 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !140
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 160
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !117
  %i.ce = call ptr @ossl_quic_channel_get_reactor(ptr noundef %i.cd) #10
  %i.cf = call i32 @ossl_quic_reactor_tick(ptr noundef %i.ce, i32 noundef 0) #10 ; 0 uses
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !173 ; 4 uses
  store i64 %i.cg, ptr %4, align 8, !tbaa !173
  %i.ch = icmp eq i64 %i.cg, %2
  br i1 %i.ch, label %quic_write_blocking.exit, label %bb.ag

bb.ag:                                            ; preds = %quic_post_write.exit.i
  store ptr %i.bk, ptr %5, align 8, !tbaa !186
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !188
  %i.ck = sub i64 %2, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !189
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 0, ptr %i.cm, align 8, !tbaa !190
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 786691, ptr %i.cn, align 8, !tbaa !191
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %3, ptr %i.co, align 8, !tbaa !192
  %.val.i42 = load ptr, ptr %6, align 8, !tbaa !161
  %i.cp = getelementptr i8, ptr %.val.i42, i64 88
  %.val.val.i43 = load ptr, ptr %i.cp, align 8, !tbaa !147 ; 2 uses
  call void @ossl_quic_engine_set_inhibit_tick(ptr noundef %.val.val.i43, i32 noundef 0) #10
  %i.cq = call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.val.val.i43) #10
  %i.cr = call i32 @ossl_quic_reactor_block_until_pred(ptr noundef %i.cq, ptr noundef nonnull @quic_write_again, ptr noundef nonnull %5, i32 noundef 0) #10
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.ct = load ptr, ptr %i.ca, align 8, !tbaa !140 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 336
  %i.cv = load i16, ptr %i.cu, align 8
  %i.cw = and i16 %i.cv, 32
  %.not.i23.i = icmp eq i16 %i.cw, 0
  br i1 %.not.i23.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 160 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !117
  %i.cz = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.cy) #10
  %.not4.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not4.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !117
  %i.db = call i32 @ossl_quic_channel_is_active(ptr noundef %i.da) #10
  %.not6.i.i = icmp eq i32 %i.db, 0
  br i1 %.not6.i.i, label %bb.ak, label %quic_mutation_allowed.exit.i

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %6, ptr nonnull poison, i32 noundef 2610, ptr noundef nonnull @__func__.quic_write_blocking, i32 noundef 207, ptr noundef null)
  br label %quic_write_blocking.exit

quic_mutation_allowed.exit.i:                     ; preds = %bb.aj
  %i.dc = load i32, ptr %i.cn, align 8, !tbaa !191
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %6, ptr nonnull poison, i32 noundef 2612, ptr noundef nonnull @__func__.quic_write_blocking, i32 noundef %i.dc, ptr noundef null)
  br label %quic_write_blocking.exit

bb.al:                                            ; preds = %bb.ag
  %i.dd = load i64, ptr %i.cm, align 8, !tbaa !190
  %i.de = load i64, ptr %4, align 8, !tbaa !173
  %i.df = add i64 %i.de, %i.dd
  store i64 %i.df, ptr %4, align 8, !tbaa !173
  br label %quic_write_blocking.exit

quic_write_blocking.exit:                         ; preds = %bb.ab, %quic_post_write.exit.i, %bb.ak, %quic_mutation_allowed.exit.i, %bb.al
  %.0.i44 = phi i32 [ 0, %bb.ab ], [ 0, %quic_mutation_allowed.exit.i ], [ 0, %bb.ak ], [ 1, %bb.al ], [ 1, %quic_post_write.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.ap

bb.am:                                            ; preds = %quic_validate_for_write.exit
  br i1 %.not33, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
end_hunk_1
begin_hunk_2_@quic_write_nonblocking_aon:bb.a
  br i1 %.not9.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !134 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.bj, null
  br i1 %.not10.i.i, label %quic_raise_normal_error.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 184
  store i32 3, ptr %i.bk, align 8, !tbaa !135
  br label %quic_raise_normal_error.exit

bb.y:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !138 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.bm, null
  br i1 %.not12.i.i, label %quic_raise_normal_error.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 376
  store i32 3, ptr %i.bn, align 8, !tbaa !127
  br label %quic_raise_normal_error.exit

bb.aa:                                            ; preds = %bb.t
  %.not47 = icmp eq i64 %i.at, 0
  br i1 %.not47, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = or disjoint i8 %i.av, 4
  store i8 %i.bo, ptr %i.d, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr %1, ptr %i.bp, align 8, !tbaa !193
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store i64 %i.at, ptr %i.bq, align 8, !tbaa !195
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i64 %2, ptr %i.br, align 8, !tbaa !194
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store i64 0, ptr %4, align 8, !tbaa !173
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !130
  %.not.i.i50 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i50, label %quic_raise_normal_error.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !133
  %.not9.i.i51 = icmp eq i32 %i.bv, 0
  br i1 %.not9.i.i51, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !134 ; 2 uses
  %.not10.i.i52 = icmp eq ptr %i.bw, null
  br i1 %.not10.i.i52, label %quic_raise_normal_error.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 184
  store i32 3, ptr %i.bx, align 8, !tbaa !135
  br label %quic_raise_normal_error.exit

bb.ag:                                            ; preds = %bb.ad
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !138 ; 2 uses
  %.not12.i.i53 = icmp eq ptr %i.bz, null
  br i1 %.not12.i.i53, label %quic_raise_normal_error.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 376
  store i32 3, ptr %i.ca, align 8, !tbaa !127
  br label %quic_raise_normal_error.exit

quic_raise_normal_error.exit:                     ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.r, %bb.s, %bb.h, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.h ], [ 1, %bb.r ], [ 0, %bb.z ], [ 1, %bb.s ], [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_write(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef initializes((0, 8)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_quic_write_flags(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 0, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_read(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef initializes((0, 8)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @quic_read(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @quic_read(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef initializes((0, 8)) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.qctx_st, align 8            ; 23 uses
  %6 = alloca %struct.quic_read_again_args, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i64 0, ptr %3, align 8, !tbaa !173
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %5, align 8, !tbaa !161
  %i.b = getelementptr i8, ptr %.val.i, i64 88
  %.val.val.i = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.c = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !133
  %.not9.i.i = icmp eq i32 %i.f, 0
  br i1 %.not9.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i, label %qctx_lock_for_io.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i32 0, ptr %i.i, align 8, !tbaa !135
  br label %qctx_lock_for_io.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.k, null
  br i1 %.not12.i.i, label %qctx_lock_for_io.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 376
  store i32 0, ptr %i.l, align 8, !tbaa !127
  br label %qctx_lock_for_io.exit

qctx_lock_for_io.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.m = call fastcc i32 @quic_do_handshake(ptr noundef %5)
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %qctx_maybe_autotick.exit, label %bb.g

bb.g:                                             ; preds = %qctx_lock_for_io.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = call fastcc i32 @qc_wait_for_default_xso_for_read(ptr noundef %5, i32 noundef 0)
  %.not21 = icmp eq i32 %i.r, 0
  br i1 %.not21, label %qctx_maybe_autotick.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !128  ; 2 uses
  store ptr %i.v, ptr %i.o, align 8, !tbaa !134
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.w = phi ptr [ %i.v, %bb.i ], [ %i.p, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !149
  %i.z = call fastcc i32 @quic_read_actual(ptr noundef nonnull %5, ptr noundef %i.y, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3, i32 noundef %4)
  %.not22 = icmp eq i32 %i.z, 0
  br i1 %.not22, label %qctx_maybe_autotick.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %3, align 8, !tbaa !173
  %.not23 = icmp eq i64 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !138 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 336
  %i.ae = load i16, ptr %i.ad, align 8
  %i.af = and i16 %i.ae, 32
  %.not.i33 = icmp eq i16 %i.af, 0                ; 2 uses
  br i1 %.not23, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not.i33, label %bb.m, label %qctx_maybe_autotick.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !117
  %i.ai = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.ah) #10
  %.not4.i = icmp eq i32 %i.ai, 0
  br i1 %.not4.i, label %quic_mutation_allowed.exit, label %qctx_maybe_autotick.exit

quic_mutation_allowed.exit:                       ; preds = %bb.m
  %.val30 = load ptr, ptr %5, align 8, !tbaa !161 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %quic_mutation_allowed.exit
  %.0.i.i = phi ptr [ %.val30, %quic_mutation_allowed.exit ], [ %i.an, %bb.o ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = and i8 %i.ak, 96
  switch i8 %i.al, label %qctx_should_autotick.exit.thread.i [
    i8 0, label %bb.o
    i8 64, label %qctx_maybe_autotick.exit
  ]

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !169 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %qctx_should_autotick.exit.thread.i, label %bb.n, !llvm.loop !177

qctx_should_autotick.exit.thread.i:               ; preds = %bb.o, %bb.n
  %i.ao = getelementptr i8, ptr %.val30, i64 88
  %.val2.i = load ptr, ptr %i.ao, align 8, !tbaa !147
  %i.ap = call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.val2.i) #10
  %i.aq = call i32 @ossl_quic_reactor_tick(ptr noundef %i.ap, i32 noundef 0) #10 ; 0 uses
  br label %qctx_maybe_autotick.exit

bb.p:                                             ; preds = %bb.k
  br i1 %.not.i33, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !117
  %i.at = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.as) #10
  %.not4.i35 = icmp eq i32 %i.at, 0
  br i1 %.not4.i35, label %quic_mutation_allowed.exit36, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %5, ptr nonnull poison, i32 noundef 3072, ptr noundef nonnull @__func__.quic_read, i32 noundef 207, ptr noundef null)
  br label %qctx_maybe_autotick.exit

quic_mutation_allowed.exit36:                     ; preds = %bb.q
  %.val = load ptr, ptr %5, align 8, !tbaa !161
  %i.au = call i32 @ossl_quic_obj_blocking(ptr noundef %.val) #10
  %.not25 = icmp eq i32 %i.au, 0
  br i1 %.not25, label %bb.v, label %bb.s

bb.s:                                             ; preds = %quic_mutation_allowed.exit36
  store ptr %5, ptr %6, align 8, !tbaa !196
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !149
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !199
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.az, align 8, !tbaa !200
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %2, ptr %i.ba, align 8, !tbaa !201
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %3, ptr %i.bb, align 8, !tbaa !202
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %4, ptr %i.bc, align 8, !tbaa !203
  %.val31 = load ptr, ptr %5, align 8, !tbaa !161
  %i.bd = getelementptr i8, ptr %.val31, i64 88
  %.val31.val = load ptr, ptr %i.bd, align 8, !tbaa !147 ; 2 uses
  call void @ossl_quic_engine_set_inhibit_tick(ptr noundef %.val31.val, i32 noundef 0) #10
  %i.be = call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.val31.val) #10
  %i.bf = call i32 @ossl_quic_reactor_block_until_pred(ptr noundef %i.be, ptr noundef nonnull @quic_read_again, ptr noundef nonnull %6, i32 noundef 0) #10 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %5, ptr nonnull poison, i32 noundef 3089, ptr noundef nonnull @__func__.quic_read, i32 noundef 786691, ptr noundef null)
  br label %qctx_maybe_autotick.exit

bb.u:                                             ; preds = %bb.s
  %i.bh = icmp sgt i32 %i.bf, -1
  %. = zext i1 %i.bh to i32
  br label %qctx_maybe_autotick.exit

bb.v:                                             ; preds = %quic_mutation_allowed.exit36
  %.val29 = load ptr, ptr %5, align 8, !tbaa !161
  call fastcc void @qctx_maybe_autotick(ptr %.val29)
  %i.bi = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !149
  %i.bl = call fastcc i32 @quic_read_actual(ptr noundef nonnull %5, ptr noundef %i.bk, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3, i32 noundef %4)
  %.not26 = icmp eq i32 %i.bl, 0
  br i1 %.not26, label %qctx_maybe_autotick.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = load i64, ptr %3, align 8, !tbaa !173
  %.not27 = icmp eq i64 %i.bm, 0
  br i1 %.not27, label %bb.x, label %qctx_maybe_autotick.exit

bb.x:                                             ; preds = %bb.w
  %i.bn = load i32, ptr %i.d, align 4, !tbaa !130
  %.not.i.i37 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i37, label %qctx_maybe_autotick.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = load i32, ptr %i.e, align 8, !tbaa !133
  %.not9.i.i38 = icmp eq i32 %i.bo, 0
  br i1 %.not9.i.i38, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !134 ; 2 uses
  %.not10.i.i39 = icmp eq ptr %i.bp, null
  br i1 %.not10.i.i39, label %qctx_maybe_autotick.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 184
  store i32 2, ptr %i.bq, align 8, !tbaa !135
  br label %qctx_maybe_autotick.exit

bb.ab:                                            ; preds = %bb.y
  %i.br = load ptr, ptr %i.ab, align 8, !tbaa !138 ; 2 uses
  %.not12.i.i40 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i40, label %qctx_maybe_autotick.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 376
  store i32 2, ptr %i.bs, align 8, !tbaa !127
  br label %qctx_maybe_autotick.exit

qctx_maybe_autotick.exit:                         ; preds = %bb.n, %bb.m, %bb.l, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x, %qctx_should_autotick.exit.thread.i, %bb.w, %bb.v, %bb.u, %bb.j, %bb.h, %qctx_lock_for_io.exit, %bb.t, %bb.r
  %.019 = phi i32 [ 0, %qctx_lock_for_io.exit ], [ 0, %bb.j ], [ 0, %bb.t ], [ %., %bb.u ], [ 0, %bb.ac ], [ 0, %bb.v ], [ 1, %qctx_should_autotick.exit.thread.i ], [ 1, %bb.w ], [ 0, %bb.r ], [ 0, %bb.h ], [ 1, %bb.m ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 1, %bb.l ], [ 1, %bb.n ]
  %.val32 = load ptr, ptr %5, align 8, !tbaa !161
  %i.bt = getelementptr i8, ptr %.val32, i64 88
  %.val32.val = load ptr, ptr %i.bt, align 8, !tbaa !147
  %i.bu = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val32.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.bu) #10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %qctx_maybe_autotick.exit
  %.0 = phi i32 [ %.019, %qctx_maybe_autotick.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_peek(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef initializes((0, 8)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @quic_read(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ossl_quic_pending(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @ossl_quic_pending_int(ptr noundef %0, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @ossl_quic_pending_int(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %2 = alloca %struct.qctx_st, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.e = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 3)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !161
  %i.f = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.f, align 8, !tbaa !147
  %i.g = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.g) #10
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !138  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  %i.k = load i16, ptr %i.j, align 8
  %i.l = and i16 %i.k, 1
  %.not5 = icmp eq i16 %i.l, 0
  br i1 %.not5, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = call fastcc i32 @qc_wait_for_default_xso_for_read(ptr noundef %2, i32 noundef 1)
  %.not6 = icmp eq i32 %i.p, 0
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !138  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128  ; 2 uses
  store ptr %i.s, ptr %i.m, align 8, !tbaa !134
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %2, ptr nonnull poison, i32 noundef 3155, ptr noundef nonnull @__func__.ossl_quic_pending_int, i32 noundef 355, ptr noundef null)
  br label %bb.p

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.t = phi ptr [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  %i.u = phi ptr [ %i.s, %bb.e ], [ %i.n, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !149  ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %2, ptr nonnull poison, i32 noundef 3161, ptr noundef nonnull @__func__.ossl_quic_pending_int, i32 noundef 786691, ptr noundef null)
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %.not7 = icmp eq i32 %1, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 256 ; 2 uses
  br i1 %.not7, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !5
  %i.z = load i64, ptr %i.y, align 8
  %3 = trunc i64 %i.z to i32
  %4 = and i32 %3, 16711680
  %5 = add nsw i32 %4, -65536
  %6 = lshr exact i32 %5, 16
  %trunc.i = trunc nuw i32 %6 to i16
  switch i16 %trunc.i, label %ossl_quic_stream_recv_pending.exit.thread19 [
    i16 4, label %ossl_quic_stream_recv_pending.exit.thread
    i16 0, label %bb.k
    i16 1, label %bb.k
    i16 2, label %bb.k
  ]

ossl_quic_stream_recv_pending.exit.thread19:      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !163
  %i.ac = call i32 @ossl_quic_rstream_available(ptr noundef %i.ab, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10
  %.not.i = icmp eq i32 %i.ac, 0
  %.pre.i = load i64, ptr %i.c, align 8
  %i.ad = select i1 %.not.i, i64 0, i64 %.pre.i   ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = load i32, ptr %i.d, align 4
  %i.ag = icmp ne i32 %i.af, 0
  %or.cond3.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond3.i, label %ossl_quic_stream_recv_pending.exit.thread, label %ossl_quic_stream_recv_pending.exit

ossl_quic_stream_recv_pending.exit.thread:        ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.p

ossl_quic_stream_recv_pending.exit:               ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.ah = and i64 %i.ad, 4294967295
  %.not8 = icmp eq i64 %i.ah, 0
  br i1 %.not8, label %ossl_quic_stream_recv_pending.exit._crit_edge, label %bb.p

ossl_quic_stream_recv_pending.exit._crit_edge:    ; preds = %ossl_quic_stream_recv_pending.exit
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !138
  br label %bb.l

bb.l:                                             ; preds = %ossl_quic_stream_recv_pending.exit._crit_edge, %ossl_quic_stream_recv_pending.exit.thread19
  %i.ai = phi ptr [ %.pre, %ossl_quic_stream_recv_pending.exit._crit_edge ], [ %i.t, %ossl_quic_stream_recv_pending.exit.thread19 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !117
  %i.al = call i32 @ossl_quic_channel_has_pending(ptr noundef %i.ak) #10
  %.not9 = icmp eq i32 %i.al, 0
  br i1 %.not9, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !117
  %i.ap = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.ao) #10
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i64
  br label %bb.p

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.as = load i64, ptr %i.y, align 8
  %7 = trunc i64 %i.as to i32
  %8 = and i32 %7, 16711680
  %9 = add nsw i32 %8, -65536
  %switch = icmp ult i32 %9, 196608
  br i1 %switch, label %bb.o, label %ossl_quic_stream_recv_pending.exit16

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !163
  %i.av = call i32 @ossl_quic_rstream_available(ptr noundef %i.au, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %.not.i12 = icmp eq i32 %i.av, 0
  %.pre.i13 = load i64, ptr %i.a, align 8
  %i.aw = shl i64 %.pre.i13, 32
  %i.ax = ashr exact i64 %i.aw, 32
  %i.ay = select i1 %.not.i12, i64 0, i64 %i.ax
  br label %ossl_quic_stream_recv_pending.exit16

ossl_quic_stream_recv_pending.exit16:             ; preds = %bb.n, %bb.o
  %.0.i15 = phi i64 [ 0, %bb.n ], [ %i.ay, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.p

bb.p:                                             ; preds = %ossl_quic_stream_recv_pending.exit.thread, %ossl_quic_stream_recv_pending.exit, %bb.l, %bb.m, %ossl_quic_stream_recv_pending.exit16, %bb.b, %bb.h, %bb.f
  %.0 = phi i64 [ 0, %bb.h ], [ 0, %bb.b ], [ %.0.i15, %ossl_quic_stream_recv_pending.exit16 ], [ 0, %bb.f ], [ 1, %bb.l ], [ 1, %ossl_quic_stream_recv_pending.exit ], [ %i.ar, %bb.m ], [ 1, %ossl_quic_stream_recv_pending.exit.thread ]
  %.val10 = load ptr, ptr %2, align 8, !tbaa !161
  %i.az = getelementptr i8, ptr %.val10, i64 88
  %.val10.val = load ptr, ptr %i.az, align 8, !tbaa !147
  %i.ba = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val10.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.ba) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p
  %.03 = phi i64 [ %.0, %bb.p ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %.03
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_has_pending(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @ossl_quic_pending_int(ptr noundef %0, i32 noundef 1)
  %i.b = icmp ne i64 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_conn_stream_conclude(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.qctx_st, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 42)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !138  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 32
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.m = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.l) #10
  %.not4.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.o = call i32 @ossl_quic_channel_is_active(ptr noundef %i.n) #10
  %.not6.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i, label %bb.e, label %quic_mutation_allowed.exit

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %1, ptr nonnull poison, i32 noundef 3208, ptr noundef nonnull @__func__.ossl_quic_conn_stream_conclude, i32 noundef 207, ptr noundef null)
  br label %.sink.split

quic_mutation_allowed.exit:                       ; preds = %bb.d
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !134  ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %quic_mutation_allowed.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !149  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.v = load i64, ptr %i.u, align 8
  %2 = trunc i64 %i.v to i16
  %3 = add i16 %2, -256
  %4 = lshr i16 %3, 8
  %trunc.i = trunc nuw i16 %4 to i8
  switch i8 %trunc.i, label %.sink.split.i [
    i8 5, label %bb.k
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !140
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !117
  %i.aa = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.z) #10
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !149
  %i.ac = call i32 @ossl_quic_stream_map_ensure_send_part_id(ptr noundef %i.aa, ptr noundef %i.ab) #10
  %.not.i13 = icmp eq i32 %i.ac, 0
  br i1 %.not.i13, label %.sink.split.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !149
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %bb.g, %bb.g
  %i.ad = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.s, %bb.g ], [ %i.s, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !150
  %i.ag = call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.af, ptr noundef null) #10
  %.not15.i = icmp eq i32 %i.ag, 0
  br i1 %.not15.i, label %quic_validate_for_write.exit, label %.sink.split.i

bb.j:                                             ; preds = %bb.g
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.g, %bb.g
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %quic_mutation_allowed.exit
  %.016.ph = phi i32 [ 375, %bb.k ], [ 786691, %bb.f ], [ 786691, %quic_mutation_allowed.exit ], [ 366, %bb.g ], [ 786691, %bb.h ], [ 365, %bb.j ], [ 365, %bb.i ]
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %1, ptr nonnull poison, i32 noundef 3214, ptr noundef nonnull @__func__.ossl_quic_conn_stream_conclude, i32 noundef %.016.ph, ptr noundef null)
  br label %.sink.split

quic_validate_for_write.exit:                     ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !150
  %i.aj = call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.ai, ptr noundef null) #10
  %.not7 = icmp eq i32 %i.aj, 0
  br i1 %.not7, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %quic_validate_for_write.exit
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !150
  call void @ossl_quic_sstream_fin(ptr noundef %i.ak) #10
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !134 ; 2 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !161
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.0.i14 = phi ptr [ %.val, %bb.l ], [ %i.as, %bb.n ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i14, i64 112
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = lshr i8 %i.an, 5
  %i.ap = and i8 %i.ao, 3                         ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %qctx_should_autotick.exit

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i14, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !169 ; 2 uses
  %.not.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i15, label %qctx_should_autotick.exit, label %bb.m, !llvm.loop !177

qctx_should_autotick.exit:                        ; preds = %bb.m, %bb.n
  %.not23 = icmp eq i8 %i.ap, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 120 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !140
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !117
  %i.ax = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.aw) #10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !149
  call void @ossl_quic_stream_map_update_state(ptr noundef %i.ax, ptr noundef %i.az) #10
  br i1 %.not23, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %qctx_should_autotick.exit
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !140
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !117
  %i.bd = call ptr @ossl_quic_channel_get_reactor(ptr noundef %i.bc) #10
  %i.be = call i32 @ossl_quic_reactor_tick(ptr noundef %i.bd, i32 noundef 0) #10 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %qctx_should_autotick.exit, %quic_validate_for_write.exit, %bb.e, %.sink.split.i
  %.0.ph = phi i32 [ 0, %bb.e ], [ 0, %.sink.split.i ], [ 1, %quic_validate_for_write.exit ], [ 1, %qctx_should_autotick.exit ], [ 1, %bb.o ]
  %.val8 = load ptr, ptr %1, align 8, !tbaa !161
  %i.bf = getelementptr i8, ptr %.val8, i64 88
  %.val8.val = load ptr, ptr %i.bf, align 8, !tbaa !147
  %i.bg = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val8.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.bg) #10
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %.0
}

declare void @ossl_quic_sstream_fin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SSL_inject_net_dgram(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.qctx_st, align 8            ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.g = icmp eq ptr %0, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 277, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786690, ptr noundef null)
  br label %expect_quic_as.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr %0, align 8, !tbaa !65
  switch i32 %i.h, label %bb.h [
    i32 131, label %bb.d
    i32 130, label %bb.e
    i32 128, label %bb.f
    i32 129, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 225, ptr noundef nonnull @__func__.wrong_type, i32 noundef 524556, ptr noundef null)
  br label %expect_quic_as.exit.thread

bb.e:                                             ; preds = %bb.c
  store ptr %0, ptr %5, align 8, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !145
  store ptr %i.j, ptr %i.a, align 8, !tbaa !165
  store ptr %0, ptr %i.b, align 8, !tbaa !166
  store i32 1, ptr %i.f, align 4, !tbaa !167
  br label %expect_quic_as.exit

bb.f:                                             ; preds = %bb.c
  store ptr %0, ptr %5, align 8, !tbaa !161
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !168
  %i.m = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.m, ptr %i.a, align 8, !tbaa !168
  store ptr %0, ptr %i.c, align 8, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !128
  store ptr %i.o, ptr %i.d, align 8, !tbaa !134
  br label %expect_quic_as.exit

bb.g:                                             ; preds = %bb.c
  store ptr %0, ptr %5, align 8, !tbaa !161
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !tbaa !168
  %i.t = shufflevector <2 x ptr> %i.s, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.t, ptr %i.a, align 8, !tbaa !168
  store ptr %i.q, ptr %i.c, align 8, !tbaa !138
  store ptr %0, ptr %i.d, align 8, !tbaa !134
  store i32 1, ptr %i.e, align 8, !tbaa !133
  br label %expect_quic_as.exit

bb.h:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 368, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786691, ptr noundef null)
  br label %expect_quic_as.exit.thread

expect_quic_as.exit:                              ; preds = %bb.g, %bb.f, %bb.e
  %i.u = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %.val.val = load ptr, ptr %i.u, align 8, !tbaa !147
  %i.v = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  tail call void @ossl_crypto_mutex_lock(ptr noundef %i.v) #10
  %i.w = getelementptr i8, ptr %0, i64 96
  %.val11 = load ptr, ptr %i.w, align 8, !tbaa !164 ; 2 uses
  %i.x = icmp eq ptr %.val11, null
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %expect_quic_as.exit
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %5, ptr nonnull poison, i32 noundef 3252, ptr noundef nonnull @__func__.SSL_inject_net_dgram, i32 noundef 524556, ptr noundef null)
  br label %bb.k

bb.j:                                             ; preds = %expect_quic_as.exit
  %i.y = tail call ptr @ossl_quic_port_get0_demux(ptr noundef nonnull %.val11) #10
  %i.z = tail call i32 @ossl_quic_demux_inject(ptr noundef %i.y, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.09 = phi i32 [ 0, %bb.i ], [ %i.z, %bb.j ]
  %.val12.val = load ptr, ptr %i.u, align 8, !tbaa !147
  %i.aa = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val12.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.aa) #10
  br label %expect_quic_as.exit.thread

expect_quic_as.exit.thread:                       ; preds = %bb.b, %bb.h, %bb.d, %bb.k
  %.0 = phi i32 [ %.09, %bb.k ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.b ]
end_hunk_2
begin_hunk_3_@ossl_quic_get_value_uint:bb.a

bb.d:                                             ; preds = %bb.b
  switch i32 %2, label %bb.au [
    i32 5, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.i
    i32 3, label %bb.l
    i32 4, label %bb.o
    i32 6, label %bb.r
    i32 7, label %bb.w
    i32 8, label %bb.ae
    i32 9, label %bb.am
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = call fastcc i32 @qc_getset_idle_timeout(ptr noundef %4, i32 noundef %1, ptr noundef nonnull %3, ptr noundef null)
  br label %qc_get_stream_avail.exit

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3649, ptr noundef nonnull @__func__.qc_get_stream_avail, i32 noundef 415, ptr noundef null)
  br label %qc_get_stream_avail.exit

bb.h:                                             ; preds = %bb.f
  %.val.i = load ptr, ptr %4, align 8, !tbaa !161
  %i.d = getelementptr i8, ptr %.val.i, i64 88
  %.val.val.i = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.e = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !138
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.j = call i64 @ossl_quic_channel_get_local_stream_count_avail(ptr noundef %i.i, i32 noundef 0) #10
  store i64 %i.j, ptr %3, align 8, !tbaa !173
  %.val12.i = load ptr, ptr %4, align 8, !tbaa !161
  %i.k = getelementptr i8, ptr %.val12.i, i64 88
  %.val12.val.i = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.l = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val12.val.i) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.l) #10
  br label %qc_get_stream_avail.exit

bb.i:                                             ; preds = %bb.d
  %.not.i23 = icmp eq i32 %1, 0
  br i1 %.not.i23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3649, ptr noundef nonnull @__func__.qc_get_stream_avail, i32 noundef 415, ptr noundef null)
  br label %qc_get_stream_avail.exit

bb.k:                                             ; preds = %bb.i
  %.val.i25 = load ptr, ptr %4, align 8, !tbaa !161
  %i.m = getelementptr i8, ptr %.val.i25, i64 88
  %.val.val.i26 = load ptr, ptr %i.m, align 8, !tbaa !147
  %i.n = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i26) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.n) #10
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !138
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117
  %i.s = call i64 @ossl_quic_channel_get_remote_stream_count_avail(ptr noundef %i.r, i32 noundef 0) #10
  store i64 %i.s, ptr %3, align 8, !tbaa !173
  %.val12.i27 = load ptr, ptr %4, align 8, !tbaa !161
  %i.t = getelementptr i8, ptr %.val12.i27, i64 88
  %.val12.val.i28 = load ptr, ptr %i.t, align 8, !tbaa !147
  %i.u = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val12.val.i28) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.u) #10
  br label %qc_get_stream_avail.exit

bb.l:                                             ; preds = %bb.d
  %.not.i30 = icmp eq i32 %1, 0
  br i1 %.not.i30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3649, ptr noundef nonnull @__func__.qc_get_stream_avail, i32 noundef 415, ptr noundef null)
  br label %qc_get_stream_avail.exit

bb.n:                                             ; preds = %bb.l
  %.val.i32 = load ptr, ptr %4, align 8, !tbaa !161
  %i.v = getelementptr i8, ptr %.val.i32, i64 88
  %.val.val.i33 = load ptr, ptr %i.v, align 8, !tbaa !147
  %i.w = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i33) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.w) #10
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !138
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !117
  %i.ab = call i64 @ossl_quic_channel_get_local_stream_count_avail(ptr noundef %i.aa, i32 noundef 1) #10
  store i64 %i.ab, ptr %3, align 8, !tbaa !173
  %.val12.i34 = load ptr, ptr %4, align 8, !tbaa !161
  %i.ac = getelementptr i8, ptr %.val12.i34, i64 88
  %.val12.val.i35 = load ptr, ptr %i.ac, align 8, !tbaa !147
  %i.ad = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val12.val.i35) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.ad) #10
  br label %qc_get_stream_avail.exit

bb.o:                                             ; preds = %bb.d
  %.not.i37 = icmp eq i32 %1, 0
  br i1 %.not.i37, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3649, ptr noundef nonnull @__func__.qc_get_stream_avail, i32 noundef 415, ptr noundef null)
  br label %qc_get_stream_avail.exit

bb.q:                                             ; preds = %bb.o
  %.val.i39 = load ptr, ptr %4, align 8, !tbaa !161
  %i.ae = getelementptr i8, ptr %.val.i39, i64 88
  %.val.val.i40 = load ptr, ptr %i.ae, align 8, !tbaa !147
  %i.af = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i40) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.af) #10
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !138
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !117
  %i.ak = call i64 @ossl_quic_channel_get_remote_stream_count_avail(ptr noundef %i.aj, i32 noundef 1) #10
  store i64 %i.ak, ptr %3, align 8, !tbaa !173
  %.val12.i41 = load ptr, ptr %4, align 8, !tbaa !161
  %i.al = getelementptr i8, ptr %.val12.i41, i64 88
  %.val12.val.i42 = load ptr, ptr %i.al, align 8, !tbaa !147
  %i.am = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val12.val.i42) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.am) #10
  br label %qc_get_stream_avail.exit

bb.r:                                             ; preds = %bb.d
  %.val.i44 = load ptr, ptr %4, align 8, !tbaa !161
  %i.an = getelementptr i8, ptr %.val.i44, i64 88
  %.val.val.i45 = load ptr, ptr %i.an, align 8, !tbaa !147
  %i.ao = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i45) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.ao) #10
  %.not.i46 = icmp eq i32 %1, 0                   ; 2 uses
  br i1 %.not.i46, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3699, ptr noundef nonnull @__func__.qc_getset_event_handling, i32 noundef 415, ptr noundef null)
  %.val20.i.pre = load ptr, ptr %4, align 8, !tbaa !161
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %4, align 8, !tbaa !161   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = lshr i8 %i.ar, 5
  %i.at = and i8 %i.as, 3
  %i.au = zext nneg i8 %i.at to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.val20.i = phi ptr [ %.val20.i.pre, %bb.s ], [ %i.ap, %bb.t ]
  %.016.i = phi i32 [ 0, %bb.s ], [ 1, %bb.t ]    ; 2 uses
  %.1.i = phi i64 [ 0, %bb.s ], [ %i.au, %bb.t ]
  %i.av = getelementptr i8, ptr %.val20.i, i64 88
  %.val20.val.i = load ptr, ptr %i.av, align 8, !tbaa !147
  %i.aw = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val20.val.i) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.aw) #10
  br i1 %.not.i46, label %bb.v, label %qc_get_stream_avail.exit

bb.v:                                             ; preds = %bb.u
  store i64 %.1.i, ptr %3, align 8, !tbaa !173
  br label %qc_get_stream_avail.exit

bb.w:                                             ; preds = %bb.d
  %.val.i47 = load ptr, ptr %4, align 8, !tbaa !161
  %i.ax = getelementptr i8, ptr %.val.i47, i64 88
  %.val.val.i48 = load ptr, ptr %i.ax, align 8, !tbaa !147
  %i.ay = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i48) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.ay) #10
  %.not.i49 = icmp eq i32 %1, 0
  br i1 %.not.i49, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3742, ptr noundef nonnull @__func__.qc_get_stream_write_buf_stat, i32 noundef 415, ptr noundef null)
  br label %qc_get_stream_write_buf_stat.exit

bb.y:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !134 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3747, ptr noundef nonnull @__func__.qc_get_stream_write_buf_stat, i32 noundef 355, ptr noundef null)
  br label %qc_get_stream_write_buf_stat.exit

bb.aa:                                            ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !149 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 256
  %.val18.i = load i64, ptr %i.be, align 8        ; 2 uses
  %i.bf = and i64 %.val18.i, 65280
  %.not20.i = icmp eq i64 %i.bf, 0
  br i1 %.not20.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3752, ptr noundef nonnull @__func__.qc_get_stream_write_buf_stat, i32 noundef 366, ptr noundef null)
  br label %qc_get_stream_write_buf_stat.exit

bb.ac:                                            ; preds = %bb.aa
  %5 = trunc i64 %.val18.i to i16
  %trunc.i.i = and i16 %5, -256
  switch i16 %trunc.i.i, label %qc_get_stream_write_buf_stat.exit [
    i16 256, label %bb.ad
    i16 512, label %bb.ad
    i16 768, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !150
  %i.bi = call i64 @ossl_quic_sstream_get_buffer_size(ptr noundef %i.bh) #10, !callees !207, !inline_history !208
  br label %qc_get_stream_write_buf_stat.exit

qc_get_stream_write_buf_stat.exit:                ; preds = %bb.x, %bb.z, %bb.ab, %bb.ac, %bb.ad
  %.013.i = phi i32 [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 1, %bb.ad ], [ 1, %bb.ac ]
  %.1.i50 = phi i64 [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.ab ], [ %i.bi, %bb.ad ], [ 0, %bb.ac ]
  %.val17.i = load ptr, ptr %4, align 8, !tbaa !161
  %i.bj = getelementptr i8, ptr %.val17.i, i64 88
  %.val17.val.i = load ptr, ptr %i.bj, align 8, !tbaa !147
  %i.bk = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val17.val.i) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.bk) #10
  store i64 %.1.i50, ptr %3, align 8, !tbaa !173
  br label %qc_get_stream_avail.exit

bb.ae:                                            ; preds = %bb.d
  %.val.i51 = load ptr, ptr %4, align 8, !tbaa !161
  %i.bl = getelementptr i8, ptr %.val.i51, i64 88
  %.val.val.i52 = load ptr, ptr %i.bl, align 8, !tbaa !147
  %i.bm = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i52) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.bm) #10
  %.not.i53 = icmp eq i32 %1, 0
  br i1 %.not.i53, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3742, ptr noundef nonnull @__func__.qc_get_stream_write_buf_stat, i32 noundef 415, ptr noundef null)
  br label %qc_get_stream_write_buf_stat.exit62

bb.ag:                                            ; preds = %bb.ae
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !134 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3747, ptr noundef nonnull @__func__.qc_get_stream_write_buf_stat, i32 noundef 355, ptr noundef null)
  br label %qc_get_stream_write_buf_stat.exit62

bb.ai:                                            ; preds = %bb.ag
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !149 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 256
  %.val18.i58 = load i64, ptr %i.bs, align 8      ; 2 uses
  %i.bt = and i64 %.val18.i58, 65280
  %.not20.i59 = icmp eq i64 %i.bt, 0
  br i1 %.not20.i59, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3752, ptr noundef nonnull @__func__.qc_get_stream_write_buf_stat, i32 noundef 366, ptr noundef null)
  br label %qc_get_stream_write_buf_stat.exit62

bb.ak:                                            ; preds = %bb.ai
  %6 = trunc i64 %.val18.i58 to i16
  %trunc.i.i60 = and i16 %6, -256
  switch i16 %trunc.i.i60, label %qc_get_stream_write_buf_stat.exit62 [
    i16 256, label %bb.al
    i16 512, label %bb.al
    i16 768, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !150
  %i.bw = call i64 @ossl_quic_sstream_get_buffer_used(ptr noundef %i.bv) #10, !callees !207, !inline_history !208
  br label %qc_get_stream_write_buf_stat.exit62

qc_get_stream_write_buf_stat.exit62:              ; preds = %bb.af, %bb.ah, %bb.aj, %bb.ak, %bb.al
  %.013.i54 = phi i32 [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.aj ], [ 1, %bb.al ], [ 1, %bb.ak ]
  %.1.i55 = phi i64 [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.aj ], [ %i.bw, %bb.al ], [ 0, %bb.ak ]
  %.val17.i56 = load ptr, ptr %4, align 8, !tbaa !161
  %i.bx = getelementptr i8, ptr %.val17.i56, i64 88
  %.val17.val.i57 = load ptr, ptr %i.bx, align 8, !tbaa !147
  %i.by = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val17.val.i57) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.by) #10
  store i64 %.1.i55, ptr %3, align 8, !tbaa !173
  br label %qc_get_stream_avail.exit

bb.am:                                            ; preds = %bb.d
  %.val.i63 = load ptr, ptr %4, align 8, !tbaa !161
  %i.bz = getelementptr i8, ptr %.val.i63, i64 88
  %.val.val.i64 = load ptr, ptr %i.bz, align 8, !tbaa !147
  %i.ca = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i64) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.ca) #10
  %.not.i65 = icmp eq i32 %1, 0
  br i1 %.not.i65, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3742, ptr noundef nonnull @__func__.qc_get_stream_write_buf_stat, i32 noundef 415, ptr noundef null)
  br label %qc_get_stream_write_buf_stat.exit74

bb.ao:                                            ; preds = %bb.am
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !134 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3747, ptr noundef nonnull @__func__.qc_get_stream_write_buf_stat, i32 noundef 355, ptr noundef null)
  br label %qc_get_stream_write_buf_stat.exit74

bb.aq:                                            ; preds = %bb.ao
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !149 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 256
  %.val18.i70 = load i64, ptr %i.cg, align 8      ; 2 uses
  %i.ch = and i64 %.val18.i70, 65280
  %.not20.i71 = icmp eq i64 %i.ch, 0
  br i1 %.not20.i71, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3752, ptr noundef nonnull @__func__.qc_get_stream_write_buf_stat, i32 noundef 366, ptr noundef null)
  br label %qc_get_stream_write_buf_stat.exit74

bb.as:                                            ; preds = %bb.aq
  %7 = trunc i64 %.val18.i70 to i16
  %trunc.i.i72 = and i16 %7, -256
  switch i16 %trunc.i.i72, label %qc_get_stream_write_buf_stat.exit74 [
    i16 256, label %bb.at
    i16 512, label %bb.at
    i16 768, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 112
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !150
  %i.ck = call i64 @ossl_quic_sstream_get_buffer_avail(ptr noundef %i.cj) #10, !callees !207, !inline_history !208
  br label %qc_get_stream_write_buf_stat.exit74

qc_get_stream_write_buf_stat.exit74:              ; preds = %bb.an, %bb.ap, %bb.ar, %bb.as, %bb.at
  %.013.i66 = phi i32 [ 0, %bb.an ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 1, %bb.at ], [ 1, %bb.as ]
  %.1.i67 = phi i64 [ 0, %bb.an ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ %i.ck, %bb.at ], [ 0, %bb.as ]
  %.val17.i68 = load ptr, ptr %4, align 8, !tbaa !161
  %i.cl = getelementptr i8, ptr %.val17.i68, i64 88
  %.val17.val.i69 = load ptr, ptr %i.cl, align 8, !tbaa !147
  %i.cm = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val17.val.i69) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.cm) #10
  store i64 %.1.i67, ptr %3, align 8, !tbaa !173
  br label %qc_get_stream_avail.exit

bb.au:                                            ; preds = %bb.d
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %4, ptr nonnull poison, i32 noundef 3821, ptr noundef nonnull @__func__.ossl_quic_get_value_uint, i32 noundef 414, ptr noundef null)
  br label %qc_get_stream_avail.exit

qc_get_stream_avail.exit:                         ; preds = %bb.v, %bb.u, %bb.q, %bb.p, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.a, %bb.au, %qc_get_stream_write_buf_stat.exit74, %qc_get_stream_write_buf_stat.exit62, %qc_get_stream_write_buf_stat.exit, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.au ], [ %i.c, %bb.e ], [ 0, %bb.a ], [ 1, %bb.h ], [ 1, %bb.k ], [ 1, %bb.n ], [ 1, %bb.q ], [ %.013.i, %qc_get_stream_write_buf_stat.exit ], [ %.013.i54, %qc_get_stream_write_buf_stat.exit62 ], [ %.013.i66, %qc_get_stream_write_buf_stat.exit74 ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.p ], [ %.016.i, %bb.u ], [ %.016.i, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @qc_getset_idle_timeout(ptr noundef nonnull readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef readonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !161
  %i.a = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.b = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  tail call void @ossl_crypto_mutex_lock(ptr noundef %i.b) #10
  switch i32 %1, label %bb.o [
    i32 1, label %bb.b
    i32 2, label %bb.h
    i32 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.g = tail call i64 @ossl_quic_channel_get_max_idle_timeout_request(ptr noundef %i.f) #10 ; 4 uses
  %.not30 = icmp eq ptr %3, null
  br i1 %.not30, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %3, align 8, !tbaa !173    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 4611686018427387903
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 3592, ptr noundef nonnull @__func__.qc_getset_idle_timeout, i32 noundef 524550, ptr noundef null)
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.m = tail call i32 @ossl_quic_channel_have_generated_transport_params(ptr noundef %i.l) #10
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 3598, ptr noundef nonnull @__func__.qc_getset_idle_timeout, i32 noundef 413, ptr noundef null)
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !117
  tail call void @ossl_quic_channel_set_max_idle_timeout_request(ptr noundef %i.p, i64 noundef %i.h) #10
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 3610, ptr noundef nonnull @__func__.qc_getset_idle_timeout, i32 noundef 416, ptr noundef null)
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !138
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !117
  %i.u = tail call i32 @ossl_quic_channel_is_handshake_complete(ptr noundef %i.t) #10
  %.not29 = icmp eq i32 %i.u, 0
  br i1 %.not29, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 3616, ptr noundef nonnull @__func__.qc_getset_idle_timeout, i32 noundef 417, ptr noundef null)
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.v = icmp eq i32 %1, 3
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !138
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !117  ; 2 uses
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i64 @ossl_quic_channel_get_max_idle_timeout_actual(ptr noundef %i.y) #10
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i64 @ossl_quic_channel_get_max_idle_timeout_peer_request(ptr noundef %i.y) #10
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 3627, ptr noundef nonnull @__func__.qc_getset_idle_timeout, i32 noundef 415, ptr noundef null)
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.b, %bb.n, %bb.m, %bb.o, %bb.k, %bb.i, %bb.f, %bb.d
  %.1 = phi i64 [ 0, %bb.o ], [ %i.g, %bb.d ], [ %i.g, %bb.f ], [ 0, %bb.k ], [ 0, %bb.i ], [ %i.g, %bb.g ], [ %i.g, %bb.b ], [ %i.z, %bb.m ], [ %i.aa, %bb.n ]
  %i.ab = phi i1 [ false, %bb.o ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.k ], [ false, %bb.i ], [ true, %bb.g ], [ true, %bb.b ], [ true, %bb.m ], [ true, %bb.n ]
  %.0 = phi i32 [ 0, %bb.o ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.k ], [ 0, %bb.i ], [ 1, %bb.g ], [ 1, %bb.b ], [ 1, %bb.m ], [ 1, %bb.n ]
  %.val32 = load ptr, ptr %0, align 8, !tbaa !161
  %i.ac = getelementptr i8, ptr %.val32, i64 88
  %.val32.val = load ptr, ptr %i.ac, align 8, !tbaa !147
  %i.ad = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val32.val) #10
  tail call void @ossl_crypto_mutex_unlock(ptr noundef %i.ad) #10
  %i.ae = icmp ne ptr %2, null
  %or.cond = and i1 %i.ae, %i.ab
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 %.1, ptr %2, align 8, !tbaa !173
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret i32 %.0
}

declare i64 @ossl_quic_sstream_get_buffer_size(ptr noundef) local_unnamed_addr #2

declare i64 @ossl_quic_sstream_get_buffer_used(ptr noundef) local_unnamed_addr #2

declare i64 @ossl_quic_sstream_get_buffer_avail(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_set_value_uint(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %4 = alloca %struct.qctx_st, align 8            ; 10 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %.off.i = add i32 %2, -6
  %switch.i = icmp ult i32 %.off.i, 4
  %..i = select i1 %switch.i, i32 3, i32 1
  %i.b = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %..i)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.i [
    i32 5, label %bb.c
    i32 6, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = call fastcc i32 @qc_getset_idle_timeout(ptr noundef %4, i32 noundef %1, ptr noundef null, ptr noundef nonnull %i.a)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %4, align 8, !tbaa !161
  %i.d = getelementptr i8, ptr %.val.i, i64 88
  %.val.val.i = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.e = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.e) #10
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3699, ptr noundef nonnull @__func__.qc_getset_event_handling, i32 noundef 415, ptr noundef null)
  br label %qc_getset_event_handling.exit

bb.f:                                             ; preds = %bb.d
  %switch.i5 = icmp ult i64 %3, 3
  br i1 %switch.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull readonly %4, ptr nonnull poison, i32 noundef 3711, ptr noundef nonnull @__func__.qc_getset_event_handling, i32 noundef 524550, ptr noundef null)
  br label %qc_getset_event_handling.exit

bb.h:                                             ; preds = %bb.f
  %i.f = load ptr, ptr %4, align 8, !tbaa !161
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.h = trunc nuw nsw i64 %3 to i8
  %i.i = load i8, ptr %i.g, align 8
  %i.j = shl nuw nsw i8 %i.h, 5
  %i.k = and i8 %i.i, -97
  %i.l = or disjoint i8 %i.k, %i.j
  store i8 %i.l, ptr %i.g, align 8
  br label %qc_getset_event_handling.exit

end_hunk_3
begin_hunk_4_@wait_for_incoming_stream:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.e) #10
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.h = load i16, ptr %i.g, align 8
  %i.i = and i16 %i.h, 32
  %.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.k = tail call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.j) #10
  %.not4.i = icmp eq i32 %i.k, 0
  br i1 %.not4.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.m = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.l) #10
  %.not6.i = icmp eq i32 %i.m, 0
  br i1 %.not6.i, label %bb.d, label %quic_mutation_allowed.exit

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !209
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef %i.n, ptr nonnull poison, i32 noundef 3869, ptr noundef nonnull @__func__.wait_for_incoming_stream, i32 noundef 207, ptr noundef null)
  br label %bb.e

quic_mutation_allowed.exit:                       ; preds = %bb.c
  %i.o = tail call ptr @ossl_quic_stream_map_peek_accept_queue(ptr noundef %i.f) #10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !211
  %.not8 = icmp ne ptr %i.o, null
  %. = zext i1 %.not8 to i32
  br label %bb.e

bb.e:                                             ; preds = %quic_mutation_allowed.exit, %bb.d
  %.0 = phi i32 [ %., %quic_mutation_allowed.exit ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_xso_from_stream(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 192, ptr noundef nonnull @.str, i32 noundef 2209) #10 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 2210, ptr noundef nonnull @__func__.create_xso_from_stream, i32 noundef 524303, ptr noundef null)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = tail call i32 @ossl_quic_obj_init(ptr noundef nonnull %i.a, ptr noundef %i.d, i32 noundef 129, ptr noundef %0, ptr noundef null, ptr noundef null) #10
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 2216, ptr noundef nonnull @__func__.create_xso_from_stream, i32 noundef 786691, ptr noundef null)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = tail call i32 @SSL_up_ref(ptr noundef nonnull %0) #10
  %.not19 = icmp eq i32 %i.f, 0
  br i1 %.not19, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 2222, ptr noundef nonnull @__func__.create_xso_from_stream, i32 noundef 524308, ptr noundef null)
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %0, ptr %i.g, align 8, !tbaa !140
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.i = load i32, ptr %i.h, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i32 %i.i, ptr %i.j, align 8, !tbaa !179
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load i64, ptr %i.k, align 8, !tbaa !125  ; 2 uses
  %i.m = and i64 %i.l, 3725568391
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i64 %i.m, ptr %i.n, align 8, !tbaa !162
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 0, ptr %i.o, align 8, !tbaa !135
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  store ptr %1, ptr %i.p, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !148
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !148
  %i.t = trunc i64 %i.l to i32
  %i.u = lshr i32 %i.t, 1
  %i.v = and i32 %i.u, 1                          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !163  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ossl_quic_rstream_set_cleanse(ptr noundef nonnull %i.x, i32 noundef %i.v) #10
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !149
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = phi ptr [ %.pre.i, %bb.h ], [ %1, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !150 ; 2 uses
  %.not7.i = icmp eq ptr %i.aa, null
  br i1 %.not7.i, label %xso_update_options.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ossl_quic_sstream_set_cleanse(ptr noundef nonnull %i.aa, i32 noundef %i.v) #10
  br label %xso_update_options.exit

bb.k:                                             ; preds = %bb.f, %bb.d, %bb.b
  tail call void @CRYPTO_free(ptr noundef %i.a, ptr noundef nonnull @.str, i32 noundef 2239) #10
  br label %xso_update_options.exit

xso_update_options.exit:                          ; preds = %bb.j, %bb.i, %bb.k
  %.0 = phi ptr [ null, %bb.k ], [ %i.a, %bb.i ], [ %i.a, %bb.j ]
  ret ptr %.0
}

declare void @ossl_statm_get_rtt_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ossl_quic_channel_get_statm(ptr noundef) local_unnamed_addr #2

declare void @ossl_quic_stream_map_remove_from_accept_queue(ptr noundef, ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ossl_quic_get_accept_stream_queue_len(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.qctx_st, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !161
  %i.b = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.c = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.h = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.g) #10
  %i.i = call i64 @ossl_quic_stream_map_get_total_accept_queue_len(ptr noundef %i.h) #10
  %.val2 = load ptr, ptr %1, align 8, !tbaa !161
  %i.j = getelementptr i8, ptr %.val2, i64 88
  %.val2.val = load ptr, ptr %i.j, align 8, !tbaa !147
  %i.k = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val2.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.k) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %.0
}

declare i64 @ossl_quic_stream_map_get_total_accept_queue_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_quic_stream_reset(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.qctx_st, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 42)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.e) #10
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149  ; 5 uses
  %.not11 = icmp eq ptr %1, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %1, align 8, !tbaa !212
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ]
  %i.m = icmp eq ptr %i.j, null
  br i1 %i.m, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.o = load i64, ptr %i.n, align 8
  %4 = trunc i64 %i.o to i16
  %5 = add i16 %4, -256
  %6 = lshr i16 %5, 8
  %trunc.i = trunc nuw i16 %6 to i8
  switch i8 %trunc.i, label %.sink.split.i [
    i8 5, label %bb.i
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !117
  %i.t = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.s) #10
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !149
  %i.v = call i32 @ossl_quic_stream_map_ensure_send_part_id(ptr noundef %i.t, ptr noundef %i.u) #10
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %.sink.split.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.e, %bb.e
  %i.w = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.j, %bb.e ], [ %i.j, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !150
  %i.z = call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.y, ptr noundef null) #10
  %.not15.i = icmp eq i32 %i.z, 0
  br i1 %.not15.i, label %quic_validate_for_write.exit, label %.sink.split.i

bb.h:                                             ; preds = %bb.e
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.e, %bb.e
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %.014.ph = phi i32 [ 375, %bb.i ], [ 786691, %bb.d ], [ 366, %bb.e ], [ 786691, %bb.f ], [ 365, %bb.h ], [ 365, %bb.g ]
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %3, ptr nonnull poison, i32 noundef 3987, ptr noundef nonnull @__func__.ossl_quic_stream_reset, i32 noundef %.014.ph, ptr noundef null)
  br label %bb.k

quic_validate_for_write.exit:                     ; preds = %bb.g
  %i.aa = call i32 @ossl_quic_stream_map_reset_stream_send_part(ptr noundef %i.f, ptr noundef nonnull %i.j, i64 noundef %i.l) #10 ; 2 uses
  %.not13 = icmp eq i32 %i.aa, 0
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %quic_validate_for_write.exit
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !134
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = or i8 %i.ad, 2
  store i8 %i.ae, ptr %i.ac, align 8
  br label %bb.k

bb.k:                                             ; preds = %quic_validate_for_write.exit, %bb.j, %.sink.split.i
  %.0 = phi i32 [ %i.aa, %bb.j ], [ 0, %quic_validate_for_write.exit ], [ 0, %.sink.split.i ]
  %.val = load ptr, ptr %3, align 8, !tbaa !161
  %i.af = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !147
  %i.ag = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.ag) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.08 = phi i32 [ %.0, %bb.k ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 7) i32 @ossl_quic_get_stream_read_state(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.qctx_st, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 34)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %quic_get_stream_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !149
  %i.h = getelementptr i8, ptr %i.g, i64 256      ; 2 uses
  %.val52.i = load i64, ptr %i.h, align 8         ; 2 uses
  %i.i = trunc i64 %.val52.i to i32
  %i.j = and i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.l = load i16, ptr %i.k, align 8
  %i.m = lshr i16 %i.l, 1
  %i.n = and i16 %i.m, 1
  %i.o = zext nneg i16 %i.n to i32
  %i.p = icmp ne i32 %i.j, %i.o
  %i.q = and i64 %.val52.i, 2
  %i.r = icmp eq i64 %i.q, 0
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.p
  br i1 %or.cond.i, label %bb.c, label %quic_classify_stream.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !117
  %i.u = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.t) #10
  %.not37.i = icmp eq i32 %i.u, 0
  br i1 %.not37.i, label %bb.d, label %quic_classify_stream.exit

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.h, align 8              ; 3 uses
  %i.w = and i64 %i.v, 16711680
  %i.x = icmp eq i64 %i.w, 262144
  br i1 %i.x, label %quic_classify_stream.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = and i64 %i.v, 67108864
  %.not39.i = icmp eq i64 %i.y, 0
  br i1 %.not39.i, label %.critedge47.i, label %quic_classify_stream.exit

.critedge47.i:                                    ; preds = %bb.e
  %i.z = trunc i64 %i.v to i32
  %i.aa = lshr i32 %i.z, 16
  %i.ab = and i32 %i.aa, 255
  %i.ac = add nsw i32 %i.ab, -7
  %narrow.i55.i = icmp ult i32 %i.ac, -2
  %spec.select = select i1 %narrow.i55.i, i32 1, i32 5
  br label %quic_classify_stream.exit

quic_classify_stream.exit:                        ; preds = %bb.e, %.critedge47.i, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 6, %bb.c ], [ 3, %bb.d ], [ %spec.select, %.critedge47.i ], [ 2, %bb.b ], [ 4, %bb.e ]
  %.val.i = load ptr, ptr %1, align 8, !tbaa !161
  %i.ad = getelementptr i8, ptr %.val.i, i64 88
  %.val.val.i = load ptr, ptr %i.ad, align 8, !tbaa !147
  %i.ae = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.ae) #10
  br label %quic_get_stream_state.exit

quic_get_stream_state.exit:                       ; preds = %bb.a, %quic_classify_stream.exit
  %.0.i = phi i32 [ %.0, %quic_classify_stream.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 7) i32 @ossl_quic_get_stream_write_state(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %1 = alloca %struct.qctx_st, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.b = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 34)
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %quic_get_stream_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.i = getelementptr i8, ptr %i.h, i64 256      ; 2 uses
  %.val52.i = load i64, ptr %i.i, align 8         ; 2 uses
  %i.j = trunc i64 %.val52.i to i32
  %i.k = and i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.m = load i16, ptr %i.l, align 8
  %i.n = lshr i16 %i.m, 1
  %i.o = and i16 %i.n, 1
  %i.p = zext nneg i16 %i.o to i32
  %i.q = icmp eq i32 %i.k, %i.p
  %i.r = and i64 %.val52.i, 2
  %i.s = icmp eq i64 %i.r, 0
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.q
  br i1 %or.cond.i, label %bb.c, label %quic_classify_stream.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !117
  %i.v = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.u) #10
  %.not37.i = icmp eq i32 %i.v, 0
  br i1 %.not37.i, label %bb.d, label %quic_classify_stream.exit

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.i, align 8              ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = lshr i32 %i.x, 8
  %i.z = and i32 %i.y, 255
  %i.aa = add nsw i32 %i.z, -7
  %narrow.i.i = icmp ult i32 %i.aa, -2
  br i1 %narrow.i.i, label %.critedge49.i, label %quic_classify_stream.exit

.critedge49.i:                                    ; preds = %bb.d
  %i.ab = and i64 %i.w, 134217728
  %.not42.i = icmp eq i64 %i.ab, 0
  br i1 %.not42.i, label %bb.e, label %quic_classify_stream.exit

bb.e:                                             ; preds = %.critedge49.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !150
  %i.ae = call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.ad, ptr noundef nonnull %i.a) #10
  %.not43.i = icmp eq i32 %i.ae, 0
  %spec.select = select i1 %.not43.i, i32 1, i32 3
  br label %quic_classify_stream.exit

quic_classify_stream.exit:                        ; preds = %.critedge49.i, %bb.d, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ %spec.select, %bb.e ], [ 6, %bb.c ], [ 4, %bb.d ], [ 2, %bb.b ], [ 5, %.critedge49.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.val.i = load ptr, ptr %1, align 8, !tbaa !161
  %i.af = getelementptr i8, ptr %.val.i, i64 88
  %.val.val.i = load ptr, ptr %i.af, align 8, !tbaa !147
  %i.ag = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.ag) #10
  br label %quic_get_stream_state.exit

quic_get_stream_state.exit:                       ; preds = %bb.a, %quic_classify_stream.exit
  %.0.i = phi i32 [ %.0, %quic_classify_stream.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @ossl_quic_get_stream_read_error_code(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @quic_get_stream_error_code(ptr noundef %0, i32 noundef 0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @quic_get_stream_error_code(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.qctx_st, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.b = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 34)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.i = getelementptr i8, ptr %i.h, i64 256      ; 3 uses
  %.val52.i = load i64, ptr %i.i, align 8         ; 2 uses
  %i.j = trunc i64 %.val52.i to i32
  %i.k = and i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.m = load i16, ptr %i.l, align 8
  %i.n = lshr i16 %i.m, 1
  %i.o = and i16 %i.n, 1
  %i.p = zext nneg i16 %i.o to i32
  %i.q = icmp eq i32 %i.k, %i.p
  %i.r = zext i1 %i.q to i32
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %2, align 8, !tbaa !173
  %.val.pre.i = load i64, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val.i = phi i64 [ %.val.pre.i, %bb.c ], [ %.val52.i, %bb.b ]
  %.0.i = phi ptr [ %2, %bb.c ], [ %i.a, %bb.b ]
  %i.s = and i64 %.val.i, 2
  %i.t = icmp eq i64 %i.s, 0
  %.not36.i = icmp eq i32 %1, %i.r
  %or.cond.i = select i1 %i.t, i1 true, i1 %.not36.i
  br i1 %or.cond.i, label %bb.e, label %.critedge51.i

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.w = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.v) #10
  %.not37.i = icmp eq i32 %i.w, 0
  br i1 %.not37.i, label %bb.f, label %.critedge51.i

bb.f:                                             ; preds = %bb.e
  %.not38.i = icmp eq i32 %1, 0
  %i.x = load i64, ptr %i.i, align 8              ; 5 uses
  br i1 %.not38.i, label %bb.g, label %.critedge45.i

bb.g:                                             ; preds = %bb.f
  %i.y = and i64 %i.x, 16711680
  %i.z = icmp eq i64 %i.y, 262144
  br i1 %i.z, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = and i64 %i.x, 67108864
  %.not39.i = icmp eq i64 %i.aa, 0
  br i1 %.not39.i, label %.critedge47.i, label %bb.j

.critedge45.i:                                    ; preds = %bb.f
  %i.ab = trunc i64 %i.x to i32
  %i.ac = lshr i32 %i.ab, 8
  %i.ad = and i32 %i.ac, 255
  %i.ae = add nsw i32 %i.ad, -7
  %narrow.i.i = icmp ult i32 %i.ae, -2
  br i1 %narrow.i.i, label %.critedge49.i, label %bb.j

.critedge47.i:                                    ; preds = %bb.h
  %i.af = trunc i64 %i.x to i32
  %i.ag = lshr i32 %i.af, 16
  %i.ah = and i32 %i.ag, 255
  %i.ai = add nsw i32 %i.ah, -7
  %narrow.i55.i = icmp ult i32 %i.ai, -2
  br i1 %narrow.i55.i, label %.critedge51.i, label %bb.j

.critedge49.i:                                    ; preds = %.critedge45.i
  %i.aj = and i64 %i.x, 134217728
  %.not42.i = icmp eq i64 %i.aj, 0
  br i1 %.not42.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge49.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !150
  %i.am = call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.al, ptr noundef nonnull %i.a) #10
  %.not43.i = icmp eq i32 %i.am, 0
  br i1 %.not43.i, label %.critedge51.i, label %.sink.split

bb.j:                                             ; preds = %.critedge47.i, %.critedge49.i, %bb.h, %.critedge45.i
  %.in44.v.i.pn = phi i64 [ 64, %bb.h ], [ 72, %.critedge45.i ], [ 80, %.critedge49.i ], [ 88, %.critedge47.i ]
  %storemerge.in = getelementptr inbounds nuw i8, ptr %i.h, i64 %.in44.v.i.pn
  %storemerge = load i64, ptr %storemerge.in, align 8, !tbaa !173
  store i64 %storemerge, ptr %.0.i, align 8, !tbaa !173
  br label %.sink.split

.critedge51.i:                                    ; preds = %.critedge47.i, %bb.i, %bb.e, %bb.d
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.g, %bb.j, %.critedge51.i
  %.0.ph = phi i32 [ -1, %.critedge51.i ], [ 1, %bb.j ], [ 0, %bb.g ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.val10 = load ptr, ptr %3, align 8, !tbaa !161
  %i.an = getelementptr i8, ptr %.val10, i64 88
  %.val.val11 = load ptr, ptr %i.an, align 8, !tbaa !147
  %i.ao = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val11) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.ao) #10
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @ossl_quic_get_stream_write_error_code(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @quic_get_stream_error_code(ptr noundef %0, i32 noundef 1, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_set_write_buffer_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.qctx_st, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 34)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 256
  %.val7 = load i64, ptr %i.f, align 8            ; 2 uses
  %i.g = and i64 %.val7, 65280
  %.not9 = icmp eq i64 %i.g, 0
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %2, ptr nonnull poison, i32 noundef 4146, ptr noundef nonnull @__func__.ossl_quic_set_write_buffer_size, i32 noundef 786689, ptr noundef null)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %3 = trunc i64 %.val7 to i16
  %trunc.i = and i16 %3, -256
  switch i16 %trunc.i, label %bb.g [
    i16 256, label %bb.e
    i16 512, label %bb.e
    i16 768, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !150
  %i.j = call i32 @ossl_quic_sstream_set_buffer_size(ptr noundef %i.i, i64 noundef %1) #10
  %.not6 = icmp eq i32 %i.j, 0
  br i1 %.not6, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %2, ptr nonnull poison, i32 noundef 4160, ptr noundef nonnull @__func__.ossl_quic_set_write_buffer_size, i32 noundef 786691, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %bb.c ], [ 1, %bb.d ]
  %.val = load ptr, ptr %2, align 8, !tbaa !161
  %i.k = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.l = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.l) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.03 = phi i32 [ %.0, %bb.g ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.03
}

declare i32 @ossl_quic_sstream_set_buffer_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @ossl_quic_get_conn_close_info(ptr noundef %0, ptr noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.qctx_st, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = call ptr @ossl_quic_channel_get_terminate_cause(ptr noundef %i.e) #10 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !173
  store <2 x i64> %i.h, ptr %1, align 8, !tbaa !173
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !216
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !218
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !219
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !220
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, 2
  %.not16 = icmp eq i8 %i.r, 0
  %spec.store.select = zext i1 %.not16 to i32     ; 2 uses
  store i32 %spec.store.select, ptr %i.o, align 8
  %i.s = load i8, ptr %i.p, align 8
  %i.t = and i8 %i.s, 1
  %.not17 = icmp eq i8 %i.t, 0
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = or disjoint i32 %spec.store.select, 2
  store i32 %i.u, ptr %i.o, align 8, !tbaa !220
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ 1, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0
}

declare ptr @ossl_quic_channel_get_terminate_cause(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_key_update(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.qctx_st, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %2, ptr nonnull poison, i32 noundef 4222, ptr noundef nonnull @__func__.ossl_quic_key_update, i32 noundef 524550, ptr noundef null)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.val = load ptr, ptr %2, align 8, !tbaa !161
  %i.b = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.c = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.h = call i32 @ossl_quic_channel_trigger_txku(ptr noundef %i.g) #10
  %.not2 = icmp eq i32 %i.h, 0
  br i1 %.not2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %2, ptr nonnull poison, i32 noundef 4230, ptr noundef nonnull @__func__.ossl_quic_key_update, i32 noundef 132, ptr noundef null)
  %.val4 = load ptr, ptr %2, align 8, !tbaa !161
  %i.i = getelementptr i8, ptr %.val4, i64 88
  %.val4.val = load ptr, ptr %i.i, align 8, !tbaa !147
  %i.j = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val4.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.j) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.val3 = load ptr, ptr %2, align 8, !tbaa !161
  %i.k = getelementptr i8, ptr %.val3, i64 88
  %.val3.val = load ptr, ptr %i.k, align 8, !tbaa !147
  %i.l = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val3.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.l) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.0
}

declare i32 @ossl_quic_channel_trigger_txku(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ossl_quic_get_key_update_type(ptr noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_quic_new_listener(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.quic_engine_args_st, align 8 ; 8 uses
  %3 = alloca %struct.quic_port_args_st, align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 160, ptr noundef nonnull @.str, i32 noundef 4293) #10 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ossl_crypto_mutex_new() #10 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.c, ptr %i.d, align 8, !tbaa !221
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 4300, ptr noundef nonnull @__func__.ossl_quic_new_listener, i32 noundef 524303, ptr noundef null)
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !106
  store ptr %i.f, ptr %2, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.c, ptr %i.j, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.l = load i64, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.m = and i64 %i.l, 4
  %.not.i = icmp eq i64 %i.m, 0
  %i.n = and i64 %i.l, 10
  %i.o = icmp ne i64 %i.n, 10
  %narrow.i.not = and i1 %.not.i, %i.o
  br i1 %narrow.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 1, ptr %i.p, align 8, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = call ptr @ossl_quic_engine_new(ptr noundef nonnull %2) #10 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !146
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 4315, ptr noundef nonnull @__func__.ossl_quic_new_listener, i32 noundef 786691, ptr noundef null)
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %0, ptr %i.t, align 8, !tbaa !114
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 1, ptr %i.u, align 8, !tbaa !222
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @alloc_port_user_ssl, ptr %i.v, align 8, !tbaa !223
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.w, align 8, !tbaa !224
  %i.x = and i64 %1, 2
end_hunk_4
begin_hunk_5_@ossl_quic_new_token_store:bb.a
  tail call void @OPENSSL_LH_doall(ptr noundef %i.o, ptr noundef nonnull @free_this_token) #10
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !231
  tail call void @OPENSSL_LH_free(ptr noundef %i.p) #10
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 4791) #10
  br label %ossl_quic_free_token_store.exit

ossl_quic_free_token_store.exit:                  ; preds = %bb.f, %CRYPTO_DOWN_REF.exit.i, %bb.a, %bb.d
  %.0 = phi ptr [ %i.a, %bb.d ], [ null, %bb.a ], [ null, %CRYPTO_DOWN_REF.exit.i ], [ null, %bb.f ]
  ret ptr %.0
}

declare ptr @ossl_quic_port_create_outgoing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_listen(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.qctx_st, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %1, align 8, !tbaa !161
  %i.b = getelementptr i8, ptr %.val.i, i64 88
  %.val.val.i = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.c = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 1, ptr %i.d, align 4, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !133
  %.not9.i.i = icmp eq i32 %i.f, 0
  br i1 %.not9.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i, label %qctx_lock_for_io.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i32 0, ptr %i.i, align 8, !tbaa !135
  br label %qctx_lock_for_io.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.k, null
  br i1 %.not12.i.i, label %qctx_lock_for_io.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 376
  store i32 0, ptr %i.l, align 8, !tbaa !127
  br label %qctx_lock_for_io.exit

qctx_lock_for_io.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !166  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 1
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.g, label %ql_listen.exit

bb.g:                                             ; preds = %qctx_lock_for_io.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !143
  call void @ossl_quic_port_set_allow_incoming(ptr noundef %i.s, i32 noundef 1) #10
  %i.t = load i8, ptr %i.o, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.o, align 8
  br label %ql_listen.exit

ql_listen.exit:                                   ; preds = %qctx_lock_for_io.exit, %bb.g
  %.val = load ptr, ptr %1, align 8, !tbaa !161
  %i.v = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.v, align 8, !tbaa !147
  %i.w = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.w) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %ql_listen.exit
  %.0 = phi i32 [ 1, %ql_listen.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_quic_accept_connection(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.qctx_st, align 8            ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = and i64 %1, 1
  %.not = icmp eq i64 %i.a, 0
  %i.b = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4)
  %.not29 = icmp eq i32 %i.b, 0
  br i1 %.not29, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %2, align 8, !tbaa !161
  %i.c = getelementptr i8, ptr %.val.i, i64 88
  %.val.val.i = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.d = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val.i) #10
  call void @ossl_crypto_mutex_lock(ptr noundef %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 1, ptr %i.e, align 4, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !133
  %.not9.i.i = icmp eq i32 %i.g, 0
  br i1 %.not9.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i, label %qctx_lock_for_io.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  store i32 0, ptr %i.j, align 8, !tbaa !135
  br label %qctx_lock_for_io.exit

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !138  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.l, null
  br i1 %.not12.i.i, label %qctx_lock_for_io.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 376
  store i32 0, ptr %i.m, align 8, !tbaa !127
  br label %qctx_lock_for_io.exit

qctx_lock_for_io.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !166  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, 1
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %bb.g, label %ql_listen.exit

bb.g:                                             ; preds = %qctx_lock_for_io.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !143
  call void @ossl_quic_port_set_allow_incoming(ptr noundef %i.t, i32 noundef 1) #10
  %i.u = load i8, ptr %i.p, align 8
  %i.v = or i8 %i.u, 1
  store i8 %i.v, ptr %i.p, align 8
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !166
  br label %ql_listen.exit

ql_listen.exit:                                   ; preds = %qctx_lock_for_io.exit, %bb.g
  %i.w = phi ptr [ %i.o, %qctx_lock_for_io.exit ], [ %.pre, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !143
  %i.z = call ptr @ossl_quic_port_pop_incoming(ptr noundef %i.y) #10 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %.thread45

bb.h:                                             ; preds = %ql_listen.exit
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !166
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !143
  %i.ae = call i32 @ossl_quic_port_is_running(ptr noundef %i.ad) #10
  %.not30 = icmp eq i32 %i.ae, 0
  br i1 %.not30, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.val = load ptr, ptr %2, align 8, !tbaa !161
  %i.af = call i32 @ossl_quic_obj_blocking(ptr noundef %.val) #10
  %.not31 = icmp eq i32 %i.af, 0
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !166
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !143
  %.val40 = load ptr, ptr %2, align 8, !tbaa !161
  %i.aj = getelementptr i8, ptr %.val40, i64 88
  %.val40.val = load ptr, ptr %i.aj, align 8, !tbaa !147 ; 2 uses
  call void @ossl_quic_engine_set_inhibit_tick(ptr noundef %.val40.val, i32 noundef 0) #10
  %i.ak = call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.val40.val) #10
  %i.al = call i32 @ossl_quic_reactor_block_until_pred(ptr noundef %i.ak, ptr noundef nonnull @quic_accept_connection_wait, ptr noundef %i.ai, i32 noundef 0) #10
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %.thread48, label %qctx_maybe_autotick.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %.val39 = load ptr, ptr %2, align 8, !tbaa !161 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.0.i.i = phi ptr [ %.val39, %bb.l ], [ %i.ar, %bb.n ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112
  %i.ao = load i8, ptr %i.an, align 8
  %i.ap = and i8 %i.ao, 96
  switch i8 %i.ap, label %qctx_should_autotick.exit.thread.i [
    i8 0, label %bb.n
    i8 64, label %qctx_maybe_autotick.exit
  ]

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !169 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %qctx_should_autotick.exit.thread.i, label %bb.m, !llvm.loop !177

qctx_should_autotick.exit.thread.i:               ; preds = %bb.n, %bb.m
  %i.as = getelementptr i8, ptr %.val39, i64 88
  %.val2.i = load ptr, ptr %i.as, align 8, !tbaa !147
  %i.at = call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.val2.i) #10
  %i.au = call i32 @ossl_quic_reactor_tick(ptr noundef %i.at, i32 noundef 0) #10 ; 0 uses
  br label %qctx_maybe_autotick.exit

qctx_maybe_autotick.exit:                         ; preds = %bb.m, %qctx_should_autotick.exit.thread.i, %bb.k
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !166
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !143
  %i.ay = call i32 @ossl_quic_port_is_running(ptr noundef %i.ax) #10
  %.not32 = icmp eq i32 %i.ay, 0
  br i1 %.not32, label %.thread48, label %bb.o

bb.o:                                             ; preds = %qctx_maybe_autotick.exit
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !166
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !143
  %i.bc = call ptr @ossl_quic_port_pop_incoming(ptr noundef %i.bb) #10 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.thread, label %.thread45

.thread:                                          ; preds = %bb.h, %bb.o
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !166
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !143
  %i.bh = call i32 @ossl_quic_port_is_running(ptr noundef %i.bg) #10
  %.not33 = icmp eq i32 %i.bh, 0
  br i1 %.not33, label %.thread48, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !166
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !146
  %i.bl = call ptr @ossl_quic_engine_get0_reactor(ptr noundef %i.bk) #10
  %i.bm = call i32 @ossl_quic_reactor_tick(ptr noundef %i.bl, i32 noundef 0) #10 ; 0 uses
  %i.bn = load ptr, ptr %i.n, align 8, !tbaa !166
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !143
  %i.bq = call ptr @ossl_quic_port_pop_incoming(ptr noundef %i.bp) #10 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.thread48, label %.thread45

.thread45:                                        ; preds = %ql_listen.exit, %bb.o, %bb.p
  %.147 = phi ptr [ %i.bq, %bb.p ], [ %i.bc, %bb.o ], [ %i.z, %ql_listen.exit ]
  %i.bs = call ptr @ossl_quic_channel_get0_tls(ptr noundef nonnull %.147) #10 ; 6 uses
  %.not34 = icmp eq ptr %i.bs, null
  br i1 %.not34, label %.thread48, label %bb.q, !prof !236

bb.q:                                             ; preds = %.thread45
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !65 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.thread52, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = and i32 %i.bt, 128
  %.not35 = icmp eq i32 %i.bv, 0
  br i1 %.not35, label %.thread48, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %i.bs) #10 ; 2 uses
  %.not36 = icmp eq ptr %i.bw, null
  br i1 %.not36, label %.thread48, label %.thread52, !prof !237

.thread52:                                        ; preds = %bb.q, %bb.s
  %i.bx = phi ptr [ %i.bw, %bb.s ], [ %i.bs, %bb.q ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !238 ; 5 uses
  %.not37 = icmp eq ptr %i.bz, null
  br i1 %.not37, label %.thread48, label %bb.t, !prof !236

bb.t:                                             ; preds = %.thread52
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 336 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 8
  %i.cc = and i16 %i.cb, -513
  store i16 %i.cc, ptr %i.ca, align 8
  %i.cd = load ptr, ptr %i.n, align 8, !tbaa !166
  %i.ce = call i32 @SSL_up_ref(ptr noundef %i.cd) #10
  %.not38 = icmp eq i32 %i.ce, 0
  br i1 %.not38, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @SSL_free(ptr noundef nonnull %i.bz) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cf = load ptr, ptr %i.n, align 8, !tbaa !166
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !139
  br label %.thread48

.thread48:                                        ; preds = %bb.r, %.thread, %.thread45, %bb.s, %.thread52, %bb.p, %qctx_maybe_autotick.exit, %bb.k, %bb.v
  %.019 = phi ptr [ null, %bb.p ], [ %i.bz, %bb.v ], [ null, %.thread52 ], [ %i.bs, %bb.s ], [ null, %.thread45 ], [ null, %qctx_maybe_autotick.exit ], [ null, %bb.k ], [ null, %.thread ], [ %i.bs, %bb.r ]
  %.val41 = load ptr, ptr %2, align 8, !tbaa !161
  %i.ch = getelementptr i8, ptr %.val41, i64 88
  %.val41.val = load ptr, ptr %i.ch, align 8, !tbaa !147
  %i.ci = call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val41.val) #10
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.ci) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %.thread48
  %.0 = phi ptr [ %.019, %.thread48 ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret ptr %.0
}

declare ptr @ossl_quic_port_pop_incoming(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_port_is_running(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @quic_accept_connection_wait(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @ossl_quic_port_is_running(ptr noundef %0) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ossl_quic_port_have_incoming(ptr noundef %0) #10
  %.not3 = icmp ne i32 %i.b, 0
  %. = zext i1 %.not3 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare ptr @ossl_quic_engine_get0_reactor(ptr noundef) local_unnamed_addr #2

declare ptr @ossl_quic_channel_get0_tls(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @quic_token_hash(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !241
  %i.e = tail call i64 @ossl_fnv1a_hash(ptr noundef %i.b, i64 noundef %i.d) #10
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @quic_token_cmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !241  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !241
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !239
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !239
  %i.i = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.h, i64 noundef %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_free_token_store(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = atomicrmw sub ptr %i.b, i32 1 release, align 4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %CRYPTO_DOWN_REF.exit.thread, label %CRYPTO_DOWN_REF.exit

CRYPTO_DOWN_REF.exit.thread:                      ; preds = %bb.b
  fence acquire
  br label %bb.c

CRYPTO_DOWN_REF.exit:                             ; preds = %bb.b
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %CRYPTO_DOWN_REF.exit.thread, %CRYPTO_DOWN_REF.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @ossl_crypto_mutex_free(ptr noundef nonnull %i.f) #10
  %i.g = load ptr, ptr %0, align 8, !tbaa !231
  tail call void @OPENSSL_LH_doall(ptr noundef %i.g, ptr noundef nonnull @free_this_token) #10
end_hunk_5
begin_hunk_6_@ossl_quic_callback_ctrl:bb.a
.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %.sink9 = phi i32 [ 15, %bb.c ], [ %1, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sink, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = call i64 @ssl3_callback_ctrl(ptr noundef %i.h, i32 noundef %.sink9, ptr noundef %2) #10
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.i, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %.0
}

declare i64 @ssl3_callback_ctrl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ossl_quic_ctx_callback_ctrl(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @ssl3_ctx_callback_ctrl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10
  ret i64 %i.a
}

declare i64 @ssl3_ctx_callback_ctrl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ossl_quic_renegotiate_check(ptr noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_quic_get_cipher_by_char(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ssl3_get_cipher_by_char(ptr noundef %0) #10 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !247
  %i.e = and i32 %i.d, 262144
  %i.f = icmp eq i32 %i.e, 0
  %. = select i1 %i.f, ptr null, ptr %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %., %bb.b ]
  ret ptr %.0
}

declare ptr @ssl3_get_cipher_by_char(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ossl_quic_num_ciphers() local_unnamed_addr #3 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @ossl_quic_get_cipher(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @ossl_quic_get_shutdown(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.qctx_st, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.e) #10
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.j = call i32 @ossl_quic_channel_is_closing(ptr noundef %i.i) #10
  %.not6 = icmp eq i32 %i.j, 0
  %spec.select = select i1 %.not6, i32 3, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.04 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %.04
}

declare i32 @ossl_quic_channel_is_closing(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_conn_poll_events(ptr noundef readonly captures(address) %0, i64 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 277, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786690, ptr noundef null)
  br label %expect_quic_as.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !65
  switch i32 %i.d, label %bb.g [
    i32 131, label %bb.d
    i32 130, label %expect_quic_as.exit
    i32 128, label %bb.e
    i32 129, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 225, ptr noundef nonnull @__func__.wrong_type, i32 noundef 524556, ptr noundef null)
  br label %expect_quic_as.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !139
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128
  br label %expect_quic_as.exit

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139
  br label %expect_quic_as.exit

bb.g:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 368, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786691, ptr noundef null)
  br label %expect_quic_as.exit.thread

expect_quic_as.exit:                              ; preds = %bb.c, %bb.f, %bb.e
  %.sroa.12.1 = phi ptr [ %i.l, %bb.f ], [ %i.f, %bb.e ], [ %0, %bb.c ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %i.j, %bb.f ], [ %0, %bb.e ], [ null, %bb.c ] ; 10 uses
  %.sroa.26.1 = phi ptr [ %0, %bb.f ], [ %i.h, %bb.e ], [ null, %bb.c ] ; 10 uses
  %i.m = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %bb.c ]
  %.not61 = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ false, %bb.c ]
  %i.n = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %.val.val = load ptr, ptr %i.n, align 8, !tbaa !147
  %i.o = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  tail call void @ossl_crypto_mutex_lock(ptr noundef %i.o) #10
  %.not36 = icmp eq ptr %.sroa.17.1, null         ; 2 uses
  br i1 %.not36, label %bb.j, label %bb.h

bb.h:                                             ; preds = %expect_quic_as.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.17.1, i64 336
  %i.q = load i16, ptr %i.p, align 8
  %i.r = and i16 %i.q, 1
  %.not37 = icmp eq i16 %i.r, 0
  br i1 %.not37, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = and i64 %1, 128
  br label %bb.bd

bb.j:                                             ; preds = %bb.h, %expect_quic_as.exit
  %.not39 = icmp eq i32 %2, 0
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val78 = load ptr, ptr %i.n, align 8, !tbaa !147
  %i.t = tail call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.val78) #10
  %i.u = tail call i32 @ossl_quic_reactor_tick(ptr noundef %i.t, i32 noundef 0) #10 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not40 = icmp eq ptr %.sroa.26.1, null
  br i1 %.not40, label %bb.ah, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = and i64 %1, 64
  %.not41 = icmp eq i64 %i.v, 0
  br i1 %.not41, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 0, ptr %i.b, align 8, !tbaa !173
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.26.1, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !149  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i64 %i.z, 16711680
  %i.ab = icmp eq i64 %i.aa, 262144
  br i1 %i.ab, label %test_poll_event_r.exit.thread128, label %bb.o

bb.o:                                             ; preds = %bb.n
  %4 = trunc i64 %i.z to i32
  %5 = and i32 %4, 16711680
  switch i32 %5, label %test_poll_event_r.exit.thread [
    i32 65536, label %bb.p
    i32 131072, label %bb.p
    i32 196608, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !163
  %i.ae = call i32 @ossl_quic_rstream_available(ptr noundef %i.ad, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #10
  %.not4.i = icmp eq i32 %i.ae, 0
  br i1 %.not4.i, label %test_poll_event_r.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.b, align 8, !tbaa !173
  %.not5.i = icmp eq i64 %i.af, 0
  br i1 %.not5.i, label %bb.r, label %test_poll_event_r.exit.thread128

bb.r:                                             ; preds = %bb.q
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !5
  %.not6.i = icmp eq i32 %i.ag, 0
  br i1 %.not6.i, label %test_poll_event_r.exit.thread, label %test_poll_event_r.exit

test_poll_event_r.exit.thread:                    ; preds = %bb.p, %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.s

test_poll_event_r.exit.thread128:                 ; preds = %bb.n, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.t

test_poll_event_r.exit:                           ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.26.1, i64 136
  %i.ai = load i8, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.fr = freeze i8 %i.ai
  %.not42 = trunc i8 %.fr to i1
  br i1 %.not42, label %bb.s, label %bb.t

bb.s:                                             ; preds = %test_poll_event_r.exit.thread, %test_poll_event_r.exit
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %test_poll_event_r.exit, %test_poll_event_r.exit.thread128, %bb.m
  %.0 = phi i64 [ 0, %bb.m ], [ 0, %bb.s ], [ 64, %test_poll_event_r.exit ], [ 64, %test_poll_event_r.exit.thread128 ] ; 3 uses
  %i.aj = and i64 %1, 16
  %.not43 = icmp eq i64 %i.aj, 0
  br i1 %.not43, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.26.1, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !149
  %i.am = getelementptr i8, ptr %i.al, i64 256
  %.val5.i = load i64, ptr %i.am, align 8         ; 2 uses
  %i.an = and i64 %.val5.i, 16711680
  %.not6.i86 = icmp eq i64 %i.an, 0
  br i1 %.not6.i86, label %test_poll_event_er.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = trunc i64 %.val5.i to i32
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = and i32 %i.ap, 255
  %i.ar = add nsw i32 %i.aq, -7
  %narrow.i.i = icmp ult i32 %i.ar, -2
  br i1 %narrow.i.i, label %test_poll_event_er.exit.thread, label %test_poll_event_er.exit

test_poll_event_er.exit:                          ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.26.1, i64 136
  %i.at = load i8, ptr %i.as, align 8
  %.fr147 = freeze i8 %i.at
  %.not44 = trunc i8 %.fr147 to i1
  %i.au = or disjoint i64 %.0, 16
  br i1 %.not44, label %test_poll_event_er.exit.thread, label %bb.w

test_poll_event_er.exit.thread:                   ; preds = %bb.u, %bb.v, %test_poll_event_er.exit
  br label %bb.w

bb.w:                                             ; preds = %test_poll_event_er.exit.thread, %test_poll_event_er.exit, %bb.t
  %.1 = phi i64 [ %.0, %bb.t ], [ %.0, %test_poll_event_er.exit.thread ], [ %i.au, %test_poll_event_er.exit ] ; 3 uses
  %i.av = and i64 %1, 128
  %.not45 = icmp eq i64 %i.av, 0
  br i1 %.not45, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.26.1, i64 120 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !140
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 336
  %i.az = load i16, ptr %i.ay, align 8
  %i.ba = and i16 %i.az, 32
  %.not.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i, label %bb.y, label %test_poll_event_w.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.26.1, i64 128 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !149 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 256
  %.val.i = load i64, ptr %i.bd, align 8
  %6 = trunc i64 %.val.i to i16
  %trunc.i.i = and i16 %6, -256
  switch i16 %trunc.i.i, label %test_poll_event_w.exit.thread [
    i16 256, label %bb.z
    i16 512, label %bb.z
    i16 768, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !150
  %i.bg = call i64 @ossl_quic_sstream_get_buffer_avail(ptr noundef %i.bf) #10
  %.not8.i = icmp eq i64 %i.bg, 0
  br i1 %.not8.i, label %test_poll_event_w.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !149
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !150
  %i.bk = call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.bj, ptr noundef null) #10
  %.not9.i = icmp eq i32 %i.bk, 0
  br i1 %.not9.i, label %bb.ab, label %test_poll_event_w.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !149
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = call i64 @ossl_quic_txfc_get_cwm(ptr noundef nonnull %i.bm) #10
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !149
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !150
  %i.br = call i64 @ossl_quic_sstream_get_cur_size(ptr noundef %i.bq) #10
  %i.bs = icmp ugt i64 %i.bn, %i.br
  br i1 %i.bs, label %bb.ac, label %test_poll_event_w.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.bt = load ptr, ptr %i.aw, align 8, !tbaa !140 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 336
  %i.bv = load i16, ptr %i.bu, align 8
  %i.bw = and i16 %i.bv, 32
  %.not.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i.i, label %bb.ad, label %test_poll_event_w.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 160 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !117
  %i.bz = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.by) #10
  %.not4.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not4.i.i, label %test_poll_event_w.exit, label %test_poll_event_w.exit.thread

test_poll_event_w.exit:                           ; preds = %bb.ad
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !117
  %i.cb = call i32 @ossl_quic_channel_is_active(ptr noundef %i.ca) #10
  %.fr148.a = freeze i32 %i.cb
  %.not6.i.i.not = icmp eq i32 %.fr148.a, 0
  %i.cc = or i64 %.1, 128
  br i1 %.not6.i.i.not, label %test_poll_event_w.exit.thread, label %bb.ae

test_poll_event_w.exit.thread:                    ; preds = %bb.ad, %bb.y, %bb.ac, %bb.x, %bb.z, %bb.aa, %bb.ab, %test_poll_event_w.exit
  br label %bb.ae

bb.ae:                                            ; preds = %test_poll_event_w.exit.thread, %test_poll_event_w.exit, %bb.w
  %.2 = phi i64 [ %.1, %bb.w ], [ %.1, %test_poll_event_w.exit.thread ], [ %i.cc, %test_poll_event_w.exit ] ; 3 uses
  %i.cd = and i64 %1, 32
  %.not47 = icmp eq i64 %i.cd, 0
  br i1 %.not47, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.26.1, i64 128
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !149
  %i.cg = getelementptr i8, ptr %i.cf, i64 256
  %.val.i89 = load i64, ptr %i.cg, align 8        ; 2 uses
  %i.ch = and i64 %.val.i89, 65280
  %.not7.i = icmp eq i64 %i.ch, 0
  %i.ci = and i64 %.val.i89, 134217728
  %.not4.i90 = icmp eq i64 %i.ci, 0
  %or.cond.i = or i1 %.not7.i, %.not4.i90
  br i1 %or.cond.i, label %test_poll_event_ew.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.26.1, i64 136
  %i.ck = load i8, ptr %i.cj, align 8
  %i.cl = and i8 %i.ck, 2
  %.not5.i91 = icmp eq i8 %i.cl, 0
  br i1 %.not5.i91, label %test_poll_event_ew.exit, label %test_poll_event_ew.exit.thread

test_poll_event_ew.exit:                          ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.26.1, i64 120
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !140
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 336
  %i.cp = load i16, ptr %i.co, align 8
  %.fr150 = freeze i16 %i.cp
  %i.cq = and i16 %.fr150, 32
  %.not6.i92.not = icmp eq i16 %i.cq, 0
  %i.cr = or i64 %.2, 32
  br i1 %.not6.i92.not, label %bb.ah, label %test_poll_event_ew.exit.thread

test_poll_event_ew.exit.thread:                   ; preds = %bb.af, %bb.ag, %test_poll_event_ew.exit
  br label %bb.ah

bb.ah:                                            ; preds = %test_poll_event_ew.exit.thread, %test_poll_event_ew.exit, %bb.ae, %bb.l
  %.3 = phi i64 [ 0, %bb.l ], [ %.2, %bb.ae ], [ %.2, %test_poll_event_ew.exit.thread ], [ %i.cr, %test_poll_event_ew.exit ] ; 4 uses
  %or.cond = or i1 %.not36, %i.m
  br i1 %or.cond, label %bb.ay, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cs = and i64 %1, 4
  %.not49 = icmp eq i64 %i.cs, 0
  br i1 %.not49, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ct = getelementptr i8, ptr %.sroa.17.1, i64 160
  %.val80 = load ptr, ptr %i.ct, align 8, !tbaa !117
  %i.cu = call i32 @ossl_quic_channel_is_term_any(ptr noundef %.val80) #10
  %.not50 = icmp eq i32 %i.cu, 0
  %i.cv = or i64 %.3, 4
  %spec.select70 = select i1 %.not50, i64 %.3, i64 %i.cv
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.4 = phi i64 [ %.3, %bb.ai ], [ %spec.select70, %bb.aj ] ; 3 uses
  %i.cw = and i64 %1, 8
  %.not51 = icmp eq i64 %i.cw, 0
  br i1 %.not51, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cx = getelementptr i8, ptr %.sroa.17.1, i64 160
  %.val81 = load ptr, ptr %i.cx, align 8, !tbaa !117
  %i.cy = call i32 @ossl_quic_channel_is_terminated(ptr noundef %.val81) #10
  %.not52 = icmp eq i32 %i.cy, 0
  %i.cz = or i64 %.4, 8
  %spec.select71 = select i1 %.not52, i64 %.4, i64 %i.cz
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.5 = phi i64 [ %.4, %bb.ak ], [ %spec.select71, %bb.al ] ; 3 uses
  %i.da = and i64 %1, 512
  %.not53 = icmp eq i64 %i.da, 0
  br i1 %.not53, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = getelementptr i8, ptr %.sroa.17.1, i64 160
  %.val83 = load ptr, ptr %i.db, align 8, !tbaa !117
  %i.dc = call ptr @ossl_quic_channel_get_qsm(ptr noundef %.val83) #10
  %i.dd = call i64 @ossl_quic_stream_map_get_accept_queue_len(ptr noundef %i.dc, i32 noundef 0) #10
  %i.de = and i64 %i.dd, 4294967295
  %.not54 = icmp eq i64 %i.de, 0
  %i.df = or i64 %.5, 512
  %spec.select72 = select i1 %.not54, i64 %.5, i64 %i.df
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.6 = phi i64 [ %.5, %bb.am ], [ %spec.select72, %bb.an ] ; 3 uses
  %i.dg = and i64 %1, 1024
  %.not55 = icmp eq i64 %i.dg, 0
  br i1 %.not55, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dh = getelementptr i8, ptr %.sroa.17.1, i64 160
  %.val82 = load ptr, ptr %i.dh, align 8, !tbaa !117
  %i.di = call ptr @ossl_quic_channel_get_qsm(ptr noundef %.val82) #10
  %i.dj = call i64 @ossl_quic_stream_map_get_accept_queue_len(ptr noundef %i.di, i32 noundef 1) #10
  %i.dk = and i64 %i.dj, 4294967295
  %.not56 = icmp eq i64 %i.dk, 0
  %i.dl = or i64 %.6, 1024
  %spec.select73 = select i1 %.not56, i64 %.6, i64 %i.dl
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.7 = phi i64 [ %.6, %bb.ao ], [ %spec.select73, %bb.ap ] ; 3 uses
  %i.dm = and i64 %1, 2048
  %.not57 = icmp eq i64 %i.dm, 0
  br i1 %.not57, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.17.1, i64 336
  %i.do = load i16, ptr %i.dn, align 8
  %i.dp = and i16 %i.do, 32
  %.not.i.i93 = icmp eq i16 %i.dp, 0
  br i1 %.not.i.i93, label %bb.as, label %test_poll_event_os.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.17.1, i64 160 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !117
  %i.ds = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.dr) #10
  %.not4.i.i94 = icmp eq i32 %i.ds, 0
  br i1 %.not4.i.i94, label %bb.at, label %test_poll_event_os.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !117
  %i.du = call i32 @ossl_quic_channel_is_active(ptr noundef %i.dt) #10
  %.not6.i.i95 = icmp eq i32 %i.du, 0
  br i1 %.not6.i.i95, label %test_poll_event_os.exit.thread, label %test_poll_event_os.exit

test_poll_event_os.exit:                          ; preds = %bb.at
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !117
  %i.dw = call i64 @ossl_quic_channel_get_local_stream_count_avail(ptr noundef %i.dv, i32 noundef 0) #10
  %.fr151.a = freeze i64 %i.dw
  %.not = icmp eq i64 %.fr151.a, 0
  %i.dx = or i64 %.7, 2048
  br i1 %.not, label %test_poll_event_os.exit.thread, label %bb.au

test_poll_event_os.exit.thread:                   ; preds = %bb.at, %bb.as, %bb.ar, %test_poll_event_os.exit
  br label %bb.au

bb.au:                                            ; preds = %test_poll_event_os.exit.thread, %test_poll_event_os.exit, %bb.aq
  %.8 = phi i64 [ %.7, %bb.aq ], [ %.7, %test_poll_event_os.exit.thread ], [ %i.dx, %test_poll_event_os.exit ] ; 3 uses
  %i.dy = and i64 %1, 4096
  %.not59 = icmp eq i64 %i.dy, 0
  br i1 %.not59, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.17.1, i64 336
  %i.ea = load i16, ptr %i.dz, align 8
  %i.eb = and i16 %i.ea, 32
  %.not.i.i96 = icmp eq i16 %i.eb, 0
  br i1 %.not.i.i96, label %bb.aw, label %test_poll_event_os.exit100.thread

bb.aw:                                            ; preds = %bb.av
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.17.1, i64 160 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !117
  %i.ee = call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.ed) #10
  %.not4.i.i97 = icmp eq i32 %i.ee, 0
  br i1 %.not4.i.i97, label %bb.ax, label %test_poll_event_os.exit100.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !117
  %i.eg = call i32 @ossl_quic_channel_is_active(ptr noundef %i.ef) #10
  %.not6.i.i98 = icmp eq i32 %i.eg, 0
  br i1 %.not6.i.i98, label %test_poll_event_os.exit100.thread, label %test_poll_event_os.exit100

test_poll_event_os.exit100:                       ; preds = %bb.ax
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !117
  %i.ei = call i64 @ossl_quic_channel_get_local_stream_count_avail(ptr noundef %i.eh, i32 noundef 1) #10
  %.fr153 = freeze i64 %i.ei
  %.not152.a = icmp eq i64 %.fr153, 0
  %i.ej = or i64 %.8, 4096
  br i1 %.not152.a, label %test_poll_event_os.exit100.thread, label %bb.ay

test_poll_event_os.exit100.thread:                ; preds = %bb.ax, %bb.aw, %bb.av, %test_poll_event_os.exit100
  br label %bb.ay

bb.ay:                                            ; preds = %test_poll_event_os.exit100.thread, %test_poll_event_os.exit100, %bb.au, %bb.ah
  %.9 = phi i64 [ %.3, %bb.ah ], [ %.8, %bb.au ], [ %.8, %test_poll_event_os.exit100.thread ], [ %i.ej, %test_poll_event_os.exit100 ] ; 4 uses
  br i1 %.not61, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ek = and i64 %1, 2
  %.not62 = icmp eq i64 %i.ek, 0
  br i1 %.not62, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.el = getelementptr i8, ptr %.sroa.12.1, i64 136
  %.val84 = load ptr, ptr %i.el, align 8, !tbaa !143
  %i.em = call i32 @ossl_quic_port_is_running(ptr noundef %.val84) #10
  %.not.i101.not = icmp eq i32 %i.em, 0
  %i.en = or i64 %.9, 2
  %spec.select76 = select i1 %.not.i101.not, i64 %i.en, i64 %.9
  br label %bb.bb
end_hunk_6
begin_hunk_7_@expect_quic_as:bb.a
  %i.bc = icmp eq ptr %i.bb, null
  %i.bd = and i32 %spec.select, 2
  %i.be = icmp eq i32 %i.bd, 0
  %or.cond102 = or i1 %i.be, %i.bc
  br i1 %or.cond102, label %bb.ad, label %qctx_lock_for_io.exit._crit_edge

bb.ad:                                            ; preds = %bb.ac
  %.not.i113 = icmp samesign ult i32 %2, 256
  br i1 %.not.i113, label %bb.ae, label %wrong_type.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bf = trunc nuw i32 %spec.select to i8
  %trunc.i115 = and i8 %i.bf, -122
  switch i8 %trunc.i115, label %.fold.split.i117 [
    i8 -128, label %bb.ah
    i8 4, label %bb.af
    i8 2, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  br label %bb.ah

.fold.split.i117:                                 ; preds = %bb.ae
  br label %bb.ah

bb.ah:                                            ; preds = %.fold.split.i117, %bb.ag, %bb.af, %bb.ae
  %.0.i116 = phi i32 [ 422, %bb.ae ], [ 421, %bb.af ], [ 524556, %.fold.split.i117 ], [ 355, %bb.ag ]
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 225, ptr noundef nonnull @__func__.wrong_type, i32 noundef %.0.i116, ptr noundef null)
  br label %wrong_type.exit

qctx_lock_for_io.exit._crit_edge:                 ; preds = %qctx_lock_for_io.exit, %bb.ac
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !134
  br label %bb.aq

bb.ai:                                            ; preds = %bb.c
  %i.bg = and i32 %spec.select, 2
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %.not.i119 = icmp samesign ult i32 %2, 256
  br i1 %.not.i119, label %bb.ak, label %wrong_type.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bi = trunc nuw i32 %2 to i8
  %trunc.i121 = and i8 %i.bi, -123
  switch i8 %trunc.i121, label %.fold.split.i123 [
    i8 -128, label %bb.an
    i8 4, label %bb.al
    i8 1, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  br label %bb.an

.fold.split.i123:                                 ; preds = %bb.ak
  br label %bb.an

bb.an:                                            ; preds = %.fold.split.i123, %bb.am, %bb.al, %bb.ak
  %.0.i122 = phi i32 [ 422, %bb.ak ], [ 421, %bb.al ], [ 356, %bb.am ], [ 524556, %.fold.split.i123 ]
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 225, ptr noundef nonnull @__func__.wrong_type, i32 noundef %.0.i122, ptr noundef null)
  br label %wrong_type.exit.thread

bb.ao:                                            ; preds = %bb.ai
  store ptr %0, ptr %1, align 8, !tbaa !161
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !140 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bm = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !168
  %i.bn = shufflevector <2 x ptr> %i.bm, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bn, ptr %i.e, align 8, !tbaa !168
  store ptr %i.bk, ptr %i.g, align 8, !tbaa !138
  store ptr %0, ptr %i.h, align 8, !tbaa !134
  store i32 1, ptr %i.i, align 8, !tbaa !133
  br label %bb.aq

bb.ap:                                            ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 368, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786691, ptr noundef null)
  br label %wrong_type.exit.thread

bb.aq:                                            ; preds = %bb.ao, %qctx_lock_for_io.exit._crit_edge, %bb.n, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.n ], [ %.091133, %qctx_lock_for_io.exit._crit_edge ], [ 0, %bb.ao ] ; 2 uses
  %i.bo = icmp eq i32 %i.a, 0
  %i.bp = icmp ne i32 %.1, 0
  %or.cond = or i1 %i.bo, %i.bp
  br i1 %or.cond, label %wrong_type.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val = load ptr, ptr %1, align 8, !tbaa !161
  %i.bq = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.bq, align 8, !tbaa !147
  %i.br = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  tail call void @ossl_crypto_mutex_lock(ptr noundef %i.br) #10
  br i1 %.not94, label %wrong_type.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 1, ptr %i.m, align 4, !tbaa !130
  %i.bs = load i32, ptr %i.i, align 8, !tbaa !133
  %.not9.i.i127 = icmp eq i32 %i.bs, 0
  br i1 %.not9.i.i127, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !134 ; 2 uses
  %.not10.i.i128 = icmp eq ptr %i.bt, null
  br i1 %.not10.i.i128, label %wrong_type.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 184
  store i32 0, ptr %i.bu, align 8, !tbaa !135
  br label %wrong_type.exit.thread

bb.av:                                            ; preds = %bb.as
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !138 ; 2 uses
  %.not12.i.i129 = icmp eq ptr %i.bv, null
  br i1 %.not12.i.i129, label %wrong_type.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 376
  store i32 0, ptr %i.bw, align 8, !tbaa !127
  br label %wrong_type.exit.thread

wrong_type.exit:                                  ; preds = %bb.ah, %bb.ad, %bb.aq, %bb.ab, %bb.aa, %quic_mutation_allowed.exit, %bb.y
  %.3 = phi i32 [ 1, %bb.aa ], [ 1, %bb.ab ], [ %.091133, %bb.ad ], [ %.091133, %bb.ah ], [ 1, %bb.y ], [ 1, %quic_mutation_allowed.exit ], [ %.1, %bb.aq ]
  %or.cond3 = phi i1 [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.ad ], [ false, %bb.ah ], [ false, %bb.y ], [ false, %quic_mutation_allowed.exit ], [ %i.b, %bb.aq ]
  %.090 = phi i32 [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.ah ], [ 0, %bb.y ], [ 0, %quic_mutation_allowed.exit ], [ 1, %bb.aq ] ; 2 uses
  %.not100 = icmp eq i32 %.3, 0
  %brmerge = or i1 %.not100, %or.cond3
  br i1 %brmerge, label %wrong_type.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %wrong_type.exit
  %.val104 = load ptr, ptr %1, align 8, !tbaa !161
  %i.bx = getelementptr i8, ptr %.val104, i64 88
  %.val104.val = load ptr, ptr %i.bx, align 8, !tbaa !147
  %i.by = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val104.val) #10
  tail call void @ossl_crypto_mutex_unlock(ptr noundef %i.by) #10
  br label %wrong_type.exit.thread

wrong_type.exit.thread:                           ; preds = %bb.ar, %bb.at, %bb.aw, %bb.av, %bb.au, %bb.aj, %bb.i, %bb.e, %bb.m, %.fold.split.i, %bb.an, %bb.ap, %bb.b, %wrong_type.exit, %bb.ax
  %.090141 = phi i32 [ %.090, %bb.ax ], [ %.090, %wrong_type.exit ], [ 0, %bb.b ], [ 0, %bb.ap ], [ 0, %bb.an ], [ 0, %.fold.split.i ], [ 0, %bb.m ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.aj ], [ 1, %bb.au ], [ 1, %bb.av ], [ 1, %bb.aw ], [ 1, %bb.at ], [ 1, %bb.ar ]
  ret i32 %.090141
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @qc_wait_for_default_xso_for_read(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.quic_wait_for_stream_args, align 8 ; 7 uses
  %3 = alloca %struct.ossl_rtt_info_st, align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %i.e = and i16 %i.d, 16
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 340 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !120
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 2133, ptr noundef nonnull @__func__.qc_wait_for_default_xso_for_read, i32 noundef 355, ptr noundef null)
  br label %quic_raise_normal_error.exit

bb.d:                                             ; preds = %bb.b
  %i.i = and i16 %i.d, 2
  %.not42 = icmp eq i16 %i.i, 0
  %i.j = zext i1 %.not42 to i64                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.m = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.l) #10
  %i.n = tail call ptr @ossl_quic_stream_map_get_by_id(ptr noundef %i.m, i64 noundef %i.j) #10 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %.thread52

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.q = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.p) #10
  %i.r = or disjoint i64 %i.j, 2
  %i.s = tail call ptr @ossl_quic_stream_map_get_by_id(ptr noundef %i.q, i64 noundef %i.r) #10 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %.thread52

bb.f:                                             ; preds = %bb.e
  %.val46 = load ptr, ptr %0, align 8, !tbaa !161 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0.i.i = phi ptr [ %.val46, %bb.f ], [ %i.y, %bb.h ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 96
  switch i8 %i.w, label %qctx_should_autotick.exit.thread.i [
    i8 0, label %bb.h
    i8 64, label %.loopexit
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !169  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %qctx_should_autotick.exit.thread.i, label %bb.g, !llvm.loop !177

qctx_should_autotick.exit.thread.i:               ; preds = %bb.h, %bb.g
  %i.z = getelementptr i8, ptr %.val46, i64 88
  %.val2.i = load ptr, ptr %i.z, align 8, !tbaa !147
  %i.aa = tail call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.val2.i) #10
  %i.ab = tail call i32 @ossl_quic_reactor_tick(ptr noundef %i.aa, i32 noundef 0) #10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %qctx_should_autotick.exit.thread.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.ad = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.ac) #10
  %i.ae = tail call ptr @ossl_quic_stream_map_get_by_id(ptr noundef %i.ad, i64 noundef %i.j) #10 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %.thread52

bb.i:                                             ; preds = %.loopexit
  %.not43 = icmp eq i32 %1, 0
  br i1 %.not43, label %bb.j, label %quic_raise_normal_error.exit

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.ah = tail call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.ag) #10
  %.not44 = icmp eq i32 %i.ah, 0
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 2163, ptr noundef nonnull @__func__.qc_wait_for_default_xso_for_read, i32 noundef 207, ptr noundef null)
  br label %quic_raise_normal_error.exit

bb.l:                                             ; preds = %bb.j
  %.val = load ptr, ptr %0, align 8, !tbaa !161
  %i.ai = tail call i32 @ossl_quic_obj_blocking(ptr noundef %.val) #10
  %.not45 = icmp eq i32 %i.ai, 0
  br i1 %.not45, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !130
  %.not.i.i48 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i48, label %quic_raise_normal_error.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load i32, ptr %i.al, align 8, !tbaa !133
  %.not9.i.i = icmp eq i32 %i.am, 0
  br i1 %.not9.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !134 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ao, null
  br i1 %.not10.i.i, label %quic_raise_normal_error.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 184
  store i32 2, ptr %i.ap, align 8, !tbaa !135
  br label %quic_raise_normal_error.exit

bb.q:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.aq, null
  br i1 %.not12.i.i, label %quic_raise_normal_error.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 376
  store i32 2, ptr %i.ar, align 8, !tbaa !127
  br label %quic_raise_normal_error.exit

bb.s:                                             ; preds = %bb.l
  store ptr %i.b, ptr %2, align 8, !tbaa !253
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.as, align 8, !tbaa !255
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.at, align 8, !tbaa !256
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.j, ptr %i.au, align 8, !tbaa !257
  %.val47 = load ptr, ptr %0, align 8, !tbaa !161
  %i.av = getelementptr i8, ptr %.val47, i64 88
  %.val47.val = load ptr, ptr %i.av, align 8, !tbaa !147
  %i.aw = call fastcc i32 @block_until_pred(ptr %.val47.val, ptr noundef nonnull @quic_wait_for_stream, ptr noundef nonnull %2) ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 2177, ptr noundef nonnull @__func__.qc_wait_for_default_xso_for_read, i32 noundef 786691, ptr noundef null)
  br label %quic_raise_normal_error.exit

bb.u:                                             ; preds = %bb.s
  %i.ay = icmp slt i32 %i.aw, 0
  %i.az = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  %or.cond = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond, label %quic_raise_normal_error.exit, label %.thread52

.thread52:                                        ; preds = %bb.d, %bb.e, %bb.u, %.loopexit
  %.2 = phi ptr [ %i.ae, %.loopexit ], [ %i.az, %bb.u ], [ %i.s, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.bc = call ptr @ossl_quic_channel_get_statm(ptr noundef %i.bb) #10
  call void @ossl_statm_get_rtt_info(ptr noundef %i.bc, ptr noundef nonnull %3) #10
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.be = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.bd) #10
  %i.bf = load i64, ptr %3, align 8
  call void @ossl_quic_stream_map_remove_from_accept_queue(ptr noundef %i.be, ptr noundef nonnull %.2, i64 %i.bf) #10
  %i.bg = call fastcc ptr @create_xso_from_stream(ptr noundef nonnull %i.b, ptr noundef nonnull %.2) ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !128 ; 3 uses
  %.not.i.i49 = icmp eq ptr %i.bi, %i.bg
  br i1 %.not.i.i49, label %qc_set_default_xso.exit, label %bb.v

bb.v:                                             ; preds = %.thread52
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !128
  %i.bj = icmp eq ptr %i.bg, null
  br i1 %i.bj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bk = call i32 @SSL_up_ref(ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %qc_set_default_xso_keep_ref.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bm = atomicrmw sub ptr %i.bl, i32 1 release, align 4
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.y, label %qc_set_default_xso_keep_ref.exit.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  br label %qc_set_default_xso_keep_ref.exit.i

qc_set_default_xso_keep_ref.exit.i:               ; preds = %bb.x, %bb.y, %bb.w
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %qc_set_default_xso.exitthread-pre-split, label %bb.z

bb.z:                                             ; preds = %qc_set_default_xso_keep_ref.exit.i
  call void @SSL_free(ptr noundef nonnull %i.bi) #10
  br label %qc_set_default_xso.exitthread-pre-split

qc_set_default_xso.exitthread-pre-split:          ; preds = %bb.z, %qc_set_default_xso_keep_ref.exit.i
  %.pr = load ptr, ptr %i.bh, align 8, !tbaa !128
  br label %qc_set_default_xso.exit

qc_set_default_xso.exit:                          ; preds = %.thread52, %qc_set_default_xso.exitthread-pre-split
  %i.bo = phi ptr [ %.pr, %qc_set_default_xso.exitthread-pre-split ], [ %i.bg, %.thread52 ]
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %qc_set_default_xso.exit
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 2198, ptr noundef nonnull @__func__.qc_wait_for_default_xso_for_read, i32 noundef 786691, ptr noundef null)
  br label %quic_raise_normal_error.exit

bb.ab:                                            ; preds = %qc_set_default_xso.exit
  %i.bq = load i16, ptr %i.c, align 8
  %i.br = or i16 %i.bq, 16
  store i16 %i.br, ptr %i.c, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !126 ; 2 uses
  %cond.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %cond.i.i.i, label %bb.ac, label %qc_touch_default_xso.exit

bb.ac:                                            ; preds = %bb.ab
  %i.bu = load i32, ptr %i.f, align 4, !tbaa !120
  %i.bv = icmp eq i32 %i.bu, 0
  %spec.select.i.i.i = select i1 %i.bv, i32 1, i32 2
  br label %qc_touch_default_xso.exit

qc_touch_default_xso.exit:                        ; preds = %bb.ab, %bb.ac
  %.0.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.ac ], [ %i.bt, %bb.ab ]
  %i.bw = icmp eq i32 %.0.i.i.i, 2
  %i.bx = zext i1 %i.bw to i32
  %i.by = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !129
  call void @ossl_quic_channel_set_incoming_stream_auto_reject(ptr noundef %i.by, i32 noundef %i.bx, i64 noundef %i.ca) #10
  br label %quic_raise_normal_error.exit

quic_raise_normal_error.exit:                     ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.u, %bb.i, %qc_touch_default_xso.exit, %bb.aa, %bb.t, %bb.k, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.u ], [ 0, %bb.k ], [ 0, %bb.t ], [ 0, %bb.i ], [ 0, %bb.aa ], [ 1, %qc_touch_default_xso.exit ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @qc_try_create_default_xso_for_write(ptr noundef nonnull readonly captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 16
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@ossl_quic_reactor_block_until_pred
declare i32 @ossl_quic_reactor_block_until_pred(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_quic_channel_is_handshake_complete(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_port_is_addressed_w(ptr noundef) local_unnamed_addr #2

declare i32 @BIO_ADDR_family(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_channel_set_peer_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_obj_desires_blocking(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @quic_handshake_wait(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !181    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 32
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %bb.b, label %tls_wants_non_io_retry.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.g = tail call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.f) #10
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %bb.c, label %tls_wants_non_io_retry.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.i = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.h) #10
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %tls_wants_non_io_retry.exit, label %quic_mutation_allowed.exit

quic_mutation_allowed.exit:                       ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !181
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.m = tail call i32 @ossl_quic_channel_is_handshake_complete(ptr noundef %i.l) #10
  %.not4 = icmp eq i32 %i.m, 0
  br i1 %.not4, label %bb.d, label %tls_wants_non_io_retry.exit

bb.d:                                             ; preds = %quic_mutation_allowed.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !181
  %i.o = getelementptr i8, ptr %i.n, i64 120
  %.val = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.p = tail call i32 @SSL_want(ptr noundef %.val) #10
  %switch.tableidx = add i32 %i.p, -4             ; 2 uses
  %i.q = icmp ult i32 %switch.tableidx, 5
  br i1 %i.q, label %switch.lookup, label %tls_wants_non_io_retry.exit

switch.lookup:                                    ; preds = %bb.d
  %i.r = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.quic_handshake_wait, i64 %i.r
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %tls_wants_non_io_retry.exit

tls_wants_non_io_retry.exit:                      ; preds = %bb.d, %switch.lookup, %bb.c, %bb.b, %bb.a, %quic_mutation_allowed.exit
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ 1, %quic_mutation_allowed.exit ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i32 @SSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_quic_channel_start(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_thread_assist_init_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_want(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_channel_is_new_local_stream_admissible(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @quic_new_stream_wait(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !183    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 32
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %bb.b, label %quic_mutation_allowed.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.g = tail call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.f) #10
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %bb.c, label %quic_mutation_allowed.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.i = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.h) #10
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %quic_mutation_allowed.exit.thread, label %quic_mutation_allowed.exit

quic_mutation_allowed.exit:                       ; preds = %bb.c
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !185
  %i.m = tail call i32 @ossl_quic_channel_is_new_local_stream_admissible(ptr noundef %i.j, i32 noundef %i.l) #10
  %.not5 = icmp ne i32 %i.m, 0
  %. = zext i1 %.not5 to i32
  br label %quic_mutation_allowed.exit.thread

quic_mutation_allowed.exit.thread:                ; preds = %bb.c, %bb.b, %bb.a, %quic_mutation_allowed.exit
  %.0 = phi i32 [ %., %quic_mutation_allowed.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

declare ptr @ossl_quic_channel_new_stream_local(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_quic_stream_map_release(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_channel_is_active(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_stream_map_ensure_send_part_id(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ossl_quic_channel_get_reactor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @xso_sstream_append(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 5 uses
  %i.e = tail call i64 @ossl_quic_sstream_get_cur_size(ptr noundef %i.d) #10
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = tail call i64 @ossl_quic_txfc_get_cwm(ptr noundef nonnull %i.g) #10
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.e)
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.i) ; 3 uses
  %i.j = tail call i64 @ossl_quic_sstream_get_buffer_size(ptr noundef %i.d) #10 ; 2 uses
  %i.k = tail call i64 @ossl_quic_sstream_get_buffer_avail(ptr noundef %i.d) #10 ; 2 uses
  %i.l = icmp ule i64 %spec.select, %i.k
  %i.m = icmp eq i64 %i.j, 6291456
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i, label %sstream_ensure_spare.exit.thread, label %sstream_ensure_spare.exit

sstream_ensure_spare.exit:                        ; preds = %bb.a
  %i.n = add i64 %spec.select, %i.j
  %i.o = sub i64 %i.n, %i.k
  %..i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 6291456)
  %i.p = tail call i32 @ossl_quic_sstream_set_buffer_size(ptr noundef %i.d, i64 noundef %..i) #10
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %sstream_ensure_spare.exit.thread

sstream_ensure_spare.exit.thread:                 ; preds = %bb.a, %sstream_ensure_spare.exit
  %i.q = tail call i32 @ossl_quic_sstream_append(ptr noundef %i.d, ptr noundef %1, i64 noundef %spec.select, ptr noundef %3) #10
  br label %bb.b

bb.b:                                             ; preds = %sstream_ensure_spare.exit, %sstream_ensure_spare.exit.thread
  %.0 = phi i32 [ %i.q, %sstream_ensure_spare.exit.thread ], [ 0, %sstream_ensure_spare.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2, 2) i32 @quic_write_again(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !tbaa !173
  %i.b = load ptr, ptr %0, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 32
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.b, label %quic_mutation_allowed.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.j = tail call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.i) #10
  %.not4.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i, label %bb.c, label %quic_mutation_allowed.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.l = tail call i32 @ossl_quic_channel_is_active(ptr noundef %i.k) #10
  %.not6.i = icmp eq i32 %i.l, 0
  br i1 %.not6.i, label %quic_mutation_allowed.exit.thread, label %quic_mutation_allowed.exit

quic_mutation_allowed.exit:                       ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !186    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %quic_validate_for_write.exit.thread, label %bb.d

bb.d:                                             ; preds = %quic_mutation_allowed.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !149  ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %quic_validate_for_write.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 256
  %i.t = load i64, ptr %i.s, align 8
  %1 = trunc i64 %i.t to i16
  %2 = add i16 %1, -256
  %3 = lshr i16 %2, 8
  %trunc.i = trunc nuw i16 %3 to i8
  switch i8 %trunc.i, label %quic_validate_for_write.exit.thread [
    i8 5, label %bb.i
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !140
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !117
  %i.y = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.x) #10
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !149
  %i.aa = tail call i32 @ossl_quic_stream_map_ensure_send_part_id(ptr noundef %i.y, ptr noundef %i.z) #10
  %.not.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i18, label %quic_validate_for_write.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !149
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.e, %bb.e
  %i.ab = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.q, %bb.e ], [ %i.q, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !150
  %i.ae = tail call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.ad, ptr noundef null) #10
  %.not15.i = icmp eq i32 %i.ae, 0
  br i1 %.not15.i, label %quic_validate_for_write.exit, label %quic_validate_for_write.exit.thread

bb.h:                                             ; preds = %bb.e
  br label %quic_validate_for_write.exit.thread

bb.i:                                             ; preds = %bb.e, %bb.e
  br label %quic_validate_for_write.exit.thread

quic_validate_for_write.exit.thread:              ; preds = %quic_mutation_allowed.exit, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sink.i = phi i32 [ 375, %bb.i ], [ 365, %bb.h ], [ 786691, %bb.f ], [ 366, %bb.e ], [ 786691, %quic_mutation_allowed.exit ], [ 786691, %bb.d ], [ 365, %bb.g ]
  store i32 %.sink.i, ptr %i.n, align 4, !tbaa !5
  br label %quic_mutation_allowed.exit.thread

quic_validate_for_write.exit:                     ; preds = %bb.g
  store i32 786691, ptr %i.n, align 8, !tbaa !191
  %i.af = load ptr, ptr %0, align 8, !tbaa !186
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !188
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !189
  %i.ak = call fastcc i32 @xso_sstream_append(ptr noundef %i.af, ptr noundef %i.ah, i64 noundef %i.aj, ptr noundef nonnull %i.a)
  %.not16 = icmp eq i32 %i.ak, 0
  br i1 %.not16, label %quic_mutation_allowed.exit.thread, label %bb.j

bb.j:                                             ; preds = %quic_validate_for_write.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !186   ; 3 uses
  %i.am = load i64, ptr %i.a, align 8, !tbaa !173 ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  %i.an = load i64, ptr %i.ai, align 8, !tbaa !189
  %i.ao = icmp ne i64 %i.an, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !192
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !140
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !117
  %i.av = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.au) #10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !149
  call void @ossl_quic_stream_map_update_state(ptr noundef %i.av, ptr noundef %i.ax) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = and i64 %i.aq, 1
  %.not8.i = icmp eq i64 %i.ay, 0
  %or.cond.i = or i1 %i.ao, %.not8.i
  br i1 %or.cond.i, label %quic_post_write.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !149
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !150
  call void @ossl_quic_sstream_fin(ptr noundef %i.bc) #10
  br label %quic_post_write.exit

quic_post_write.exit:                             ; preds = %bb.l, %bb.m
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !173 ; 4 uses
  %i.be = load ptr, ptr %i.ag, align 8, !tbaa !188
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store ptr %i.bf, ptr %i.ag, align 8, !tbaa !188
  %i.bg = load i64, ptr %i.ai, align 8, !tbaa !189 ; 2 uses
  %i.bh = sub i64 %i.bg, %i.bd
  store i64 %i.bh, ptr %i.ai, align 8, !tbaa !189
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !190
  %i.bk = add i64 %i.bj, %i.bd
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !190
  %i.bl = icmp eq i64 %i.bg, %i.bd
  %. = zext i1 %i.bl to i32
  br label %quic_mutation_allowed.exit.thread

quic_mutation_allowed.exit.thread:                ; preds = %bb.c, %bb.b, %bb.a, %quic_validate_for_write.exit.thread, %quic_post_write.exit, %quic_validate_for_write.exit
  %.0 = phi i32 [ %., %quic_post_write.exit ], [ -2, %quic_validate_for_write.exit ], [ -2, %quic_validate_for_write.exit.thread ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

declare i64 @ossl_quic_sstream_get_cur_size(ptr noundef) local_unnamed_addr #2

declare i64 @ossl_quic_txfc_get_cwm(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_sstream_append(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @quic_read_actual(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %6 = alloca %struct.ossl_rtt_info_st, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.k = load i64, ptr %i.j, align 8
  %7 = trunc i64 %i.k to i32
  %8 = and i32 %7, 16711680
  %9 = add nsw i32 %8, -65536
  %10 = lshr exact i32 %9, 16
  %trunc.i = trunc nuw i32 %10 to i16
  switch i16 %trunc.i, label %bb.l [
    i16 5, label %bb.e
    i16 0, label %quic_validate_for_read.exit
    i16 1, label %quic_validate_for_read.exit
    i16 2, label %quic_validate_for_read.exit
    i16 3, label %bb.f
    i16 4, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !140
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !117
  %i.p = tail call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.o) #10
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.r = tail call i32 @ossl_quic_stream_map_notify_app_read_reset_recv_part(ptr noundef %i.p, ptr noundef %i.q) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.w = load i32, ptr %i.v, align 4, !tbaa !130
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %quic_raise_normal_error.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !133
  %.not9.i.i = icmp eq i32 %i.y, 0
  br i1 %.not9.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !134  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.z, null
  br i1 %.not10.i.i, label %quic_raise_normal_error.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 184
  store i32 6, ptr %i.aa, align 8, !tbaa !135
  br label %quic_raise_normal_error.exit

bb.j:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !138 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ab, null
  br i1 %.not12.i.i, label %quic_raise_normal_error.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 376
  store i32 6, ptr %i.ac, align 8, !tbaa !127
  br label %quic_raise_normal_error.exit

bb.l:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.e
  %.050.ph.ph = phi i32 [ 786691, %bb.a ], [ 375, %bb.e ], [ 786691, %bb.b ], [ 379, %bb.c ]
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 2948, ptr noundef nonnull @__func__.quic_read_actual, i32 noundef %.050.ph.ph, ptr noundef null)
  br label %quic_raise_normal_error.exit

quic_validate_for_read.exit:                      ; preds = %bb.c, %bb.c, %bb.c
  %.not38 = icmp eq i32 %5, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !163 ; 2 uses
  br i1 %.not38, label %bb.o, label %bb.m

bb.m:                                             ; preds = %quic_validate_for_read.exit
  %i.af = call i32 @ossl_quic_rstream_peek(ptr noundef %i.ae, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %i.a) #10
  %.not40 = icmp eq i32 %i.af, 0
  br i1 %.not40, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 2955, ptr noundef nonnull @__func__.quic_read_actual, i32 noundef 786691, ptr noundef null)
  br label %quic_raise_normal_error.exit

bb.o:                                             ; preds = %quic_validate_for_read.exit
  %i.ag = call i32 @ossl_quic_rstream_read(ptr noundef %i.ae, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %i.a) #10
  %.not39 = icmp eq i32 %i.ag, 0
  br i1 %.not39, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 2960, ptr noundef nonnull @__func__.quic_read_actual, i32 noundef 786691, ptr noundef null)
  br label %quic_raise_normal_error.exit

bb.q:                                             ; preds = %bb.o
  %i.ah = load i64, ptr %4, align 8, !tbaa !173
  %.not41 = icmp eq i64 %i.ah, 0
  br i1 %.not41, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !117
  %i.ak = call ptr @ossl_quic_channel_get_statm(ptr noundef %i.aj) #10
  call void @ossl_statm_get_rtt_info(ptr noundef %i.ak, ptr noundef nonnull %6) #10
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.am = load i64, ptr %4, align 8, !tbaa !173
  %i.an = load i64, ptr %6, align 8
  %i.ao = call i32 @ossl_quic_rxfc_on_retire(ptr noundef nonnull %i.al, i64 noundef %i.am, i64 %i.an) #10
  %.not42.not = icmp eq i32 %i.ao, 0
  br i1 %.not42.not, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef 2977, ptr noundef nonnull @__func__.quic_read_actual, i32 noundef 786691, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %quic_raise_normal_error.exit

.critedge:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %bb.q
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !5
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 160
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !117
  %i.au = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.at) #10
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !149
  %i.ay = call i32 @ossl_quic_stream_map_notify_totally_read(ptr noundef %i.au, ptr noundef %i.ax) #10 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.az = load i64, ptr %4, align 8, !tbaa !173
  %.not43 = icmp eq i64 %i.az, 0
  br i1 %.not43, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !117
  %i.bc = call ptr @ossl_quic_channel_get_qsm(ptr noundef %i.bb) #10
  call void @ossl_quic_stream_map_update_state(ptr noundef %i.bc, ptr noundef nonnull %1) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.m, %bb.v, %bb.w
  %i.bd = load i64, ptr %4, align 8, !tbaa !173
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = load i32, ptr %i.a, align 4
  %i.bg = icmp ne i32 %i.bf, 0
  %or.cond3 = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond3, label %bb.y, label %quic_raise_normal_error.exit

bb.y:                                             ; preds = %bb.x
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 136 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8
  %i.bk = or i8 %i.bj, 1
  store i8 %i.bk, ptr %i.bi, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !130
  %.not.i.i44 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i44, label %quic_raise_normal_error.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !133
  %.not9.i.i45 = icmp eq i32 %i.bo, 0
  br i1 %.not9.i.i45, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !134 ; 2 uses
  %.not10.i.i46 = icmp eq ptr %i.bp, null
  br i1 %.not10.i.i46, label %quic_raise_normal_error.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 184
  store i32 6, ptr %i.bq, align 8, !tbaa !135
  br label %quic_raise_normal_error.exit

bb.ac:                                            ; preds = %bb.z
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !138 ; 2 uses
  %.not12.i.i47 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i47, label %quic_raise_normal_error.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 376
  store i32 6, ptr %i.bs, align 8, !tbaa !127
  br label %quic_raise_normal_error.exit

quic_raise_normal_error.exit:                     ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.s, %bb.x, %bb.p, %bb.n, %bb.l
  %.1 = phi i32 [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %bb.n ], [ 0, %bb.p ], [ 1, %bb.x ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 0, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @quic_read_again(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 32
  %.not.i = icmp eq i16 %i.f, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
end_hunk_8
