inline.NumInlined: 46
inline.NumDeleted: 18
begin_hunk_0_@SSL_CTX_sess_set_new_cb
declare void @SSL_CTX_sess_set_new_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @new_session_cb(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @sess_out, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @BIO_new_file(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.409) #15 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.e = load ptr, ptr @sess_out, align 8, !tbaa !14
  %i.f = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.d, ptr noundef nonnull @.str.571, ptr noundef %i.e) #15 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @PEM_write_bio_SSL_SESSION(ptr noundef nonnull %i.b, ptr noundef %1) #15 ; 0 uses
  %i.h = tail call i32 @BIO_free(ptr noundef nonnull %i.b) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.i = tail call i32 @SSL_version(ptr noundef %0) #15
  %i.j = icmp eq i32 %i.i, 772
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @bio_c_out, align 8, !tbaa !20
  %i.l = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.k, ptr noundef nonnull @.str.572) #15 ; 0 uses
  %i.m = load ptr, ptr @bio_c_out, align 8, !tbaa !20
  %i.n = tail call i32 @SSL_SESSION_print(ptr noundef %i.m, ptr noundef %1) #15 ; 0 uses
  %i.o = load ptr, ptr @bio_c_out, align 8, !tbaa !20
  %i.p = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.o, ptr noundef nonnull @.str.573) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret i32 0
}

declare i32 @set_keylog_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SSL_new(ptr noundef) local_unnamed_addr #2

declare void @SSL_set_post_handshake_auth(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_set1_client_cert_type(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_set1_server_cert_type(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_set_session(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_SESSION_free(ptr noundef) local_unnamed_addr #2

declare i64 @SSL_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @is_dNS_name(ptr noundef nonnull readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17 ; 4 uses
  %.not92 = icmp eq i64 %i.a, 0
  br i1 %.not92, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = add i64 %i.a, -1
  %i.c = load i8, ptr %0, align 1, !tbaa !27      ; 4 uses
  %i.d = add i8 %i.c, -97
  %or.cond.peel = icmp ult i8 %i.d, 26
  br i1 %or.cond.peel, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i8 %i.c, -65
  %or.cond5.peel = icmp ult i8 %i.e, 26
  %i.f = icmp eq i8 %i.c, 95
  %or.cond8.peel = or i1 %i.f, %or.cond5.peel
  br i1 %or.cond8.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.c, -48
  %or.cond11.peel = icmp ult i8 %i.g, 10
  br i1 %or.cond11.peel, label %bb.d, label %._crit_edge.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %.1.ph.peel = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %.not = icmp eq i64 %i.a, 1
  br i1 %.not, label %._crit_edge.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.d, %bb.n
  %.04372 = phi i64 [ %i.v, %bb.n ], [ 1, %bb.d ] ; 3 uses
  %.04471 = phi i32 [ %.1.ph, %bb.n ], [ %.1.ph.peel, %bb.d ] ; 7 uses
  %.04570 = phi i64 [ %.146.ph, %bb.n ], [ 1, %bb.d ] ; 7 uses
  %.04869 = phi i32 [ %.149.ph, %bb.n ], [ 0, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.04372 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !27    ; 5 uses
  %i.j = add i8 %i.i, -97
  %or.cond = icmp ult i8 %i.j, 26
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.next
  %i.k = add i8 %i.i, -65
  %or.cond5 = icmp ult i8 %i.k, 26
  %i.l = icmp eq i8 %i.i, 95
  %or.cond8 = or i1 %i.l, %or.cond5
  br i1 %or.cond8, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.peel.next
  %i.m = add nuw nsw i64 %.04570, 1
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.n = add i8 %i.i, -48
  %or.cond11 = icmp ult i8 %i.n, 10
  br i1 %or.cond11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = add nuw nsw i64 %.04570, 1
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.p = icmp ult i64 %.04372, %i.b
  br i1 %i.p, label %bb.j, label %._crit_edge.loopexit.loopexit

bb.j:                                             ; preds = %bb.i
  switch i8 %i.i, label %._crit_edge.loopexit.loopexit [
    i8 45, label %bb.k
    i8 46, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.q = add nuw nsw i64 %.04570, 1
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %i.h, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27    ; 2 uses
  %.not54 = icmp eq i8 %i.s, 46
  br i1 %.not54, label %._crit_edge.loopexit.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr i8, ptr %i.h, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !27
  %.not55 = icmp eq i8 %i.u, 45
  %.not56 = icmp eq i8 %i.s, 45
  %or.cond61 = or i1 %.not56, %.not55
  br i1 %or.cond61, label %._crit_edge.loopexit.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.h, %bb.k, %bb.m
  %.149.ph = phi i32 [ 1, %bb.m ], [ %.04869, %bb.k ], [ %.04869, %bb.h ], [ %.04869, %bb.f ] ; 2 uses
  %.146.ph = phi i64 [ 0, %bb.m ], [ %i.q, %bb.k ], [ %i.o, %bb.h ], [ %i.m, %bb.f ] ; 3 uses
  %.1.ph = phi i32 [ %.04471, %bb.m ], [ %.04471, %bb.k ], [ %.04471, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.v = add nuw i64 %.04372, 1                   ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.a
  %i.x = icmp ult i64 %.146.ph, 63
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.peel.next, label %._crit_edge.loopexit.loopexit, !llvm.loop !86

._crit_edge.loopexit.loopexit:                    ; preds = %bb.n, %bb.i, %bb.m, %bb.l, %bb.j
  %.045.lcssa.ph.ph = phi i64 [ %.04570, %bb.j ], [ %.04570, %bb.l ], [ %.04570, %bb.m ], [ %.04570, %bb.i ], [ %.146.ph, %bb.n ]
  %.044.lcssa.ph.ph = phi i32 [ %.04471, %bb.j ], [ %.04471, %bb.l ], [ %.04471, %bb.m ], [ %.04471, %bb.i ], [ %.1.ph, %bb.n ]
  %.250.ph.ph = phi i32 [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.i ], [ %.149.ph, %bb.n ]
  %i.z = icmp ne i64 %.045.lcssa.ph.ph, 63
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.c, %._crit_edge.loopexit.loopexit, %bb.d
  %.045.lcssa.ph = phi i1 [ true, %bb.d ], [ %i.z, %._crit_edge.loopexit.loopexit ], [ true, %bb.c ]
  %.044.lcssa.ph = phi i32 [ %.1.ph.peel, %bb.d ], [ %.044.lcssa.ph.ph, %._crit_edge.loopexit.loopexit ], [ 1, %bb.c ]
  %.250.ph = phi i32 [ 0, %bb.d ], [ %.250.ph.ph, %._crit_edge.loopexit.loopexit ], [ 0, %bb.c ]
  %i.aa = icmp eq i32 %.044.lcssa.ph, 0
  %i.ab = select i1 %i.aa, i1 %.045.lcssa.ph, i1 false
  %i.ac = select i1 %i.ab, i32 %.250.ph, i32 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.044.lcssa = phi i32 [ 0, %bb.a ], [ %i.ac, %._crit_edge.loopexit ]
  ret i32 %.044.lcssa
}

declare i32 @SSL_dane_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @tlsa_import_rrset(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #15 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.t
  %.014 = phi i32 [ %i.cq, %bb.t ], [ 0, %bb.a ]  ; 2 uses
  %.0913 = phi i32 [ %i.cr, %bb.t ], [ 0, %bb.a ] ; 2 uses
  %i.g = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %1, i32 noundef %.0913) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr %i.g, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.h = tail call ptr @__errno_location() #16    ; 12 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !5
  store i32 %i.i, ptr @saved_errno, align 4, !tbaa !5
  store i32 0, ptr %i.h, align 4, !tbaa !5
  %i.j = call i64 @strtol(ptr noundef %i.g, ptr noundef nonnull %i.c, i32 noundef 10) #15 ; 3 uses
  %i.k = load i32, ptr %i.h, align 4, !tbaa !5
  %i.l = load i32, ptr @saved_errno, align 4, !tbaa !5
  store i32 %i.l, ptr %i.h, align 4, !tbaa !5
  %i.m = add i64 %i.j, -9223372036854775807
  %or.cond.i.i = icmp ult i64 %i.m, 2
  %i.n = icmp eq i32 %i.k, 34
  %or.cond3.i.i = select i1 %or.cond.i.i, i1 %i.n, i1 false
  br i1 %or.cond3.i.i, label %checked_uint8.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.p = icmp eq ptr %i.o, %i.g
  br i1 %i.p, label %checked_uint8.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call ptr @__ctype_b_loc() #16       ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %i.s = load i8, ptr %i.o, align 1, !tbaa !27
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !32
  %i.w = and i16 %i.v, 8192
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %checked_uint8.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = trunc i64 %i.j to i8
  store i8 %i.x, ptr @tlsa_import_rr.usage, align 1, !tbaa !27
  %.not19.i.i = icmp ult i64 %i.j, 256
  br i1 %.not19.i.i, label %.preheader.i.i, label %checked_uint8.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.017.i.i = phi ptr [ %i.ad, %.preheader.i.i ], [ %i.o, %bb.d ] ; 4 uses
  %i.y = load i8, ptr %.017.i.i, align 1, !tbaa !27
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !32
  %i.ac = and i16 %i.ab, 8192
  %.not20.i.i = icmp eq i16 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 1
  br i1 %.not20.i.i, label %bb.f, label %.preheader.i.i, !llvm.loop !88

checked_uint8.exit.thread.i:                      ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.n, %checked_uint8.exit42.thread.i, %checked_uint8.exit33.thread.i, %checked_uint8.exit.thread.i
  %.01521.lcssa.i = phi ptr [ @tlsa_import_rr.tlsa_fields, %checked_uint8.exit.thread.i ], [ getelementptr inbounds nuw (i8, ptr @tlsa_import_rr.tlsa_fields, i64 24), %checked_uint8.exit33.thread.i ], [ getelementptr inbounds nuw (i8, ptr @tlsa_import_rr.tlsa_fields, i64 48), %checked_uint8.exit42.thread.i ], [ getelementptr inbounds nuw (i8, ptr @tlsa_import_rr.tlsa_fields, i64 72), %bb.n ]
  %i.ae = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.af = load ptr, ptr @prog, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %.01521.lcssa.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !89
  %i.ai = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ae, ptr noundef nonnull @.str.578, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.g) #15 ; 0 uses
  br label %bb.s

bb.f:                                             ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %2 = load i32, ptr %i.h, align 4, !tbaa !5
  store i32 %2, ptr @saved_errno, align 4, !tbaa !5
  store i32 0, ptr %i.h, align 4, !tbaa !5
  %i.aj = call i64 @strtol(ptr noundef nonnull %.017.i.i, ptr noundef nonnull %i.b, i32 noundef 10) #15 ; 3 uses
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !5
  %i.al = load i32, ptr @saved_errno, align 4, !tbaa !5
  store i32 %i.al, ptr %i.h, align 4, !tbaa !5
  %i.am = add i64 %i.aj, -9223372036854775807
  %or.cond.i25.i = icmp ult i64 %i.am, 2
  %i.an = icmp eq i32 %i.ak, 34
  %or.cond3.i26.i = select i1 %or.cond.i25.i, i1 %i.an, i1 false
  br i1 %or.cond3.i26.i, label %checked_uint8.exit33.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !14  ; 3 uses
  %i.ap = icmp eq ptr %i.ao, %.017.i.i
  br i1 %i.ap, label %checked_uint8.exit33.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !27
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !32
  %i.av = and i16 %i.au, 8192
  %.not.i27.i = icmp eq i16 %i.av, 0
  br i1 %.not.i27.i, label %checked_uint8.exit33.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = trunc i64 %i.aj to i8
  store i8 %i.aw, ptr @tlsa_import_rr.selector, align 1, !tbaa !27
  %.not19.i28.i = icmp ult i64 %i.aj, 256
  br i1 %.not19.i28.i, label %.preheader.i30.i, label %checked_uint8.exit33.thread.i

.preheader.i30.i:                                 ; preds = %bb.i, %.preheader.i30.i
  %.017.i31.i = phi ptr [ %i.bc, %.preheader.i30.i ], [ %i.ao, %bb.i ] ; 4 uses
  %i.ax = load i8, ptr %.017.i31.i, align 1, !tbaa !27
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !32
  %i.bb = and i16 %i.ba, 8192
  %.not20.i32.i = icmp eq i16 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %.017.i31.i, i64 1
  br i1 %.not20.i32.i, label %bb.j, label %.preheader.i30.i, !llvm.loop !88

checked_uint8.exit33.thread.i:                    ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.e

bb.j:                                             ; preds = %.preheader.i30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %3 = load i32, ptr %i.h, align 4, !tbaa !5
  store i32 %3, ptr @saved_errno, align 4, !tbaa !5
  store i32 0, ptr %i.h, align 4, !tbaa !5
  %i.bd = call i64 @strtol(ptr noundef nonnull %.017.i31.i, ptr noundef nonnull %i.a, i32 noundef 10) #15 ; 3 uses
  %i.be = load i32, ptr %i.h, align 4, !tbaa !5
  %i.bf = load i32, ptr @saved_errno, align 4, !tbaa !5
  store i32 %i.bf, ptr %i.h, align 4, !tbaa !5
  %i.bg = add i64 %i.bd, -9223372036854775807
  %or.cond.i34.i = icmp ult i64 %i.bg, 2
  %i.bh = icmp eq i32 %i.be, 34
  %or.cond3.i35.i = select i1 %or.cond.i34.i, i1 %i.bh, i1 false
  br i1 %or.cond3.i35.i, label %checked_uint8.exit42.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.bj = icmp eq ptr %i.bi, %.017.i31.i
  br i1 %i.bj, label %checked_uint8.exit42.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %i.bl = load i8, ptr %i.bi, align 1, !tbaa !27
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !32
  %i.bp = and i16 %i.bo, 8192
  %.not.i36.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i36.i, label %checked_uint8.exit42.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = trunc i64 %i.bd to i8
  store i8 %i.bq, ptr @tlsa_import_rr.mtype, align 1, !tbaa !27
  %.not19.i37.i = icmp ult i64 %i.bd, 256
  br i1 %.not19.i37.i, label %.preheader.i39.i, label %checked_uint8.exit42.thread.i

.preheader.i39.i:                                 ; preds = %bb.m, %.preheader.i39.i
  %.017.i40.i = phi ptr [ %i.bw, %.preheader.i39.i ], [ %i.bi, %bb.m ] ; 3 uses
  %i.br = load i8, ptr %.017.i40.i, align 1, !tbaa !27
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !32
  %i.bv = and i16 %i.bu, 8192
  %.not20.i41.i = icmp eq i16 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %.017.i40.i, i64 1
  br i1 %.not20.i41.i, label %bb.n, label %.preheader.i39.i, !llvm.loop !88

checked_uint8.exit42.thread.i:                    ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.e

bb.n:                                             ; preds = %.preheader.i39.i
  store ptr %.017.i40.i, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bx = call i64 @hexdecode(ptr noundef nonnull %i.d, ptr noundef nonnull @tlsa_import_rr.data) #15 ; 2 uses
  %i.by = icmp slt i64 %i.bx, 1
  br i1 %i.by, label %bb.e, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = load i8, ptr @tlsa_import_rr.usage, align 1, !tbaa !27
  %i.ca = load i8, ptr @tlsa_import_rr.selector, align 1, !tbaa !27
  %i.cb = load i8, ptr @tlsa_import_rr.mtype, align 1, !tbaa !27
  %i.cc = load ptr, ptr @tlsa_import_rr.data, align 8, !tbaa !14
  %i.cd = tail call i32 @SSL_dane_tlsa_add(ptr noundef nonnull %0, i8 noundef zeroext %i.bz, i8 noundef zeroext %i.ca, i8 noundef zeroext %i.cb, ptr noundef %i.cc, i64 noundef %i.bx) #15 ; 2 uses
  %i.ce = load ptr, ptr @tlsa_import_rr.data, align 8, !tbaa !14
  tail call void @CRYPTO_free(ptr noundef %i.ce, ptr noundef nonnull @.str.396, i32 noundef 445) #15
  %i.cf = icmp eq i32 %i.cd, 0
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr @bio_err, align 8, !tbaa !20
  tail call void @ERR_print_errors(ptr noundef %i.cg) #15
  %i.ch = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.ci = load ptr, ptr @prog, align 8, !tbaa !14
  %i.cj = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ch, ptr noundef nonnull @.str.579, ptr noundef %i.ci, ptr noundef %i.g) #15 ; 0 uses
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ck = icmp slt i32 %i.cd, 0
  br i1 %i.ck, label %bb.r, label %tlsa_import_rr.exit

bb.r:                                             ; preds = %bb.q
  %i.cl = load ptr, ptr @bio_err, align 8, !tbaa !20
  tail call void @ERR_print_errors(ptr noundef %i.cl) #15
  %i.cm = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.cn = load ptr, ptr @prog, align 8, !tbaa !14
  %i.co = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cm, ptr noundef nonnull @.str.580, ptr noundef %i.cn, ptr noundef %i.g) #15 ; 0 uses
  br label %bb.s

tlsa_import_rr.exit:                              ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.cp = add nsw i32 %.014, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.e, %bb.p, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.t

bb.t:                                             ; preds = %tlsa_import_rr.exit, %bb.s
  %i.cq = phi i32 [ %.014, %bb.s ], [ %i.cp, %tlsa_import_rr.exit ] ; 2 uses
  %i.cr = add nuw nsw i32 %.0913, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, %i.e
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !91

._crit_edge.loopexit:                             ; preds = %bb.t
  %i.cs = icmp sgt i32 %i.cq, 0
  %i.ct = zext i1 %i.cs to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ct, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

declare i64 @SSL_dane_set_flags(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BIO_ADDR_free(ptr noundef) local_unnamed_addr #2

declare i32 @init_client(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @BIO_closesocket(i32 noundef) local_unnamed_addr #2

declare i32 @BIO_socket_nbio(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_set_blocking_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BIO_new_dgram(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BIO_ADDR_new() local_unnamed_addr #2

declare i32 @BIO_sock_info(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @SSL_set_options(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_set1_initial_peer_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BIO_new_socket(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BIO_f_nbio_test() local_unnamed_addr #2

declare ptr @BIO_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BIO_set_callback_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @bio_dump_callback(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) #2

declare void @BIO_set_callback_arg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_set_msg_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_trace(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @msg_cb(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare i64 @SSL_callback_ctrl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @tlsext_cb(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ocsp_resp_cb(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call i64 @SSL_ctrl(ptr noundef %0, i32 noundef 70, i64 noundef 0, ptr noundef nonnull %i.a) #15 ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.619) #15 ; 0 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.620) #15 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %sext = shl i64 %i.b, 32
  %i.h = ashr exact i64 %sext, 32
  %i.i = call ptr @d2i_OCSP_RESPONSE(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %i.h) #15 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.621) #15 ; 0 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.m = call i32 @BIO_dump_indent(ptr noundef %1, ptr noundef %i.l, i32 noundef %i.c, i32 noundef 4) #15 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.622) #15 ; 0 uses
  %i.o = call i32 @OCSP_RESPONSE_print(ptr noundef %1, ptr noundef nonnull %i.i, i64 noundef 0) #15 ; 0 uses
  %i.p = call i32 @BIO_puts(ptr noundef %1, ptr noundef nonnull @.str.623) #15 ; 0 uses
  call void @OCSP_RESPONSE_free(ptr noundef nonnull %i.i) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}
end_hunk_0
