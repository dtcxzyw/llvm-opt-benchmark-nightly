Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_impl?download=true
inline.NumInlined: 424
inline.NumDeleted: 97
begin_hunk_0_@ossl_quic_conn_poll_events:bb.a

; Function Attrs: nounwind uwtable
define i32 @ossl_quic_get_notifier_fd(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 277, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786690, ptr noundef null)
  br label %expect_quic_as.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !65
  %i.c = and i32 %i.b, -4
  %switch = icmp eq i32 %i.c, 128
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 368, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786691, ptr noundef null)
  br label %expect_quic_as.exit

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.e = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  tail call void @ossl_crypto_mutex_lock(ptr noundef %i.e) #10
  %.val7 = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.f = tail call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.val7) #10
  %i.g = tail call ptr @ossl_quic_reactor_get0_notifier(ptr noundef %i.f) #10 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val9 = load i32, ptr %i.g, align 4, !tbaa !260
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i32 [ -1, %bb.e ], [ %.val9, %bb.f ]
  %.val8.val = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.i = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val8.val) #10
  tail call void @ossl_crypto_mutex_unlock(ptr noundef %i.i) #10
  br label %expect_quic_as.exit

expect_quic_as.exit:                              ; preds = %bb.d, %bb.b, %bb.g
  %.05 = phi i32 [ %.0, %bb.g ], [ -1, %bb.b ], [ -1, %bb.d ]
  ret i32 %.05
}

declare ptr @ossl_quic_reactor_get0_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ossl_quic_enter_blocking_section(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 277, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786690, ptr noundef null)
  br label %expect_quic_as.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !65
  %i.c = and i32 %i.b, -4
  %switch = icmp eq i32 %i.c, 128
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 368, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786691, ptr noundef null)
  br label %expect_quic_as.exit

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.e = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  tail call void @ossl_crypto_mutex_lock(ptr noundef %i.e) #10
  %.val3 = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.f = tail call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.val3) #10
  %i.g = tail call i32 @ossl_quic_reactor_wait_ctx_enter(ptr noundef %1, ptr noundef %i.f) #10 ; 0 uses
  %.val4.val = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.h = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val4.val) #10
  tail call void @ossl_crypto_mutex_unlock(ptr noundef %i.h) #10
  br label %expect_quic_as.exit

expect_quic_as.exit:                              ; preds = %bb.d, %bb.b, %bb.e
  ret void
}

declare i32 @ossl_quic_reactor_wait_ctx_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ossl_quic_leave_blocking_section(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 277, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786690, ptr noundef null)
  br label %expect_quic_as.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !65
  %i.c = and i32 %i.b, -4
  %switch = icmp eq i32 %i.c, 128
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 368, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786691, ptr noundef null)
  br label %expect_quic_as.exit

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.e = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val.val) #10
  tail call void @ossl_crypto_mutex_lock(ptr noundef %i.e) #10
  %.val3 = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.f = tail call ptr @ossl_quic_engine_get0_reactor(ptr noundef %.val3) #10
  tail call void @ossl_quic_reactor_wait_ctx_leave(ptr noundef %1, ptr noundef %i.f) #10
  %.val4.val = load ptr, ptr %i.d, align 8, !tbaa !149
  %i.g = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val4.val) #10
  tail call void @ossl_crypto_mutex_unlock(ptr noundef %i.g) #10
  br label %expect_quic_as.exit

expect_quic_as.exit:                              ; preds = %bb.d, %bb.b, %bb.e
  ret void
}

declare void @ossl_quic_reactor_wait_ctx_leave(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @ossl_quic_conn_get_channel(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.qctx_st, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = call fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_quic_set_diag_title(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1824 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 5589) #10
  store ptr null, ptr %i.a, align 8, !tbaa !261
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 5595) #10 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !261
  %i.e = icmp ne ptr %i.d, null
  %. = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_quic_channel_restore_err_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

declare void @ERR_vset_error(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

declare void @BIO_free_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @expect_quic_as(ptr noundef %0, ptr noundef nonnull initializes((0, 56)) %1, i32 noundef range(i32 1, 260) %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 32
  %i.b = icmp ne i32 %i.a, 0                      ; 2 uses
  %i.c = lshr i32 %2, 2
  %i.d = and i32 %i.c, 2
  %spec.select = or i32 %i.d, %2                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = and i32 %2, 64                           ; 2 uses
  %.not94 = icmp eq i32 %i.l, 0                   ; 2 uses
  %.lobit93 = lshr exact i32 %i.l, 6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %1, i8 0, i64 52, i1 false)
  store i32 %.lobit93, ptr %i.m, align 4, !tbaa !134
  %i.n = icmp eq ptr %0, null
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 277, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 786690, ptr noundef null)
  br label %wrong_type.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.o = load i32, ptr %0, align 8, !tbaa !65
  switch i32 %i.o, label %bb.ap [
    i32 131, label %bb.d
    i32 130, label %bb.h
    i32 128, label %bb.o
    i32 129, label %bb.ai
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = and i32 %2, 128
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp samesign ult i32 %2, 256
  br i1 %.not.i, label %bb.f, label %wrong_type.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.r = trunc nuw i32 %spec.select to i8
  %trunc.i = and i8 %i.r, 7
  %switch.tableidx = add nsw i8 %trunc.i, -1      ; 2 uses
  %i.s = icmp ult i8 %switch.tableidx, 4
  br i1 %i.s, label %switch.lookup, label %.fold.split.i

switch.lookup:                                    ; preds = %bb.f
  %i.t = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.expect_quic_as, i64 %i.t
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %.fold.split.i

.fold.split.i:                                    ; preds = %bb.f, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 524556, %bb.f ]
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 225, ptr noundef nonnull @__func__.wrong_type, i32 noundef %.0.i, ptr noundef null)
  br label %wrong_type.exit.thread

bb.g:                                             ; preds = %bb.d
  store ptr %0, ptr %1, align 8, !tbaa !163
  store ptr %0, ptr %i.e, align 8, !tbaa !167
  store i32 1, ptr %i.k, align 8, !tbaa !262
  br label %bb.aq

bb.h:                                             ; preds = %bb.c
  %i.u = and i32 %2, 4
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %.not.i105 = icmp samesign ult i32 %2, 256
  br i1 %.not.i105, label %bb.j, label %wrong_type.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.w = trunc nuw i32 %spec.select to i8
  %trunc.i107 = and i8 %i.w, -125
  switch i8 %trunc.i107, label %.fold.split.i109 [
    i8 -128, label %bb.m
    i8 3, label %bb.l
    i8 1, label %bb.k
    i8 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.j
  br label %bb.m

.fold.split.i109:                                 ; preds = %bb.j
  br label %bb.m

bb.m:                                             ; preds = %.fold.split.i109, %bb.l, %bb.k, %bb.j
  %.0.i108 = phi i32 [ 422, %bb.j ], [ 524556, %.fold.split.i109 ], [ 356, %bb.k ], [ 355, %bb.l ]
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef null, ptr nonnull poison, i32 noundef 225, ptr noundef nonnull @__func__.wrong_type, i32 noundef %.0.i108, ptr noundef null)
  br label %wrong_type.exit.thread

bb.n:                                             ; preds = %bb.h
  store ptr %0, ptr %1, align 8, !tbaa !163
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !147
  store ptr %i.y, ptr %i.e, align 8, !tbaa !167
  store ptr %0, ptr %i.f, align 8, !tbaa !168
  store i32 1, ptr %i.j, align 4, !tbaa !169
  br label %bb.aq

bb.o:                                             ; preds = %bb.c
  store ptr %0, ptr %1, align 8, !tbaa !163
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aa = load <2 x ptr>, ptr %i.z, align 8, !tbaa !170
  %i.ab = shufflevector <2 x ptr> %i.aa, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ab, ptr %i.e, align 8, !tbaa !170
  store ptr %0, ptr %i.g, align 8, !tbaa !140
  %i.ac = and i32 %2, 8
  %.not95 = icmp eq i32 %i.ac, 0
  br i1 %.not95, label %qctx_lock_for_io.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr i8, ptr %0, i64 88
  %.val103.val = load ptr, ptr %i.ad, align 8, !tbaa !149
  %i.ae = tail call ptr @ossl_quic_engine_get0_mutex(ptr noundef %.val103.val) #10
  tail call void @ossl_crypto_mutex_lock(ptr noundef %i.ae) #10
  br i1 %.not94, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.m, align 4, !tbaa !134
  %i.af = load i32, ptr %i.i, align 8, !tbaa !135
  %.not9.i.i = icmp eq i32 %i.af, 0
  br i1 %.not9.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !136 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 184
  store i32 0, ptr %i.ah, align 8, !tbaa !139
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !140 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ai, null
  br i1 %.not12.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 376
  store i32 0, ptr %i.aj, align 8, !tbaa !129
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.u, %bb.t, %bb.s, %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !130
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.w, label %qctx_lock_for_io.exit

bb.w:                                             ; preds = %bb.v
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = and i16 %i.ao, 32
  %.not.i111 = icmp eq i16 %i.ap, 0
  br i1 %.not.i111, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !119
  %i.as = tail call i32 @ossl_quic_channel_is_term_any(ptr noundef %i.ar) #10
  %.not4.i = icmp eq i32 %i.as, 0
  br i1 %.not4.i, label %quic_mutation_allowed.exit, label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @quic_raise_non_normal_error(ptr noundef nonnull %1, ptr nonnull poison, i32 noundef 325, ptr noundef nonnull @__func__.expect_quic_as, i32 noundef 207, ptr noundef null)
  br label %wrong_type.exit

quic_mutation_allowed.exit:                       ; preds = %bb.x
  %i.at = tail call fastcc i32 @quic_do_handshake(ptr noundef %1)
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %wrong_type.exit, label %bb.z

bb.z:                                             ; preds = %quic_mutation_allowed.exit
  %i.av = and i32 %2, 16
  %.not97 = icmp eq i32 %i.av, 0
  br i1 %.not97, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = tail call fastcc i32 @qc_wait_for_default_xso_for_read(ptr noundef %1, i32 noundef 0)
  %.not99 = icmp eq i32 %i.aw, 0
  br i1 %.not99, label %wrong_type.exit, label %qctx_lock_for_io.exit

bb.ab:                                            ; preds = %bb.z
  %i.ax = tail call fastcc i32 @qc_try_create_default_xso_for_write(ptr noundef %1)
  %.not98 = icmp eq i32 %i.ax, 0
  br i1 %.not98, label %wrong_type.exit, label %qctx_lock_for_io.exit

qctx_lock_for_io.exit:                            ; preds = %bb.o, %bb.aa, %bb.ab, %bb.v
  %.0133 = phi i32 [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.v ], [ 0, %bb.o ] ; 3 uses
  %i.ay = and i32 %2, 1
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !130 ; 2 uses
  br i1 %i.az, label %bb.ac, label %qctx_lock_for_io.exit._crit_edge

bb.ac:                                            ; preds = %qctx_lock_for_io.exit
  %i.bc = icmp eq ptr %i.bb, null
  %i.bd = and i32 %spec.select, 2
  %i.be = icmp eq i32 %i.bd, 0
  %or.cond102 = or i1 %i.be, %i.bc
  br i1 %or.cond102, label %bb.ad, label %qctx_lock_for_io.exit._crit_edge

bb.ad:                                            ; preds = %bb.ac
  %.not.i113 = icmp samesign ult i32 %2, 256
  br i1 %.not.i113, label %bb.ae, label %wrong_type.exit

bb.ae:                                            ; preds = %bb.ad
end_hunk_0
