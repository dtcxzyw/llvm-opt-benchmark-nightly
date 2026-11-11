Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pl181?download=true
inline.NumInlined: 44
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pl181_fifo_run:bb.a
  br label %pl181_fifo_push.exit

pl181_fifo_push.exit:                             ; preds = %pl181_fifo_push.exitthread-pre-split, %bb.f
  %i.as = phi i32 [ %.pr100, %pl181_fifo_push.exitthread-pre-split ], [ %i.ad, %bb.f ]
  %.155 = phi i32 [ 0, %pl181_fifo_push.exitthread-pre-split ], [ %i.ab, %bb.f ] ; 2 uses
  %.1 = phi i32 [ 0, %pl181_fifo_push.exitthread-pre-split ], [ %i.ae, %bb.f ] ; 2 uses
  %.not66 = icmp eq i32 %i.as, 0
  br i1 %.not66, label %.critedge, label %bb.e, !llvm.loop !8

.critedge:                                        ; preds = %bb.e, %pl181_fifo_push.exit
  %.054.lcssa.ph = phi i32 [ %.05481, %bb.e ], [ %.155, %pl181_fifo_push.exit ] ; 2 uses
  %.0.lcssa.ph = phi i32 [ %.082, %bb.e ], [ %.1, %pl181_fifo_push.exit ]
  %i.at = icmp eq i32 %.0.lcssa.ph, 0
  br i1 %i.at, label %.critedge2, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.au = load i32, ptr %i.l, align 4             ; 3 uses
  %i.av = icmp eq i32 %i.au, 16
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.pl181_fifo_push) #5
  br label %.critedge2

bb.o:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = add i32 %i.ax, %i.au
  %i.az = and i32 %i.ay, 15
  %i.ba = add i32 %i.au, 1
  store i32 %i.ba, ptr %i.l, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1284
  %i.bc = zext nneg i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  store i32 %.054.lcssa.ph, ptr %i.bd, align 4
  %i.be = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i69 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i69, label %.critedge2, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.bf = load i16, ptr @_TRACE_PL181_FIFO_PUSH_DSTATE, align 2
  %.not1.i.i70 = icmp eq i16 %i.bf, 0
  br i1 %.not1.i.i70, label %.critedge2, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load i32, ptr @qemu_loglevel, align 4
  %i.bh = and i32 %i.bg, 32768
  %.not2.i.i71 = icmp eq i32 %i.bh, 0
  br i1 %.not2.i.i71, label %.critedge2, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, i32 noundef %.054.lcssa.ph) #5
  br label %.critedge2

bb.s:                                             ; preds = %.lr.ph90, %pl181_fifo_pop.exit
  %.289 = phi i32 [ 0, %.lr.ph90 ], [ %i.bz, %pl181_fifo_pop.exit ] ; 3 uses
  %.25688 = phi i32 [ 0, %.lr.ph90 ], [ %i.cd, %pl181_fifo_pop.exit ]
  %i.bi = load i32, ptr %i.r, align 4             ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  %i.bk = icmp sgt i32 %.289, 0
  %i.bl = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %i.bl, label %bb.t, label %.critedge2

bb.t:                                             ; preds = %bb.s
  %i.bm = icmp eq i32 %.289, 0
  br i1 %i.bm, label %bb.u, label %pl181_fifo_pop.exit

bb.u:                                             ; preds = %bb.t
  %i.bn = icmp eq i32 %i.bi, 0
  br i1 %i.bn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.pl181_fifo_pop) #5
  br label %pl181_fifo_pop.exit

bb.w:                                             ; preds = %bb.u
  %i.bo = load i32, ptr %i.t, align 8             ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4            ; 5 uses
  %i.bs = add i32 %i.bi, -1
  store i32 %i.bs, ptr %i.r, align 4
  %i.bt = add i32 %i.bo, 1
  %i.bu = and i32 %i.bt, 15
  store i32 %i.bu, ptr %i.t, align 8
  %i.bv = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i73 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i73, label %pl181_fifo_pop.exit, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  %i.bw = load i16, ptr @_TRACE_PL181_FIFO_POP_DSTATE, align 2
  %.not1.i.i74 = icmp eq i16 %i.bw, 0
  br i1 %.not1.i.i74, label %pl181_fifo_pop.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = load i32, ptr @qemu_loglevel, align 4
  %i.by = and i32 %i.bx, 32768
  %.not2.i.i75 = icmp eq i32 %i.by, 0
  br i1 %.not2.i.i75, label %pl181_fifo_pop.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, i32 noundef %i.br) #5
  br label %pl181_fifo_pop.exit

pl181_fifo_pop.exit:                              ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t
  %.357 = phi i32 [ %.25688, %bb.t ], [ 0, %bb.v ], [ %i.br, %bb.w ], [ %i.br, %bb.x ], [ %i.br, %bb.y ], [ %i.br, %bb.z ] ; 2 uses
  %.3 = phi i32 [ %.289, %bb.t ], [ 4, %bb.v ], [ 4, %bb.w ], [ 4, %bb.x ], [ 4, %bb.y ], [ 4, %bb.z ]
  %i.bz = add nsw i32 %.3, -1
  %i.ca = load i32, ptr %i.b, align 8
  %i.cb = add i32 %i.ca, -1
  store i32 %i.cb, ptr %i.b, align 8
  %i.cc = trunc i32 %.357 to i8
  tail call void @sdbus_write_byte(ptr noundef nonnull %i.u, i8 noundef zeroext %i.cc) #5
  %i.cd = lshr i32 %.357, 8
  %i.ce = load i32, ptr %i.b, align 8
  %.not65 = icmp eq i32 %i.ce, 0
  br i1 %.not65, label %.sink.split, label %bb.s, !llvm.loop !9

.critedge2:                                       ; preds = %bb.s, %.thread, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %.critedge, %bb.d, %bb.c
  %.pr.pr = load i32, ptr %i.b, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1260 ; 4 uses
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = and i32 %i.cg, -4190209                 ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4
  %i.ci = icmp eq i32 %.pr.pr, 0
  br i1 %i.ci, label %bb.aa, label %trace_pl181_fifo_transfer_complete.exit._crit_edge

.sink.split:                                      ; preds = %pl181_fifo_pop.exit, %bb.a, %.preheader, %.preheader79
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1260 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = and i32 %i.ck, -4190209
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %.critedge2
  %i.cm = phi i32 [ %i.ch, %.critedge2 ], [ %i.cl, %.sink.split ]
  %i.cn = phi ptr [ %i.cf, %.critedge2 ], [ %i.cj, %.sink.split ] ; 3 uses
  %i.co = or i32 %i.cm, 1280
  store i32 %i.co, ptr %i.cn, align 4
  %i.cp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i, label %trace_pl181_fifo_transfer_complete.exit.thread, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %bb.aa
  %i.cq = load i16, ptr @_TRACE_PL181_FIFO_TRANSFER_COMPLETE_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.cq, 0
  br i1 %.not1.i, label %trace_pl181_fifo_transfer_complete.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load i32, ptr @qemu_loglevel, align 4
  %i.cs = and i32 %i.cr, 32768
  %.not2.i = icmp eq i32 %i.cs, 0
  br i1 %.not2.i, label %trace_pl181_fifo_transfer_complete.exit.thread, label %trace_pl181_fifo_transfer_complete.exit

trace_pl181_fifo_transfer_complete.exit:          ; preds = %bb.ac
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16) #5
  %.pre = load i32, ptr %i.b, align 8
  %i.ct = icmp eq i32 %.pre, 0
  br i1 %i.ct, label %trace_pl181_fifo_transfer_complete.exit.thread, label %trace_pl181_fifo_transfer_complete.exit._crit_edge

trace_pl181_fifo_transfer_complete.exit._crit_edge: ; preds = %.critedge2, %trace_pl181_fifo_transfer_complete.exit
  %i.cu = phi ptr [ %i.cn, %trace_pl181_fifo_transfer_complete.exit ], [ %i.cf, %.critedge2 ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1276
  %.pre91 = load i32, ptr %.phi.trans.insert, align 4
  %.pre92 = load i32, ptr %i.a, align 4
  br label %bb.ah

trace_pl181_fifo_transfer_complete.exit.thread:   ; preds = %bb.ac, %bb.ab, %bb.aa, %trace_pl181_fifo_transfer_complete.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1276
  %i.cw = load i32, ptr %i.cv, align 4            ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  %.pre93 = load i32, ptr %i.a, align 4           ; 2 uses
  br i1 %i.cx, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %trace_pl181_fifo_transfer_complete.exit.thread
  %i.cy = and i32 %.pre93, -2
  store i32 %i.cy, ptr %i.a, align 4
  %i.cz = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i76 = icmp eq i32 %i.cz, 0
  br i1 %.not.i76, label %trace_pl181_data_engine_idle.exit, label %bb.ae, !prof !7

bb.ae:                                            ; preds = %bb.ad
  %i.da = load i16, ptr @_TRACE_PL181_DATA_ENGINE_IDLE_DSTATE, align 2
  %.not1.i77 = icmp eq i16 %i.da, 0
  br i1 %.not1.i77, label %trace_pl181_data_engine_idle.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = load i32, ptr @qemu_loglevel, align 4
  %i.dc = and i32 %i.db, 32768
  %.not2.i78 = icmp eq i32 %i.dc, 0
  br i1 %.not2.i78, label %trace_pl181_data_engine_idle.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.17) #5
  br label %trace_pl181_data_engine_idle.exit

bb.ah:                                            ; preds = %trace_pl181_fifo_transfer_complete.exit._crit_edge, %trace_pl181_fifo_transfer_complete.exit.thread
  %i.dd = phi ptr [ %i.cu, %trace_pl181_fifo_transfer_complete.exit._crit_edge ], [ %i.cn, %trace_pl181_fifo_transfer_complete.exit.thread ] ; 2 uses
  %i.de = phi i32 [ %.pre92, %trace_pl181_fifo_transfer_complete.exit._crit_edge ], [ %.pre93, %trace_pl181_fifo_transfer_complete.exit.thread ]
  %i.df = phi i32 [ %.pre91, %trace_pl181_fifo_transfer_complete.exit._crit_edge ], [ %i.cw, %trace_pl181_fifo_transfer_complete.exit.thread ] ; 4 uses
  %i.dg = icmp eq i32 %i.df, 0
  %. = select i1 %i.dg, i32 798720, i32 3158016
  %i.dh = icmp eq i32 %i.df, 16
  %.159 = select i1 %i.dh, i32 3354624, i32 %.    ; 2 uses
  %i.di = icmp slt i32 %i.df, 9
  %1 = or disjoint i32 %.159, 16384               ; 2 uses
  %.260 = select i1 %i.di, i32 %1, i32 %.159
  %i.dj = icmp sgt i32 %i.df, 7
  %i.dk = or disjoint i32 %.260, 32768
  %.361 = select i1 %i.dj, i32 %i.dk, i32 %1
  %i.dl = and i32 %i.de, 2
  %.not68 = icmp eq i32 %i.dl, 0
  %.4.v = select i1 %.not68, i32 1396736, i32 2793472
  %.4 = and i32 %.361, %.4.v
  %i.dm = load i32, ptr %i.dd, align 4
  %i.dn = or i32 %.4, %i.dm
  store i32 %i.dn, ptr %i.dd, align 4
  br label %trace_pl181_data_engine_idle.exit

trace_pl181_data_engine_idle.exit:                ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ah
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pl181_update(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1260 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = load i32, ptr %i.b, align 4
  %i.f = load i32, ptr %i.c, align 8
  %i.g = and i32 %i.f, %i.e
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  tail call void @qemu_set_irq(ptr noundef %i.d, i32 noundef %i.i) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i32, ptr %i.b, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1268
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, %i.l
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  tail call void @qemu_set_irq(ptr noundef %i.k, i32 noundef %i.q) #5
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @sdbus_data_ready(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @sdbus_read_byte(ptr noundef) local_unnamed_addr #1

declare void @sdbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pl181_do_command(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SDRequest, align 4          ; 6 uses
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, i8 0, i64 12, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1220 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 63
  store i8 %i.e, ptr %1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.g = load i32, ptr %i.f, align 16             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.g, ptr %i.h, align 4
  %i.i = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %trace_pl181_command_send.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.j = load i16, ptr @_TRACE_PL181_COMMAND_SEND_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.j, 0
  br i1 %.not2.i, label %trace_pl181_command_send.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 32768
  %.not3.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i, label %trace_pl181_command_send.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.c, 63
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i32 noundef %i.m, i32 noundef %i.g) #5
  br label %trace_pl181_command_send.exit

trace_pl181_command_send.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.o = call i64 @sdbus_do_command(ptr noundef nonnull %i.n, ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 16) #5 ; 3 uses
  %i.p = load i32, ptr %i.b, align 4              ; 2 uses
  %i.q = and i32 %i.p, 64
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %trace_pl181_command_send.exit
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ne i64 %i.o, 4                      ; 2 uses
  %i.t = and i32 %i.p, 128
  %.not20 = icmp eq i32 %i.t, 0
  %or.cond22 = or i1 %i.s, %.not20
  br i1 %or.cond22, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  switch i64 %i.o, label %bb.p [
    i64 16, label %bb.h
    i64 4, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %.val25 = load i32, ptr %i.a, align 16
  %i.u = call i32 @llvm.bswap.i32(i32 %.val25)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i32 %i.u, ptr %i.v, align 4
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.val24 = load i32, ptr %i.w, align 4
  %i.x = call i32 @llvm.bswap.i32(i32 %.val24)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val23 = load i32, ptr %i.y, align 8
  %i.z = call i32 @llvm.bswap.i32(i32 %.val23)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.val = load i32, ptr %i.aa, align 4
  %i.ab = and i32 %.val, -16777217
  %i.ac = call i32 @llvm.bswap.i32(i32 %i.ab)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink35 = phi i32 [ %i.x, %bb.i ], [ 0, %bb.h ]
  %.sink34 = phi i32 [ %i.z, %bb.i ], [ 0, %bb.h ]
  %.sink = phi i32 [ %i.ac, %bb.i ], [ 0, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store i32 %.sink35, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1244
  store i32 %.sink34, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store i32 %.sink, ptr %i.af, align 16
  %i.ag = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i26 = icmp eq i32 %i.ag, 0
  br i1 %.not.i26, label %trace_pl181_command_response_pending.exit, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ah = load i16, ptr @_TRACE_PL181_COMMAND_RESPONSE_PENDING_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.ah, 0
  br i1 %.not1.i, label %trace_pl181_command_response_pending.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i32, ptr @qemu_loglevel, align 4
  %i.aj = and i32 %i.ai, 32768
  %.not2.i27 = icmp eq i32 %i.aj, 0
  br i1 %.not2.i27, label %trace_pl181_command_response_pending.exit, label %trace_pl181_command_response_pending.exit.sink.split

bb.m:                                             ; preds = %trace_pl181_command_send.exit
  %i.ak = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i28 = icmp eq i32 %i.ak, 0
  br i1 %.not.i28, label %trace_pl181_command_response_pending.exit, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.al = load i16, ptr @_TRACE_PL181_COMMAND_SENT_DSTATE, align 2
  %.not1.i29 = icmp eq i16 %i.al, 0
  br i1 %.not1.i29, label %trace_pl181_command_response_pending.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load i32, ptr @qemu_loglevel, align 4
  %i.an = and i32 %i.am, 32768
  %.not2.i30 = icmp eq i32 %i.an, 0
  br i1 %.not2.i30, label %trace_pl181_command_response_pending.exit, label %trace_pl181_command_response_pending.exit.sink.split

bb.p:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ao = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i31 = icmp eq i32 %i.ao, 0
  br i1 %.not.i31, label %trace_pl181_command_response_pending.exit, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.ap = load i16, ptr @_TRACE_PL181_COMMAND_TIMEOUT_DSTATE, align 2
  %.not1.i32 = icmp eq i16 %i.ap, 0
  br i1 %.not1.i32, label %trace_pl181_command_response_pending.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load i32, ptr @qemu_loglevel, align 4
  %i.ar = and i32 %i.aq, 32768
  %.not2.i33 = icmp eq i32 %i.ar, 0
  br i1 %.not2.i33, label %trace_pl181_command_response_pending.exit, label %trace_pl181_command_response_pending.exit.sink.split

trace_pl181_command_response_pending.exit.sink.split: ; preds = %bb.r, %bb.o, %bb.l
  %.str.27.sink = phi ptr [ @.str.26, %bb.o ], [ @.str.25, %bb.l ], [ @.str.27, %bb.r ]
  %.sink39.ph = phi i32 [ 128, %bb.o ], [ 64, %bb.l ], [ 4, %bb.r ]
  call void (ptr, ...) @qemu_log(ptr noundef nonnull %.str.27.sink) #5
  br label %trace_pl181_command_response_pending.exit

end_hunk_0
