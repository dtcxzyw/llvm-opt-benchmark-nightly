Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_tls13_generic?download=true
inline.NumInlined: 60
inline.NumDeleted: 27
begin_hunk_0_@mbedtls_ssl_tls13_process_certificate_verify:bb.a
  %i.w = call i32 @mbedtls_ssl_get_handshake_transcript(ptr noundef nonnull %0, i32 noundef %i.v, ptr noundef nonnull %i.d, i64 noundef 64, ptr noundef nonnull %i.e) #7 ; 2 uses
  %.not16 = icmp eq i32 %i.w, 0
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 80, i32 noundef -27648) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !46
  %.not = icmp eq i8 %i.aa, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 32, i64 64, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.ab, ptr noundef nonnull align 1 dereferenceable(33) getelementptr inbounds nuw (i8, ptr @mbedtls_ssl_tls13_labels, i64 171), i64 33, i1 false)
  br label %ssl_tls13_create_verify_structure.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.ab, ptr noundef nonnull align 1 dereferenceable(33) getelementptr inbounds nuw (i8, ptr @mbedtls_ssl_tls13_labels, i64 204), i64 33, i1 false)
  br label %ssl_tls13_create_verify_structure.exit

ssl_tls13_create_verify_structure.exit:           ; preds = %bb.h, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 97
  store i8 0, ptr %i.ac, align 1, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ad, ptr nonnull readonly align 16 %i.d, i64 %i.x, i1 false)
  %i.ae = add i64 %i.x, 98
  %i.af = getelementptr i8, ptr %i.j, i64 %i.n    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ag = icmp ule ptr %i.l, %i.af
  %i.ah = and i64 %i.n, -2                        ; 2 uses
  %i.ai = icmp ne i64 %i.ah, 4
  %narrow.i.not.i = and i1 %i.ag, %i.ai
  br i1 %narrow.i.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %ssl_tls13_create_verify_structure.exit
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %ssl_tls13_parse_certificate_verify.exit.thread

bb.k:                                             ; preds = %ssl_tls13_create_verify_structure.exit
  %.0.copyload.i35.i = load i16, ptr %i.l, align 1
  %i.aj = call i16 @llvm.bswap.i16(i16 %.0.copyload.i35.i) ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 6 ; 2 uses
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !25  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %mbedtls_ssl_get_sig_algs.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !47 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not7.i.i.i, label %mbedtls_ssl_get_sig_algs.exit.i.i, label %.preheader.i.i

mbedtls_ssl_get_sig_algs.exit.i.i:                ; preds = %bb.l, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %mbedtls_ssl_get_sig_algs.exit.i.i, %bb.l
  %.0.i17.i.i = phi ptr [ %i.ap, %mbedtls_ssl_get_sig_algs.exit.i.i ], [ %i.an, %bb.l ] ; 2 uses
  %i.ar = load i16, ptr %.0.i17.i.i, align 2, !tbaa !49 ; 2 uses
  %.not9.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not9.i.i, label %mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg.exit.i, label %.lr.ph.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 2 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !49 ; 2 uses
  %.not.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.i, label %mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg.exit.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.m
  %i.au = phi i16 [ %i.at, %bb.m ], [ %i.ar, %.preheader.i.i ]
  %.010.i.i = phi ptr [ %i.as, %bb.m ], [ %.0.i17.i.i, %.preheader.i.i ]
  %i.av = icmp eq i16 %i.au, %i.aj
  br i1 %i.av, label %mbedtls_ssl_sig_alg_is_offered.exit.i, label %bb.m

mbedtls_ssl_sig_alg_is_offered.exit.i:            ; preds = %.lr.ph.i.i
  %i.aw = trunc i16 %i.aj to i8
  %i.ax = call i32 @mbedtls_ssl_pk_alg_from_sig(i8 noundef zeroext %i.aw) #7 ; 2 uses
  %i.ay = lshr i16 %i.aj, 8
  %i.az = trunc nuw i16 %i.ay to i8
  %i.ba = call i32 @mbedtls_ssl_md_alg_from_hash(i8 noundef zeroext %i.az) #7 ; 2 uses
  %.not.i36.i = icmp eq i32 %i.ax, 0
  %.not13.i.i = icmp eq i32 %i.ba, 0
  %or.cond.i.i = select i1 %.not.i36.i, i1 true, i1 %.not13.i.i
  br i1 %or.cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %mbedtls_ssl_sig_alg_is_offered.exit.i
  %switch.tableidx.i.i = add i16 %i.aj, -2052
  %i.bb = icmp ult i16 %switch.tableidx.i.i, 3
  br i1 %i.bb, label %switch.lookup.i.i, label %mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg.exit.i

switch.lookup.i.i:                                ; preds = %bb.n
  %narrow.i37.i = add nsw i16 %i.aj, -2043
  %switch.offset.i.i = zext nneg i16 %narrow.i37.i to i32
  br label %bb.o

bb.o:                                             ; preds = %switch.lookup.i.i, %mbedtls_ssl_sig_alg_is_offered.exit.i
  %.045.ph.i = phi i32 [ %i.ax, %mbedtls_ssl_sig_alg_is_offered.exit.i ], [ 2, %switch.lookup.i.i ] ; 2 uses
  %.044.ph.i = phi i32 [ %i.ba, %mbedtls_ssl_sig_alg_is_offered.exit.i ], [ %switch.offset.i.i, %switch.lookup.i.i ] ; 2 uses
  %i.bc = or i32 %.044.ph.i, 33554432
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !53
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 360
  %i.bi = call i32 @mbedtls_pk_can_do(ptr noundef nonnull %i.bh, i32 noundef %.045.ph.i) #7
  %.not31.i = icmp eq i32 %i.bi, 0
  br i1 %.not31.i, label %mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = icmp ule ptr %i.ak, %i.af
  %i.bk = icmp ne i64 %i.ah, 6
  %narrow.i38.not.i = and i1 %i.bj, %i.bk
  br i1 %narrow.i38.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %ssl_tls13_parse_certificate_verify.exit.thread

bb.r:                                             ; preds = %bb.p
  %.0.copyload.i.i = load i16, ptr %i.ak, align 1
  %i.bl = call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i)
  %i.bm = zext i16 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.bo = icmp ule ptr %i.bn, %i.af
  %gepdiff = add i64 %i.n, -8
  %i.bp = icmp uge i64 %gepdiff, %i.bm
  %narrow.i39.not.i = and i1 %i.bo, %i.bp
  br i1 %narrow.i39.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %ssl_tls13_parse_certificate_verify.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.bq = call i32 @psa_hash_compute(i32 noundef %i.bc, ptr noundef nonnull %i.c, i64 noundef %i.ae, ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull %i.b) #7
  %.not34.i = icmp eq i32 %i.bq, 0
  br i1 %.not34.i, label %bb.u, label %mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg.exit.i

bb.u:                                             ; preds = %bb.t
  %i.br = load ptr, ptr %i.bd, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 360
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !23
  %i.bw = call i32 @mbedtls_pk_verify_new(i32 noundef %.045.ph.i, ptr noundef nonnull %i.bu, i32 noundef %.044.ph.i, ptr noundef nonnull %i.a, i64 noundef %i.bv, ptr noundef nonnull %i.bn, i64 noundef %i.bm) #7
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.v, label %mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg.exit.i

mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg.exit.i: ; preds = %bb.m, %bb.u, %bb.t, %bb.o, %bb.n, %.preheader.i.i, %mbedtls_ssl_get_sig_algs.exit.i.i
  call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 51, i32 noundef -28160) #7
  br label %ssl_tls13_parse_certificate_verify.exit.thread

ssl_tls13_parse_certificate_verify.exit.thread:   ; preds = %bb.j, %mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg.exit.i, %bb.q, %bb.s
  %.0.i18.ph = phi i32 [ -29440, %bb.s ], [ -29440, %bb.q ], [ -28160, %mbedtls_ssl_get_pk_type_and_md_alg_from_sig_alg.exit.i ], [ -29440, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.by = call i32 @mbedtls_ssl_add_hs_msg_to_checksum(ptr noundef nonnull %0, i32 noundef 15, ptr noundef nonnull %i.l, i64 noundef %i.o) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread: ; preds = %bb.d, %bb.a, %ssl_tls13_parse_certificate_verify.exit.thread, %bb.v, %bb.f
  %.012 = phi i32 [ %i.w, %bb.f ], [ %i.by, %bb.v ], [ %.0.i18.ph, %ssl_tls13_parse_certificate_verify.exit.thread ], [ -30464, %bb.d ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 %.012
}

declare i32 @mbedtls_ssl_get_handshake_transcript(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mbedtls_ssl_add_hs_msg_to_checksum(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ssl_tls13_process_certificate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @mbedtls_ssl_read_record(ptr noundef %0, i32 noundef 0) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18
  %.not10.i = icmp eq i32 %i.c, 22
  br i1 %.not10.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 7 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20
  %.not11.i = icmp eq i8 %i.f, 11
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 10, i32 noundef -30464) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 4 uses
  %i.j = add i64 %i.i, -4
  %i.k = getelementptr i8, ptr %i.e, i64 %i.i     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = icmp ule ptr %i.g, %i.k
  %i.o = and i64 %i.i, -4
  %i.p = icmp ne i64 %i.o, 4
  %narrow.i.not.i = and i1 %i.n, %i.p
  br i1 %narrow.i.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.g, align 1, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !20    ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %1 = load i8, ptr %i.v, align 1, !tbaa !20
  %2 = zext i8 %1 to i64
  %3 = shl nuw nsw i64 %2, 8
  %4 = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %5 = load i8, ptr %4, align 1, !tbaa !20
  %i.w = zext i8 %5 to i64
  %6 = or disjoint i64 %i.u, %i.w
  %i.x = or disjoint i64 %6, %3                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.z = icmp ne i8 %i.q, 0
  %i.aa = icmp ne i8 %i.s, 0
  %or.cond.i = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %.not117.i = icmp eq ptr %i.ae, null
  br i1 %.not117.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @mbedtls_x509_crt_free(ptr noundef nonnull %i.ae) #7
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.ah) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = icmp eq i64 %i.x, 0
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  store ptr null, ptr %i.ak, align 8, !tbaa !53
  br label %.loopexit153.i

bb.m:                                             ; preds = %bb.k
  %i.al = tail call noalias dereferenceable_or_null(1304) ptr @calloc(i64 noundef 1, i64 noundef 1304) #8 ; 3 uses
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  store ptr %i.al, ptr %i.an, align 8, !tbaa !53
  %i.ao = icmp eq ptr %i.al, null
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 80, i32 noundef -141) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.o:                                             ; preds = %bb.m
  tail call void @mbedtls_x509_crt_init(ptr noundef nonnull %i.al) #7
  %i.ap = icmp ule ptr %i.y, %i.k
  %gepdiff = add i64 %i.i, -8
  %i.aq = icmp ule i64 %i.x, %gepdiff
  %narrow.i129.not.i = and i1 %i.ap, %i.aq
  br i1 %narrow.i129.not.i, label %.lr.ph193.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

.lr.ph193.i:                                      ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x ; 5 uses
  %i.as = ptrtoint ptr %i.ar to i64               ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 2220
  br label %bb.q

.loopexit.i:                                      ; preds = %mbedtls_ssl_tls13_check_received_extension.exit, %bb.ae
  %.199.lcssa.i = phi i32 [ %i.bo, %bb.ae ], [ 0, %mbedtls_ssl_tls13_check_received_extension.exit ]
  %.197.lcssa.i = phi ptr [ %i.bw, %bb.ae ], [ %i.da, %mbedtls_ssl_tls13_check_received_extension.exit ] ; 3 uses
  %i.au = icmp ult ptr %.197.lcssa.i, %i.ar
  br i1 %i.au, label %bb.q, label %.loopexit153.i, !llvm.loop !61

bb.q:                                             ; preds = %.loopexit.i, %.lr.ph193.i
  %.096192.i = phi ptr [ %i.y, %.lr.ph193.i ], [ %.197.lcssa.i, %.loopexit.i ] ; 5 uses
  %i.av = ptrtoint ptr %.096192.i to i64
  %i.aw = sub i64 %i.as, %i.av
  %i.ax = icmp ugt i64 %i.aw, 2
  br i1 %i.ax, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.ay = load i8, ptr %.096192.i, align 1, !tbaa !20 ; 2 uses
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.096192.i, i64 1
  %7 = load i8, ptr %i.bb, align 1, !tbaa !20
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 8
  %10 = getelementptr inbounds nuw i8, ptr %.096192.i, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !20
  %i.bc = zext i8 %11 to i64
  %12 = or disjoint i64 %i.ba, %i.bc
  %i.bd = or disjoint i64 %12, %9                 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.096192.i, i64 3 ; 4 uses
  %i.bf = icmp samesign ult i64 %i.bd, 128
  %i.bg = icmp ne i8 %i.ay, 0
  %or.cond4.i = or i1 %i.bg, %i.bf
  br i1 %or.cond4.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bh = icmp ule ptr %i.be, %i.ar
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.as, %i.bi
  %i.bk = icmp ule i64 %i.bd, %i.bj
  %narrow.i131.not.i = and i1 %i.bh, %i.bk
  br i1 %narrow.i131.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !53
  %i.bo = tail call i32 @mbedtls_x509_crt_parse_der(ptr noundef %i.bn, ptr noundef nonnull %i.be, i64 noundef %i.bd) #7 ; 4 uses
  switch i32 %i.bo, label %bb.z [
    i32 0, label %bb.aa
    i32 -8448, label %bb.aa
    i32 -141, label %bb.x
    i32 -9600, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 80, i32 noundef -141) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.y:                                             ; preds = %bb.w
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 43, i32 noundef -9600) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.z:                                             ; preds = %bb.w
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 42, i32 noundef %i.bo) #7
  br label %mbedtls_ssl_tls13_parse_certificate.exit

bb.aa:                                            ; preds = %bb.w, %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd ; 4 uses
  %i.bq = icmp ule ptr %i.bp, %i.ar
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.as, %i.br
  %i.bt = icmp ugt i64 %i.bs, 1
  %narrow.i132.not.i = and i1 %i.bq, %i.bt
  br i1 %narrow.i132.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.ac:                                            ; preds = %bb.aa
  %.0.copyload.i128.i = load i16, ptr %i.bp, align 1 ; 2 uses
  %i.bu = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i128.i)
  %i.bv = zext i16 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 5 uses
  %i.bx = icmp ule ptr %i.bw, %i.ar
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.as, %i.by
  %i.ca = icmp uge i64 %i.bz, %i.bv
  %narrow.i133.not.i = and i1 %i.bx, %i.ca
  br i1 %narrow.i133.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.ae:                                            ; preds = %bb.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv ; 3 uses
  store i32 0, ptr %i.at, align 4, !tbaa !54
  %.not.i12 = icmp eq i16 %.0.copyload.i128.i, 0
  br i1 %.not.i12, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae
  %i.cc = ptrtoint ptr %i.cb to i64               ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %mbedtls_ssl_tls13_check_received_extension.exit, %.lr.ph.i
  %.197190.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %i.da, %mbedtls_ssl_tls13_check_received_extension.exit ] ; 4 uses
  %i.cd = ptrtoint ptr %.197190.i to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ugt i64 %i.ce, 3
  br i1 %i.cf, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.ah:                                            ; preds = %bb.af
  %i.cg = getelementptr inbounds nuw i8, ptr %.197190.i, i64 2
  %.0.copyload.i.i = load i16, ptr %i.cg, align 1
  %i.ch = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i)
  %i.ci = zext i16 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.197190.i, i64 4 ; 3 uses
  %i.ck = icmp ule ptr %i.cj, %i.cb
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.cc, %i.cl
  %i.cn = icmp uge i64 %i.cm, %i.ci
  %narrow.i135.not.i = and i1 %i.ck, %i.cn
  br i1 %narrow.i135.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.aj:                                            ; preds = %bb.ah
  %.0.copyload.i127.i = load i16, ptr %.197190.i, align 1
  %i.co = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i127.i)
  %i.cp = zext i16 %i.co to i32
  %i.cq = tail call i32 @mbedtls_ssl_get_extension_mask(i32 noundef %i.cp) #7 ; 3 uses
  %i.cr = and i32 %i.cq, 520
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef %0, i8 noundef zeroext 47, i32 noundef -26112) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !25  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2220 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !54
  %i.cw = or i32 %i.cv, %i.cq
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !54
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 2216
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !55
  %i.cz = and i32 %i.cy, %i.cq
  %.not.i15 = icmp eq i32 %i.cz, 0
  br i1 %.not.i15, label %bb.am, label %mbedtls_ssl_tls13_check_received_extension.exit

bb.am:                                            ; preds = %bb.al
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 110, i32 noundef -29952) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

mbedtls_ssl_tls13_check_received_extension.exit:  ; preds = %bb.al
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci ; 3 uses
  %i.db = icmp ult ptr %i.da, %i.cb
  br i1 %i.db, label %bb.af, label %.loopexit.i, !llvm.loop !62

.loopexit153.i:                                   ; preds = %.loopexit.i, %bb.l
  %.4102.i = phi i32 [ 0, %bb.l ], [ %.199.lcssa.i, %.loopexit.i ]
  %.4.i = phi ptr [ %i.y, %bb.l ], [ %.197.lcssa.i, %.loopexit.i ]
  %.not126.i = icmp eq ptr %.4.i, %i.k
  br i1 %.not126.i, label %mbedtls_ssl_tls13_parse_certificate.exit, label %bb.an

bb.an:                                            ; preds = %.loopexit153.i
  tail call void @mbedtls_ssl_pend_fatal_alert(ptr noundef nonnull %0, i8 noundef zeroext 50, i32 noundef -29440) #7
  br label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

mbedtls_ssl_tls13_parse_certificate.exit:         ; preds = %bb.z, %.loopexit153.i
  %.4107.i = phi i32 [ %i.bo, %bb.z ], [ %.4102.i, %.loopexit153.i ] ; 2 uses
  %.not10 = icmp eq i32 %.4107.i, 0
  br i1 %.not10, label %bb.ao, label %mbedtls_ssl_tls13_fetch_handshake_msg.exit.thread

bb.ao:                                            ; preds = %mbedtls_ssl_tls13_parse_certificate.exit
  %i.dc = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !63  ; 2 uses
  %.not.i13 = icmp eq i8 %i.de, 3
  br i1 %.not.i13, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.df = load ptr, ptr %0, align 8, !tbaa !40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 10
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.in.i = phi i8 [ %i.dh, %bb.ap ], [ %i.de, %bb.ao ] ; 2 uses
  %i.di = zext i8 %.in.i to i32
  %i.dj = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 112
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !53 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ar, label %ssl_tls13_validate_certificate.exit

bb.ar:                                            ; preds = %bb.aq
  %i.dn = load ptr, ptr %0, align 8, !tbaa !40
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !46
  switch i8 %i.dp, label %ssl_tls13_validate_certificate.exit [
    i8 1, label %bb.as
    i8 0, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 120
  store i32 64, ptr %i.dq, align 8, !tbaa !65
  %i.dr = icmp eq i8 %.in.i, 1
  br i1 %i.dr, label %ssl_tls13_validate_certificate.exit.thread31, label %bb.at

bb.at:                                            ; preds = %bb.as
end_hunk_0
