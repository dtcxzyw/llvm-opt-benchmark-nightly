inline.NumInlined: 182
inline.NumDeleted: 62
begin_hunk_0_@ossl_quic_channel_subtick:bb.a
  %i.sf = or i16 %i.se, 8
  store i16 %i.sf, ptr %i.sd, align 2
  %i.sg = load i32, ptr %3, align 8, !tbaa !208
  %.not29.i = icmp ne i32 %i.sg, 0
  %.pre39.i = load i64, ptr %i.h, align 8         ; 2 uses
  %i.sh = and i64 %.pre39.i, 536870912
  %.not30.i = icmp eq i64 %i.sh, 0
  %or.cond44.i = select i1 %.not29.i, i1 %.not30.i, i1 false
  br i1 %or.cond44.i, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.si = load ptr, ptr %0, align 8, !tbaa !9
  %i.sj = call i64 @ossl_quic_port_get_time(ptr noundef %i.si) #12
  %i.sk = load i64, ptr %i.rv, align 8, !tbaa !144
  %i.sl = icmp eq i64 %i.sk, 0
  br i1 %i.sl, label %ch_update_idle.exit.i98, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sm = load ptr, ptr %i.pf, align 8, !tbaa !86
  %i.sn = call i64 @ossl_ackm_get_pto_duration(ptr noundef %i.sm) #12
  %i.so = load i64, ptr %i.rv, align 8, !tbaa !144
  %i.sp = mul i64 %i.so, 1000000
  %i.sq = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.sn, i64 3) ; 2 uses
  %i.sr = extractvalue { i64, i1 } %i.sq, 1
  %i.ss = extractvalue { i64, i1 } %i.sq, 0
  %i.st = call i64 @llvm.umax.i64(i64 %i.sp, i64 %i.ss)
  %i.su = call i64 @llvm.uadd.sat.i64(i64 %i.sj, i64 %i.st)
  %i.sv = select i1 %i.sr, i64 -1, i64 %i.su
  br label %ch_update_idle.exit.i98

ch_update_idle.exit.i98:                          ; preds = %bb.dp, %bb.do
  %.sroa.06.0.i.i.i = phi i64 [ %i.sv, %bb.dp ], [ -1, %bb.do ]
  store i64 %.sroa.06.0.i.i.i, ptr %i.nj, align 8, !tbaa !74
  %i.sw = load i64, ptr %i.h, align 8
  %i.sx = or i64 %i.sw, 536870912                 ; 2 uses
  store i64 %i.sx, ptr %i.h, align 8
  br label %bb.dq

bb.dq:                                            ; preds = %ch_update_idle.exit.i98, %bb.dn
  %i.sy = phi i64 [ %i.sx, %ch_update_idle.exit.i98 ], [ %.pre39.i, %bb.dn ] ; 2 uses
  %i.sz = and i64 %i.sy, 33554432
  %i.ta = icmp eq i64 %i.sz, 0
  %i.tb = load i32, ptr %i.rw, align 4
  %i.tc = icmp ne i32 %i.tb, 0
  %or.cond.i89 = select i1 %i.ta, i1 %i.tc, i1 false
  br i1 %or.cond.i89, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  call fastcc void @ch_discard_el(ptr noundef nonnull %0, i32 noundef 0)
  %.pre40.i = load i64, ptr %i.h, align 8
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.td = phi i64 [ %.pre40.i, %bb.dr ], [ %i.sy, %bb.dq ] ; 2 uses
  %i.te = and i64 %i.td, 34359738368
  %.not31.i = icmp eq i64 %i.te, 0
  br i1 %.not31.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.tf = and i64 %i.td, -17179869185
  store i64 %i.tf, ptr %i.h, align 8
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.tg = load i64, ptr %i.rv, align 8, !tbaa !144
  %i.th = icmp eq i64 %i.tg, 0
  br i1 %i.th, label %ch_update_ping_deadline.exit.sink.split.i94, label %ch_get_effective_idle_timeout_duration.exit.i.i90

ch_get_effective_idle_timeout_duration.exit.i.i90: ; preds = %bb.du
  %i.ti = load ptr, ptr %i.pf, align 8, !tbaa !86
  %i.tj = call i64 @ossl_ackm_get_pto_duration(ptr noundef %i.ti) #12
  %i.tk = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.tj, i64 3) ; 2 uses
  %i.tl = extractvalue { i64, i1 } %i.tk, 1
  %i.tm = extractvalue { i64, i1 } %i.tk, 0       ; 2 uses
  %.not16.i.i91 = icmp eq i64 %i.tm, -1
  %.not.i35.i = or i1 %i.tl, %.not16.i.i91
  br i1 %.not.i35.i, label %ch_update_ping_deadline.exit.sink.split.i94, label %bb.dv

bb.dv:                                            ; preds = %ch_get_effective_idle_timeout_duration.exit.i.i90
  %i.tn = load i64, ptr %i.rv, align 8, !tbaa !144
  %i.to = mul i64 %i.tn, 1000000
  %i.tp = call i64 @llvm.umax.i64(i64 %i.to, i64 %i.tm)
  %i.tq = lshr i64 %i.tp, 1
  %..i.i.i92 = call i64 @llvm.umin.i64(i64 %i.tq, i64 25000000000)
  %i.tr = load ptr, ptr %0, align 8, !tbaa !9
  %i.ts = call i64 @ossl_quic_port_get_time(ptr noundef %i.tr) #12
  %.sroa.03.0.i.i.i93 = call i64 @llvm.uadd.sat.i64(i64 %i.ts, i64 %..i.i.i92)
  br label %ch_update_ping_deadline.exit.sink.split.i94

ch_update_ping_deadline.exit.sink.split.i94:      ; preds = %bb.dv, %ch_get_effective_idle_timeout_duration.exit.i.i90, %bb.du
  %.sroa.03.0.i.i.sink.i95 = phi i64 [ %.sroa.03.0.i.i.i93, %bb.dv ], [ -1, %ch_get_effective_idle_timeout_duration.exit.i.i90 ], [ -1, %bb.du ]
  store i64 %.sroa.03.0.i.i.sink.i95, ptr %i.pl, align 8, !tbaa !74
  br label %ch_update_ping_deadline.exit.i96

ch_update_ping_deadline.exit.i96:                 ; preds = %ch_update_ping_deadline.exit.sink.split.i94, %bb.dm
  %.not32.i = icmp eq i32 %i.ry, 0
  br i1 %.not32.i, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %ch_update_ping_deadline.exit.i96
  call void @ossl_quic_channel_raise_protocol_error_loc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 0, ptr noundef nonnull @.str.106, ptr noundef null, ptr noundef nonnull @.str, i32 noundef 2692, ptr noundef nonnull @__func__.ch_tx)
  br label %.loopexit.i

bb.dx:                                            ; preds = %ch_update_ping_deadline.exit.i96
  %i.tt = load i64, ptr %i.ru, align 8, !tbaa !206
  %.not33.i = icmp eq i64 %i.tt, 0
  br i1 %.not33.i, label %.loopexit.i, label %bb.dm, !llvm.loop !209

.loopexit.i:                                      ; preds = %bb.dx, %bb.dw
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !75
  %i.tw = call i32 @ossl_qtx_flush_net(ptr noundef %i.tv) #12
  switch i32 %i.tw, label %bb.dy [
    i32 1, label %bb.dz
    i32 -1, label %bb.dz
  ]

bb.dy:                                            ; preds = %.loopexit.i
  %i.tx = load ptr, ptr %0, align 8, !tbaa !9
  call void @ossl_quic_port_raise_net_error(ptr noundef %i.tx, ptr noundef nonnull %0) #12
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.loopexit.i, %.loopexit.i
  %i.ty = load ptr, ptr %i.tu, align 8, !tbaa !75
  %i.tz = call i64 @ossl_qtx_get_queue_len_datagrams(ptr noundef %i.ty) #12
  %.not34.i = icmp eq i64 %i.tz, 0
  %spec.select = select i1 %.not34.i, i8 %.2, i8 1
  br label %ch_tx.exit

ch_tx.exit:                                       ; preds = %bb.dz, %bb.cz, %bb.da
  %.6 = phi i8 [ %spec.select, %bb.dz ], [ %.2, %bb.da ], [ %.2, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 848
  call void @ossl_quic_stream_map_gc(ptr noundef nonnull %i.ua) #12
  br label %bb.ea

bb.ea:                                            ; preds = %ch_tx.exit, %bb.cu
  %.3 = phi i8 [ %.6, %ch_tx.exit ], [ %.2, %bb.cu ]
  %i.ub = load i64, ptr %i.h, align 8
  %i.uc = and i64 %i.ub, 7
  %.not.i102 = icmp eq i64 %i.uc, 4
  br i1 %.not.i102, label %ch_determine_next_tick_deadline.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 5 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !86
  %i.uf = call i64 @ossl_ackm_get_loss_detection_deadline(ptr noundef %i.ue) #12 ; 2 uses
  %.not44.i = icmp eq i64 %i.uf, 0
  %spec.select.i = select i1 %.not44.i, i64 -1, i64 %i.uf ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !75
  %i.ui = call i32 @ossl_qtx_is_enc_level_provisioned(ptr noundef %i.uh, i32 noundef 0) #12
  %.not38.i = icmp eq i32 %i.ui, 0
  br i1 %.not38.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.uj = load ptr, ptr %i.ud, align 8, !tbaa !86
  %i.uk = call i64 @ossl_ackm_get_ack_deadline(ptr noundef %i.uj, i32 noundef 0) #12
  %..i.i = call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %i.uk)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.sroa.013.2.i = phi i64 [ %..i.i, %bb.ec ], [ %spec.select.i, %bb.eb ] ; 2 uses
  %i.ul = load ptr, ptr %i.ug, align 8, !tbaa !75
  %i.um = call i32 @ossl_qtx_is_enc_level_provisioned(ptr noundef %i.ul, i32 noundef 1) #12
  %.not38.1.i = icmp eq i32 %i.um, 0
  br i1 %.not38.1.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.un = load ptr, ptr %i.ud, align 8, !tbaa !86
  %i.uo = call i64 @ossl_ackm_get_ack_deadline(ptr noundef %i.un, i32 noundef 2) #12
  %..i.1.i = call i64 @llvm.umin.i64(i64 %.sroa.013.2.i, i64 %i.uo)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.sroa.013.2.1.i = phi i64 [ %..i.1.i, %bb.ee ], [ %.sroa.013.2.i, %bb.ed ] ; 2 uses
  %i.up = load ptr, ptr %i.ug, align 8, !tbaa !75
  %i.uq = call i32 @ossl_qtx_is_enc_level_provisioned(ptr noundef %i.up, i32 noundef 2) #12
  %.not38.2.i = icmp eq i32 %i.uq, 0
  br i1 %.not38.2.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ur = load ptr, ptr %i.ud, align 8, !tbaa !86
  %i.us = call i64 @ossl_ackm_get_ack_deadline(ptr noundef %i.ur, i32 noundef 1) #12
  %..i.2.i = call i64 @llvm.umin.i64(i64 %.sroa.013.2.1.i, i64 %i.us)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.sroa.013.2.2.i = phi i64 [ %..i.2.i, %bb.eg ], [ %.sroa.013.2.1.i, %bb.ef ] ; 2 uses
  %i.ut = load ptr, ptr %i.ug, align 8, !tbaa !75
  %i.uu = call i32 @ossl_qtx_is_enc_level_provisioned(ptr noundef %i.ut, i32 noundef 3) #12
  %.not38.3.i = icmp eq i32 %i.uu, 0
  br i1 %.not38.3.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.uv = load ptr, ptr %i.ud, align 8, !tbaa !86
  %i.uw = call i64 @ossl_ackm_get_ack_deadline(ptr noundef %i.uv, i32 noundef 2) #12
  %..i.3.i = call i64 @llvm.umin.i64(i64 %.sroa.013.2.2.i, i64 %i.uw)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.sroa.013.2.3.i = phi i64 [ %..i.3.i, %bb.ei ], [ %.sroa.013.2.2.i, %bb.eh ]
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.uy = load i64, ptr %i.ux, align 8
  %..i39.i = call i64 @llvm.umin.i64(i64 %.sroa.013.2.3.i, i64 %i.uy)
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !107
  %i.vb = call i64 @ossl_quic_tx_packetiser_get_deadline(ptr noundef %i.va) #12
  %..i40.i = call i64 @llvm.umin.i64(i64 %..i39.i, i64 %i.vb) ; 3 uses
  %.val.i103 = load i64, ptr %i.h, align 8        ; 2 uses
  %i.vc = and i64 %.val.i103, 6
  %narrow.i.not.i = icmp eq i64 %i.vc, 2
  br i1 %narrow.i.not.i, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.ve = load i64, ptr %i.vd, align 8
  %..i41.i = call i64 @llvm.umin.i64(i64 %..i40.i, i64 %i.ve)
  br label %bb.en

bb.el:                                            ; preds = %bb.ej
  %i.vf = load i64, ptr %i.nj, align 8            ; 2 uses
  %.not46.i = icmp eq i64 %i.vf, -1
  br i1 %.not46.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %..i42.i = call i64 @llvm.umin.i64(i64 %..i40.i, i64 %i.vf)
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.ek
  %.sroa.013.4.i = phi i64 [ %..i41.i, %bb.ek ], [ %..i40.i, %bb.el ], [ %..i42.i, %bb.em ] ; 2 uses
  %i.vg = and i64 %.val.i103, 8589934592
  %.not37.i = icmp eq i64 %i.vg, 0
  br i1 %.not37.i, label %ch_determine_next_tick_deadline.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.vi = load i64, ptr %i.vh, align 8
  %..i43.i = call i64 @llvm.umin.i64(i64 %.sroa.013.4.i, i64 %i.vi)
  br label %ch_determine_next_tick_deadline.exit

ch_determine_next_tick_deadline.exit:             ; preds = %bb.ea, %bb.en, %bb.eo
  %.sroa.032.0.i = phi i64 [ %.sroa.013.4.i, %bb.en ], [ %..i43.i, %bb.eo ], [ -1, %bb.ea ]
  store i64 %.sroa.032.0.i, ptr %1, align 8, !tbaa !74
  %i.vj = load i64, ptr %i.h, align 8
  %i.vk = and i64 %i.vj, 7
  %i.vl = icmp ne i64 %i.vk, 4
  %i.vm = zext i1 %i.vl to i8
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.vm, ptr %i.vn, align 8, !tbaa !171
  %i.vo = load i64, ptr %i.h, align 8
  %i.vp = and i64 %i.vo, 7
  %.not107 = icmp eq i64 %i.vp, 4
  br i1 %.not107, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %ch_determine_next_tick_deadline.exit
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !75
  %i.vs = call i64 @ossl_qtx_get_queue_len_datagrams(ptr noundef %i.vr) #12
  %i.vt = icmp ne i64 %i.vs, 0
  %i.vu = zext i1 %i.vt to i8
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %ch_determine_next_tick_deadline.exit
  %i.vv = phi i8 [ 0, %ch_determine_next_tick_deadline.exit ], [ %i.vu, %bb.ep ]
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.vv, ptr %i.vw, align 1, !tbaa !173
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %.3, ptr %i.vx, align 2, !tbaa !174
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ct, %ch_on_terminating_timeout.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal i64 @get_time(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = tail call i64 @ossl_quic_port_get_time(ptr noundef %i.a) #12
  ret i64 %i.b
}

declare i64 @ossl_ackm_get_loss_detection_deadline(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_ackm_on_timeout(ptr noundef) local_unnamed_addr #1

declare void @ossl_quic_tx_packetiser_schedule_ack_eliciting(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ch_update_ping_deadline(ptr noundef captures(none) initializes((1528, 1536)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !144
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %ch_get_effective_idle_timeout_duration.exit.thread, label %ch_get_effective_idle_timeout_duration.exit

ch_get_effective_idle_timeout_duration.exit:      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.f = tail call i64 @ossl_ackm_get_pto_duration(ptr noundef %i.e) #12
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 3) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  %.not16 = icmp eq i64 %i.i, -1
  %.not = or i1 %i.h, %.not16
  br i1 %.not, label %ch_get_effective_idle_timeout_duration.exit.thread, label %bb.b

ch_get_effective_idle_timeout_duration.exit.thread: ; preds = %bb.a, %ch_get_effective_idle_timeout_duration.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i64 -1, ptr %i.j, align 8, !tbaa !74
  br label %bb.c

bb.b:                                             ; preds = %ch_get_effective_idle_timeout_duration.exit
  %i.k = load i64, ptr %i.a, align 8, !tbaa !144
  %i.l = mul i64 %i.k, 1000000
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.i)
  %i.n = lshr i64 %i.m, 1
  %..i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 25000000000)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.p = load ptr, ptr %0, align 8, !tbaa !9
  %i.q = tail call i64 @ossl_quic_port_get_time(ptr noundef %i.p) #12
  %.sroa.03.0.i = tail call i64 @llvm.uadd.sat.i64(i64 %i.q, i64 %..i)
  store i64 %.sroa.03.0.i, ptr %i.o, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %ch_get_effective_idle_timeout_duration.exit.thread
  ret void
}

declare void @ossl_quic_stream_map_gc(ptr noundef) local_unnamed_addr #1

declare i64 @ossl_qtx_get_queue_len_datagrams(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_channel_start(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %1 = alloca %struct.qlog_trace_info_st, align 8 ; 10 uses
  %2 = alloca %struct.qlog_trace_info_st, align 8 ; 10 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 14 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = and i64 %i.f, 33554432
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.f, 7
  %.not23 = icmp eq i64 %i.h, 0
  br i1 %.not23, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = tail call i32 @ossl_quic_tx_packetiser_set_peer(ptr noundef %i.j, ptr noundef nonnull %i.k) #12
  %.not24 = icmp eq i32 %i.l, 0
  br i1 %.not24, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.e, align 8
  %i.n = and i64 %i.m, 33554432
  %.not25 = icmp eq i64 %i.n, 0
  br i1 %.not25, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !210
  %i.r = call i32 @ossl_quic_get_peer_token(ptr noundef %i.q, ptr noundef nonnull %i.k, ptr noundef nonnull %i.d) #12
  %.not26 = icmp eq i32 %i.r, 0
  br i1 %.not26, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !211  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !216
  %i.y = call i32 @ossl_quic_tx_packetiser_set_initial_token(ptr noundef %i.s, ptr noundef %i.v, i64 noundef %i.x, ptr noundef nonnull @free_peer_token, ptr noundef %i.t) #12
  %.not27 = icmp eq i32 %i.y, 0
  br i1 %.not27, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !211
  call void @ossl_quic_free_peer_token(ptr noundef %i.z) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !9
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !198
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 6 uses
  %i.ag = load i64, ptr %i.e, align 8
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = lshr i32 %i.ah, 25
  %i.aj = and i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !108
end_hunk_0
