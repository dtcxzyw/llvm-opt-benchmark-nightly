Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/dw-i3c?download=true
inline.NumInlined: 379
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dw_i3c_ibi_finish:bb.a
  %.not110.i = icmp eq i32 %i.cj, 0
  br label %bb.n

._crit_edge116.i.loopexit:                        ; preds = %bb.v
  %i.ck = shl i32 %i.bo, 24
  %i.cl = and i32 %i.ck, 520093696
  br label %._crit_edge116.i

._crit_edge116.i:                                 ; preds = %._crit_edge116.i.loopexit, %.thread.i
  %.0124.i = phi i32 [ 16777216, %.thread.i ], [ %i.cl, %._crit_edge116.i.loopexit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 1200 ; 2 uses
  %i.cn = call i32 @fifo8_num_used(ptr noundef nonnull %i.cm) #6
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 1356 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = and i32 %i.cp, -536805377
  %i.cr = shl i32 %i.cn, 14
  %i.cs = add i32 %i.cr, 49152
  %i.ct = and i32 %i.cs, 16711680
  %i.cu = or disjoint i32 %i.cq, %.0124.i
  %i.cv = or disjoint i32 %i.cu, %i.ct
  store i32 %i.cv, ptr %i.co, align 4
  %i.cw = load i32, ptr %i.bb, align 4
  %i.cx = lshr i32 %i.cw, 24
  %i.cy = add nuw nsw i32 %i.cx, 1
  %i.cz = call i32 @fifo8_num_used(ptr noundef nonnull %i.cm) #6
  %i.da = zext i32 %i.cz to i64
  %i.db = add nuw nsw i64 %i.da, 3
  %i.dc = lshr i64 %i.db, 2
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = and i32 %i.cy, 255
  %.not109.i = icmp samesign ugt i32 %i.de, %i.dd
  br i1 %.not109.i, label %dw_i3c_ibi_queue_push.exit, label %bb.w

bb.n:                                             ; preds = %bb.v, %.lr.ph115.i
  %indvars.iv.i = phi i32 [ 0, %.lr.ph115.i ], [ %indvars.iv.next.i, %bb.v ]
  %i.df = call i32 @fifo8_num_used(ptr noundef nonnull %i.bh) #6
  %i.dg = icmp ult i32 %i.df, %i.bj
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dh = call i32 @fifo8_num_used(ptr noundef nonnull %i.bh) #6
  %i.di = load i32, ptr %i.bx, align 4
  %i.dj = and i32 %i.dh, 255
  %i.dk = and i32 %i.di, -16777472
  %i.dl = or disjoint i32 %i.dj, %i.dk
  %i.dm = or disjoint i32 %i.dl, 16777216
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dn = load i32, ptr %i.bx, align 4
  %i.do = and i32 %i.dn, -256
  %i.dp = or disjoint i32 %i.do, %i.bj
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dq = phi i32 [ %i.dp, %bb.p ], [ %i.dm, %bb.o ] ; 5 uses
  store i32 %i.dq, ptr %i.bx, align 4
  %i.dr = trunc i32 %i.dq to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.dr) #6
  %i.ds = lshr i32 %i.dq, 8
  %i.dt = trunc i32 %i.ds to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.dt) #6
  %i.du = lshr i32 %i.dq, 16
  %i.dv = trunc i32 %i.du to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.dv) #6
  %i.dw = lshr i32 %i.dq, 24
  %i.dx = trunc nuw i32 %i.dw to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.dx) #6
  br i1 %.not118.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.t
  %.0106111.i = phi i8 [ %i.em, %bb.t ], [ 0, %bb.q ] ; 2 uses
  %i.dy = call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.bh) #6
  br i1 %i.dy, label %._crit_edge.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.dz = call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.bh) #6
  %i.ea = and i8 %.0106111.i, 3                   ; 2 uses
  %i.eb = zext nneg i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %i.eb
  store i8 %i.dz, ptr %i.ec, align 1
  %i.ed = icmp eq i8 %i.ea, 3
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = load i32, ptr %1, align 4               ; 4 uses
  %i.ef = trunc i32 %i.ee to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.ef) #6
  %i.eg = lshr i32 %i.ee, 8
  %i.eh = trunc i32 %i.eg to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.eh) #6
  %i.ei = lshr i32 %i.ee, 16
  %i.ej = trunc i32 %i.ei to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.ej) #6
  %i.ek = lshr i32 %i.ee, 24
  %i.el = trunc nuw i32 %i.ek to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.el) #6
  store i32 0, ptr %1, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.em = add nuw nsw i8 %.0106111.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i8 %i.em, %spec.store.select1.i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %bb.t, %.lr.ph.i, %bb.q
  br i1 %.not110.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  %i.en = load i32, ptr %1, align 4               ; 4 uses
  %i.eo = trunc i32 %i.en to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.eo) #6
  %i.ep = lshr i32 %i.en, 8
  %i.eq = trunc i32 %i.ep to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.eq) #6
  %i.er = lshr i32 %i.en, 16
  %i.es = trunc i32 %i.er to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.es) #6
  %i.et = lshr i32 %i.en, 24
  %i.eu = trunc nuw i32 %i.et to i8
  call void @fifo8_push(ptr noundef nonnull %i.ci, i8 noundef zeroext %i.eu) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %i.ev = load i32, ptr %i.bx, align 4
  %i.ew = and i32 %i.ev, -256
  store i32 %i.ew, ptr %i.bx, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1 ; 2 uses
  %i.ex = icmp samesign ugt i32 %i.bv, %indvars.iv.next.i
  br i1 %i.ex, label %bb.n, label %._crit_edge116.i.loopexit, !llvm.loop !12

bb.w:                                             ; preds = %._crit_edge116.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 1340 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = or i32 %i.ez, 4                         ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 1348
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = and i32 %i.fc, %i.fa
  %i.fe = icmp ne i32 %i.fd, 0
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 1088
  %i.fg = load ptr, ptr %i.ff, align 16
  %i.fh = zext i1 %i.fe to i32
  call void @qemu_set_irq(ptr noundef %i.fg, i32 noundef %i.fh) #6
  br label %dw_i3c_ibi_queue_push.exit

dw_i3c_ibi_queue_push.exit:                       ; preds = %bb.l, %._crit_edge116.i, %bb.w
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 1364 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = and i32 %i.fj, -4144897
  store i32 %i.fk, ptr %i.fi, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 1224
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 1228
  store i32 0, ptr %i.fm, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.g, i64 1256
  store i8 0, ptr %i.fl, align 8
  store i32 0, ptr %i.fn, align 8
  ret i32 0
}

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @dw_i3c_read(ptr noundef %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 18, ptr noundef nonnull @__func__.DW_I3C) #6 ; 25 uses
  %i.b = lshr i64 %1, 2                           ; 2 uses
  %i.c = trunc i64 %i.b to i32
  switch i32 %i.c, label %bb.v [
    i32 3, label %dw_i3c_ibi_queue_r.exit
    i32 13, label %dw_i3c_ibi_queue_r.exit
    i32 18, label %dw_i3c_ibi_queue_r.exit
    i32 6, label %bb.b
    i32 15, label %bb.e
    i32 5, label %bb.f
    i32 4, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1200 ; 7 uses
  %i.e = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.d) #6
  br i1 %i.e, label %dw_i3c_ibi_queue_r.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.d) #6
  %i.g = zext i8 %i.f to i32
  %i.h = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.d) #6
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = or disjoint i32 %i.j, %i.g
  %i.l = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.d) #6
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 16
  %i.o = or disjoint i32 %i.n, %i.k
  %i.p = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.d) #6
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw i32 %i.q, 24
  %i.s = or disjoint i32 %i.r, %i.o               ; 2 uses
  %i.t = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.d) #6
  %3 = shl i32 %i.t, 14
  %4 = add i32 %3, 49152
  %5 = lshr i32 %4, 16
  %6 = trunc i32 %5 to i8
  %7 = getelementptr i8, ptr %i.a, i64 1358
  store i8 %6, ptr %7, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1308
  %i.v = load i32, ptr %i.u, align 4
  %i.w = lshr i32 %i.v, 24
  %i.x = add nuw nsw i32 %i.w, 1
  %i.y = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.d) #6
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 3
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = and i32 %i.x, 255
  %i.ae = icmp samesign ugt i32 %i.ad, %i.ac
  br i1 %i.ae, label %bb.d, label %dw_i3c_ibi_queue_r.exit

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, -5                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, %i.ah
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.an = load ptr, ptr %i.am, align 16
  %i.ao = zext i1 %i.al to i32
  tail call void @qemu_set_irq(ptr noundef %i.an, i32 noundef %i.ao) #6
  br label %dw_i3c_ibi_queue_r.exit

bb.e:                                             ; preds = %bb.a
  %i.ap = getelementptr i8, ptr %i.a, i64 1340
  %.val = load i32, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %i.a, i64 1344
  %.val12 = load i32, ptr %i.aq, align 16
  %i.ar = and i32 %.val12, %.val
  br label %dw_i3c_ibi_queue_r.exit

bb.f:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1176 ; 7 uses
  %i.at = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.as) #6
  br i1 %i.at, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.au = tail call ptr @object_get_canonical_path(ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.av = load i32, ptr @qemu_loglevel, align 4
  %i.aw = and i32 %i.av, 2048
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.22, ptr noundef %i.au) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @g_free(ptr noundef %i.au) #6
  br label %dw_i3c_ibi_queue_r.exit

bb.j:                                             ; preds = %bb.f
  %i.ax = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.as) #6
  %i.ay = zext i8 %i.ax to i32
  %i.az = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.as) #6
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = or disjoint i32 %i.bb, %i.ay
  %i.bd = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.as) #6
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 16
  %i.bg = or disjoint i32 %i.bf, %i.bc
  %i.bh = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.as) #6
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw i32 %i.bi, 24
  %i.bk = or disjoint i32 %i.bj, %i.bg            ; 5 uses
  %i.bl = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.as) #6
  %8 = shl i32 %i.bl, 14
  %9 = add i32 %8, 49152
  %10 = lshr i32 %9, 16
  %11 = trunc i32 %10 to i8
  %12 = getelementptr i8, ptr %i.a, i64 1362
  store i8 %11, ptr %12, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  %i.bn = load i32, ptr %i.bm, align 16           ; 2 uses
  %i.bo = lshr i32 %i.bn, 8
  %i.bp = and i32 %i.bo, 7
  %i.bq = and i32 %i.bn, 1792
  %.not.i.i = icmp eq i32 %i.bq, 0
  %i.br = shl nuw nsw i32 2, %i.bp
  %i.bs = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.as) #6
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add nuw nsw i64 %i.bt, 3
  %i.bv = lshr i64 %i.bu, 2
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = and i32 %i.br, 254
  %i.by = select i1 %.not.i.i, i32 1, i32 %i.bx
  %i.bz = icmp samesign ugt i32 %i.by, %i.bw
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = and i32 %i.cb, -3                       ; 2 uses
  store i32 %i.cc, ptr %i.ca, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = and i32 %i.ce, %i.cc
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ci = load ptr, ptr %i.ch, align 16
  %i.cj = zext i1 %i.cg to i32
  tail call void @qemu_set_irq(ptr noundef %i.ci, i32 noundef %i.cj) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 1264
  %i.cl = load i8, ptr %i.ck, align 16
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i21.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i21.i, label %dw_i3c_ibi_queue_r.exit.thread, label %bb.m, !prof !7

dw_i3c_ibi_queue_r.exit.thread:                   ; preds = %bb.l
  %.018 = zext i32 %i.bk to i64
  br label %trace_dw_i3c_read.exit

bb.m:                                             ; preds = %bb.l
  %i.co = load i16, ptr @_TRACE_DW_I3C_POP_RX_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.co, 0
  br i1 %.not2.i.i, label %dw_i3c_ibi_queue_r.exit.thread21, label %bb.n

dw_i3c_ibi_queue_r.exit.thread21:                 ; preds = %bb.m
  %.023 = zext i32 %i.bk to i64
  br label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.cp = load i32, ptr @qemu_loglevel, align 4
  %i.cq = and i32 %i.cp, 32768
  %.not3.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not3.i.i, label %dw_i3c_ibi_queue_r.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.23, i32 noundef range(i32 0, 256) %i.cm, i32 noundef %i.bk) #6
  br label %dw_i3c_ibi_queue_r.exit

bb.p:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 1128 ; 7 uses
  %i.cs = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.cr) #6
  br i1 %i.cs, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ct = tail call ptr @object_get_canonical_path(ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.cu = load i32, ptr @qemu_loglevel, align 4
  %i.cv = and i32 %i.cu, 2048
  %.not.i15 = icmp eq i32 %i.cv, 0
  br i1 %.not.i15, label %bb.s, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, ptr noundef %i.ct) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @g_free(ptr noundef %i.ct) #6
  br label %dw_i3c_ibi_queue_r.exit

bb.t:                                             ; preds = %bb.p
  %i.cw = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.cr) #6
  %i.cx = zext i8 %i.cw to i32
  %i.cy = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.cr) #6
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 8
  %i.db = or disjoint i32 %i.da, %i.cx
  %i.dc = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.cr) #6
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 16
  %i.df = or disjoint i32 %i.de, %i.db
  %i.dg = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.cr) #6
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw i32 %i.dh, 24
  %i.dj = or disjoint i32 %i.di, %i.df            ; 2 uses
  %i.dk = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.cr) #6
  %13 = shl i32 %i.dk, 6
  %14 = add i32 %13, 192
  %15 = lshr i32 %14, 8
  %16 = trunc i32 %15 to i8
  %17 = getelementptr i8, ptr %i.a, i64 1357
  store i8 %16, ptr %17, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 1308
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = lshr i32 %i.dm, 8
  %i.do = add nuw nsw i32 %i.dn, 1
  %i.dp = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.cr) #6
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 3
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = and i32 %i.do, 255
  %i.dv = icmp samesign ugt i32 %i.du, %i.dt
  br i1 %i.dv, label %bb.u, label %dw_i3c_ibi_queue_r.exit

bb.u:                                             ; preds = %bb.t
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = and i32 %i.dx, -17                      ; 2 uses
  store i32 %i.dy, ptr %i.dw, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = and i32 %i.ea, %i.dy
  %i.ec = icmp ne i32 %i.eb, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ee = load ptr, ptr %i.ed, align 16
  %i.ef = zext i1 %i.ec to i32
  tail call void @qemu_set_irq(ptr noundef %i.ee, i32 noundef %i.ef) #6
  br label %dw_i3c_ibi_queue_r.exit

bb.v:                                             ; preds = %bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.eh = and i64 %i.b, 4294967295
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4
  br label %dw_i3c_ibi_queue_r.exit

dw_i3c_ibi_queue_r.exit:                          ; preds = %bb.u, %bb.t, %bb.s, %bb.o, %bb.n, %bb.i, %bb.d, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a, %bb.v, %bb.e
  %.0.shrunk.ph = phi i32 [ %i.dj, %bb.t ], [ %i.dj, %bb.u ], [ 0, %bb.s ], [ %i.bk, %bb.n ], [ 0, %bb.i ], [ %i.s, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ], [ %i.s, %bb.c ], [ %i.ar, %bb.e ], [ 0, %bb.a ], [ %i.bk, %bb.o ], [ %i.ej, %bb.v ]
  %.pr = load i32, ptr @trace_events_enabled_count, align 4
  %.0 = zext i32 %.0.shrunk.ph to i64             ; 2 uses
  %.not.i16 = icmp eq i32 %.pr, 0
  br i1 %.not.i16, label %trace_dw_i3c_read.exit, label %dw_i3c_ibi_queue_r.exit._crit_edge, !prof !15

dw_i3c_ibi_queue_r.exit._crit_edge:               ; preds = %dw_i3c_ibi_queue_r.exit
  %.in.in.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 1264
  %.in.pre = load i8, ptr %.in.in.phi.trans.insert, align 16
  %.pre = zext i8 %.in.pre to i32
  br label %bb.w

bb.w:                                             ; preds = %dw_i3c_ibi_queue_r.exit._crit_edge, %dw_i3c_ibi_queue_r.exit.thread21
  %.pre-phi = phi i32 [ %.pre, %dw_i3c_ibi_queue_r.exit._crit_edge ], [ %i.cm, %dw_i3c_ibi_queue_r.exit.thread21 ]
  %.025 = phi i64 [ %.0, %dw_i3c_ibi_queue_r.exit._crit_edge ], [ %.023, %dw_i3c_ibi_queue_r.exit.thread21 ] ; 4 uses
  %i.ek = load i16, ptr @_TRACE_DW_I3C_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ek, 0
  br i1 %.not3.i, label %trace_dw_i3c_read.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = load i32, ptr @qemu_loglevel, align 4
  %i.em = and i32 %i.el, 32768
  %.not4.i = icmp eq i32 %i.em, 0
  br i1 %.not4.i, label %trace_dw_i3c_read.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.25, i32 noundef range(i32 0, 256) %.pre-phi, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %.025) #6
  br label %trace_dw_i3c_read.exit

trace_dw_i3c_read.exit:                           ; preds = %dw_i3c_ibi_queue_r.exit.thread, %dw_i3c_ibi_queue_r.exit, %bb.w, %bb.x, %bb.y
  %.020 = phi i64 [ %.018, %dw_i3c_ibi_queue_r.exit.thread ], [ %.0, %dw_i3c_ibi_queue_r.exit ], [ %.025, %bb.w ], [ %.025, %bb.x ], [ %.025, %bb.y ]
  ret i64 %.020
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @dw_i3c_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 18, ptr noundef nonnull @__func__.DW_I3C) #6 ; 62 uses
  %i.b = lshr i64 %1, 2                           ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = trunc i64 %2 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1264 ; 2 uses
  %i.f = load i8, ptr %i.e, align 16
  %i.g = zext i8 %i.f to i32
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_dw_i3c_write.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr @_TRACE_DW_I3C_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.i, 0
  br i1 %.not3.i, label %trace_dw_i3c_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not4.i = icmp eq i32 %i.k, 0
  br i1 %.not4.i, label %trace_dw_i3c_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.27, i32 noundef range(i32 0, 256) %i.g, i64 noundef %1, i64 noundef %2) #6
  br label %trace_dw_i3c_write.exit

trace_dw_i3c_write.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.l = and i64 %i.b, 4294967295                 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @dw_i3c_ro, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  %i.o = xor i32 %i.n, -1
  %i.p = and i32 %i.o, %i.d                       ; 24 uses
  switch i32 %i.c, label %bb.at [
    i32 2, label %bb.e
    i32 4, label %bb.e
    i32 6, label %bb.e
    i32 19, label %bb.e
    i32 21, label %bb.e
    i32 22, label %bb.e
    i32 23, label %bb.e
    i32 27, label %bb.e
    i32 30, label %bb.e
    i32 31, label %bb.e
    i32 32, label %bb.e
    i32 56, label %bb.e
    i32 57, label %bb.e
    i32 58, label %bb.e
    i32 0, label %bb.g
    i32 5, label %bb.k
    i32 3, label %bb.t
    i32 13, label %bb.z
    i32 15, label %bb.ap
    i32 16, label %bb.aq
    i32 17, label %bb.ar
    i32 18, label %bb.as
  ]

bb.e:                                             ; preds = %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit, %trace_dw_i3c_write.exit
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 2048
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %dw_i3c_push_tx.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.dw_i3c_write, i64 noundef %1, i64 noundef %2) #6
  br label %dw_i3c_push_tx.exit

bb.g:                                             ; preds = %trace_dw_i3c_write.exit
  %i.s = and i32 %i.p, 1073741824
  %.not.i29 = icmp eq i32 %i.s, 0
  br i1 %.not.i29, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @dw_i3c_cmd_queue_execute(ptr noundef nonnull %i.a)
  %i.t = and i32 %i.p, -1073741825
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i32 [ %i.t, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %i.u = and i32 %.0.i, 536870912
  %.not33.i = icmp eq i32 %i.u, 0
  br i1 %.not33.i, label %dw_i3c_ctrl_w.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1096 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @legacy_i2c_end_transfer(ptr noundef %i.w) #6
  %i.x = load ptr, ptr %i.v, align 8
  tail call void @i3c_end_transfer(ptr noundef %i.x) #6
  %i.y = and i32 %.0.i, -536870913
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = or i32 %i.aa, 32                        ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, %i.ab
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ah = load ptr, ptr %i.ag, align 16
  %i.ai = zext i1 %i.af to i32
  tail call void @qemu_set_irq(ptr noundef %i.ah, i32 noundef %i.ai) #6
  br label %dw_i3c_ctrl_w.exit

dw_i3c_ctrl_w.exit:                               ; preds = %bb.i, %bb.j
  %.1.i = phi i32 [ %i.y, %bb.j ], [ %.0.i, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1364 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, -4144897
  store i32 %i.am, ptr %i.ak, align 4
  store i32 %.1.i, ptr %i.aj, align 16
  br label %dw_i3c_push_tx.exit

bb.k:                                             ; preds = %trace_dw_i3c_write.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1152 ; 7 uses
  %i.ao = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.an) #6
  %i.ap = icmp ult i32 %i.ao, 4
  br i1 %i.ap, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call ptr @object_get_canonical_path(ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.ar = load i32, ptr @qemu_loglevel, align 4
  %i.as = and i32 %i.ar, 2048
  %.not.i30 = icmp eq i32 %i.as, 0
  br i1 %.not.i30, label %bb.n, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.63, ptr noundef %i.aq) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @g_free(ptr noundef %i.aq) #6
  br label %dw_i3c_push_tx.exit

bb.o:                                             ; preds = %bb.k
  %i.at = load i8, ptr %i.e, align 16
  %i.au = zext i8 %i.at to i32
  %i.av = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i, label %trace_dw_i3c_push_tx.exit.i, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.aw = load i16, ptr @_TRACE_DW_I3C_PUSH_TX_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not2.i.i, label %trace_dw_i3c_push_tx.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load i32, ptr @qemu_loglevel, align 4
  %i.ay = and i32 %i.ax, 32768
  %.not3.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not3.i.i, label %trace_dw_i3c_push_tx.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.64, i32 noundef range(i32 0, 256) %i.au, i32 noundef %i.p) #6
  br label %trace_dw_i3c_push_tx.exit.i

trace_dw_i3c_push_tx.exit.i:                      ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.az = trunc i32 %i.p to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.an, i8 noundef zeroext %i.az) #6
  %i.ba = lshr i32 %i.p, 8
  %i.bb = trunc i32 %i.ba to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.an, i8 noundef zeroext %i.bb) #6
  %i.bc = lshr i32 %i.p, 16
  %i.bd = trunc i32 %i.bc to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.an, i8 noundef zeroext %i.bd) #6
  %i.be = lshr i32 %i.p, 24
  %i.bf = trunc nuw i32 %i.be to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.an, i8 noundef zeroext %i.bf) #6
  %i.bg = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.an) #6
  %i.bh = add i32 %i.bg, 3
  %i.bi = lshr i32 %i.bh, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 1360
  %4 = trunc i32 %i.bi to i8
  store i8 %4, ptr %i.bj, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  %i.bl = load i32, ptr %i.bk, align 16
  %i.bm = and i32 %i.bl, 7                        ; 2 uses
  %.not.i20.i = icmp eq i32 %i.bm, 0
  %i.bn = shl nuw nsw i32 2, %i.bm
  %i.bo = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.an) #6
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add nuw nsw i64 %i.bp, 3
  %i.br = lshr i64 %i.bq, 2
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = and i32 %i.bn, 254
  %i.bu = select i1 %.not.i20.i, i32 1, i32 %i.bt
  %i.bv = icmp samesign ugt i32 %i.bu, %i.bs
  br i1 %i.bv, label %bb.s, label %dw_i3c_push_tx.exit

bb.s:                                             ; preds = %trace_dw_i3c_push_tx.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = and i32 %i.bx, -2                       ; 2 uses
  store i32 %i.by, ptr %i.bw, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, %i.by
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ce = load ptr, ptr %i.cd, align 16
  %i.cf = zext i1 %i.cc to i32
  tail call void @qemu_set_irq(ptr noundef %i.ce, i32 noundef %i.cf) #6
  br label %dw_i3c_push_tx.exit

bb.t:                                             ; preds = %trace_dw_i3c_write.exit
  %i.cg = and i32 %i.p, 7                         ; 2 uses
  %trunc.i = trunc nuw nsw i32 %i.cg to i8
  switch i8 %trunc.i, label %bb.w [
    i8 0, label %bb.u
    i8 3, label %bb.u
    i8 1, label %bb.v
    i8 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  tail call fastcc void @dw_i3c_cmd_queue_push(ptr noundef nonnull %i.a, i32 noundef %i.p)
  tail call fastcc void @dw_i3c_cmd_queue_execute(ptr noundef nonnull %i.a)
  br label %dw_i3c_push_tx.exit

bb.v:                                             ; preds = %bb.t, %bb.t
  tail call fastcc void @dw_i3c_cmd_queue_push(ptr noundef nonnull %i.a, i32 noundef %i.p)
  br label %dw_i3c_push_tx.exit

bb.w:                                             ; preds = %bb.t
  %i.ch = tail call ptr @object_get_canonical_path(ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.ci = load i32, ptr @qemu_loglevel, align 4
  %i.cj = and i32 %i.ci, 2048
  %.not.i31 = icmp eq i32 %i.cj, 0
  br i1 %.not.i31, label %bb.y, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.65, ptr noundef %i.ch, i32 noundef %i.cg) #6
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @g_free(ptr noundef %i.ch) #6
  br label %dw_i3c_push_tx.exit

bb.z:                                             ; preds = %trace_dw_i3c_write.exit
  %i.ck = and i32 %i.p, 1
  %.not.i32 = icmp eq i32 %i.ck, 0
  br i1 %.not.i32, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #6
  %i.cm = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.cl, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef 18, ptr noundef nonnull @__func__.DW_I3C) #6 ; 26 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1264
  %i.co = load i8, ptr %i.cn, align 16
  %i.cp = zext i8 %i.co to i32
  %i.cq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i, label %trace_dw_i3c_reset.exit.i.i, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %bb.aa
  %i.cr = load i16, ptr @_TRACE_DW_I3C_RESET_DSTATE, align 2
  %.not1.i.i.i = icmp eq i16 %i.cr, 0
  br i1 %.not1.i.i.i, label %trace_dw_i3c_reset.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = load i32, ptr @qemu_loglevel, align 4
  %i.ct = and i32 %i.cs, 32768
  %.not2.i.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not2.i.i.i, label %trace_dw_i3c_reset.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.68, i32 noundef range(i32 0, 256) %i.cp) #6
  br label %trace_dw_i3c_reset.exit.i.i

trace_dw_i3c_reset.exit.i.i:                      ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 1280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.cu, ptr noundef nonnull align 16 dereferenceable(4096) @dw_i3c_resets, i64 noundef 4096, i1 noundef false) #6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 1270
  %i.cw = load i32, ptr %i.cv, align 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 1372
  store i32 %i.cw, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 1274
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 1376 ; 2 uses
  %i.db = load i32, ptr %i.da, align 16
  %i.dc = and i32 %i.db, -524288
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 1276
  %i.de = load i16, ptr %i.dd, align 4
  %i.df = and i16 %i.cz, 4095
  %.masked.i.i = zext nneg i16 %i.df to i32
  %i.dg = or disjoint i32 %i.dc, %.masked.i.i
  %i.dh = and i16 %i.de, 127
  %i.di = zext nneg i16 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 12
  %i.dk = or disjoint i32 %i.dj, %i.dg
  store i32 %i.dk, ptr %i.da, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 1265
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %i.cm, i64 1356 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 1266
  %i.dq = load i16, ptr %i.dp, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cm, i64 1360
  %i.ds = and i16 %i.dq, 255
  %i.dt = zext nneg i16 %i.ds to i32
  %i.du = load <2 x i32>, ptr %i.do, align 4
  %i.dv = and <2 x i32> %i.du, splat (i32 -256)
  %i.dw = insertelement <2 x i32> poison, i32 %i.dn, i64 0
  %i.dx = insertelement <2 x i32> %i.dw, i32 %i.dt, i64 1
  %i.dy = or disjoint <2 x i32> %i.dv, %i.dx
  store <2 x i32> %i.dy, ptr %i.do, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cm, i64 1104 ; 3 uses
  tail call void @fifo8_reset(ptr noundef nonnull %i.dz) #6
  %i.ea = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.dz) #6
  %i.eb = add i32 %i.ea, 3
  %i.ec = lshr i32 %i.eb, 2
  %5 = trunc i32 %i.ec to i8
  store i8 %5, ptr %i.do, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cm, i64 1308
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = and i32 %i.ee, 255
  %i.eg = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.dz) #6
  %i.eh = zext i32 %i.eg to i64
  %i.ei = add nuw nsw i64 %i.eh, 3
  %i.ej = lshr i64 %i.ei, 2
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %.not.i50.i.i = icmp samesign ugt i32 %i.ef, %i.ek
  br i1 %.not.i50.i.i, label %dw_i3c_reset.exit.i, label %bb.ae

bb.ae:                                            ; preds = %trace_dw_i3c_reset.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.cm, i64 1340 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4
  %i.en = or i32 %i.em, 8                         ; 2 uses
  store i32 %i.en, ptr %i.el, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cm, i64 1348
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = and i32 %i.ep, %i.en
  %i.er = icmp ne i32 %i.eq, 0
  %i.es = getelementptr inbounds nuw i8, ptr %i.cm, i64 1088
  %i.et = load ptr, ptr %i.es, align 16
  %i.eu = zext i1 %i.er to i32
  tail call void @qemu_set_irq(ptr noundef %i.et, i32 noundef %i.eu) #6
  br label %dw_i3c_reset.exit.i

dw_i3c_reset.exit.i:                              ; preds = %bb.ae, %trace_dw_i3c_reset.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cm, i64 1128 ; 4 uses
  tail call void @fifo8_reset(ptr noundef nonnull %i.ev) #6
  %i.ew = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.ev) #6
  %6 = shl i32 %i.ew, 6
  %7 = add i32 %6, 192
  %8 = lshr i32 %7, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr i8, ptr %i.cm, i64 1357
  store i8 %9, ptr %10, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cm, i64 1340 ; 8 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = and i32 %i.ey, -17                      ; 2 uses
  store i32 %i.ez, ptr %i.ex, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cm, i64 1348 ; 4 uses
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = and i32 %i.fb, %i.ez
  %i.fd = icmp ne i32 %i.fc, 0
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cm, i64 1088 ; 4 uses
  %i.ff = load ptr, ptr %i.fe, align 16
  %i.fg = zext i1 %i.fd to i32
  tail call void @qemu_set_irq(ptr noundef %i.ff, i32 noundef %i.fg) #6
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cm, i64 1200
  tail call void @fifo8_reset(ptr noundef nonnull %i.fh) #6
  %i.fi = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.ev) #6
  %11 = shl i32 %i.fi, 14
  %12 = add i32 %11, 49152
  %13 = lshr i32 %12, 16
  %14 = trunc i32 %13 to i8
  %15 = getelementptr i8, ptr %i.cm, i64 1358
  store i8 %14, ptr %15, align 2
  %i.fj = load i32, ptr %i.ex, align 4
  %i.fk = and i32 %i.fj, -5                       ; 2 uses
  store i32 %i.fk, ptr %i.ex, align 4
  %i.fl = load i32, ptr %i.fa, align 4
  %i.fm = and i32 %i.fl, %i.fk
  %i.fn = icmp ne i32 %i.fm, 0
  %i.fo = load ptr, ptr %i.fe, align 16
  %i.fp = zext i1 %i.fn to i32
  tail call void @qemu_set_irq(ptr noundef %i.fo, i32 noundef %i.fp) #6
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cm, i64 1152 ; 2 uses
  tail call void @fifo8_reset(ptr noundef nonnull %i.fq) #6
  %i.fr = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.fq) #6
  %i.fs = add i32 %i.fr, 3
  %i.ft = lshr i32 %i.fs, 2
  %16 = trunc i32 %i.ft to i8
  store i8 %16, ptr %i.dr, align 16
  %i.fu = load i32, ptr %i.ex, align 4
  %i.fv = or i32 %i.fu, 1                         ; 2 uses
  store i32 %i.fv, ptr %i.ex, align 4
  %i.fw = load i32, ptr %i.fa, align 4
  %i.fx = and i32 %i.fw, %i.fv
  %i.fy = icmp ne i32 %i.fx, 0
  %i.fz = load ptr, ptr %i.fe, align 16
  %i.ga = zext i1 %i.fy to i32
  tail call void @qemu_set_irq(ptr noundef %i.fz, i32 noundef %i.ga) #6
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cm, i64 1176
  tail call void @fifo8_reset(ptr noundef nonnull %i.gb) #6
  %i.gc = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.ev) #6
  %17 = shl i32 %i.gc, 14
  %18 = add i32 %17, 49152
  %19 = lshr i32 %18, 16
  %20 = trunc i32 %19 to i8
  %21 = getelementptr i8, ptr %i.cm, i64 1362
  store i8 %20, ptr %21, align 2
  %i.gd = load i32, ptr %i.ex, align 4
  %i.ge = and i32 %i.gd, -3                       ; 2 uses
  store i32 %i.ge, ptr %i.ex, align 4
  %i.gf = load i32, ptr %i.fa, align 4
  %i.gg = and i32 %i.gf, %i.ge
  %i.gh = icmp ne i32 %i.gg, 0
  %i.gi = load ptr, ptr %i.fe, align 16
  %i.gj = zext i1 %i.gh to i32
  tail call void @qemu_set_irq(ptr noundef %i.gi, i32 noundef %i.gj) #6
  br label %bb.af

bb.af:                                            ; preds = %dw_i3c_reset.exit.i, %bb.z
  %i.gk = and i32 %i.p, 2
  %.not11.i = icmp eq i32 %i.gk, 0
  br i1 %.not11.i, label %dw_i3c_cmd_queue_reset.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 3 uses
  tail call void @fifo8_reset(ptr noundef nonnull %i.gl) #6
  %i.gm = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.gl) #6
  %i.gn = add i32 %i.gm, 3
  %i.go = lshr i32 %i.gn, 2
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 1356
  %22 = trunc i32 %i.go to i8
  store i8 %22, ptr %i.gp, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 1308
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = and i32 %i.gr, 255
  %i.gt = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.gl) #6
  %i.gu = zext i32 %i.gt to i64
  %i.gv = add nuw nsw i64 %i.gu, 3
  %i.gw = lshr i64 %i.gv, 2
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  %.not.i.i33 = icmp samesign ugt i32 %i.gs, %i.gx
  br i1 %.not.i.i33, label %dw_i3c_cmd_queue_reset.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = or i32 %i.gz, 8                         ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = and i32 %i.hc, %i.ha
  %i.he = icmp ne i32 %i.hd, 0
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.hg = load ptr, ptr %i.hf, align 16
  %i.hh = zext i1 %i.he to i32
  tail call void @qemu_set_irq(ptr noundef %i.hg, i32 noundef %i.hh) #6
  br label %dw_i3c_cmd_queue_reset.exit.i

dw_i3c_cmd_queue_reset.exit.i:                    ; preds = %bb.ah, %bb.ag, %bb.af
  %i.hi = and i32 %i.p, 4
  %.not12.i = icmp eq i32 %i.hi, 0
  br i1 %.not12.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %dw_i3c_cmd_queue_reset.exit.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 1128 ; 2 uses
  tail call void @fifo8_reset(ptr noundef nonnull %i.hj) #6
  %i.hk = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.hj) #6
  %23 = shl i32 %i.hk, 6
  %24 = add i32 %23, 192
  %25 = lshr i32 %24, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr i8, ptr %i.a, i64 1357
  store i8 %26, ptr %27, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = and i32 %i.hm, -17                      ; 2 uses
  store i32 %i.hn, ptr %i.hl, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.hp = load i32, ptr %i.ho, align 4
  %i.hq = and i32 %i.hp, %i.hn
  %i.hr = icmp ne i32 %i.hq, 0
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ht = load ptr, ptr %i.hs, align 16
  %i.hu = zext i1 %i.hr to i32
  tail call void @qemu_set_irq(ptr noundef %i.ht, i32 noundef %i.hu) #6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %dw_i3c_cmd_queue_reset.exit.i
  %i.hv = and i32 %i.p, 8
  %.not13.i = icmp eq i32 %i.hv, 0
  br i1 %.not13.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 1152 ; 2 uses
  tail call void @fifo8_reset(ptr noundef nonnull %i.hw) #6
  %i.hx = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.hw) #6
  %i.hy = add i32 %i.hx, 3
  %i.hz = lshr i32 %i.hy, 2
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 1360
  %28 = trunc i32 %i.hz to i8
  store i8 %28, ptr %i.ia, align 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = or i32 %i.ic, 1                         ; 2 uses
  store i32 %i.id, ptr %i.ib, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = and i32 %i.if, %i.id
  %i.ih = icmp ne i32 %i.ig, 0
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ij = load ptr, ptr %i.ii, align 16
  %i.ik = zext i1 %i.ih to i32
  tail call void @qemu_set_irq(ptr noundef %i.ij, i32 noundef %i.ik) #6
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.il = and i32 %i.p, 16
  %.not14.i = icmp eq i32 %i.il, 0
  br i1 %.not14.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  tail call void @fifo8_reset(ptr noundef nonnull %i.im) #6
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  %i.io = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.in) #6
  %29 = shl i32 %i.io, 14
  %30 = add i32 %29, 49152
  %31 = lshr i32 %30, 16
  %32 = trunc i32 %31 to i8
  %33 = getelementptr i8, ptr %i.a, i64 1362
  store i8 %32, ptr %33, align 2
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = and i32 %i.iq, -3                       ; 2 uses
  store i32 %i.ir, ptr %i.ip, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = and i32 %i.it, %i.ir
  %i.iv = icmp ne i32 %i.iu, 0
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.ix = load ptr, ptr %i.iw, align 16
  %i.iy = zext i1 %i.iv to i32
  tail call void @qemu_set_irq(ptr noundef %i.ix, i32 noundef %i.iy) #6
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.iz = and i32 %i.p, 32
  %.not15.i = icmp eq i32 %i.iz, 0
  br i1 %.not15.i, label %dw_i3c_push_tx.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  tail call void @fifo8_reset(ptr noundef nonnull %i.ja) #6
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  %i.jc = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.jb) #6
  %34 = shl i32 %i.jc, 14
  %35 = add i32 %34, 49152
  %36 = lshr i32 %35, 16
  %37 = trunc i32 %36 to i8
  %38 = getelementptr i8, ptr %i.a, i64 1358
  store i8 %37, ptr %38, align 2
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = and i32 %i.je, -5                       ; 2 uses
  store i32 %i.jf, ptr %i.jd, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.jh = load i32, ptr %i.jg, align 4
  %i.ji = and i32 %i.jh, %i.jf
  %i.jj = icmp ne i32 %i.ji, 0
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.jl = load ptr, ptr %i.jk, align 16
  %i.jm = zext i1 %i.jj to i32
  tail call void @qemu_set_irq(ptr noundef %i.jl, i32 noundef %i.jm) #6
  br label %dw_i3c_push_tx.exit

bb.ap:                                            ; preds = %trace_dw_i3c_write.exit
  %i.jn = and i32 %i.p, 16352
  %i.jo = xor i32 %i.jn, -1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 1340 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = and i32 %i.jq, %i.jo                    ; 2 uses
  store i32 %i.jr, ptr %i.jp, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = and i32 %i.jt, %i.jr
  %i.jv = icmp ne i32 %i.ju, 0
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.jx = load ptr, ptr %i.jw, align 16
  %i.jy = zext i1 %i.jv to i32
  tail call void @qemu_set_irq(ptr noundef %i.jx, i32 noundef %i.jy) #6
  br label %dw_i3c_push_tx.exit

bb.aq:                                            ; preds = %trace_dw_i3c_write.exit
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  store i32 %i.p, ptr %i.jz, align 16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 1340
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = and i32 %i.kd, %i.kb
  %i.kf = icmp ne i32 %i.ke, 0
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.kh = load ptr, ptr %i.kg, align 16
  %i.ki = zext i1 %i.kf to i32
  tail call void @qemu_set_irq(ptr noundef %i.kh, i32 noundef %i.ki) #6
  br label %dw_i3c_push_tx.exit

bb.ar:                                            ; preds = %trace_dw_i3c_write.exit
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  store i32 %i.p, ptr %i.kj, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 1340
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = and i32 %i.kl, %i.p
  %i.kn = icmp ne i32 %i.km, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.kp = load ptr, ptr %i.ko, align 16
  %i.kq = zext i1 %i.kn to i32
  tail call void @qemu_set_irq(ptr noundef %i.kp, i32 noundef %i.kq) #6
  br label %dw_i3c_push_tx.exit

bb.as:                                            ; preds = %trace_dw_i3c_write.exit
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 1340
  store i32 %i.p, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 1348
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = and i32 %i.kt, %i.p
  %i.kv = icmp ne i32 %i.ku, 0
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.kx = load ptr, ptr %i.kw, align 16
  %i.ky = zext i1 %i.kv to i32
  tail call void @qemu_set_irq(ptr noundef %i.kx, i32 noundef %i.ky) #6
  br label %dw_i3c_push_tx.exit

bb.at:                                            ; preds = %trace_dw_i3c_write.exit
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.l
  store i32 %i.p, ptr %i.la, align 4
  br label %dw_i3c_push_tx.exit

dw_i3c_push_tx.exit:                              ; preds = %bb.ao, %bb.an, %bb.y, %bb.v, %bb.u, %bb.s, %trace_dw_i3c_push_tx.exit.i, %bb.n, %bb.e, %bb.f, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %dw_i3c_ctrl_w.exit
  ret void
}

declare zeroext i1 @fifo8_is_empty(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @fifo8_pop(ptr noundef) local_unnamed_addr #1

declare i32 @fifo8_num_used(ptr noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @object_get_canonical_path(ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @dw_i3c_cmd_queue_execute(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %1 = alloca %union.anon.56, align 8             ; 11 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 8 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 9 uses
  %i.i = alloca i32, align 4                      ; 11 uses
  %2 = alloca %union.anon.45, align 4             ; 5 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 28 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, -4128769
  store i32 %i.o, ptr %i.m, align 4
  %i.p = getelementptr i8, ptr %0, i64 1280       ; 23 uses
  %.val19 = load i32, ptr %i.p, align 16
  %i.q = icmp slt i32 %.val19, -1073741824
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.s = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.r) #6
  %i.t = add i32 %i.s, 3
  %i.u = and i32 %i.t, 4
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.v = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.r) #6
  br i1 %i.v, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 17 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1269 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1372 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = getelementptr i8, ptr %0, i64 1288      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1348 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %dw_i3c_transfer_cmd.exit
  %i.am = call fastcc i32 @dw_i3c_cmd_queue_pop(ptr noundef nonnull %0) ; 8 uses
  %i.an = call fastcc i32 @dw_i3c_cmd_queue_pop(ptr noundef nonnull %0) ; 24 uses
  %i.ao = load i8, ptr %i.w, align 16
  %i.ap = zext i8 %i.ao to i32
  %i.aq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %trace_dw_i3c_cmd_queue_execute.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.ar = load i16, ptr @_TRACE_DW_I3C_CMD_QUEUE_EXECUTE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ar, 0
  br i1 %.not3.i, label %trace_dw_i3c_cmd_queue_execute.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = load i32, ptr @qemu_loglevel, align 4
  %i.at = and i32 %i.as, 32768
  %.not4.i = icmp eq i32 %i.at, 0
  br i1 %.not4.i, label %trace_dw_i3c_cmd_queue_execute.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, i32 noundef range(i32 0, 256) %i.ap, i32 noundef %i.an, i32 noundef %i.am) #6
  br label %trace_dw_i3c_cmd_queue_execute.exit

trace_dw_i3c_cmd_queue_execute.exit:              ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.au = trunc i32 %i.an to i8                   ; 4 uses
  %trunc = and i8 %i.au, 7
  switch i8 %trunc, label %bb.dt [
    i8 0, label %bb.g
    i8 3, label %bb.cq
    i8 1, label %bb.dq
    i8 2, label %bb.dq
  ]

bb.g:                                             ; preds = %trace_dw_i3c_cmd_queue_execute.exit
  %i.av = and i32 %i.am, 7                        ; 2 uses
  %i.aw = load i32, ptr %i.m, align 4
  %i.ax = and i32 %i.aw, -251658241
  %i.ay = shl i32 %i.an, 21
  %i.az = and i32 %i.ay, 251658240
  %i.ba = or disjoint i32 %i.ax, %i.az
  store i32 %i.ba, ptr %i.m, align 4
  %i.bb = lshr i32 %i.an, 21
  %i.bc = and i32 %i.bb, 7
  switch i32 %i.bc, label %bb.p [
    i32 6, label %bb.h
    i32 5, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %.val42.i = load i32, ptr %i.af, align 8
  %i.bd = and i32 %.val42.i, 8
  %.not59.i = icmp eq i32 %i.bd, 0
  br i1 %.not59.i, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.be = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.bf = load i32, ptr @qemu_loglevel, align 4
  %i.bg = and i32 %i.bf, 2048
  %.not60.i = icmp eq i32 %i.bg, 0
  br i1 %.not60.i, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.33, ptr noundef %i.be) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = load i32, ptr %i.m, align 4
  %i.bi = and i32 %i.bh, -4128769
  %i.bj = or disjoint i32 %i.bi, 1245184
  store i32 %i.bj, ptr %i.m, align 4
  call void @g_free(ptr noundef %i.be) #6
  br label %dw_i3c_transfer_cmd.exit

bb.l:                                             ; preds = %bb.g
  %.val43.i = load i32, ptr %i.af, align 8
  %i.bk = and i32 %.val43.i, 16
  %.not.i20 = icmp eq i32 %i.bk, 0
  br i1 %.not.i20, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bl = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.bm = load i32, ptr @qemu_loglevel, align 4
  %i.bn = and i32 %i.bm, 2048
  %.not58.i = icmp eq i32 %i.bn, 0
  br i1 %.not58.i, label %bb.o, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.34, ptr noundef %i.bl) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bo = load i32, ptr %i.m, align 4
  %i.bp = and i32 %i.bo, -4128769
  %i.bq = or disjoint i32 %i.bp, 1245184
  store i32 %i.bq, ptr %i.m, align 4
  call void @g_free(ptr noundef %i.bl) #6
  br label %dw_i3c_transfer_cmd.exit

bb.p:                                             ; preds = %bb.l, %bb.h, %bb.g
  switch i32 %i.av, label %bb.cn [
    i32 1, label %bb.q
    i32 2, label %bb.br
  ]

bb.q:                                             ; preds = %bb.p
  %.sroa.2.0.extract.shift.i.i = lshr i32 %i.am, 16 ; 4 uses
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i32 %.sroa.2.0.extract.shift.i.i to i16 ; 4 uses
  %i.br = and i32 %i.an, 268435456
  %i.bs = icmp ne i32 %i.br, 0                    ; 4 uses
  %i.bt = lshr i32 %i.an, 16                      ; 2 uses
  %i.bu = trunc nuw i32 %i.bt to i16
  %i.bv = and i16 %i.bu, 31                       ; 5 uses
  %i.bw = and i32 %i.bt, 31                       ; 2 uses
  %i.bx = load i8, ptr %i.z, align 1
  %i.by = zext i8 %i.bx to i16
  %i.bz = icmp samesign ugt i16 %i.bv, %i.by
  br i1 %i.bz, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ca = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.cb = load i32, ptr @qemu_loglevel, align 4
  %i.cc = and i32 %i.cb, 2048
  %.not.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.38, ptr noundef %i.ca, i32 noundef %i.bw) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @g_free(ptr noundef %i.ca) #6
  %.pre.i.i = load i32, ptr %i.aa, align 4
  %.pre74.i.i = trunc i32 %.pre.i.i to i16
  %.pre75.i.i = lshr i16 %.pre74.i.i, 2
  %.pre77.i.i = add nuw nsw i16 %.pre75.i.i, %i.bv
  %.pre79.i.i = zext nneg i16 %.pre77.i.i to i64
  %.phi.trans.insert59 = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.pre79.i.i
  %.pre60 = load i32, ptr %.phi.trans.insert59, align 4
  br label %dw_i3c_target_addr.exit.i.i

bb.u:                                             ; preds = %bb.q
  %i.cd = load i32, ptr %i.aa, align 4
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = lshr i16 %i.ce, 2
  %i.cg = add nuw nsw i16 %i.cf, %i.bv
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4            ; 4 uses
  %i.ck = icmp slt i32 %i.cj, 0
  %i.cl = and i32 %i.cj, 127
  %i.cm = lshr i32 %i.cj, 16
  %.0.in.i.i.i = select i1 %i.ck, i32 %i.cl, i32 %i.cm
  %.0.i.i.i = trunc i32 %.0.in.i.i.i to i8
  br label %dw_i3c_target_addr.exit.i.i

dw_i3c_target_addr.exit.i.i:                      ; preds = %bb.u, %bb.t
  %i.cn = phi i32 [ %.pre60, %bb.t ], [ %i.cj, %bb.u ]
  %.1.i.i.i = phi i8 [ 0, %bb.t ], [ %.0.i.i.i, %bb.u ]
  %i.co = icmp slt i32 %i.cn, 0                   ; 5 uses
  %i.cp = and i32 %i.an, 32768
  %.not.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i, label %bb.ak, label %bb.v

bb.v:                                             ; preds = %dw_i3c_target_addr.exit.i.i
  %i.cq = load ptr, ptr %i.x, align 8
  %i.cr = call i32 @i3c_start_transfer(ptr noundef %i.cq, i8 noundef zeroext 126, i1 noundef zeroext false) #6
  %.not.i.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.ct = load i32, ptr @qemu_loglevel, align 4
  %i.cu = and i32 %i.ct, 2048
  %.not32.i.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not32.i.i.i.i, label %dw_i3c_send_start.exit.i.i.i, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, ptr noundef %i.cs, i32 noundef 126) #6
  br label %dw_i3c_send_start.exit.i.i.i

dw_i3c_send_start.exit.i.i.i:                     ; preds = %bb.x, %bb.w
  %i.cv = load i32, ptr %i.m, align 4
  %i.cw = and i32 %i.cv, -4144897
  %i.cx = or disjoint i32 %i.cw, 1249024
  store i32 %i.cx, ptr %i.m, align 4
  %i.cy = load i32, ptr %i.y, align 4
  %i.cz = or i32 %i.cy, 512
  store i32 %i.cz, ptr %i.y, align 4
  %i.da = load i32, ptr %i.p, align 16
  %i.db = or i32 %i.da, 1073741824
  store i32 %i.db, ptr %i.p, align 16
  call void @g_free(ptr noundef %i.cs) #6
  br label %dw_i3c_transfer_ccc.exit.thread.i.i

end_hunk_0
begin_hunk_1_@dw_i3c_cmd_queue_execute:bb.a
  %.0.i.i.i.i = trunc i32 %.0.in.i.i.i.i to i8
  br label %dw_i3c_target_addr.exit.i.i.i

dw_i3c_target_addr.exit.i.i.i:                    ; preds = %bb.ah, %bb.ag
  %.1.i.i.i.i = phi i8 [ 0, %bb.ag ], [ %.0.i.i.i.i, %bb.ah ] ; 2 uses
  %i.ed = load ptr, ptr %i.x, align 8
  %i.ee = call i32 @i3c_start_transfer(ptr noundef %i.ed, i8 noundef zeroext %.1.i.i.i.i, i1 noundef zeroext %i.bs) #6
  %.not.i20.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i20.i.i.i, label %dw_i3c_transfer_ccc.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %dw_i3c_target_addr.exit.i.i.i
  %i.ef = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.eg = load i32, ptr @qemu_loglevel, align 4
  %i.eh = and i32 %i.eg, 2048
  %.not32.i21.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not32.i21.i.i.i, label %dw_i3c_send_start.exit22.i.i.i, label %bb.aj, !prof !7

bb.aj:                                            ; preds = %bb.ai
  %i.ei = zext i8 %.1.i.i.i.i to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, ptr noundef %i.ef, i32 noundef %i.ei) #6
  br label %dw_i3c_send_start.exit22.i.i.i

dw_i3c_send_start.exit22.i.i.i:                   ; preds = %bb.aj, %bb.ai
  %i.ej = load i32, ptr %i.m, align 4
  %i.ek = and i32 %i.ej, -4144897
  %i.el = or disjoint i32 %i.ek, 1249024
  store i32 %i.el, ptr %i.m, align 4
  %i.em = load i32, ptr %i.y, align 4
  %i.en = or i32 %i.em, 512
  store i32 %i.en, ptr %i.y, align 4
  %i.eo = load i32, ptr %i.p, align 16
  %i.ep = or i32 %i.eo, 1073741824
  store i32 %i.ep, ptr %i.p, align 16
  call void @g_free(ptr noundef %i.ef) #6
  br label %dw_i3c_transfer_ccc.exit.thread.i.i

bb.ak:                                            ; preds = %dw_i3c_target_addr.exit.i.i
  %i.eq = load i32, ptr %i.p, align 16
  %i.er = and i32 %i.eq, 1
  %.not42.i.i = icmp eq i32 %i.er, 0
  %brmerge.i.i = select i1 %.not42.i.i, i1 true, i1 %i.co
  br i1 %brmerge.i.i, label %dw_i3c_send_start.exit.thread.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = load ptr, ptr %i.x, align 8
  %i.et = call i32 @i3c_start_transfer(ptr noundef %i.es, i8 noundef zeroext 126, i1 noundef zeroext false) #6
  %.not.i50.i.i = icmp eq i32 %i.et, 0
  br i1 %.not.i50.i.i, label %dw_i3c_send_start.exit.thread.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eu = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.ev = load i32, ptr @qemu_loglevel, align 4
  %i.ew = and i32 %i.ev, 2048
  %.not32.i.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not32.i.i.i, label %dw_i3c_send_start.exit.i.i, label %bb.an, !prof !7

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, ptr noundef %i.eu, i32 noundef 126) #6
  br label %dw_i3c_send_start.exit.i.i

dw_i3c_send_start.exit.i.i:                       ; preds = %bb.an, %bb.am
  %i.ex = load i32, ptr %i.m, align 4
  %i.ey = and i32 %i.ex, -4144897
  %i.ez = or disjoint i32 %i.ey, 1249024
  store i32 %i.ez, ptr %i.m, align 4
  %i.fa = load i32, ptr %i.y, align 4
  %i.fb = or i32 %i.fa, 512
  store i32 %i.fb, ptr %i.y, align 4
  %i.fc = load i32, ptr %i.p, align 16
  %i.fd = or i32 %i.fc, 1073741824
  store i32 %i.fd, ptr %i.p, align 16
  call void @g_free(ptr noundef %i.eu) #6
  br label %dw_i3c_transfer_ccc.exit.thread.i.i

dw_i3c_send_start.exit.thread.i.i:                ; preds = %bb.al, %bb.ak
  %i.fe = call fastcc i32 @dw_i3c_send_start(ptr noundef nonnull %0, i8 noundef zeroext %.1.i.i.i, i1 noundef zeroext %i.bs, i1 noundef zeroext %i.co)
  %.not44.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not44.i.i, label %dw_i3c_transfer_ccc.exit.i.i, label %dw_i3c_transfer_ccc.exit.thread.i.i

dw_i3c_transfer_ccc.exit.i.i:                     ; preds = %dw_i3c_send_start.exit.thread.i.i, %dw_i3c_target_addr.exit.i.i.i, %bb.ac
  br i1 %i.bs, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %dw_i3c_transfer_ccc.exit.i.i
  %narrow.i.i = add nuw nsw i32 %.sroa.2.0.extract.shift.i.i, 3
  %i.ff = and i32 %narrow.i.i, 131068
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = call noalias ptr @g_malloc0(i64 noundef %i.fg) #7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  store i32 0, ptr %i.j, align 4
  %i.fi = call fastcc i32 @dw_i3c_recv_data(ptr noundef nonnull %0, i1 noundef zeroext %i.co, ptr noundef %i.fh, i16 noundef zeroext %.sroa.2.0.extract.trunc.i.i, ptr noundef %i.j)
  %.not.i51.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i51.i.i, label %.preheader.i.i.i, label %dw_i3c_rx.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.ao
  %i.fj = load i32, ptr %i.j, align 4             ; 2 uses
  %.not30.i.i.i = icmp ult i32 %i.fj, 4
  br i1 %.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.023.lcssa.i.i.i = phi ptr [ %i.fh, %.preheader.i.i.i ], [ %i.fm, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i32 [ %i.fj, %.preheader.i.i.i ], [ %i.fp, %.lr.ph.i.i.i ] ; 2 uses
  %i.fk = and i32 %.lcssa.i.i.i, 3
  %.not26.i.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not26.i.i.i, label %bb.aq, label %bb.ap

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.028.i.i.i = phi i16 [ %i.fn, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.02327.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i ], [ %i.fh, %.preheader.i.i.i ] ; 2 uses
  %i.fl = load i32, ptr %.02327.i.i.i, align 4
  call fastcc void @dw_i3c_push_rx(ptr noundef nonnull %0, i32 noundef %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %.02327.i.i.i, i64 4 ; 2 uses
  %i.fn = add i16 %.028.i.i.i, 1                  ; 2 uses
  %i.fo = zext i16 %i.fn to i32
  %i.fp = load i32, ptr %i.j, align 4             ; 2 uses
  %i.fq = lshr i32 %i.fp, 2
  %i.fr = icmp samesign ugt i32 %i.fq, %i.fo
  br i1 %i.fr, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !16

bb.ap:                                            ; preds = %._crit_edge.i.i.i
  %i.fs = load i32, ptr %.023.lcssa.i.i.i, align 4
  call fastcc void @dw_i3c_push_rx(ptr noundef nonnull %0, i32 noundef %i.fs)
  %.pre.i.i.i = load i32, ptr %i.j, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i.i.i
  %i.ft = phi i32 [ %.pre.i.i.i, %bb.ap ], [ %.lcssa.i.i.i, %._crit_edge.i.i.i ]
  %i.fu = trunc i32 %i.ft to i16
  br label %dw_i3c_rx.exit.i.i

dw_i3c_rx.exit.i.i:                               ; preds = %bb.aq, %bb.ao
  %.024.i.i.i = phi i16 [ %i.fu, %bb.aq ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @g_free(ptr noundef %i.fh) #6
  br label %bb.bm

bb.ar:                                            ; preds = %dw_i3c_transfer_ccc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %.not37.i.i.i = icmp eq i32 %.sroa.2.0.extract.shift.i.i, 0
  br i1 %.not37.i.i.i, label %dw_i3c_tx.exit.i.i, label %.lr.ph.i52.i.i

.lr.ph.i52.i.i:                                   ; preds = %bb.ar, %.split.us.i.i.i
  %.01535.i.i.i = phi i16 [ %.us-phi.i.i.i, %.split.us.i.i.i ], [ 0, %bb.ar ] ; 2 uses
  %i.fv = call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.ah) #6
  br i1 %i.fv, label %bb.as, label %bb.av

bb.as:                                            ; preds = %.lr.ph.i52.i.i
  %i.fw = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.fx = load i32, ptr @qemu_loglevel, align 4
  %i.fy = and i32 %i.fx, 2048
  %.not22.i.i.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not22.i.i.i.i, label %bb.au, label %bb.at, !prof !7

bb.at:                                            ; preds = %bb.as
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.56, ptr noundef %i.fw) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @g_free(ptr noundef %i.fw) #6
  br label %dw_i3c_pop_tx.exit.i.i.i

bb.av:                                            ; preds = %.lr.ph.i52.i.i
  %i.fz = call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.ah) #6
  %i.ga = zext i8 %i.fz to i32
  %i.gb = call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.ah) #6
  %i.gc = zext i8 %i.gb to i32
  %i.gd = shl nuw nsw i32 %i.gc, 8
  %i.ge = or disjoint i32 %i.gd, %i.ga
  %i.gf = call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.ah) #6
  %i.gg = zext i8 %i.gf to i32
  %i.gh = shl nuw nsw i32 %i.gg, 16
  %i.gi = or disjoint i32 %i.gh, %i.ge
  %i.gj = call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.ah) #6
  %i.gk = zext i8 %i.gj to i32
  %i.gl = shl nuw i32 %i.gk, 24
  %i.gm = or disjoint i32 %i.gl, %i.gi            ; 3 uses
  %i.gn = load i8, ptr %i.w, align 16
  %i.go = zext i8 %i.gn to i32
  %i.gp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.i.i.i, label %trace_dw_i3c_pop_tx.exit.i.i.i.i, label %bb.aw, !prof !7

bb.aw:                                            ; preds = %bb.av
  %i.gq = load i16, ptr @_TRACE_DW_I3C_POP_TX_DSTATE, align 2
  %.not2.i.i.i.i.i = icmp eq i16 %i.gq, 0
  br i1 %.not2.i.i.i.i.i, label %trace_dw_i3c_pop_tx.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = load i32, ptr @qemu_loglevel, align 4
  %i.gs = and i32 %i.gr, 32768
  %.not3.i.i.i.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not3.i.i.i.i.i, label %trace_dw_i3c_pop_tx.exit.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.57, i32 noundef range(i32 0, 256) %i.go, i32 noundef %i.gm) #6
  br label %trace_dw_i3c_pop_tx.exit.i.i.i.i

trace_dw_i3c_pop_tx.exit.i.i.i.i:                 ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.gt = call i32 @fifo8_num_free(ptr noundef nonnull %i.ah) #6
  %i.gu = add i32 %i.gt, 3
  %i.gv = lshr i32 %i.gu, 2
  %3 = trunc i32 %i.gv to i8
  store i8 %3, ptr %i.ai, align 16
  %i.gw = load i32, ptr %i.aj, align 16
  %i.gx = and i32 %i.gw, 7                        ; 2 uses
  %.not.i21.i.i.i.i = icmp eq i32 %i.gx, 0
  %i.gy = shl nuw nsw i32 2, %i.gx
  %i.gz = call i32 @fifo8_num_free(ptr noundef nonnull %i.ah) #6
  %i.ha = zext i32 %i.gz to i64
  %i.hb = add nuw nsw i64 %i.ha, 3
  %i.hc = lshr i64 %i.hb, 2
  %i.hd = trunc nuw nsw i64 %i.hc to i32
  %i.he = and i32 %i.gy, 254
  %i.hf = select i1 %.not.i21.i.i.i.i, i32 1, i32 %i.he
  %.not.i.i53.i.i = icmp samesign ugt i32 %i.hf, %i.hd
  br i1 %.not.i.i53.i.i, label %dw_i3c_pop_tx.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %trace_dw_i3c_pop_tx.exit.i.i.i.i
  %i.hg = load i32, ptr %i.y, align 4
  %i.hh = or i32 %i.hg, 1                         ; 2 uses
  store i32 %i.hh, ptr %i.y, align 4
  %i.hi = load i32, ptr %i.ak, align 4
  %i.hj = and i32 %i.hi, %i.hh
  %i.hk = icmp ne i32 %i.hj, 0
  %i.hl = load ptr, ptr %i.al, align 16
  %i.hm = zext i1 %i.hk to i32
  call void @qemu_set_irq(ptr noundef %i.hl, i32 noundef %i.hm) #6
  br label %dw_i3c_pop_tx.exit.i.i.i

dw_i3c_pop_tx.exit.i.i.i:                         ; preds = %bb.az, %trace_dw_i3c_pop_tx.exit.i.i.i.i, %bb.au
  %.0.i.i54.i.i = phi i32 [ 0, %bb.au ], [ %i.gm, %bb.az ], [ %i.gm, %trace_dw_i3c_pop_tx.exit.i.i.i.i ]
  store i32 %.0.i.i54.i.i, ptr %2, align 4
  br i1 %i.co, label %.preheader.i.preheader.us.i.i.i, label %dw_i3c_pop_tx.exit.split.i.i.i

.preheader.i.preheader.us.i.i.i:                  ; preds = %dw_i3c_pop_tx.exit.i.i.i, %bb.bf
  %indvars.iv45.i.i.i = phi i64 [ %indvars.iv.next46.i.i.i, %bb.bf ], [ 0, %dw_i3c_pop_tx.exit.i.i.i ] ; 3 uses
  %.132.us.i.i.i = phi i16 [ %i.ij, %bb.bf ], [ %.01535.i.i.i, %dw_i3c_pop_tx.exit.i.i.i ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv45.i.i.i
  %i.ho = load i8, ptr %i.hn, align 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.ho, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  store i32 0, ptr %i.i, align 4
  %i.hp = load ptr, ptr %i.x, align 8
  %i.hq = call i32 @legacy_i2c_send(ptr noundef %i.hp, i8 noundef zeroext %i.ho) #6
  %.not.i25.us.i.i.i = icmp eq i32 %i.hq, 0       ; 2 uses
  br i1 %.not.i25.us.i.i.i, label %.thread.i.loopexit.us.i.i.i, label %.thread49.i.loopexit.us.i.i.i

.thread.i.loopexit.us.i.i.i:                      ; preds = %.preheader.i.preheader.us.i.i.i
  %i.hr = load i32, ptr %i.i, align 4
  %i.hs = add i32 %i.hr, 1                        ; 2 uses
  store i32 %i.hs, ptr %i.i, align 4
  br label %.thread.i.us.i.i.i

bb.ba:                                            ; preds = %.thread49.i.loopexit.us.i.i.i
  %i.ht = load i8, ptr %i.h, align 1
  %i.hu = zext i8 %i.ht to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef %i.il, i32 noundef %i.hu) #6
  br label %bb.bb

bb.bb:                                            ; preds = %.thread49.i.loopexit.us.i.i.i, %bb.ba
  %i.hv = load i32, ptr %i.m, align 4
  %i.hw = and i32 %i.hv, -4144897
  %i.hx = or disjoint i32 %i.hw, 1249024
  store i32 %i.hx, ptr %i.m, align 4
  %i.hy = load i32, ptr %i.y, align 4
  %i.hz = or i32 %i.hy, 512
  store i32 %i.hz, ptr %i.y, align 4
  %i.ia = load i32, ptr %i.p, align 16
  %i.ib = or i32 %i.ia, 1073741824
  store i32 %i.ib, ptr %i.p, align 16
  call void @g_free(ptr noundef %i.il) #6
  %.pre.i55.i.i = load i32, ptr %i.i, align 4
  br label %.thread.i.us.i.i.i

.thread.i.us.i.i.i:                               ; preds = %bb.bb, %.thread.i.loopexit.us.i.i.i
  %i.ic = phi i32 [ %i.hs, %.thread.i.loopexit.us.i.i.i ], [ %.pre.i55.i.i, %bb.bb ]
  %i.id = load i8, ptr %i.w, align 16
  %i.ie = zext i8 %i.id to i32
  %i.if = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i22.us.i.i.i = icmp eq i32 %i.if, 0
  br i1 %.not.i.i22.us.i.i.i, label %dw_i3c_send.exit.us.i.i.i, label %bb.bc, !prof !7

bb.bc:                                            ; preds = %.thread.i.us.i.i.i
  %i.ig = load i16, ptr @_TRACE_DW_I3C_SEND_DSTATE, align 2
  %.not2.i.i23.us.i.i.i = icmp eq i16 %i.ig, 0
  br i1 %.not2.i.i23.us.i.i.i, label %dw_i3c_send.exit.us.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ih = load i32, ptr @qemu_loglevel, align 4
  %i.ii = and i32 %i.ih, 32768
  %.not3.i.i24.us.i.i.i = icmp eq i32 %i.ii, 0
  br i1 %.not3.i.i24.us.i.i.i, label %dw_i3c_send.exit.us.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i32 noundef range(i32 0, 256) %i.ie, i32 noundef %i.ic) #6
  br label %dw_i3c_send.exit.us.i.i.i

dw_i3c_send.exit.us.i.i.i:                        ; preds = %bb.be, %bb.bd, %bb.bc, %.thread.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not.i25.us.i.i.i, label %bb.bf, label %dw_i3c_tx.exit.i.i

bb.bf:                                            ; preds = %dw_i3c_send.exit.us.i.i.i
  %i.ij = add nuw i16 %.132.us.i.i.i, 1           ; 3 uses
  %.not21.us.i.i.i = icmp ult i16 %i.ij, %.sroa.2.0.extract.trunc.i.i
  %indvars.iv.next46.i.i.i = add nuw nsw i64 %indvars.iv45.i.i.i, 1
  %i.ik = icmp samesign ult i64 %indvars.iv45.i.i.i, 3
  %or.cond.i.i.i = select i1 %.not21.us.i.i.i, i1 %i.ik, i1 false
  br i1 %or.cond.i.i.i, label %.preheader.i.preheader.us.i.i.i, label %.split.us.i.i.i, !llvm.loop !17

.thread49.i.loopexit.us.i.i.i:                    ; preds = %.preheader.i.preheader.us.i.i.i
  %i.il = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.im = load i32, ptr @qemu_loglevel, align 4
  %i.in = and i32 %i.im, 2048
  %.not53.i.us.i.i.i = icmp eq i32 %i.in, 0
  br i1 %.not53.i.us.i.i.i, label %bb.bb, label %bb.ba, !prof !7

dw_i3c_pop_tx.exit.split.i.i.i:                   ; preds = %dw_i3c_pop_tx.exit.i.i.i, %bb.bl
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.bl ], [ 0, %dw_i3c_pop_tx.exit.i.i.i ] ; 3 uses
  %.132.i.i.i = phi i16 [ %i.jl, %bb.bl ], [ %.01535.i.i.i, %dw_i3c_pop_tx.exit.i.i.i ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i.i
  %i.ip = load i8, ptr %i.io, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.ip, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  store i32 0, ptr %i.i, align 4
  %i.iq = load ptr, ptr %i.x, align 8
  %i.ir = call i32 @i3c_send(ptr noundef %i.iq, ptr noundef nonnull %i.h, i32 noundef 1, ptr noundef nonnull %i.i) #6
  %.not45.i.i.i.i = icmp eq i32 %i.ir, 0          ; 2 uses
  br i1 %.not45.i.i.i.i, label %.thread.i.i.i.i, label %.thread49.i.i.i.i

.thread49.i.i.i.i:                                ; preds = %dw_i3c_pop_tx.exit.split.i.i.i
  %i.is = call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.it = load i32, ptr @qemu_loglevel, align 4
  %i.iu = and i32 %i.it, 2048
  %.not53.i.i.i.i = icmp eq i32 %i.iu, 0
  br i1 %.not53.i.i.i.i, label %bb.bh, label %bb.bg, !prof !7

bb.bg:                                            ; preds = %.thread49.i.i.i.i
  %i.iv = load i8, ptr %i.h, align 1
  %i.iw = zext i8 %i.iv to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef %i.is, i32 noundef %i.iw) #6
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread49.i.i.i.i
  %i.ix = load i32, ptr %i.m, align 4
  %i.iy = and i32 %i.ix, -4144897
  %i.iz = or disjoint i32 %i.iy, 1249024
  store i32 %i.iz, ptr %i.m, align 4
  %i.ja = load i32, ptr %i.y, align 4
  %i.jb = or i32 %i.ja, 512
  store i32 %i.jb, ptr %i.y, align 4
  %i.jc = load i32, ptr %i.p, align 16
  %i.jd = or i32 %i.jc, 1073741824
  store i32 %i.jd, ptr %i.p, align 16
  call void @g_free(ptr noundef %i.is) #6
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.bh, %dw_i3c_pop_tx.exit.split.i.i.i
  %i.je = load i8, ptr %i.w, align 16
  %i.jf = zext i8 %i.je to i32
  %i.jg = load i32, ptr %i.i, align 4
  %i.jh = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i22.i.i.i = icmp eq i32 %i.jh, 0
  br i1 %.not.i.i22.i.i.i, label %dw_i3c_send.exit.i.i.i, label %bb.bi, !prof !7

bb.bi:                                            ; preds = %.thread.i.i.i.i
  %i.ji = load i16, ptr @_TRACE_DW_I3C_SEND_DSTATE, align 2
  %.not2.i.i23.i.i.i = icmp eq i16 %i.ji, 0
  br i1 %.not2.i.i23.i.i.i, label %dw_i3c_send.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jj = load i32, ptr @qemu_loglevel, align 4
  %i.jk = and i32 %i.jj, 32768
  %.not3.i.i24.i.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not3.i.i24.i.i.i, label %dw_i3c_send.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i32 noundef range(i32 0, 256) %i.jf, i32 noundef %i.jg) #6
  br label %dw_i3c_send.exit.i.i.i

dw_i3c_send.exit.i.i.i:                           ; preds = %bb.bk, %bb.bj, %bb.bi, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not45.i.i.i.i, label %bb.bl, label %dw_i3c_tx.exit.i.i

bb.bl:                                            ; preds = %dw_i3c_send.exit.i.i.i
  %i.jl = add nuw i16 %.132.i.i.i, 1              ; 3 uses
  %.not21.i.i.i = icmp ult i16 %i.jl, %.sroa.2.0.extract.trunc.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.jm = icmp samesign ult i64 %indvars.iv.i.i.i, 3
  %or.cond36.i.i.i = select i1 %.not21.i.i.i, i1 %i.jm, i1 false
  br i1 %or.cond36.i.i.i, label %dw_i3c_pop_tx.exit.split.i.i.i, label %.split.us.i.i.i, !llvm.loop !17

.split.us.i.i.i:                                  ; preds = %bb.bl, %bb.bf
  %.us-phi.i.i.i = phi i16 [ %i.ij, %bb.bf ], [ %i.jl, %bb.bl ] ; 3 uses
  %i.jn = icmp ult i16 %.us-phi.i.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.jn, label %.lr.ph.i52.i.i, label %dw_i3c_tx.exit.i.i, !llvm.loop !18

dw_i3c_tx.exit.i.i:                               ; preds = %.split.us.i.i.i, %dw_i3c_send.exit.i.i.i, %dw_i3c_send.exit.us.i.i.i, %bb.ar
  %.218.i.i.i = phi i16 [ %.132.i.i.i, %dw_i3c_send.exit.i.i.i ], [ %.132.us.i.i.i, %dw_i3c_send.exit.us.i.i.i ], [ 0, %bb.ar ], [ %.us-phi.i.i.i, %.split.us.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
end_hunk_1
begin_hunk_2_@dw_i3c_cmd_queue_execute:bb.a

bb.dr:                                            ; preds = %bb.dq
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef %i.rb) #6
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  call void @g_free(ptr noundef %i.rb) #6
  br label %dw_i3c_transfer_cmd.exit

bb.dt:                                            ; preds = %trace_dw_i3c_cmd_queue_execute.exit
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 1647, ptr noundef nonnull @__func__.dw_i3c_cmd_queue_execute, ptr noundef null) #8
  unreachable

dw_i3c_transfer_cmd.exit:                         ; preds = %bb.dp, %bb.do, %bb.cp, %dw_i3c_short_transfer.exit.i, %dw_i3c_transfer.exit.i, %bb.o, %bb.k, %bb.ds
  %i.re = call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.r) #6
  br i1 %i.re, label %.loopexit, label %bb.c, !llvm.loop !20

.loopexit:                                        ; preds = %dw_i3c_transfer_cmd.exit, %.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @dw_i3c_cmd_queue_pop(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 5 uses
  %i.b = tail call zeroext i1 @fifo8_is_empty(ptr noundef nonnull %i.a) #6
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 2048
  %.not20 = icmp eq i32 %i.e, 0
  br i1 %.not20, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.31, ptr noundef %i.c) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @g_free(ptr noundef %i.c) #6
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.f = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.a) #6
  %i.g = zext i8 %i.f to i32
  %i.h = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.a) #6
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = or disjoint i32 %i.j, %i.g
  %i.l = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.a) #6
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 16
  %i.o = or disjoint i32 %i.n, %i.k
  %i.p = tail call zeroext i8 @fifo8_pop(ptr noundef nonnull %i.a) #6
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw i32 %i.q, 24
  %i.s = or disjoint i32 %i.r, %i.o               ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 255
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = add i32 %i.x, 1
  %i.z = and i32 %i.y, 255                        ; 2 uses
  %i.aa = and i32 %i.x, -256
  %i.ab = or disjoint i32 %i.z, %i.aa
  store i32 %i.ab, ptr %i.w, align 4
  %.not = icmp samesign ult i32 %i.z, %i.v
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = or i32 %i.ad, 8                         ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, %i.ae
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ak = load ptr, ptr %i.aj, align 16
  %i.al = zext i1 %i.ai to i32
  tail call void @qemu_set_irq(ptr noundef %i.ak, i32 noundef %i.al) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %i.s, %bb.f ], [ %i.s, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @dw_i3c_send_start(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @legacy_i2c_start_transfer(ptr noundef %i.b, i8 noundef zeroext %1, i1 noundef zeroext %2) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @i3c_start_transfer(ptr noundef %i.b, i8 noundef zeroext %1, i1 noundef zeroext %2) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]  ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 2048
  %.not32 = icmp eq i32 %i.g, 0
  br i1 %.not32, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.h = zext i8 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, ptr noundef %i.e, i32 noundef %i.h) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, -4144897
  %i.m = or disjoint i32 %i.l, 1249024
  store i32 %i.m, ptr %i.j, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = or i32 %i.o, 512
  store i32 %i.p, ptr %i.n, align 4
  %i.q = load i32, ptr %i.i, align 16
  %i.r = or i32 %i.q, 1073741824
  store i32 %i.r, ptr %i.i, align 16
  tail call void @g_free(ptr noundef %i.e) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @dw_i3c_resp_queue_push(ptr noundef %0, i8 noundef zeroext range(i8 0, 10) %1, i8 noundef zeroext range(i8 0, 16) %2, i16 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i8 %1 to i32
  %i.b = shl nuw i32 %i.a, 28
  %i.c = and i8 %2, 7
  %i.d = zext nneg i8 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 24
  %i.f = or disjoint i32 %i.e, %i.b               ; 2 uses
  %i.g = zext i16 %3 to i32
  %i.h = or disjoint i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 7 uses
  %i.j = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.i) #6
  %i.k = icmp ult i32 %i.j, 4
  br i1 %i.k, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.m = load i8, ptr %i.l, align 16
  %i.n = zext i8 %i.m to i32
  %i.o = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %trace_dw_i3c_resp_queue_push.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.p = load i16, ptr @_TRACE_DW_I3C_RESP_QUEUE_PUSH_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.p, 0
  br i1 %.not2.i, label %trace_dw_i3c_resp_queue_push.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 32768
  %.not3.i = icmp eq i32 %i.r, 0
  br i1 %.not3.i, label %trace_dw_i3c_resp_queue_push.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.58, i32 noundef range(i32 0, 256) %i.n, i32 noundef %i.h) #6
  br label %trace_dw_i3c_resp_queue_push.exit

trace_dw_i3c_resp_queue_push.exit:                ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.s = trunc i16 %3 to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.i, i8 noundef zeroext %i.s) #6
  %i.t = lshr i16 %3, 8
  %i.u = trunc nuw i16 %i.t to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.i, i8 noundef zeroext %i.u) #6
  tail call void @fifo8_push(ptr noundef nonnull %i.i, i8 noundef zeroext 0) #6
  %i.v = lshr exact i32 %i.f, 24
  %i.w = trunc nuw i32 %i.v to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.i, i8 noundef zeroext %i.w) #6
  br label %bb.f

bb.f:                                             ; preds = %trace_dw_i3c_resp_queue_push.exit, %bb.a
  %i.x = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.i) #6
  %4 = shl i32 %i.x, 6
  %5 = add i32 %4, 192
  %6 = lshr i32 %5, 8
  %7 = trunc i32 %6 to i8
  %8 = getelementptr i8, ptr %0, i64 1357
  store i8 %7, ptr %8, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = lshr i32 %i.z, 8
  %i.ab = add nuw nsw i32 %i.aa, 1
  %i.ac = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.i) #6
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 3
  %i.af = lshr i64 %i.ae, 2
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = and i32 %i.ab, 255
  %.not = icmp samesign ugt i32 %i.ah, %i.ag
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = or i32 %i.aj, 16                        ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, %i.ak
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.aq = load ptr, ptr %i.ap, align 16
  %i.ar = zext i1 %i.ao to i32
  tail call void @qemu_set_irq(ptr noundef %i.aq, i32 noundef %i.ar) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @dw_i3c_send(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 1, 5) %2, ptr noundef nonnull initializes((0, 4)) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  store i32 0, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  br i1 %4, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1
  %i.e = tail call i32 @legacy_i2c_send(ptr noundef %i.b, i8 noundef zeroext %i.d) #6 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.thread49

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %3, align 4
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !21

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = tail call i32 @i3c_send(ptr noundef %i.h, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %3) #6 ; 2 uses
  %.not45 = icmp eq i32 %i.i, 0
  br i1 %.not45, label %.thread, label %.thread49

.thread49:                                        ; preds = %bb.b, %bb.d
  %.152 = phi i32 [ %i.i, %bb.d ], [ %i.e, %bb.b ]
  %i.j = tail call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 2048
  %.not53 = icmp eq i32 %i.l, 0
  br i1 %.not53, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %.thread49
  %i.m = load i32, ptr %3, align 4
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, ptr noundef %i.j, i32 noundef %i.q) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread49
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, -4144897
  %i.v = or disjoint i32 %i.u, 1249024
  store i32 %i.v, ptr %i.s, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = or i32 %i.x, 512
  store i32 %i.y, ptr %i.w, align 4
  %i.z = load i32, ptr %i.r, align 16
  %i.aa = or i32 %i.z, 1073741824
  store i32 %i.aa, ptr %i.r, align 16
  tail call void @g_free(ptr noundef %i.j) #6
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.f, %bb.d
  %.148 = phi i32 [ 0, %bb.d ], [ %.152, %bb.f ], [ 0, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ac = load i8, ptr %i.ab, align 16
  %i.ad = zext i8 %i.ac to i32
  %i.ae = load i32, ptr %3, align 4
  %i.af = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %trace_dw_i3c_send.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %.thread
  %i.ag = load i16, ptr @_TRACE_DW_I3C_SEND_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.ag, 0
  br i1 %.not2.i, label %trace_dw_i3c_send.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr @qemu_loglevel, align 4
  %i.ai = and i32 %i.ah, 32768
  %.not3.i = icmp eq i32 %i.ai, 0
  br i1 %.not3.i, label %trace_dw_i3c_send.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i32 noundef range(i32 0, 256) %i.ad, i32 noundef %i.ae) #6
  br label %trace_dw_i3c_send.exit

trace_dw_i3c_send.exit:                           ; preds = %.thread, %bb.g, %bb.h, %bb.i
  ret i32 %.148
}

declare i32 @legacy_i2c_send(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @i3c_send(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @legacy_i2c_start_transfer(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @i3c_start_transfer(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @dw_i3c_recv_data(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  br i1 %1, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %.not50 = icmp eq i16 %3, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %wide.trip.count = zext i16 %3 to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.b = zext i16 %3 to i32                       ; 2 uses
  store i32 %i.b, ptr %4, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.d = load i8, ptr %i.c, align 16
  %i.e = zext i8 %i.d to i32
  %i.f = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %trace_dw_i3c_recv_data.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %._crit_edge
  %i.g = load i16, ptr @_TRACE_DW_I3C_RECV_DATA_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.g, 0
  br i1 %.not2.i, label %trace_dw_i3c_recv_data.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 32768
  %.not3.i = icmp eq i32 %i.i, 0
  br i1 %.not3.i, label %trace_dw_i3c_recv_data.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.53, i32 noundef range(i32 0, 256) %i.e, i32 noundef %i.b) #6
  br label %trace_dw_i3c_recv_data.exit

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = tail call zeroext i8 @legacy_i2c_recv(ptr noundef %i.j) #6
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.k, ptr %i.l, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !22

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext i16 %3 to i32
  %i.p = tail call i32 @i3c_recv(ptr noundef %i.n, ptr noundef %2, i32 noundef %i.o, ptr noundef nonnull %4) #6 ; 5 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.r = load i32, ptr @qemu_loglevel, align 4
  %i.s = and i32 %i.r, 2048
  %.not48 = icmp eq i32 %i.s, 0
  br i1 %.not48, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.49, ptr noundef %i.q) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1364 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, -4144897
  %i.x = or disjoint i32 %i.w, 1249024
  store i32 %i.x, ptr %i.u, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = or i32 %i.z, 512
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = load i32, ptr %i.t, align 16
  %i.ac = or i32 %i.ab, 1073741824
  store i32 %i.ac, ptr %i.t, align 16
  tail call void @g_free(ptr noundef %i.q) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ae = load i8, ptr %i.ad, align 16
  %i.af = zext i8 %i.ae to i32
  %i.ag = load i32, ptr %4, align 4
  %i.ah = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i44 = icmp eq i32 %i.ah, 0
  br i1 %.not.i44, label %trace_dw_i3c_recv_data.exit, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ai = load i16, ptr @_TRACE_DW_I3C_RECV_DATA_DSTATE, align 2
  %.not2.i45 = icmp eq i16 %i.ai, 0
  br i1 %.not2.i45, label %trace_dw_i3c_recv_data.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr @qemu_loglevel, align 4
  %i.ak = and i32 %i.aj, 32768
  %.not3.i46 = icmp eq i32 %i.ak, 0
  br i1 %.not3.i46, label %trace_dw_i3c_recv_data.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.53, i32 noundef range(i32 0, 256) %i.af, i32 noundef %i.ag) #6
  br label %trace_dw_i3c_recv_data.exit

trace_dw_i3c_recv_data.exit:                      ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.d, %bb.c, %bb.b, %._crit_edge
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %._crit_edge ], [ 0, %bb.b ], [ 0, %bb.c ], [ %i.p, %bb.j ], [ %i.p, %bb.k ], [ %i.p, %bb.l ], [ %i.p, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @dw_i3c_push_rx(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 7 uses
  %i.b = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.a) #6
  %i.c = icmp ult i32 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 2048
  %.not21 = icmp eq i32 %i.f, 0
  br i1 %.not21, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.54, ptr noundef %i.d) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @g_free(ptr noundef %i.d) #6
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.h = load i8, ptr %i.g, align 16
  %i.i = zext i8 %i.h to i32
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %trace_dw_i3c_push_rx.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.k = load i16, ptr @_TRACE_DW_I3C_PUSH_RX_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.k, 0
  br i1 %.not2.i, label %trace_dw_i3c_push_rx.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not3.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i, label %trace_dw_i3c_push_rx.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.55, i32 noundef range(i32 0, 256) %i.i, i32 noundef %1) #6
  br label %trace_dw_i3c_push_rx.exit

trace_dw_i3c_push_rx.exit:                        ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.n = trunc i32 %1 to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.a, i8 noundef zeroext %i.n) #6
  %i.o = lshr i32 %1, 8
  %i.p = trunc i32 %i.o to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.a, i8 noundef zeroext %i.p) #6
  %i.q = lshr i32 %1, 16
  %i.r = trunc i32 %i.q to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.a, i8 noundef zeroext %i.r) #6
  %i.s = lshr i32 %1, 24
  %i.t = trunc nuw i32 %i.s to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.a, i8 noundef zeroext %i.t) #6
  %i.u = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.a) #6
  %2 = shl i32 %i.u, 14
  %3 = add i32 %2, 49152
  %4 = lshr i32 %3, 16
  %5 = trunc i32 %4 to i8
  %6 = getelementptr i8, ptr %0, i64 1362
  store i8 %5, ptr %6, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.w = load i32, ptr %i.v, align 16             ; 2 uses
  %i.x = lshr i32 %i.w, 8
  %i.y = and i32 %i.x, 7
  %i.z = and i32 %i.w, 1792
  %.not.i20 = icmp eq i32 %i.z, 0
  %i.aa = shl nuw nsw i32 2, %i.y
  %i.ab = tail call i32 @fifo8_num_used(ptr noundef nonnull %i.a) #6
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, 3
  %i.ae = lshr i64 %i.ad, 2
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = and i32 %i.aa, 254
  %i.ah = select i1 %.not.i20, i32 1, i32 %i.ag
  %.not = icmp samesign ugt i32 %i.ah, %i.af
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %trace_dw_i3c_push_rx.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = or i32 %i.aj, 2                         ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, %i.ak
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.aq = load ptr, ptr %i.ap, align 16
  %i.ar = zext i1 %i.ao to i32
  tail call void @qemu_set_irq(ptr noundef %i.aq, i32 noundef %i.ar) #6
  br label %bb.j

bb.j:                                             ; preds = %trace_dw_i3c_push_rx.exit, %bb.i, %bb.d
  ret void
}

declare zeroext i8 @legacy_i2c_recv(ptr noundef) local_unnamed_addr #1

declare i32 @i3c_recv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @fifo8_num_free(ptr noundef) local_unnamed_addr #1

declare void @fifo8_push(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

declare void @legacy_i2c_end_transfer(ptr noundef) local_unnamed_addr #1

declare void @i3c_end_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @dw_i3c_cmd_queue_push(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 5 uses
  %i.b = tail call i32 @fifo8_num_free(ptr noundef nonnull %i.a) #6
  %i.c = icmp ult i32 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @object_get_canonical_path(ptr noundef nonnull %0) #6 ; 2 uses
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 2048
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.66, ptr noundef %i.d) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @g_free(ptr noundef %i.d) #6
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.h = load i8, ptr %i.g, align 16
  %i.i = zext i8 %i.h to i32
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %trace_dw_i3c_cmd_queue_push.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.k = load i16, ptr @_TRACE_DW_I3C_CMD_QUEUE_PUSH_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.k, 0
  br i1 %.not2.i, label %trace_dw_i3c_cmd_queue_push.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not3.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i, label %trace_dw_i3c_cmd_queue_push.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.67, i32 noundef range(i32 0, 256) %i.i, i32 noundef %1) #6
  br label %trace_dw_i3c_cmd_queue_push.exit

trace_dw_i3c_cmd_queue_push.exit:                 ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.n = trunc i32 %1 to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.a, i8 noundef zeroext %i.n) #6
  %i.o = lshr i32 %1, 8
  %i.p = trunc i32 %i.o to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.a, i8 noundef zeroext %i.p) #6
  %i.q = lshr i32 %1, 16
  %i.r = trunc i32 %i.q to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.a, i8 noundef zeroext %i.r) #6
  %i.s = lshr i32 %1, 24
  %i.t = trunc nuw i32 %i.s to i8
  tail call void @fifo8_push(ptr noundef nonnull %i.a, i8 noundef zeroext %i.t) #6
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1308
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 255
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = and i32 %i.y, 255
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %trace_dw_i3c_cmd_queue_push.exit
  %i.aa = add i32 %i.y, 255
  %i.ab = and i32 %i.aa, 255                      ; 2 uses
  %i.ac = and i32 %i.y, -256
  %i.ad = or disjoint i32 %i.ab, %i.ac
  store i32 %i.ad, ptr %i.x, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %trace_dw_i3c_cmd_queue_push.exit
  %.0 = phi i32 [ %i.ab, %bb.i ], [ 0, %trace_dw_i3c_cmd_queue_push.exit ]
  %i.ae = icmp samesign ult i32 %.0, %i.w
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, -9                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1348
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, %i.ah
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.an = load ptr, ptr %i.am, align 16
  %i.ao = zext i1 %i.al to i32
  tail call void @qemu_set_irq(ptr noundef %i.an, i32 noundef %i.ao) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.d
  ret void
}

declare void @fifo8_reset(ptr noundef) local_unnamed_addr #1

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @fifo8_is_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"auto-init"}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!"branch_weights", !"expected", i32 2146365751, i32 1117897}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
end_hunk_2
