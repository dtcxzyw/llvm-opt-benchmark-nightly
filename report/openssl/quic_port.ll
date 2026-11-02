Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_port?download=true
inline.NumInlined: 87
inline.NumDeleted: 41
begin_hunk_0_@port_default_packet_handler:bb.a
  %spec.select72 = select i1 %i.br, ptr null, ptr %i.bf ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp eq ptr %i.bt, null                 ; 2 uses
  %or.cond = select i1 %i.br, i1 %i.bu, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  call fastcc void @port_send_retry(ptr noundef nonnull %1, ptr noundef nonnull %i.bv, ptr noundef %4)
  br label %.thread

bb.s:                                             ; preds = %bb.q
  br i1 %i.bu, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bx = call fastcc i32 @port_validate_token(ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %i.bw, ptr noundef %5, ptr noundef %i.d)
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bz = load i16, ptr %i.g, align 2
  %i.ca = and i16 %i.bz, 4
  %.not69 = icmp eq i16 %i.ca, 0
  br i1 %.not69, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @port_send_retry(ptr noundef nonnull %1, ptr noundef nonnull %i.bw, ptr noundef %4)
  br label %.thread

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.154 = phi ptr [ %spec.select, %bb.s ], [ %spec.select, %bb.t ], [ null, %bb.u ] ; 3 uses
  %.1 = phi ptr [ %spec.select72, %bb.s ], [ %spec.select72, %bb.t ], [ %i.bf, %bb.u ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call fastcc void @port_bind_channel(ptr noundef nonnull %1, ptr noundef nonnull %i.cb, ptr noundef %i.bl, ptr noundef %5, ptr noundef %.154, ptr noundef %i.c)
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !57  ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = load i8, ptr %i.d, align 1, !tbaa !153
  %i.cf = icmp eq i8 %i.ce, 1
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call fastcc void @generate_new_token(ptr noundef %i.cc, ptr noundef nonnull %i.cb)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.not71 = icmp eq ptr %.154, null
  br i1 %.not71, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.z
  %i.cg = call i32 @ossl_qrx_read_pkt(ptr noundef %.1, ptr noundef nonnull %i.f) #9
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.ci = load ptr, ptr %i.f, align 8, !tbaa !233
  call void @ossl_quic_channel_inject_pkt(ptr noundef nonnull %i.cc, ptr noundef %i.ci) #9
  %i.cj = call i32 @ossl_qrx_read_pkt(ptr noundef %.1, ptr noundef nonnull %i.f) #9
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %.lr.ph, label %._crit_edge, !llvm.loop !232

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 1064
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !157
  call void @ossl_qrx_update_pn_space(ptr noundef %.1, ptr noundef %i.cm) #9
  br label %.thread

.thread:                                          ; preds = %port_try_handle_stateless_reset.exit.thread, %bb.z, %._crit_edge, %bb.w, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.i, %bb.g, %bb.f, %port_try_handle_stateless_reset.exit, %bb.a, %bb.v, %bb.r, %bb.l
  %.255 = phi ptr [ null, %port_try_handle_stateless_reset.exit ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.m ], [ null, %bb.n ], [ %i.bf, %bb.p ], [ %spec.select, %bb.r ], [ %spec.select, %bb.v ], [ %.154, %bb.w ], [ null, %bb.a ], [ null, %._crit_edge ], [ %i.bf, %bb.o ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.i ], [ null, %port_try_handle_stateless_reset.exit.thread ], [ null, %bb.z ]
  %.2 = phi ptr [ null, %port_try_handle_stateless_reset.exit ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.p ], [ %spec.select72, %bb.r ], [ %spec.select72, %bb.v ], [ %.1, %bb.w ], [ null, %bb.a ], [ %.1, %._crit_edge ], [ null, %bb.o ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.i ], [ null, %port_try_handle_stateless_reset.exit.thread ], [ %.1, %bb.z ]
  call void @ossl_qrx_free(ptr noundef %.255) #9
  call void @ossl_qrx_free(ptr noundef %.2) #9
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !30
  call void @ossl_quic_demux_release_urxe(ptr noundef %i.co, ptr noundef %0) #9
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

declare ptr @ossl_quic_srtm_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ossl_quic_lcidm_new(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare ptr @EVP_CIPHER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RAND_priv_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_quic_lcidm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ossl_quic_channel_inject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_wire_decode_pkt_hdr(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @port_send_version_negotiation(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.bio_msg_st], align 16  ; 7 uses
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %4 = alloca %struct.quic_pkt_hdr_st, align 8    ; 11 uses
  %5 = alloca %struct.wpacket_st, align 8         ; 7 uses
  %i.b = alloca [1 x i32], align 4                ; 5 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.e, ptr noundef nonnull align 1 dereferenceable(21) %i.f, i64 21, i1 false), !tbaa.struct !158
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 29
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.g, ptr noundef nonnull align 8 dereferenceable(21) %i.h, i64 21, i1 false), !tbaa.struct !158
  store i32 1, ptr %i.b, align 4, !tbaa !159
  store i32 6, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !155
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.k, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %i.b, ptr %i.l, align 8, !tbaa !161
  store ptr %i.a, ptr %3, align 16, !tbaa !164
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.m, align 16, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = call i32 @WPACKET_init_static_len(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef 1024, i64 noundef 0) #9
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i8, ptr %i.h, align 8, !tbaa !166
  %i.q = zext i8 %i.p to i64
  %i.r = call i32 @ossl_quic_wire_encode_pkt_hdr(ptr noundef nonnull %5, i64 noundef %i.q, ptr noundef nonnull %4, ptr noundef null) #9
  %.not7 = icmp eq i32 %i.r, 0
  br i1 %.not7, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.s = load i32, ptr %i.b, align 4, !tbaa !159
  %i.t = zext i32 %i.s to i64
  %i.u = call i32 @WPACKET_put_bytes__(ptr noundef nonnull %5, i64 noundef %i.t, i64 noundef 4) #9
  %.not11 = icmp eq i32 %i.u, 0
  br i1 %.not11, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = call i32 @WPACKET_get_total_written(ptr noundef nonnull %5, ptr noundef nonnull %i.v) #9
  %.not8 = icmp eq i32 %i.w, 0
  br i1 %.not8, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader.1
  %i.x = call i32 @WPACKET_finish(ptr noundef nonnull %5) #9
  %.not9 = icmp eq i32 %i.x, 0
  br i1 %.not9, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.aa = call i32 @BIO_sendmmsg(ptr noundef %i.z, ptr noundef nonnull %3, i64 noundef 40, i64 noundef 1, i64 noundef 0, ptr noundef nonnull %i.c) #9
  %.not10 = icmp eq i32 %i.aa, 0
  br i1 %.not10, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1380, ptr noundef nonnull @__func__.port_send_version_negotiation) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 387, ptr noundef nonnull @.str.3) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.c, %.preheader.1, %.preheader.preheader, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

declare ptr @ossl_qrx_new(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_provide_initial_secret(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_qrx_validate_initial_packet(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @port_send_retry(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.quic_conn_id_st, align 8    ; 5 uses
  %4 = alloca [1 x %struct.bio_msg_st], align 16  ; 7 uses
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  %i.b = alloca [197 x i8], align 16              ; 5 uses
  %5 = alloca %struct.wpacket_st, align 8         ; 6 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.quic_pkt_hdr_st, align 8    ; 14 uses
  %7 = alloca %struct.validation_token, align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %7, i8 0, i64 80, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 29 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.f, ptr noundef nonnull align 1 dereferenceable(21) %i.g, i64 21, i1 false), !tbaa.struct !158
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 29 ; 2 uses
  %i.k = call i32 @ossl_quic_lcidm_get_unused_cid(ptr noundef %i.i, ptr noundef nonnull %i.j) #9
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %encrypt_validation_token.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 1 dereferenceable(21) %i.j, i64 21, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.o, ptr noundef nonnull align 8 dereferenceable(21) %i.n, i64 21, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i8 1, ptr %i.p, align 8, !tbaa !168
  %i.q = call i64 @ossl_time_now() #9
  store i64 %i.q, ptr %7, align 8, !tbaa !152
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store ptr null, ptr %i.r, align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(21) %3, i64 21, i1 false), !tbaa.struct !158
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %i.u = call i32 @BIO_ADDR_rawaddress(ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.t) #9
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %generate_token.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.t, align 8, !tbaa !170  ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %generate_token.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = call noalias ptr @CRYPTO_malloc(i64 noundef %i.v, ptr noundef nonnull @.str, i32 noundef 961) #9 ; 3 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !169
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %generate_token.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = call i32 @BIO_ADDR_rawaddress(ptr noundef %1, ptr noundef nonnull %i.x, ptr noundef nonnull %i.t) #9
  %.not17.i = icmp eq i32 %i.z, 0
  br i1 %.not17.i, label %generate_token.exit.thread, label %bb.f

generate_token.exit.thread:                       ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !169
  call void @CRYPTO_free(ptr noundef %.val.i, ptr noundef nonnull @.str, i32 noundef 935) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %encrypt_validation_token.exit.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aa = call fastcc i32 @marshal_validation_token(ptr noundef %7, ptr noundef %i.a, ptr noundef %i.d)
  %.not19 = icmp eq i32 %i.aa, 0
  br i1 %.not19, label %encrypt_validation_token.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !152
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52
  %i.ae = call i32 @EVP_CIPHER_CTX_get_tag_length(ptr noundef %i.ad) #9 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %encrypt_validation_token.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !52
  %i.ah = call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef %i.ag) #9 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %encrypt_validation_token.exit.thread, label %encrypt_validation_token.exit

encrypt_validation_token.exit:                    ; preds = %bb.h
  %i.aj = zext nneg i32 %i.ah to i64
  %i.ak = zext nneg i32 %i.ae to i64
  %i.al = add i64 %i.ab, 16
  %i.am = add i64 %i.al, %i.ak
  %i.an = add i64 %i.am, %i.aj                    ; 2 uses
  store i64 %i.an, ptr %i.e, align 8, !tbaa !152
  %i.ao = icmp ugt i64 %i.an, 197
  br i1 %i.ao, label %encrypt_validation_token.exit.thread, label %bb.i

bb.i:                                             ; preds = %encrypt_validation_token.exit
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !152
  %i.aq = call fastcc i32 @encrypt_validation_token(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %i.ap, ptr noundef nonnull %i.b, ptr noundef %i.e)
  %.not20 = icmp ne i32 %i.aq, 0
  %i.ar = load i64, ptr %i.e, align 8             ; 3 uses
  %i.as = icmp ugt i64 %i.ar, 15
  %or.cond23 = select i1 %.not20, i1 %i.as, i1 false, !prof !171
  br i1 %or.cond23, label %bb.j, label %encrypt_validation_token.exit.thread, !prof !171

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.f, ptr noundef nonnull align 1 dereferenceable(21) %i.g, i64 21, i1 false), !tbaa.struct !158
  %i.at = load i32, ptr %6, align 8
  %i.au = and i32 %i.at, -33024
  %i.av = or disjoint i32 %i.au, 32772
  store i32 %i.av, ptr %6, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 1, ptr %i.aw, align 4, !tbaa !155
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store i64 %i.ar, ptr %i.ax, align 8, !tbaa !160
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  store ptr %i.b, ptr %i.ay, align 8, !tbaa !161
  %i.az = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ar
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -16
  %i.bf = call i32 @ossl_quic_calculate_retry_integrity_tag(ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef nonnull %6, ptr noundef nonnull %i.n, ptr noundef nonnull %i.be) #9
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %encrypt_validation_token.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !161
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !172
  %i.bj = load i64, ptr %i.ax, align 8, !tbaa !160
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !173
  store ptr %i.a, ptr %4, align 16, !tbaa !164
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.bl, align 16, !tbaa !165
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = call i32 @WPACKET_init_static_len(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef 512, i64 noundef 0) #9
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %encrypt_validation_token.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = load i8, ptr %i.n, align 8, !tbaa !166
  %i.bq = zext i8 %i.bp to i64
  %i.br = call i32 @ossl_quic_wire_encode_pkt_hdr(ptr noundef nonnull %5, i64 noundef %i.bq, ptr noundef nonnull %6, ptr noundef null) #9
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %encrypt_validation_token.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = call i32 @WPACKET_get_total_written(ptr noundef nonnull %5, ptr noundef nonnull %i.bt) #9
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %encrypt_validation_token.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = call i32 @WPACKET_finish(ptr noundef nonnull %5) #9
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %encrypt_validation_token.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !55
  %i.ca = call i32 @BIO_sendmmsg(ptr noundef %i.bz, ptr noundef nonnull %4, i64 noundef 40, i64 noundef 1, i64 noundef 0, ptr noundef nonnull %i.c) #9
  %.not21 = icmp eq i32 %i.ca, 0
  br i1 %.not21, label %bb.p, label %encrypt_validation_token.exit.thread

bb.p:                                             ; preds = %bb.o
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1288, ptr noundef nonnull @__func__.port_send_retry) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 387, ptr noundef nonnull @.str.4) #9
  br label %encrypt_validation_token.exit.thread

end_hunk_0
