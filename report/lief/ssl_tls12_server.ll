Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ssl_tls12_server?download=true
inline.NumInlined: 81
inline.NumDeleted: 50
begin_hunk_0_@mbedtls_ssl_handshake_server_step:bb.a
  %.pre14.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !59
  %i.tq = icmp eq i32 %.pre14.i.i, 0
  br i1 %i.tq, label %ssl_write_encrypt_then_mac_ext.exit.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store i16 5632, ptr %i.tg, align 1
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tg, i64 2
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tg, i64 3
  store i8 0, ptr %i.tr, align 1, !tbaa !34
  store i8 0, ptr %i.ts, align 1, !tbaa !34
  br label %ssl_write_encrypt_then_mac_ext.exit.i

ssl_write_encrypt_then_mac_ext.exit.i:            ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dw
  %storemerge.i124.i = phi i64 [ 4, %bb.ea ], [ 0, %bb.dz ], [ 0, %bb.dy ], [ 0, %bb.dw ]
  %i.tt = add i64 %storemerge.i124.i, %i.tf       ; 2 uses
  %.val.i = load ptr, ptr %i.oe, align 8, !tbaa !36 ; 2 uses
  %i.tu = getelementptr i8, ptr %.val.i, i64 12
  %.val.val.i = load i8, ptr %i.tu, align 4, !tbaa !60
  %i.tv = icmp eq i8 %.val.val.i, 0
  br i1 %i.tv, label %ssl_write_extended_ms_ext.exit.i, label %bb.eb

bb.eb:                                            ; preds = %ssl_write_encrypt_then_mac_ext.exit.i
  %i.tw = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.tt ; 3 uses
  store i16 5888, ptr %i.tw, align 1
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 2
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 3
  store i8 0, ptr %i.tx, align 1, !tbaa !34
  store i8 0, ptr %i.ty, align 1, !tbaa !34
  %.val117.pre.i = load ptr, ptr %i.oe, align 8, !tbaa !36
  br label %ssl_write_extended_ms_ext.exit.i

ssl_write_extended_ms_ext.exit.i:                 ; preds = %bb.eb, %ssl_write_encrypt_then_mac_ext.exit.i
  %.val117.i = phi ptr [ %.val117.pre.i, %bb.eb ], [ %.val.i, %ssl_write_encrypt_then_mac_ext.exit.i ]
  %storemerge.i125.i = phi i64 [ 4, %bb.eb ], [ 0, %ssl_write_encrypt_then_mac_ext.exit.i ]
  %i.tz = add i64 %storemerge.i125.i, %i.tt       ; 2 uses
  %i.ua = getelementptr i8, ptr %.val117.i, i64 4
  %.val117.val.i = load i8, ptr %i.ua, align 4, !tbaa !56
  %i.ub = icmp eq i8 %.val117.val.i, 0
  br i1 %i.ub, label %ssl_write_session_ticket_ext.exit.i, label %bb.ec

bb.ec:                                            ; preds = %ssl_write_extended_ms_ext.exit.i
  %i.uc = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.tz ; 3 uses
  store i16 8960, ptr %i.uc, align 1
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 2
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 3
  store i8 0, ptr %i.ud, align 1, !tbaa !34
  store i8 0, ptr %i.ue, align 1, !tbaa !34
  br label %ssl_write_session_ticket_ext.exit.i

ssl_write_session_ticket_ext.exit.i:              ; preds = %bb.ec, %ssl_write_extended_ms_ext.exit.i
  %storemerge.i126.i = phi i64 [ 4, %bb.ec ], [ 0, %ssl_write_extended_ms_ext.exit.i ] ; 2 uses
  store i64 %storemerge.i126.i, ptr %i.n, align 8, !tbaa !129
  %i.uf = add i64 %storemerge.i126.i, %i.tz       ; 4 uses
  %i.ug = load ptr, ptr %i.oh, align 8, !tbaa !45
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !119
  %i.uj = call ptr @mbedtls_ssl_ciphersuite_from_id(i32 noundef %i.ui) #10 ; 2 uses
  %.not113.i = icmp eq ptr %i.uj, null
  br i1 %.not113.i, label %bb.eg, label %bb.ed

bb.ed:                                            ; preds = %ssl_write_session_ticket_ext.exit.i
  %i.uk = call i32 @mbedtls_ssl_ciphersuite_uses_ec(ptr noundef nonnull %i.uj) #10
  %.not114.i = icmp eq i32 %i.uk, 0
  br i1 %.not114.i, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.val118.i = load ptr, ptr %i.oe, align 8, !tbaa !36
  %i.ul = getelementptr i8, ptr %.val118.i, i64 1
  %.val118.val.i = load i8, ptr %i.ul, align 1, !tbaa !113
  %i.um = and i8 %.val118.val.i, 1
  %i.un = icmp eq i8 %i.um, 0
  br i1 %i.un, label %ssl_write_supported_point_formats_ext.exit.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.uo = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.uf ; 2 uses
  store i16 2816, ptr %i.uo, align 1
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 2
  store <4 x i8> <i8 0, i8 2, i8 1, i8 0>, ptr %i.up, align 1, !tbaa !34
  br label %ssl_write_supported_point_formats_ext.exit.i

ssl_write_supported_point_formats_ext.exit.i:     ; preds = %bb.ef, %bb.ee
  %storemerge.i127.i = phi i64 [ 6, %bb.ef ], [ 0, %bb.ee ] ; 2 uses
  store i64 %storemerge.i127.i, ptr %i.n, align 8, !tbaa !129
  %i.uq = add i64 %storemerge.i127.i, %i.uf
  br label %bb.eg

bb.eg:                                            ; preds = %ssl_write_supported_point_formats_ext.exit.i, %bb.ed, %ssl_write_session_ticket_ext.exit.i
  %.098.i = phi i64 [ %i.uq, %ssl_write_supported_point_formats_ext.exit.i ], [ %i.uf, %bb.ed ], [ %i.uf, %ssl_write_session_ticket_ext.exit.i ] ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.nk, i64 16380
  %i.us = getelementptr inbounds nuw i8, ptr %i.qq, i64 %.098.i
  %i.ut = call i32 @mbedtls_ssl_write_alpn_ext(ptr noundef nonnull %0, ptr noundef nonnull %i.us, ptr noundef nonnull %i.ur, ptr noundef nonnull %i.n) #10 ; 2 uses
  %.not115.i = icmp eq i32 %i.ut, 0
  br i1 %.not115.i, label %bb.eh, label %ssl_write_server_hello.exit

bb.eh:                                            ; preds = %bb.eg
  %i.uu = load i64, ptr %i.n, align 8, !tbaa !129
  %i.uv = add i64 %i.uu, %.098.i                  ; 3 uses
  %.not116.i = icmp eq i64 %i.uv, 0
  br i1 %.not116.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.uw = trunc i64 %i.uv to i16
  %i.ux = call i16 @llvm.bswap.i16(i16 %i.uw)
  store i16 %i.ux, ptr %i.qp, align 1
  %i.uy = getelementptr i8, ptr %i.qp, i64 %i.uv
  %i.uz = getelementptr i8, ptr %i.uy, i64 2
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.0.i = phi ptr [ %i.uz, %bb.ei ], [ %i.qp, %bb.eh ]
  %i.va = ptrtoint ptr %.0.i to i64
  %i.vb = ptrtoint ptr %i.nk to i64
  %i.vc = sub i64 %i.va, %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %i.vc, ptr %i.vd, align 8, !tbaa !123
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 22, ptr %i.ve, align 8, !tbaa !124
  %i.vf = load ptr, ptr %i.nj, align 8, !tbaa !121
  store i8 2, ptr %i.vf, align 1, !tbaa !34
  %i.vg = call i32 @mbedtls_ssl_write_handshake_msg_ext(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1) #10
  br label %ssl_write_server_hello.exit

ssl_write_server_hello.exit:                      ; preds = %ssl_write_hello_verify_request.exit.i, %bb.cz, %mbedtls_ssl_conf_is_tls13_enabled.exit.thread.i, %bb.dm, %bb.dn, %bb.eg, %bb.ej
  %.1.i = phi i32 [ %.0.i.i, %ssl_write_hello_verify_request.exit.i ], [ %i.nu, %bb.cz ], [ %i.pw, %bb.dn ], [ %i.oc, %mbedtls_ssl_conf_is_tls13_enabled.exit.thread.i ], [ %i.pv, %bb.dm ], [ %i.vg, %bb.ej ], [ %i.ut, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  br label %ssl_write_certificate_request.exit

bb.ek:                                            ; preds = %bb.a
  %i.vh = tail call i32 @mbedtls_ssl_write_certificate(ptr noundef nonnull %0) #10
  br label %ssl_write_certificate_request.exit

bb.el:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  store i64 0, ptr %i.l, align 8, !tbaa !129
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !36
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !120 ; 2 uses
  %i.vm = getelementptr i8, ptr %i.vl, i64 18     ; 3 uses
  %.val.i24 = load i8, ptr %i.vm, align 2, !tbaa !134 ; 3 uses
  %cond.i.not.i = icmp eq i8 %.val.i24, 3
  br i1 %cond.i.not.i, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 5, ptr %i.p, align 8, !tbaa !98
  br label %ssl_write_server_key_exchange.exit

bb.en:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 11 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !121 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !122
  %i.vr = ptrtoint ptr %i.vo to i64
  %i.vs = ptrtoint ptr %i.vq to i64
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 19 uses
  store i64 4, ptr %i.vt, align 8, !tbaa !123
  %i.vu = icmp eq i8 %.val.i24, 4
  br i1 %i.vu, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store i64 5, ptr %i.vt, align 8, !tbaa !123
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vo, i64 4
  store i8 0, ptr %i.vv, align 1, !tbaa !34
  %i.vw = load ptr, ptr %i.vn, align 8, !tbaa !121
  %i.vx = load i64, ptr %i.vt, align 8, !tbaa !123 ; 2 uses
  %i.vy = add i64 %i.vx, 1
  store i64 %i.vy, ptr %i.vt, align 8, !tbaa !123
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.vx
  store i8 0, ptr %i.vz, align 1, !tbaa !34
  %.val.pr.i.i = load i8, ptr %i.vm, align 2, !tbaa !134
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.val117134.i.i = phi i8 [ %.val.pr.i.i, %bb.eo ], [ %.val.i24, %bb.en ]
  switch i8 %.val117134.i.i, label %ssl_prepare_server_key_exchange.exit.thread26.i [
    i8 2, label %mbedtls_ssl_ciphersuite_uses_ecdhe.exit.i.i
    i8 1, label %mbedtls_ssl_ciphersuite_uses_ecdhe.exit.i.i
    i8 4, label %mbedtls_ssl_ciphersuite_uses_ecdhe.exit.i.i
  ]

mbedtls_ssl_ciphersuite_uses_ecdhe.exit.i.i:      ; preds = %bb.ep, %bb.ep, %bb.ep
  %i.wa = load ptr, ptr %i.vi, align 8, !tbaa !36 ; 4 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 1176
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !62 ; 4 uses
  %i.wd = load ptr, ptr %0, align 8, !tbaa !17
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 224
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !135 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store i64 0, ptr %i.g, align 8, !tbaa !129
  %i.wg = icmp eq ptr %i.wf, null
  %i.wh = icmp eq ptr %i.wc, null
  %or.cond.i.i25 = select i1 %i.wg, i1 true, i1 %i.wh
  br i1 %or.cond.i.i25, label %.thread127.i.i, label %.preheader153.i.i

.preheader153.i.i:                                ; preds = %mbedtls_ssl_ciphersuite_uses_ecdhe.exit.i.i
  %i.wi = load i16, ptr %i.wf, align 2, !tbaa !63 ; 2 uses
  %.not109158.i.i = icmp eq i16 %i.wi, 0
  %.pr.pre.i.i = load i16, ptr %i.wc, align 2, !tbaa !63 ; 3 uses
  %i.wj = icmp eq i16 %.pr.pre.i.i, 0             ; 2 uses
  br i1 %.not109158.i.i, label %._crit_edge160.i.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader153.i.i
  br i1 %i.wj, label %.thread127.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.lr.ph.i.i, %._crit_edge.i.i
  %i.wk = phi i16 [ %i.wq, %._crit_edge.i.i ], [ %i.wi, %.preheader.lr.ph.i.i ]
  %.099159.i.i = phi ptr [ %i.wp, %._crit_edge.i.i ], [ %i.wf, %.preheader.lr.ph.i.i ]
  br label %bb.eq

bb.eq:                                            ; preds = %bb.er, %.preheader.i.i
  %i.wl = phi i16 [ %.pr.pre.i.i, %.preheader.i.i ], [ %i.wo, %bb.er ]
  %.195157.i.i = phi ptr [ %i.wc, %.preheader.i.i ], [ %i.wn, %bb.er ] ; 3 uses
  %i.wm = icmp eq i16 %i.wl, %i.wk
  br i1 %i.wm, label %.thread.i.loopexit.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.wn = getelementptr inbounds nuw i8, ptr %.195157.i.i, i64 2 ; 2 uses
  %i.wo = load i16, ptr %i.wn, align 2, !tbaa !63 ; 2 uses
  %.not110.i.i = icmp eq i16 %i.wo, 0
  br i1 %.not110.i.i, label %._crit_edge.i.i, label %bb.eq, !llvm.loop !92

._crit_edge.i.i:                                  ; preds = %bb.er
  %i.wp = getelementptr inbounds nuw i8, ptr %.099159.i.i, i64 2 ; 2 uses
  %i.wq = load i16, ptr %i.wp, align 2, !tbaa !63 ; 2 uses
  %.not109.i.i = icmp eq i16 %i.wq, 0
  br i1 %.not109.i.i, label %.thread127.i.i, label %.preheader.i.i, !llvm.loop !93

._crit_edge160.i.i:                               ; preds = %.preheader153.i.i
  br i1 %i.wj, label %.thread127.i.i, label %.thread.i.i

.thread.i.loopexit.i:                             ; preds = %bb.eq
  %.pre.i27 = load i16, ptr %.195157.i.i, align 2, !tbaa !63
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.i.loopexit.i, %._crit_edge160.i.i
  %3 = phi i16 [ %.pr.pre.i.i, %._crit_edge160.i.i ], [ %.pre.i27, %.thread.i.loopexit.i ]
  %.296126.i.i = phi ptr [ %i.wc, %._crit_edge160.i.i ], [ %.195157.i.i, %.thread.i.loopexit.i ]
  %i.wr = load ptr, ptr %i.vn, align 8, !tbaa !121
  %i.ws = load i64, ptr %i.vt, align 8, !tbaa !123
  store i16 0, ptr %i.h, align 2, !tbaa !63
  store i64 0, ptr %i.i, align 8, !tbaa !129
  %i.wt = call i32 @mbedtls_ssl_get_psa_curve_info_from_tls_id(i16 noundef zeroext %3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #10
  %i.wu = icmp eq i32 %i.wt, -134
  br i1 %i.wu, label %.thread127.i.i, label %bb.es

bb.es:                                            ; preds = %.thread.i.i
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.ws ; 4 uses
  %i.ww = load i16, ptr %i.h, align 2, !tbaa !63  ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wa, i64 120
  store i16 %i.ww, ptr %i.wx, align 8, !tbaa !136
  %i.wy = load i64, ptr %i.i, align 8, !tbaa !129 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wa, i64 128
  store i64 %i.wy, ptr %i.wz, align 8, !tbaa !137
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.xa, i8 0, i64 20, i1 false)
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 16384, ptr %i.xb, align 4, !tbaa !138
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 151126016, ptr %i.xc, align 4, !tbaa !139
  store i16 %i.ww, ptr %1, align 4, !tbaa !66
  %i.xd = icmp ugt i64 %i.wy, 65528
  %i.xe = trunc nuw i64 %i.wy to i16
  %spec.select.i.i.i = select i1 %i.xd, i16 -1, i16 %i.xe
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %spec.select.i.i.i, ptr %i.xf, align 2, !tbaa !67
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wv, i64 1
  store i8 3, ptr %i.wv, align 1, !tbaa !34
  %i.xh = load i16, ptr %.296126.i.i, align 2, !tbaa !63
  %i.xi = call i16 @llvm.bswap.i16(i16 %i.xh)
  store i16 %i.xi, ptr %i.xg, align 1
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wv, i64 3
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wa, i64 136 ; 4 uses
  %i.xl = call i32 @psa_generate_key(ptr noundef nonnull %1, ptr noundef nonnull %i.xk) #10 ; 2 uses
  %.not111.i.i = icmp eq i32 %i.xl, 0
  br i1 %.not111.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.xm = call i32 @psa_status_to_mbedtls(i32 noundef range(i32 1, 0) %i.xl, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #10
  br label %.thread127.i.i

bb.eu:                                            ; preds = %bb.es
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wv, i64 4 ; 2 uses
  %i.xo = load ptr, ptr %i.vn, align 8, !tbaa !121
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = ptrtoint ptr %i.xo to i64
  %reass.sub = sub i64 %i.xq, %i.xp
  %i.xr = add i64 %reass.sub, 16384
  %i.xs = load i32, ptr %i.xk, align 8, !tbaa !140
  %i.xt = call i32 @psa_export_public_key(i32 noundef %i.xs, ptr noundef nonnull %i.xn, i64 noundef %i.xr, ptr noundef nonnull %i.g) #10 ; 2 uses
  %.not113.i.i = icmp eq i32 %i.xt, 0
  br i1 %.not113.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.xu = call i32 @psa_status_to_mbedtls(i32 noundef range(i32 1, 0) %i.xt, ptr noundef nonnull @psa_to_ssl_errors, i64 noundef 7, ptr noundef nonnull @psa_generic_status_to_mbedtls) #10
  %i.xv = load i32, ptr %i.xk, align 8, !tbaa !140
  %i.xw = call i32 @psa_destroy_key(i32 noundef %i.xv) #10 ; 0 uses
  store i32 0, ptr %i.xk, align 8, !tbaa !140
  br label %.thread127.i.i

.thread127.i.i:                                   ; preds = %._crit_edge.i.i, %bb.ev, %bb.et, %.thread.i.i, %._crit_edge160.i.i, %.preheader.lr.ph.i.i, %mbedtls_ssl_ciphersuite_uses_ecdhe.exit.i.i
  %.0.ph.i.i = phi i32 [ -26112, %.thread.i.i ], [ %i.xu, %bb.ev ], [ %i.xm, %bb.et ], [ -28160, %._crit_edge160.i.i ], [ -24192, %mbedtls_ssl_ciphersuite_uses_ecdhe.exit.i.i ], [ -28160, %.preheader.lr.ph.i.i ], [ -28160, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %ssl_prepare_server_key_exchange.exit.i

bb.ew:                                            ; preds = %bb.eu
  %i.xx = load i64, ptr %i.g, align 8, !tbaa !129 ; 2 uses
  %i.xy = trunc i64 %i.xx to i8
  store i8 %i.xy, ptr %i.xj, align 1, !tbaa !34
  %i.xz = add i64 %i.xx, 4                        ; 2 uses
  %i.ya = load ptr, ptr %i.vn, align 8, !tbaa !121 ; 2 uses
  %i.yb = load i64, ptr %i.vt, align 8, !tbaa !123 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.yb
  %i.yd = add i64 %i.yb, %i.xz
  store i64 %i.yd, ptr %i.vt, align 8, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %.val117.i.i = load i8, ptr %i.vm, align 2, !tbaa !134
  %i.ye = add i8 %.val117.i.i, -3
  %switch.i.i.i = icmp ult i8 %i.ye, -2
  br i1 %switch.i.i.i, label %ssl_prepare_server_key_exchange.exit.thread26.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.yf = icmp eq ptr %i.ya, null
  br i1 %i.yf, label %ssl_prepare_server_key_exchange.exit.thread.i, label %bb.ey

ssl_prepare_server_key_exchange.exit.thread.i:    ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ff

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  store i64 0, ptr %i.j, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.yg = call i32 @mbedtls_ssl_get_ciphersuite_sig_pk_alg(ptr noundef nonnull %i.vl) #10 ; 3 uses
  %i.yh = call zeroext i8 @mbedtls_ssl_sig_from_pk_alg(i32 noundef %i.yg) #10
  %i.yi = zext i8 %i.yh to i32
  %i.yj = call i32 @mbedtls_ssl_tls12_get_preferred_hash_for_sig_alg(ptr noundef nonnull %0, i32 noundef %i.yi) #10
  %i.yk = trunc i32 %i.yj to i8
  %i.yl = call i32 @mbedtls_ssl_md_alg_from_hash(i8 noundef zeroext %i.yk) #10 ; 4 uses
  %i.ym = icmp eq i32 %i.yg, 0
  %i.yn = icmp eq i32 %i.yl, 0
  %or.cond4.i.i = select i1 %i.ym, i1 true, i1 %i.yn
  br i1 %or.cond4.i.i, label %.thread147.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.yo = call i32 @mbedtls_ssl_get_key_exchange_md_tls1_2(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.j, ptr noundef nonnull %i.yc, i64 noundef %i.xz, i32 noundef %i.yl) #10 ; 2 uses
  %.not115.i.i = icmp eq i32 %i.yo, 0
  br i1 %.not115.i.i, label %bb.fa, label %.thread147.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.yp = call zeroext i8 @mbedtls_ssl_hash_from_md_alg(i32 noundef %i.yl) #10
  %i.yq = load ptr, ptr %i.vn, align 8, !tbaa !121
  %i.yr = load i64, ptr %i.vt, align 8, !tbaa !123 ; 2 uses
  %i.ys = add i64 %i.yr, 1
  store i64 %i.ys, ptr %i.vt, align 8, !tbaa !123
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yr
  store i8 %i.yp, ptr %i.yt, align 1, !tbaa !34
  %i.yu = call zeroext i8 @mbedtls_ssl_sig_from_pk_alg(i32 noundef %i.yg) #10
  %i.yv = load ptr, ptr %i.vn, align 8, !tbaa !121
  %i.yw = load i64, ptr %i.vt, align 8, !tbaa !123 ; 2 uses
  %i.yx = add i64 %i.yw, 1
  store i64 %i.yx, ptr %i.vt, align 8, !tbaa !123
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.yw
  store i8 %i.yu, ptr %i.yy, align 1, !tbaa !34
  %i.yz = load ptr, ptr %i.vi, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.yz, null           ; 2 uses
  br i1 %.not.i.i.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 1192
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !68 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.zb, null
  br i1 %.not8.i.i.i, label %bb.fc, label %mbedtls_ssl_own_key.exit.thread143.i.i

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.zc = load ptr, ptr %0, align 8, !tbaa !17
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 192
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !69 ; 3 uses
  %i.zf = icmp eq ptr %i.ze, null
  br i1 %i.zf, label %.thread147.i.i, label %mbedtls_ssl_own_key.exit.i.i

mbedtls_ssl_own_key.exit.i.i:                     ; preds = %bb.fc
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !72 ; 2 uses
  %i.zi = icmp eq ptr %i.zh, null
  br i1 %i.zi, label %.thread147.i.i, label %bb.fd

mbedtls_ssl_own_key.exit.thread143.i.i:           ; preds = %bb.fb
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !72 ; 2 uses
  %i.zl = icmp eq ptr %i.zk, null
  br i1 %i.zl, label %.thread147.i.i, label %bb.fe

bb.fd:                                            ; preds = %mbedtls_ssl_own_key.exit.i.i
  br i1 %.not.i.i.i, label %bb.fe, label %.thread145.i.i

.thread145.i.i:                                   ; preds = %bb.fd
  %.phi.trans.insert.i.i27 = getelementptr inbounds nuw i8, ptr %i.yz, i64 1192
  %.pre.i.i28 = load ptr, ptr %.phi.trans.insert.i.i27, align 8, !tbaa !68 ; 2 uses
  %.not8.i119.i.i = icmp eq ptr %.pre.i.i28, null
  %spec.select.i = select i1 %.not8.i119.i.i, ptr %i.ze, ptr %.pre.i.i28
  %.phi.trans.insert.i29 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %.pre.i30 = load ptr, ptr %.phi.trans.insert.i29, align 8, !tbaa !72
  br label %bb.fe

.thread147.i.i:                                   ; preds = %mbedtls_ssl_own_key.exit.thread143.i.i, %mbedtls_ssl_own_key.exit.i.i, %bb.fc, %bb.ez, %bb.ey
  %.2.ph.i.i = phi i32 [ -30208, %mbedtls_ssl_own_key.exit.thread143.i.i ], [ -30208, %mbedtls_ssl_own_key.exit.i.i ], [ %i.yo, %bb.ez ], [ -27648, %bb.ey ], [ -30208, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br label %ssl_prepare_server_key_exchange.exit.i

bb.fe:                                            ; preds = %.thread145.i.i, %bb.fd, %mbedtls_ssl_own_key.exit.thread143.i.i
  %i.zm = phi ptr [ %i.zh, %bb.fd ], [ %.pre.i30, %.thread145.i.i ], [ %i.zk, %mbedtls_ssl_own_key.exit.thread143.i.i ]
  %i.zn = load i64, ptr %i.j, align 8, !tbaa !129
  %i.zo = load ptr, ptr %i.vn, align 8, !tbaa !121
  %i.zp = load i64, ptr %i.vt, align 8, !tbaa !123 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.zp
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 2
  %i.zs = add i64 %i.vs, 16763
  %i.zt = add i64 %i.zp, %i.vr
  %i.zu = sub i64 %i.zs, %i.zt
  %i.zv = call i32 @mbedtls_pk_sign(ptr noundef %i.zm, i32 noundef %i.yl, ptr noundef nonnull %i.k, i64 noundef %i.zn, ptr noundef nonnull %i.zr, i64 noundef %i.zu, ptr noundef nonnull %i.l) #10 ; 2 uses
  %.not116.i.i = icmp eq i32 %i.zv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br i1 %.not116.i.i, label %ssl_prepare_server_key_exchange.exit.thread26.i, label %ssl_prepare_server_key_exchange.exit.i

ssl_prepare_server_key_exchange.exit.thread26.i:  ; preds = %bb.fe, %bb.ew, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.fg

ssl_prepare_server_key_exchange.exit.i:           ; preds = %bb.fe, %.thread147.i.i, %.thread127.i.i
  %.3.i.i = phi i32 [ %.0.ph.i.i, %.thread127.i.i ], [ %.2.ph.i.i, %.thread147.i.i ], [ %i.zv, %bb.fe ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  switch i32 %.3.i.i, label %bb.ff [
    i32 0, label %bb.fg
end_hunk_0
