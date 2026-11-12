Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_channel?download=true
inline.NumInlined: 184
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ossl_quic_channel_subtick:bb.a
  %i.mx = or disjoint i64 %i.mv, 134217728
  store i64 %i.mx, ptr %i.h, align 8
  %i.my = load ptr, ptr %i.cr, align 8, !tbaa !91
  %i.mz = call i32 @ossl_quic_tls_tick(ptr noundef %i.my) #12 ; 0 uses
  %i.na = load ptr, ptr %i.cr, align 8, !tbaa !91
  %i.nb = call i32 @ossl_quic_tls_get_error(ptr noundef %i.na, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %.not8.i79 = icmp eq i32 %i.nb, 0
  br i1 %.not8.i79, label %ch_tick_tls.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nc = load i64, ptr %i.a, align 8, !tbaa !69
  %i.nd = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.ne = load ptr, ptr %i.c, align 8, !tbaa !148
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef %i.nc, i64 noundef 0, ptr noundef %i.nd, ptr noundef %i.ne, ptr noundef nonnull @.str, i32 noundef 2237, ptr noundef nonnull @__func__.ch_tick_tls)
  br label %ch_tick_tls.exit

ch_tick_tls.exit:                                 ; preds = %bb.ci, %bb.cj, %bb.ck
  %.5 = phi i8 [ %.4, %bb.cj ], [ 1, %bb.ck ], [ %.4, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.pre110 = load i64, ptr %i.h, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %ch_rx.exit, %ch_tick_tls.exit
  %i.nf = phi i64 [ %.pre110, %ch_tick_tls.exit ], [ %i.mv, %ch_rx.exit ] ; 2 uses
  %.1 = phi i8 [ %.5, %ch_tick_tls.exit ], [ %.4, %ch_rx.exit ] ; 2 uses
  %i.ng = and i64 %i.nf, 67108864
  %.not65 = icmp eq i64 %i.ng, 0
  br i1 %.not65, label %.loopexit.loopexit, label %bb.p, !llvm.loop !232

.loopexit.loopexit:                               ; preds = %bb.cl
  %.pre111 = load ptr, ptr %0, align 8, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.k
  %i.nh = phi ptr [ %i.bc, %bb.k ], [ %.pre111, %.loopexit.loopexit ]
  %.2 = phi i8 [ 0, %bb.k ], [ %.1, %.loopexit.loopexit ] ; 4 uses
  %i.ni = call i64 @ossl_quic_port_get_time(ptr noundef %i.nh) #12 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 3 uses
  %i.nk = load i64, ptr %i.nj, align 8
  %.not106 = icmp ult i64 %i.ni, %i.nk
  %i.nl = load ptr, ptr %0, align 8, !tbaa !45
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !58
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 160
  %i.no = load i8, ptr %i.nn, align 8
  %i.np = and i8 %i.no, 1
  %.not66 = icmp eq i8 %i.np, 0                   ; 2 uses
  br i1 %.not106, label %bb.cu, label %bb.cm

bb.cm:                                            ; preds = %.loopexit
  br i1 %.not66, label %bb.cn, label %bb.ct

bb.cn:                                            ; preds = %bb.cm
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 8
  %i.nt = and i8 %i.ns, -2
  store i8 %i.nt, ptr %i.nr, align 8
  store i64 -1, ptr %i.nq, align 8, !tbaa !254
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i64 0, ptr %i.nu, align 8, !tbaa !255
  %i.nv = load i64, ptr %i.h, align 8             ; 5 uses
  %i.nw = and i64 %i.nv, -8
  %i.nx = or disjoint i64 %i.nw, 4                ; 4 uses
  store i64 %i.nx, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ny, i8 0, i64 72, i1 false)
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i81, label %bb.co, label %ch_on_idle_timeout.exit

bb.co:                                            ; preds = %bb.cn
  %i.ob = and i64 %i.nv, 2199023255552
  %.not15.i.i.i83 = icmp eq i64 %i.ob, 0
  br i1 %.not15.i.i.i83, label %ch_on_idle_timeout.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.oc = and i64 %i.nv, 33554432
  %.not16.i.i.i84 = icmp eq i64 %i.oc, 0
  br i1 %.not16.i.i.i84, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.oe = load i8, ptr %i.od, align 8, !tbaa !136
  %i.of = icmp eq i8 %i.oe, 0
  br i1 %i.of, label %ch_on_idle_timeout.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 1144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %4, ptr noundef nonnull align 8 dereferenceable(21) %i.og, i64 21, i1 false), !tbaa.struct !81
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !107
  %i.oj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !138
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ol = trunc i64 %i.nv to i32
  %i.om = lshr i32 %i.ol, 25
  %i.on = and i32 %i.om, 1
  %i.oo = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i8 0, i64 16, i1 false)
  store i32 %i.on, ptr %i.oo, align 8, !tbaa !139
  %i.op = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @get_time, ptr %i.op, align 8, !tbaa !140
  %i.oq = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %0, ptr %i.oq, align 8, !tbaa !141
  %i.or = call ptr @ossl_qlog_new_from_env(ptr noundef nonnull %4) #12 ; 3 uses
  store ptr %i.or, ptr %i.nz, align 8, !tbaa !113
  %i.os = icmp eq ptr %i.or, null
  %.pre.i.i85 = load i64, ptr %i.h, align 8       ; 2 uses
  br i1 %i.os, label %bb.cs, label %ch_on_idle_timeout.exit

bb.cs:                                            ; preds = %bb.cr
  %i.ot = and i64 %.pre.i.i85, -2199023255553     ; 2 uses
  store i64 %i.ot, ptr %i.h, align 8
  br label %ch_on_idle_timeout.exit

ch_on_idle_timeout.exit:                          ; preds = %bb.cn, %bb.co, %bb.cq, %bb.cr, %bb.cs
  %i.ou = phi i64 [ %i.nx, %bb.cn ], [ %i.nx, %bb.co ], [ %i.ot, %bb.cs ], [ %i.nx, %bb.cq ], [ %.pre.i.i85, %bb.cr ]
  %.0.i.i.i82 = phi ptr [ %i.oa, %bb.cn ], [ null, %bb.co ], [ null, %bb.cs ], [ null, %bb.cq ], [ %i.or, %bb.cr ]
  %i.ov = trunc i64 %i.nv to i32
  %i.ow = and i32 %i.ov, 7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ox = trunc i64 %i.ou to i32                  ; 2 uses
  %i.oy = lshr i32 %i.ox, 9
  %i.oz = and i32 %i.oy, 1
  %i.pa = lshr i32 %i.ox, 10
  %i.pb = and i32 %i.pa, 1
  call void @ossl_qlog_event_connectivity_connection_state_updated(ptr noundef %.0.i.i.i82, i32 noundef %i.ow, i32 noundef 4, i32 noundef %i.oz, i32 noundef %i.pb) #12
  br label %bb.ct

bb.ct:                                            ; preds = %ch_on_idle_timeout.exit, %bb.cm
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.pc, align 8, !tbaa !235
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 0, ptr %i.pd, align 1, !tbaa !236
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 1, ptr %i.pe, align 2, !tbaa !237
  store i64 -1, ptr %1, align 8, !tbaa !69
  br label %bb.er

bb.cu:                                            ; preds = %.loopexit
  br i1 %.not66, label %bb.cv, label %bb.ea

bb.cv:                                            ; preds = %bb.cu
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 6 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !79
  %i.ph = call i64 @ossl_ackm_get_loss_detection_deadline(ptr noundef %i.pg) #12
  %i.pi = add i64 %i.ph, -1
  %or.cond = icmp ult i64 %i.pi, %i.ni
  br i1 %or.cond, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.pj = load ptr, ptr %i.pf, align 8, !tbaa !79
  %i.pk = call i32 @ossl_ackm_on_timeout(ptr noundef %i.pj) #12 ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8
  %.not107 = icmp ult i64 %i.ni, %i.pm
  br i1 %.not107, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pn = load i64, ptr %i.h, align 8
  %i.po = trunc i64 %i.pn to i32
  %i.pp = lshr i32 %i.po, 14
  %i.pq = and i32 %i.pp, 7                        ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.pq, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 2
  %switch.selectcmp2.i = icmp eq i32 %i.pq, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !85
  call void @ossl_quic_tx_packetiser_schedule_ack_eliciting(ptr noundef %i.ps, i32 noundef %switch.select3.i) #12
  call fastcc void @ch_update_ping_deadline(ptr noundef nonnull %0)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %.val.i = load i64, ptr %i.h, align 8           ; 4 uses
  %i.pt = and i64 %.val.i, 7
  switch i64 %i.pt, label %bb.dc [
    i64 3, label %ch_tx.exit
    i64 2, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz
  %i.pu = and i64 %.val.i, 16777216
  %.not27.i = icmp eq i64 %i.pu, 0
  br i1 %.not27.i, label %ch_tx.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pv = and i64 %.val.i, -16777222              ; 2 uses
  store i64 %i.pv, ptr %i.h, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cz
  %i.pw = phi i64 [ %.val.i, %bb.cz ], [ %i.pv, %bb.db ] ; 2 uses
  %i.px = and i64 %i.pw, 115712
  %or.cond.not.i.i.i.i = icmp eq i64 %i.px, 50176
  br i1 %or.cond.not.i.i.i.i, label %bb.dd, label %ch_maybe_trigger_spontaneous_txku.exit.i

bb.dd:                                            ; preds = %bb.dc
  %8 = getelementptr i8, ptr %0, i64 1572
  %i.py = and i64 %i.pw, 4294967296
  %.not.i.i.i.i.i = icmp eq i64 %i.py, 0
  br i1 %.not.i.i.i.i.i, label %txku_allowed.exit.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.pz = load ptr, ptr %i.pf, align 8, !tbaa !79
  %i.qa = call i64 @ossl_ackm_get_largest_acked(ptr noundef %i.pz, i32 noundef 2) #12
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !106
  %.not11.i.i.i.i.i = icmp ult i64 %i.qa, %i.qc
  br i1 %.not11.i.i.i.i.i, label %txku_allowed.exit.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qd = load ptr, ptr %i.pf, align 8, !tbaa !79
  %i.qe = call i64 @ossl_ackm_get_pto_duration(ptr noundef %i.qd) #12
  %i.qf = load i64, ptr %i.h, align 8
  %i.qg = and i64 %i.qf, -4294967297
  store i64 %i.qg, ptr %i.h, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.qi = load ptr, ptr %0, align 8, !tbaa !45
  %i.qj = call i64 @ossl_quic_port_get_time(ptr noundef %i.qi) #12
  %i.qk = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.qe, i64 3) ; 2 uses
  %i.ql = extractvalue { i64, i1 } %i.qk, 1
  %i.qm = extractvalue { i64, i1 } %i.qk, 0
  %i.qn = call i64 @llvm.uadd.sat.i64(i64 %i.qj, i64 %i.qm)
  %.sroa.03.0.i.i.i.i.i.i = select i1 %i.ql, i64 -1, i64 %i.qn
  store i64 %.sroa.03.0.i.i.i.i.i.i, ptr %i.qh, align 8, !tbaa !69
  br label %txku_allowed.exit.i.i.i

txku_allowed.exit.i.i.i:                          ; preds = %bb.df, %bb.de, %bb.dd
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %.not.not.i.i.i = icmp eq i32 %10, 0
  br i1 %.not.not.i.i.i, label %bb.dg, label %ch_maybe_trigger_spontaneous_txku.exit.i

bb.dg:                                            ; preds = %txku_allowed.exit.i.i.i
  %i.qo = load ptr, ptr %0, align 8, !tbaa !45
  %i.qp = call i64 @ossl_quic_port_get_time(ptr noundef %i.qo) #12
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %.pre37.i.a = load i64, ptr %i.qq, align 8
  %.not.i.i.i100 = icmp ult i64 %i.qp, %.pre37.i.a
  br i1 %.not.i.i.i100, label %ch_maybe_trigger_spontaneous_txku.exit.i, label %11

11:                                               ; preds = %bb.dg
  %12 = load i64, ptr %i.h, align 8
  %13 = and i64 %12, 25769803776
  %or.cond.i.i101 = icmp eq i64 %13, 0
  br i1 %or.cond.i.i101, label %bb.dh, label %ch_maybe_trigger_spontaneous_txku.exit.i

bb.dh:                                            ; preds = %11
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 3 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !70
  %i.qt = call i64 @ossl_qtx_get_cur_epoch_pkt_count(ptr noundef %i.qs, i32 noundef 3) #12
  %i.qu = load ptr, ptr %i.qr, align 8, !tbaa !70
  %i.qv = call i64 @ossl_qtx_get_max_epoch_pkt_count(ptr noundef %i.qu, i32 noundef 3) #12
  %i.qw = lshr i64 %i.qv, 1
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !96 ; 2 uses
  %.not.i5.i.i = icmp eq i64 %i.qy, -1
  %spec.select.i.i.i = select i1 %.not.i5.i.i, i64 %i.qw, i64 %i.qy
  %.not.i.i102 = icmp ult i64 %i.qt, %spec.select.i.i.i
  br i1 %.not.i.i102, label %ch_maybe_trigger_spontaneous_txku.exit.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %14 = load i64, ptr %i.h, align 8
  %i.qz = or i64 %14, 2147483648
  store i64 %i.qz, ptr %i.h, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !85
  %i.rc = call i64 @ossl_quic_tx_packetiser_get_next_pn(ptr noundef %i.rb, i32 noundef 2) #12 ; 2 uses
  %i.rd = icmp ugt i64 %i.rc, 4611686018427387903
  br i1 %i.rd, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.re = load ptr, ptr %i.qr, align 8, !tbaa !70
  %i.rf = call i32 @ossl_qtx_trigger_key_update(ptr noundef %i.re) #12
  %.not8.i.i.i = icmp eq i32 %i.rf, 0
  br i1 %.not8.i.i.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj, %bb.di
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 0, ptr noundef nonnull @.str.111, ptr noundef null, ptr noundef nonnull @.str, i32 noundef 797, ptr noundef nonnull @__func__.ch_trigger_txku)
  br label %ch_maybe_trigger_spontaneous_txku.exit.i

bb.dl:                                            ; preds = %bb.dj
  %i.rg = load i64, ptr %i.h, align 8             ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store i64 %i.rc, ptr %i.rh, align 8, !tbaa !106
  %i.ri = shl i64 %i.rg, 5
  %i.rj = and i64 %i.ri, 68719476736
  %i.rk = and i64 %i.rg, -73014444033
  %i.rl = or disjoint i64 %i.rk, %i.rj
  %i.rm = or disjoint i64 %i.rl, 4294967296
  store i64 %i.rm, ptr %i.h, align 8
  br label %ch_maybe_trigger_spontaneous_txku.exit.i

ch_maybe_trigger_spontaneous_txku.exit.i:         ; preds = %bb.dl, %bb.dk, %bb.dh, %11, %bb.dg, %txku_allowed.exit.i.i.i, %bb.dc
  %15 = load i64, ptr %i.h, align 8
  %i.rn = and i64 %15, -34359738369
  store i64 %i.rn, ptr %i.h, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.rp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dx, %ch_maybe_trigger_spontaneous_txku.exit.i
  %i.rs = load ptr, ptr %i.ro, align 8, !tbaa !85
  %i.rt = call i32 @ossl_quic_tx_packetiser_generate(ptr noundef %i.rs, ptr noundef nonnull %3) #12
  %i.ru = load i64, ptr %i.rp, align 8, !tbaa !257
  %.not28.i = icmp eq i64 %i.ru, 0
  br i1 %.not28.i, label %ch_update_ping_deadline.exit.i97, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.rv = load i64, ptr %i.h, align 8
  %i.rw = or i64 %i.rv, 32
  store i64 %i.rw, ptr %i.h, align 8
  %i.rx = load ptr, ptr %0, align 8, !tbaa !45
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 154 ; 2 uses
  %i.rz = load i16, ptr %i.ry, align 2
  %i.sa = or i16 %i.rz, 8
  store i16 %i.sa, ptr %i.ry, align 2
  %i.sb = load i32, ptr %3, align 8, !tbaa !258
  %.not29.i88 = icmp ne i32 %i.sb, 0
  %.pre39.i = load i64, ptr %i.h, align 8         ; 2 uses
  %i.sc = and i64 %.pre39.i, 536870912
  %.not30.i = icmp eq i64 %i.sc, 0
  %or.cond44.i = select i1 %.not29.i88, i1 %.not30.i, i1 false
  br i1 %or.cond44.i, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.sd = load ptr, ptr %0, align 8, !tbaa !45
  %i.se = call i64 @ossl_quic_port_get_time(ptr noundef %i.sd) #12
  %i.sf = load i64, ptr %i.rq, align 8, !tbaa !99
  %i.sg = icmp eq i64 %i.sf, 0
  br i1 %i.sg, label %ch_update_idle.exit.i99, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sh = load ptr, ptr %i.pf, align 8, !tbaa !79
  %i.si = call i64 @ossl_ackm_get_pto_duration(ptr noundef %i.sh) #12
  %i.sj = load i64, ptr %i.rq, align 8, !tbaa !99
  %i.sk = mul i64 %i.sj, 1000000
  %i.sl = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.si, i64 3) ; 2 uses
  %i.sm = extractvalue { i64, i1 } %i.sl, 1
  %i.sn = extractvalue { i64, i1 } %i.sl, 0
  %i.so = call i64 @llvm.umax.i64(i64 %i.sk, i64 %i.sn)
  %i.sp = call i64 @llvm.uadd.sat.i64(i64 %i.se, i64 %i.so)
  %i.sq = select i1 %i.sm, i64 -1, i64 %i.sp
  br label %ch_update_idle.exit.i99

ch_update_idle.exit.i99:                          ; preds = %bb.dp, %bb.do
  %.sroa.06.0.i.i.i = phi i64 [ %i.sq, %bb.dp ], [ -1, %bb.do ]
  store i64 %.sroa.06.0.i.i.i, ptr %i.nj, align 8, !tbaa !69
  %i.sr = load i64, ptr %i.h, align 8
  %i.ss = or i64 %i.sr, 536870912                 ; 2 uses
  store i64 %i.ss, ptr %i.h, align 8
  br label %bb.dq

bb.dq:                                            ; preds = %ch_update_idle.exit.i99, %bb.dn
  %i.st = phi i64 [ %i.ss, %ch_update_idle.exit.i99 ], [ %.pre39.i, %bb.dn ] ; 2 uses
  %i.su = and i64 %i.st, 33554432
  %i.sv = icmp eq i64 %i.su, 0
  %i.sw = load i32, ptr %i.rr, align 4
  %i.sx = icmp ne i32 %i.sw, 0
  %or.cond.i89 = select i1 %i.sv, i1 %i.sx, i1 false
  br i1 %or.cond.i89, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  call fastcc void @ch_discard_el(ptr noundef nonnull %0, i32 noundef 0)
  %.pre40.i = load i64, ptr %i.h, align 8
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.sy = phi i64 [ %.pre40.i, %bb.dr ], [ %i.st, %bb.dq ] ; 2 uses
  %i.sz = and i64 %i.sy, 34359738368
  %.not31.i = icmp eq i64 %i.sz, 0
  br i1 %.not31.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ta = and i64 %i.sy, -17179869185
  store i64 %i.ta, ptr %i.h, align 8
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.tb = load i64, ptr %i.rq, align 8, !tbaa !99
  %i.tc = icmp eq i64 %i.tb, 0
  br i1 %i.tc, label %ch_update_ping_deadline.exit.sink.split.i95, label %ch_get_effective_idle_timeout_duration.exit.i.i90

ch_get_effective_idle_timeout_duration.exit.i.i90: ; preds = %bb.du
  %i.td = load ptr, ptr %i.pf, align 8, !tbaa !79
  %i.te = call i64 @ossl_ackm_get_pto_duration(ptr noundef %i.td) #12
  %i.tf = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.te, i64 3) ; 2 uses
  %i.tg = extractvalue { i64, i1 } %i.tf, 1
  %i.th = extractvalue { i64, i1 } %i.tf, 0       ; 2 uses
  %.not16.i.i91 = icmp eq i64 %i.th, -1
  %.not.i35.i92 = or i1 %i.tg, %.not16.i.i91
  br i1 %.not.i35.i92, label %ch_update_ping_deadline.exit.sink.split.i95, label %bb.dv

bb.dv:                                            ; preds = %ch_get_effective_idle_timeout_duration.exit.i.i90
  %i.ti = load i64, ptr %i.rq, align 8, !tbaa !99
  %i.tj = mul i64 %i.ti, 1000000
  %i.tk = call i64 @llvm.umax.i64(i64 %i.tj, i64 %i.th)
  %i.tl = lshr i64 %i.tk, 1
  %..i.i.i93 = call i64 @llvm.umin.i64(i64 %i.tl, i64 25000000000)
  %i.tm = load ptr, ptr %0, align 8, !tbaa !45
  %i.tn = call i64 @ossl_quic_port_get_time(ptr noundef %i.tm) #12
  %.sroa.03.0.i.i.i94 = call i64 @llvm.uadd.sat.i64(i64 %i.tn, i64 %..i.i.i93)
  br label %ch_update_ping_deadline.exit.sink.split.i95

ch_update_ping_deadline.exit.sink.split.i95:      ; preds = %bb.dv, %ch_get_effective_idle_timeout_duration.exit.i.i90, %bb.du
  %.sroa.03.0.i.i.sink.i96 = phi i64 [ %.sroa.03.0.i.i.i94, %bb.dv ], [ -1, %ch_get_effective_idle_timeout_duration.exit.i.i90 ], [ -1, %bb.du ]
  store i64 %.sroa.03.0.i.i.sink.i96, ptr %i.pl, align 8, !tbaa !69
  br label %ch_update_ping_deadline.exit.i97

ch_update_ping_deadline.exit.i97:                 ; preds = %ch_update_ping_deadline.exit.sink.split.i95, %bb.dm
  %.not32.i = icmp eq i32 %i.rt, 0
  br i1 %.not32.i, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %ch_update_ping_deadline.exit.i97
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 0, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2760, ptr noundef nonnull @__func__.ch_tx)
  br label %.loopexit.i

bb.dx:                                            ; preds = %ch_update_ping_deadline.exit.i97
  %i.to = load i64, ptr %i.rp, align 8, !tbaa !257
  %.not33.i = icmp eq i64 %i.to, 0
  br i1 %.not33.i, label %.loopexit.i, label %bb.dm, !llvm.loop !233

.loopexit.i:                                      ; preds = %bb.dx, %bb.dw
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !70
  %i.tr = call i32 @ossl_qtx_flush_net(ptr noundef %i.tq) #12
  switch i32 %i.tr, label %bb.dy [
    i32 1, label %bb.dz
    i32 -1, label %bb.dz
  ]

bb.dy:                                            ; preds = %.loopexit.i
  %i.ts = load ptr, ptr %0, align 8, !tbaa !45
  call void @ossl_quic_port_raise_net_error(ptr noundef %i.ts, ptr noundef nonnull %0) #12
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.loopexit.i, %.loopexit.i
  %i.tt = load ptr, ptr %i.tp, align 8, !tbaa !70
  %i.tu = call i64 @ossl_qtx_get_queue_len_datagrams(ptr noundef %i.tt) #12
  %.not34.i = icmp eq i64 %i.tu, 0
  %spec.select = select i1 %.not34.i, i8 %.2, i8 1
  br label %ch_tx.exit

ch_tx.exit:                                       ; preds = %bb.dz, %bb.cz, %bb.da
  %.6 = phi i8 [ %spec.select, %bb.dz ], [ %.2, %bb.da ], [ %.2, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 848
  call void @ossl_quic_stream_map_gc(ptr noundef nonnull %i.tv) #12
  br label %bb.ea

bb.ea:                                            ; preds = %ch_tx.exit, %bb.cu
  %.3 = phi i8 [ %.6, %ch_tx.exit ], [ %.2, %bb.cu ]
  %i.tw = load i64, ptr %i.h, align 8
  %i.tx = and i64 %i.tw, 7
  %.not.i103 = icmp eq i64 %i.tx, 4
  br i1 %.not.i103, label %ch_determine_next_tick_deadline.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 5 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !79
  %i.ua = call i64 @ossl_ackm_get_loss_detection_deadline(ptr noundef %i.tz) #12 ; 2 uses
  %.not44.i = icmp eq i64 %i.ua, 0
  %spec.select.i = select i1 %.not44.i, i64 -1, i64 %i.ua ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !70
  %i.ud = call i32 @ossl_qtx_is_enc_level_provisioned(ptr noundef %i.uc, i32 noundef 0) #12
  %.not38.i = icmp eq i32 %i.ud, 0
  br i1 %.not38.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ue = load ptr, ptr %i.ty, align 8, !tbaa !79
  %i.uf = call i64 @ossl_ackm_get_ack_deadline(ptr noundef %i.ue, i32 noundef 0) #12
  %..i.i = call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %i.uf)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.sroa.013.2.i = phi i64 [ %..i.i, %bb.ec ], [ %spec.select.i, %bb.eb ] ; 2 uses
  %i.ug = load ptr, ptr %i.ub, align 8, !tbaa !70
  %i.uh = call i32 @ossl_qtx_is_enc_level_provisioned(ptr noundef %i.ug, i32 noundef 1) #12
  %.not38.1.i = icmp eq i32 %i.uh, 0
  br i1 %.not38.1.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ui = load ptr, ptr %i.ty, align 8, !tbaa !79
  %i.uj = call i64 @ossl_ackm_get_ack_deadline(ptr noundef %i.ui, i32 noundef 2) #12
  %..i.1.i = call i64 @llvm.umin.i64(i64 %.sroa.013.2.i, i64 %i.uj)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.sroa.013.2.1.i = phi i64 [ %..i.1.i, %bb.ee ], [ %.sroa.013.2.i, %bb.ed ] ; 2 uses
  %i.uk = load ptr, ptr %i.ub, align 8, !tbaa !70
  %i.ul = call i32 @ossl_qtx_is_enc_level_provisioned(ptr noundef %i.uk, i32 noundef 2) #12
  %.not38.2.i = icmp eq i32 %i.ul, 0
  br i1 %.not38.2.i, label %bb.eh, label %bb.eg
end_hunk_0
begin_hunk_1_@ossl_quic_channel_new_stream_remote:bb.a
  tail call void @ossl_quic_stream_map_update_state(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #12
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @ossl_quic_stream_map_push_accept_queue(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #12
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void @ossl_quic_stream_map_release(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.a, %bb.g
  %.0 = phi ptr [ null, %bb.g ], [ null, %bb.a ], [ null, %bb.b ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @ossl_quic_channel_reject_stream(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159
  %i.d = tail call i32 @ossl_quic_stream_map_stop_sending_recv_part(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %i.c) #12 ; 0 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !159
  %i.f = tail call i32 @ossl_quic_stream_map_reset_stream_send_part(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %i.e) #12 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = or i64 %i.h, 137438953472
  store i64 %i.i, ptr %i.g, align 8
  tail call void @ossl_quic_stream_map_update_state(ptr noundef nonnull %i.a, ptr noundef %1) #12
  ret void
}

declare void @ossl_quic_stream_map_push_accept_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ossl_quic_channel_set_incoming_stream_auto_reject(ptr nofree noundef captures(none) initializes((1456, 1464)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = select i1 %.not, i64 0, i64 1073741824
  %i.d = and i64 %i.b, -1073741825
  %i.e = or disjoint i64 %i.d, %i.c
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store i64 %2, ptr %i.f, align 8, !tbaa !159
  ret void
}

declare i32 @ossl_quic_stream_map_stop_sending_recv_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ossl_quic_stream_map_reset_stream_send_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ossl_quic_stream_map_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_quic_channel_replace_local_cid(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 4 uses
  %i.d = tail call i32 @ossl_quic_lcidm_debug_remove(ptr noundef %i.b, ptr noundef nonnull %i.c) #12
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.c, ptr noundef nonnull align 1 dereferenceable(21) %1, i64 21, i1 false), !tbaa.struct !81
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.g = tail call i32 @ossl_quic_tx_packetiser_set_cur_scid(ptr noundef %i.f, ptr noundef nonnull %i.c) #12
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.i = tail call i32 @ossl_quic_lcidm_debug_add(ptr noundef %i.h, ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 100) #12
  %.not10 = icmp ne i32 %i.i, 0
  %. = zext i1 %.not10 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ %., %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @ossl_quic_lcidm_debug_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_tx_packetiser_set_cur_scid(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_lcidm_debug_add(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @ossl_quic_channel_set_msg_callback(ptr nofree noundef captures(none) initializes((1072, 1080), (1088, 1096)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %1, ptr %i.a, align 8, !tbaa !274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store ptr %2, ptr %i.b, align 8, !tbaa !275
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  tail call void @ossl_qtx_set_msg_callback(ptr noundef %i.d, ptr noundef %1, ptr noundef %2) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85
  tail call void @ossl_quic_tx_packetiser_set_msg_callback(ptr noundef %i.f, ptr noundef %1, ptr noundef %2) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4398046511104
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  tail call void @ossl_qrx_set_msg_callback(ptr noundef %i.l, ptr noundef %1, ptr noundef %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @ossl_qtx_set_msg_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_quic_tx_packetiser_set_msg_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_qrx_set_msg_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @ossl_quic_channel_set_msg_callback_arg(ptr nofree noundef captures(none) initializes((1080, 1088)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store ptr %1, ptr %i.a, align 8, !tbaa !276
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  tail call void @ossl_qtx_set_msg_callback_arg(ptr noundef %i.c, ptr noundef %1) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  tail call void @ossl_quic_tx_packetiser_set_msg_callback_arg(ptr noundef %i.e, ptr noundef %1) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 4398046511104
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  tail call void @ossl_qrx_set_msg_callback_arg(ptr noundef %i.k, ptr noundef %1) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @ossl_qtx_set_msg_callback_arg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_quic_tx_packetiser_set_msg_callback_arg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_qrx_set_msg_callback_arg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ossl_quic_channel_set_txku_threshold_override(ptr nofree noundef writeonly captures(none) initializes((1464, 1472)) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store i64 %1, ptr %i.a, align 8, !tbaa !96
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ossl_quic_channel_get_tx_key_epoch(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = tail call i64 @ossl_qtx_get_key_epoch(ptr noundef %i.b) #12
  ret i64 %i.c
}

declare i64 @ossl_qtx_get_key_epoch(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i64 @ossl_quic_channel_get_rx_key_epoch(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = tail call i64 @ossl_qrx_get_key_epoch(ptr noundef %i.b) #12
  ret i64 %i.c
}

declare i64 @ossl_qrx_get_key_epoch(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_quic_channel_trigger_txku(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 115712
  %or.cond.not.i = icmp eq i64 %i.c, 50176
  br i1 %or.cond.not.i, label %bb.b, label %ch_trigger_txku.exit

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr i8, ptr %0, i64 1572
  %i.d = and i64 %i.b, 4294967296
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %txku_allowed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.g = tail call i64 @ossl_ackm_get_largest_acked(ptr noundef %i.f, i32 noundef 2) #12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.i = load i64, ptr %i.h, align 8, !tbaa !106
  %.not11.i.i = icmp ult i64 %i.g, %i.i
  br i1 %.not11.i.i, label %txku_allowed.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.k = tail call i64 @ossl_ackm_get_pto_duration(ptr noundef %i.j) #12
  %i.l = load i64, ptr %i.a, align 8
  %i.m = and i64 %i.l, -4294967297
  store i64 %i.m, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.o = load ptr, ptr %0, align 8, !tbaa !45
  %i.p = tail call i64 @ossl_quic_port_get_time(ptr noundef %i.o) #12
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.k, i64 3) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %i.t = tail call i64 @llvm.uadd.sat.i64(i64 %i.p, i64 %i.s)
  %.sroa.03.0.i.i.i = select i1 %i.r, i64 -1, i64 %i.t
  store i64 %.sroa.03.0.i.i.i, ptr %i.n, align 8, !tbaa !69
  br label %txku_allowed.exit

txku_allowed.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %2 = load i32, ptr %1, align 4
  %3 = and i32 %2, 1
  %.not.not = icmp eq i32 %3, 0
  br i1 %.not.not, label %bb.e, label %ch_trigger_txku.exit

bb.e:                                             ; preds = %txku_allowed.exit
  %4 = load i64, ptr %i.a, align 8
  %i.u = or i64 %4, 2147483648
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !85
  %i.x = tail call i64 @ossl_quic_tx_packetiser_get_next_pn(ptr noundef %i.w, i32 noundef 2) #12 ; 2 uses
  %i.y = icmp ugt i64 %i.x, 4611686018427387903
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.ab = tail call i32 @ossl_qtx_trigger_key_update(ptr noundef %i.aa) #12
  %.not8.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 0, ptr noundef nonnull @.str.111, ptr noundef null, ptr noundef nonnull @.str, i32 noundef 797, ptr noundef nonnull @__func__.ch_trigger_txku)
  br label %ch_trigger_txku.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store i64 %i.x, ptr %i.ad, align 8, !tbaa !106
  %i.ae = shl i64 %i.ac, 5
  %i.af = and i64 %i.ae, 68719476736
  %i.ag = and i64 %i.ac, -73014444033
  %i.ah = or disjoint i64 %i.ag, %i.af
  %i.ai = or disjoint i64 %i.ah, 4294967296
  store i64 %i.ai, ptr %i.a, align 8
  br label %ch_trigger_txku.exit

ch_trigger_txku.exit:                             ; preds = %bb.a, %bb.h, %bb.g, %txku_allowed.exit
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %txku_allowed.exit ], [ 1, %bb.g ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @ossl_quic_channel_ping(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 14
  %i.e = and i32 %i.d, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.e, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 2
  %switch.selectcmp2.i = icmp eq i32 %i.e, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  tail call void @ossl_quic_tx_packetiser_schedule_ack_eliciting(ptr noundef %i.g, i32 noundef %switch.select3.i) #12
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @ossl_quic_channel_get_diag_num_rx_ack(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1354
  %i.b = load i16, ptr %i.a, align 2, !tbaa !277
  ret i16 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ossl_quic_channel_get_diag_local_cid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 21)) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1228
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 4 dereferenceable(21) %i.a, i64 21, i1 false), !tbaa.struct !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ossl_quic_channel_have_generated_transport_params(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 8
  %i.e = and i32 %i.d, 1
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ossl_quic_channel_set_max_idle_timeout_request(ptr nofree noundef writeonly captures(none) initializes((1384, 1392)) %0, i64 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i64 %1, ptr %i.a, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ossl_quic_channel_get_max_idle_timeout_request(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ossl_quic_channel_get_max_idle_timeout_peer_request(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ossl_quic_channel_get_max_idle_timeout_actual(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 0, 4294967296) i64 @ossl_quic_channel_get_path_challenge_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %i.b = load i32, ptr %i.a, align 4, !tbaa !278
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 0, 4294967296) i64 @ossl_quic_channel_get_path_response_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.b = load i32, ptr %i.a, align 8, !tbaa !279
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

declare i32 @ossl_quic_port_get_tx_init_dcid_len(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_quic_gen_rand_conn_id(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @ch_get_qlog_cb(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.qlog_trace_info_st, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %ch_get_qlog.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 2199023255552
  %.not15.i = icmp eq i64 %i.f, 0
  br i1 %.not15.i, label %ch_get_qlog.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %i.e, 33554432
  %.not16.i = icmp eq i64 %i.g, 0
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.i = load i8, ptr %i.h, align 8, !tbaa !136
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %ch_get_qlog.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(21) %i.k, i64 21, i1 false), !tbaa.struct !81
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !138
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = trunc i64 %i.e to i32
  %i.q = lshr i32 %i.p, 25
  %i.r = and i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i32 %i.r, ptr %i.s, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @get_time, ptr %i.t, align 8, !tbaa !140
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %0, ptr %i.u, align 8, !tbaa !141
  %i.v = call ptr @ossl_qlog_new_from_env(ptr noundef nonnull %1) #12 ; 3 uses
  store ptr %i.v, ptr %i.b, align 8, !tbaa !113
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %ch_get_qlog.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.d, align 8
  %i.y = and i64 %i.x, -2199023255553
  store i64 %i.y, ptr %i.d, align 8
  br label %ch_get_qlog.exit

ch_get_qlog.exit:                                 ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.c, %bb.a ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ], [ %i.v, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret ptr %.0.i
}

declare ptr @ossl_qtx_new(ptr noundef) local_unnamed_addr #1
end_hunk_1
