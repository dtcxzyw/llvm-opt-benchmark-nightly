Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/extensions?download=true
inline.NumInlined: 841
inline.NumDeleted: 371
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4bssl18ssl_process_ticketEPNS_13SSL_HANDSHAKEEPSt10unique_ptrI14ssl_session_stNS_8internal7DeleterEEPbNS_4SpanIKhEESB_:bb.a
  %i.cg = call fastcc noundef i32 @_ZN4bsslL35ssl_decrypt_ticket_with_ticket_keysEPNS_13SSL_HANDSHAKEEPNS_5ArrayIhEENS_4SpanIKhEE(ptr %.val.val, ptr noundef %8, ptr %3, i64 %4)
  br label %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit

_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit:    ; preds = %bb.z, %bb.ae, %_ZN4bsslL26ssl_decrypt_ticket_with_cbEPNS_13SSL_HANDSHAKEEPNS_5ArrayIhEEPbNS_4SpanIKhEE.exit, %_ZN4bsslL30ssl_decrypt_ticket_with_methodEPNS_13SSL_HANDSHAKEEPNS_5ArrayIhEEPbNS_4SpanIKhEE.exit
  %.063 = phi i32 [ %.1.i, %_ZN4bsslL30ssl_decrypt_ticket_with_methodEPNS_13SSL_HANDSHAKEEPNS_5ArrayIhEEPbNS_4SpanIKhEE.exit ], [ 2, %bb.z ], [ %.0.i, %_ZN4bsslL26ssl_decrypt_ticket_with_cbEPNS_13SSL_HANDSHAKEEPNS_5ArrayIhEEPbNS_4SpanIKhEE.exit ], [ %i.cg, %bb.ae ] ; 2 uses
  br i1 %i.n, label %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit.thread103, label %bb.an

_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit.thread103: ; preds = %bb.s, %bb.k, %bb.t, %bb.j, %bb.i, %bb.h, %bb.f, %bb.n, %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit
  %.063106 = phi i32 [ %.063, %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit ], [ 3, %bb.n ], [ 0, %bb.i ], [ 0, %bb.h ], [ 3, %bb.f ], [ 2, %bb.k ], [ 0, %bb.s ], [ 0, %bb.j ], [ 2, %bb.t ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = and i32 %i.ci, 1048576
  %.not74 = icmp eq i32 %i.cj, 0
  br i1 %.not74, label %bb.an, label %bb.af

bb.af:                                            ; preds = %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit.thread103
  switch i32 %.063106, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit [
    i32 2, label %bb.ag
    i32 0, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  br i1 %i.k, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store i8 1, ptr %i.ck, align 8, !tbaa !329
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 241
  store i8 1, ptr %i.cl, align 1, !tbaa !331
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit

bb.aj:                                            ; preds = %bb.af
  %i.cm = load ptr, ptr %8, align 8, !tbaa !154   ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !152 ; 4 uses
  br i1 %i.k, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.cq = call noundef zeroext i1 @_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr %i.cm, i64 %i.co)
  br i1 %i.cq, label %.thread107, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.cs = call noundef zeroext i1 @_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr %i.cm, i64 %i.co)
  br i1 %i.cs, label %bb.am, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.ct = load i8, ptr %2, align 1, !tbaa !220, !range !233, !noundef !234
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  store i8 %i.ct, ptr %i.cu, align 8, !tbaa !330
  br label %.thread107

bb.an:                                            ; preds = %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit.thread103, %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit
  %.063105 = phi i32 [ %.063106, %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit.thread103 ], [ %.063, %_ZN4bssl5ArrayIhE8CopyFromENS_4SpanIKhEE.exit ] ; 2 uses
  %.not75 = icmp eq i32 %.063105, 0
  br i1 %.not75, label %..thread107_crit_edge, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit

..thread107_crit_edge:                            ; preds = %bb.an
  %.pre118 = load ptr, ptr %8, align 8, !tbaa !154
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre119 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !152
  br label %.thread107

.thread107:                                       ; preds = %..thread107_crit_edge, %bb.ak, %bb.am
  %i.cv = phi i64 [ %.pre119, %..thread107_crit_edge ], [ %i.co, %bb.ak ], [ %i.co, %bb.am ]
  %i.cw = phi ptr [ %.pre118, %..thread107_crit_edge ], [ %i.cm, %bb.ak ], [ %i.cm, %bb.am ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !153
  %i.cz = call ptr @SSL_SESSION_from_bytes(ptr noundef %i.cw, i64 noundef %i.cv, ptr noundef %i.cy) #13 ; 4 uses
  %.not117 = icmp eq ptr %i.cz, null
  br i1 %.not117, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread107
  call void @ERR_clear_error() #13
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit

bb.ap:                                            ; preds = %.thread107
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 60
  %i.db = call ptr @SHA256(ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.da) #13 ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 59
  store i8 32, ptr %i.dc, align 1, !tbaa !336
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !153 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 232
  call void @_ZN4bssl18ssl_update_counterEP10ssl_ctx_stRSt6atomicIiEb(ptr noundef %i.de, ptr noundef nonnull align 4 dereferenceable(4) %i.df, i1 noundef zeroext true) #13
  %i.dg = load ptr, ptr %1, align 8, !tbaa !207   ; 2 uses
  store ptr %i.cz, ptr %1, align 8, !tbaa !207
  %.not.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @SSL_SESSION_free(ptr noundef nonnull %i.dg) #13
  br label %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.ah, %bb.ai, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.af, %bb.al, %bb.ak
  %.1 = phi i32 [ 3, %bb.al ], [ 0, %bb.aq ], [ 3, %bb.ak ], [ %.063106, %bb.af ], [ %.063105, %bb.an ], [ 2, %bb.ao ], [ 0, %bb.ap ], [ 2, %bb.ai ], [ 2, %bb.ah ]
  %i.dh = load ptr, ptr %8, align 8, !tbaa !154
  call void @OPENSSL_free(ptr noundef %i.dh) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit
  %.2 = phi i32 [ %.1, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEED2Ev.exit ], [ 2, %_ZNSt10unique_ptrI14ssl_session_stN4bssl8internal7DeleterEE5resetEPS0_.exit ]
  ret i32 %.2
}

declare i32 @SSL_get_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 4) i32 @_ZN4bsslL35ssl_decrypt_ticket_with_ticket_keysEPNS_13SSL_HANDSHAKEEPNS_5ArrayIhEENS_4SpanIKhEE(ptr %.0.val.160.val, ptr nofree noundef nonnull captures(none) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.bssl::internal::StackAllocated.174", align 8 ; 6 uses
  %4 = alloca %"class.bssl::internal::StackAllocated.175", align 8 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN4bssl36ssl_ctx_rotate_ticket_encryption_keyEP10ssl_ctx_st(ptr noundef %.0.val.160.val) #13
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @EVP_aes_128_cbc() #13     ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 4 uses
  %i.c = tail call i32 @EVP_CIPHER_iv_length(ptr noundef %i.b) #13 ; 0 uses
  %i.d = icmp ult i64 %2, 16
  br i1 %i.d, label %bb.c, label %_ZNK4bssl4SpanIKhE7subspanEmm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #14
  unreachable

_ZNK4bssl4SpanIKhE7subspanEmm.exit:               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @EVP_CIPHER_CTX_init(ptr noundef nonnull align 8 dereferenceable(152) %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @HMAC_CTX_init(ptr noundef nonnull align 8 dereferenceable(1224) %4) #13
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val.160.val, i64 24 ; 3 uses
  call void @CRYPTO_MUTEX_lock_read(ptr noundef nonnull %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val.160.val, i64 472
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !337  ; 4 uses
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK4bssl4SpanIKhE7subspanEmm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.speculated.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.speculated.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.preheader.i
  %.0723.i = phi ptr [ %i.h, %.preheader.i ], [ %i.z, %bb.d ] ; 5 uses
  %.0822.i = phi ptr [ %1, %.preheader.i ], [ %i.y, %bb.d ] ; 5 uses
  %i.k = load i8, ptr %.0822.i, align 1, !tbaa !151
  %i.l = load i8, ptr %.0723.i, align 1, !tbaa !151
  %.not12.i = icmp eq i8 %i.k, %i.l
  br i1 %.not12.i, label %.lr.ph.i.1, label %.critedge

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0822.i, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0723.i, i64 1
  %i.o = load i8, ptr %i.m, align 1, !tbaa !151
  %i.p = load i8, ptr %i.n, align 1, !tbaa !151
  %.not12.i.1 = icmp eq i8 %i.o, %i.p
  br i1 %.not12.i.1, label %.lr.ph.i.2, label %.critedge

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.q = getelementptr inbounds nuw i8, ptr %.0822.i, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %.0723.i, i64 2
  %i.s = load i8, ptr %i.q, align 1, !tbaa !151
  %i.t = load i8, ptr %i.r, align 1, !tbaa !151
  %.not12.i.2 = icmp eq i8 %i.s, %i.t
  br i1 %.not12.i.2, label %.lr.ph.i.3, label %.critedge

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.u = getelementptr inbounds nuw i8, ptr %.0822.i, i64 3
  %i.v = getelementptr inbounds nuw i8, ptr %.0723.i, i64 3
  %i.w = load i8, ptr %i.u, align 1, !tbaa !151
  %i.x = load i8, ptr %i.v, align 1, !tbaa !151
  %.not12.i.3 = icmp eq i8 %i.w, %i.x
  br i1 %.not12.i.3, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.i.3
  %i.y = getelementptr inbounds nuw i8, ptr %.0822.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0723.i, i64 4 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.y, %i.i
  %.not11.i.3 = icmp eq ptr %i.z, %i.j
  %or.cond.i.3 = select i1 %.not10.i.3, i1 true, i1 %.not11.i.3
  br i1 %or.cond.i.3, label %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit, label %.lr.ph.i, !llvm.loop !3

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %_ZNK4bssl4SpanIKhE7subspanEmm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val.160.val, i64 480
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !337 ; 4 uses
  %.not16 = icmp eq ptr %i.ab, null
  br i1 %.not16, label %.critedge2.thread, label %.preheader.i32

.preheader.i32:                                   ; preds = %.critedge
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.speculated.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.speculated.i
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.preheader.i32, %bb.e
  %.0723.i34 = phi ptr [ %i.ah, %bb.e ], [ %i.ab, %.preheader.i32 ] ; 2 uses
  %.0822.i35 = phi ptr [ %i.ag, %bb.e ], [ %1, %.preheader.i32 ] ; 2 uses
  %i.ae = load i8, ptr %.0822.i35, align 1, !tbaa !151
  %i.af = load i8, ptr %.0723.i34, align 1, !tbaa !151
  %.not12.i36 = icmp eq i8 %i.ae, %i.af
  br i1 %.not12.i36, label %bb.e, label %.critedge2.thread

bb.e:                                             ; preds = %.lr.ph.i33
  %i.ag = getelementptr inbounds nuw i8, ptr %.0822.i35, i64 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0723.i34, i64 1 ; 2 uses
  %.not10.i37 = icmp eq ptr %i.ag, %i.ac
  %.not11.i38 = icmp eq ptr %i.ah, %i.ad
  %or.cond.i39 = select i1 %.not10.i37, i1 true, i1 %.not11.i38
  br i1 %or.cond.i39, label %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit, label %.lr.ph.i33, !llvm.loop !3

_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit:        ; preds = %bb.d, %bb.e
  %.024 = phi ptr [ %i.ab, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.aj = call ptr @EVP_sha256() #13
  %i.ak = call i32 @HMAC_Init_ex(ptr noundef nonnull %4, ptr noundef nonnull %i.ai, i64 noundef 16, ptr noundef %i.aj, ptr noundef null) #13
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.critedge2.thread, label %.critedge2

.critedge2.thread:                                ; preds = %.lr.ph.i33, %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit, %.critedge
  %.0.ph = phi i32 [ 2, %.critedge ], [ 3, %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit ], [ 2, %.lr.ph.i33 ]
  call void @CRYPTO_MUTEX_unlock_read(ptr noundef nonnull %i.f) #13
  br label %bb.g

.critedge2:                                       ; preds = %_ZN4bssl8internaleqENS_4SpanIKhEES3_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.024, i64 32
  %i.am = call i32 @EVP_DecryptInit_ex(ptr noundef nonnull %3, ptr noundef %i.b, ptr noundef null, ptr noundef nonnull %i.al, ptr noundef nonnull %i.e) #13
  %.not25.not = icmp eq i32 %i.am, 0
  call void @CRYPTO_MUTEX_unlock_read(ptr noundef nonnull %i.f) #13
  br i1 %.not25.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge2
  %i.an = call fastcc noundef i32 @_ZN4bsslL30decrypt_ticket_with_cipher_ctxEPNS_5ArrayIhEEP17evp_cipher_ctx_stP11hmac_ctx_stNS_4SpanIKhEE(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull %1, i64 %2)
  br label %bb.g

bb.g:                                             ; preds = %.critedge2.thread, %.critedge2, %bb.f
  %.1 = phi i32 [ %i.an, %bb.f ], [ 3, %.critedge2 ], [ %.0.ph, %.critedge2.thread ]
  call void @HMAC_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(1224) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.ao = call noundef i32 @EVP_CIPHER_CTX_cleanup(ptr noundef nonnull align 8 dereferenceable(152) %3) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.2 = phi i32 [ %.1, %bb.g ], [ 3, %bb.a ]
  ret i32 %.2
}

declare ptr @SSL_SESSION_from_bytes(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

declare ptr @SHA256(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4bssl18ssl_update_counterEP10ssl_ctx_stRSt6atomicIiEb(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl23tls1_parse_peer_sigalgsEPNS_13SSL_HANDSHAKEEPK6cbs_st(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.a) #13
  %i.c = icmp ult i16 %i.b, 771
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @CBS_len(ptr noundef %1) #13
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = tail call fastcc noundef zeroext i1 @_ZN4bsslL15parse_u16_arrayEPK6cbs_stPNS_5ArrayItEE(ptr noundef %1, ptr noundef nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4bsslL15parse_u16_arrayEPK6cbs_stPNS_5ArrayItEE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.cbs_st, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !24
  %i.a = call i64 @CBS_len(ptr noundef nonnull %2) #13
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 2475) #13
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = call i64 @CBS_len(ptr noundef nonnull %2) #13 ; 2 uses
  %i.d = lshr i64 %i.c, 1                         ; 3 uses
  call void @OPENSSL_free(ptr noundef null) #13
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %i.c, -2
  %i.g = call ptr @OPENSSL_malloc(i64 noundef %i.f) #13 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN4bssl5ArrayItE4InitEm.exit.thread, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.i = add nuw nsw i64 %.018, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.d
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !338

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.018 = phi i64 [ %i.i, %bb.e ], [ 0, %bb.d ]   ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %.018
  %i.k = call i32 @CBS_get_u16(ptr noundef nonnull %2, ptr noundef nonnull %i.j) #13
  %.not8 = icmp eq i32 %i.k, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.f:                                             ; preds = %.lr.ph
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 2485) #13
  br label %_ZN4bssl5ArrayItE4InitEm.exit.thread

.critedge:                                        ; preds = %bb.e, %bb.c
  %.sroa.0.123 = phi ptr [ null, %bb.c ], [ %i.g, %bb.e ]
  %i.l = load ptr, ptr %1, align 8, !tbaa !114
  call void @OPENSSL_free(ptr noundef %i.l) #13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.0.123, ptr %1, align 8, !tbaa !339
  store i64 %i.d, ptr %i.m, align 8, !tbaa !23
  br label %_ZN4bssl5ArrayItE4InitEm.exit.thread

_ZN4bssl5ArrayItE4InitEm.exit.thread:             ; preds = %bb.d, %bb.f, %.critedge
  %.sroa.0.0 = phi ptr [ %i.g, %bb.f ], [ null, %.critedge ], [ null, %bb.d ]
  %.1 = phi i1 [ false, %bb.f ], [ true, %.critedge ], [ false, %bb.d ]
  call void @OPENSSL_free(ptr noundef %.sroa.0.0) #13
  br label %bb.g

bb.g:                                             ; preds = %_ZN4bssl5ArrayItE4InitEm.exit.thread, %bb.b
  %.2 = phi i1 [ false, %bb.b ], [ %.1, %_ZN4bssl5ArrayItE4InitEm.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl35tls1_get_legacy_signature_algorithmEPtPK11evp_pkey_st(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EVP_PKEY_id(ptr noundef %1) #13
  switch i32 %i.a, label %bb.c [
    i32 6, label %.sink.split
    i32 408, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink = phi i16 [ 515, %bb.b ], [ -255, %bb.a ]
  store i16 %.sink, ptr %0, align 2, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %.sink.split ]
  ret i1 %.0
}

declare i32 @EVP_PKEY_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4bssl31tls1_choose_signature_algorithmEPNS_13SSL_HANDSHAKEEPt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !235  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !341
  %i.h = tail call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef %i.a) #13
  %i.i = icmp ult i16 %i.h, 771
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4bssl50ssl_public_key_supports_legacy_signature_algorithmEPtPNS_13SSL_HANDSHAKEE(ptr noundef %1, ptr noundef nonnull %0) #13
  br i1 %i.j, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN4bssl57ssl_cert_private_keys_supports_legacy_signature_algorithmEPtPNS_13SSL_HANDSHAKEE(ptr noundef %1, ptr noundef nonnull %0) #13
  br i1 %i.k, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 253, ptr noundef nonnull @.str, i32 noundef 4088) #13
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4bssl19ssl_signing_with_dcEPKNS_13SSL_HANDSHAKEE(ptr noundef nonnull %0) #13
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !113  ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !114
  %i.s = shl nuw nsw i64 %i.o, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.059.0 = phi ptr [ %i.m, %bb.f ], [ @_ZN4bsslL24kSignSignatureAlgorithmsE, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  %.sroa.7.0 = phi i64 [ 2, %bb.f ], [ 30, %bb.g ], [ %i.s, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !114  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.w = load i64, ptr %i.v, align 8, !tbaa !113  ; 2 uses
end_hunk_0
