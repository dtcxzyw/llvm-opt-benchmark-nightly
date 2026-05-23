inline.NumInlined: 112
inline.NumDeleted: 45
begin_hunk_0_@ossl_quic_tx_packetiser_generate:bb.a
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !75
  br label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %.not13.i.i.i.i = icmp eq i64 %i.sd, 0
  %i.se = shl i64 %i.sd, 1
  %spec.select.i.i.i.i = select i1 %.not13.i.i.i.i, i64 8, i64 %i.se ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rw, i64 16 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !75
  %i.sh = shl i64 %spec.select.i.i.i.i, 4
  %i.si = call ptr @CRYPTO_realloc(ptr noundef %i.sg, i64 noundef %i.sh, ptr noundef nonnull @.str, i32 noundef 3149) #8 ; 3 uses
  %i.sj = icmp eq ptr %i.si, null
  br i1 %i.sj, label %tx_helper_append_iovec.exit.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  store ptr %i.si, ptr %i.sf, align 8, !tbaa !75
  store i64 %spec.select.i.i.i.i, ptr %i.sc, align 8, !tbaa !130
  %.pre19.i.i.i = load i64, ptr %i.hw, align 8, !tbaa !122 ; 2 uses
  %.pre20.i.i.i = add i64 %.pre19.i.i.i, 1
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.sb, %._crit_edge.i.i.i ], [ %.pre20.i.i.i, %bb.eh ]
  %i.sk = phi i64 [ %i.sa, %._crit_edge.i.i.i ], [ %.pre19.i.i.i, %bb.eh ]
  %i.sl = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.si, %bb.eh ]
  %i.sm = getelementptr inbounds nuw [16 x i8], ptr %i.sl, i64 %i.sk ; 2 uses
  store ptr %i.rp, ptr %i.sm, align 8, !tbaa !131
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  store i64 %i.rr, ptr %i.sn, align 8, !tbaa !133
  store i64 %.pre-phi.i.i.i, ptr %i.hw, align 8, !tbaa !122
  %i.so = load i64, ptr %i.hx, align 16, !tbaa !128
  %i.sp = add i64 %i.so, %i.rr
  store i64 %i.sp, ptr %i.hx, align 16, !tbaa !128
  br label %tx_helper_append_iovec.exit.i.i

tx_helper_append_iovec.exit.i.i:                  ; preds = %bb.ei, %bb.eg, %bb.ee, %.lr.ph.i.i
  %i.sq = add nuw i64 %.152.i.i, 1                ; 2 uses
  %i.sr = load i64, ptr %i.f, align 8, !tbaa !51
  %i.ss = icmp ult i64 %i.sq, %i.sr
  br i1 %i.ss, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !141

._crit_edge.loopexit.i.i:                         ; preds = %tx_helper_append_iovec.exit.i.i
  %i.st = add i64 %.152.i.i, 2
  br label %._crit_edge.i210.i

._crit_edge.i210.i:                               ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %.1.lcssa.i.i = phi i64 [ 1, %.preheader.i.i ], [ %i.st, %._crit_edge.loopexit.i.i ]
  %i.su = load i8, ptr %i.hy, align 4
  %i.sv = or i8 %i.su, 1
  store i8 %i.sv, ptr %i.hy, align 4
  store i64 -1, ptr %12, align 8, !tbaa !142
  %i.sw = load i64, ptr %10, align 8, !tbaa !137  ; 2 uses
  store i64 %i.sw, ptr %i.bf, align 8, !tbaa !144
  %i.sx = load i64, ptr %i.be, align 8, !tbaa !140
  %i.sy = add i64 %i.sw, -1
  %i.sz = add i64 %i.sy, %i.sx
  store i64 %i.sz, ptr %i.bg, align 8, !tbaa !145
  %i.ta = load i8, ptr %i.bh, align 8
  %i.tb = and i8 %i.ta, -2
  store i8 %i.tb, ptr %i.bh, align 8
  %i.tc = call i32 @ossl_quic_txpim_pkt_append_chunk(ptr noundef %i.pm, ptr noundef nonnull %12) #8
  %.not35.i.i = icmp eq i32 %i.tc, 0
  br i1 %.not35.i.i, label %txp_generate_crypto_frames.exit.i, label %bb.ds

txp_generate_crypto_frames.exit.thread.i:         ; preds = %try_len.exit53.i.i.i.i, %bb.dw, %bb.dv, %bb.du, %tx_helper_get_space_left.exit.i.i, %bb.ec, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %bb.ej

txp_generate_crypto_frames.exit.i:                ; preds = %._crit_edge.i210.i, %bb.ed, %bb.dz, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %tx_helper_rollback.exit.thread293.i

bb.ej:                                            ; preds = %txp_generate_crypto_frames.exit.thread.i, %bb.dq
  %.11.i = phi i32 [ %.8.lcssa505.i, %bb.dq ], [ %.15.i, %txp_generate_crypto_frames.exit.thread.i ] ; 4 uses
  %i.td = and i32 %i.ir, 256
  %.not171.i = icmp eq i32 %i.td, 0
  br i1 %.not171.i, label %bb.hg, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.te = load i16, ptr %i.ao, align 8
  %i.tf = and i16 %i.te, 2048
  %.not172.i = icmp eq i16 %i.tf, 0
  br i1 %.not172.i, label %bb.hg, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ci, i64 144 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.th = load ptr, ptr %i.at, align 8, !tbaa !59
  call void @ossl_quic_stream_iter_init(ptr noundef nonnull %6, ptr noundef %i.th, i32 noundef 1) #8
  %i.ti = load ptr, ptr %i.bi, align 8, !tbaa !108 ; 2 uses
  %.not185.i.i = icmp eq ptr %i.ti, null
  br i1 %.not185.i.i, label %txp_generate_stream_related.exit.i, label %.lr.ph.i214.i

.lr.ph.i214.i:                                    ; preds = %bb.el, %.thread148.i.i
  %.17.i = phi i32 [ %.22.i, %.thread148.i.i ], [ %.11.i, %bb.el ] ; 2 uses
  %i.tj = phi ptr [ %i.aek, %.thread148.i.i ], [ %i.ti, %bb.el ] ; 26 uses
  %.077186.i.i = phi i64 [ %.279.i.i, %.thread148.i.i ], [ 0, %bb.el ] ; 7 uses
  call void @ossl_quic_stream_iter_next(ptr noundef nonnull %6) #8
  %i.tk = load ptr, ptr %i.bi, align 8, !tbaa !108
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 256 ; 11 uses
  %i.tm = load i64, ptr %i.tl, align 8            ; 2 uses
  %i.tn = and i64 %i.tm, -6174015489              ; 2 uses
  store i64 %i.tn, ptr %i.tl, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 96 ; 8 uses
  store i64 0, ptr %i.to, align 8, !tbaa !146
  %i.tp = and i64 %i.tm, 17179869184
  %.not87.i.i = icmp eq i64 %i.tp, 0
  br i1 %.not87.i.i, label %bb.es, label %bb.em

bb.em:                                            ; preds = %.lr.ph.i214.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.tq = call fastcc ptr @tx_helper_begin(ptr noundef nonnull %i.ci) ; 2 uses
  %i.tr = icmp eq ptr %i.tq, null
  br i1 %i.tr, label %.thread.i.i156, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tj, i64 56
  %i.tt = load <2 x i64>, ptr %i.ts, align 8, !tbaa !51
  store <2 x i64> %i.tt, ptr %7, align 16, !tbaa !51
  %i.tu = call i32 @ossl_quic_wire_encode_frame_stop_sending(ptr noundef nonnull %i.tq, ptr noundef nonnull %7) #8
  %.not88.i.i = icmp eq i32 %i.tu, 0
  br i1 %.not88.i.i, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.tv = load i8, ptr %i.ic, align 8
  %i.tw = and i8 %i.tv, 1
  %.not.i.i224.i = icmp eq i8 %i.tw, 0
  br i1 %.not.i.i224.i, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  call void @WPACKET_cleanup(ptr noundef nonnull %i.tx) #8
  %i.ty = load i8, ptr %i.ic, align 8
  %i.tz = and i8 %i.ty, -2
  store i8 %i.tz, ptr %i.ic, align 8
  store ptr null, ptr %i.ib, align 8, !tbaa !123
  br label %bb.er

bb.eq:                                            ; preds = %bb.en
  %i.ua = call fastcc i32 @tx_helper_commit(ptr noundef nonnull %i.ci)
  %.not89.i.i = icmp eq i32 %i.ua, 0
  br i1 %.not89.i.i, label %.thread.i.i156, label %.thread116.i.i

.thread116.i.i:                                   ; preds = %bb.eq
  %i.ub = load i8, ptr %i.hy, align 4
  %i.uc = or i8 %i.ub, 1
  store i8 %i.uc, ptr %i.hy, align 4
  %i.ud = load i64, ptr %i.tl, align 8
  %i.ue = or i64 %i.ud, 536870912                 ; 2 uses
  store i64 %i.ue, ptr %i.tl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.es

.thread.i.i156:                                   ; preds = %bb.eq, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %txp_generate_stream_related.exit.thread.i

bb.er:                                            ; preds = %bb.ep, %bb.eo
  %i.uf = load ptr, ptr %i.tg, align 16, !tbaa !147
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tj, i64 48
  store ptr %i.uf, ptr %i.ug, align 8, !tbaa !148
  store ptr %i.tj, ptr %i.tg, align 16, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %txp_generate_stream_related.exit.i

bb.es:                                            ; preds = %.thread116.i.i, %.lr.ph.i214.i
  %.18.i = phi i32 [ %.17.i, %.lr.ph.i214.i ], [ 1, %.thread116.i.i ] ; 2 uses
  %i.uh = phi i64 [ %i.tn, %.lr.ph.i214.i ], [ %i.ue, %.thread116.i.i ] ; 3 uses
  %i.ui = and i64 %i.uh, 34359738368
  %.not90.i.i = icmp eq i64 %i.ui, 0
  br i1 %.not90.i.i, label %bb.fc, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.uj = and i64 %i.uh, 65280
  %i.uk = icmp eq i64 %i.uj, 1280
  br i1 %i.uk, label %bb.eu, label %.thread124.i.i, !prof !129

bb.eu:                                            ; preds = %bb.et
  %i.ul = call fastcc ptr @tx_helper_begin(ptr noundef nonnull %i.ci) ; 2 uses
  %i.um = icmp eq ptr %i.ul, null
  br i1 %i.um, label %.thread124.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.un = getelementptr inbounds nuw i8, ptr %i.tj, i64 56
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !149
  store i64 %i.uo, ptr %8, align 8, !tbaa !150
  %i.up = getelementptr inbounds nuw i8, ptr %i.tj, i64 72
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !152
  store i64 %i.uq, ptr %i.bj, align 8, !tbaa !153
  %i.ur = load i64, ptr %i.tl, align 8
  %17 = trunc i64 %i.ur to i16
  %18 = add i16 %17, -512
  %19 = lshr i16 %18, 8
  %trunc.i.i.i = trunc nuw i16 %19 to i8
  switch i8 %trunc.i.i.i, label %.thread124.i.i [
    i8 4, label %ossl_quic_stream_send_get_final_size.exit.thread120.i.i
    i8 0, label %ossl_quic_stream_send_get_final_size.exit.i.i
    i8 1, label %ossl_quic_stream_send_get_final_size.exit.thread120.i.i
    i8 2, label %ossl_quic_stream_send_get_final_size.exit.thread120.i.i
    i8 3, label %ossl_quic_stream_send_get_final_size.exit.thread120.i.i
  ]

ossl_quic_stream_send_get_final_size.exit.thread120.i.i: ; preds = %bb.ev, %bb.ev, %bb.ev, %bb.ev
  %i.us = getelementptr inbounds nuw i8, ptr %i.tj, i64 104
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !154
  store i64 %i.ut, ptr %i.bk, align 8, !tbaa !51
  br label %bb.ew

ossl_quic_stream_send_get_final_size.exit.i.i:    ; preds = %bb.ev
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tj, i64 112
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !60
  %i.uw = call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.uv, ptr noundef nonnull %i.bk) #8
  %.not91.i.i = icmp eq i32 %i.uw, 0
  br i1 %.not91.i.i, label %.thread124.i.i, label %bb.ew

bb.ew:                                            ; preds = %ossl_quic_stream_send_get_final_size.exit.i.i, %ossl_quic_stream_send_get_final_size.exit.thread120.i.i
  %i.ux = call i32 @ossl_quic_wire_encode_frame_reset_stream(ptr noundef nonnull %i.ul, ptr noundef nonnull %8) #8
  %.not92.i.i = icmp eq i32 %i.ux, 0
  br i1 %.not92.i.i, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.uy = load i8, ptr %i.ic, align 8
  %i.uz = and i8 %i.uy, 1
  %.not.i105.i.i = icmp eq i8 %i.uz, 0
  br i1 %.not.i105.i.i, label %bb.fb, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.va = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  call void @WPACKET_cleanup(ptr noundef nonnull %i.va) #8
  %i.vb = load i8, ptr %i.ic, align 8
  %i.vc = and i8 %i.vb, -2
  store i8 %i.vc, ptr %i.ic, align 8
  store ptr null, ptr %i.ib, align 8, !tbaa !123
  br label %bb.fb

bb.ez:                                            ; preds = %bb.ew
  %i.vd = call fastcc i32 @tx_helper_commit(ptr noundef nonnull %i.ci)
  %.not93.i.i = icmp eq i32 %i.vd, 0
  br i1 %.not93.i.i, label %.thread124.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ve = load i8, ptr %i.hy, align 4
  %i.vf = or i8 %i.ve, 1
  store i8 %i.vf, ptr %i.hy, align 4
  %i.vg = load i64, ptr %i.tl, align 8
  %i.vh = or i64 %i.vg, 1073741824
  store i64 %i.vh, ptr %i.tl, align 8
  %i.vi = load i64, ptr %i.bk, align 8, !tbaa !155
  %i.vj = getelementptr inbounds nuw i8, ptr %i.tj, i64 128 ; 2 uses
  %i.vk = call i64 @ossl_quic_txfc_get_swm(ptr noundef nonnull %i.vj) #8
  %.not94.i.i = icmp ugt i64 %i.vi, %i.vk
  br i1 %.not94.i.i, label %.thread124.i.i, label %.thread126.i.i, !prof !156

.thread126.i.i:                                   ; preds = %bb.fa
  %i.vl = load i64, ptr %i.bk, align 8, !tbaa !155
  %i.vm = call i64 @ossl_quic_txfc_get_swm(ptr noundef nonnull %i.vj) #8
  %i.vn = sub i64 %i.vl, %i.vm
  store i64 %i.vn, ptr %i.to, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %.pre.i215.i = load i64, ptr %i.tl, align 8
  br label %bb.fc

.thread124.i.i:                                   ; preds = %bb.fa, %bb.ez, %ossl_quic_stream_send_get_final_size.exit.i.i, %bb.ev, %bb.eu, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %txp_generate_stream_related.exit.thread.i

bb.fb:                                            ; preds = %bb.ey, %bb.ex
  %i.vo = load ptr, ptr %i.tg, align 16, !tbaa !147
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tj, i64 48
  store ptr %i.vo, ptr %i.vp, align 8, !tbaa !148
  store ptr %i.tj, ptr %i.tg, align 16, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %txp_generate_stream_related.exit.i

bb.fc:                                            ; preds = %.thread126.i.i, %bb.es
  %.20.i = phi i32 [ %.18.i, %bb.es ], [ 1, %.thread126.i.i ] ; 3 uses
  %i.vq = phi i64 [ %i.uh, %bb.es ], [ %.pre.i215.i, %.thread126.i.i ] ; 3 uses
  %i.vr = and i64 %i.vq, 16711680
  %i.vs = icmp eq i64 %i.vr, 65536
  br i1 %i.vs, label %bb.fd, label %bb.fl

bb.fd:                                            ; preds = %bb.fc
  %i.vt = and i64 %i.vq, 8589934592
  %.not95.i.i = icmp eq i64 %i.vt, 0
  br i1 %.not95.i.i, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.vu = getelementptr inbounds nuw i8, ptr %i.tj, i64 160
  %i.vv = call i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef nonnull %i.vu, i32 noundef 0) #8
  %.not96.i.i = icmp eq i32 %i.vv, 0
  br i1 %.not96.i.i, label %._crit_edge.i223.i, label %bb.ff

._crit_edge.i223.i:                               ; preds = %bb.fe
  %.val.pre.i.i = load i64, ptr %i.tl, align 8
  br label %bb.fl

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.vw = call fastcc ptr @tx_helper_begin(ptr noundef nonnull %i.ci) ; 2 uses
  %i.vx = icmp eq ptr %i.vw, null
  br i1 %i.vx, label %txp_generate_stream_related.exit.thread.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.vy = getelementptr inbounds nuw i8, ptr %i.tj, i64 160
  %i.vz = call i64 @ossl_quic_rxfc_get_cwm(ptr noundef nonnull %i.vy) #8
  %i.wa = getelementptr inbounds nuw i8, ptr %i.tj, i64 56
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !149
  %i.wc = call i32 @ossl_quic_wire_encode_frame_max_stream_data(ptr noundef nonnull %i.vw, i64 noundef %i.wb, i64 noundef %i.vz) #8
  %.not97.i.i = icmp eq i32 %i.wc, 0
  br i1 %.not97.i.i, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %i.wd = load i8, ptr %i.ic, align 8
  %i.we = and i8 %i.wd, 1
  %.not.i107.i.i = icmp eq i8 %i.we, 0
  br i1 %.not.i107.i.i, label %tx_helper_rollback.exit108.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  call void @WPACKET_cleanup(ptr noundef nonnull %i.wf) #8
  %i.wg = load i8, ptr %i.ic, align 8
  %i.wh = and i8 %i.wg, -2
  store i8 %i.wh, ptr %i.ic, align 8
  store ptr null, ptr %i.ib, align 8, !tbaa !123
  br label %tx_helper_rollback.exit108.i.i

tx_helper_rollback.exit108.i.i:                   ; preds = %bb.fi, %bb.fh
  %i.wi = load ptr, ptr %i.tg, align 16, !tbaa !147
  %i.wj = getelementptr inbounds nuw i8, ptr %i.tj, i64 48
  store ptr %i.wi, ptr %i.wj, align 8, !tbaa !148
  store ptr %i.tj, ptr %i.tg, align 16, !tbaa !147
  br label %txp_generate_stream_related.exit.i

bb.fj:                                            ; preds = %bb.fg
  %i.wk = call fastcc i32 @tx_helper_commit(ptr noundef nonnull %i.ci)
  %.not98.i.i = icmp eq i32 %i.wk, 0
  br i1 %.not98.i.i, label %txp_generate_stream_related.exit.thread.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.wl = load i8, ptr %i.hy, align 4
  %i.wm = or i8 %i.wl, 1
  store i8 %i.wm, ptr %i.hy, align 4
  %i.wn = load i64, ptr %i.tl, align 8
  %i.wo = or i64 %i.wn, 268435456                 ; 2 uses
  store i64 %i.wo, ptr %i.tl, align 8
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %._crit_edge.i223.i, %bb.fc
  %.21.i = phi i32 [ %.20.i, %._crit_edge.i223.i ], [ 1, %bb.fk ], [ %.20.i, %bb.fc ] ; 4 uses
  %.val.i.i153 = phi i64 [ %.val.pre.i.i, %._crit_edge.i223.i ], [ %i.wo, %bb.fk ], [ %i.vq, %bb.fc ] ; 3 uses
  %20 = trunc i64 %.val.i.i153 to i16
  %trunc.i109.i.i = and i16 %20, -256
  switch i16 %trunc.i109.i.i, label %.thread148.i.i [
    i16 256, label %bb.fm
    i16 512, label %bb.fm
    i16 768, label %bb.fm
  ]

bb.fm:                                            ; preds = %bb.fl, %bb.fl, %bb.fl
  %i.wp = trunc i64 %.val.i.i153 to i32
  %i.wq = lshr i32 %i.wp, 8
  %i.wr = and i32 %i.wq, 255
  %i.ws = add nsw i32 %i.wr, -7
  %narrow.i.i.i = icmp ult i32 %i.ws, -2
  br i1 %narrow.i.i.i, label %bb.fn, label %.thread148.i.i

bb.fn:                                            ; preds = %bb.fm
  %i.wt = and i64 %.val.i.i153, 34359738368
  %.not101.i.i = icmp eq i64 %i.wt, 0
  br i1 %.not101.i.i, label %bb.fo, label %txp_generate_stream_related.exit.thread.i, !prof !129

bb.fo:                                            ; preds = %bb.fn
  %i.wu = getelementptr inbounds nuw i8, ptr %i.tj, i64 56
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !149 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.tj, i64 112
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !60 ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.tj, i64 128 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %4, i8 0, i64 192, i1 false)
  %i.wz = load i32, ptr %i.ht, align 16, !tbaa !125
  %i.xa = load ptr, ptr %i.iu, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.xb = call i64 @ossl_quic_txfc_get_swm(ptr noundef nonnull %i.wy) #8 ; 6 uses
  store i64 2, ptr %i.bl, align 16, !tbaa !157
  %i.xc = call i32 @ossl_quic_sstream_get_stream_frame(ptr noundef %i.wx, i64 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bl) #8 ; 2 uses
  store i32 %i.xc, ptr %i.bn, align 8, !tbaa !159
  %.not.i.i.i.i = icmp eq i32 %i.xc, 0
  br i1 %.not.i.i.i.i, label %.thread139.i.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.xd = load i64, ptr %i.bo, align 16, !tbaa !160 ; 2 uses
  %.not33.i.i.i.i = icmp eq i64 %i.xd, 0
  br i1 %.not33.i.i.i.i, label %bb.fq, label %.critedge.i.i.i.i

bb.fq:                                            ; preds = %bb.fp
  %i.xe = load i8, ptr %i.bp, align 16
  %i.xf = and i8 %i.xe, 2
  %.not1.i.i.i.i = icmp eq i8 %i.xf, 0
  br i1 %.not1.i.i.i.i, label %.loopexit.i.i, label %.critedge.i.i.i.i, !prof !156

.critedge.i.i.i.i:                                ; preds = %bb.fq, %bb.fp
  store i64 %i.xd, ptr %i.bq, align 8, !tbaa !161
  %i.xg = call i64 @ossl_quic_txfc_get_credit(ptr noundef nonnull %i.wy, i64 noundef %.077186.i.i) #8
  %i.xh = call i64 @ossl_quic_txfc_get_swm(ptr noundef nonnull %i.wy) #8
  %i.xi = add i64 %i.xh, %i.xg                    ; 3 uses
  %i.xj = load i64, ptr %i.bo, align 16, !tbaa !160 ; 2 uses
  %.not34.i.i.i.i = icmp eq i64 %i.xj, 0
  br i1 %.not34.i.i.i.i, label %.thread.i.i.i.i, label %bb.fr

bb.fr:                                            ; preds = %.critedge.i.i.i.i
  %i.xk = load i64, ptr %i.br, align 8, !tbaa !162 ; 3 uses
  %i.xl = add i64 %i.xk, %i.xj
  %i.xm = icmp ugt i64 %i.xl, %i.xi
  br i1 %i.xm, label %thread-pre-split.i.i.i.i, label %bb.fs

thread-pre-split.i.i.i.i:                         ; preds = %bb.fr
  %spec.select.i.i.i221.i = call i64 @llvm.usub.sat.i64(i64 %i.xi, i64 %i.xk)
  store i64 %spec.select.i.i.i221.i, ptr %i.bo, align 16, !tbaa !160
  %i.xn = load i8, ptr %i.bp, align 16
  %i.xo = and i8 %i.xn, -3
  store i8 %i.xo, ptr %i.bp, align 16
  %.not4.i.i.i.i = icmp ugt i64 %i.xi, %i.xk
  br i1 %.not4.i.i.i.i, label %bb.fs, label %.thread139.i.i

.thread.i.i.i.i:                                  ; preds = %.critedge.i.i.i.i
  %.pre.i.i222.i = load i8, ptr %i.bp, align 16
  %i.xp = and i8 %.pre.i.i222.i, 2
  %i.xq = icmp eq i8 %i.xp, 0
  br i1 %i.xq, label %.thread139.i.i, label %bb.fs

bb.fs:                                            ; preds = %.thread.i.i.i.i, %thread-pre-split.i.i.i.i, %bb.fr
  %.pr.i.i.i = load i32, ptr %i.bn, align 8, !tbaa !159
  %.not127.i.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %.not127.i.i.i, label %.thread139.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  store i64 %i.wv, ptr %4, align 16, !tbaa !163
  store i64 2, ptr %i.bt, align 16, !tbaa !157
  %i.xr = call i32 @ossl_quic_sstream_get_stream_frame(ptr noundef %i.wx, i64 noundef 1, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bt) #8 ; 2 uses
  store i32 %i.xr, ptr %i.bv, align 8, !tbaa !159
  %.not.i.1.i.i.i = icmp eq i32 %i.xr, 0
  br i1 %.not.i.1.i.i.i, label %.preheader155.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.xs = load i64, ptr %i.bw, align 16, !tbaa !160 ; 2 uses
  %.not33.i.1.i.i.i = icmp eq i64 %i.xs, 0
  br i1 %.not33.i.1.i.i.i, label %bb.fv, label %.critedge.i.1.i.i.i

bb.fv:                                            ; preds = %bb.fu
  %i.xt = load i8, ptr %i.bx, align 16
  %i.xu = and i8 %i.xt, 2
  %.not1.i.1.i.i.i = icmp eq i8 %i.xu, 0
  br i1 %.not1.i.1.i.i.i, label %.loopexit.i.i, label %.critedge.i.1.i.i.i, !prof !156

.critedge.i.1.i.i.i:                              ; preds = %bb.fv, %bb.fu
  store i64 %i.xs, ptr %i.by, align 8, !tbaa !161
  %i.xv = call i64 @ossl_quic_txfc_get_credit(ptr noundef nonnull %i.wy, i64 noundef %.077186.i.i) #8
  %i.xw = call i64 @ossl_quic_txfc_get_swm(ptr noundef nonnull %i.wy) #8
  %i.xx = add i64 %i.xw, %i.xv                    ; 3 uses
  %i.xy = load i64, ptr %i.bw, align 16, !tbaa !160 ; 2 uses
  %.not34.i.1.i.i.i = icmp eq i64 %i.xy, 0
  br i1 %.not34.i.1.i.i.i, label %.thread.i.1.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %.critedge.i.1.i.i.i
  %i.xz = load i64, ptr %i.bz, align 8, !tbaa !162 ; 3 uses
  %i.ya = add i64 %i.xz, %i.xy
  %i.yb = icmp ugt i64 %i.ya, %i.xx
  br i1 %i.yb, label %thread-pre-split.i.1.i.i.i, label %.preheader155.i.i.i

thread-pre-split.i.1.i.i.i:                       ; preds = %bb.fw
  %spec.select.i.1.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.xx, i64 %i.xz)
  store i64 %spec.select.i.1.i.i.i, ptr %i.bw, align 16, !tbaa !160
  %i.yc = load i8, ptr %i.bx, align 16
  %i.yd = and i8 %i.yc, -3
  store i8 %i.yd, ptr %i.bx, align 16
  %.not4.i.1.i.i.i = icmp ugt i64 %i.xx, %i.xz
  br i1 %.not4.i.1.i.i.i, label %.preheader155.i.i.i, label %.thread.i.1.thread.i.i.i

.thread.i.1.i.i.i:                                ; preds = %.critedge.i.1.i.i.i
  %.pre173.i.i.i = load i8, ptr %i.bx, align 16
  %i.ye = and i8 %.pre173.i.i.i, 2
  %i.yf = icmp eq i8 %i.ye, 0
  br i1 %i.yf, label %.thread.i.1.thread.i.i.i, label %.preheader155.i.i.i

.thread.i.1.thread.i.i.i:                         ; preds = %.thread.i.1.i.i.i, %thread-pre-split.i.1.i.i.i
  store i32 0, ptr %i.bv, align 8, !tbaa !159
  br label %.preheader155.i.i.i

.preheader155.i.i.i:                              ; preds = %.thread.i.1.thread.i.i.i, %.thread.i.1.i.i.i, %thread-pre-split.i.1.i.i.i, %bb.fw, %bb.ft
  store i64 %i.wv, ptr %i.bs, align 16, !tbaa !163
  %.not115.i.i.i = icmp eq ptr %i.tk, null
  %i.yg = zext i32 %i.wz to i64
  %i.yh = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.yg ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 24 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 16 ; 2 uses
  br label %bb.fx

bb.fx:                                            ; preds = %bb.he, %.preheader155.i.i.i
  %.23.i = phi i32 [ %.21.i, %.preheader155.i.i.i ], [ 1, %bb.he ] ; 2 uses
  %.0112.i.i = phi i32 [ 0, %.preheader155.i.i.i ], [ %.1113.i.i, %bb.he ] ; 2 uses
  %.1105.i.i.i = phi i64 [ 0, %.preheader155.i.i.i ], [ %i.adw, %bb.he ] ; 4 uses
  %.0.i110.i.i = phi i64 [ %i.xb, %.preheader155.i.i.i ], [ %.1.i.i.i, %bb.he ] ; 9 uses
  %i.yk = load i64, ptr %i.hu, align 8, !tbaa !120
  %i.yl = load i8, ptr %i.hy, align 4             ; 2 uses
  %i.ym = and i8 %i.yl, 1
  %.not.i128.i.i.i = icmp eq i8 %i.ym, 0
  br i1 %.not.i128.i.i.i, label %bb.fy, label %tx_helper_get_space_left.exit.i.i.i

bb.fy:                                            ; preds = %bb.fx
  %i.yn = load i64, ptr %i.hv, align 16, !tbaa !121
  br label %tx_helper_get_space_left.exit.i.i.i

tx_helper_get_space_left.exit.i.i.i:              ; preds = %bb.fy, %bb.fx
  %i.yo = phi i64 [ %i.yn, %bb.fy ], [ 0, %bb.fx ]
  %i.yp = load i64, ptr %i.hx, align 16, !tbaa !128
  %i.yq = add i64 %i.yo, %i.yp
  %i.yr = sub i64 %i.yk, %i.yq                    ; 4 uses
  %i.ys = and i64 %.1105.i.i.i, 1                 ; 3 uses
  %i.yt = getelementptr inbounds nuw [96 x i8], ptr %4, i64 %i.ys ; 13 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 88
  %i.yv = load i32, ptr %i.yu, align 8, !tbaa !159
  %.not.i111.i.i = icmp eq i32 %i.yv, 0
  br i1 %.not.i111.i.i, label %bb.hf, label %bb.fz

bb.fz:                                            ; preds = %tx_helper_get_space_left.exit.i.i.i
  %i.yw = icmp ult i64 %i.yr, 3
  br i1 %i.yw, label %.thread134.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.yx = and i8 %i.yl, 2
  %.not111.i.i.i = icmp eq i8 %i.yx, 0
  br i1 %.not111.i.i.i, label %bb.gb, label %.loopexit.i.i, !prof !129

bb.gb:                                            ; preds = %bb.ga
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yt, i64 40
  %i.yz = load i64, ptr %i.yy, align 8, !tbaa !161 ; 2 uses
  %.not112.i.i.i = icmp eq i64 %.1105.i.i.i, 0
  br i1 %.not112.i.i.i, label %txp_plan_stream_chunk.exit140.thread.i.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.za = add i64 %.1105.i.i.i, 1                 ; 2 uses
  %i.zb = and i64 %i.za, 1
  %i.zc = getelementptr inbounds nuw [96 x i8], ptr %4, i64 %i.zb ; 10 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 80 ; 2 uses
  store i64 2, ptr %i.zd, align 16, !tbaa !157
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 48
  %i.zf = call i32 @ossl_quic_sstream_get_stream_frame(ptr noundef %i.wx, i64 noundef %i.za, ptr noundef nonnull %i.zc, ptr noundef nonnull %i.ze, ptr noundef nonnull %i.zd) #8 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 88 ; 2 uses
  store i32 %i.zf, ptr %i.zg, align 8, !tbaa !159
  %.not.i129.i.i.i = icmp eq i32 %i.zf, 0
  br i1 %.not.i129.i.i.i, label %txp_plan_stream_chunk.exit140.thread.i.i.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zc, i64 16 ; 3 uses
  %i.zi = load i64, ptr %i.zh, align 16, !tbaa !160 ; 2 uses
end_hunk_0
begin_hunk_1_@ossl_quic_tx_packetiser_generate:bb.a

bb.iv:                                            ; preds = %.thread233, %bb.iu, %txp_should_try_staging.exit.thread197
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.amk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aml = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.amm = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.amo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.amp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.amq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.amr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ams = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.amu = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.ku
  %indvars.iv546 = phi i64 [ 0, %bb.iv ], [ %indvars.iv.next547, %bb.ku ] ; 3 uses
  %.0115410 = phi i64 [ 0, %bb.iv ], [ %.1116, %bb.ku ] ; 7 uses
  %i.amv = getelementptr inbounds nuw [288 x i8], ptr %16, i64 %indvars.iv546 ; 7 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 128 ; 2 uses
  %i.amx = load i32, ptr %i.amw, align 16, !tbaa !87
  %.not125 = icmp eq i32 %i.amx, 0
  br i1 %.not125, label %bb.ku, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amv, i64 16 ; 2 uses
  %i.amz = load i64, ptr %i.amy, align 16, !tbaa !179 ; 3 uses
  %i.ana = icmp eq i64 %i.amz, 0
  br i1 %i.ana, label %bb.ku, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.anb = load i64, ptr %i.ami, align 8, !tbaa !9 ; 3 uses
  %.not241 = icmp ugt i64 %i.anb, %i.amz
  br i1 %.not241, label %bb.iz, label %.thread208

bb.iz:                                            ; preds = %bb.iy
  %.not.i162 = icmp eq i64 %i.anb, -1
  br i1 %.not.i162, label %ossl_quic_tx_packetiser_consume_unvalidated_credit.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.iz
  %.sink.i = call i64 @llvm.usub.sat.i64(i64 %i.anb, i64 %i.amz)
  store i64 %.sink.i, ptr %i.ami, align 8, !tbaa !9
  br label %ossl_quic_tx_packetiser_consume_unvalidated_credit.exit

ossl_quic_tx_packetiser_consume_unvalidated_credit.exit: ; preds = %bb.iz, %.sink.split.i
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amv, i64 48
  %i.and = load i32, ptr %i.anc, align 16, !tbaa !125 ; 5 uses
  %switch.selectcmp.i.i163 = icmp eq i32 %i.and, 2
  %switch.select.i.i164 = select i1 %switch.selectcmp.i.i163, i32 1, i32 2
  %switch.selectcmp2.i.i165 = icmp eq i32 %i.and, 0
  %switch.select3.i.i166 = select i1 %switch.selectcmp2.i.i165, i32 0, i32 %switch.select.i.i164 ; 3 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amv, i64 136 ; 5 uses
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !127 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.ang = icmp ugt i32 %i.and, 3
  br i1 %i.ang, label %.thread227, label %bb.ja

bb.ja:                                            ; preds = %ossl_quic_tx_packetiser_consume_unvalidated_credit.exit
  %i.anh = zext nneg i32 %i.and to i64            ; 2 uses
  %gep413 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %i.anh
  %i.ani = load i32, ptr %gep413, align 4, !tbaa !40
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amv, i64 152
  store ptr %i.anj, ptr %2, align 8, !tbaa !183
  %i.ank = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.anh
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 568
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !75
  store ptr %i.anm, ptr %i.amj, align 8, !tbaa !187
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amv, i64 40
  %i.ano = load i64, ptr %i.ann, align 8, !tbaa !188
  store i64 %i.ano, ptr %i.amk, align 8, !tbaa !189
  store ptr null, ptr %i.aml, align 8, !tbaa !190
  %i.anp = call i32 @BIO_ADDR_family(ptr noundef nonnull %i.amm) #8
  %i.anq = icmp eq i32 %i.anp, 0
  %i.anr = select i1 %i.anq, ptr null, ptr %i.amm
  store ptr %i.anr, ptr %i.amn, align 8, !tbaa !191
  %i.ans = zext nneg i32 %switch.select3.i.i166 to i64 ; 2 uses
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ans ; 3 uses
  %i.anu = load i64, ptr %i.ant, align 8, !tbaa !51
  store i64 %i.anu, ptr %i.amo, align 8, !tbaa !192
  store i32 1, ptr %i.amp, align 8, !tbaa !193
  %i.anv = getelementptr inbounds nuw i8, ptr %i.amv, i64 144 ; 2 uses
  %.085128.i = load ptr, ptr %i.anv, align 16, !tbaa !147 ; 2 uses
  %.not94129.i = icmp eq ptr %.085128.i, null
  br i1 %.not94129.i, label %._crit_edge.i, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.ja, %bb.jc
  %.085130.i = phi ptr [ %.085.i, %bb.jc ], [ %.085128.i, %bb.ja ] ; 3 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %.085130.i, i64 256
  %i.anx = load i64, ptr %i.anw, align 8          ; 2 uses
  %i.any = and i64 %i.anx, 1610612736
  %or.cond.i168 = icmp eq i64 %i.any, 0
  br i1 %or.cond.i168, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %.lr.ph.i167
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.anz = getelementptr inbounds nuw i8, ptr %.085130.i, i64 56
  %i.aoa = load i64, ptr %i.anz, align 8, !tbaa !149
  store i64 %i.aoa, ptr %3, align 8, !tbaa !142
  store i64 -1, ptr %i.amq, align 8, !tbaa !144
  store i64 0, ptr %i.amr, align 8, !tbaa !145
  %i.aob = load i8, ptr %i.ams, align 8
  %i.aoc = trunc i64 %i.anx to i32
  %sh.diff.i = lshr i32 %i.aoc, 28
  %tr.sh.diff.i = trunc nuw nsw i32 %sh.diff.i to i8
  %i.aod = and i8 %i.aob, -8
  %i.aoe = and i8 %tr.sh.diff.i, 6
  %i.aof = or disjoint i8 %i.aod, %i.aoe
  store i8 %i.aof, ptr %i.ams, align 8
  %i.aog = call i32 @ossl_quic_txpim_pkt_append_chunk(ptr noundef %i.anf, ptr noundef nonnull %3) #8
  %.not123.not.i = icmp eq i32 %i.aog, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %.not123.not.i, label %.thread227, label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %.lr.ph.i167
  %i.aoh = getelementptr inbounds nuw i8, ptr %.085130.i, i64 48
  %.085.i = load ptr, ptr %i.aoh, align 8, !tbaa !147 ; 2 uses
  %.not94.i = icmp eq ptr %.085.i, null
  br i1 %.not94.i, label %._crit_edge.i, label %.lr.ph.i167, !llvm.loop !194

._crit_edge.i:                                    ; preds = %bb.jc, %bb.ja
  %i.aoi = call i32 @ossl_quic_fifd_pkt_commit(ptr noundef nonnull %i.amt, ptr noundef %i.anf) #8
  %.not95.i = icmp eq i32 %i.aoi, 0
  br i1 %.not95.i, label %.thread227, label %bb.jd

bb.jd:                                            ; preds = %._crit_edge.i
  %i.aoj = load i64, ptr %i.ant, align 8, !tbaa !51
  %i.aok = add i64 %i.aoj, 1
  store i64 %i.aok, ptr %i.ant, align 8, !tbaa !51
  %i.aol = load ptr, ptr %i.x, align 8, !tbaa !68
  %i.aom = call i32 @ossl_qtx_write_pkt(ptr noundef %i.aol, ptr noundef nonnull %2) #8
  %.not96.i = icmp eq i32 %i.aom, 0
  br i1 %.not96.i, label %.thread229, label %.preheader.i169

.preheader.i169:                                  ; preds = %bb.jd
  %.186131.i = load ptr, ptr %i.anv, align 16, !tbaa !147 ; 2 uses
  %.not97132.i = icmp eq ptr %.186131.i, null
  br i1 %.not97132.i, label %._crit_edge136.i, label %.lr.ph135.i

.lr.ph135.i:                                      ; preds = %.preheader.i169, %bb.jp
  %.186134.i = phi ptr [ %.186.i, %bb.jp ], [ %.186131.i, %.preheader.i169 ] ; 8 uses
  %.087133.i = phi i32 [ %.289.i, %bb.jp ], [ 1, %.preheader.i169 ] ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %.186134.i, i64 256 ; 5 uses
  %i.aoo = load i64, ptr %i.aon, align 8          ; 3 uses
  %i.aop = and i64 %i.aoo, 268435456
  %.not111.i = icmp eq i64 %i.aop, 0
  br i1 %.not111.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %.lr.ph135.i
  %i.aoq = and i64 %i.aoo, -8589934593
  store i64 %i.aoq, ptr %i.aon, align 8
  %i.aor = getelementptr inbounds nuw i8, ptr %.186134.i, i64 160
  %i.aos = call i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef nonnull %i.aor, i32 noundef 1) #8 ; 0 uses
  %.pre.i170 = load i64, ptr %i.aon, align 8
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %.lr.ph135.i
  %i.aot = phi i64 [ %.pre.i170, %bb.je ], [ %i.aoo, %.lr.ph135.i ] ; 3 uses
  %i.aou = and i64 %i.aot, 536870912              ; 2 uses
  %.not112.not.i = icmp eq i64 %i.aou, 0
  %i.aov = and i64 %i.aot, -17179869185
  %i.aow = select i1 %.not112.not.i, i64 %i.aot, i64 %i.aov ; 3 uses
  %i.aox = and i64 %i.aow, 1073741824             ; 2 uses
  %i.aoy = or disjoint i64 %i.aox, %i.aou
  %.not.i171 = icmp eq i64 %i.aoy, 0
  br i1 %.not.i171, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %.not113.not.i = icmp eq i64 %i.aox, 0
  %i.aoz = and i64 %i.aow, -34359738369
  %simplifycfg.merge.i = select i1 %.not113.not.i, i64 %i.aow, i64 %i.aoz
  store i64 %simplifycfg.merge.i, ptr %i.aon, align 8
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %i.apa = getelementptr inbounds nuw i8, ptr %.186134.i, i64 96 ; 2 uses
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !146 ; 2 uses
  %.not114.i = icmp eq i64 %i.apb, 0
  br i1 %.not114.i, label %bb.jl, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.apc = getelementptr inbounds nuw i8, ptr %.186134.i, i64 128
  %i.apd = call i32 @ossl_quic_txfc_consume_credit(ptr noundef nonnull %i.apc, i64 noundef %i.apb) #8
  %.not115.i = icmp eq i32 %i.apd, 0
  br i1 %.not115.i, label %bb.jj, label %bb.jk, !prof !156

bb.jj:                                            ; preds = %bb.ji
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.188.i = phi i32 [ %.087133.i, %bb.ji ], [ 0, %bb.jj ]
  store i64 0, ptr %i.apa, align 8, !tbaa !146
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jh
  %.289.i = phi i32 [ %.188.i, %bb.jk ], [ %.087133.i, %bb.jh ] ; 2 uses
  %i.ape = load ptr, ptr %i.at, align 8, !tbaa !59
  call void @ossl_quic_stream_map_update_state(ptr noundef %i.ape, ptr noundef nonnull %.186134.i) #8
  %.186.val.i = load i64, ptr %i.aon, align 8
  %21 = trunc i64 %.186.val.i to i16
  %trunc.i.i = and i16 %21, -256
  switch i16 %trunc.i.i, label %bb.jp [
    i16 256, label %bb.jm
    i16 512, label %bb.jm
    i16 768, label %bb.jm
  ]

bb.jm:                                            ; preds = %bb.jl, %bb.jl, %bb.jl
  %i.apf = getelementptr inbounds nuw i8, ptr %.186134.i, i64 112 ; 2 uses
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !60
  %i.aph = call i32 @ossl_quic_sstream_has_pending(ptr noundef %i.apg) #8
  %.not117.i = icmp eq i32 %i.aph, 0
  br i1 %.not117.i, label %bb.jn, label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  %i.api = load ptr, ptr %i.apf, align 8, !tbaa !60
  %i.apj = call i32 @ossl_quic_sstream_get_final_size(ptr noundef %i.api, ptr noundef null) #8
  %.not118.i = icmp eq i32 %i.apj, 0
  br i1 %.not118.i, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.apk = load ptr, ptr %i.at, align 8, !tbaa !59
  %i.apl = call i32 @ossl_quic_stream_map_notify_all_data_sent(ptr noundef %i.apk, ptr noundef nonnull %.186134.i) #8 ; 0 uses
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn, %bb.jm, %bb.jl
  %i.apm = getelementptr inbounds nuw i8, ptr %.186134.i, i64 48
  %.186.i = load ptr, ptr %i.apm, align 8, !tbaa !147 ; 2 uses
  %.not97.i = icmp eq ptr %.186.i, null
  br i1 %.not97.i, label %._crit_edge136.i.loopexit, label %.lr.ph135.i, !llvm.loop !195

._crit_edge136.i.loopexit:                        ; preds = %bb.jp
  %i.apn = icmp eq i32 %.289.i, 0
  br label %._crit_edge136.i

._crit_edge136.i:                                 ; preds = %._crit_edge136.i.loopexit, %.preheader.i169
  %.087.lcssa.i = phi i1 [ false, %.preheader.i169 ], [ %i.apn, %._crit_edge136.i.loopexit ]
  %i.apo = getelementptr inbounds nuw i8, ptr %i.anf, i64 32 ; 2 uses
  %i.app = load i8, ptr %i.apo, align 8
  %i.apq = and i8 %i.app, 8
  %.not98.i = icmp eq i8 %i.apq, 0
  br i1 %.not98.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %._crit_edge136.i
  %i.apr = shl nuw nsw i32 1, %switch.select3.i.i166
  %i.aps = load i16, ptr %i.ao, align 8
  %i.apt = trunc nuw nsw i32 %i.apr to i16
  %i.apu = xor i16 %i.apt, -1
  %i.apv = shl nsw i16 %i.apu, 7
  %i.apw = or i16 %i.apv, -897
  %i.apx = and i16 %i.aps, %i.apw
  store i16 %i.apx, ptr %i.ao, align 8
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %._crit_edge136.i
  %i.apy = getelementptr inbounds nuw i8, ptr %i.anf, i64 121 ; 6 uses
  %i.apz = load i8, ptr %i.apy, align 1           ; 2 uses
  %i.aqa = and i8 %i.apz, 1
  %.not99.i = icmp eq i8 %i.aqa, 0
  br i1 %.not99.i, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aqb = load i16, ptr %i.ao, align 8
  %i.aqc = and i16 %i.aqb, -2
  store i16 %i.aqc, ptr %i.ao, align 8
  %.pre137.i = load i8, ptr %i.apy, align 1
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr
  %i.aqd = phi i8 [ %.pre137.i, %bb.js ], [ %i.apz, %bb.jr ] ; 2 uses
  %i.aqe = and i8 %i.aqd, 2
  %.not100.i = icmp eq i8 %i.aqe, 0
  br i1 %.not100.i, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.aqf = load i16, ptr %i.ao, align 8
  %i.aqg = and i16 %i.aqf, -3
  store i16 %i.aqg, ptr %i.ao, align 8
  %i.aqh = load ptr, ptr %i.ap, align 8, !tbaa !103
  %i.aqi = call i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef %i.aqh, i32 noundef 1) #8 ; 0 uses
  %.pre138.i = load i8, ptr %i.apy, align 1
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %i.aqj = phi i8 [ %.pre138.i, %bb.ju ], [ %i.aqd, %bb.jt ] ; 2 uses
  %i.aqk = and i8 %i.aqj, 4
  %.not101.i = icmp eq i8 %i.aqk, 0
  br i1 %.not101.i, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.aql = load i16, ptr %i.ao, align 8
  %i.aqm = and i16 %i.aql, -5
  store i16 %i.aqm, ptr %i.ao, align 8
  %i.aqn = load ptr, ptr %i.aq, align 8, !tbaa !104
  %i.aqo = call i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef %i.aqn, i32 noundef 1) #8 ; 0 uses
  %.pre139.i = load i8, ptr %i.apy, align 1
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.aqp = phi i8 [ %.pre139.i, %bb.jw ], [ %i.aqj, %bb.jv ] ; 2 uses
  %i.aqq = and i8 %i.aqp, 8
  %.not102.i = icmp eq i8 %i.aqq, 0
  br i1 %.not102.i, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.aqr = load i16, ptr %i.ao, align 8
  %i.aqs = and i16 %i.aqr, -9
  store i16 %i.aqs, ptr %i.ao, align 8
  %i.aqt = load ptr, ptr %i.ar, align 8, !tbaa !105
  %i.aqu = call i32 @ossl_quic_rxfc_has_cwm_changed(ptr noundef %i.aqt, i32 noundef 1) #8 ; 0 uses
  %.pre140.i = load i8, ptr %i.apy, align 1
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %i.aqv = phi i8 [ %.pre140.i, %bb.jy ], [ %i.aqp, %bb.jx ] ; 2 uses
  %i.aqw = and i8 %i.aqv, 16
  %.not103.i = icmp eq i8 %i.aqw, 0
  br i1 %.not103.i, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.aqx = shl nuw nsw i32 1, %switch.select3.i.i166
  %i.aqy = load i16, ptr %i.ao, align 8
  %i.aqz = trunc nuw nsw i32 %i.aqx to i16
  %i.ara = xor i16 %i.aqz, -1
  %i.arb = shl nsw i16 %i.ara, 4
  %i.arc = or i16 %i.arb, -113
  %i.ard = and i16 %i.aqy, %i.arc
  store i16 %i.ard, ptr %i.ao, align 8
  %.pre141.i = load i8, ptr %i.apy, align 1
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %i.are = phi i8 [ %.pre141.i, %bb.ka ], [ %i.aqv, %bb.jz ]
  %i.arf = and i8 %i.are, 32
  %.not105.i = icmp eq i8 %i.arf, 0
  br i1 %.not105.i, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.arg = load i16, ptr %i.ao, align 8
  %i.arh = and i16 %i.arg, -1025
  store i16 %i.arh, ptr %i.ao, align 8
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %i.ari = load i8, ptr %i.apo, align 8
  %i.arj = and i8 %i.ari, 8
  %.not106.i = icmp eq i8 %i.arj, 0
  br i1 %.not106.i, label %txp_pkt_commit.exit, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.ark = load ptr, ptr %i.z, align 8, !tbaa !53
  %i.arl = call ptr @ossl_ackm_get0_probe_request(ptr noundef %i.ark) #8 ; 4 uses
  switch i32 %i.and, label %bb.kj [
    i32 0, label %bb.kf
    i32 2, label %bb.kh
  ]

bb.kf:                                            ; preds = %bb.ke
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !99 ; 2 uses
  %.not107.i = icmp eq i32 %i.arm, 0
  br i1 %.not107.i, label %bb.kj, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.arn = add i32 %i.arm, -1
  store i32 %i.arn, ptr %i.arl, align 4, !tbaa !99
  br label %bb.kj

bb.kh:                                            ; preds = %bb.ke
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arl, i64 4 ; 2 uses
  %i.arp = load i32, ptr %i.aro, align 4, !tbaa !101 ; 2 uses
  %.not108.i = icmp eq i32 %i.arp, 0
  br i1 %.not108.i, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.arq = add i32 %i.arp, -1
  store i32 %i.arq, ptr %i.aro, align 4, !tbaa !101
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke
  %i.arr = and i32 %i.ani, 8192
  %.not109.i = icmp eq i32 %i.arr, 0
  br i1 %.not109.i, label %txp_pkt_commit.exit, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arl, i64 8
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %i.ans ; 2 uses
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !5 ; 2 uses
  %.not110.i = icmp eq i32 %i.aru, 0
  br i1 %.not110.i, label %txp_pkt_commit.exit, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.arv = add i32 %i.aru, -1
  store i32 %i.arv, ptr %i.art, align 4, !tbaa !5
  br label %txp_pkt_commit.exit

txp_pkt_commit.exit:                              ; preds = %bb.kd, %bb.kj, %bb.kk, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.087.lcssa.i, label %bb.ks, label %bb.km

bb.km:                                            ; preds = %txp_pkt_commit.exit
  %i.arw = load i32, ptr %1, align 8, !tbaa !196
  %.not128 = icmp eq i32 %i.arw, 0
  br i1 %.not128, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.arx = load ptr, ptr %i.ane, align 8, !tbaa !127
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 32
  %i.arz = load i8, ptr %i.ary, align 8
end_hunk_1
