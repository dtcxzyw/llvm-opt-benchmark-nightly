inline.NumInlined: 37
inline.NumDeleted: 30
begin_hunk_0_@ossl_quic_handle_frames:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.ey = call i32 @ossl_quic_wire_decode_frame_crypto(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %6) #3
  %.not.i209.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i209.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 7, i64 noundef 6, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 278, ptr noundef nonnull @__func__.depack_do_frame_crypto) #3
  br label %depack_do_frame_crypto.exit.thread.i

bb.bd:                                            ; preds = %bb.bb
  %i.ez = load i64, ptr %i.bo, align 8, !tbaa !85 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %depack_do_frame_crypto.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fb = load i8, ptr %i.ap, align 8
  %i.fc = and i8 %i.fb, 3
  %i.fd = zext nneg i8 %i.fc to i64               ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !87 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.ff, null
  br i1 %.not19.i.i, label %depack_do_frame_crypto.exit.thread.i, label %bb.bf, !prof !88

bb.bf:                                            ; preds = %bb.be
  %i.fg = getelementptr inbounds nuw [96 x i8], ptr %i.bq, i64 %i.fd ; 2 uses
  %i.fh = load i64, ptr %6, align 8, !tbaa !89
  %i.fi = add i64 %i.fh, %i.ez
  %i.fj = call i32 @ossl_quic_rxfc_on_rx_stream_frame(ptr noundef nonnull %i.fg, i64 noundef %i.fi, i32 noundef 0) #3
  %.not20.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not20.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 6, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 301, ptr noundef nonnull @__func__.depack_do_frame_crypto) #3
  br label %depack_do_frame_crypto.exit.thread.i

bb.bh:                                            ; preds = %bb.bf
  %i.fk = call i32 @ossl_quic_rxfc_get_error(ptr noundef nonnull %i.fg, i32 noundef 0) #3
  %.not21.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not21.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 13, i64 noundef 6, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @__func__.depack_do_frame_crypto) #3
  br label %depack_do_frame_crypto.exit.thread.i

bb.bj:                                            ; preds = %bb.bh
  %i.fl = load i64, ptr %6, align 8, !tbaa !89
  %i.fm = load ptr, ptr %i.br, align 8, !tbaa !90
  %i.fn = load i64, ptr %i.bo, align 8, !tbaa !85
  %i.fo = call i32 @ossl_quic_rstream_queue_data(ptr noundef nonnull %i.ff, ptr noundef nonnull %1, i64 noundef %i.fl, ptr noundef %i.fm, i64 noundef %i.fn, i32 noundef 0) #3
  %.not22.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not22.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 6, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 317, ptr noundef nonnull @__func__.depack_do_frame_crypto) #3
  br label %depack_do_frame_crypto.exit.thread.i

bb.bl:                                            ; preds = %bb.bj
  %i.fp = load i64, ptr %i.aa, align 8
  %i.fq = or i64 %i.fp, 268435456
  store i64 %i.fq, ptr %i.aa, align 8
  %i.fr = load i64, ptr %i.bo, align 8, !tbaa !85
  br label %depack_do_frame_crypto.exit.i

depack_do_frame_crypto.exit.thread.i:             ; preds = %bb.be, %bb.bk, %bb.bi, %bb.bg, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  br label %.critedge.i

depack_do_frame_crypto.exit.i:                    ; preds = %bb.bl, %bb.bd
  %.1.i = phi i64 [ %i.fr, %bb.bl ], [ 0, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  br label %bb.fi

bb.bm:                                            ; preds = %bb.n
  br i1 %.not173.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 10, i64 noundef 7, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1183, ptr noundef nonnull @__func__.depack_process_frames) #3
  br label %.critedge.i

bb.bo:                                            ; preds = %bb.bm
  %i.fs = load i64, ptr %i.aa, align 8
  %i.ft = and i64 %i.fs, 33554432
  %.not189.i = icmp eq i64 %i.ft, 0
  br i1 %.not189.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 10, i64 noundef 7, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1195, ptr noundef nonnull @__func__.depack_process_frames) #3
  br label %.critedge.i

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #3
  %i.fu = call i32 @ossl_quic_wire_decode_frame_new_token(ptr noundef nonnull %10, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #3
  %.not.i211.i = icmp eq i32 %i.fu, 0
  br i1 %.not.i211.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 7, i64 noundef 7, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 337, ptr noundef nonnull @__func__.depack_do_frame_new_token) #3
  br label %depack_do_frame_new_token.exit.thread.i

bb.bs:                                            ; preds = %bb.bq
  %i.fv = load i64, ptr %i.r, align 8, !tbaa !17
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.bt, label %depack_do_frame_new_token.exit.i

bb.bt:                                            ; preds = %bb.bs
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 7, i64 noundef 7, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__func__.depack_do_frame_new_token) #3
  br label %depack_do_frame_new_token.exit.thread.i

depack_do_frame_new_token.exit.thread.i:          ; preds = %bb.bt, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #3
  br label %.critedge.i

depack_do_frame_new_token.exit.i:                 ; preds = %bb.bs
  %i.fx = load ptr, ptr %0, align 8, !tbaa !91
  %i.fy = call ptr @ossl_quic_port_get_channel_ctx(ptr noundef %i.fx) #3
  %i.fz = load ptr, ptr %i.q, align 8, !tbaa !92
  %i.ga = load i64, ptr %i.r, align 8, !tbaa !17
  %i.gb = call i32 @ossl_quic_set_peer_token(ptr noundef %i.fy, ptr noundef nonnull %i.bm, ptr noundef %i.fz, i64 noundef %i.ga) #3
  %.not5.i.not.i = icmp eq i32 %i.gb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #3
  br i1 %.not5.i.not.i, label %.critedge.i, label %bb.fi

bb.bu:                                            ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  switch i8 %trunc.i24, label %bb.bv [
    i8 5, label %bb.bw
    i8 2, label %bb.bw
  ]

bb.bv:                                            ; preds = %bb.bu
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 10, i64 noundef %i.ck, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1217, ptr noundef nonnull @__func__.depack_process_frames) #3
  br label %.critedge.i

bb.bw:                                            ; preds = %bb.bu, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #3
  store i32 0, ptr %i.p, align 4, !tbaa !5
  %i.gc = call i32 @ossl_quic_wire_decode_frame_stream(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %5) #3
  %.not.i213.i = icmp eq i32 %i.gc, 0
  br i1 %.not.i213.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 7, i64 noundef %i.ck, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 514, ptr noundef nonnull @__func__.depack_do_frame_stream) #3
  br label %depack_do_frame_stream.exit.thread.i

bb.by:                                            ; preds = %bb.bw
  %i.gd = load i64, ptr %5, align 8, !tbaa !93
  %i.ge = call fastcc i32 @depack_do_implicit_stream_create(ptr noundef nonnull %0, i64 noundef %i.gd, i64 noundef %i.ck, ptr noundef %i.n)
  %.not24.i.i = icmp eq i32 %i.ge, 0
  br i1 %.not24.i.i, label %depack_do_frame_stream.exit.thread.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gf = load ptr, ptr %i.n, align 8, !tbaa !73  ; 7 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %depack_do_frame_stream.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gh = getelementptr i8, ptr %i.gf, i64 256    ; 4 uses
  %.val.i214.i = load i64, ptr %i.gh, align 8
  %i.gi = and i64 %.val.i214.i, 16711680
  %.not3.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not3.i.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 5, i64 noundef %i.ck, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 534, ptr noundef nonnull @__func__.depack_do_frame_stream) #3
  br label %depack_do_frame_stream.exit.thread.i

bb.cc:                                            ; preds = %bb.ca
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 160 ; 3 uses
  %i.gk = load i64, ptr %i.bi, align 8, !tbaa !95
  %i.gl = load i64, ptr %i.bj, align 8, !tbaa !96
  %i.gm = add i64 %i.gl, %i.gk
  %i.gn = load i8, ptr %i.bk, align 8
  %i.go = lshr i8 %i.gn, 1
  %i.gp = and i8 %i.go, 1
  %i.gq = zext nneg i8 %i.gp to i32
  %i.gr = call i32 @ossl_quic_rxfc_on_rx_stream_frame(ptr noundef nonnull %i.gj, i64 noundef %i.gm, i32 noundef %i.gq) #3
  %.not26.i215.i = icmp eq i32 %i.gr, 0
  br i1 %.not26.i215.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %i.ck, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 545, ptr noundef nonnull @__func__.depack_do_frame_stream) #3
  br label %depack_do_frame_stream.exit.thread.i

bb.ce:                                            ; preds = %bb.cc
  %i.gs = call i32 @ossl_quic_rxfc_get_error(ptr noundef nonnull %i.gj, i32 noundef 0) #3 ; 2 uses
  %.not27.i216.i = icmp eq i32 %i.gs, 0
  br i1 %.not27.i216.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gt = sext i32 %i.gs to i64
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef %i.gt, i64 noundef %i.ck, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 555, ptr noundef nonnull @__func__.depack_do_frame_stream) #3
  br label %depack_do_frame_stream.exit.thread.i

bb.cg:                                            ; preds = %bb.ce
  %i.gu = load i64, ptr %i.gh, align 8
  %12 = trunc i64 %i.gu to i32
  %13 = and i32 %12, 16711680                     ; 2 uses
  switch i32 %13, label %depack_do_frame_stream.exit.i [
    i32 65536, label %bb.ch
    i32 131072, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cg
  %i.gv = load i8, ptr %i.bk, align 8
  %i.gw = and i8 %i.gv, 2
  %.not28.i.i = icmp eq i8 %i.gw, 0
  br i1 %.not28.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %14 = add nsw i32 %13, -131072
  %switch.i.i.i = icmp ult i32 %14, 327680
  br i1 %switch.i.i.i, label %ossl_quic_stream_recv_get_final_size.exit.i.i, label %ossl_quic_stream_recv_get_final_size.exit.thread.i.i

ossl_quic_stream_recv_get_final_size.exit.i.i:    ; preds = %bb.ci
  %i.gx = call i32 @ossl_quic_rxfc_get_final_size(ptr noundef nonnull %i.gj, ptr noundef null) #3
  %.not.i.not.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i.not.i.i, label %ossl_quic_stream_recv_get_final_size.exit.thread.i.i, label %bb.cj

ossl_quic_stream_recv_get_final_size.exit.thread.i.i: ; preds = %ossl_quic_stream_recv_get_final_size.exit.i.i, %bb.ci
  %i.gy = load i64, ptr %i.bi, align 8, !tbaa !95
  %i.gz = load i64, ptr %i.bj, align 8, !tbaa !96
  %i.ha = add i64 %i.gz, %i.gy
  %i.hb = call i32 @ossl_quic_stream_map_notify_size_known_recv_part(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.gf, i64 noundef %i.ha) #3 ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %ossl_quic_stream_recv_get_final_size.exit.thread.i.i, %ossl_quic_stream_recv_get_final_size.exit.i.i, %bb.ch
  %i.hc = load i64, ptr %i.gh, align 8            ; 2 uses
  %i.hd = and i64 %i.hc, 67108864
  %.not30.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not30.i.i, label %bb.ck, label %depack_do_frame_stream.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.he = load i64, ptr %i.bj, align 8, !tbaa !96 ; 2 uses
  %.not31.i.i = icmp eq i64 %i.he, 0
  %.pre.i.i = load i8, ptr %i.bk, align 8         ; 2 uses
  %i.hf = and i8 %.pre.i.i, 2
  %.not32.i.i = icmp eq i8 %i.hf, 0
  %or.cond.i218.i = select i1 %.not31.i.i, i1 %.not32.i.i, i1 false
  br i1 %or.cond.i218.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gf, i64 120
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !97
  %i.hi = load i64, ptr %i.bi, align 8, !tbaa !95
  %i.hj = load ptr, ptr %i.bl, align 8, !tbaa !98
  %i.hk = lshr i8 %.pre.i.i, 1
  %i.hl = and i8 %i.hk, 1
  %i.hm = zext nneg i8 %i.hl to i32
  %i.hn = call i32 @ossl_quic_rstream_queue_data(ptr noundef %i.hh, ptr noundef nonnull %1, i64 noundef %i.hi, ptr noundef %i.hj, i64 noundef %i.he, i32 noundef %i.hm) #3
  %.not33.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not33.i.i, label %bb.cm, label %._crit_edge.i219.i

._crit_edge.i219.i:                               ; preds = %bb.cl
  %.pre4.i.i = load i64, ptr %i.gh, align 8
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %i.ck, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 617, ptr noundef nonnull @__func__.depack_do_frame_stream) #3
  br label %depack_do_frame_stream.exit.thread.i

bb.cn:                                            ; preds = %._crit_edge.i219.i, %bb.ck
  %i.ho = phi i64 [ %.pre4.i.i, %._crit_edge.i219.i ], [ %i.hc, %bb.ck ]
  %i.hp = and i64 %i.ho, 16711680
  %i.hq = icmp eq i64 %i.hp, 131072
  br i1 %i.hq, label %bb.co, label %.thread.i.i

bb.co:                                            ; preds = %bb.cn
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gf, i64 120
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !97
  %i.ht = call i32 @ossl_quic_rstream_available(ptr noundef %i.hs, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #3
  %.not34.i.i = icmp eq i32 %i.ht, 0
  br i1 %.not34.i.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %i.ck, ptr noundef nonnull @.str.39, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 632, ptr noundef nonnull @__func__.depack_do_frame_stream) #3
  br label %depack_do_frame_stream.exit.thread.i

bb.cq:                                            ; preds = %bb.co
  %.pre6.i.i = load i32, ptr %i.p, align 4, !tbaa !5
  %i.hu = icmp eq i32 %.pre6.i.i, 0
  br i1 %i.hu, label %.thread.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hv = call i32 @ossl_quic_stream_map_notify_totally_received(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.gf) #3 ; 0 uses
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cr, %bb.cq, %bb.cn
  %i.hw = load i64, ptr %i.bj, align 8, !tbaa !96
  br label %depack_do_frame_stream.exit.i

depack_do_frame_stream.exit.thread.i:             ; preds = %bb.by, %bb.cp, %bb.cm, %bb.cf, %bb.cd, %bb.cb, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %.critedge.i

depack_do_frame_stream.exit.i:                    ; preds = %.thread.i.i, %bb.cj, %bb.cg, %bb.bz
  %.2252.i = phi i64 [ %i.hw, %.thread.i.i ], [ 0, %bb.cg ], [ 0, %bb.bz ], [ 0, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %bb.fi

bb.cs:                                            ; preds = %bb.n
  switch i8 %trunc.i24, label %bb.ct [
    i8 5, label %bb.cu
    i8 2, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 10, i64 noundef 16, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1232, ptr noundef nonnull @__func__.depack_process_frames) #3
  br label %.critedge.i

bb.cu:                                            ; preds = %bb.cs, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #3
  store i64 0, ptr %i.m, align 8, !tbaa !17
  %i.hx = call i32 @ossl_quic_wire_decode_frame_max_data(ptr noundef nonnull %10, ptr noundef nonnull %i.m) #3
  %.not.i220.i = icmp eq i32 %i.hx, 0
  br i1 %.not.i220.i, label %depack_do_frame_max_data.exit.thread.i, label %depack_do_frame_max_data.exit.i

depack_do_frame_max_data.exit.thread.i:           ; preds = %bb.cu
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 7, i64 noundef 16, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 680, ptr noundef nonnull @__func__.depack_do_frame_max_data) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #3
  br label %.critedge.i

depack_do_frame_max_data.exit.i:                  ; preds = %bb.cu
  %i.hy = load i64, ptr %i.m, align 8, !tbaa !17
  %i.hz = call i32 @ossl_quic_txfc_bump_cwm(ptr noundef nonnull %i.bh, i64 noundef %i.hy) #3 ; 0 uses
  call void @ossl_quic_stream_map_visit(ptr noundef nonnull %i.bf, ptr noundef nonnull @update_streams, ptr noundef nonnull %0) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #3
  br label %bb.fi

bb.cv:                                            ; preds = %bb.n
  switch i8 %trunc.i24, label %bb.cw [
    i8 5, label %bb.cx
    i8 2, label %bb.cx
  ]

bb.cw:                                            ; preds = %bb.cv
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 10, i64 noundef 17, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1245, ptr noundef nonnull @__func__.depack_process_frames) #3
  br label %.critedge.i

bb.cx:                                            ; preds = %bb.cv, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #3
  store i64 0, ptr %i.j, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #3
  store i64 0, ptr %i.k, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #3
  %i.ia = call i32 @ossl_quic_wire_decode_frame_max_stream_data(ptr noundef nonnull %10, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #3
  %.not.i222.i = icmp eq i32 %i.ia, 0
  br i1 %.not.i222.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 7, i64 noundef 17, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 702, ptr noundef nonnull @__func__.depack_do_frame_max_stream_data) #3
  br label %depack_do_frame_max_stream_data.exit.thread.i

bb.cz:                                            ; preds = %bb.cx
  %i.ib = load i64, ptr %i.j, align 8, !tbaa !17
  %i.ic = call fastcc i32 @depack_do_implicit_stream_create(ptr noundef nonnull %0, i64 noundef %i.ib, i64 noundef 17, ptr noundef %i.l)
  %.not6.i223.i = icmp eq i32 %i.ic, 0
  br i1 %.not6.i223.i, label %depack_do_frame_max_stream_data.exit.thread.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.id = load ptr, ptr %i.l, align 8, !tbaa !73  ; 4 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %depack_do_frame_max_stream_data.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.if = getelementptr i8, ptr %i.id, i64 256
  %.val.i224.i = load i64, ptr %i.if, align 8
  %i.ig = and i64 %.val.i224.i, 65280
  %.not1.i225.i = icmp eq i64 %i.ig, 0
  br i1 %.not1.i225.i, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 5, i64 noundef 17, ptr noundef nonnull @.str.40, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 719, ptr noundef nonnull @__func__.depack_do_frame_max_stream_data) #3
  br label %depack_do_frame_max_stream_data.exit.thread.i

bb.dd:                                            ; preds = %bb.db
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 128
  %i.ii = load i64, ptr %i.k, align 8, !tbaa !17
  %i.ij = call i32 @ossl_quic_txfc_bump_cwm(ptr noundef nonnull %i.ih, i64 noundef %i.ii) #3 ; 0 uses
  call void @ossl_quic_stream_map_update_state(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.id) #3
  br label %depack_do_frame_max_stream_data.exit.i

depack_do_frame_max_stream_data.exit.thread.i:    ; preds = %bb.cz, %bb.dc, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #3
  br label %.critedge.i

depack_do_frame_max_stream_data.exit.i:           ; preds = %bb.dd, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #3
  br label %bb.fi

bb.de:                                            ; preds = %bb.n, %bb.n
  switch i8 %trunc.i24, label %bb.df [
    i8 5, label %bb.dg
    i8 2, label %bb.dg
  ]

bb.df:                                            ; preds = %bb.de
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 10, i64 noundef %i.ck, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1260, ptr noundef nonnull @__func__.depack_process_frames) #3
  br label %.critedge.i

bb.dg:                                            ; preds = %bb.de, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #3
  store i64 0, ptr %i.i, align 8, !tbaa !17
  %i.ik = call i32 @ossl_quic_wire_decode_frame_max_streams(ptr noundef nonnull %10, ptr noundef nonnull %i.i) #3
  %.not.i227.i = icmp eq i32 %i.ik, 0
  br i1 %.not.i227.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 7, i64 noundef %i.ck, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 739, ptr noundef nonnull @__func__.depack_do_frame_max_streams) #3
  br label %depack_do_frame_max_streams.exit.thread.i

bb.di:                                            ; preds = %bb.dg
  %i.il = load i64, ptr %i.i, align 8, !tbaa !17  ; 5 uses
  %i.im = icmp ugt i64 %i.il, 1152921504606846976
  br i1 %i.im, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 7, i64 noundef %i.ck, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 747, ptr noundef nonnull @__func__.depack_do_frame_max_streams) #3
  br label %depack_do_frame_max_streams.exit.thread.i

bb.dk:                                            ; preds = %bb.di
  %i.in = icmp eq i64 %i.ck, 18
  br i1 %i.in, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.io = load i64, ptr %i.bg, align 8, !tbaa !99
  %i.ip = icmp ugt i64 %i.il, %i.io
  br i1 %i.ip, label %bb.dm, label %depack_do_frame_max_streams.exit.i

bb.dm:                                            ; preds = %bb.dl
  store i64 %i.il, ptr %i.bg, align 8, !tbaa !99
  br label %depack_do_frame_max_streams.exit.i

bb.dn:                                            ; preds = %bb.dk
  %i.iq = load i64, ptr %i.be, align 8, !tbaa !100
  %i.ir = icmp ugt i64 %i.il, %i.iq
  br i1 %i.ir, label %bb.do, label %depack_do_frame_max_streams.exit.i

bb.do:                                            ; preds = %bb.dn
  store i64 %i.il, ptr %i.be, align 8, !tbaa !100
  br label %depack_do_frame_max_streams.exit.i

depack_do_frame_max_streams.exit.thread.i:        ; preds = %bb.dj, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #3
  br label %.critedge.i

depack_do_frame_max_streams.exit.i:               ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dl
  %update_streams_bidi.sink.i = phi ptr [ @update_streams_bidi, %bb.dl ], [ @update_streams_bidi, %bb.dm ], [ @update_streams_uni, %bb.do ], [ @update_streams_uni, %bb.dn ]
  call void @ossl_quic_stream_map_visit(ptr noundef nonnull %i.bf, ptr noundef nonnull %update_streams_bidi.sink.i, ptr noundef nonnull %0) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #3
  br label %bb.fi

bb.dp:                                            ; preds = %bb.n
  switch i8 %trunc.i24, label %bb.dq [
    i8 5, label %bb.dr
    i8 2, label %bb.dr
  ]

bb.dq:                                            ; preds = %bb.dp
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 10, i64 noundef 20, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1275, ptr noundef nonnull @__func__.depack_process_frames) #3
  br label %.critedge.i

bb.dr:                                            ; preds = %bb.dp, %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #3
  store i64 0, ptr %i.h, align 8, !tbaa !17
  %i.is = call i32 @ossl_quic_wire_decode_frame_data_blocked(ptr noundef nonnull %10, ptr noundef nonnull %i.h) #3
  %.not.i229.i = icmp eq i32 %i.is, 0
  br i1 %.not.i229.i, label %depack_do_frame_data_blocked.exit.thread.i, label %depack_do_frame_data_blocked.exit.i

depack_do_frame_data_blocked.exit.thread.i:       ; preds = %bb.dr
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 7, i64 noundef 20, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 787, ptr noundef nonnull @__func__.depack_do_frame_data_blocked) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #3
  br label %.critedge.i

depack_do_frame_data_blocked.exit.i:              ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #3
  br label %bb.fi

bb.ds:                                            ; preds = %bb.n
  switch i8 %trunc.i24, label %bb.dt [
    i8 5, label %bb.du
    i8 2, label %bb.du
  ]

bb.dt:                                            ; preds = %bb.ds
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 10, i64 noundef 21, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1288, ptr noundef nonnull @__func__.depack_process_frames) #3
  br label %.critedge.i

bb.du:                                            ; preds = %bb.ds, %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
end_hunk_0
