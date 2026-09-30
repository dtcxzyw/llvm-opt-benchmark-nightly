Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quicapitest?download=true
inline.NumInlined: 56
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@tparam_on_enc_ext:bb.a
  br i1 %.not48, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %tparam_handle.exit
  %.val59 = load i64, ptr %i.ag, align 8, !tbaa !104
  %.not49 = icmp eq i64 %.val59, 0
  br i1 %.not49, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = call ptr @ossl_quic_wire_decode_transport_param_bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #10 ; 10 uses
  %i.ai = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2138, ptr noundef nonnull @.str.363, ptr noundef %i.ah) #10
  %.not56 = icmp eq i32 %i.ai, 0
  br i1 %.not56, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val60 = load ptr, ptr %4, align 8, !tbaa !103
  %.val = load i64, ptr %i.ag, align 8, !tbaa !104
  %i.aj = call i32 @test_mem_eq(ptr noundef nonnull @.str.14, i32 noundef 2139, ptr noundef nonnull @.str.364, ptr noundef nonnull @.str.365, ptr noundef %.val60, i64 noundef %.val, ptr noundef null, i64 noundef 0) #10 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !21  ; 9 uses
  %i.al = load i64, ptr %i.a, align 8, !tbaa !21  ; 6 uses
  %.val61 = load ptr, ptr %3, align 8, !tbaa !30  ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val61, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !33
  switch i32 %i.an, label %tparam_handle.exit [
    i32 0, label %bb.m
    i32 1, label %bb.p
    i32 5, label %bb.p
    i32 2, label %bb.s
    i32 3, label %bb.s
    i32 4, label %bb.s
    i32 6, label %bb.t
  ]

bb.m:                                             ; preds = %bb.l
  %i.ao = call ptr @ossl_quic_wire_encode_transport_param_bytes(ptr noundef nonnull %5, i64 noundef %i.ak, ptr noundef %i.ah, i64 noundef %i.al) #10
  %i.ap = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2034, ptr noundef nonnull @.str.371, ptr noundef %i.ao) #10
  %.not38.i = icmp eq i32 %i.ap, 0
  br i1 %.not38.i, label %tparam_handle.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load i64, ptr %.val61, align 8, !tbaa !32
  %i.ar = icmp eq i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.as = call ptr @ossl_quic_wire_encode_transport_param_bytes(ptr noundef nonnull %5, i64 noundef %i.ak, ptr noundef %i.ah, i64 noundef %i.al) #10
  %i.at = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2042, ptr noundef nonnull @.str.371, ptr noundef %i.as) #10
  %.not39.i = icmp eq i32 %i.at, 0
  br i1 %.not39.i, label %tparam_handle.exit, label %bb.r

bb.p:                                             ; preds = %bb.l, %bb.l
  %i.au = load i64, ptr %.val61, align 8, !tbaa !32
  %.not36.i = icmp eq i64 %i.ak, %i.au
  br i1 %.not36.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = call ptr @ossl_quic_wire_encode_transport_param_bytes(ptr noundef nonnull %5, i64 noundef %i.ak, ptr noundef %i.ah, i64 noundef %i.al) #10
  %i.aw = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2052, ptr noundef nonnull @.str.371, ptr noundef %i.av) #10
  %.not37.i = icmp eq i32 %i.aw, 0
  br i1 %.not37.i, label %tparam_handle.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  br label %tparam_handle.exit

bb.s:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.ax = call ptr @ossl_quic_wire_encode_transport_param_bytes(ptr noundef nonnull %5, i64 noundef %i.ak, ptr noundef %i.ah, i64 noundef %i.al) #10
  %i.ay = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2062, ptr noundef nonnull @.str.371, ptr noundef %i.ax) #10
  %.not35.i = icmp ne i32 %i.ay, 0
  %..i = zext i1 %.not35.i to i32
  br label %tparam_handle.exit

bb.t:                                             ; preds = %bb.l
  %i.az = load i64, ptr %.val61, align 8, !tbaa !32
  %i.ba = icmp eq i64 %i.ak, %i.az
  br i1 %i.ba, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bb = call i32 @test_size_t_gt(ptr noundef nonnull @.str.14, i32 noundef 2069, ptr noundef nonnull @.str.372, ptr noundef nonnull @.str.82, i64 noundef %i.al, i64 noundef 0) #10
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %tparam_handle.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = load i8, ptr %i.ah, align 1, !tbaa !105
  %i.bd = xor i8 %i.bc, 1
  store i8 %i.bd, ptr %i.ah, align 1, !tbaa !105
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.be = call ptr @ossl_quic_wire_encode_transport_param_bytes(ptr noundef nonnull %5, i64 noundef %i.ak, ptr noundef %i.ah, i64 noundef %i.al) #10
  %i.bf = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2076, ptr noundef nonnull @.str.371, ptr noundef %i.be) #10
  %.not34.i = icmp eq i32 %i.bf, 0
  br i1 %.not34.i, label %tparam_handle.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = load i64, ptr %.val61, align 8, !tbaa !32
  %i.bh = icmp eq i64 %i.ak, %i.bg
  br i1 %i.bh, label %bb.y, label %tparam_handle.exit

bb.y:                                             ; preds = %bb.x
  %i.bi = load i8, ptr %i.ah, align 1, !tbaa !105
  %i.bj = xor i8 %i.bi, 1
  store i8 %i.bj, ptr %i.ah, align 1, !tbaa !105
  br label %tparam_handle.exit

tparam_handle.exit:                               ; preds = %bb.l, %bb.m, %bb.o, %bb.q, %bb.r, %bb.s, %bb.u, %bb.w, %bb.x, %bb.y
  %.0.i62 = phi i32 [ 1, %bb.x ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.u ], [ 1, %bb.r ], [ 0, %bb.o ], [ 0, %bb.q ], [ %..i, %bb.s ], [ 0, %bb.w ], [ 1, %bb.y ]
  %i.bk = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 2143, ptr noundef nonnull @.str.366, i32 noundef %.0.i62) #10
  %.not57 = icmp eq i32 %i.bk, 0
  br i1 %.not57, label %.loopexit, label %bb.i, !llvm.loop !95

bb.z:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %3, align 8, !tbaa !30    ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !33
  switch i32 %i.bn, label %bb.ae [
    i32 2, label %bb.aa
    i32 5, label %bb.aa
    i32 3, label %bb.aa
    i32 4, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !34
  %i.bt = call ptr @ossl_quic_wire_encode_transport_param_bytes(ptr noundef nonnull %5, i64 noundef %i.bo, ptr noundef %i.bq, i64 noundef %i.bs) #10
  %i.bu = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2151, ptr noundef nonnull @.str.367, ptr noundef %i.bt) #10
  %.not51 = icmp eq i32 %i.bu, 0
  br i1 %.not51, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load ptr, ptr %3, align 8, !tbaa !30    ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !33
  %i.by = icmp eq i32 %i.bx, 3
  br i1 %i.by, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !106
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !34
  %i.ce = call ptr @ossl_quic_wire_encode_transport_param_bytes(ptr noundef nonnull %5, i64 noundef %i.bz, ptr noundef %i.cb, i64 noundef %i.cd) #10
  %i.cf = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 2157, ptr noundef nonnull @.str.367, ptr noundef %i.ce) #10
  %.not52 = icmp eq i32 %i.cf, 0
  br i1 %.not52, label %.loopexit, label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !106
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !34
  %i.ck = call i32 @WPACKET_memcpy(ptr noundef nonnull %5, ptr noundef %i.ch, i64 noundef %i.cj) #10
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 2160, ptr noundef nonnull @.str.368, i32 noundef %i.cm) #10
  %.not50 = icmp eq i32 %i.cn, 0
  br i1 %.not50, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.z, %bb.ad, %bb.ab, %bb.ac
  %i.co = call i32 @WPACKET_close(ptr noundef nonnull %5) #10
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 2164, ptr noundef nonnull @.str.369, i32 noundef %i.cq) #10
  %.not53 = icmp eq i32 %i.cr, 0
  br i1 %.not53, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = call i32 @WPACKET_get_total_written(ptr noundef nonnull %5, ptr noundef nonnull %i.b) #10
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 2167, ptr noundef nonnull @.str.370, i32 noundef %i.cu) #10
  %.not54 = icmp eq i32 %i.cv, 0
  br i1 %.not54, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = call i32 @WPACKET_finish(ptr noundef nonnull %5) #10 ; 0 uses
  %i.cx = load i64, ptr %i.g, align 8, !tbaa !107 ; 2 uses
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !21
  %i.cz = add i64 %i.cy, %i.cx
  %i.da = call i32 @qtest_fault_resize_message(ptr noundef %0, i64 noundef %i.cz) #10
  %.not55 = icmp eq i32 %i.da, 0
  br i1 %.not55, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = load ptr, ptr %1, align 8, !tbaa !97
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cx
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !100
  %i.df = load i64, ptr %i.b, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.de, i64 %i.df, i1 false)
  %i.dg = load ptr, ptr %1, align 8, !tbaa !97    ; 2 uses
  %6 = load i16, ptr %i.dg, align 1
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %i.dh = zext i16 %7 to i64
  %i.di = load i64, ptr %i.b, align 8, !tbaa !21
  %i.dj = add i64 %i.di, %i.dh                    ; 2 uses
  %i.dk = lshr i64 %i.dj, 8
  %i.dl = trunc i64 %i.dk to i8
  store i8 %i.dl, ptr %i.dg, align 1, !tbaa !105
  %i.dm = trunc i64 %i.dj to i8
  %i.dn = load ptr, ptr %1, align 8, !tbaa !97
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i8 %i.dm, ptr %i.do, align 1, !tbaa !105
  br label %bb.ai

.loopexit:                                        ; preds = %tparam_handle.exit, %bb.k, %bb.af, %bb.ae, %bb.ac, %bb.aa, %bb.ad, %bb.h, %bb.g
  call void @WPACKET_cleanup(ptr noundef nonnull %5) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.a, %bb.b, %bb.f, %bb.e, %PACKET_buf_init.exit, %bb.ag, %.loopexit
  %.069 = phi ptr [ %i.s, %.loopexit ], [ %i.s, %bb.e ], [ null, %PACKET_buf_init.exit ], [ %i.s, %bb.ah ], [ %i.s, %bb.ag ], [ null, %bb.b ], [ null, %bb.a ], [ %i.s, %bb.f ]
  %.04167 = phi i32 [ 0, %.loopexit ], [ 0, %bb.e ], [ 0, %PACKET_buf_init.exit ], [ 1, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.f ]
  call void @BUF_MEM_free(ptr noundef %i.d) #10
  call void @BUF_MEM_free(ptr noundef %.069) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.04167
}

declare i32 @SSL_get_conn_close_info(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @BUF_MEM_new() local_unnamed_addr #3

declare i32 @qtest_fault_delete_extension(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WPACKET_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WPACKET_put_bytes__(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_start_sub_packet_len__(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ossl_quic_wire_decode_transport_param_bytes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ossl_quic_wire_encode_transport_param_bytes(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_close(ptr noundef) local_unnamed_addr #3

declare i32 @WPACKET_get_total_written(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WPACKET_finish(ptr noundef) local_unnamed_addr #3

declare i32 @qtest_fault_resize_message(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @WPACKET_cleanup(ptr noundef) local_unnamed_addr #3

declare void @BUF_MEM_free(ptr noundef) local_unnamed_addr #3

declare i32 @test_size_t_gt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @SSL_CTX_sess_set_new_cb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @new_session_cb(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load i32, ptr @new_called, align 4, !tbaa !22
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @new_called, align 4, !tbaa !22
  store ptr %0, ptr @cbssl, align 8, !tbaa !17
  tail call void @SSL_SESSION_free(ptr noundef %1) #10
  ret i32 1
}

declare i32 @SSL_CTX_get_domain_flags(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @test_uint64_t_ne(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SSL_CTX_set_domain_flags(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @SSL_new_domain(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SSL_get_domain_flags(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SSL_is_domain(ptr noundef) local_unnamed_addr #3

declare ptr @SSL_get0_domain(ptr noundef) local_unnamed_addr #3

declare ptr @SSL_new_listener_from(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SSL_is_listener(ptr noundef) local_unnamed_addr #3

declare ptr @SSL_get0_listener(ptr noundef) local_unnamed_addr #3

declare i32 @SSL_in_before(ptr noundef) local_unnamed_addr #3

declare i32 @SSL_get_event_timeout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SSL_new_from_listener(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SSL_do_handshake(ptr noundef) local_unnamed_addr #3

declare void @SSL_CTX_set_info_callback(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @new_from_listener_info_cb(ptr noundef %0, i32 noundef %1, i32 %2) #7 {
bb.a:
  %i.a = icmp eq i32 %1, 32
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @new_from_listener_info_cb_ssl, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @BIO_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @ERR_peek_error() local_unnamed_addr #3

declare void @SSL_set_verify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @quic_verify_cb(i32 %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call i32 @SSL_get_ex_data_X509_STORE_CTX_idx() #10
  %i.b = tail call ptr @X509_STORE_CTX_get_ex_data(ptr noundef %1, i32 noundef %i.a) #10
  %i.c = load ptr, ptr @quic_verify_ssl, align 8, !tbaa !17
  %i.d = tail call i32 @test_ptr_eq(ptr noundef nonnull @.str.14, i32 noundef 2959, ptr noundef nonnull @.str.425, ptr noundef nonnull @.str.426, ptr noundef %i.b, ptr noundef %i.c) #10
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @create_accept_stream(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 3 uses
  %i.b = alloca [14 x i8], align 1                ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @__const.create_accept_stream.msg, i64 14, i1 false)
  %i.e = icmp ne i32 %3, 1                        ; 3 uses
  %i.f = icmp ne i32 %3, 0                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.g = and i64 %2, 6                            ; 2 uses
  %or.cond = icmp eq i64 %i.g, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i64 %i.g, 4
  %spec.select80 = or i1 %i.h, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.shrunk = phi i1 [ %spec.select80, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  br i1 %i.e, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @SSL_new_stream(ptr noundef %0, i64 noundef 1) #10 ; 8 uses
  %i.j = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 3033, ptr noundef nonnull @.str.434, ptr noundef %i.i) #10
  %.not65 = icmp eq i32 %i.j, 0
  br i1 %.not65, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call i32 @SSL_write_ex(ptr noundef %i.i, ptr noundef nonnull %i.b, i64 noundef 14, ptr noundef nonnull %i.d) #10
  %i.l = call i32 @test_int_gt(ptr noundef nonnull @.str.14, i32 noundef 3034, ptr noundef nonnull @.str.435, ptr noundef nonnull @.str.82, i32 noundef %i.k, i32 noundef 0) #10
  %.not66 = icmp eq i32 %i.l, 0
  br i1 %.not66, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.d, align 8, !tbaa !21
  %i.n = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 3035, ptr noundef nonnull @.str.436, ptr noundef nonnull @.str.437, i64 noundef %i.m, i64 noundef 14) #10
  %.not67 = icmp eq i32 %i.n, 0
  br i1 %.not67, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call i32 @SSL_handle_events(ptr noundef %1) #10
  %i.p = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 3036, ptr noundef nonnull @.str.438, ptr noundef nonnull @.str.94, i32 noundef %i.o, i32 noundef 1) #10
  %.not68 = icmp eq i32 %i.p, 0
  br i1 %.not68, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.f, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.c, %bb.h
  %.05883 = phi ptr [ %i.i, %bb.h ], [ null, %bb.c ] ; 5 uses
  %i.q = call ptr @SSL_new_stream(ptr noundef %0, i64 noundef 0) #10 ; 7 uses
  %i.r = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 3040, ptr noundef nonnull @.str.439, ptr noundef %i.q) #10
  %.not69 = icmp eq i32 %i.r, 0
  br i1 %.not69, label %bb.t, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.s = call i32 @SSL_write_ex(ptr noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 14, ptr noundef nonnull %i.d) #10
  %i.t = call i32 @test_int_gt(ptr noundef nonnull @.str.14, i32 noundef 3041, ptr noundef nonnull @.str.440, ptr noundef nonnull @.str.82, i32 noundef %i.s, i32 noundef 0) #10
end_hunk_0
